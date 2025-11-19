@interface VNImageBlurObservation
- (float)blurMeasure;
@end

@implementation VNImageBlurObservation

- (float)blurMeasure
{
  v2 = [(VNImageScoreObservation *)self blurScore];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end