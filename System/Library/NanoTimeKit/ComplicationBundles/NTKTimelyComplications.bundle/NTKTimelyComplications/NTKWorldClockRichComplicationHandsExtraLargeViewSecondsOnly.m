@interface NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly
- (id)secondHandConfiguration;
@end

@implementation NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly

- (id)secondHandConfiguration
{
  v7.receiver = self;
  v7.super_class = NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly;
  v2 = [(NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly *)&v7 secondHandConfiguration];
  [v2 pegRadius];
  v4 = v3;
  [v2 pegStrokeWidth];
  [v2 setTailLength:ceil(v4 + v5 + 0.5)];

  return v2;
}

@end