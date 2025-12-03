@interface MTL4CommitOptions
- (MTL4CommitOptions)init;
- (void)addFeedbackHandler:(id)handler;
- (void)dealloc;
- (void)setCommitFeedbackDispatch:(id)dispatch;
@end

@implementation MTL4CommitOptions

- (MTL4CommitOptions)init
{
  v3.receiver = self;
  v3.super_class = MTL4CommitOptions;
  result = [(MTL4CommitOptions *)&v3 init];
  if (result)
  {
    result->_commitFeedbackDispatch = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4CommitOptions;
  [(MTL4CommitOptions *)&v3 dealloc];
}

- (void)addFeedbackHandler:(id)handler
{
  if (handler)
  {
    commitFeedbackDispatch = self->_commitFeedbackDispatch;
    if (!commitFeedbackDispatch)
    {
      commitFeedbackDispatch = objc_alloc_init(_MTL4CommitFeedbackDispatch);
      self->_commitFeedbackDispatch = commitFeedbackDispatch;
    }

    [(_MTL4CommitFeedbackDispatch *)commitFeedbackDispatch addFeedbackHandler:handler];
  }
}

- (void)setCommitFeedbackDispatch:(id)dispatch
{
  dispatchCopy = dispatch;

  self->_commitFeedbackDispatch = dispatch;
}

@end