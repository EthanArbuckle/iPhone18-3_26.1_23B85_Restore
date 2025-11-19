@interface NTKWorldClockRichComplicationHandsViewOnlySeconds
- (id)secondHandConfiguration;
@end

@implementation NTKWorldClockRichComplicationHandsViewOnlySeconds

- (id)secondHandConfiguration
{
  v4.receiver = self;
  v4.super_class = NTKWorldClockRichComplicationHandsViewOnlySeconds;
  v2 = [(NTKWorldClockRichComplicationHandsViewOnlySeconds *)&v4 secondHandConfiguration];
  [v2 setExcludeSecondTail:1];

  return v2;
}

@end