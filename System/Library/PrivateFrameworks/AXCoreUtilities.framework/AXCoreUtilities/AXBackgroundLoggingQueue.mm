@interface AXBackgroundLoggingQueue
@end

@implementation AXBackgroundLoggingQueue

void ___AXBackgroundLoggingQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("_AXBackgroundLoggingQueue", attr);
  v2 = _AXBackgroundLoggingQueue__queue;
  _AXBackgroundLoggingQueue__queue = v1;
}

@end