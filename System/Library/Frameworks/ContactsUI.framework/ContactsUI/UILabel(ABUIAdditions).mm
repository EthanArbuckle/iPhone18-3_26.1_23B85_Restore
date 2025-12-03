@interface UILabel(ABUIAdditions)
- (id)ab_textAttributes;
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UILabel(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v13 = a3;
  v4 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  font = [self font];
  v6 = [font isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [self setFont:v4];
  }

  v7 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v7)
  {
    textColor = [self textColor];
    v9 = [v7 isEqual:textColor];

    if ((v9 & 1) == 0)
    {
      [self setTextColor:v7];
    }
  }

  v10 = [v13 objectForKeyedSubscript:@"ABHilightedColorAttributeName"];
  if (v10)
  {
    highlightedTextColor = [self highlightedTextColor];
    v12 = [v10 isEqual:highlightedTextColor];

    if ((v12 & 1) == 0)
    {
      [self setHighlightedTextColor:v10];
    }
  }
}

- (id)ab_textAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  font = [self font];
  v7[0] = font;
  v6[1] = *MEMORY[0x1E69DB650];
  textColor = [self textColor];
  v7[1] = textColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end