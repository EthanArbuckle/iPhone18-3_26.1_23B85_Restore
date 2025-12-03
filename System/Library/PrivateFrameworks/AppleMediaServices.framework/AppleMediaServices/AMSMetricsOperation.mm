@interface AMSMetricsOperation
+ (id)dropEventsOperation;
+ (id)flushOperationWithStrategy:(id)strategy promise:(id)promise;
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
  _init = [(AMSMetricsOperation *)[AMSMetricsDropEventsOperation alloc] _init];

  return _init;
}

+ (id)flushOperationWithStrategy:(id)strategy promise:(id)promise
{
  promiseCopy = promise;
  strategyCopy = strategy;
  v7 = [[AMSMetricsFlushOperation alloc] initWithStrategy:strategyCopy promise:promiseCopy];

  return v7;
}

@end