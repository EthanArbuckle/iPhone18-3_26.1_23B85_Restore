@interface AVFigAssetWriterFinishWritingAsyncOperation
- (AVFigAssetWriterFinishWritingAsyncOperation)init;
- (AVFigAssetWriterFinishWritingAsyncOperation)initWithFigAssetWriter:(OpaqueFigAssetWriter *)a3;
- (void)cancel;
- (void)dealloc;
- (void)didEnterTerminalState;
- (void)didReceiveFigAssetWriterNotificationWithSuccess:(BOOL)a3 error:(id)a4;
- (void)start;
@end

@implementation AVFigAssetWriterFinishWritingAsyncOperation

- (AVFigAssetWriterFinishWritingAsyncOperation)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigAssetWriter_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVFigAssetWriterFinishWritingAsyncOperation)initWithFigAssetWriter:(OpaqueFigAssetWriter *)a3
{
  if (!a3)
  {
    v6 = self;
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "figAssetWriter != NULL"), 0}];
    objc_exception_throw(v12);
  }

  [(AVFigAssetWriterFinishWritingAsyncOperation *)self initWithFigAssetWriter:a3, &v14];
  return v14;
}

- (void)dealloc
{
  figAssetWriter = self->_figAssetWriter;
  if (figAssetWriter)
  {
    CFRelease(figAssetWriter);
  }

  v4.receiver = self;
  v4.super_class = AVFigAssetWriterFinishWritingAsyncOperation;
  [(AVOperation *)&v4 dealloc];
}

- (void)start
{
  if (![(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    return;
  }

  [(AVAssetWriterFigAssetWriterNotificationHandler *)self->_notificationHandler setDelegate:self];
  figAssetWriter = self->_figAssetWriter;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v4)
  {
    v5 = v4(figAssetWriter);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    if (v5 == -12785)
    {

      [(AVOperation *)self markAsCancelled];
      return;
    }
  }

  else
  {
    v6 = 4294954514;
  }

  v7 = [AVAssetWriter _errorForOSStatus:v6];

  [(AVOperation *)self markAsFailedWithError:v7];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = AVFigAssetWriterFinishWritingAsyncOperation;
  [(AVFigAssetWriterFinishWritingAsyncOperation *)&v3 cancel];
  [(AVOperation *)self markAsCancelled];
}

- (void)didEnterTerminalState
{
  if (([(AVOperation *)self status]- 3) <= 1)
  {
    FigBaseObject = FigAssetWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v3 = FigBaseObject;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {

        v4(v3);
      }
    }
  }
}

- (void)didReceiveFigAssetWriterNotificationWithSuccess:(BOOL)a3 error:(id)a4
{
  if (a3)
  {
    [(AVOperation *)self markAsCompleted:a3];
  }

  else
  {
    [(AVOperation *)self markAsFailedWithError:a4];
  }
}

- (objc_super)initWithFigAssetWriter:(const void *)a3 .cold.1(void *a1, objc_super *a2, const void *a3, objc_super **a4)
{
  a2->receiver = a1;
  a2->super_class = AVFigAssetWriterFinishWritingAsyncOperation;
  result = [(objc_super *)a2 init];
  *a4 = result;
  if (result)
  {
    v7 = result;
    result[17].receiver = CFRetain(a3);
    result = [[AVAssetWriterFigAssetWriterNotificationHandler alloc] initWithFigAssetWriter:a3];
    v7[17].super_class = result;
  }

  return result;
}

@end