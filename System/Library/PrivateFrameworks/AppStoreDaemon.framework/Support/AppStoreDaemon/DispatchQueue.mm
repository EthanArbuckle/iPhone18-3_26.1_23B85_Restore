@interface DispatchQueue
- (void)scheduleBlock:(id)block;
@end

@implementation DispatchQueue

- (void)scheduleBlock:(id)block
{
  if (self)
  {
    dispatch_async(self->_queue, block);
  }
}

@end