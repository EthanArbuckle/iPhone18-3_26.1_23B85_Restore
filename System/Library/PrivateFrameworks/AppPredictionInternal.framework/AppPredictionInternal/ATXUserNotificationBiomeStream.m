@interface ATXUserNotificationBiomeStream
- (ATXUserNotificationBiomeStream)initWithStoreConfig:(id)a3;
- (id)source;
- (void)sendEvent:(id)a3;
- (void)sendEvent:(int64_t)a3 notification:(id)a4 deliveryReason:(unint64_t)a5 interactionUI:(unint64_t)a6;
@end

@implementation ATXUserNotificationBiomeStream

- (id)source
{
  v2 = self;
  objc_sync_enter(v2);
  source = v2->_source;
  if (!source)
  {
    v4 = [(BMStoreStream *)v2->_inner source];
    v5 = v2->_source;
    v2->_source = v4;

    source = v2->_source;
  }

  v6 = source;
  objc_sync_exit(v2);

  return v6;
}

- (ATXUserNotificationBiomeStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXUserNotificationBiomeStream;
  v5 = [(ATXUserNotificationBiomeStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"userNotificationEvents" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationBiomeStream *)self source];
  [v5 sendEvent:v4];
}

- (void)sendEvent:(int64_t)a3 notification:(id)a4 deliveryReason:(unint64_t)a5 interactionUI:(unint64_t)a6
{
  v10 = MEMORY[0x277CEB980];
  v11 = a4;
  v12 = [v10 alloc];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = [v12 initFromUserNotification:v11 eventType:a3 timestamp:a5 deliveryReason:a6 deliveryUI:?];

  [(ATXUserNotificationBiomeStream *)self sendEvent:v13];
}

@end