@interface AVCaptureCameraCalibrationDataOutput
- (AVCaptureCameraCalibrationDataOutput)init;
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
- (void)setAlwaysDiscardsLateCameraCalibrationData:(BOOL)a3;
- (void)setDelegate:(id)a3 callbackQueue:(id)a4;
- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4;
@end

@implementation AVCaptureCameraCalibrationDataOutput

- (AVCaptureCameraCalibrationDataOutput)init
{
  v4.receiver = self;
  v4.super_class = AVCaptureCameraCalibrationDataOutput;
  v2 = [(AVCaptureOutput *)&v4 initSubclass];
  if (v2)
  {
    v2->_delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.cameracalibrationdataoutput.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:0];
    v2->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
    v2->_alwaysDiscardsLateCameraCalibrationData = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureCameraCalibrationDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setDelegate:(id)a3 callbackQueue:(id)a4
{
  IsRunningInMediaserverd = AVCaptureIsRunningInMediaserverd();
  if (a4 && IsRunningInMediaserverd)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else
  {
    [(AVCaptureCameraCalibrationDataOutput *)self willChangeValueForKey:@"delegate"];
    v10 = 0;
    if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setClientDelegate:a3 clientCallbackQueue:a4 exceptionReason:&v10])
    {
      [(AVCaptureCameraCalibrationDataOutput *)self didChangeValueForKey:@"delegate"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      [(AVCaptureCameraCalibrationDataOutput *)self didChangeValueForKey:@"delegate"];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v9);
      }

      NSLog(&cfstr_SuppressingExc.isa, v9);
    }
  }
}

- (void)setAlwaysDiscardsLateCameraCalibrationData:(BOOL)a3
{
  if (self->_alwaysDiscardsLateCameraCalibrationData != a3)
  {
    self->_alwaysDiscardsLateCameraCalibrationData = a3;
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
  [v5 addListenerWithWeakReference:weakReference callback:ccdo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:ccdo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureCameraCalibrationDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:ccdo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3];
  [v5 removeListenerWithWeakReference:self->_weakReference callback:ccdo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3];
  v6.receiver = self;
  v6.super_class = AVCaptureCameraCalibrationDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:a3];
}

- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4
{
  IsRunningInMediaserverd = AVCaptureIsRunningInMediaserverd();
  if (a4 && IsRunningInMediaserverd)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
  }

  else
  {
    v11 = 0;
    if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper setDelegateOverride:a3 delegateOverrideCallbackQueue:a4 exceptionReason:&v11])
    {
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

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureCameraCalibrationDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureCameraCalibrationDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3
{
  v5 = self->_weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", a3, [MessageReceiver copy]);
}

void __59__AVCaptureCameraCalibrationDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
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
    [(AVCaptureCameraCalibrationDataOutput *)self _processSampleBuffer:a3->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)a3
{
  v5 = self->_weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AVCaptureCameraCalibrationDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_delegateCallbackHelper, "updateLocalQueue:handler:", a3, [v6 copy]);
}

void __58__AVCaptureCameraCalibrationDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
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
    [(AVCaptureCameraCalibrationDataOutput *)self _processSampleBuffer:*(&a3->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  v6 = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_delegateCallbackHelper activeDelegate];
  if ([v5 isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(a3, *MEMORY[0x1E6990A08], 0)}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = *MEMORY[0x1E698F880];
    [objc_msgSend(v7 objectForKeyedSubscript:{*MEMORY[0x1E698F880]), "getBytes:length:", &v21, 64}];
    FigCaptureFirmwareToNVMExtrinsicMatrixTransform();
    FigCaptureTransformExtrinsicMatrix();
    DWORD2(v21) = v9;
    DWORD2(v22) = v10;
    *&v21 = v11;
    *&v22 = v12;
    DWORD2(v23) = v13;
    DWORD2(v24) = v14;
    *&v23 = v15;
    *&v24 = v16;
    [v7 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v21, 64), v8}];
    v17 = [[AVCameraCalibrationData alloc] initWithDepthMetadataDictionary:v7];
    memset(&v20, 0, sizeof(v20));
    CMSampleBufferGetPresentationTimeStamp(&v20, a3);
    if (v17)
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = v20;
        [v6 cameraCalibrationDataOutput:self didOutputCameraCalibrationData:v17 timestamp:&v19 connection:v5];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v18 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:a3];
      v19 = v20;
      [v6 cameraCalibrationDataOutput:self didDropCameraCalibrationDataAtTimestamp:&v19 connection:v5 reason:v18];
    }
  }
}

@end