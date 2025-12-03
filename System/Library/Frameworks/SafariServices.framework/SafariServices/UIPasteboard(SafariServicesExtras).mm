@interface UIPasteboard(SafariServicesExtras)
- (id)safari_pasteAndNavigateButtonTitle;
- (id)safari_pasteAndNavigateCommands;
- (id)safari_preferredPasteAndNavigateCommand;
- (uint64_t)safari_bestInputTypeForPastingIntoURLField;
- (void)safari_bestStringForPastingIntoURLFieldCompletionHandler:()SafariServicesExtras;
- (void)safari_setSensitiveString:()SafariServicesExtras;
@end

@implementation UIPasteboard(SafariServicesExtras)

- (void)safari_bestStringForPastingIntoURLFieldCompletionHandler:()SafariServicesExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69DE280], *MEMORY[0x1E69DE278], 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__UIPasteboard_SafariServicesExtras__safari_bestStringForPastingIntoURLFieldCompletionHandler___block_invoke;
  v7[3] = &unk_1E8490F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [self detectValuesForPatterns:v5 completionHandler:v7];
}

- (uint64_t)safari_bestInputTypeForPastingIntoURLField
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DDCA0];
  v3 = *MEMORY[0x1E69DDCA8];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69DDCA0], *MEMORY[0x1E69DDCA8], 0}];
  v5 = [self _detectedPasteboardTypesForTypes:v4];

  if ([v5 containsObject:v3] & 1) != 0 || (objc_msgSend(*MEMORY[0x1E6983030], "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v11[0] = v6, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 1), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(self, "containsPasteboardTypes:", v7), v7, v6, (v8))
  {
    v9 = 2;
  }

  else if ([v5 containsObject:v2])
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  return v9;
}

- (id)safari_pasteAndNavigateButtonTitle
{
  safari_bestInputTypeForPastingIntoURLField = [self safari_bestInputTypeForPastingIntoURLField];
  if ((safari_bestInputTypeForPastingIntoURLField - 1) >= 2 && safari_bestInputTypeForPastingIntoURLField && safari_bestInputTypeForPastingIntoURLField != 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = _WBSLocalizedString();
  }

  return v2;
}

- (id)safari_preferredPasteAndNavigateCommand
{
  safari_bestInputTypeForPastingIntoURLField = [self safari_bestInputTypeForPastingIntoURLField];
  if (safari_bestInputTypeForPastingIntoURLField > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC8B0] commandWithTitle:&stru_1F4FE9E38 image:0 action:*off_1E8490FA0[safari_bestInputTypeForPastingIntoURLField] propertyList:0];
  }

  return v2;
}

- (id)safari_pasteAndNavigateCommands
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC8B0] commandWithTitle:&stru_1F4FE9E38 image:0 action:sel_pasteAndGo_ propertyList:0];
  v4[0] = v0;
  v1 = [MEMORY[0x1E69DC8B0] commandWithTitle:&stru_1F4FE9E38 image:0 action:sel_pasteAndSearch_ propertyList:0];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)safari_setSensitiveString:()SafariServicesExtras
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
  if (v5)
  {
    v11 = *MEMORY[0x1E69DE298];
    v12 = v5;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v13[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69DE290];
  v10 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [self setItems:v7 options:v8];

  if (v5)
  {
  }
}

@end