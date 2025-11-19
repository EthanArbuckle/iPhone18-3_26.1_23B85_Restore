@interface NTPBTodaySectionConfigWebEmbed
- (BOOL)conformsToProtocol:(id)a3;
@end

@implementation NTPBTodaySectionConfigWebEmbed

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTPBTodaySectionConfigWebEmbed;
  v3 = a3;
  if ([(NTPBTodaySectionConfigWebEmbed *)&v5 conformsToProtocol:v3])
  {

    return 1;
  }

  else
  {

    return &OBJC_PROTOCOL___NTTodayItem == v3;
  }
}

@end