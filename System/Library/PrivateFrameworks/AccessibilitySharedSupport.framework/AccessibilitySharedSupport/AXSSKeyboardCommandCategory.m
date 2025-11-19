@interface AXSSKeyboardCommandCategory
+ (id)_advancedCommandsFromAvailableCommands:(id)a3;
+ (id)_basicCommandsFromAvailableCommands:(id)a3;
+ (id)_categoryWithCommandIdentifiers:(id)a3 availableCommands:(id)a4 localizedName:(id)a5;
+ (id)_categoryWithCommands:(id)a3 availableCommands:(id)a4 localizedName:(id)a5;
+ (id)_deviceCommandsFromAvailableCommands:(id)a3;
+ (id)_gesturesCommandsFromAvailableCommands:(id)a3;
+ (id)_interactionCommandsFromAvailableCommands:(id)a3;
+ (id)_movementCommandsFromAvailableCommands:(id)a3;
+ (id)_pointerCommandsFromAvailableCommands:(id)a3;
+ (id)allCategoriesForAvailableCommands:(id)a3;
- (AXSSKeyboardCommandCategory)initWithCommands:(id)a3 localizedName:(id)a4;
@end

@implementation AXSSKeyboardCommandCategory

+ (id)allCategoriesForAvailableCommands:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [a1 _basicCommandsFromAvailableCommands:{v4, 0}];
  v27[0] = v6;
  v7 = [a1 _movementCommandsFromAvailableCommands:v4];
  v27[1] = v7;
  v8 = [a1 _interactionCommandsFromAvailableCommands:v4];
  v27[2] = v8;
  v9 = [a1 _deviceCommandsFromAvailableCommands:v4];
  v27[3] = v9;
  v10 = [a1 _pointerCommandsFromAvailableCommands:v4];
  v27[4] = v10;
  v11 = [a1 _gesturesCommandsFromAvailableCommands:v4];
  v27[5] = v11;
  v12 = [a1 _advancedCommandsFromAvailableCommands:v4];
  v27[6] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [v18 commands];
        v20 = [v19 count];

        if (v20)
        {
          [v5 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_categoryWithCommandIdentifiers:(id)a3 availableCommands:(id)a4 localizedName:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:*(*(&v21 + 1) + 8 * i), v21];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [a1 _categoryWithCommands:v11 availableCommands:v9 localizedName:v10];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_categoryWithCommands:(id)a3 availableCommands:(id)a4 localizedName:(id)a5
{
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__AXSSKeyboardCommandCategory__categoryWithCommands_availableCommands_localizedName___block_invoke;
  v16[3] = &unk_1E8135E58;
  v17 = v7;
  v8 = v7;
  v9 = a5;
  v10 = a3;
  v11 = [v10 indexesOfObjectsPassingTest:v16];
  v12 = [AXSSKeyboardCommandCategory alloc];
  v13 = [v10 objectsAtIndexes:v11];

  v14 = [(AXSSKeyboardCommandCategory *)v12 initWithCommands:v13 localizedName:v9];

  return v14;
}

+ (id)_basicCommandsFromAvailableCommands:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = @"Help";
  v13 = @"GoToNextElement";
  v14 = @"GoToPreviousElement";
  v15 = @"MoveUp";
  v16 = @"MoveDown";
  v17 = @"MoveLeft";
  v18 = @"MoveRight";
  v19 = @"PerformDefaultAction";
  v20 = @"GoHome";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:9];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  v8 = [v7 localizedStringForKey:@"BASIC" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_movementCommandsFromAvailableCommands:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = @"GoToNextElement";
  v13 = @"GoToPreviousElement";
  v14 = @"MoveUp";
  v15 = @"MoveDown";
  v16 = @"MoveLeft";
  v17 = @"MoveRight";
  v18 = @"GoToFirstElement";
  v19 = @"GoToLastElement";
  v20 = @"MoveInsideNext";
  v21 = @"MoveInsidePrevious";
  v22 = @"EnterContainer";
  v23 = @"ExitContainer";
  v24 = @"GoToNextSection";
  v25 = @"GoToPreviousSection";
  v26 = @"ActivateTypeahead";
  v27 = @"ApplicationList";
  v28 = @"WindowList";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:17];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
  v8 = [v7 localizedStringForKey:@"MOVEMENT" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_interactionCommandsFromAvailableCommands:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"PerformDefaultAction";
  v12[1] = @"PerformEscape";
  v12[2] = @"OpenContextualMenu";
  v12[3] = @"ShowAccessibilityActions";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:4];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"INTERACTION" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_advancedCommandsFromAvailableCommands:(id)a3
{
  v12[14] = *MEMORY[0x1E69E9840];
  v12[0] = @"NextButton";
  v12[1] = @"PreviousButton";
  v12[2] = @"NextCheckbox";
  v12[3] = @"PreviousCheckbox";
  v12[4] = @"NextTable";
  v12[5] = @"PreviousTable";
  v12[6] = @"NextImage";
  v12[7] = @"PreviousImage";
  v12[8] = @"NextLink";
  v12[9] = @"PreviousLink";
  v12[10] = @"NextHeading";
  v12[11] = @"PreviousHeading";
  v12[12] = @"NextTextField";
  v12[13] = @"PreviousTextField";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:14];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ADVANCED" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_deviceCommandsFromAvailableCommands:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = @"GoHome";
  v13 = @"ToggleMenuBar";
  v14 = @"ToggleAppSwitcher";
  v15 = @"ToggleControlCenter";
  v16 = @"ToggleNotificationCenter";
  v17 = @"ToggleDock";
  v18 = @"ToggleAppLibrary";
  v19 = @"ToggleQuickNote";
  v20 = @"LockScreen";
  v21 = @"RebootDevice";
  v22 = @"ActivateSiri";
  v23 = @"ActivateAccessibilityShortcut";
  v24 = @"ActivateSOS";
  v25 = @"RotateDevice";
  v26 = @"ArmApplePay";
  v27 = @"PerformSysdiagnose";
  v28 = @"TogglePassthroughMode";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:17];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
  v8 = [v7 localizedStringForKey:@"DEVICE" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_pointerCommandsFromAvailableCommands:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = @"MovePointerToFocus";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:1];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v12, v13}];
  v8 = [v7 localizedStringForKey:@"POINTER" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_gesturesCommandsFromAvailableCommands:(id)a3
{
  v12[16] = *MEMORY[0x1E69E9840];
  v12[0] = @"Gestures";
  v12[1] = @"PressAndLift";
  v12[2] = @"3DTouch";
  v12[3] = @"SwipeUp";
  v12[4] = @"SwipeDown";
  v12[5] = @"SwipeLeft";
  v12[6] = @"SwipeRight";
  v12[7] = @"PinchIn";
  v12[8] = @"PinchOut";
  v12[9] = @"RotateLeft";
  v12[10] = @"RotateRight";
  v12[11] = @"TwoFingerPressAndLift";
  v12[12] = @"TwoFingerSwipeDown";
  v12[13] = @"TwoFingerSwipeLeft";
  v12[14] = @"TwoFingerSwipeRight";
  v12[15] = @"TwoFingerSwipeUp";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:16];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"GESTURES" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [a1 _categoryWithCommandIdentifiers:v6 availableCommands:v5 localizedName:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (AXSSKeyboardCommandCategory)initWithCommands:(id)a3 localizedName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXSSKeyboardCommandCategory;
  v9 = [(AXSSKeyboardCommandCategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, a4);
    objc_storeStrong(&v10->_commands, a3);
  }

  return v10;
}

@end