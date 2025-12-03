@interface FPProgress
- (FPProgress)initWithOperation:(id)operation;
- (void)cancel;
@end

@implementation FPProgress

- (FPProgress)initWithOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    [(FPProgress *)a2 initWithOperation:?];
  }

  v10.receiver = self;
  v10.super_class = FPProgress;
  v7 = [(FPProgress *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_operation, operation);
  }

  return v8;
}

- (void)cancel
{
  [(NSOperation *)self->_operation cancel];
  v3.receiver = self;
  v3.super_class = FPProgress;
  [(FPProgress *)&v3 cancel];
}

- (void)initWithOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPProgress.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

@end