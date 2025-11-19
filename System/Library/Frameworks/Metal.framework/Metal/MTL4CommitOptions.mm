@interface MTL4CommitOptions
- (MTL4CommitOptions)init;
- (void)addFeedbackHandler:(id)a3;
- (void)dealloc;
- (void)setCommitFeedbackDispatch:(id)a3;
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

- (void)addFeedbackHandler:(id)a3
{
  if (a3)
  {
    commitFeedbackDispatch = self->_commitFeedbackDispatch;
    if (!commitFeedbackDispatch)
    {
      commitFeedbackDispatch = objc_alloc_init(_MTL4CommitFeedbackDispatch);
      self->_commitFeedbackDispatch = commitFeedbackDispatch;
    }

    [(_MTL4CommitFeedbackDispatch *)commitFeedbackDispatch addFeedbackHandler:a3];
  }
}

- (void)setCommitFeedbackDispatch:(id)a3
{
  v5 = a3;

  self->_commitFeedbackDispatch = a3;
}

@end