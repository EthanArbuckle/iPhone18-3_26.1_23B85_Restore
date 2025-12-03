@interface UILabel(CNContactStyle)
- (void)_cnui_applyContactStyle;
- (void)_cnui_applyContactStylePlaceholder;
@end

@implementation UILabel(CNContactStyle)

- (void)_cnui_applyContactStylePlaceholder
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  placeholderTextColor = [_cnui_contactStyle placeholderTextColor];
  if (!placeholderTextColor)
  {
    placeholderTextColor = [_cnui_contactStyle textColor];

    if (placeholderTextColor)
    {
      v7 = 0.0;
      v8 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      textColor = [self textColor];
      [textColor getRed:&v8 green:&v7 blue:&v6 alpha:&v5];

      placeholderTextColor = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v7 blue:v6 alpha:v5 * 0.5];
    }
  }

  [self setTextColor:placeholderTextColor];
}

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  textColor = [_cnui_contactStyle textColor];

  if (textColor)
  {
    textColor2 = [_cnui_contactStyle textColor];
    [self setTextColor:textColor2];
  }

  highlightedTextColor = [_cnui_contactStyle highlightedTextColor];

  if (highlightedTextColor)
  {
    highlightedTextColor2 = [_cnui_contactStyle highlightedTextColor];
    [self setHighlightedTextColor:highlightedTextColor2];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];
}

@end