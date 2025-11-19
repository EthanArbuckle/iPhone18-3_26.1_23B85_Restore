@interface AXMAVCaptureSessionNode
- (AVCaptureSession)captureSession;
- (AXMAVCaptureSessionNodeDelegate)captureSessionNodeDelegate;
- (AXMAVCaptureSessionNodeFrameDelegate)frameDelegate;
- (AXMCaptureVideoDataOutput)axVideoDataOutput;
- (void)addVideoDataOutputWithAVCaptureSession:(id)a3 queue:(id)a4;
- (void)autoTriggerVideoFrameEventsWithAVCaptureSession:(id)a3 options:(id)a4 delegate:(id)a5;
- (void)beginFrameEventsWithAVCaptureSession:(id)a3 delegate:(id)a4 queue:(id)a5;
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureSessionNode:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)endAutoTriggerOfVideoFrameEvents;
- (void)endVideoFrameEvents;
- (void)nodeInitialize;
- (void)setShouldProcessRemotely:(BOOL)a3;
- (void)triggerWithSampleBuffer:(opaqueCMSampleBuffer *)a3 interfaceOrientation:(int64_t)a4 mirrored:(BOOL)a5 options:(id)a6 userContext:(id)a7;
@end

@implementation AXMAVCaptureSessionNode

- (void)setShouldProcessRemotely:(BOOL)a3
{
  if (a3)
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

- (void)autoTriggerVideoFrameEventsWithAVCaptureSession:(id)a3 options:(id)a4 delegate:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_autotrigger_queue)
  {
    v10 = dispatch_queue_create("AXMAVCaptureSessionNode-avkit-queue", 0);
    autotrigger_queue = self->_autotrigger_queue;
    self->_autotrigger_queue = v10;
  }

  [(AXMAVCaptureSessionNode *)self setCaptureSessionNodeDelegate:v9];
  [(AXMAVCaptureSessionNode *)self setAnalysisOptions:v8];
  [(AXMAVCaptureSessionNode *)self beginFrameEventsWithAVCaptureSession:v12 delegate:self queue:self->_autotrigger_queue];
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

- (void)addVideoDataOutputWithAVCaptureSession:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
  [v8 setSampleBufferDelegate:self queue:v7];

  v9 = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
  LODWORD(v8) = [v6 canAddOutput:v9];

  if (v8)
  {
    v10 = [(AXMAVCaptureSessionNode *)self axVideoDataOutput];
    [v6 addOutput:v10];

    [(AXMAVCaptureSessionNode *)self setCaptureSession:v6];
    v11 = [(AXMVisionEngineNode *)self delegate];
    [v11 captureSessionNodeDidBeginProcessingFrames:self];
  }

  else
  {
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXMAVCaptureSessionNode addVideoDataOutputWithAVCaptureSession:v11 queue:?];
    }
  }
}

- (void)beginFrameEventsWithAVCaptureSession:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(AXMAVCaptureSessionNode *)self captureSession];

    if (v11)
    {
      v12 = AXMediaLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [AXMAVCaptureSessionNode beginFrameEventsWithAVCaptureSession:v12 delegate:? queue:?];
      }
    }

    else
    {
      [(AXMAVCaptureSessionNode *)self setFrameDelegate:v9];
      v12 = [v8 outputs];
      v13 = [v12 ax_filteredArrayUsingBlock:&__block_literal_global_38_0];
      if ([v13 count])
      {
        v14 = AXMediaLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&self->_captureSession);
          v16 = [v13 firstObject];
          v17 = 138412546;
          v18 = WeakRetained;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "Capture session '%@' already has output '%@'", &v17, 0x16u);
        }
      }

      else
      {
        [(AXMAVCaptureSessionNode *)self addVideoDataOutputWithAVCaptureSession:v8 queue:v10];
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
  v3 = [(AXMAVCaptureSessionNode *)self captureSession];
  v4 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v3 outputs];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
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
        [v3 removeOutput:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(AXMAVCaptureSessionNode *)self setFrameDelegate:0];
  [(AXMAVCaptureSessionNode *)self setCaptureSession:0];
  v17 = [(AXMVisionEngineNode *)self delegate];
  [v17 captureSessionNodeDidEndProcessingFrames:self];
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v12 = a3;
  v8 = a5;
  if (a4)
  {
    v9 = [(AXMVisionEngineNode *)self delegate];
    v10 = [v9 engineWillAcceptTiggerWithSource:self];

    if (v10)
    {
      if (CMSampleBufferGetImageBuffer(a4))
      {
        v11 = [(AXMAVCaptureSessionNode *)self frameDelegate];
        [v11 captureSessionNode:self didOutputSampleBuffer:a4 fromConnection:v8];
      }
    }
  }
}

- (void)triggerWithSampleBuffer:(opaqueCMSampleBuffer *)a3 interfaceOrientation:(int64_t)a4 mirrored:(BOOL)a5 options:(id)a6 userContext:(id)a7
{
  v8 = a5;
  v22[2] = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    v15 = [AXMPixelBufferWrapper wrapperWithPixelBuffer:ImageBuffer orientation:AXMEXIFOrientationFromInterfaceOrientation(a4, v8)];
    v16 = [AXMPipelineContextInput inputWithPixelBuffer:v15];
    v21[0] = @"input";
    v21[1] = @"diagnosticsEnabled";
    v22[0] = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v22[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [AXMVisionPipelineContext contextWithSourceParameters:v18 options:v12];

    [v19 setShouldCallCompletionHandlersForEmptyResultSet:1];
    [v19 setUserContext:v13];
    [(AXMSourceNode *)self triggerWithContext:v19 cacheKey:0 resultHandler:0];
    v20 = [(AXMVisionEngineNode *)self delegate];
    [v20 captureSessionNodeWillProcessFrame:self];
  }
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v6 = [(AXMVisionEngineNode *)self delegate:a3];
  [v6 captureSessionNodeDidDropFrame:self];
}

- (void)captureSessionNode:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = a5;
  v8 = [(AXMAVCaptureSessionNode *)self captureSessionNodeDelegate];
  v9 = [v8 interfaceOrientationForCaptureSessionNode:self];

  v12 = [AXMAVUtilities videoDeviceFromConnection:v7];

  v10 = [AXMAVUtilities isMirroredVideoDevice:v12];
  v11 = [(AXMAVCaptureSessionNode *)self analysisOptions];
  [(AXMAVCaptureSessionNode *)self triggerWithSampleBuffer:a4 interfaceOrientation:v9 mirrored:v10 options:v11 userContext:0];
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