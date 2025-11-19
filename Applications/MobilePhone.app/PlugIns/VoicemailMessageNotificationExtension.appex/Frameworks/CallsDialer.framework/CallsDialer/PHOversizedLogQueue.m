@interface PHOversizedLogQueue
@end

@implementation PHOversizedLogQueue

void __PHOversizedLogQueue_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = PHOversizedLogQueue_PHOversizedLogQueue;
  PHOversizedLogQueue_PHOversizedLogQueue = v1;
}

@end