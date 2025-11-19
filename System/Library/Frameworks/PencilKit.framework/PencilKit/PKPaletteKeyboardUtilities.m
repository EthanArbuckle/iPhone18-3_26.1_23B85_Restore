@interface PKPaletteKeyboardUtilities
+ (BOOL)isReturnKeyEnabled;
+ (id)combinedMenuFromKeyboardMenu:(id)a3 withLanguageMenu:(id)a4;
+ (id)textInputResponderForEditing;
+ (id)textInputUndoManagerForEditing;
+ (int64_t)textInputReturnKeyTypeForEditing;
+ (void)performReturn;
@end

@implementation PKPaletteKeyboardUtilities

+ (id)textInputResponderForEditing
{
  v2 = [MEMORY[0x1E69DCBE0] sharedInstance];
  v3 = [v2 delegateAsResponder];
  v4 = [v3 _responderForEditing];

  return v4;
}

+ (id)textInputUndoManagerForEditing
{
  v2 = [a1 textInputResponderForEditing];
  v3 = [v2 undoManager];

  return v3;
}

+ (int64_t)textInputReturnKeyTypeForEditing
{
  v2 = [a1 textInputResponderForEditing];
  v3 = [PKTextInputUtilities textInputTraitsFromTextInput:v2];
  if ([v3 keyboardType] == 10)
  {
    v4 = 6;
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    v6 = v3;
    if (v5 & 1) != 0 || (v7 = objc_opt_respondsToSelector(), v6 = v2, (v7))
    {
      v4 = [v6 returnKeyType];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (BOOL)isReturnKeyEnabled
{
  v2 = [MEMORY[0x1E69DCBE0] activeInstance];
  v3 = [v2 returnKeyEnabled];

  return v3;
}

+ (void)performReturn
{
  v5 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v5 performReturn];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [a1 textInputResponderForEditing];
  [v3 postNotificationName:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:v4];
}

+ (id)combinedMenuFromKeyboardMenu:(id)a3 withLanguageMenu:(id)a4
{
  v4 = 0;
  v12[2] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E69DCC60];
    v12[0] = a3;
    v12[1] = a4;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a4;
    v9 = a3;
    v10 = [v7 arrayWithObjects:v12 count:2];
    v4 = [v6 menuWithChildren:v10];
  }

  return v4;
}

@end