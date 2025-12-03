@interface RCRecorderStyleProvider
+ (id)sharedStyleProvider;
- (double)platterWaveformWidthCompact;
- (id)_platterTimeLabelFontWithTextStyle:(id)style traitCollection:(id)collection;
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

- (id)_platterTimeLabelFontWithTextStyle:(id)style traitCollection:(id)collection
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style compatibleWithTraitCollection:collection];
  [v4 pointSize];
  v5 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];

  return v5;
}

- (double)platterWaveformWidthCompact
{
  platterCompactViewSliceCount = [(RCRecorderStyleProvider *)self platterCompactViewSliceCount];
  [(RCRecorderStyleProvider *)self platterWaveformSliceWidth];
  v5 = v4;
  [(RCRecorderStyleProvider *)self platterWaveformSlicePadding];
  return v6 * platterCompactViewSliceCount + platterCompactViewSliceCount * v5;
}

@end