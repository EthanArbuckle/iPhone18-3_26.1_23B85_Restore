@interface AnalyticsService
- (AnalyticsService)initWithWorkQueue:(id)a3;
@end

@implementation AnalyticsService

- (AnalyticsService)initWithWorkQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AnalyticsService;
  v5 = [(AnalyticsService *)&v9 init];
  if (v5)
  {
    v6 = [[LACAnalyticsServiceXPCHost alloc] initWithWorkQueue:v4];
    xpcController = v5->_xpcController;
    v5->_xpcController = v6;
  }

  return v5;
}

@end