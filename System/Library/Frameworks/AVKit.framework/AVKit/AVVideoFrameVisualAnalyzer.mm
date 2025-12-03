@interface AVVideoFrameVisualAnalyzer
- (AVVideoFrameVisualAnalyzer)initWithPlayerController:(id)controller playerLayer:(id)layer;
- (AVVideoFrameVisualAnalyzerDelegate)delegate;
- (VKCImageAnalyzer)imageAnalyzer;
- (id)_imageAnalysisQueue;
- (uint64_t)_canStartAnalysis;
- (void)_resetAnalysis;
- (void)_updateActualEnabledStateIfNeeded;
- (void)_updateAnalysisIfNeeded;
- (void)_updateObserversIfNeeded;
- (void)dealloc;
- (void)setActuallyEnabled:(BOOL)enabled;
- (void)setEnabled:(BOOL)enabled;
- (void)setPlayerController:(id)controller;
- (void)setPlayerLayer:(id)layer;
@end

@implementation AVVideoFrameVisualAnalyzer

- (AVVideoFrameVisualAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VKCImageAnalyzer)imageAnalyzer
{
  imageAnalyzer = self->_imageAnalyzer;
  if (!imageAnalyzer)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getVKCImageAnalyzerClass_softClass_5715;
    v15 = getVKCImageAnalyzerClass_softClass_5715;
    if (!getVKCImageAnalyzerClass_softClass_5715)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getVKCImageAnalyzerClass_block_invoke_5716;
      v11[3] = &unk_1E7209BC8;
      v11[4] = &v12;
      __getVKCImageAnalyzerClass_block_invoke_5716(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_imageAnalyzer;
    self->_imageAnalyzer = v6;

    v8 = self->_imageAnalyzer;
    _imageAnalysisQueue = [(AVVideoFrameVisualAnalyzer *)self _imageAnalysisQueue];
    [(VKCImageAnalyzer *)v8 setCallbackQueue:_imageAnalysisQueue];

    imageAnalyzer = self->_imageAnalyzer;
  }

  return imageAnalyzer;
}

- (id)_imageAnalysisQueue
{
  if (self)
  {
    if (_imageAnalysisQueue_once != -1)
    {
      dispatch_once(&_imageAnalysisQueue_once, &__block_literal_global_37);
    }

    self = _imageAnalysisQueue_videoFrameAnalysisQueue;
    v1 = vars8;
  }

  return self;
}

void __49__AVVideoFrameVisualAnalyzer__imageAnalysisQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.avkit.videoframe-analysis", attr);
  v2 = _imageAnalysisQueue_videoFrameAnalysisQueue;
  _imageAnalysisQueue_videoFrameAnalysisQueue = v1;
}

- (void)setActuallyEnabled:(BOOL)enabled
{
  if (self->_actuallyEnabled != enabled)
  {
    self->_actuallyEnabled = enabled;
    if (!enabled)
    {
      [(VKCImageAnalyzer *)self->_imageAnalyzer cancelAllRequests];
      [(AVVideoFrameVisualAnalyzer *)self _resetAnalysis];
    }

    [(AVVideoFrameVisualAnalyzer *)&self->super.isa _updateObserversIfNeeded];
  }
}

- (void)_resetAnalysis
{
  if (self)
  {
    v2 = MEMORY[0x1E6960C70];
    *(self + 24) = 0x3FF0000000000000;
    *(self + 40) = *v2;
    *(self + 56) = *(v2 + 16);
    if (*(self + 16))
    {
      imageAnalyzer = [self imageAnalyzer];
      [imageAnalyzer cancelRequestID:*(self + 16)];

      *(self + 16) = 0;
    }

    [*(self + 32) invalidate];
    if (*(self + 64))
    {
      delegate = [self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        delegate2 = [self delegate];
        [delegate2 videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:self withAnalysis:0];
      }
    }

    v7 = *(self + 64);
    *(self + 64) = 0;
  }
}

