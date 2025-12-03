@interface VNImageBlurObservation
- (float)blurMeasure;
@end

@implementation VNImageBlurObservation

- (float)blurMeasure
{
  blurScore = [(VNImageScoreObservation *)self blurScore];
  [blurScore floatValue];
  v4 = v3;

  return v4;
}

@end