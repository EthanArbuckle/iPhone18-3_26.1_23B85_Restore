@interface _LABKMatchOperation
- (BKMatchOperationDelegate)delegate;
- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason;
- (void)matchOperation:(id)operation matchedWithResult:(id)result;
- (void)matchOperation:(id)operation presenceDetectedInLockout:(int64_t)lockout;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _LABKMatchOperation

- (BKMatchOperationDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _LABKMatchOperation;
  delegate = [(_LABKOperation *)&v4 delegate];

  return delegate;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = NSStringFromSelector(sel_biometricMethodResult);
  v14 = [pathCopy isEqualToString:v13];

  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70___LABKMatchOperation_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v16[3] = &unk_1E77CC490;
    v16[4] = self;
    [(_LABKOperation *)self dispatchDelegateSelector:sel_matchOperation_matchedWithResult_ block:v16];
  }

  v15.receiver = self;
  v15.super_class = _LABKMatchOperation;
  [(_LABKOperation *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
}

- (void)matchOperation:(id)operation matchedWithResult:(id)result
{
  resultCopy = result;
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", operationCopy, resultCopy];

  delegate = [(_LABKMatchOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    delegate2 = [(_LABKMatchOperation *)self delegate];
    [delegate2 matchOperation:self matchedWithResult:resultCopy];
  }
}

- (void)matchOperation:(id)operation presenceDetectedInLockout:(int64_t)lockout
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, lockout];

  delegate = [(_LABKMatchOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKMatchOperation *)self delegate];
    [delegate2 matchOperation:self presenceDetectedInLockout:lockout];
  }
}

- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, reason];

  delegate = [(_LABKMatchOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKMatchOperation *)self delegate];
    [delegate2 matchOperation:self failedWithReason:reason];
  }
}

@end