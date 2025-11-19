@interface AVCaptureDepthDataOutput
- (AVCaptureDepthDataOutput)init;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (id)addConnection:(id)a3 error:(id *)a4;
- (id)companionSettingsVideoDataOutput;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_updateLocalQueue:(localQueueOpaque *)a3;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeConnection:(id)a3;
- (void)setAlwaysDiscardsLateDepthData:(BOOL)alwaysDiscardsLateDepthData;
- (void)setDelegate:(id)delegate callbackQueue:(dispatch_queue_t)callbackQueue;
- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4;
- (void)setFilteringEnabled:(BOOL)filteringEnabled;
@end

@implementation AVCaptureDepthDataOutput

- (AVCaptureDepthDataOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureDepthDataOutput;
  v2 = [(AVCaptureOutput *)&v5 initSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureDepthDataOutputInternal);
    v2->_internal = v3;
    if (v3)
    {
      v2->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate callbackQueue:(dispatch_queue_t)callbackQueue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    callbackQueue = 0;
  }

  [(AVCaptureDepthDataOutput *)self willChangeValueForKey:@"delegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:delegate clientCallbackQueue:callbackQueue exceptionReason:&v8])
  {
    [(AVCaptureDepthDataOutput *)self didChangeValueForKey:@"delegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureDepthDataOutput *)self didChangeValueForKey:@"delegate"];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)setAlwaysDiscardsLateDepthData:(BOOL)alwaysDiscardsLateDepthData
{
  internal = self->_internal;
  if (internal->alwaysDiscardsLateDepthData != alwaysDiscardsLateDepthData)
  {
    internal->alwaysDiscardsLateDepthData = alwaysDiscardsLateDepthData;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setFilteringEnabled:(BOOL)filteringEnabled
{
  internal = self->_internal;
  if (internal->filteringEnabled != filteringEnabled)
  {
    internal->filteringEnabled = filteringEnabled;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  v7 = [a3 mediaType];
  if (![v7 isEqualToString:*MEMORY[0x1E69875C0]])
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, a3);
    result = 0;
    *a4 = v9;
    return result;
  }

  return 1;
}

- (id)addConnection:(id)a3 error:(id *)a4
{
  [a3 addObserver:self forKeyPath:@"videoMirrored" options:3 context:AVCaptureOutputVideoMirroredChangedContext];
  [a3 addObserver:self forKeyPath:@"videoOrientation" options:3 context:AVCaptureOutputVideoOrientationChangedContext];
  [a3 addObserver:self forKeyPath:@"active" options:3 context:AVCaptureOutputActiveChangedContext];
  v8.receiver = self;
  v8.super_class = AVCaptureDepthDataOutput;
  return [(AVCaptureOutput *)&v8 addConnection:a3 error:a4];
}

- (void)removeConnection:(id)a3
{
  [a3 removeObserver:self forKeyPath:@"videoMirrored" context:AVCaptureOutputVideoMirroredChangedContext];
  [a3 removeObserver:self forKeyPath:@"videoOrientation" context:AVCaptureOutputVideoOrientationChangedContext];
  [a3 removeObserver:self forKeyPath:@"active" context:AVCaptureOutputActiveChangedContext];
  v5.receiver = self;
  v5.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v5 removeConnection:a3];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3];
  v6.receiver = self;
  v6.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:a3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureOutputVideoMirroredChangedContext == a6 || AVCaptureOutputVideoOrientationChangedContext == a6)
  {
    goto LABEL_6;
  }

  if (AVCaptureOutputActiveChangedContext != a6)
  {
    return;
  }

  v9 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}];
  v10 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
  if (v9 == v10)
  {
    return;
  }

  if (v10)
  {
LABEL_6:
    v11 = [objc_msgSend(a4 "sourceDevice")];
    v12 = [objc_msgSend(a4 "sourceDevice")];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:v11 aspectRatio:v12];
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureDepthDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureDepthDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3
{
  v5 = self->_internal->weakReference;
  objc_initWeak(&location, [(AVCaptureOutput *)self session]);
  objc_copyWeak(&v7, &location);
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", a3, [MessageReceiver copy]);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__AVCaptureDepthDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [*(*(v7 + 2) + 8) releaseRemoteQueueReceiver];
    }

    else if (!a2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      if (WeakRetained)
      {
        v10 = WeakRetained;
        [v8 _handleRemoteQueueOperation:a3];
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCaptureDepthDataOutput *)self _processSampleBuffer:a3->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)a3
{
  v5 = self->_internal->weakReference;
  objc_initWeak(&location, [(AVCaptureOutput *)self session]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVCaptureDepthDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786EEA8;
  v6[4] = v5;
  objc_copyWeak(&v7, &location);
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", a3, [v6 copy]);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__AVCaptureDepthDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (v5)
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = *a2;
      v10 = *(a2 + 4);
      [v6 _handleLocalQueueMessage:&v9];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCaptureDepthDataOutput *)self _processSampleBuffer:*(&a3->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeDelegate];
  v6 = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([v6 isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v8 = CMGetAttachment(a3, *MEMORY[0x1E69914F0], 0);
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, a3);
    v9 = [[AVDepthData alloc] initWithPixelBuffer:ImageBuffer depthMetadataDictionary:v8];
    if (ImageBuffer)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = v12;
        [v5 depthDataOutput:self didOutputDepthData:v9 timestamp:&v11 connection:v6];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:a3];
      v11 = v12;
      [v5 depthDataOutput:self didDropDepthData:v9 timestamp:&v11 connection:v6 reason:v10];
    }
  }
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
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setDelegateOverride:a3 delegateOverrideCallbackQueue:v7 exceptionReason:&v9])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (id)companionSettingsVideoDataOutput
{
  v2 = self->_internal->companionSettingsVideoDataOutput;

  return v2;
}

@end