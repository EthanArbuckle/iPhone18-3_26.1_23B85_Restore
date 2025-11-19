@interface TUIFeedSuspendLayoutLayerUpdateCondition
- (BOOL)evaluateWithRenderModel:(id)a3;
- (TUIFeedSuspendLayoutLayerUpdateCondition)initWithSectionCount:(int64_t)a3 completion:(id)a4;
@end

@implementation TUIFeedSuspendLayoutLayerUpdateCondition

- (TUIFeedSuspendLayoutLayerUpdateCondition)initWithSectionCount:(int64_t)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = TUIFeedSuspendLayoutLayerUpdateCondition;
  result = [(TUIFeedBaseLayoutCondition *)&v6 initWithCompletion:a4];
  if (result)
  {
    result->_totalSectionCount = a3;
  }

  return result;
}

- (BOOL)evaluateWithRenderModel:(id)a3
{
  v4 = a3;
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
    v8 = TUIDynamicCast(v7, v4);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 submodels];
      v6 = [v10 count] == self->_totalSectionCount;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end