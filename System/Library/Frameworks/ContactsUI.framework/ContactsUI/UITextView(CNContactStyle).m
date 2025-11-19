@interface UITextView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITextView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v5 = [a1 _cnui_contactStyle];
  v2 = [v5 textColor];

  if (v2)
  {
    v3 = [v5 textColor];
    [a1 setTextColor:v3];
  }

  if ([v5 keyboardAppearance])
  {
    [a1 setKeyboardAppearance:{objc_msgSend(v5, "keyboardAppearance")}];
  }

  v4 = [MEMORY[0x1E69DC888] clearColor];
  [a1 setBackgroundColor:v4];
}

@end