@interface SAAceDomainSignal(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAAceDomainSignal(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v8.receiver = self;
  v8.super_class = &off_1F05B0610;
  v4 = a3;
  objc_msgSendSuper2(&v8, sel_af_addEntriesToAnalyticsContext_, v4);
  domain = [self domain];
  v6 = domain;
  if (domain)
  {
    v7 = domain;
  }

  else
  {
    v7 = @"nil";
  }

  [v4 setObject:v7 forKey:@"domain"];
}

@end