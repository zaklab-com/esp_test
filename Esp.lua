local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer

local KEYBIND = Enum.KeyCode.V

UserInputService.InputBegan:Connect(function(input, gameprocessed)
	if gameprocessed then return end
	
	if input.KeyCode == KEYBIND then
		for i, model in game.Workspace:GetChildren() do
			if model:FindFirstChild("Humanoid") and model.Name ~= player.Character.Name then
				local v__Highlight = Instance.new("Highlight", model)
				v__Highlight.FillTransparency = 0
			end
		end
	end
end)