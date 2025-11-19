@interface SAAceDomainSignal(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAAceDomainSignal(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v8.receiver = a1;
  v8.super_class = &off_1F05B0610;
  v4 = a3;
  objc_msgSendSuper2(&v8, sel_af_addEntriesToAnalyticsContext_, v4);
  v5 = [a1 domain];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  [v4 setObject:v7 forKey:@"domain"];
}

@end