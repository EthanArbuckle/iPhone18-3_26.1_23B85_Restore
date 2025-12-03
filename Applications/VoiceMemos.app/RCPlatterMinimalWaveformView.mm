@interface RCPlatterMinimalWaveformView
- (id)accessibilityLabel;
- (unint64_t)numberOfSlices;
@end

@implementation RCPlatterMinimalWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  platterMinimalViewSliceCount = [v2 platterMinimalViewSliceCount];

  return platterMinimalViewSliceCount;
}

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AX_JINDO_WAVEFORM" value:&stru_100295BB8 table:0];

  return v3;
}

@end