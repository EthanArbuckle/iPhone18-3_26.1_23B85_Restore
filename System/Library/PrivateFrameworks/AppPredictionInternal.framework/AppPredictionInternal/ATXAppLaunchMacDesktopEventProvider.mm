@interface ATXAppLaunchMacDesktopEventProvider
- (BOOL)isEventFromProvider:(id)provider;
- (id)biomePublisherWithBookmark:(id)bookmark;
@end

@implementation ATXAppLaunchMacDesktopEventProvider

- (id)biomePublisherWithBookmark:(id)bookmark
{
  v4 = MEMORY[0x277CBEAA8];
  bookmarkCopy = bookmark;
  [v4 timeIntervalSinceReferenceDate];
  v9.receiver = self;
  v9.super_class = ATXAppLaunchMacDesktopEventProvider;
  v7 = [(ATXAppLaunchMacEventProvider *)&v9 biomePublisherWithBookmark:bookmarkCopy devicePlatform:3 startTime:v6 + -2419200.0];

  return v7;
}

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  v7.receiver = self;
  v7.super_class = ATXAppLaunchMacDesktopEventProvider;
  v5 = -[ATXAppLaunchMacEventProvider isEventFromProvider:](&v7, sel_isEventFromProvider_, providerCopy) && ([providerCopy isMacDesktop] & 1) != 0;

  return v5;
}

@end