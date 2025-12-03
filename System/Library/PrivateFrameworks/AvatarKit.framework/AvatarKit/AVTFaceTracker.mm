@interface AVTFaceTracker
- (AVTFaceTracker)init;
- (CGSize)cameraImageResolution;
- (__n128)cameraIntrinsics;
- (__n128)rawTransform;
- (double)projectionMatrixForViewportSize:(uint64_t)size zNear:zFar:;
- (void)_setupARKitForDebugging:(BOOL)debugging;
- (void)addDelegate:(id)delegate;
- (void)copyTrackingData:(id *)data;
- (void)decreaseFrameRate;
- (void)discardARFrameData;
- (void)enumerateDelegates:(id)delegates;
- (void)increaseFrameRateToMaximum;
- (void)pauseByPausingARSession;
- (void)pauseBySkippingARFrames;
- (void)removeDelegate:(id)delegate;
- (void)run;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setFaceTrackingRecordingURL:(id)l;
- (void)setWantsPersonSegmentation:(BOOL)segmentation;
- (void)setupARKit;
- (void)setupARKitForDebugging;
- (void)startRecording;
- (void)stop;
- (void)stopRecording;
@end

@implementation AVTFaceTracker

- (AVTFaceTracker)init
{
  v9.receiver = self;
  v9.super_class = AVTFaceTracker;
  v2 = [(AVTFaceTracker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_requestedState = vdupq_n_s64(3uLL);
    v2->_faceIsTracked = 0;
    v4 = objc_alloc_init(AVTFaceTrackingInfo);
    trackingInfo = v3->_trackingInfo;
    v3->_trackingInfo = v4;

    v3->_arSessionLock._os_unfair_lock_opaque = 0;
    v3->_trackingDataLock._os_unfair_lock_opaque = 0;
    v3->_shouldConstrainHeadPose = 0;
    v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    delegates = v3->_delegates;
    v3->_delegates = v6;
  }

  return v3;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    allObjects = [(NSPointerArray *)self->_delegates allObjects];
    v6 = [allObjects containsObject:v7];

    if ((v6 & 1) == 0)
    {
      [(NSPointerArray *)self->_delegates addPointer:v7];
    }

    [(NSPointerArray *)self->_delegates compact];
    delegateCopy = v7;
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([(NSPointerArray *)self->_delegates count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSPointerArray *)self->_delegates pointerAtIndex:v4];
      if (v5 == delegateCopy)
      {
        break;
      }

      if (++v4 >= [(NSPointerArray *)self->_delegates count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_delegates removePointerAtIndex:v4];
  }

LABEL_7:
  [(NSPointerArray *)self->_delegates compact];
}

- (void)enumerateDelegates:(id)delegates
{
  v16 = *MEMORY[0x1E69E9840];
  delegatesCopy = delegates;
  [(NSPointerArray *)self->_delegates compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_delegates;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        delegatesCopy[2](delegatesCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)run
{
  v13 = *MEMORY[0x1E69E9840];
  self->_requestedState = 0;
  currentState = self->_currentState;
  if (currentState)
  {
    if (currentState == 2)
    {
      v4 = avt_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v11 = 134217984;
        v12 = arSession;
        _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Resuming face tracking ; will no longer skip frames from session %p", &v11, 0xCu);
      }

      self->_currentState = 0;
    }

    else
    {
      os_unfair_lock_lock(&self->_arSessionLock);
      v6 = self->_arSession;
      v7 = avt_default_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = self->_arSession;
          v11 = 134217984;
          v12 = v9;
          _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "[Face tracker] Resuming face tracking ; calling [ARSession runWithConfiguration:] on session %p", &v11, 0xCu);
        }

        self->_currentState = 0;
        [(ARSession *)self->_arSession runWithConfiguration:self->_arConfiguration];
      }

      else
      {
        if (v8)
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "[Face tracker] Running face tracking", &v11, 2u);
        }

        [(AVTFaceTracker *)self _setupARKitForDebugging:0];
      }

      os_unfair_lock_unlock(&self->_arSessionLock);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)pauseByPausingARSession
{
  v8 = *MEMORY[0x1E69E9840];
  self->_requestedState = 1;
  if ((self->_currentState | 2) != 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v6 = 134217984;
      v7 = arSession;
      _os_log_impl(&dword_1BB472000, v3, OS_LOG_TYPE_DEFAULT, "[Face tracker] Pausing face tracking ; calling [ARSession pause] on session %p", &v6, 0xCu);
    }

    self->_currentState = 1;
    [(ARSession *)self->_arSession pause];
    os_unfair_lock_unlock(&self->_arSessionLock);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)pauseBySkippingARFrames
{
  v8 = *MEMORY[0x1E69E9840];
  self->_requestedState = 2;
  if (self->_currentState - 1 >= 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v6 = 134217984;
      v7 = arSession;
      _os_log_impl(&dword_1BB472000, v3, OS_LOG_TYPE_DEFAULT, "[Face tracker] Pausing face tracking ; will skip new frames from session %p", &v6, 0xCu);
    }

    self->_currentState = 2;
    os_unfair_lock_unlock(&self->_arSessionLock);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  self->_requestedState = 3;
  if (self->_currentState != 3)
  {
    os_unfair_lock_lock(&self->_arSessionLock);
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      arSession = self->_arSession;
      v7 = 134217984;
      v8 = arSession;
      _os_log_impl(&dword_1BB472000, v3, OS_LOG_TYPE_DEFAULT, "[Face tracker] Stopping face tracking ; calling [ARSession pause] on session %p before release", &v7, 0xCu);
    }

    self->_currentState = 3;
    [(ARSession *)self->_arSession pause];
    v5 = self->_arSession;
    self->_arSession = 0;

    os_unfair_lock_unlock(&self->_arSessionLock);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (double)projectionMatrixForViewportSize:(uint64_t)size zNear:zFar:
{
  v2 = COERCE_FLOAT(*(size + 96)) + 0.5;
  v3 = *(size + 120) - (COERCE_FLOAT(HIDWORD(*(size + 96))) + 0.5);
  v4 = *(size + 224);
  v20 = *(size + 80);
  v19 = *(size + 64);
  v5 = ARCameraToDisplayRotation();
  v6 = *(size + 112);
  v7 = *(size + 120);
  ARAdjustIntrincisForOrientation();
  v9 = *(size + 112);
  v8 = *(size + 120);
  if (v5 == 90 || v5 == -90)
  {
    v10 = *(size + 112);
  }

  else
  {
    v11 = *(size + 120);
    v12 = *(size + 112);
  }

  ARAdjustIntrinsicsForViewportSize();
  ARMatrixMakeFrustum();
  v13 = 0;
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  memset(v22, 0, sizeof(v22));
  do
  {
    v22[v13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F05D0, COERCE_FLOAT(v21[v13])), xmmword_1BB4F05E0, *&v21[v13], 1), xmmword_1BB4F05F0, v21[v13], 2), xmmword_1BB4F0600, v21[v13], 3);
    ++v13;
  }

  while (v13 != 4);
  return *v22;
}

