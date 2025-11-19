@interface AVRoutingEventWaiter
- (AVRoutingEventWaiter)init;
- (void)dealloc;
- (void)markEventAsCompleted;
- (void)waitUntilEventIsCompleted;
@end

@implementation AVRoutingEventWaiter

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRoutingEventWaiter;
  [(AVRoutingEventWaiter *)&v3 dealloc];
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

- (AVRoutingEventWaiter)init
{
  v5.receiver = self;
  v5.super_class = AVRoutingEventWaiter;
  v2 = [(AVRoutingEventWaiter *)&v5 init];
  if (v2)
  {
    v2->_condition = objc_alloc_init(MEMORY[0x1E696AB30]);
    v2->_eventCompleted = 0;
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end