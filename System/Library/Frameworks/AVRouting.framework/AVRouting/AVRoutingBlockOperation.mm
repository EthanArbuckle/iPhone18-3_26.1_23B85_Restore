@interface AVRoutingBlockOperation
- (AVRoutingBlockOperation)init;
- (AVRoutingBlockOperation)initWithBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation AVRoutingBlockOperation

- (AVRoutingBlockOperation)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithBlock_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVRoutingBlockOperation)initWithBlock:(id)a3
{
  if (!a3)
  {
    v6 = self;
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "block != nil"), 0}];
    objc_exception_throw(v12);
  }

  [(AVRoutingBlockOperation *)self initWithBlock:a3, &v14];
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRoutingBlockOperation;
  [(AVRoutingOperation *)&v3 dealloc];
}

- (void)start
{
  if ([(AVRoutingOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = (*(self->_block + 2))();
    if (v3 == 4)
    {
      [(AVRoutingOperation *)self markAsFailedWithError:0];
    }

    else if (v3 == 2)
    {
      [(AVRoutingOperation *)self markAsCompleted];
    }

    else
    {
      [(AVRoutingOperation *)self markAsCancelled];
    }
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = AVRoutingBlockOperation;
  [(AVRoutingBlockOperation *)&v2 cancel];
}

- (objc_super)initWithBlock:(void *)a3 .cold.1(void *a1, objc_super *a2, void *a3, objc_super **a4)
{
  a2->receiver = a1;
  a2->super_class = AVRoutingBlockOperation;
  result = [(objc_super *)a2 init];
  *a4 = result;
  if (result)
  {
    v7 = result;
    result = [a3 copy];
    v7[17].receiver = result;
  }

  return result;
}

@end