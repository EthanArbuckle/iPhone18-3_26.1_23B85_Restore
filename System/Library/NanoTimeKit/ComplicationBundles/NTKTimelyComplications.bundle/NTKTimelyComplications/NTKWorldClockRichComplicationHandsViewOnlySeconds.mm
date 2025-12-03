@interface NTKWorldClockRichComplicationHandsViewOnlySeconds
- (id)secondHandConfiguration;
@end

@implementation NTKWorldClockRichComplicationHandsViewOnlySeconds

- (id)secondHandConfiguration
{
  v4.receiver = self;
  v4.super_class = NTKWorldClockRichComplicationHandsViewOnlySeconds;
  secondHandConfiguration = [(NTKWorldClockRichComplicationHandsViewOnlySeconds *)&v4 secondHandConfiguration];
  [secondHandConfiguration setExcludeSecondTail:1];

  return secondHandConfiguration;
}

@end