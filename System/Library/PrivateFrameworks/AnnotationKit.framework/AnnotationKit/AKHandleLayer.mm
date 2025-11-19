@interface AKHandleLayer
- (AKHandleLayer)init;
@end

@implementation AKHandleLayer

- (AKHandleLayer)init
{
  v7.receiver = self;
  v7.super_class = AKHandleLayer;
  v2 = [(AKHandleLayer *)&v7 init];
  if (v2)
  {
    v3 = *&AKPointOfInterestSize_Handle;
    if (!qword_27E39B658)
    {
      v8.origin.x = 0.0;
      v8.origin.y = 0.0;
      *&v8.size.width = AKPointOfInterestSize_Handle;
      *&v8.size.height = AKPointOfInterestSize_Handle;
      qword_27E39B658 = CGPathCreateWithEllipseInRect(v8, 0);
    }

    [(AKHandleLayer *)v2 setPath:?];
    [(AKHandleLayer *)v2 setLineWidth:1.0];
    v4 = [MEMORY[0x277D75348] whiteColor];
    -[AKHandleLayer setStrokeColor:](v2, "setStrokeColor:", [v4 CGColor]);

    v5 = [MEMORY[0x277D75348] akColorWithSRGBRed:0.105882353 green:0.454901961 blue:0.796078431 alpha:1.0];
    -[AKHandleLayer setFillColor:](v2, "setFillColor:", [v5 CGColor]);

    [(AKHandleLayer *)v2 setBounds:0.0, 0.0, v3, v3];
    [(AKHandleLayer *)v2 setAnchorPoint:0.5, 0.5];
  }

  return v2;
}

@end