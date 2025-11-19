@interface ThreadedInvocationTrampoline
- (ThreadedInvocationTrampoline)initWithTarget:(id)a3 thread:(id)a4 immediateForMatchingThread:(BOOL)a5;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation ThreadedInvocationTrampoline

- (ThreadedInvocationTrampoline)initWithTarget:(id)a3 thread:(id)a4 immediateForMatchingThread:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = ThreadedInvocationTrampoline;
  v8 = [(ThreadedInvocationTrampoline *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(InvocationTrampoline *)v8 setTarget:a3];
    v9->_thread = a4;
    v9->_immediateForMatchingThread = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ThreadedInvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  [a3 retainArguments];
  thread = self->_thread;
  if (thread)
  {
    if (self->_immediateForMatchingThread)
    {
      if ([objc_msgSend(MEMORY[0x1E696AF00] "currentThread")])
      {

        [(InvocationTrampoline *)self performInvocation:a3];
        return;
      }

      thread = self->_thread;
    }

    [(ThreadedInvocationTrampoline *)self performSelector:sel_performInvocation_ onThread:thread withObject:a3 waitUntilDone:0];
  }

  else
  {

    [(ThreadedInvocationTrampoline *)self performSelectorInBackground:sel_performInvocation_ withObject:a3];
  }
}

@end