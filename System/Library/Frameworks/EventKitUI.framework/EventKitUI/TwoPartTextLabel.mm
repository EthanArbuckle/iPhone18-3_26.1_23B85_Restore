@interface TwoPartTextLabel
- (BOOL)hasTwoParts;
- (CGSize)idealSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)textPart2Size;
- (TwoPartTextLabel)init;
- (double)rightmostDisplayedPartWidth;
- (id)description;
- (void)drawRect:(CGRect)rect;
- (void)setMinimumPart2Width:(double)width;
- (void)setStrikethroughPart1:(BOOL)part1;
- (void)setStrikethroughPart2:(BOOL)part2;
- (void)setTextPart1:(id)part1;
- (void)setTextPart1:(id)part1 part2:(id)part2;
@end

@implementation TwoPartTextLabel

- (TwoPartTextLabel)init
{
  v6.receiver = self;
  v6.super_class = TwoPartTextLabel;
  v2 = [(TwoPartTextLabel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    layer = [(TwoPartTextLabel *)v2 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TwoPartTextLabel;
  v4 = [(TwoPartTextLabel *)&v8 description];
  text = [(TwoPartTextLabel *)self text];
  v6 = [v3 stringWithFormat:@"%@\t'%@'\t'%@'", v4, text, self->_secondTextPart];

  return v6;
}

- (void)setTextPart1:(id)part1 part2:(id)part2
{
  part2Copy = part2;
  [(TwoPartTextLabel *)self setTextPart1:part1];
  if (self->_secondTextPart != part2Copy)
  {
    objc_storeStrong(&self->_secondTextPart, part2);
    self->_part2Size = *MEMORY[0x1E695F060];
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)setTextPart1:(id)part1
{
  v3.receiver = self;
  v3.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v3 setText:part1];
}

- (void)setStrikethroughPart1:(BOOL)part1
{
  if (self->_strikethroughPart1 != part1)
  {
    self->_strikethroughPart1 = part1;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)setStrikethroughPart2:(BOOL)part2
{
  if (self->_strikethroughPart2 != part2)
  {
    self->_strikethroughPart2 = part2;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (CGSize)textPart2Size
{
  p_part2Size = &self->_part2Size;
  if (self->_part2Size.width == 0.0 && self->_part2Size.height == 0.0 && [(NSString *)self->_secondTextPart length])
  {
    secondTextPart = self->_secondTextPart;
    font = [(TwoPartTextLabel *)self font];
    [(NSString *)secondTextPart _legacy_sizeWithFont:font];
    p_part2Size->width = v6;
    p_part2Size->height = v7;
  }

  width = p_part2Size->width;
  height = p_part2Size->height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)hasTwoParts
{
  [(TwoPartTextLabel *)self textPart2Size];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v6 textSize];
  return v4 > 0.0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(TwoPartTextLabel *)self idealSize:fits.width];
  if (width < v4)
  {
    v4 = width;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)idealSize
{
  [(TwoPartTextLabel *)self textPart2Size];
  v4 = v3;
  v6 = v5;
  text = [(TwoPartTextLabel *)self text];
  font = [(TwoPartTextLabel *)self font];
  [text _legacy_sizeWithFont:font];
  v10 = v9;
  v12 = v11;

  if (v4 > 0.0 && v10 > 0.0)
  {
    v10 = v10 + fmax(self->_minPart2Width - v4, 0.0) + 18.0;
  }

  v13 = v4 + v10;
  if (v12 >= v6)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (double)rightmostDisplayedPartWidth
{
  [(TwoPartTextLabel *)self textPart2Size];
  if (result == 0.0)
  {
    v4.receiver = self;
    v4.super_class = TwoPartTextLabel;
    [(TwoPartTextLabel *)&v4 textSize];
  }

  return result;
}

- (void)setMinimumPart2Width:(double)width
{
  if (self->_minPart2Width != width)
  {
    self->_minPart2Width = width;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v39 drawRect:?];
  [(TwoPartTextLabel *)self textPart2Size];
  if (v8 <= 0.0)
  {
    v18 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v9 = v8;
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    text = [(TwoPartTextLabel *)self text];
    v40 = *MEMORY[0x1E69DB648];
    font = [(TwoPartTextLabel *)self font];
    v41[0] = font;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [text sizeWithAttributes:v13];
    v15 = v14;

    if (CalInterfaceIsLeftToRight())
    {
      v16 = x + v15;
      CalRoundToScreenScale(v16 + 18.0 + fmax(self->_minPart2Width - v9, 0.0));
      v18 = v17;
      if (v9 + v17 > width)
      {
        if (v16 + 4.0 >= width - v9)
        {
          v18 = v16 + 4.0;
        }

        else
        {
          v18 = width - v9;
        }
      }
    }

    else
    {
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      MaxX = CGRectGetMaxX(v42);
      CalRoundToScreenScale(MaxX - v15 + -18.0 - fmax(self->_minPart2Width - v9, 0.0) - v9);
      if (v20 >= 0.0)
      {
        v18 = v20;
      }

      else
      {
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v18 = fmin(CGRectGetMaxX(v43) - v15 + -4.0 - v9, 0.0);
      }
    }

    v21 = v10 + CalFloorToScreenScale(0.4);
    currentTextColor = [(TwoPartTextLabel *)self currentTextColor];
    [currentTextColor set];

    secondTextPart = self->_secondTextPart;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v24 = CGRectGetMaxX(v44) - v18;
    font2 = [(TwoPartTextLabel *)self font];
    [(NSString *)secondTextPart _legacy_drawAtPoint:font2 forWidth:[(TwoPartTextLabel *)self lineBreakMode] withFont:v18 lineBreakMode:v21, v24];
  }

  if ([(TwoPartTextLabel *)self strikethroughPart1]|| [(TwoPartTextLabel *)self strikethroughPart2])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    font3 = [(TwoPartTextLabel *)self font];
    [font3 lineHeight];
    v29 = v28;

    if ([(TwoPartTextLabel *)self strikethroughPart1])
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v18;
    }

    [(TwoPartTextLabel *)self bounds];
    v31 = CGRectGetMaxX(v45) - v30 + -2.0;
    CalRoundToScreenScale(0.5);
    v33 = v32;
    font4 = [(TwoPartTextLabel *)self font];
    [font4 xHeight];
    CalRoundToScreenScale(y + v29 - v33 - v35);
    v37 = v36;

    CGContextSaveGState(CurrentContext);
    textColor = [(TwoPartTextLabel *)self textColor];
    CGContextSetFillColorWithColor(CurrentContext, [textColor CGColor]);

    v46.origin.x = v30;
    v46.origin.y = v37;
    v46.size.width = v31;
    v46.size.height = v33;
    CGContextFillRect(CurrentContext, v46);
    CGContextRestoreGState(CurrentContext);
  }
}

@end