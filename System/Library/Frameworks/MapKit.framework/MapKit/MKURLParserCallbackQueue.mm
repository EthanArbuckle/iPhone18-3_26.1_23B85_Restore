@interface MKURLParserCallbackQueue
@end

@implementation MKURLParserCallbackQueue

void ___MKURLParserCallbackQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Maps.MKURLParser", v2);
  v1 = _MKURLParserCallbackQueue_callbackQueue;
  _MKURLParserCallbackQueue_callbackQueue = v0;
}

@end