@interface TUIFeedSuspendLayoutLayerUpdateCondition
- (BOOL)evaluateWithRenderModel:(id)model;
- (TUIFeedSuspendLayoutLayerUpdateCondition)initWithSectionCount:(int64_t)count completion:(id)completion;
@end

@implementation TUIFeedSuspendLayoutLayerUpdateCondition

- (TUIFeedSuspendLayoutLayerUpdateCondition)initWithSectionCount:(int64_t)count completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = TUIFeedSuspendLayoutLayerUpdateCondition;
  result = [(TUIFeedBaseLayoutCondition *)&v6 initWithCompletion:completion];
  if (result)
  {
    result->_totalSectionCount = count;
  }

  return result;
}

- (BOOL)evaluateWithRenderModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock_with_options();
  state = self->super._state;
  os_unfair_lock_unlock(&self->super._lock);
  if (state)
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = TUIDynamicCast(v7, modelCopy);
    v9 = v8;
    if (v8)
    {
      submodels = [v8 submodels];
      v6 = [submodels count] == self->_totalSectionCount;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end