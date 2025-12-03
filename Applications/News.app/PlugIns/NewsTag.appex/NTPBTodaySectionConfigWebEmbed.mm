@interface NTPBTodaySectionConfigWebEmbed
- (BOOL)conformsToProtocol:(id)protocol;
@end

@implementation NTPBTodaySectionConfigWebEmbed

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = NTPBTodaySectionConfigWebEmbed;
  protocolCopy = protocol;
  if ([(NTPBTodaySectionConfigWebEmbed *)&v5 conformsToProtocol:protocolCopy])
  {

    return 1;
  }

  else
  {

    return &OBJC_PROTOCOL___NTTodayItem == protocolCopy;
  }
}

@end