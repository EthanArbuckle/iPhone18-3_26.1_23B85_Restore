@interface WFCallUtilitiesContactsProcessingQueue
@end

@implementation WFCallUtilitiesContactsProcessingQueue

void ___WFCallUtilitiesContactsProcessingQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ActionKit.CallUtilities.ProcessingQueue", 0);
  v1 = _WFCallUtilitiesContactsProcessingQueue_queue;
  _WFCallUtilitiesContactsProcessingQueue_queue = v0;
}

@end