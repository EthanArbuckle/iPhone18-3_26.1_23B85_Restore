@interface ATXUserNotificationDigestBiomeStream
- (ATXUserNotificationDigestBiomeStream)initWithStoreConfig:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation ATXUserNotificationDigestBiomeStream

- (ATXUserNotificationDigestBiomeStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXUserNotificationDigestBiomeStream;
  v5 = [(ATXUserNotificationDigestBiomeStream *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"notificationDigestLoggingEvents" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;

    v10 = [(BMStoreStream *)v5->_inner source];
    source = v5->_source;
    v5->_source = v10;
  }

  return v5;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationDigestBiomeStream *)self source];
  [v5 sendEvent:v4];
}

@end