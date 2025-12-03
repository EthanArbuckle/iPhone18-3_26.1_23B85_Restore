@interface AXMAVCaptureSessionNode
- (AVCaptureSession)captureSession;
- (AXMAVCaptureSessionNodeDelegate)captureSessionNodeDelegate;
- (AXMAVCaptureSessionNodeFrameDelegate)frameDelegate;
- (AXMCaptureVideoDataOutput)axVideoDataOutput;
- (void)addVideoDataOutputWithAVCaptureSession:(id)session queue:(id)queue;
- (void)autoTriggerVideoFrameEventsWithAVCaptureSession:(id)session options:(id)options delegate:(id)delegate;
- (void)beginFrameEventsWithAVCaptureSession:(id)session delegate:(id)delegate queue:(id)queue;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureSessionNode:(id)node didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)endAutoTriggerOfVideoFrameEvents;
- (void)endVideoFrameEvents;
- (void)nodeInitialize;
- (void)setShouldProcessRemotely:(BOOL)remotely;
- (void)triggerWithSampleBuffer:(opaqueCMSampleBuffer *)buffer interfaceOrientation:(int64_t)orientation mirrored:(BOOL)mirrored options:(id)options userContext:(id)context;
@end

@implementation AXMAVCaptureSessionNode

- (void)setShouldProcessRemotely:(BOOL)remotely
{
  if (remotely)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];

    [v5 raise:v6 format:@"AXMAVCaptureSessionNode does not support remote triggering"];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = AXMAVCaptureSessionNode;
    [(AXMSourceNode *)&v7 setShouldProcessRemotely:?];
  }
}

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMAVCaptureSessionNode;
  [(AXMSourceNode *)&v2 nodeInitialize];
}

- (void)autoTriggerVideoFrameEventsWithAVCaptureSession:(id)session options:(id)options delegate:(id)delegate
{
  sessionCopy = session;
  optionsCopy = options;
  delegateCopy = delegate;
  if (!self->_autotrigger_queue)
  {
    v10 = dispatch_queue_create("AXMAVCaptureSessionNode-avkit-queue", 0);
    autotrigger_queue = self->_autotrigger_queue;
    self->_autotrigger_queue = v10;
  }

  [(AXMAVCaptureSessionNode *)self setCaptureSessionNodeDelegate:delegateCopy];
  [(AXMAVCaptureSessionNode *)self setAnalysisOptions:optionsCopy];
  [(AXMAVCaptureSessionNode *)self beginFrameEventsWithAVCaptureSession:sessionCopy delegate:self queue:self->_autotrigger_queue];
}

- (AXMCaptureVideoDataOutput)axVideoDataOutput
{
  axVideoDataOutput = self->_axVideoDataOutput;
  if (!axVideoDataOutput)
  {
    v4 = objc_alloc_init(AXMCaptureVideoDataOutput);
    v5 = self->_axVideoDataOutput;
    self->_axVideoDataOutput = v4;

    [(AVCaptureVideoDataOutput *)self->_axVideoDataOutput setAutomaticallyConfiguresOutputBufferDimensions:0];
    [(AVCaptureVideoDataOutput *)self->_axVideoDataOutput setDeliversPreviewSizedOutputBuffers:1];
    axVideoDataOutput = self->_axVideoDataOutput;
  }

  return axVideoDataOutput;
}

- (void)addVideoDataOutputWithAVCaptureSession:(id)session queue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  axVideoDataOutput = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
  [axVideoDataOutput setSampleBufferDelegate:self queue:queueCopy];

  axVideoDataOutput2 = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
  LODWORD(axVideoDataOutput) = [sessionCopy canAddOutput:axVideoDataOutput2];

  if (axVideoDataOutput)
  {
    axVideoDataOutput3 = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
    [sessionCopy addOutput:axVideoDataOutput3];

    [(AXMAVCaptureSessionNode *)self setCaptureSession:sessionCopy];
    delegate = [(AXMVisionEngineNode *)self delegate];
    [delegate captureSessionNodeDidBeginProcessingFrames:self];
  }

  else
  {
    delegate = AXMediaLogCommon();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [AXMAVCaptureSessionNode addVideoDataOutputWithAVCaptureSession:delegate queue:?];
    }
  }
}

