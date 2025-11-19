@interface UILabel(CNContactStyle)
- (void)_cnui_applyContactStyle;
- (void)_cnui_applyContactStylePlaceholder;
@end

@implementation UILabel(CNContactStyle)

- (void)_cnui_applyContactStylePlaceholder
{
  v2 = [a1 _cnui_contactStyle];
  v3 = [v2 placeholderTextColor];
  if (!v3)
  {
    v3 = [v2 textColor];

    if (v3)
    {
      v7 = 0.0;
      v8 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v4 = [a1 textColor];
      [v4 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];

      v3 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v7 blue:v6 alpha:v5 * 0.5];
    }
  }

  [a1 setTextColor:v3];
}

- (void)_cnui_applyContactStyle
{
  v7 = [a1 _cnui_contactStyle];
  v2 = [v7 textColor];

  if (v2)
  {
    v3 = [v7 textColor];
    [a1 setTextColor:v3];
  }

  v4 = [v7 highlightedTextColor];

  if (v4)
  {
    v5 = [v7 highlightedTextColor];
    [a1 setHighlightedTextColor:v5];
  }

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [a1 setBackgroundColor:v6];
}

@end