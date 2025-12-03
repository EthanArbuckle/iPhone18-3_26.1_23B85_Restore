@interface SANPSetPlaybackSpeed(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SANPSetPlaybackSpeed(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = &off_1F05B3958;
  objc_msgSendSuper2(&v7, sel_af_addEntriesToAnalyticsContext_, v4);
  hashedRouteUIDs = [self hashedRouteUIDs];
  v6 = [hashedRouteUIDs count];

  if (v6)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:@"isWHA"];
  }
}

@end