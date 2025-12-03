@interface RCPlatterMinimalWaveformView
- (unint64_t)numberOfSlices;
@end

@implementation RCPlatterMinimalWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  platterMinimalViewSliceCount = [v2 platterMinimalViewSliceCount];

  return platterMinimalViewSliceCount;
}

@end