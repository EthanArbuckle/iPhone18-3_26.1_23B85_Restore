@interface _LABKMatchPearlOperation
- (BKMatchPearlOperationDelegate)delegate;
- (void)matchOperation:(id)a3 providedFaceOcclusionInfo:(id)a4;
- (void)matchOperation:(id)a3 providedFaceWUPoseEligibilityInfo:(id)a4;
- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4;
- (void)matchOperation:(id)a3 requestedPasscodeShortcutWithReason:(unint64_t)a4;
@end

@implementation _LABKMatchPearlOperation

- (BKMatchPearlOperationDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _LABKMatchPearlOperation;
  v2 = [(_LABKMatchOperation *)&v4 delegate];

  return v2;
}

- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4
{
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", v7, a4];

  v8 = [(_LABKMatchPearlOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_LABKMatchPearlOperation *)self delegate];
    [v10 matchOperation:self providedFeedback:a4];
  }
}

- (void)matchOperation:(id)a3 providedFaceOcclusionInfo:(id)a4
{
  v10 = a4;
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", v7, v10];

  v8 = [(_LABKMatchPearlOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    v9 = [(_LABKMatchPearlOperation *)self delegate];
    [v9 matchOperation:self providedFaceOcclusionInfo:v10];
  }
}

- (void)matchOperation:(id)a3 providedFaceWUPoseEligibilityInfo:(id)a4
{
  v10 = a4;
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", v7, v10];

  v8 = [(_LABKMatchPearlOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    v9 = [(_LABKMatchPearlOperation *)self delegate];
    [v9 matchOperation:self providedFaceWUPoseEligibilityInfo:v10];
  }
}

- (void)matchOperation:(id)a3 requestedPasscodeShortcutWithReason:(unint64_t)a4
{
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", v7, a4];

  v8 = [(_LABKMatchPearlOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_LABKMatchPearlOperation *)self delegate];
    [v10 matchOperation:self requestedPasscodeShortcutWithReason:a4];
  }
}

@end