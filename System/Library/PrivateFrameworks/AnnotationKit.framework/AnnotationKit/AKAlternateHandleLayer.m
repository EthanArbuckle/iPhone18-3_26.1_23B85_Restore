@interface AKAlternateHandleLayer
- (AKAlternateHandleLayer)init;
@end

@implementation AKAlternateHandleLayer

- (AKAlternateHandleLayer)init
{
  v7.receiver = self;
  v7.super_class = AKAlternateHandleLayer;
  v2 = [(AKAlternateHandleLayer *)&v7 init];
  if (v2)
  {
    v3 = *&AKPointOfInterestRadius_Handle_Alternate;
    if (!qword_27E39B690)
    {
      v8.origin.x = 0.0;
      v8.origin.y = 0.0;
      *&v8.size.width = AKPointOfInterestRadius_Handle_Alternate;
      *&v8.size.height = AKPointOfInterestRadius_Handle_Alternate;
      qword_27E39B690 = CGPathCreateWithEllipseInRect(v8, 0);
    }

    [(AKAlternateHandleLayer *)v2 setPath:?];
    [(AKAlternateHandleLayer *)v2 setLineWidth:1.0];
    v4 = [MEMORY[0x277D75348] whiteColor];
    -[AKAlternateHandleLayer setStrokeColor:](v2, "setStrokeColor:", [v4 CGColor]);

    v5 = [MEMORY[0x277D75348] greenColor];
    -[AKAlternateHandleLayer setFillColor:](v2, "setFillColor:", [v5 CGColor]);

    [(AKAlternateHandleLayer *)v2 setBounds:0.0, 0.0, v3, v3];
    [(AKAlternateHandleLayer *)v2 setAnchorPoint:0.5, 0.5];
  }

  return v2;
}

@end