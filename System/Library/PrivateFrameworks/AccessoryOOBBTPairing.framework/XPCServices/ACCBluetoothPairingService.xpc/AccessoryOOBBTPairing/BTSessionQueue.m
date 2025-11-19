@interface BTSessionQueue
@end

@implementation BTSessionQueue

void ___BTSessionQueue_block_invoke(id a1)
{
  _BTSessionQueue___BTSessionQueue = dispatch_queue_create(kBTQueueName, 0);

  _objc_release_x1();
}

@end