@interface NSIPItemQueue
@end

@implementation NSIPItemQueue

dispatch_queue_t ___NSIPItemQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.Foundation.NSItemProvider-item-queue", 0);
  qword_1ED439A70 = result;
  return result;
}

@end