@interface AKTextOverflowIndicatorLayer
- (AKTextOverflowIndicatorLayer)init;
@end

@implementation AKTextOverflowIndicatorLayer

- (AKTextOverflowIndicatorLayer)init
{
  v9.receiver = self;
  v9.super_class = AKTextOverflowIndicatorLayer;
  v2 = [(AKTextOverflowIndicatorLayer *)&v9 init];
  if (v2)
  {
    Mutable = qword_27E39B590;
    if (!qword_27E39B590)
    {
      Mutable = CGPathCreateMutable();
      memset(&v8, 0, sizeof(v8));
      CGAffineTransformMakeTranslation(&v8, 0.5, 0.5);
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = 12.0;
      v10.size.height = 12.0;
      v4 = CGPathCreateWithRect(v10, 0);
      CGPathAddPath(Mutable, &v8, v4);
      CGPathRelease(v4);
      CGPathMoveToPoint(Mutable, &v8, 6.0, 1.5);
      CGPathAddLineToPoint(Mutable, &v8, 6.0, 10.5);
      CGPathMoveToPoint(Mutable, &v8, 1.5, 6.0);
      CGPathAddLineToPoint(Mutable, &v8, 10.5, 6.0);
      qword_27E39B590 = Mutable;
    }

    [(AKTextOverflowIndicatorLayer *)v2 setPath:Mutable];
    [(AKTextOverflowIndicatorLayer *)v2 setLineWidth:1.0];
    v5 = [MEMORY[0x277D75348] blackColor];
    -[AKTextOverflowIndicatorLayer setStrokeColor:](v2, "setStrokeColor:", [v5 CGColor]);

    v6 = [MEMORY[0x277D75348] whiteColor];
    -[AKTextOverflowIndicatorLayer setFillColor:](v2, "setFillColor:", [v6 CGColor]);

    [(AKTextOverflowIndicatorLayer *)v2 setBounds:0.0, 0.0, 12.0, 12.0];
    [(AKTextOverflowIndicatorLayer *)v2 setAnchorPoint:0.5, 0.5];
  }

  return v2;
}

@end