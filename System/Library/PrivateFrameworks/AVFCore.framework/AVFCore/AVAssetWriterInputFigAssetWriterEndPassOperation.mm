@interface AVAssetWriterInputFigAssetWriterEndPassOperation
- (AVAssetWriterInputFigAssetWriterEndPassOperation)init;
- (AVAssetWriterInputFigAssetWriterEndPassOperation)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer trackID:(int)d;
- (void)_notifyWhetherMorePassesAreNeeded:(BOOL)needed timeRanges:(id)ranges forTrackWithID:(int)d;
- (void)dealloc;
- (void)start;
@end

@implementation AVAssetWriterInputFigAssetWriterEndPassOperation

- (AVAssetWriterInputFigAssetWriterEndPassOperation)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigAssetWriter_trackID_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVAssetWriterInputFigAssetWriterEndPassOperation)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer trackID:(int)d
{
  if (writer)
  {
    if (d)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AVAssetWriterInputFigAssetWriterEndPassOperation initWithFigAssetWriter:trackID:];
    if (d)
    {
      goto LABEL_3;
    }
  }

  [AVAssetWriterInputFigAssetWriterEndPassOperation initWithFigAssetWriter:trackID:];
LABEL_3:
  v10.receiver = self;
  v10.super_class = AVAssetWriterInputFigAssetWriterEndPassOperation;
  v7 = [(AVOperation *)&v10 init];
  if (v7)
  {
    if (writer)
    {
      v8 = CFRetain(writer);
    }

    else
    {
      v8 = 0;
    }

    v7->_figAssetWriter = v8;
    v7->_trackID = d;
  }

  return v7;
}

- (void)dealloc
{
  figAssetWriter = self->_figAssetWriter;
  if (figAssetWriter)
  {
    CFRelease(figAssetWriter);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputFigAssetWriterEndPassOperation;
  [(AVOperation *)&v4 dealloc];
}

- (void)start
{
  if ([(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    figAssetWriter = self->_figAssetWriter;
    trackID = self->_trackID;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v5)
    {
      v6 = v5(figAssetWriter, trackID);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v6 = -12782;
    }

    [(AVOperation *)self markAsFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v6, 0)];
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterRemoveListener();
  }
}

- (void)_notifyWhetherMorePassesAreNeeded:(BOOL)needed timeRanges:(id)ranges forTrackWithID:(int)d
{
  if (self->_trackID == d)
  {
    v10 = v5;
    if (needed)
    {
      self->_nextPassDescription = [[AVAssetWriterInputPassDescription alloc] initWithTimeRanges:ranges];
    }

    [(AVOperation *)self markAsCompleted:v6];
    CMNotificationCenterGetDefaultLocalCenter();

    FigNotificationCenterRemoveWeakListener();
  }
}

- (uint64_t)initWithFigAssetWriter:trackID:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"figAssetWriter != NULL" object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithFigAssetWriter:trackID:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"trackID != kCMPersistentTrackID_Invalid" object:? file:? lineNumber:? description:?];
}

@end