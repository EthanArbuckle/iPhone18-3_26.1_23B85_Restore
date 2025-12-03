@interface ATXNotificationDeliveryBiomeStream
- (ATXNotificationDeliveryBiomeStream)initWithStoreConfig:(id)config;
@end

@implementation ATXNotificationDeliveryBiomeStream

- (ATXNotificationDeliveryBiomeStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXNotificationDeliveryBiomeStream;
  v5 = [(ATXNotificationDeliveryBiomeStream *)&v11 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"notificationSuggestionDelivery" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

@end