- (void)discardARFrameData
{
  trackingInfo = self->_trackingInfo;
  self->_trackingInfo = 0;

  fallBackDepthData = self->_fallBackDepthData;
  self->_fallBackDepthData = 0;
}

- (void)setFaceTrackingRecordingURL:(id)l
{
  if (self->_debugRecordingURL != l)
  {
    v5 = [l copy];
    debugRecordingURL = self->_debugRecordingURL;
    self->_debugRecordingURL = v5;

    [(AVTFaceTracker *)self setupARKit];
  }
}

- (void)setWantsPersonSegmentation:(BOOL)segmentation
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_wantsPersonSegmentation != segmentation)
  {
    self->_wantsPersonSegmentation = segmentation;
    os_unfair_lock_lock(&self->_arSessionLock);
    if (self->_wantsPersonSegmentation && (v4 = self->_arConfiguration, [objc_opt_class() supportsFrameSemantics:1]))
    {
      arConfiguration = self->_arConfiguration;
      v6 = [(ARConfiguration *)arConfiguration frameSemantics]| 1;
    }

    else
    {
      arConfiguration = self->_arConfiguration;
      v6 = [(ARConfiguration *)arConfiguration frameSemantics]& 0xFFFFFFFFFFFFFFFELL;
    }

    [(ARConfiguration *)arConfiguration setFrameSemantics:v6];
    if (!self->_requestedState)
    {
      v7 = avt_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v10 = 134217984;
        v11 = arSession;
        _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "[Face tracker] Person segmentation status did change ; calling [ARSession runWithConfiguration:] on session %p", &v10, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:self->_arConfiguration];
    }

    os_unfair_lock_unlock(&self->_arSessionLock);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)decreaseFrameRate
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_arSessionLock);
  arConfiguration = self->_arConfiguration;
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v5 = [supportedVideoFormats sortedArrayUsingComparator:&__block_literal_global_2];

  videoFormat = [(ARConfiguration *)self->_arConfiguration videoFormat];
  v7 = [v5 indexOfObject:videoFormat];

  if (v7 && v7 < [v5 count])
  {
    v8 = [v5 objectAtIndexedSubscript:v7 - 1];
    [(ARConfiguration *)self->_arConfiguration setVideoFormat:v8];
    [(AVTFaceTracker *)self configurationVideoFormatDidChange:self->_arConfiguration];
    if (!self->_requestedState)
    {
      v9 = avt_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        v12 = 134217984;
        v13 = arSession;
        _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Face tracker] Video format did change ; calling [ARSession runWithConfiguration:] on session %p", &v12, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:self->_arConfiguration];
    }
  }

  os_unfair_lock_unlock(&self->_arSessionLock);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)increaseFrameRateToMaximum
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_arSessionLock);
  v3 = self->_arConfiguration;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v5 = [supportedVideoFormats countByEnumeratingWithState:&v18 objects:buf count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    framesPerSecond = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(supportedVideoFormats);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 framesPerSecond] > framesPerSecond)
        {
          framesPerSecond = [v11 framesPerSecond];
          v12 = v11;

          v7 = v12;
        }
      }

      v6 = [supportedVideoFormats countByEnumeratingWithState:&v18 objects:buf count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  videoFormat = [(ARConfiguration *)self->_arConfiguration videoFormat];
  v14 = [v7 isEqual:videoFormat];

  if ((v14 & 1) == 0)
  {
    [(ARConfiguration *)self->_arConfiguration setVideoFormat:v7];
    [(AVTFaceTracker *)self configurationVideoFormatDidChange:self->_arConfiguration];
    if (!self->_requestedState)
    {
      v15 = avt_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        arSession = self->_arSession;
        *buf = 134217984;
        v23 = arSession;
        _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "[Face tracker] Video format did change ; calling [ARSession runWithConfiguration:] on session %p", buf, 0xCu);
      }

      self->_currentState = 0;
      [(ARSession *)self->_arSession runWithConfiguration:self->_arConfiguration];
    }
  }

  os_unfair_lock_unlock(&self->_arSessionLock);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setupARKit
{
  os_unfair_lock_lock(&self->_arSessionLock);
  [(AVTFaceTracker *)self _setupARKitForDebugging:0];

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)setupARKitForDebugging
{
  os_unfair_lock_lock(&self->_arSessionLock);
  [(AVTFaceTracker *)self _setupARKitForDebugging:1];

  os_unfair_lock_unlock(&self->_arSessionLock);
}

