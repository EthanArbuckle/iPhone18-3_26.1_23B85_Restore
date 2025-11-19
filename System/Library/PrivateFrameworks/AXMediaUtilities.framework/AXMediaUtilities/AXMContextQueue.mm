@interface AXMContextQueue
@end

@implementation AXMContextQueue

void ___AXMContextQueue_block_invoke()
{
  v0 = dispatch_queue_create("contextQueue", 0);
  v1 = _AXMContextQueue__ContextQueue;
  _AXMContextQueue__ContextQueue = v0;
}

@end