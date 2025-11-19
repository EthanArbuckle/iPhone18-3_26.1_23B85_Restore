@interface CNGeminiBadge
+ (CNGeminiBadge)geminiBadgeWithText:(id)a3;
- (NSDictionary)viewAttributes;
- (void)setViewAttributes:(id)a3;
@end

@implementation CNGeminiBadge

- (void)setViewAttributes:(id)a3
{
  v14 = a3;
  v4 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v4)
  {
    v5 = [(CNGeminiBadge *)self font];

    if (v5 != v4)
    {
      [(CNGeminiBadge *)self setFont:v4];
    }
  }

  v6 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v6)
  {
    v7 = [(CNGeminiBadge *)self textColor];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [(CNGeminiBadge *)self setTextColor:v6];
    }
  }

  v9 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69DB600]];

  if (v9)
  {
    v10 = [(CNGeminiBadge *)self _textEncapsulation];
    v11 = [v10 color];
    v12 = [v9 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [(CNGeminiBadge *)self _textEncapsulation];
      [v13 setColor:v9];
    }
  }
}

- (NSDictionary)viewAttributes
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69DB648];
  v3 = [(CNGeminiBadge *)self font];
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E69DB650];
  v4 = [(CNGeminiBadge *)self textColor];
  v10[1] = v4;
  v9[2] = *MEMORY[0x1E69DB600];
  v5 = [(CNGeminiBadge *)self _textEncapsulation];
  v6 = [v5 color];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

+ (CNGeminiBadge)geminiBadgeWithText:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNGeminiBadge);
  [(CNGeminiBadge *)v4 setText:v3];

  return v4;
}

@end