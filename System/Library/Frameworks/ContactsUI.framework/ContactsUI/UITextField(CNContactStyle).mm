@interface UITextField(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITextField(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v17[1] = *MEMORY[0x1E69E9840];
  _cnui_contactStyle = [self _cnui_contactStyle];
  placeholderTextColor = [_cnui_contactStyle placeholderTextColor];
  textColor = [_cnui_contactStyle textColor];

  if (textColor)
  {
    if ([self isEnabled])
    {
      [_cnui_contactStyle textColor];
    }

    else
    {
      [_cnui_contactStyle readOnlyTextColor];
    }
    v5 = ;
    [self setTextColor:v5];
  }

  if ([_cnui_contactStyle keyboardAppearance])
  {
    [self setKeyboardAppearance:{objc_msgSend(_cnui_contactStyle, "keyboardAppearance")}];
  }

  if (!placeholderTextColor)
  {
    placeholderTextColor = [_cnui_contactStyle textColor];

    if (placeholderTextColor)
    {
      v14 = 0.0;
      v15 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      textColor2 = [self textColor];
      [textColor2 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];

      placeholderTextColor = [MEMORY[0x1E69DC888] colorWithRed:v15 green:v14 blue:v13 alpha:v12 * 0.5];
    }
  }

  placeholder = [self placeholder];

  if (placeholder && placeholderTextColor)
  {
    v16 = *MEMORY[0x1E69DB650];
    v17[0] = placeholderTextColor;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    placeholder2 = [self placeholder];
    v11 = [v9 initWithString:placeholder2 attributes:v8];
    [self setAttributedPlaceholder:v11];
  }
}

@end