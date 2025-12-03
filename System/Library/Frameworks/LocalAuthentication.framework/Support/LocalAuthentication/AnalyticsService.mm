@interface AnalyticsService
- (AnalyticsService)initWithWorkQueue:(id)queue;
@end

@implementation AnalyticsService

- (AnalyticsService)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AnalyticsService;
  v5 = [(AnalyticsService *)&v9 init];
  if (v5)
  {
    v6 = [[LACAnalyticsServiceXPCHost alloc] initWithWorkQueue:queueCopy];
    xpcController = v5->_xpcController;
    v5->_xpcController = v6;
  }

  return v5;
}

@end