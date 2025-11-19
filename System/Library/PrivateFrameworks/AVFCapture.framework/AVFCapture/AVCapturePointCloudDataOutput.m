@interface AVCapturePointCloudDataOutput
- (AVCapturePointCloudDataOutput)init;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_updateLocalQueue:(localQueueOpaque *)a3;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)setAlwaysDiscardsLatePointCloudData:(BOOL)a3;
- (void)setDelegate:(id)a3 callbackQueue:(id)a4;
- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4;
@end

@implementation AVCapturePointCloudDataOutput

- (AVCapturePointCloudDataOutput)init
{
  v4.receiver = self;
  v4.super_class = AVCapturePointCloudDataOutput;
  v2 = [(AVCaptureOutput *)&v4 initSubclass];
  if (v2)
  {
    v2->_delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.pointclouddataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
    v2->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
    v2->_alwaysDiscardsLatePointCloudData = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setDelegate:(id)a3 callbackQueue:(id)a4
{
  IsRunningInMediaserverd = AVCaptureIsRunningInMediaserverd();
  if (a4 && IsRunningInMediaserverd)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
  }

  else
  {
    [(AVCapturePointCloudDataOutput *)self willChangeValueForKey:@"delegate"];
    v11 = 0;
    if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setClientDelegate:a3 clientCallbackQueue:a4 exceptionReason:&v11])
    {
      [(AVCapturePointCloudDataOutput *)self didChangeValueForKey:@"delegate"];
      return;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
  }

  v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v10);
  }

  NSLog(&cfstr_SuppressingExc.isa, v10);
}

- (void)setAlwaysDiscardsLatePointCloudData:(BOOL)a3
{
  if (self->_alwaysDiscardsLatePointCloudData != a3)
  {
    self->_alwaysDiscardsLatePointCloudData = a3;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  if (![objc_msgSend(a3 "mediaType")])
  {
    v7 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v7 = 2;
LABEL_5:
    v8 = AVCaptureOutputConnectionFailureReasonString(v7, self, a3);
    result = 0;
    *a4 = v8;
    return result;
  }

  return 1;
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3];
  v6.receiver = self;
  v6.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:a3];
}

- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v9 = 0;
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setDelegateOverride:a3 delegateOverrideCallbackQueue:v7 exceptionReason:&v9])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCapturePointCloudDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCapturePointCloudDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3
{
  v5 = self->_weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", a3, [MessageReceiver copy]);
}

void __52__AVCapturePointCloudDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [v7[2] releaseRemoteQueueReceiver];
    }

    else if (!a2)
    {
      [v7 _handleRemoteQueueOperation:a3];
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCapturePointCloudDataOutput *)self _processSampleBuffer:a3->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)a3
{
  v5 = self->_weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVCapturePointCloudDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_delegateCallbackHelper, "updateLocalQueue:handler:", a3, [v6 copy]);
}

void __51__AVCapturePointCloudDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    v8 = *(a2 + 4);
    [v5 _handleLocalQueueMessage:&v7];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCapturePointCloudDataOutput *)self _processSampleBuffer:*(&a3->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper activeDelegate];
  v6 = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([v6 isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    if (DataBuffer)
    {
      v8 = CMGetAttachment(DataBuffer, *MEMORY[0x1E695FF60], 0);
    }

    else
    {
      v8 = 0;
    }

    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, a3);
    v9 = [[AVPointCloudData alloc] initWithDataBuffer:v8];
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = v12;
        [v5 pointCloudDataOutput:self didOutputPointCloudData:v9 timestamp:&v11 connection:v6];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:a3];
      v11 = v12;
      [v5 pointCloudDataOutput:self didDropPointCloudData:v9 timestamp:&v11 connection:v6 reason:v10];
    }
  }
}

@end