- (void)_setupARKitForDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  v19 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6986460] isSupported])
  {
    if (!self->_arSession)
    {
      v5 = objc_opt_new();
      arSession = self->_arSession;
      self->_arSession = v5;

      [(ARSession *)self->_arSession setDelegate:self];
    }

    arConfiguration = self->_arConfiguration;
    self->_arConfiguration = 0;

    if (+[AVTRecordView usesInternalTrackingPipeline])
    {
      v8 = objc_opt_new();
    }

    else
    {
      v8 = objc_opt_new();
      [(ARConfiguration *)v8 setMaximumNumberOfTrackedFaces:1];
    }

    v10 = self->_arConfiguration;
    self->_arConfiguration = v8;

    [(ARConfiguration *)self->_arConfiguration setProvidesAudioData:self->_shouldUseAudioData];
    [(ARConfiguration *)self->_arConfiguration setLightEstimationEnabled:0];
    [(ARConfiguration *)self->_arConfiguration setWorldAlignment:2];
    if (self->_wantsPersonSegmentation)
    {
      v11 = self->_arConfiguration;
      if ([objc_opt_class() supportsFrameSemantics:1])
      {
        [(ARConfiguration *)self->_arConfiguration setFrameSemantics:[(ARConfiguration *)self->_arConfiguration frameSemantics]| 1];
      }
    }

    [(ARConfiguration *)self->_arConfiguration setAllowCameraInMultipleForegroundAppLayout:1];
    if (debuggingCopy && self->_debugRecordingURL)
    {
      v12 = [objc_alloc(MEMORY[0x1E69864B8]) initWithBaseConfiguration:self->_arConfiguration fileURL:self->_debugRecordingURL];
      v13 = self->_arConfiguration;
      self->_arConfiguration = v12;
    }

    [(AVTFaceTracker *)self configurationVideoFormatDidChange:self->_arConfiguration];
    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_arSession;
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "[Face tracker] ARKit setup ; calling [ARSession runWithConfiguration:] on session %p", &v17, 0xCu);
    }

    self->_currentState = 0;
    [(ARSession *)self->_arSession runWithConfiguration:self->_arConfiguration];
  }

  else
  {
    v9 = avt_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Face tracker] Face tracking is not supported by this device", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopRecording
{
  arConfiguration = self->_arConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dispatch_semaphore_create(0);
    v5 = self->_arConfiguration;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __31__AVTFaceTracker_stopRecording__block_invoke;
    v12 = &unk_1E7F47F18;
    v13 = v5;
    v14 = v4;
    v6 = v4;
    v7 = v5;
    [(ARConfiguration *)v7 finishRecordingWithHandler:&v9];
    v8 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v6, v8);
    [(AVTFaceTracker *)self setupARKit:v9];
  }
}

