@interface AKEllipseLayer
- (AKEllipseLayer)init;
- (void)setBounds:(CGRect)bounds;
@end

@implementation AKEllipseLayer

- (AKEllipseLayer)init
{
  v7.receiver = self;
  v7.super_class = AKEllipseLayer;
  v2 = [(AKEllipseLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AKEllipseLayer *)v2 bounds];
    v4 = CGPathCreateWithEllipseInRect(v8, 0);
    [(AKEllipseLayer *)v3 setPath:v4];
    [(AKEllipseLayer *)v3 setAnchorPoint:0.5, 0.5];
    [(AKEllipseLayer *)v3 setFillColor:0];
    [(AKEllipseLayer *)v3 setLineWidth:*&qword_27E399028];
    v5 = [MEMORY[0x277D75348] akColorWithWhite:0.6 alpha:0.8];
    -[AKEllipseLayer setStrokeColor:](v3, "setStrokeColor:", [v5 CGColor]);

    CGPathRelease(v4);
  }

  return v3;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = AKEllipseLayer;
  [(AKEllipseLayer *)&v9 setBounds:?];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v8 = CGPathCreateWithEllipseInRect(v10, 0);
  [(AKEllipseLayer *)self setPath:v8];
  CGPathRelease(v8);
}

@end