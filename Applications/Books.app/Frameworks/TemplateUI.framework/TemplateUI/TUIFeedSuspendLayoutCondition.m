@interface TUIFeedSuspendLayoutCondition
- (BOOL)evaluateWithEntry:(id)a3 index:(unint64_t)a4;
@end

@implementation TUIFeedSuspendLayoutCondition

- (BOOL)evaluateWithEntry:(id)a3 index:(unint64_t)a4
{
  os_unfair_lock_lock_with_options();
  state = self->super._state;
  os_unfair_lock_unlock(&self->super._lock);
  return state & 1;
}

@end