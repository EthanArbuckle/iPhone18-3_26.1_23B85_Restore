@interface AKAlignmentGuideLineLayer
- (AKAlignmentGuideLineLayer)initWithScaleFactor:(double)factor forVerticalOrientation:(BOOL)orientation withMaxSize:(double)size;
@end

@implementation AKAlignmentGuideLineLayer

- (AKAlignmentGuideLineLayer)initWithScaleFactor:(double)factor forVerticalOrientation:(BOOL)orientation withMaxSize:(double)size
{
  orientationCopy = orientation;
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

    [(AKAlignmentGuideLineLayer *)v9 setLineWidth:1.0 / factor];
    Mutable = CGPathCreateMutable();
    v12 = Mutable;
    if (orientationCopy)
    {
      CGPathMoveToPoint(Mutable, 0, 0.0, -size);
      sizeCopy2 = 0.0;
      v14 = v12;
      sizeCopy = size;
    }

    else
    {
      CGPathMoveToPoint(Mutable, 0, -size, 0.0);
      sizeCopy = 0.0;
      v14 = v12;
      sizeCopy2 = size;
    }

    CGPathAddLineToPoint(v14, 0, sizeCopy2, sizeCopy);
    [(AKAlignmentGuideLineLayer *)v9 setPath:v12];
    CGPathRelease(v12);
  }

  return v9;
}

@end