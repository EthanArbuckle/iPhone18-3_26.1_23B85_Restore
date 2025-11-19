@interface AKAlignmentGuideLineLayer
- (AKAlignmentGuideLineLayer)initWithScaleFactor:(double)a3 forVerticalOrientation:(BOOL)a4 withMaxSize:(double)a5;
@end

@implementation AKAlignmentGuideLineLayer

- (AKAlignmentGuideLineLayer)initWithScaleFactor:(double)a3 forVerticalOrientation:(BOOL)a4 withMaxSize:(double)a5
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = AKAlignmentGuideLineLayer;
  v8 = [(AKAlignmentGuideLineLayer *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(AKAlignmentGuideLineLayer *)v8 setAnchorPoint:0.0, 0.0];
    [(AKAlignmentGuideLineLayer *)v9 setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v10 = [MEMORY[0x277D75348] akColorWithSRGBRed:0.933333333 green:0.792156863 blue:0.0 alpha:1.0];
    -[AKAlignmentGuideLineLayer setStrokeColor:](v9, "setStrokeColor:", [v10 CGColor]);

    [(AKAlignmentGuideLineLayer *)v9 setLineWidth:1.0 / a3];
    Mutable = CGPathCreateMutable();
    v12 = Mutable;
    if (v6)
    {
      CGPathMoveToPoint(Mutable, 0, 0.0, -a5);
      v13 = 0.0;
      v14 = v12;
      v15 = a5;
    }

    else
    {
      CGPathMoveToPoint(Mutable, 0, -a5, 0.0);
      v15 = 0.0;
      v14 = v12;
      v13 = a5;
    }

    CGPathAddLineToPoint(v14, 0, v13, v15);
    [(AKAlignmentGuideLineLayer *)v9 setPath:v12];
    CGPathRelease(v12);
  }

  return v9;
}

@end