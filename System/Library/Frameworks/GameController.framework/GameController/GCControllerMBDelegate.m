@interface GCControllerMBDelegate
- (void)fireCompletionHandler;
@end

@implementation GCControllerMBDelegate

- (void)fireCompletionHandler
{
  v3 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerMBDelegate_fireCompletionHandler__block_invoke;
    block[3] = &unk_1E8419198;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end