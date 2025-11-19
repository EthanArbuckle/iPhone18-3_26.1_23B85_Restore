@interface OperationQueueInvocationTrampoline
- (OperationQueueInvocationTrampoline)initWithTarget:(id)a3 operationQueue:(id)a4 priority:(int64_t)a5;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation OperationQueueInvocationTrampoline

- (OperationQueueInvocationTrampoline)initWithTarget:(id)a3 operationQueue:(id)a4 priority:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = OperationQueueInvocationTrampoline;
  v8 = [(OperationQueueInvocationTrampoline *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(InvocationTrampoline *)v8 setTarget:a3];
    v9->_queue = a4;
    v9->_priority = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OperationQueueInvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  [a3 retainArguments];
  [a3 setTarget:{-[InvocationTrampoline target](self, "target")}];
  v5 = [objc_alloc(MEMORY[0x1E696AC98]) initWithInvocation:a3];
  [v5 setQueuePriority:self->_priority];
  [(NSOperationQueue *)self->_queue addOperation:v5];

  self->_queue = 0;
}

@end