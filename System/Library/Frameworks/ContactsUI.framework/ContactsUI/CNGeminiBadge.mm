@interface CNGeminiBadge
+ (CNGeminiBadge)geminiBadgeWithText:(id)text;
- (NSDictionary)viewAttributes;
- (void)setViewAttributes:(id)attributes;
@end

@implementation CNGeminiBadge

- (void)setViewAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v4)
  {
    font = [(CNGeminiBadge *)self font];

    if (font != v4)
    {
      [(CNGeminiBadge *)self setFont:v4];
    }
  }

  v6 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v6)
  {
    textColor = [(CNGeminiBadge *)self textColor];
    v8 = [v6 isEqual:textColor];

    if ((v8 & 1) == 0)
    {
      [(CNGeminiBadge *)self setTextColor:v6];
    }
  }

  v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB600]];

  if (v9)
  {
    _textEncapsulation = [(CNGeminiBadge *)self _textEncapsulation];
    color = [_textEncapsulation color];
    v12 = [v9 isEqual:color];

    if ((v12 & 1) == 0)
    {
      _textEncapsulation2 = [(CNGeminiBadge *)self _textEncapsulation];
      [_textEncapsulation2 setColor:v9];
    }
  }
}

- (NSDictionary)viewAttributes
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69DB648];
  font = [(CNGeminiBadge *)self font];
  v10[0] = font;
  v9[1] = *MEMORY[0x1E69DB650];
  textColor = [(CNGeminiBadge *)self textColor];
  v10[1] = textColor;
  v9[2] = *MEMORY[0x1E69DB600];
  _textEncapsulation = [(CNGeminiBadge *)self _textEncapsulation];
  color = [_textEncapsulation color];
  v10[2] = color;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

+ (CNGeminiBadge)geminiBadgeWithText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(CNGeminiBadge);
  [(CNGeminiBadge *)v4 setText:textCopy];

  return v4;
}

@end