@interface SCATOutlineLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation SCATOutlineLabel

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  outlineColor = [(SCATOutlineLabel *)self outlineColor];
  [outlineColor alphaComponent];
  CGContextSetAlpha(CurrentContext, v10);

  outlineColor2 = [(SCATOutlineLabel *)self outlineColor];
  v12 = [outlineColor2 colorWithAlphaComponent:1.0];

  CGContextBeginTransparencyLayer(CurrentContext, 0);
  CGContextSetTextDrawingMode(CurrentContext, kCGTextStroke);
  [(SCATOutlineLabel *)self outlineThickness];
  CGContextSetLineWidth(CurrentContext, v13 + v13);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  if ([(SCATOutlineLabel *)self isHighlighted])
  {
    highlightedTextColor = [(SCATOutlineLabel *)self highlightedTextColor];
    [(SCATOutlineLabel *)self setHighlightedTextColor:v12];
  }

  else
  {
    highlightedTextColor = [(SCATOutlineLabel *)self textColor];
    [(SCATOutlineLabel *)self setTextColor:v12];
  }

  v16.receiver = self;
  v16.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v16 drawTextInRect:x, y, width, height];
  CGContextEndTransparencyLayer(CurrentContext);
  CGContextRestoreGState(CurrentContext);
  if ([(SCATOutlineLabel *)self isHighlighted])
  {
    [(SCATOutlineLabel *)self setHighlightedTextColor:highlightedTextColor];
  }

  else
  {
    [(SCATOutlineLabel *)self setTextColor:highlightedTextColor];
  }

  v15.receiver = self;
  v15.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v15 drawTextInRect:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SCATOutlineLabel;
  [(SCATOutlineLabel *)&v13 sizeThatFits:fits.width, fits.height];
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