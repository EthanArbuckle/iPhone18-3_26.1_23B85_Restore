@interface CFMachPortQueue
@end

@implementation CFMachPortQueue

dispatch_queue_t ___CFMachPortQueue_block_invoke()
{
  dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_attr_make_with_overcommit();
  result = dispatch_queue_create("com.apple.CFMachPort", v0);
  _CFMachPortQueue___CFMachPortQueue = result;
  return result;
}

@end