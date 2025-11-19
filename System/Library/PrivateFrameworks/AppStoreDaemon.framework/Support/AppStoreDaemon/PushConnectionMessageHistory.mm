@interface PushConnectionMessageHistory
- (void)dealloc;
@end

@implementation PushConnectionMessageHistory

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = PushConnectionMessageHistory;
  [(PushConnectionMessageHistory *)&v3 dealloc];
}

@end