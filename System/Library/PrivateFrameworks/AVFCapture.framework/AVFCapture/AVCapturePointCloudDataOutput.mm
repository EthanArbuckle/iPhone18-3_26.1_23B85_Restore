@interface AVCapturePointCloudDataOutput
- (AVCapturePointCloudDataOutput)init;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_updateLocalQueue:(localQueueOpaque *)queue;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setAlwaysDiscardsLatePointCloudData:(BOOL)data;
- (void)setDelegate:(id)delegate callbackQueue:(id)queue;
- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue;
@end

@implementation AVCapturePointCloudDataOutput

- (AVCapturePointCloudDataOutput)init
{
  v4.receiver = self;
  v4.super_class = AVCapturePointCloudDataOutput;
  initSubclass = [(AVCaptureOutput *)&v4 initSubclass];
  if (initSubclass)
  {
    initSubclass->_delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.pointclouddataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
    initSubclass->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    initSubclass->_alwaysDiscardsLatePointCloudData = 1;
  }

  return initSubclass;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate callbackQueue:(id)queue
{
  IsRunningInMediaserverd = AVCaptureIsRunningInMediaserverd();
  if (queue && IsRunningInMediaserverd)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
  }

  else
  {
    [(AVCapturePointCloudDataOutput *)self willChangeValueForKey:@"delegate"];
    v11 = 0;
    if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setClientDelegate:delegate clientCallbackQueue:queue exceptionReason:&v11])
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

- (void)setAlwaysDiscardsLatePointCloudData:(BOOL)data
{
  if (self->_alwaysDiscardsLatePointCloudData != data)
  {
    self->_alwaysDiscardsLatePointCloudData = data;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  if (![objc_msgSend(connection "mediaType")])
  {
    v7 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v7 = 2;
LABEL_5:
    v8 = AVCaptureOutputConnectionFailureReasonString(v7, self, connection);
    result = 0;
    *reason = v8;
    return result;
  }

  return 1;
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session flags:0];
  v7.receiver = self;
  v7.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:pdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session];
  v6.receiver = self;
  v6.super_class = AVCapturePointCloudDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    queueCopy = 0;
  }

  else
  {
    queueCopy = queue;
  }

  v9 = 0;
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setDelegateOverride:override delegateOverrideCallbackQueue:queueCopy exceptionReason:&v9])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCapturePointCloudDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCapturePointCloudDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue
{
  v5 = self->_weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", queue, [MessageReceiver copy]);
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

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation
{
  if (operation->var0 == 3)
  {
    [(AVCapturePointCloudDataOutput *)self _processSampleBuffer:operation->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)queue
{
  v5 = self->_weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVCapturePointCloudDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_delegateCallbackHelper, "updateLocalQueue:handler:", queue, [v6 copy]);
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

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message
{
  if (message->var0 == 3)
  {
    [(AVCapturePointCloudDataOutput *)self _processSampleBuffer:*(&message->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  activeDelegate = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper activeDelegate];
  firstObject = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([firstObject isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(buffer);
    if (DataBuffer)
    {
      v8 = CMGetAttachment(DataBuffer, *MEMORY[0x1E695FF60], 0);
    }

    else
    {
      v8 = 0;
    }

    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, buffer);
    v9 = [[AVPointCloudData alloc] initWithDataBuffer:v8];
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = v12;
        [activeDelegate pointCloudDataOutput:self didOutputPointCloudData:v9 timestamp:&v11 connection:firstObject];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:buffer];
      v11 = v12;
      [activeDelegate pointCloudDataOutput:self didDropPointCloudData:v9 timestamp:&v11 connection:firstObject reason:v10];
    }
  }
}

@end