@interface UITextView(ABUIAdditions)
- (id)ab_textAttributes;
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UITextView(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v10 = a3;
  v4 = [v10 objectForKey:*MEMORY[0x1E69DB650]];
  if (v4)
  {
    textColor = [self textColor];
    v6 = [v4 isEqual:textColor];

    if ((v6 & 1) == 0)
    {
      [self setTextColor:v4];
    }
  }

  v7 = [v10 objectForKey:*MEMORY[0x1E69DB648]];
  font = [self font];
  v9 = [font isEqual:v7];

  if ((v9 & 1) == 0)
  {
    [self setFont:v7];
  }
}

- (id)ab_textAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB650];
  textColor = [self textColor];
  v7[0] = textColor;
  v6[1] = *MEMORY[0x1E69DB648];
  font = [self font];
  v7[1] = font;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end