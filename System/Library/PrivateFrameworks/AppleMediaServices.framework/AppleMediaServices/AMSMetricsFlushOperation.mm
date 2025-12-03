@interface AMSMetricsFlushOperation
- (AMSMetricsFlushOperation)initWithStrategy:(id)strategy promise:(id)promise;
@end

@implementation AMSMetricsFlushOperation

- (AMSMetricsFlushOperation)initWithStrategy:(id)strategy promise:(id)promise
{
  strategyCopy = strategy;
  promiseCopy = promise;
  v12.receiver = self;
  v12.super_class = AMSMetricsFlushOperation;
  _init = [(AMSMetricsOperation *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, strategy);
    objc_storeStrong(&v10->_promise, promise);
  }

  return v10;
}

@end