@interface SleepScoreComponentLabelDimension
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation SleepScoreComponentLabelDimension

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  [locationCopy integerValue];
  sub_29E7045EC();
  sub_29E754C28();

  v5 = sub_29E754198();

  return v5;
}

@end