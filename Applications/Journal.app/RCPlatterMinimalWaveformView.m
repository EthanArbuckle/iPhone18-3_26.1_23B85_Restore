@interface RCPlatterMinimalWaveformView
- (unint64_t)numberOfSlices;
@end

@implementation RCPlatterMinimalWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 platterMinimalViewSliceCount];

  return v3;
}

@end