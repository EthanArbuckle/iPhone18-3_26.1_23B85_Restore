@interface AVTBlockScheduler
- (void)performBlock:(id)block afterDelay:(double)delay onQueue:(id)queue;
@end

@implementation AVTBlockScheduler

- (void)performBlock:(id)block afterDelay:(double)delay onQueue:(id)queue
{
  v6 = (delay * 1000000000.0);
  queueCopy = queue;
  block = block;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queueCopy, block);
}

@end