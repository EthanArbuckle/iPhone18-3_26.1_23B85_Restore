@interface OperationQueueInvocationTrampoline
- (OperationQueueInvocationTrampoline)initWithTarget:(id)target operationQueue:(id)queue priority:(int64_t)priority;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation OperationQueueInvocationTrampoline

- (OperationQueueInvocationTrampoline)initWithTarget:(id)target operationQueue:(id)queue priority:(int64_t)priority
{
  v11.receiver = self;
  v11.super_class = OperationQueueInvocationTrampoline;
  v8 = [(OperationQueueInvocationTrampoline *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(InvocationTrampoline *)v8 setTarget:target];
    v9->_queue = queue;
    v9->_priority = priority;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OperationQueueInvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  [invocation retainArguments];
  [invocation setTarget:{-[InvocationTrampoline target](self, "target")}];
  v5 = [objc_alloc(MEMORY[0x1E696AC98]) initWithInvocation:invocation];
  [v5 setQueuePriority:self->_priority];
  [(NSOperationQueue *)self->_queue addOperation:v5];

  self->_queue = 0;
}

@end