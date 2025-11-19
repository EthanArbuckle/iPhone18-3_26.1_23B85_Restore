@interface AMSMetricsOperation
+ (id)dropEventsOperation;
+ (id)flushOperationWithStrategy:(id)a3 promise:(id)a4;
- (id)_init;
@end

@implementation AMSMetricsOperation

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AMSMetricsOperation;
  return [(AMSMetricsOperation *)&v3 init];
}

+ (id)dropEventsOperation
{
  v2 = [(AMSMetricsOperation *)[AMSMetricsDropEventsOperation alloc] _init];

  return v2;
}

+ (id)flushOperationWithStrategy:(id)a3 promise:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AMSMetricsFlushOperation alloc] initWithStrategy:v6 promise:v5];

  return v7;
}

@end