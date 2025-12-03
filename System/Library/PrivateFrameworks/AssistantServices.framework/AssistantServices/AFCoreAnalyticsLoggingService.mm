@interface AFCoreAnalyticsLoggingService
+ (id)sharedLoggingService;
- (id)_init;
- (void)logToCoreAnalyticsCrossDeviceRequestEvent:(id)event;
@end

@implementation AFCoreAnalyticsLoggingService

- (void)logToCoreAnalyticsCrossDeviceRequestEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AFCoreAnalyticsLoggingService_logToCoreAnalyticsCrossDeviceRequestEvent___block_invoke;
  block[3] = &unk_1E73497C8;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, block);
}

void __75__AFCoreAnalyticsLoggingService_logToCoreAnalyticsCrossDeviceRequestEvent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nearbyDevicesPayloads];
  [v1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5];
}

void __75__AFCoreAnalyticsLoggingService_logToCoreAnalyticsCrossDeviceRequestEvent___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[AFCoreAnalyticsLoggingService logToCoreAnalyticsCrossDeviceRequestEvent:]_block_invoke_2";
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s log to CoreAnalytics nearby device context %@: %@", buf, 0x20u);
  }

  v9 = v5;
  v7 = v5;
  AnalyticsSendEventLazy();

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = AFCoreAnalyticsLoggingService;
  v2 = [(AFCoreAnalyticsLoggingService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.assistant.coreanalytics.client", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedLoggingService
{
  if (sharedLoggingService_onceToken != -1)
  {
    dispatch_once(&sharedLoggingService_onceToken, &__block_literal_global_13778);
  }

  v3 = sharedLoggingService_analyticsService;

  return v3;
}

void __53__AFCoreAnalyticsLoggingService_sharedLoggingService__block_invoke()
{
  v0 = [[AFCoreAnalyticsLoggingService alloc] _init];
  v1 = sharedLoggingService_analyticsService;
  sharedLoggingService_analyticsService = v0;
}

@end