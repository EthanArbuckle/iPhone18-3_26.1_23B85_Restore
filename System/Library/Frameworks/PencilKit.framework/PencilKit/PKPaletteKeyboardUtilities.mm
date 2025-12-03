@interface PKPaletteKeyboardUtilities
+ (BOOL)isReturnKeyEnabled;
+ (id)combinedMenuFromKeyboardMenu:(id)menu withLanguageMenu:(id)languageMenu;
+ (id)textInputResponderForEditing;
+ (id)textInputUndoManagerForEditing;
+ (int64_t)textInputReturnKeyTypeForEditing;
+ (void)performReturn;
@end

@implementation PKPaletteKeyboardUtilities

+ (id)textInputResponderForEditing
{
  mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
  delegateAsResponder = [mEMORY[0x1E69DCBE0] delegateAsResponder];
  _responderForEditing = [delegateAsResponder _responderForEditing];

  return _responderForEditing;
}

+ (id)textInputUndoManagerForEditing
{
  textInputResponderForEditing = [self textInputResponderForEditing];
  undoManager = [textInputResponderForEditing undoManager];

  return undoManager;
}

+ (int64_t)textInputReturnKeyTypeForEditing
{
  textInputResponderForEditing = [self textInputResponderForEditing];
  v3 = [PKTextInputUtilities textInputTraitsFromTextInput:textInputResponderForEditing];
  if ([v3 keyboardType] == 10)
  {
    returnKeyType = 6;
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    v6 = v3;
    if (v5 & 1) != 0 || (v7 = objc_opt_respondsToSelector(), v6 = textInputResponderForEditing, (v7))
    {
      returnKeyType = [v6 returnKeyType];
    }

    else
    {
      returnKeyType = 0;
    }
  }

  return returnKeyType;
}

+ (BOOL)isReturnKeyEnabled
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  returnKeyEnabled = [activeInstance returnKeyEnabled];

  return returnKeyEnabled;
}

+ (void)performReturn
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance performReturn];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  textInputResponderForEditing = [self textInputResponderForEditing];
  [defaultCenter postNotificationName:@"PKPaletteKeyboardUtilitiesDidPerformReturnNotification" object:textInputResponderForEditing];
}

+ (id)combinedMenuFromKeyboardMenu:(id)menu withLanguageMenu:(id)languageMenu
{
  v4 = 0;
  v12[2] = *MEMORY[0x1E69E9840];
  if (menu && languageMenu)
  {
    v6 = MEMORY[0x1E69DCC60];
    v12[0] = menu;
    v12[1] = languageMenu;
    v7 = MEMORY[0x1E695DEC8];
    languageMenuCopy = languageMenu;
    menuCopy = menu;
    v10 = [v7 arrayWithObjects:v12 count:2];
    v4 = [v6 menuWithChildren:v10];
  }

  return v4;
}

@end