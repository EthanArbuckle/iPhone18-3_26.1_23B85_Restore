@interface VNImageBrightnessObservation
- (float)brightness;
@end

@implementation VNImageBrightnessObservation

- (float)brightness
{
  exposureScore = [(VNImageScoreObservation *)self exposureScore];
  [exposureScore floatValue];
  v4 = v3;

  return v4;
}

@end