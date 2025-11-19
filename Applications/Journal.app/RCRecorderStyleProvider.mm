@interface RCRecorderStyleProvider
+ (id)sharedStyleProvider;
- (double)platterWaveformWidthCompact;
- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4;
@end

@implementation RCRecorderStyleProvider

+ (id)sharedStyleProvider
{
  if (qword_100AF7878[0] != -1)
  {
    sub_1008C1B44();
  }

  v3 = qword_100AF7870;

  return v3;
}

- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a4];
  [v4 pointSize];
  v5 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];

  return v5;
}

- (double)platterWaveformWidthCompact
{
  v3 = [(RCRecorderStyleProvider *)self platterCompactViewSliceCount];
  [(RCRecorderStyleProvider *)self platterWaveformSliceWidth];
  v5 = v4;
  [(RCRecorderStyleProvider *)self platterWaveformSlicePadding];
  return v6 * v3 + v3 * v5;
}

@end