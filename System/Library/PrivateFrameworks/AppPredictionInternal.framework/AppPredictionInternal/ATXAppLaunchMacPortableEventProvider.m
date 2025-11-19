@interface ATXAppLaunchMacPortableEventProvider
- (BOOL)isEventFromProvider:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3;
@end

@implementation ATXAppLaunchMacPortableEventProvider

- (id)biomePublisherWithBookmark:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v9.receiver = self;
  v9.super_class = ATXAppLaunchMacPortableEventProvider;
  v7 = [(ATXAppLaunchMacEventProvider *)&v9 biomePublisherWithBookmark:v5 devicePlatform:4 startTime:v6 + -2419200.0];

  return v7;
}

- (BOOL)isEventFromProvider:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ATXAppLaunchMacPortableEventProvider;
  v5 = -[ATXAppLaunchMacEventProvider isEventFromProvider:](&v7, sel_isEventFromProvider_, v4) && ([v4 isMacPortable] & 1) != 0;

  return v5;
}

@end