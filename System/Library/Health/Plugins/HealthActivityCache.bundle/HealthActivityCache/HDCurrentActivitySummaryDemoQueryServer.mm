@interface HDCurrentActivitySummaryDemoQueryServer
- (void)_queue_start;
@end

@implementation HDCurrentActivitySummaryDemoQueryServer

- (void)_queue_start
{
  v8.receiver = self;
  v8.super_class = HDCurrentActivitySummaryDemoQueryServer;
  [(HDCurrentActivitySummaryDemoQueryServer *)&v8 _queue_start];
  clientProxy = [(HDCurrentActivitySummaryDemoQueryServer *)self clientProxy];
  v4 = sub_1F0B8(self);
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&def_21990, v5, OS_LOG_TYPE_INFO, "Delivering demo Activity Summary: %@", buf, 0xCu);
  }

  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  queryUUID = [(HDCurrentActivitySummaryDemoQueryServer *)self queryUUID];
  [clientProxy client_deliverActivitySummaries:v6 queryUUID:queryUUID];
}

@end