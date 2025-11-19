@interface UITextField(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITextField(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 _cnui_contactStyle];
  v3 = [v2 placeholderTextColor];
  v4 = [v2 textColor];

  if (v4)
  {
    if ([a1 isEnabled])
    {
      [v2 textColor];
    }

    else
    {
      [v2 readOnlyTextColor];
    }
    v5 = ;
    [a1 setTextColor:v5];
  }

  if ([v2 keyboardAppearance])
  {
    [a1 setKeyboardAppearance:{objc_msgSend(v2, "keyboardAppearance")}];
  }

  if (!v3)
  {
    v3 = [v2 textColor];

    if (v3)
    {
      v14 = 0.0;
      v15 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v6 = [a1 textColor];
      [v6 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];

      v3 = [MEMORY[0x1E69DC888] colorWithRed:v15 green:v14 blue:v13 alpha:v12 * 0.5];
    }
  }

  v7 = [a1 placeholder];

  if (v7 && v3)
  {
    v16 = *MEMORY[0x1E69DB650];
    v17[0] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    v10 = [a1 placeholder];
    v11 = [v9 initWithString:v10 attributes:v8];
    [a1 setAttributedPlaceholder:v11];
  }
}

@end