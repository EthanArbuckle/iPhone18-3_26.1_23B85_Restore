@interface ThreadedInvocationTrampoline
- (ThreadedInvocationTrampoline)initWithTarget:(id)target thread:(id)thread immediateForMatchingThread:(BOOL)matchingThread;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation ThreadedInvocationTrampoline

- (ThreadedInvocationTrampoline)initWithTarget:(id)target thread:(id)thread immediateForMatchingThread:(BOOL)matchingThread
{
  v11.receiver = self;
  v11.super_class = ThreadedInvocationTrampoline;
  v8 = [(ThreadedInvocationTrampoline *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(InvocationTrampoline *)v8 setTarget:target];
    v9->_thread = thread;
    v9->_immediateForMatchingThread = matchingThread;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ThreadedInvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  [invocation retainArguments];
  thread = self->_thread;
  if (thread)
  {
    if (self->_immediateForMatchingThread)
    {
      if ([objc_msgSend(MEMORY[0x1E696AF00] "currentThread")])
      {

        [(InvocationTrampoline *)self performInvocation:invocation];
        return;
      }

      thread = self->_thread;
    }

    [(ThreadedInvocationTrampoline *)self performSelector:sel_performInvocation_ onThread:thread withObject:invocation waitUntilDone:0];
  }

  else
  {

    [(ThreadedInvocationTrampoline *)self performSelectorInBackground:sel_performInvocation_ withObject:invocation];
  }
}

@end