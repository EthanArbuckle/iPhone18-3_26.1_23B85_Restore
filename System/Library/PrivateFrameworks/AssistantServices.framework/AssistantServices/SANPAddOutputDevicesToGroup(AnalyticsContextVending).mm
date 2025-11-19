@interface SANPAddOutputDevicesToGroup(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SANPAddOutputDevicesToGroup(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &off_1F05B2870;
  objc_msgSendSuper2(&v7, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 hashedRouteUIDs];
  v6 = [v5 count];

  if (v6)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:@"isWHA"];
  }
}

@end