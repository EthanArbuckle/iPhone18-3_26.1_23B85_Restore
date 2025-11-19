@interface AVCaptureAudioDataOutput
- (AVCaptureAudioDataOutput)init;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (NSDictionary)recommendedAudioSettingsForAssetWriterWithOutputFileType:(AVFileType)outputFileType;
- (id)supportedAssetWriterOutputFileTypes;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3;
- (void)_handleSampleBufferEventForSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_updateLocalQueue:(localQueueOpaque *)a3;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4;
- (void)setSampleBufferDelegate:(id)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue;
- (void)setSpatialAudioChannelLayoutTag:(unsigned int)a3;
@end

@implementation AVCaptureAudioDataOutput

- (AVCaptureAudioDataOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureAudioDataOutput;
  v2 = [(AVCaptureOutput *)&v5 initSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureAudioDataOutputInternal);
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
  v3.super_class = AVCaptureAudioDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setSampleBufferDelegate:(id)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    sampleBufferCallbackQueue = 0;
  }

  [(AVCaptureAudioDataOutput *)self willChangeValueForKey:@"sampleBufferDelegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:sampleBufferDelegate clientCallbackQueue:sampleBufferCallbackQueue exceptionReason:&v8])
  {
    [(AVCaptureAudioDataOutput *)self didChangeValueForKey:@"sampleBufferDelegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)setSpatialAudioChannelLayoutTag:(unsigned int)a3
{
  if ([&unk_1F1CEA590 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")}])
  {
    internal = self->_internal;
    if (internal->spatialAudioChannelLayoutTag != a3)
    {
      internal->spatialAudioChannelLayoutTag = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (id)supportedAssetWriterOutputFileTypes
{
  v2 = *MEMORY[0x1E69874B8];
  v8[0] = *MEMORY[0x1E69874C0];
  v8[1] = v2;
  v3 = *MEMORY[0x1E6987480];
  v8[2] = *MEMORY[0x1E6987448];
  v8[3] = v3;
  v4 = *MEMORY[0x1E6987488];
  v8[4] = *MEMORY[0x1E6987478];
  v8[5] = v4;
  v5 = *MEMORY[0x1E6987460];
  v8[6] = *MEMORY[0x1E69874D0];
  v8[7] = v5;
  v6 = *MEMORY[0x1E6987468];
  v8[8] = *MEMORY[0x1E6987458];
  v8[9] = v6;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:10];
}

- (NSDictionary)recommendedAudioSettingsForAssetWriterWithOutputFileType:(AVFileType)outputFileType
{
  v5 = [(AVCaptureAudioDataOutput *)self supportedAssetWriterOutputFileTypes];
  if ([v5 containsObject:outputFileType])
  {
    v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E69875A0]];
    if ([(AVCaptureConnection *)v6 isLive])
    {
      LODWORD(v11) = self->_internal->spatialAudioChannelLayoutTag;
      return [(AVCaptureOutput *)self recommendedOutputSettingsForConnection:v6 sourceSettings:0 videoCodecType:0 fileType:outputFileType isIris:0 outputFileURL:0 spatialAudioChannelLayoutTag:v11];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid file type UTI - available file types are: %@", v5];
    v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }

  return 0;
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  v7 = [a3 mediaType];
  if (![v7 isEqualToString:*MEMORY[0x1E69875A0]])
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

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:ado_notificationHandler name:*MEMORY[0x1E698FE48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:ado_notificationHandler name:*MEMORY[0x1E698FE40] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureAudioDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ado_notificationHandler name:*MEMORY[0x1E698FE48] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:ado_notificationHandler name:*MEMORY[0x1E698FE40] object:a3];
  v6.receiver = self;
  v6.super_class = AVCaptureAudioDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:a3];
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureAudioDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureAudioDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3
{
  v5 = self->_internal->weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", a3, [MessageReceiver copy]);
}

void __47__AVCaptureAudioDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [*(v7[2] + 8) releaseRemoteQueueReceiver];
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
    [(AVCaptureAudioDataOutput *)self _handleSampleBufferEventForSampleBuffer:a3->var4.var4.var0];
  }

  else if (a3->var0 == 5)
  {
    [(AVCaptureAudioDataOutput *)self _handleConfigurationLiveEventForID:a3->var4.var4.var0 updatedFormatDescription:a3->var4.var2.var1];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)a3
{
  v5 = self->_internal->weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVCaptureAudioDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", a3, [v6 copy]);
}

void __46__AVCaptureAudioDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
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
    [(AVCaptureAudioDataOutput *)self _handleSampleBufferEventForSampleBuffer:*(&a3->var0 + 1)];
  }

  else if (a3->var0 == 5)
  {
    [(AVCaptureAudioDataOutput *)self _handleConfigurationLiveEventForID:*(&a3->var0 + 1) updatedFormatDescription:*(&a3->var1.var1.var0 + 4)];
  }
}

- (void)_handleSampleBufferEventForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeDelegate];
  v6 = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([v6 isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 captureOutput:self didOutputSampleBuffer:a3 fromConnection:v6];
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

@end