- (void)_updateObserversIfNeeded
{
  if (self)
  {
    playerController = [self playerController];
    enabled = [self enabled];
    actuallyEnabled = [self actuallyEnabled];
    v4 = self[1];
    if (!v4)
    {
      v5 = [[AVObservationController alloc] initWithOwner:self];
      v6 = self[1];
      self[1] = v5;

      v4 = self[1];
    }

    [v4 stopAllObservation];
    v7 = playerController;
    if (enabled && playerController)
    {
      v8 = [self[1] startObserving:playerController keyPath:@"currentAssetIfReady" includeInitialValue:0 observationHandler:&__block_literal_global_5726];
      v7 = playerController;
    }

    if (v7 && ((actuallyEnabled ^ 1) & 1) == 0)
    {
      v9 = [self[1] startObserving:playerController keyPath:@"activeRate" includeInitialValue:1 observationHandler:&__block_literal_global_14];
      [self[1] startObservingNotificationForName:@"AVPlayerControllerCurrentTimeJumpedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_17];
      v10 = [self[1] startObserving:playerController keyPath:@"player.currentItem.videoComposition" includeInitialValue:1 observationHandler:&__block_literal_global_22];
      v11 = [self[1] startObserving:playerController keyPath:@"preferredTransform" includeInitialValue:1 observationHandler:&__block_literal_global_27_5730];
      v7 = playerController;
    }
  }
}

- (void)_updateAnalysisIfNeeded
{
  if (self)
  {
    playerController = [self playerController];
    [(AVVideoFrameVisualAnalyzer *)self _resetAnalysis];
    [playerController activeRate];
    v2 = playerController;
    if (v3 == 0.0)
    {
      [playerController currentTime];
      *(self + 24) = v4;
      if ([(AVVideoFrameVisualAnalyzer *)self _canStartAnalysis])
      {
        if ([(AVVideoFrameVisualAnalyzer *)self _canStartAnalysis])
        {
          [*(self + 32) invalidate];
          objc_initWeak(&location, self);
          v5 = MEMORY[0x1E695DFF0];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __62__AVVideoFrameVisualAnalyzer__setupTimeObservingTimerIfNeeded__block_invoke;
          v9[3] = &unk_1E7209DA8;
          objc_copyWeak(&v10, &location);
          v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:0.25];
          v7 = *(self + 32);
          *(self + 32) = v6;

          objc_destroyWeak(&v10);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        [*(self + 80) cancelAllRequests];
        [(AVVideoFrameVisualAnalyzer *)self _resetAnalysis];
      }

      v2 = playerController;
    }
  }
}

- (uint64_t)_canStartAnalysis
{
  playerController = [self playerController];
  actuallyEnabled = [self actuallyEnabled];
  if (*(self + 16))
  {
    v4 = 1;
  }

  else
  {
    [playerController activeRate];
    v4 = v5 != 0.0;
  }

  v6 = *(self + 52);
  v15 = *(self + 40);
  v7 = CMTimeGetSeconds(&v15) != *(self + 24) && *(self + 64) == 0;
  playerController2 = [self playerController];
  currentAssetIfReady = [playerController2 currentAssetIfReady];
  hasProtectedContent = [currentAssetIfReady hasProtectedContent];

  if (playerController2)
  {
    v11 = currentAssetIfReady == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = actuallyEnabled;
  }

  if (hasProtectedContent & 1 | ((v12 & 1) == 0) | v4)
  {
    v13 = 0;
  }

  else
  {
    v13 = ((v6 & 1) == 0) & v7;
  }

  return v13;
}

uint64_t __62__AVVideoFrameVisualAnalyzer__setupTimeObservingTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    val = WeakRetained;
    WeakRetained = [(AVVideoFrameVisualAnalyzer *)WeakRetained _canStartAnalysis];
    v2 = val;
    if (WeakRetained)
    {
      [val[10] cancelAllRequests];
      [(AVVideoFrameVisualAnalyzer *)val _resetAnalysis];
      v3 = [val playerController];
      v4 = [v3 activePlayer];

      v5 = [v4 currentItem];
      v6 = v5;
      v26 = 0uLL;
      v27 = 0;
      if (v5)
      {
        [v5 currentTime];
      }

      v32 = 0u;
      v33 = 0u;
      *location = 0u;
      v7 = val[11];
      if (v7)
      {
        [v7 preferredTransform];
        v7 = val[11];
      }

      v8 = [v7 player];
      v9 = [v8 currentItem];
      v10 = [v9 videoComposition];

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v28 = *location;
        v29 = v32;
        v30 = v33;
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v12 = getvk_imageOrientationFromTransformSymbolLoc_ptr;
        v37 = getvk_imageOrientationFromTransformSymbolLoc_ptr;
        if (!getvk_imageOrientationFromTransformSymbolLoc_ptr)
        {
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          *&v21 = __getvk_imageOrientationFromTransformSymbolLoc_block_invoke;
          *(&v21 + 1) = &unk_1E7209BC8;
          *&v22 = &v34;
          v13 = VisionKitCoreLibrary();
          v35[3] = dlsym(v13, "vk_imageOrientationFromTransform");
          getvk_imageOrientationFromTransformSymbolLoc_ptr = *(*(v22 + 8) + 24);
          v12 = v35[3];
        }

        _Block_object_dispose(&v34, 8);
        if (!v12)
        {
          dlerror();
          v17 = abort_report_np();
          _Block_object_dispose(&v34, 8);
          _Unwind_Resume(v17);
        }

        block = v28;
        v21 = v29;
        v22 = v30;
        v11 = v12(&block);
      }

      v14 = [val playerLayer];
      objc_initWeak(location, val);
      v15 = [(AVVideoFrameVisualAnalyzer *)val _imageAnalysisQueue];
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      *&v21 = __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke;
      *(&v21 + 1) = &unk_1E7207968;
      objc_copyWeak(&v22 + 1, location);
      v24 = v26;
      v25 = v27;
      *&v22 = v14;
      v23 = v11;
      v16 = v14;
      dispatch_async(v15, &block);

      objc_destroyWeak(&v22 + 1);
      objc_destroyWeak(location);

      v2 = val;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

void __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) copyDisplayedPixelBuffer];
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      *(WeakRetained + 7) = *(a1 + 72);
      *(WeakRetained + 40) = v5;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v6 = getVKCImageAnalyzerRequestClass_softClass;
      v16 = getVKCImageAnalyzerRequestClass_softClass;
      if (!getVKCImageAnalyzerRequestClass_softClass)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __getVKCImageAnalyzerRequestClass_block_invoke;
        v12[3] = &unk_1E7209BC8;
        v12[4] = &v13;
        __getVKCImageAnalyzerRequestClass_block_invoke(v12);
        v6 = v14[3];
      }

      v7 = v6;
      _Block_object_dispose(&v13, 8);
      v8 = [[v6 alloc] initWithCVPixelBuffer:v4 orientation:*(a1 + 48) requestType:(8 * *(WeakRetained + 14)) & 0x20 | (*(WeakRetained + 14) >> 1) & 1 | (16 * ((*(WeakRetained + 14) >> 3) & 1)) | (*(WeakRetained + 14) >> 2) & 4];
      [v8 setImageSource:2];
      CVPixelBufferRelease(v4);
      v9 = [WeakRetained imageAnalyzer];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke_2;
      v10[3] = &unk_1E7207940;
      objc_copyWeak(&v11, (a1 + 40));
      *(WeakRetained + 4) = [v9 processRequest:v8 progressHandler:0 completionHandler:v10];

      objc_destroyWeak(&v11);
    }
  }
}

