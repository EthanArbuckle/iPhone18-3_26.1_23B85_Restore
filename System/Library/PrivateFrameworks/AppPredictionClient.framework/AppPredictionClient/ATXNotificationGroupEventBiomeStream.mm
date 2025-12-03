@interface ATXNotificationGroupEventBiomeStream
- (ATXNotificationGroupEventBiomeStream)initWithStoreConfig:(id)config;
@end

@implementation ATXNotificationGroupEventBiomeStream

- (ATXNotificationGroupEventBiomeStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXNotificationGroupEventBiomeStream;
  v5 = [(ATXNotificationGroupEventBiomeStream *)&v11 init];
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
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"notificationGroupEvent" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

@end