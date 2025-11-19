@interface AMSMetricsFlushOperation
- (AMSMetricsFlushOperation)initWithStrategy:(id)a3 promise:(id)a4;
@end

@implementation AMSMetricsFlushOperation

- (AMSMetricsFlushOperation)initWithStrategy:(id)a3 promise:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSMetricsFlushOperation;
  v9 = [(AMSMetricsOperation *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_promise, a4);
  }

  return v10;
}

@end