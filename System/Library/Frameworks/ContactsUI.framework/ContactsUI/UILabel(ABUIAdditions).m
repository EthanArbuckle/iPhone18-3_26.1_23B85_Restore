@interface UILabel(ABUIAdditions)
- (id)ab_textAttributes;
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UILabel(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v13 = a3;
  v4 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v5 = [a1 font];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [a1 setFont:v4];
  }

  v7 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v7)
  {
    v8 = [a1 textColor];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [a1 setTextColor:v7];
    }
  }

  v10 = [v13 objectForKeyedSubscript:@"ABHilightedColorAttributeName"];
  if (v10)
  {
    v11 = [a1 highlightedTextColor];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      [a1 setHighlightedTextColor:v10];
    }
  }
}

- (id)ab_textAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  v2 = [a1 font];
  v7[0] = v2;
  v6[1] = *MEMORY[0x1E69DB650];
  v3 = [a1 textColor];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end