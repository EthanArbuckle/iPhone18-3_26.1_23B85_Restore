@interface AKBoxLayer
- (AKBoxLayer)initWithBorderWidth:(double)width cornerRadius:(double)radius;
- (void)_updateBoxPath;
- (void)setBorderWidthScale:(double)scale;
- (void)setBounds:(CGRect)bounds;
@end

@implementation AKBoxLayer

- (AKBoxLayer)initWithBorderWidth:(double)width cornerRadius:(double)radius
{
  v10.receiver = self;
  v10.super_class = AKBoxLayer;
  v6 = [(AKBoxLayer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(AKBoxLayer *)v6 setAnchorPoint:0.5, 0.5];
    [(AKBoxLayer *)v7 setLineWidth:width];
    akBoxBorderColor = [MEMORY[0x277D75348] akBoxBorderColor];
    -[AKBoxLayer setStrokeColor:](v7, "setStrokeColor:", [akBoxBorderColor CGColor]);

    [(AKBoxLayer *)v7 setFillColor:0];
    v7->_borderWidthScale = 1.0;
    v7->_boxCornerRadius = radius;
    v7->_nominalBorderWidth = width;
  }

  return v7;
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = AKBoxLayer;
  [(AKBoxLayer *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(AKBoxLayer *)self _updateBoxPath];
}

- (void)setBorderWidthScale:(double)scale
{
  if (self->_borderWidthScale != scale)
  {
    self->_borderWidthScale = scale;
    [(AKBoxLayer *)self nominalBorderWidth];
    v6 = v5;
    [(AKBoxLayer *)self borderWidthScale];
    [(AKBoxLayer *)self setLineWidth:v6 / v7];

    [(AKBoxLayer *)self _updateBoxPath];
  }
}

- (void)_updateBoxPath
{
  [(AKBoxLayer *)self bounds];
  if (![AKGeometryHelper isUnpresentableRect:?])
  {
    [(AKBoxLayer *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(AKBoxLayer *)self lineWidth];
    v12 = v11 * 0.5;
    [(AKBoxLayer *)self lineWidth];
    v14 = v13 * 0.5;
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v19 = CGRectInset(v18, v12, v14);
    v15 = CGPathCreateWithRoundedRect(v19, self->_boxCornerRadius, self->_boxCornerRadius, 0);
    if (v15)
    {
      v16 = v15;
      [(AKBoxLayer *)self setPath:v15];

      CGPathRelease(v16);
    }
  }
}

@end