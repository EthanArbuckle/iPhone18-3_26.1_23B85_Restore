@interface TUIFeedSuspendLayoutUpdateCondition
- (BOOL)evaluateWithRenderModel:(id)model;
@end

@implementation TUIFeedSuspendLayoutUpdateCondition

- (BOOL)evaluateWithRenderModel:(id)model
{
  os_unfair_lock_lock_with_options();
  state = self->super._state;
  os_unfair_lock_unlock(&self->super._lock);
  return state & 1;
}

@end