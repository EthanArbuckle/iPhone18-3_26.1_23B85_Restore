@interface _LABKMatchPearlOperation
- (BKMatchPearlOperationDelegate)delegate;
- (void)matchOperation:(id)operation providedFaceOcclusionInfo:(id)info;
- (void)matchOperation:(id)operation providedFaceWUPoseEligibilityInfo:(id)info;
- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback;
- (void)matchOperation:(id)operation requestedPasscodeShortcutWithReason:(unint64_t)reason;
@end

@implementation _LABKMatchPearlOperation

- (BKMatchPearlOperationDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _LABKMatchPearlOperation;
  delegate = [(_LABKMatchOperation *)&v4 delegate];

  return delegate;
}

- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, feedback];

  delegate = [(_LABKMatchPearlOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKMatchPearlOperation *)self delegate];
    [delegate2 matchOperation:self providedFeedback:feedback];
  }
}

- (void)matchOperation:(id)operation providedFaceOcclusionInfo:(id)info
{
  infoCopy = info;
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", operationCopy, infoCopy];

  delegate = [(_LABKMatchPearlOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    delegate2 = [(_LABKMatchPearlOperation *)self delegate];
    [delegate2 matchOperation:self providedFaceOcclusionInfo:infoCopy];
  }
}

- (void)matchOperation:(id)operation providedFaceWUPoseEligibilityInfo:(id)info
{
  infoCopy = info;
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", operationCopy, infoCopy];

  delegate = [(_LABKMatchPearlOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    delegate2 = [(_LABKMatchPearlOperation *)self delegate];
    [delegate2 matchOperation:self providedFaceWUPoseEligibilityInfo:infoCopy];
  }
}

- (void)matchOperation:(id)operation requestedPasscodeShortcutWithReason:(unint64_t)reason
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, reason];

  delegate = [(_LABKMatchPearlOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKMatchPearlOperation *)self delegate];
    [delegate2 matchOperation:self requestedPasscodeShortcutWithReason:reason];
  }
}

@end