@interface UITextView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITextView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  textColor = [_cnui_contactStyle textColor];

  if (textColor)
  {
    textColor2 = [_cnui_contactStyle textColor];
    [self setTextColor:textColor2];
  }

  if ([_cnui_contactStyle keyboardAppearance])
  {
    [self setKeyboardAppearance:{objc_msgSend(_cnui_contactStyle, "keyboardAppearance")}];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];
}

@end