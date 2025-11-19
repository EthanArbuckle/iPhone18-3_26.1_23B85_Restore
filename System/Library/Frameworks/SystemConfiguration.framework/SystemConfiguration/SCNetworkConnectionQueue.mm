@interface SCNetworkConnectionQueue
@end

@implementation SCNetworkConnectionQueue

dispatch_queue_t ____SCNetworkConnectionQueue_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = dispatch_queue_create("SCNetworkConnectionQueue", 0);
  __SCNetworkConnectionQueue_q = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end