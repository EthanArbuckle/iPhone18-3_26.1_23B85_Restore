@interface SHLTaskRetryContext
- (SHLTaskRetryContext)initWithOutcome:(id)outcome retryBlock:(id)block;
@end

@implementation SHLTaskRetryContext

- (SHLTaskRetryContext)initWithOutcome:(id)outcome retryBlock:(id)block
{
  outcomeCopy = outcome;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = SHLTaskRetryContext;
  v9 = [(SHLTaskRetryContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outcome, outcome);
    v11 = objc_retainBlock(blockCopy);
    retryBlock = v10->_retryBlock;
    v10->_retryBlock = v11;
  }

  return v10;
}

@end