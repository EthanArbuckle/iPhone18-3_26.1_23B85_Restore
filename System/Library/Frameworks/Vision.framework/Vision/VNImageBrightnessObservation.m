@interface VNImageBrightnessObservation
- (float)brightness;
@end

@implementation VNImageBrightnessObservation

- (float)brightness
{
  v2 = [(VNImageScoreObservation *)self exposureScore];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end