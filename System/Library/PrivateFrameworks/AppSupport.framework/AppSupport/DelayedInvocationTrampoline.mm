@interface DelayedInvocationTrampoline
- (DelayedInvocationTrampoline)initWithTarget:(id)a3 delay:(double)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation DelayedInvocationTrampoline

- (DelayedInvocationTrampoline)initWithTarget:(id)a3 delay:(double)a4
{
  v9.receiver = self;
  v9.super_class = DelayedInvocationTrampoline;
  v6 = [(DelayedInvocationTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(InvocationTrampoline *)v6 setTarget:a3];
    v7->_delay = a4;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  [a3 retainArguments];
  delay = self->_delay;

  [(DelayedInvocationTrampoline *)self performSelector:sel_performInvocation_ withObject:a3 afterDelay:delay];
}

@end