void __31__AVTFaceTracker_stopRecording__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = avt_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) fileURL];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1BB472000, v4, OS_LOG_TYPE_DEFAULT, "[Face tracker] Finished recording to %@, error: %@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startRecording
{
  if (self->_debugRecordingURL)
  {
    [(AVTFaceTracker *)self setupARKitForDebugging];
    arConfiguration = self->_arConfiguration;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_arConfiguration;

      [(ARConfiguration *)v4 startRecording];
    }
  }
}

- (void)sessionWasInterrupted:(id)interrupted
{
  v12 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = interruptedCopy;
    _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session was interrupted: %@", buf, 0xCu);
  }

  self->_faceIsTracked = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AVTFaceTracker_sessionWasInterrupted___block_invoke;
  v8[3] = &unk_1E7F47EF0;
  v8[4] = self;
  v9 = interruptedCopy;
  v6 = interruptedCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __40__AVTFaceTracker_sessionWasInterrupted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 faceTracker:*(a1 + 32) sessionWasInterrupted:*(a1 + 40)];
  }
}

- (void)sessionInterruptionEnded:(id)ended
{
  v12 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = endedCopy;
    _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session interruption ended: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTFaceTracker_sessionInterruptionEnded___block_invoke;
  v8[3] = &unk_1E7F47EF0;
  v8[4] = self;
  v9 = endedCopy;
  v6 = endedCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __43__AVTFaceTracker_sessionInterruptionEnded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 faceTracker:*(a1 + 32) sessionInterruptionEnded:*(a1 + 40)];
  }
}

- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sessionCopy = session;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__AVTFaceTracker_session_didOutputAudioSampleBuffer___block_invoke;
  v8[3] = &unk_1E7F47F40;
  v8[4] = self;
  v9 = sessionCopy;
  bufferCopy = buffer;
  v7 = sessionCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v8];
}

void __53__AVTFaceTracker_session_didOutputAudioSampleBuffer___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 faceTracker:a1[4] session:a1[5] didOutputAudioSampleBuffer:a1[6]];
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  v74 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  frameCopy = frame;
  if (self->_currentState == 2)
  {
    goto LABEL_26;
  }

  v58 = sessionCopy;
  context = objc_autoreleasePoolPush();
  [frameCopy timestamp];
  v9 = v8;
  os_unfair_lock_lock(&self->_trackingDataLock);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  anchors = [frameCopy anchors];
  v11 = [anchors countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v11)
  {
    v12 = v11;
    v61 = 0;
    v13 = *v70;
    v14 = 0x1E6986000uLL;
    v59 = *v70;
    v60 = anchors;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(anchors);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        v17 = *(v14 + 1112);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v16;
          if ([v18 isTracked])
          {
            directRetargetingMode = [(AVTFaceTracker *)self directRetargetingMode];
            *&self->_frame_id = v9;
            kdebug_trace();
            frame_id = self->_frame_id;
            kdebug_trace();
            v21 = frameCopy;
            captureDate = [frameCopy captureDate];
            [captureDate timeIntervalSinceReferenceDate];
            self->_perfPacket.refTimestamp = v23;

            lastARFrameTime = self->_lastARFrameTime;
            refTimestamp = self->_perfPacket.refTimestamp;
            if (lastARFrameTime > 0.0)
            {
              self->_timeBetweenARFrame = refTimestamp - lastARFrameTime;
            }

            self->_lastARFrameTime = refTimestamp;
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            self->_perfPacket.arDelegateTimestamp = v26;
            v27 = self->_trackingInfo;
            [v18 _avt_rawTransform];
            v64 = v29;
            v65 = v28;
            v62 = v31;
            v63 = v30;
            captureVideoOrientation = self->_captureVideoOrientation;
            interfaceOrientation = self->_interfaceOrientation;
            shouldConstrainHeadPose = self->_shouldConstrainHeadPose;
            worldAlignment = [v21 worldAlignment];
            v36 = shouldConstrainHeadPose;
            frameCopy = v21;
            *&v27[1].super.isa = _convertARFaceAnchorTransformToSceneKitTransform(captureVideoOrientation, interfaceOrientation, v36, v21, worldAlignment, v65, v64, v63, v62);
            *&v27[1]._trackingData.timestamp = v37;
            *&v27[1]._anon_18[8] = v38;
            *&v27[1]._anon_18[24] = v39;
            v68 = 0.0;
            AVTTrackingDataFromARFrame(&v27->_trackingData, v21, [v21 worldAlignment], v18, self->_captureVideoOrientation, self->_interfaceOrientation, self->_shouldConstrainHeadPose, directRetargetingMode, &v68);
            LODWORD(interfaceOrientation) = [(AVTFaceTracker *)self limitRoll];

            if (!interfaceOrientation || v68 < 1.25663706)
            {
              ++v61;
            }

            v13 = v59;
            anchors = v60;
            v14 = 0x1E6986000;
          }
        }
      }

      v12 = [anchors countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v12);

    self->_lastUpdateTimestamp = v9;
    if (v61)
    {
      v40 = 1;
LABEL_22:
      self->_lastUpdateWithTrackedFaceTimestamp = v9;
      v41 = v40;
      goto LABEL_23;
    }
  }

  else
  {

    self->_lastUpdateTimestamp = v9;
  }

  v40 = 0;
  v41 = 0;
  if (self->_lastUpdateWithTrackedFaceTimestamp == 0.0)
  {
    goto LABEL_22;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_trackingDataLock);
  self->_faceIsTracked = v41;
  faceData = [frameCopy faceData];
  faceMeshPayload = [faceData faceMeshPayload];
  v44 = [faceMeshPayload objectForKeyedSubscript:*MEMORY[0x1E698BFE0]];

  if (v44)
  {
    v45 = [v44 objectForKeyedSubscript:*MEMORY[0x1E698BFE8]];
    -[AVTFaceTracker setLowLight:](self, "setLowLight:", [v45 BOOLValue]);
    v46 = [v44 objectForKeyedSubscript:*MEMORY[0x1E698BFF0]];
    -[AVTFaceTracker setSensorCovered:](self, "setSensorCovered:", [v46 BOOLValue]);
  }

  camera = [frameCopy camera];
  [camera intrinsics];
  *&self->_anon_40[8] = v48;
  *&self->_anon_40[24] = v49;
  *self->_anon_40 = v50;
  *&self->_anon_40[16] = v51;
  *&self->_anon_40[40] = v52;
  *&self->_anon_40[32] = v53;
  [camera imageResolution];
  self->_cameraImageResolution.width = v54;
  self->_cameraImageResolution.height = v55;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __41__AVTFaceTracker_session_didUpdateFrame___block_invoke;
  v66[3] = &unk_1E7F47EF0;
  v66[4] = self;
  v67 = frameCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v66];

  objc_autoreleasePoolPop(context);
  sessionCopy = v58;
