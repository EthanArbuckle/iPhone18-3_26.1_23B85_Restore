@interface AVEventWaiter
- (void)dealloc;
- (void)markEventAsCompleted;
- (void)waitUntilEventIsCompleted;
@end

@implementation AVEventWaiter

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVEventWaiter;
  [(AVEventWaiter *)&v3 dealloc];
}

- (void)markEventAsCompleted
{
  [(NSCondition *)self->_condition lock];
  self->_eventCompleted = 1;
  [(NSCondition *)self->_condition signal];
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (void)waitUntilEventIsCompleted
{
  [(NSCondition *)self->_condition lock];
  while (!self->_eventCompleted)
  {
    [(NSCondition *)self->_condition wait];
  }

  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

@end