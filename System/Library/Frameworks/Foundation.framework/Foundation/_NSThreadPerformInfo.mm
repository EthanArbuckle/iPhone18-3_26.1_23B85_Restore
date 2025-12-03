@interface _NSThreadPerformInfo
- (int)wait;
- (void)dealloc;
- (void)signal:(int)signal;
@end

@implementation _NSThreadPerformInfo

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSThreadPerformInfo;
  [(_NSThreadPerformInfo *)&v3 dealloc];
}

- (void)signal:(int)signal
{
  [(NSCondition *)self->_waiter lock];
  self->_state = signal;
  [(NSCondition *)self->_waiter signal];
  waiter = self->_waiter;

  [(NSCondition *)waiter unlock];
}

- (int)wait
{
  [(NSCondition *)self->_waiter lock];
  while (1)
  {
    state = self->_state;
    if (state)
    {
      break;
    }

    [(NSCondition *)self->_waiter wait];
  }

  [(NSCondition *)self->_waiter unlock];
  return state;
}

@end