@interface ATXUserNotificationDigestBiomeStream
- (ATXUserNotificationDigestBiomeStream)initWithStoreConfig:(id)config;
- (void)sendEvent:(id)event;
@end

@implementation ATXUserNotificationDigestBiomeStream

- (ATXUserNotificationDigestBiomeStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = ATXUserNotificationDigestBiomeStream;
  v5 = [(ATXUserNotificationDigestBiomeStream *)&v13 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"notificationDigestLoggingEvents" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;

    source = [(BMStoreStream *)v5->_inner source];
    source = v5->_source;
    v5->_source = source;
  }

  return v5;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  source = [(ATXUserNotificationDigestBiomeStream *)self source];
  [source sendEvent:eventCopy];
}

@end