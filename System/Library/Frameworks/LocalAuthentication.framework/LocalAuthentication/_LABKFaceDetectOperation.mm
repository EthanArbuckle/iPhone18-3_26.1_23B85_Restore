@interface _LABKFaceDetectOperation
- (BKFaceDetectOperationDelegate)delegate;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
@end

@implementation _LABKFaceDetectOperation

- (BKFaceDetectOperationDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _LABKFaceDetectOperation;
  delegate = [(_LABKOperation *)&v4 delegate];

  return delegate;
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  changedCopy = changed;
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %@", operationCopy, changedCopy];

  delegate = [(_LABKFaceDetectOperation *)self delegate];
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    delegate2 = [(_LABKFaceDetectOperation *)self delegate];
    [delegate2 operation:self faceDetectStateChanged:changedCopy];
  }
}

@end