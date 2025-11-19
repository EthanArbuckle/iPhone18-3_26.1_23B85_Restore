@interface AVAssetWriterInputTerminalHelper
- (AVAssetWriterInputTerminalHelper)initWithConfigurationState:(id)a3 terminalStatus:(int64_t)a4;
- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)a3;
- (BOOL)isReadyForMoreMediaData;
- (BOOL)mediaDataRequesterShouldRequestMediaData;
- (void)markCurrentPassAsFinished;
- (void)requestMediaDataOnceIfNecessaryWithMediaDataRequester:(id)a3;
- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4;
- (void)stopRequestingMediaData;
@end

@implementation AVAssetWriterInputTerminalHelper

- (AVAssetWriterInputTerminalHelper)initWithConfigurationState:(id)a3 terminalStatus:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = AVAssetWriterInputTerminalHelper;
  result = [(AVAssetWriterInputHelper *)&v13 initWithConfigurationState:a3];
  if ((a4 - 2) >= 3)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(result userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "(terminalStatus == AVAssetWriterStatusCompleted) || (terminalStatus == AVAssetWriterStatusCancelled) || (terminalStatus == AVAssetWriterStatusFailed)"), 0}];
    objc_exception_throw(v12);
  }

  if (result)
  {
    result->_terminalStatus = a4;
  }

  return result;
}

- (BOOL)isReadyForMoreMediaData
{
  if ([(AVAssetWriterInputTerminalHelper *)self status]== 3)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputTerminalHelper;
  return [(AVAssetWriterInputHelper *)&v4 isReadyForMoreMediaData];
}

- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4
{
  if ([(AVAssetWriterInputTerminalHelper *)self status]!= 3)
  {
    v28.receiver = self;
    v28.super_class = AVAssetWriterInputTerminalHelper;
    [(AVAssetWriterInputHelper *)&v28 requestMediaDataWhenReadyOnQueue:a3 usingBlock:a4];
    return;
  }

  if (self->_didRequestMediaDataOnce)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = objc_opt_class();
    v21 = AVMethodExceptionReasonWithClassAndSelector(v15, a2, @"cannot be called more than once.", v16, v17, v18, v19, v20, v27);
    v22 = v13;
    v23 = v14;
    goto LABEL_13;
  }

  self->_didRequestMediaDataOnce = 1;
  if (!a3)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = "queue != NULL";
LABEL_12:
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, v26);
    v22 = v24;
    v23 = v25;
LABEL_13:
    objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
  }

  if (!a4)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = "block != nil";
    goto LABEL_12;
  }

  dispatch_async(a3, a4);
}

- (void)stopRequestingMediaData
{
  v2.receiver = self;
  v2.super_class = AVAssetWriterInputTerminalHelper;
  [(AVAssetWriterInputHelper *)&v2 stopRequestingMediaData];
}

- (BOOL)mediaDataRequesterShouldRequestMediaData
{
  v3 = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];
  v4 = [(AVAssetWriterInputTerminalHelper *)self status];
  result = 0;
  if (v4 == 3 && v3)
  {
    if ([v3 numberOfAppendFailures])
    {
      return 0;
    }

    else
    {
      return [v3 _markAsFinishedCalled] ^ 1;
    }
  }

  return result;
}

- (void)requestMediaDataOnceIfNecessaryWithMediaDataRequester:(id)a3
{
  v5 = [a3 requestQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__AVAssetWriterInputTerminalHelper_requestMediaDataOnceIfNecessaryWithMediaDataRequester___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(v5, v6);
}

uint64_t __90__AVAssetWriterInputTerminalHelper_requestMediaDataOnceIfNecessaryWithMediaDataRequester___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) requestMediaDataIfNecessary];
  v2 = *(a1 + 32);

  return [v2 setDelegate:0];
}

- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)a3
{
  v4 = [(AVAssetWriterInputTerminalHelper *)self status];
  if (a3 && v4 != 3)
  {
    *a3 = @"cannot be called after canceling or finishing writing";
  }

  return v4 == 3;
}

- (void)markCurrentPassAsFinished
{
  if ([(AVAssetWriterInputTerminalHelper *)self status]== 2)
  {
    v3.receiver = self;
    v3.super_class = AVAssetWriterInputTerminalHelper;
    [(AVAssetWriterInputHelper *)&v3 markCurrentPassAsFinished];
  }
}

@end