@interface SHLTaskRetryContext
- (SHLTaskRetryContext)initWithOutcome:(id)a3 retryBlock:(id)a4;
@end

@implementation SHLTaskRetryContext

- (SHLTaskRetryContext)initWithOutcome:(id)a3 retryBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SHLTaskRetryContext;
  v9 = [(SHLTaskRetryContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outcome, a3);
    v11 = objc_retainBlock(v8);
    retryBlock = v10->_retryBlock;
    v10->_retryBlock = v11;
  }

  return v10;
}

@end