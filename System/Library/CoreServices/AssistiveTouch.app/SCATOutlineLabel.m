@interface SCATOutlineLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation SCATOutlineLabel

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = [(SCATOutlineLabel *)self outlineColor];
  [v9 alphaComponent];
  CGContextSetAlpha(CurrentContext, v10);

  v11 = [(SCATOutlineLabel *)self outlineColor];
  v12 = [v11 colorWithAlphaComponent:1.0];

  CGContextBeginTransparencyLayer(CurrentContext, 0);
  CGContextSetTextDrawingMode(CurrentContext, kCGTextStroke);
  [(SCATOutlineLabel *)self outlineThickness];
  CGContextSetLineWidth(CurrentContext, v13 + v13);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  if ([(SCATOutlineLabel *)self isHighlighted])
  {
    v14 = [(SCATOutlineLabel *)self highlightedTextColor];
    [(SCATOutlineLabel *)self setHighlightedTextColor:v12];
  }

  else
  {
    v14 = [(SCATOutlineLabel *)self textColor];
    [(SCATOutlineLabel *)self setTextColor:v12];
  }

  v16.receiver = self;
  v16.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v16 drawTextInRect:x, y, width, height];
  CGContextEndTransparencyLayer(CurrentContext);
  CGContextRestoreGState(CurrentContext);
  if ([(SCATOutlineLabel *)self isHighlighted])
  {
    [(SCATOutlineLabel *)self setHighlightedTextColor:v14];
  }

  else
  {
    [(SCATOutlineLabel *)self setTextColor:v14];
  }

  v15.receiver = self;
  v15.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v15 drawTextInRect:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v13.receiver = self;
  v13.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v13 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(SCATOutlineLabel *)self outlineThickness];
  v9 = v5 + v8 * 2.0;
  [(SCATOutlineLabel *)self outlineThickness];
  v11 = v7 + v10 * 2.0 + -5.0;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

@end