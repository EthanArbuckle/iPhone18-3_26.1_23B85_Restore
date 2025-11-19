@interface HSTCoreAnalyticsStage
- (void)handleConsume:(id)a3;
@end

@implementation HSTCoreAnalyticsStage

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    v7 = [v5 payload];
    AnalyticsSendEvent();

    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v5 name];
      v10 = [v5 payload];
      [(HSTCoreAnalyticsStage *)v9 handleConsume:v10, buf, v8];
    }
  }

  v11.receiver = self;
  v11.super_class = HSTCoreAnalyticsStage;
  [(HSStage *)&v11 handleConsume:v4];
}

- (void)handleConsume:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "HSTCoreAnalyticsStage:\n%@:\n%@", buf, 0x16u);
}

@end