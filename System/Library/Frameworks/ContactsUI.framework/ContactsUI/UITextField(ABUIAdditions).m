@interface UITextField(ABUIAdditions)
- (void)setAb_textAttributes:()ABUIAdditions;
@end

@implementation UITextField(ABUIAdditions)

- (void)setAb_textAttributes:()ABUIAdditions
{
  v10 = a3;
  v4 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v5 = [a1 font];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [a1 setFont:v4];
  }

  v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v7)
  {
    v8 = [a1 textColor];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [a1 setTextColor:v7];
    }
  }
}

@end