- (void)beginFrameEventsWithAVCaptureSession:(id)session delegate:(id)delegate queue:(id)queue
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  delegateCopy = delegate;
  queueCopy = queue;
  if (sessionCopy)
  {
    captureSession = [(AXMAVCaptureSessionNode *)self captureSession];

    if (captureSession)
    {
      outputs = AXMediaLogCommon();
      if (os_log_type_enabled(outputs, OS_LOG_TYPE_FAULT))
      {
        [AXMAVCaptureSessionNode beginFrameEventsWithAVCaptureSession:outputs delegate:? queue:?];
      }
    }

    else
    {
      [(AXMAVCaptureSessionNode *)self setFrameDelegate:delegateCopy];
      outputs = [sessionCopy outputs];
      v13 = [outputs ax_filteredArrayUsingBlock:&__block_literal_global_38_0];
      if ([v13 count])
      {
        v14 = AXMediaLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&self->_captureSession);
          firstObject = [v13 firstObject];
          v17 = 138412546;
          v18 = WeakRetained;
          v19 = 2112;
          v20 = firstObject;
          _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "Capture session '%@' already has output '%@'", &v17, 0x16u);
        }
      }

      else
      {
        [(AXMAVCaptureSessionNode *)self addVideoDataOutputWithAVCaptureSession:sessionCopy queue:queueCopy];
      }
    }
  }
}

uint64_t __79__AXMAVCaptureSessionNode_beginFrameEventsWithAVCaptureSession_delegate_queue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)endAutoTriggerOfVideoFrameEvents
{
  [(AXMAVCaptureSessionNode *)self endVideoFrameEvents];

  [(AXMAVCaptureSessionNode *)self setCaptureSessionNodeDelegate:0];
}

- (void)endVideoFrameEvents
{
  v28 = *MEMORY[0x1E69E9840];
  captureSession = [(AXMAVCaptureSessionNode *)self captureSession];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  outputs = [captureSession outputs];
  v6 = [outputs countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(outputs);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v10];
        }
      }

      v7 = [outputs countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = array;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        [v16 setSampleBufferDelegate:0 queue:{0, v18}];
        [captureSession removeOutput:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(AXMAVCaptureSessionNode *)self setFrameDelegate:0];
  [(AXMAVCaptureSessionNode *)self setCaptureSession:0];
  delegate = [(AXMVisionEngineNode *)self delegate];
  [delegate captureSessionNodeDidEndProcessingFrames:self];
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  connectionCopy = connection;
  if (buffer)
  {
    delegate = [(AXMVisionEngineNode *)self delegate];
    v10 = [delegate engineWillAcceptTiggerWithSource:self];

    if (v10)
    {
      if (CMSampleBufferGetImageBuffer(buffer))
      {
        frameDelegate = [(AXMAVCaptureSessionNode *)self frameDelegate];
        [frameDelegate captureSessionNode:self didOutputSampleBuffer:buffer fromConnection:connectionCopy];
      }
    }
  }
}

- (void)triggerWithSampleBuffer:(opaqueCMSampleBuffer *)buffer interfaceOrientation:(int64_t)orientation mirrored:(BOOL)mirrored options:(id)options userContext:(id)context
{
  mirroredCopy = mirrored;
  v22[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  contextCopy = context;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v15 = [AXMPixelBufferWrapper wrapperWithPixelBuffer:ImageBuffer orientation:AXMEXIFOrientationFromInterfaceOrientation(orientation, mirroredCopy)];
    v16 = [AXMPipelineContextInput inputWithPixelBuffer:v15];
    v21[0] = @"input";
    v21[1] = @"diagnosticsEnabled";
    v22[0] = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v22[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [AXMVisionPipelineContext contextWithSourceParameters:v18 options:optionsCopy];

    [v19 setShouldCallCompletionHandlersForEmptyResultSet:1];
    [v19 setUserContext:contextCopy];
    [(AXMSourceNode *)self triggerWithContext:v19 cacheKey:0 resultHandler:0];
    delegate = [(AXMVisionEngineNode *)self delegate];
    [delegate captureSessionNodeWillProcessFrame:self];
  }
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v6 = [(AXMVisionEngineNode *)self delegate:output];
  [v6 captureSessionNodeDidDropFrame:self];
}

- (void)captureSessionNode:(id)node didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  connectionCopy = connection;
  captureSessionNodeDelegate = [(AXMAVCaptureSessionNode *)self captureSessionNodeDelegate];
  v9 = [captureSessionNodeDelegate interfaceOrientationForCaptureSessionNode:self];

  v12 = [AXMAVUtilities videoDeviceFromConnection:connectionCopy];

  v10 = [AXMAVUtilities isMirroredVideoDevice:v12];
  analysisOptions = [(AXMAVCaptureSessionNode *)self analysisOptions];
  [(AXMAVCaptureSessionNode *)self triggerWithSampleBuffer:buffer interfaceOrientation:v9 mirrored:v10 options:analysisOptions userContext:0];
}

- (AXMAVCaptureSessionNodeDelegate)captureSessionNodeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSessionNodeDelegate);

  return WeakRetained;
}

- (AXMAVCaptureSessionNodeFrameDelegate)frameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_frameDelegate);

  return WeakRetained;
}

- (AVCaptureSession)captureSession
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSession);

  return WeakRetained;
}

- (void)addVideoDataOutputWithAVCaptureSession:(id *)a1 queue:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 axVideoDataOutput];
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = WeakRetained;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Cannot add output '%@' to session '%@'", &v6, 0x16u);
}

@end