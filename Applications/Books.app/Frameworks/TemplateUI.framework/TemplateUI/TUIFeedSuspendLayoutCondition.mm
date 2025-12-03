@interface TUIFeedSuspendLayoutCondition
- (BOOL)evaluateWithEntry:(id)entry index:(unint64_t)index;
@end

@implementation TUIFeedSuspendLayoutCondition

- (BOOL)evaluateWithEntry:(id)entry index:(unint64_t)index
{
  os_unfair_lock_lock_with_options();
  state = self->super._state;
  os_unfair_lock_unlock(&self->super._lock);
  return state & 1;
}

@end