void __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke_3;
  block[3] = &unk_1E72095F0;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3;
  v5 = v2;
  v6 = v5;
  if (WeakRetained)
  {
    *(WeakRetained + 4) = 0;
    if (v5)
    {
      v7 = [WeakRetained delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [WeakRetained delegate];
        [v9 videoFrameVisualAnalyzerFailedAnalyzingVideoFrame:WeakRetained withError:v6];
      }

      [(AVVideoFrameVisualAnalyzer *)WeakRetained _resetAnalysis];
    }

    else if (v4)
    {
      v10 = *(WeakRetained + 14);
      if (([v4 hasResultsForAnalysisTypes:(8 * v10) & 0x20 | (v10 >> 1) & 1 | (16 * ((v10 >> 3) & 1)) | (v10 >> 2) & 4] & 1) != 0 || (v10 & 4) != 0)
      {
        v11 = [WeakRetained delegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          v13 = [WeakRetained delegate];
          [v13 videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:WeakRetained withAnalysis:v4];
        }

        objc_storeStrong(WeakRetained + 8, v3);
      }
    }
  }
}

- (void)_updateActualEnabledStateIfNeeded
{
  if (self)
  {
    playerController = [self playerController];
    currentAssetIfReady = [playerController currentAssetIfReady];

    enabled = [self enabled];
    if (currentAssetIfReady)
    {
      v4 = enabled;
    }

    else
    {
      v4 = 0;
    }

    if (self[12])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [self setActuallyEnabled:v5];
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  p_playerController = &self->_playerController;
  if (self->_playerController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(p_playerController, controller);
    [(AVVideoFrameVisualAnalyzer *)&self->super.isa _updateObserversIfNeeded];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_playerController, controllerCopy);
}

- (void)setPlayerLayer:(id)layer
{
  layerCopy = layer;
  p_playerLayer = &self->_playerLayer;
  if (self->_playerLayer != layerCopy)
  {
    v7 = layerCopy;
    objc_storeStrong(p_playerLayer, layer);
    [(AVVideoFrameVisualAnalyzer *)self _updateActualEnabledStateIfNeeded];
    layerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_playerLayer, layerCopy);
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(AVVideoFrameVisualAnalyzer *)&self->super.isa _updateObserversIfNeeded];

    [(AVVideoFrameVisualAnalyzer *)self _updateActualEnabledStateIfNeeded];
  }
}

- (void)dealloc
{
  [(AVObservationController *)self->_playerObservationController stopAllObservation];
  [(VKCImageAnalyzer *)self->_imageAnalyzer cancelAllRequests];
  [(AVVideoFrameVisualAnalyzer *)self _resetAnalysis];
  v3.receiver = self;
  v3.super_class = AVVideoFrameVisualAnalyzer;
  [(AVVideoFrameVisualAnalyzer *)&v3 dealloc];
}

- (AVVideoFrameVisualAnalyzer)initWithPlayerController:(id)controller playerLayer:(id)layer
{
  controllerCopy = controller;
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13.receiver = self;
    v13.super_class = AVVideoFrameVisualAnalyzer;
    v9 = [(AVVideoFrameVisualAnalyzer *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_playerController, controller);
      objc_storeStrong(p_isa + 12, layer);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end