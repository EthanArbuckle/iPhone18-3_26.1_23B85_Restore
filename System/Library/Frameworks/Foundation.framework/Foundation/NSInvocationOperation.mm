@interface NSInvocationOperation
- (NSInvocation)invocation;
- (NSInvocationOperation)initWithInvocation:(NSInvocation *)inv;
- (NSInvocationOperation)initWithTarget:(id)target selector:(SEL)sel object:(id)arg;
- (id)result;
- (void)dealloc;
@end

@implementation NSInvocationOperation

- (NSInvocationOperation)initWithTarget:(id)target selector:(SEL)sel object:(id)arg
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = arg;
  v9 = [target methodSignatureForSelector:sel];
  if (!v9)
  {
    v18.receiver = self;
    v18.super_class = NSInvocationOperation;
    [(NSOperation *)&v18 init];
LABEL_10:

    return 0;
  }

  v10 = v9;
  v11 = [v9 numberOfArguments];
  v12 = v11;
  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v11 >= 4)
    {
      v15 = _NSMethodExceptionProem(self, a2);
      v16 = NSStringFromSelector(sel);
      NSLog(@"%@: method '%@' requires more than 1 argument", v15, v16);
    }

    v17.receiver = self;
    v17.super_class = NSInvocationOperation;
    [(NSOperation *)&v17 init];
    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
  [v13 setTarget:target];
  [v13 setSelector:sel];
  if (v12 >= 3)
  {
    [v13 setArgument:v19 atIndex:2];
  }

  return [(NSInvocationOperation *)self initWithInvocation:v13];
}

- (NSInvocationOperation)initWithInvocation:(NSInvocation *)inv
{
  v9 = *MEMORY[0x1E69E9840];
  if (inv)
  {
    v7.receiver = self;
    v7.super_class = NSInvocationOperation;
    v5 = [(NSOperation *)&v7 init];
    [(NSInvocation *)inv retainArguments];
    v5->_inv = inv;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSInvocationOperation;
    [(NSOperation *)&v8 init];

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSInvocationOperation;
  [(NSOperation *)&v3 dealloc];
}

- (NSInvocation)invocation
{
  v2 = self->_inv;

  return v2;
}

- (id)result
{
  v22[1] = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  v4 = [(NSOperation *)self isFinished];
  result = 0;
  if (!v4)
  {
    return result;
  }

  if ([(NSOperation *)self isCancelled])
  {
    v20 = [NSString stringWithFormat:@"%@: operation was cancelled", _NSMethodExceptionProem(self, a2)];
    v18 = MEMORY[0x1E695DF30];
    v19 = @"NSInvocationOperationCancelledException";
LABEL_14:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  os_unfair_lock_lock(&self->super._iop.__lock);
  exception = self->_exception;
  if (exception)
  {
    v21 = exception;
    iop_unlock(&self->super._iop);
    objc_exception_throw(v21);
  }

  inv = self->_inv;
  if (!inv || ![(NSMethodSignature *)[(NSInvocation *)inv methodSignature] methodReturnLength])
  {
    v17 = [NSString stringWithFormat:@"%@: operation had void result", _NSMethodExceptionProem(self, a2)];
    iop_unlock(&self->super._iop);
    v18 = MEMORY[0x1E695DF30];
    v19 = @"NSInvocationOperationVoidResultException";
    v20 = v17;
    goto LABEL_14;
  }

  v8 = [(NSInvocation *)self->_inv methodSignature];
  v9 = [(NSMethodSignature *)v8 methodReturnType];
  v10 = strspn(v9, "norNORV+0123456789");
  v11 = v9[v10];
  if (v11 == 64 || v11 == 35)
  {
    [(NSInvocation *)self->_inv getReturnValue:v22];
  }

  else
  {
    v12 = v10;
    v13 = [(NSMethodSignature *)v8 methodReturnLength];
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = v22 - v15;
    [(NSInvocation *)self->_inv getReturnValue:v22 - v15, v14];
    v22[0] = [NSValue valueWithBytes:v16 objCType:&v9[v12]];
  }

  os_unfair_lock_unlock(&self->super._iop.__lock);
  return v22[0];
}

@end