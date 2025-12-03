@interface AVCaptureDepthDataOutput
- (AVCaptureDepthDataOutput)init;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (id)addConnection:(id)connection error:(id *)error;
- (id)companionSettingsVideoDataOutput;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_updateLocalQueue:(localQueueOpaque *)queue;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeConnection:(id)connection;
- (void)setAlwaysDiscardsLateDepthData:(BOOL)alwaysDiscardsLateDepthData;
- (void)setDelegate:(id)delegate callbackQueue:(dispatch_queue_t)callbackQueue;
- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue;
- (void)setFilteringEnabled:(BOOL)filteringEnabled;
@end

@implementation AVCaptureDepthDataOutput

- (AVCaptureDepthDataOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureDepthDataOutput;
  initSubclass = [(AVCaptureOutput *)&v5 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureDepthDataOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
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

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  mediaType = [connection mediaType];
  if (![mediaType isEqualToString:*MEMORY[0x1E69875C0]])
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, connection);
    result = 0;
    *reason = v9;
    return result;
  }

  return 1;
}

- (id)addConnection:(id)connection error:(id *)error
{
  [connection addObserver:self forKeyPath:@"videoMirrored" options:3 context:AVCaptureOutputVideoMirroredChangedContext];
  [connection addObserver:self forKeyPath:@"videoOrientation" options:3 context:AVCaptureOutputVideoOrientationChangedContext];
  [connection addObserver:self forKeyPath:@"active" options:3 context:AVCaptureOutputActiveChangedContext];
  v8.receiver = self;
  v8.super_class = AVCaptureDepthDataOutput;
  return [(AVCaptureOutput *)&v8 addConnection:connection error:error];
}

- (void)removeConnection:(id)connection
{
  [connection removeObserver:self forKeyPath:@"videoMirrored" context:AVCaptureOutputVideoMirroredChangedContext];
  [connection removeObserver:self forKeyPath:@"videoOrientation" context:AVCaptureOutputVideoOrientationChangedContext];
  [connection removeObserver:self forKeyPath:@"active" context:AVCaptureOutputActiveChangedContext];
  v5.receiver = self;
  v5.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v5 removeConnection:connection];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE48] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE40] object:session flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE48] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ddo_notificationHandler name:*MEMORY[0x1E698FE40] object:session];
  v6.receiver = self;
  v6.super_class = AVCaptureDepthDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVCaptureOutputVideoMirroredChangedContext == context || AVCaptureOutputVideoOrientationChangedContext == context)
  {
    goto LABEL_6;
  }

  if (AVCaptureOutputActiveChangedContext != context)
  {
    return;
  }

  v9 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}];
  v10 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
  if (v9 == v10)
  {
    return;
  }

  if (v10)
  {
LABEL_6:
    v11 = [objc_msgSend(object "sourceDevice")];
    v12 = [objc_msgSend(object "sourceDevice")];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:v11 aspectRatio:v12];
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureDepthDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureDepthDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue
{
  v5 = self->_internal->weakReference;
  objc_initWeak(&location, [(AVCaptureOutput *)self session]);
  objc_copyWeak(&v7, &location);
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", queue, [MessageReceiver copy]);

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

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation
{
  if (operation->var0 == 3)
  {
    [(AVCaptureDepthDataOutput *)self _processSampleBuffer:operation->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)queue
{
  v5 = self->_internal->weakReference;
  objc_initWeak(&location, [(AVCaptureOutput *)self session]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVCaptureDepthDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786EEA8;
  v6[4] = v5;
  objc_copyWeak(&v7, &location);
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", queue, [v6 copy]);

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

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message
{
  if (message->var0 == 3)
  {
    [(AVCaptureDepthDataOutput *)self _processSampleBuffer:*(&message->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  activeDelegate = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeDelegate];
  firstObject = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([firstObject isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    v8 = CMGetAttachment(buffer, *MEMORY[0x1E69914F0], 0);
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, buffer);
    v9 = [[AVDepthData alloc] initWithPixelBuffer:ImageBuffer depthMetadataDictionary:v8];
    if (ImageBuffer)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = v12;
        [activeDelegate depthDataOutput:self didOutputDepthData:v9 timestamp:&v11 connection:firstObject];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:buffer];
      v11 = v12;
      [activeDelegate depthDataOutput:self didDropDepthData:v9 timestamp:&v11 connection:firstObject reason:v10];
    }
  }
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
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setDelegateOverride:override delegateOverrideCallbackQueue:queueCopy exceptionReason:&v9])
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