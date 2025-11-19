@interface DispatchQueue
- (void)scheduleBlock:(id)a3;
@end

@implementation DispatchQueue

- (void)scheduleBlock:(id)a3
{
  if (self)
  {
    dispatch_async(self->_queue, a3);
  }
}

@end