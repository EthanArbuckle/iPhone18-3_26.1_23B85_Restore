@interface DelayedInvocationTrampoline
- (DelayedInvocationTrampoline)initWithTarget:(id)target delay:(double)delay;
- (void)forwardInvocation:(id)invocation;
@end

@implementation DelayedInvocationTrampoline

- (DelayedInvocationTrampoline)initWithTarget:(id)target delay:(double)delay
{
  v9.receiver = self;
  v9.super_class = DelayedInvocationTrampoline;
  v6 = [(DelayedInvocationTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(InvocationTrampoline *)v6 setTarget:target];
    v7->_delay = delay;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  [invocation retainArguments];
  delay = self->_delay;

  [(DelayedInvocationTrampoline *)self performSelector:sel_performInvocation_ withObject:invocation afterDelay:delay];
}

@end