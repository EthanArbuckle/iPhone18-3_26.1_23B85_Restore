@interface NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly
- (id)secondHandConfiguration;
@end

@implementation NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly

- (id)secondHandConfiguration
{
  v7.receiver = self;
  v7.super_class = NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly;
  secondHandConfiguration = [(NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly *)&v7 secondHandConfiguration];
  [secondHandConfiguration pegRadius];
  v4 = v3;
  [secondHandConfiguration pegStrokeWidth];
  [secondHandConfiguration setTailLength:ceil(v4 + v5 + 0.5)];

  return secondHandConfiguration;
}

@end