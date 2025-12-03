@interface UITextField(ABUIAdditions)
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UITextField(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v10 = a3;
  v4 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  font = [self font];
  v6 = [font isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [self setFont:v4];
  }

  v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v7)
  {
    textColor = [self textColor];
    v9 = [v7 isEqual:textColor];

    if ((v9 & 1) == 0)
    {
      [self setTextColor:v7];
    }
  }
}

@end