LABEL_26:

  v56 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session didFailWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  v8 = avt_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = sessionCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "[Face tracker] Session %p failed with error: %@", buf, 0x16u);
  }

  self->_faceIsTracked = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__AVTFaceTracker_session_didFailWithError___block_invoke;
  v15[3] = &unk_1E7F47F68;
  v15[4] = self;
  v16 = sessionCopy;
  v17 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  [(AVTFaceTracker *)self enumerateDelegates:v15];
  os_unfair_lock_lock(&self->_arSessionLock);
  self->_currentState = 3;
  [(ARSession *)self->_arSession pause];
  arSession = self->_arSession;
  self->_arSession = 0;

  os_unfair_lock_unlock(&self->_arSessionLock);
  v12 = dispatch_time(0, 1000000000);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__AVTFaceTracker_session_didFailWithError___block_invoke_2;
  v14[3] = &unk_1E7F47F90;
  v14[4] = self;
  dispatch_after(v12, MEMORY[0x1E69E96A0], v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __43__AVTFaceTracker_session_didFailWithError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 faceTracker:a1[4] session:a1[5] didFailWithError:a1[6]];
  }
}

void *__43__AVTFaceTracker_session_didFailWithError___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    return [result run];
  }

  return result;
}

- (void)copyTrackingData:(id *)data
{
  trackingData = [(AVTFaceTrackingInfo *)self->_trackingInfo trackingData];

  memcpy(data, trackingData, 0x1E0uLL);
}

- (__n128)rawTransform
{
  v1 = *(self + 136);
  result = *(v1 + 496);
  v3 = *(v1 + 512);
  v4 = *(v1 + 528);
  v5 = *(v1 + 544);
  return result;
}

- (__n128)cameraIntrinsics
{
  result = *(self + 64);
  v2 = *(self + 80);
  v3 = *(self + 96);
  return result;
}

- (CGSize)cameraImageResolution
{
  width = self->_cameraImageResolution.width;
  height = self->_cameraImageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end