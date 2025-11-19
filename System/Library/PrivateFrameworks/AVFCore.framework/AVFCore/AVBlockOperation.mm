@interface AVBlockOperation
- (AVBlockOperation)init;
- (AVBlockOperation)initWithBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation AVBlockOperation

- (AVBlockOperation)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithBlock_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVBlockOperation)initWithBlock:(id)a3
{
  if (!a3)
  {
    v6 = self;
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "block != nil"), 0}];
    objc_exception_throw(v12);
  }

  [(AVBlockOperation *)self initWithBlock:a3, &v14];
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVBlockOperation;
  [(AVOperation *)&v3 dealloc];
}

- (void)start
{
  if ([(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = (*(self->_block + 2))();
    if (v3 == 4)
    {
      [(AVOperation *)self markAsFailedWithError:0];
    }

    else if (v3 == 2)
    {
      [(AVOperation *)self markAsCompleted];
    }

    else
    {
      [(AVOperation *)self markAsCancelled];
    }
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = AVBlockOperation;
  [(AVBlockOperation *)&v2 cancel];
}

@end