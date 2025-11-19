@interface BCSRootViewController
- (BCSRootViewController)init;
- (BOOL)_isCapturingSteady;
- (BOOL)liveViewControllerTorchModeSupported:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (id)_bestCandidateVisualCode:(id)a3;
- (id)_bestCaptureDevice;
- (id)_bestCaptureFormatForDevice:(id)a3;
- (id)_imageFromLastVideoSample:(opaqueCMSampleBuffer *)a3 rect:(CGRect)a4;
- (id)_preferredInternalCamera;
- (unsigned)_desiredImageOrientation;
- (void)_clearResumeCapturingTimer;
- (void)_endSession;
- (void)_executeBlockWithLockedCameraDevice:(id)a3;
- (void)_pauseSessionIfNeeded;
- (void)_resetSessionWithCompletionHandler:(id)a3;
- (void)_restartSessionIfNeeded;
- (void)_startSession;
- (void)_startSessionConnectingPreviewLayer:(id)a3;
- (void)_updateCameraDevice;
- (void)_updateUserPreferredCameraIfNeeded;
- (void)_updateVideoRotationAngleIfNeeded;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)continueUserActivity:(id)a3;
- (void)createSessionIfNeededConnectingPreviewLayer:(id)a3 completion:(id)a4;
- (void)endSession;
- (void)executeBlockAsynchronouslyWithLockedCameraDevice:(id)a3;
- (void)executeBlockSynchronouslyWithLockedCameraDevice:(id)a3;
- (void)focusWithMode:(int64_t)a3 exposeWithMode:(int64_t)a4 atDevicePoint:(CGPoint)a5 monitorSubjectAreaChange:(BOOL)a6;
- (void)liveViewController:(id)a3 torchModeChangedTo:(BOOL)a4;
- (void)liveViewControllerDidResetCapture:(id)a3;
- (void)liveViewControllerWillPerformAction:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resumeCapturing;
- (void)setLiveZoomFactor:(double)a3;
- (void)suspendCapturing;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BCSRootViewController

- (BCSRootViewController)init
{
  v13.receiver = self;
  v13.super_class = BCSRootViewController;
  v2 = [(BCSRootViewController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(2, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.BarcodeScanner.sessionQueue", 0, v3);
    captureQueue = v2->_captureQueue;
    v2->_captureQueue = v4;

    v6 = objc_alloc_init(BCSVisualCodeDetector);
    codeDetector = v2->_codeDetector;
    v2->_codeDetector = v6;

    if (shouldUseSystemPreferredCamera())
    {
      [objc_opt_class() addObserver:v2 forKeyPath:@"systemPreferredCamera" options:4 context:observerContext];
    }

    else
    {
      v8 = v2->_captureQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__BCSRootViewController_init__block_invoke;
      block[3] = &unk_278D01AE0;
      v12 = v2;
      dispatch_sync(v8, block);
    }

    v9 = v2;
  }

  return v2;
}

uint64_t __29__BCSRootViewController_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bestCaptureDevice];
  v3 = *(a1 + 32);
  v4 = *(v3 + 992);
  *(v3 + 992) = v2;

  [*(*(a1 + 32) + 992) addObserver:*(a1 + 32) forKeyPath:@"torchAvailable" options:0 context:observerContext];
  v5 = *(*(a1 + 32) + 992);

  return [v5 addObserver:? forKeyPath:? options:? context:?];
}

- (void)loadView
{
  v53[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setAutoresizingMask:18];
  v27 = v3;
  [(BCSRootViewController *)self setView:v3];
  v4 = [MEMORY[0x277D75348] systemYellowColor];
  v5 = [(BCSRootViewController *)self view];
  [v5 setTintColor:v4];

  v6 = objc_alloc_init(MEMORY[0x277CE5B68]);
  previewLayer = self->_previewLayer;
  self->_previewLayer = v6;

  v8 = [[BCSLiveViewController alloc] initWithPreviewLayer:self->_previewLayer];
  liveViewController = self->_liveViewController;
  self->_liveViewController = v8;

  [(BCSLiveViewController *)self->_liveViewController setDelegate:self];
  [(BCSRootViewController *)self addChildViewController:self->_liveViewController];
  v49 = [(BCSLiveViewController *)self->_liveViewController view];
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(BCSRootViewController *)self view];
  [v10 addSubview:v49];

  v11 = objc_alloc_init(MEMORY[0x277D75D18]);
  popoverAnchorView = self->_popoverAnchorView;
  self->_popoverAnchorView = v11;

  [(UIView *)self->_popoverAnchorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(BCSRootViewController *)self view];
  [v13 addSubview:self->_popoverAnchorView];

  v28 = MEMORY[0x277CCAAD0];
  v47 = [v49 topAnchor];
  v48 = [(BCSRootViewController *)self view];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v53[0] = v45;
  v43 = [v49 bottomAnchor];
  v44 = [(BCSRootViewController *)self view];
  v42 = [v44 bottomAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v53[1] = v41;
  v39 = [v49 leftAnchor];
  v40 = [(BCSRootViewController *)self view];
  v38 = [v40 leftAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v53[2] = v37;
  v35 = [v49 rightAnchor];
  v36 = [(BCSRootViewController *)self view];
  v34 = [v36 rightAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v53[3] = v33;
  v31 = [(UIView *)self->_popoverAnchorView centerXAnchor];
  v32 = [(BCSRootViewController *)self view];
  v30 = [v32 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v53[4] = v29;
  v14 = [(UIView *)self->_popoverAnchorView bottomAnchor];
  v15 = [(BCSRootViewController *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v53[5] = v17;
  v18 = [(UIView *)self->_popoverAnchorView widthAnchor];
  v19 = [v18 constraintEqualToConstant:1.0];
  v53[6] = v19;
  v20 = [(UIView *)self->_popoverAnchorView heightAnchor];
  v21 = [v20 constraintEqualToConstant:1.0];
  v53[7] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:8];
  [v28 activateConstraints:v22];

  [(BCSLiveViewController *)self->_liveViewController didMoveToParentViewController:self];
  [(BCSRootViewController *)self createSessionIfNeededConnectingPreviewLayer:self->_previewLayer completion:0];
  self->_startTime = CFAbsoluteTimeGetCurrent();
  objc_initWeak(&location, self);
  v23 = objc_alloc(MEMORY[0x277CB8598]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __33__BCSRootViewController_loadView__block_invoke;
  v50[3] = &unk_278D01D80;
  objc_copyWeak(&v51, &location);
  v24 = [v23 initWithEventHandler:v50];
  v25 = [(BCSRootViewController *)self view];
  [v25 addInteraction:v24];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x277D85DE8];
}

void __33__BCSRootViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v4 phase] == 1)
  {
    WeakRetained[1064] = 1;
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  self->_statusBarOrientation = [v3 statusBarOrientation];

  v4 = [(BCSRootViewController *)self _desiredImageOrientation];
  codeDetector = self->_codeDetector;

  [(BCSVisualCodeDetector *)codeDetector setImageOrientation:v4];
}

- (id)_bestCaptureDevice
{
  if (!shouldUseSystemPreferredCamera())
  {
    v9 = [(BCSRootViewController *)self _preferredInternalCamera];
    goto LABEL_11;
  }

  v3 = [MEMORY[0x277CE5AC8] systemPreferredCamera];
  v4 = [v3 deviceType];
  v5 = v4;
  if (v4 == *MEMORY[0x277CE5860])
  {

    goto LABEL_7;
  }

  v6 = [v3 deviceType];
  v7 = *MEMORY[0x277CE5870];

  if (v6 == v7)
  {
LABEL_7:
    v10 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_2419E7000, v10, OS_LOG_TYPE_INFO, "Found ultra wide camera or triple camera from systemPreferredCamera, use preferred internal camera.", v12, 2u);
    }

    v8 = [(BCSRootViewController *)self _preferredInternalCamera];
    goto LABEL_10;
  }

  v8 = v3;
LABEL_10:
  v9 = v8;

LABEL_11:

  return v9;
}

- (id)_preferredInternalCamera
{
  v34[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE5AD0];
  v3 = *MEMORY[0x277CE5840];
  v4 = *MEMORY[0x277CE5878];
  v34[0] = *MEMORY[0x277CE5840];
  v34[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v6 = [v2 discoverySessionWithDeviceTypes:v5 mediaType:*MEMORY[0x277CE5EA8] position:1];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v6;
  obj = [v6 devices];
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v26 = 0;
  v9 = 0;
  v10 = 0;
  v27 = *v30;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v30 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * i);
      v13 = [(BCSRootViewController *)self _bestCaptureFormatForDevice:v12];
      v14 = [v13 highResolutionStillImageDimensions];

      if (!v10)
      {
        v10 = v12;
        v26 = HIDWORD(v14);
        v9 = v14;
        continue;
      }

      v15 = [v12 deviceType];
      v16 = v15;
      if (v15 == v3)
      {
      }

      else
      {
        v17 = [v10 deviceType];

        if (v17 == v3)
        {
          continue;
        }
      }

      v18 = [v12 deviceType];
      v19 = v18;
      if (v18 == v3)
      {
        v20 = [v10 deviceType];

        if (v20 != v3)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if (([v10 hasTorch] & 1) == 0 && objc_msgSend(v12, "hasTorch") || v14 * HIDWORD(v14) > (v9 * v26))
      {
LABEL_19:
        v21 = v12;

        v26 = HIDWORD(v14);
        v9 = v14;
        v10 = v21;
        continue;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v8);
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_updateCameraDevice
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(BCSRootViewController *)self _bestCaptureDevice];
  v4 = v3;
  if (self->_cameraDevice != v3)
  {
    v5 = [(AVCaptureDevice *)v3 position];
    v6 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5 == 2)
    {
      if (v7)
      {
        *buf = 138543362;
        v15 = v4;
        _os_log_impl(&dword_2419E7000, v6, OS_LOG_TYPE_INFO, "Ignoring front-facing camera: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 138477827;
        v15 = v4;
        _os_log_impl(&dword_2419E7000, v6, OS_LOG_TYPE_INFO, "Updating cameraDevice to system preferred: %{private}@", buf, 0xCu);
      }

      [(AVCaptureDeviceRotationCoordinator *)self->_videoRotationCoordinator removeObserver:self forKeyPath:@"videoRotationAngleForHorizonLevelPreview"];
      [(AVCaptureDevice *)self->_cameraDevice removeObserver:self forKeyPath:@"torchAvailable"];
      [(AVCaptureDevice *)self->_cameraDevice removeObserver:self forKeyPath:@"torchActive"];
      v8 = [(AVCaptureDevice *)v4 deviceType];
      v9 = *MEMORY[0x277CE5890];

      if (v8 == v9)
      {
        [(BCSRootViewController *)self _endSession];
      }

      objc_storeStrong(&self->_cameraDevice, v4);
      [(AVCaptureDevice *)self->_cameraDevice addObserver:self forKeyPath:@"torchAvailable" options:4 context:observerContext];
      [(AVCaptureDevice *)self->_cameraDevice addObserver:self forKeyPath:@"torchActive" options:4 context:observerContext];
      v10 = [objc_alloc(MEMORY[0x277CE5AE0]) initWithDevice:self->_cameraDevice previewLayer:self->_previewLayer];
      videoRotationCoordinator = self->_videoRotationCoordinator;
      self->_videoRotationCoordinator = v10;

      [(AVCaptureDeviceRotationCoordinator *)self->_videoRotationCoordinator addObserver:self forKeyPath:@"videoRotationAngleForHorizonLevelPreview" options:4 context:observerContext];
      [(BCSRootViewController *)self _startSessionConnectingPreviewLayer:self->_previewLayer];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__BCSRootViewController__updateCameraDevice__block_invoke;
      block[3] = &unk_278D01AE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateUserPreferredCameraIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE5AC8] userPreferredCamera];
  v4 = v3;
  if (v3 && [v3 position] != 1)
  {
    v5 = [(BCSRootViewController *)self _preferredInternalCamera];
    v6 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2419E7000, v6, OS_LOG_TYPE_INFO, "Updating userPreferredCamera to %{public}@", &v8, 0xCu);
    }

    [MEMORY[0x277CE5AC8] setUserPreferredCamera:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateVideoRotationAngleIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_needsUpdateVideoRotationAngle)
  {

    [(BCSRootViewController *)self _updateVideoRotationAngle];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (observerContext == a6)
  {
    captureQueue = self->_captureQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__BCSRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278D01D30;
    v15 = v11;
    v16 = self;
    v17 = v10;
    dispatch_async(captureQueue, block);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BCSRootViewController;
    [(BCSRootViewController *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

void __72__BCSRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == objc_opt_class())
  {
    [*(a1 + 40) _updateUserPreferredCameraIfNeeded];
    v8 = *(a1 + 40);

    [v8 _updateCameraDevice];
  }

  else
  {
    v3 = *(a1 + 40);
    if (*(a1 + 32) == *(v3 + 1096))
    {
      *(v3 + 1104) = 1;
      [*(*(a1 + 40) + 1096) videoRotationAngleForHorizonLevelPreview];
      *(*(a1 + 40) + 1112) = v9 * 3.14159265 / 180.0;
      v10 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__BCSRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      block[3] = &unk_278D01AE0;
      block[4] = *(a1 + 40);
      dispatch_after(v10, MEMORY[0x277D85CD0], block);
    }

    else
    {
      v4 = [*(v3 + 992) isTorchAvailable];
      v5 = [*(*(a1 + 40) + 992) isTorchActive];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __72__BCSRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
      v11[3] = &unk_278D01DA8;
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);
      v12 = v6;
      v13 = v7;
      v14 = v4;
      v15 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

uint64_t __72__BCSRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"torchAvailable"])
  {
    v2 = *(*(a1 + 40) + 1024);
    v3 = *(a1 + 48);

    return [v2 torchAvailabilityChangedTo:v3];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"torchActive"];
    if (result)
    {
      v5 = *(*(a1 + 40) + 1024);
      v6 = *(a1 + 49);

      return [v5 torchActivenessChangedTo:v6];
    }
  }

  return result;
}

- (id)_bestCaptureFormatForDevice:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = a3;
  v3 = [v19 formats];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 formatDescription];
        if (CMFormatDescriptionGetMediaSubType(v11) == 875704422)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(v11);
          v13 = Dimensions;
          v14 = HIDWORD(Dimensions);
          if (v6)
          {
            v15 = HIDWORD(Dimensions) * Dimensions;
            if (v15 > v7)
            {
              v16 = v10;

              v6 = v16;
              v7 = v15;
            }
          }

          else
          {
            v6 = v10;
            v7 = v14 * v13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BCSRootViewController *)self presentedViewController];
  v3 = v2;
  v4 = 1;
  if (v2)
  {
    if (([v2 isBeingDismissed] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)endSession
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BCSRootViewController_endSession__block_invoke;
  block[3] = &unk_278D01AE0;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

- (void)_endSession
{
  v27 = *MEMORY[0x277D85DE8];
  [(BCSRootViewController *)self disconnectPreviewLayerFromSession];
  if ([(AVCaptureSession *)self->_currentSession isRunning])
  {
    [(AVCaptureSession *)self->_currentSession stopRunning];
    [(BCSVisualCodeDetector *)self->_codeDetector endSession];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(AVCaptureSession *)self->_currentSession inputs];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVCaptureSession *)self->_currentSession removeInput:*(*(&v21 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(AVCaptureSession *)self->_currentSession outputs];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(AVCaptureSession *)self->_currentSession removeOutput:*(*(&v17 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  currentSession = self->_currentSession;
  self->_currentSession = 0;

  videoRotationCoordinator = self->_videoRotationCoordinator;
  self->_videoRotationCoordinator = 0;

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 removeObserver:self name:*MEMORY[0x277CE5838] object:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startSessionConnectingPreviewLayer:(id)a3
{
  v4 = a3;
  v5 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "scanningToAction", "start capturing", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BCSRootViewController__startSessionConnectingPreviewLayer___block_invoke;
  v7[3] = &unk_278D01C40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BCSRootViewController *)self executeBlockSynchronouslyWithLockedCameraDevice:v7];
}

void __61__BCSRootViewController__startSessionConnectingPreviewLayer___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 1000))
  {
    v3 = objc_alloc_init(MEMORY[0x277CE5B38]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 1000);
    *(v4 + 1000) = v3;

    [*(a1 + 40) setSession:*(*(a1 + 32) + 1000)];
    v6 = [*(*(a1 + 32) + 1000) isMultitaskingCameraAccessSupported];
    v2 = *(a1 + 32);
    if (v6)
    {
      [*(v2 + 1000) setMultitaskingCameraAccessEnabled:1];
      v2 = *(a1 + 32);
    }
  }

  [*(v2 + 1000) beginConfiguration];
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v49 = 0u;
  v7 = [*(*(a1 + 32) + 1000) inputs];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      v11 = 0;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 32) + 1000) removeInput:*(*(&v49 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = [*(*(a1 + 32) + 1000) outputs];
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      v16 = 0;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(a1 + 32) + 1000) removeOutput:*(*(&v45 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v14);
  }

  v17 = *(*(a1 + 32) + 992);
  v44 = 0;
  v18 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v17 error:&v44];
  v19 = v44;
  v20 = *(*(a1 + 32) + 1000);
  if (v19 || (v21 = [v20 canAddInput:v18], v20 = *(*(a1 + 32) + 1000), (v21 & 1) == 0))
  {
    [v20 commitConfiguration];
    [*(a1 + 32) endSession];
  }

  else
  {
    [v20 addInput:v18];
    v22 = objc_alloc_init(MEMORY[0x277CE5B60]);
    v53 = *MEMORY[0x277CC4E30];
    v54 = &unk_2853A10C0;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v22 setVideoSettings:v23];

    [v22 setSampleBufferDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 1016)];
    v24 = [*(*(a1 + 32) + 1000) canAddOutput:v22];
    v25 = *(*(a1 + 32) + 1000);
    if (v24)
    {
      [v25 addOutput:v22];
      v26 = [v22 connectionWithMediaType:*MEMORY[0x277CE5EA8]];
      if ([v26 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v26 setCameraIntrinsicMatrixDeliveryEnabled:1];
      }

      else
      {
        v28 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2419E7000, v28, OS_LOG_TYPE_INFO, "Camera intrinsic matrix delivery not supported", buf, 2u);
        }
      }

      if ([*(*(a1 + 32) + 992) isExposureModeSupported:2])
      {
        [*(*(a1 + 32) + 992) setExposureMode:2];
      }

      if ([*(*(a1 + 32) + 992) isWhiteBalanceModeSupported:2])
      {
        [*(*(a1 + 32) + 992) setWhiteBalanceMode:2];
      }

      [*(*(a1 + 32) + 992) setVideoZoomFactor:1.0];
      if ([*(*(a1 + 32) + 1000) supportsControls])
      {
        [*(*(a1 + 32) + 1000) setControlsDelegate:*(*(a1 + 32) + 1024) queue:*(*(a1 + 32) + 1016)];
        v29 = [objc_alloc(MEMORY[0x277CE5B58]) initWithDevice:*(*(a1 + 32) + 992)];
        if ([*(*(a1 + 32) + 1000) canAddControl:v29])
        {
          [*(*(a1 + 32) + 1000) addControl:v29];
        }
      }

      v30 = *MEMORY[0x277CE5978];
      v31 = [*(*(a1 + 32) + 1000) canSetSessionPreset:*MEMORY[0x277CE5978]];
      v32 = *(*(a1 + 32) + 1000);
      if (v31)
      {
        v33 = v30;
      }

      else
      {
        v33 = *MEMORY[0x277CE5988];
      }

      [*(*(a1 + 32) + 1000) setSessionPreset:v33];
      if (shouldUseSystemPreferredCamera())
      {
        v34 = [*(*(a1 + 32) + 1008) connection];
        [v34 setVideoRotationAngle:0.0];

        v35 = [*(*(a1 + 32) + 1008) connection];
        v36 = [v35 isVideoMirroringSupported];

        if (v36)
        {
          v37 = [*(*(a1 + 32) + 1008) connection];
          [v37 setAutomaticallyAdjustsVideoMirroring:0];

          v38 = [*(*(a1 + 32) + 1008) connection];
          [v38 setVideoMirrored:0];
        }
      }

      [*(*(a1 + 32) + 1000) commitConfiguration];
      [*(*(a1 + 32) + 1000) startRunning];
      [*(*(a1 + 32) + 1096) videoRotationAngleForHorizonLevelPreview];
      *(*(a1 + 32) + 1112) = v39 * 3.14159265 / 180.0;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__BCSRootViewController__startSessionConnectingPreviewLayer___block_invoke_40;
      block[3] = &unk_278D01AE0;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
      [*(*(a1 + 32) + 1080) startSession];
      v40 = [MEMORY[0x277CCAB98] defaultCenter];
      [v40 addObserver:*(a1 + 32) selector:sel_subjectAreaDidChange_ name:*MEMORY[0x277CE5838] object:*(*(a1 + 32) + 992)];

      v41 = [MEMORY[0x277CCAB98] defaultCenter];
      [v41 addObserver:*(a1 + 32) selector:sel_didLaunchFromControl_ name:*MEMORY[0x277CF0AE8] object:0];
    }

    else
    {
      [v25 commitConfiguration];
      [*(a1 + 32) endSession];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_executeBlockWithLockedCameraDevice:(id)a3
{
  cameraDevice = self->_cameraDevice;
  v7 = 0;
  v5 = a3;
  [(AVCaptureDevice *)cameraDevice lockForConfiguration:&v7];
  v6 = v7;
  v5[2](v5, v6 == 0);

  [(AVCaptureDevice *)self->_cameraDevice unlockForConfiguration];
}

- (void)executeBlockAsynchronouslyWithLockedCameraDevice:(id)a3
{
  v4 = a3;
  captureQueue = self->_captureQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__BCSRootViewController_executeBlockAsynchronouslyWithLockedCameraDevice___block_invoke;
  v7[3] = &unk_278D01DD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(captureQueue, v7);
}

- (void)executeBlockSynchronouslyWithLockedCameraDevice:(id)a3
{
  captureQueue = self->_captureQueue;
  v5 = a3;
  dispatch_assert_queue_V2(captureQueue);
  [(BCSRootViewController *)self _executeBlockWithLockedCameraDevice:v5];
}

- (void)createSessionIfNeededConnectingPreviewLayer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__BCSRootViewController_createSessionIfNeededConnectingPreviewLayer_completion___block_invoke;
  block[3] = &unk_278D01DF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(captureQueue, block);
}

uint64_t __80__BCSRootViewController_createSessionIfNeededConnectingPreviewLayer_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2[125])
  {
    if (v3)
    {
      v4 = [a1[5] session];
      v5 = *(a1[4] + 1000);

      if (v4 != v5)
      {
        [a1[5] setSession:*(a1[4] + 1000)];
      }
    }
  }

  else
  {
    [v2 _startSessionConnectingPreviewLayer:v3];
  }

  result = a1[6];
  if (result)
  {
    v7 = *(a1[4] + 1000);
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)setLiveZoomFactor:(double)a3
{
  captureQueue = self->_captureQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__BCSRootViewController_setLiveZoomFactor___block_invoke;
  v4[3] = &unk_278D01E48;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(captureQueue, v4);
}

uint64_t __43__BCSRootViewController_setLiveZoomFactor___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) isRunning];
  if (result)
  {
    v3 = *(a1 + 40);
    [*(*(a1 + 32) + 992) videoZoomFactor];
    v5 = v3 * v4;
    v6 = [*(*(a1 + 32) + 992) activeFormat];
    [v6 videoMaxZoomFactor];
    v8 = v7;

    if (v5 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    v10 = *(a1 + 32);
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x277D85DD0];
    v11[2] = __43__BCSRootViewController_setLiveZoomFactor___block_invoke_2;
    v11[3] = &unk_278D01E20;
    v11[4] = v10;
    v11[5] = fmax(v9, 1.0);
    return [v10 executeBlockSynchronouslyWithLockedCameraDevice:v11];
  }

  return result;
}

uint64_t __43__BCSRootViewController_setLiveZoomFactor___block_invoke_2(uint64_t result, int a2, double a3, double a4)
{
  if (a2)
  {
    LODWORD(a4) = 1157234688;
    return [*(*(result + 32) + 992) rampToVideoZoomFactor:*(result + 40) withRate:a4];
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = BCSRootViewController;
  v7 = a4;
  [(BCSRootViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(BCSLiveViewController *)self->_liveViewController rotationAnimationWillStart];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__BCSRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_278D01E70;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__BCSRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278D01E70;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

void __76__BCSRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = shouldUseSystemPreferredCamera();
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 _updateVideoRotationAngle];
  }

  else
  {
    v4 = v3[128];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v9 statusBarOrientation];
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 _referenceBounds];
    [v4 compensateForInterfaceOrientationInLiveView:v5 referenceSize:{v7, v8}];
  }
}

- (void)_startSession
{
  v3 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "scanningToAction", "restart capturing", buf, 2u);
  }

  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BCSRootViewController__startSession__block_invoke;
  block[3] = &unk_278D01AE0;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

void __38__BCSRootViewController__startSession__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1040) = CFAbsoluteTimeGetCurrent();
  [*(*(a1 + 32) + 1000) startRunning];
  [*(*(a1 + 32) + 1080) startSession];
  v2 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2419E7000, v2, OS_LOG_TYPE_INFO, "liveViewControllerDidResetCapture - startRunning.", v3, 2u);
  }
}

- (void)_pauseSessionIfNeeded
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BCSRootViewController__pauseSessionIfNeeded__block_invoke;
  block[3] = &unk_278D01AE0;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

void __46__BCSRootViewController__pauseSessionIfNeeded__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1000) isRunning])
  {
    [*(*(a1 + 32) + 1000) stopRunning];
    [*(*(a1 + 32) + 1080) endSession];
    v2 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_2419E7000, v2, OS_LOG_TYPE_INFO, "_pauseSessionIfNeeded - stopRunning.", v3, 2u);
    }
  }
}

- (void)_resetSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__BCSRootViewController__resetSessionWithCompletionHandler___block_invoke;
  v11 = &unk_278D01DD0;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(BCSRootViewController *)self presentedViewController:v8];

  if (v7)
  {
    [(BCSRootViewController *)self dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

void __60__BCSRootViewController__resetSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __60__BCSRootViewController__resetSessionWithCompletionHandler___block_invoke_2;
  v6 = &unk_278D01DD0;
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v2;
  dispatch_async(MEMORY[0x277D85CD0], &v3);
  [*(a1 + 32) createSessionIfNeededConnectingPreviewLayer:*(*(a1 + 32) + 1008) completion:{0, v3, v4, v5, v6, v7}];
}

uint64_t __60__BCSRootViewController__resetSessionWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) resetUIAndStartCapturing:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_restartSessionIfNeeded
{
  previewLayer = self->_previewLayer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__BCSRootViewController__restartSessionIfNeeded__block_invoke;
  v3[3] = &unk_278D01E98;
  v3[4] = self;
  [(BCSRootViewController *)self createSessionIfNeededConnectingPreviewLayer:previewLayer completion:v3];
}

void __48__BCSRootViewController__restartSessionIfNeeded__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1000) isRunning])
  {
    v2 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2419E7000, v2, OS_LOG_TYPE_INFO, "_restartSessionIfNeeded - isRunning.", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__BCSRootViewController__restartSessionIfNeeded__block_invoke_50;
    block[3] = &unk_278D01AE0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_clearResumeCapturingTimer
{
  [(NSTimer *)self->_resumeCapturingTimer invalidate];
  resumeCapturingTimer = self->_resumeCapturingTimer;
  self->_resumeCapturingTimer = 0;
}

- (void)suspendCapturing
{
  v4 = [(BCSLiveViewController *)self->_liveViewController actionCoordinator];
  if ([v4 deviceIsBeingUnlocked])
  {
  }

  else
  {
    deviceIsBeingUnlocked = self->_deviceIsBeingUnlocked;

    if (!deviceIsBeingUnlocked)
    {
      [(BCSRootViewController *)self _clearResumeCapturingTimer];

      [(BCSRootViewController *)self _pauseSessionIfNeeded];
    }
  }
}

- (void)resumeCapturing
{
  v3 = [(BCSLiveViewController *)self->_liveViewController actionCoordinator];
  if ([v3 deviceIsBeingUnlocked])
  {

LABEL_4:
    self->_deviceIsBeingUnlocked = 0;
    return;
  }

  deviceIsBeingUnlocked = self->_deviceIsBeingUnlocked;

  if (deviceIsBeingUnlocked)
  {
    goto LABEL_4;
  }

  [(BCSRootViewController *)self _clearResumeCapturingTimer];
  if (self->_applicationWasInBackground)
  {
    self->_applicationWasInBackground = 0;
  }

  else
  {
    v5 = [(BCSRootViewController *)self presentedViewController];

    if (v5)
    {
      v6 = [(BCSRootViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {

        [(BCSRootViewController *)self _startSession];
      }
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__BCSRootViewController_resumeCapturing__block_invoke;
      v10[3] = &unk_278D01EC0;
      v10[4] = self;
      v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v10 block:0.1];
      resumeCapturingTimer = self->_resumeCapturingTimer;
      self->_resumeCapturingTimer = v8;
    }
  }
}

- (void)applicationWillEnterForeground
{
  v4 = [(BCSLiveViewController *)self->_liveViewController actionCoordinator];
  if ([v4 deviceIsBeingUnlocked])
  {
  }

  else
  {
    deviceIsBeingUnlocked = self->_deviceIsBeingUnlocked;

    if (!deviceIsBeingUnlocked && self->_applicationWasInBackground)
    {

      [(BCSRootViewController *)self _restartSessionIfNeeded];
    }
  }
}

- (void)applicationDidEnterBackground
{
  v10 = [(BCSLiveViewController *)self->_liveViewController actionCoordinator];
  if ([v10 deviceIsBeingUnlocked])
  {
  }

  else
  {
    deviceIsBeingUnlocked = self->_deviceIsBeingUnlocked;

    if (!deviceIsBeingUnlocked)
    {
      v4 = [(BCSRootViewController *)self presentedViewController];

      if (!v4)
      {
        [(BCSRootViewController *)self _clearResumeCapturingTimer];
        [(BCSLiveViewController *)self->_liveViewController resetUIAndStartCapturing:0];
        v5 = [MEMORY[0x277D75128] sharedApplication];
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __54__BCSRootViewController_applicationDidEnterBackground__block_invoke;
        v14[3] = &unk_278D01EE8;
        v6 = v5;
        v15 = v6;
        v16 = &v17;
        v7 = [v6 beginBackgroundTaskWithName:@"com.apple.BarcodeScanner.BackgroundTask" expirationHandler:v14];
        v18[3] = v7;
        captureQueue = self->_captureQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__BCSRootViewController_applicationDidEnterBackground__block_invoke_2;
        block[3] = &unk_278D01F10;
        block[4] = self;
        v12 = v6;
        v13 = &v17;
        v9 = v6;
        dispatch_async(captureQueue, block);
        self->_applicationWasInBackground = 1;

        _Block_object_dispose(&v17, 8);
      }
    }
  }
}

uint64_t __54__BCSRootViewController_applicationDidEnterBackground__block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1000) isRunning])
  {
    [*(*(a1 + 32) + 1000) stopRunning];
    v2 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2419E7000, v2, OS_LOG_TYPE_INFO, "applicationDidEnterBackground - stopRunning.", v4, 2u);
    }
  }

  return [*(a1 + 40) endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)continueUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"detectedCode"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
    v8 = v17;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSRootViewController continueUserActivity:v9];
      }
    }

    else
    {
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"detectedImage"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = 0;
        v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v16];
        v9 = v16;
        if (v9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [BCSRootViewController continueUserActivity:v9];
          }
        }

        else
        {
          [(BCSRootViewController *)self _clearResumeCapturingTimer];
          +[BCSSecureCaptureSession beginDelayingAppearance];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __46__BCSRootViewController_continueUserActivity___block_invoke;
          v13[3] = &unk_278D01D30;
          v13[4] = self;
          v14 = v7;
          v15 = v12;
          [(BCSRootViewController *)self _resetSessionWithCompletionHandler:v13];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [BCSRootViewController continueUserActivity:];
        }

        v9 = 0;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSRootViewController continueUserActivity:];
  }
}

uint64_t __46__BCSRootViewController_continueUserActivity___block_invoke(void *a1)
{
  *(a1[4] + 1032) = 1;
  *(a1[4] + 1066) = 1;
  [*(a1[4] + 1024) didCaptureVisualCode:a1[5] image:a1[6] shouldAnimate:0];

  return +[BCSSecureCaptureSession endDelayingAppearance];
}

- (unsigned)_desiredImageOrientation
{
  if (shouldUseSystemPreferredCamera())
  {
    v3 = [(AVCaptureDevice *)self->_cameraDevice deviceType];
    v4 = *MEMORY[0x277CE5890];

    if (v3 == v4)
    {
      return 1;
    }
  }

  v5 = self->_statusBarOrientation - 2;
  if (v5 > 2)
  {
    return 6;
  }

  else
  {
    return dword_241A06548[v5];
  }
}

- (void)focusWithMode:(int64_t)a3 exposeWithMode:(int64_t)a4 atDevicePoint:(CGPoint)a5 monitorSubjectAreaChange:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__BCSRootViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke;
  v6[3] = &unk_278D01F38;
  v6[4] = self;
  v6[5] = a3;
  v7 = a5;
  v8 = a4;
  v9 = a6;
  [(BCSRootViewController *)self executeBlockAsynchronouslyWithLockedCameraDevice:v6];
}

uint64_t __93__BCSRootViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if ([*(*(result + 32) + 992) isFocusPointOfInterestSupported] && objc_msgSend(*(*(v2 + 32) + 992), "isFocusModeSupported:", *(v2 + 40)))
    {
      [*(*(v2 + 32) + 992) setFocusPointOfInterest:{*(v2 + 48), *(v2 + 56)}];
      [*(*(v2 + 32) + 992) setFocusMode:*(v2 + 40)];
    }

    if ([*(*(v2 + 32) + 992) isExposurePointOfInterestSupported] && objc_msgSend(*(*(v2 + 32) + 992), "isExposureModeSupported:", *(v2 + 64)))
    {
      [*(*(v2 + 32) + 992) setExposurePointOfInterest:{*(v2 + 48), *(v2 + 56)}];
      [*(*(v2 + 32) + 992) setExposureMode:*(v2 + 64)];
    }

    v3 = *(v2 + 72);
    v4 = *(*(v2 + 32) + 992);

    return [v4 setSubjectAreaChangeMonitoringEnabled:v3];
  }

  return result;
}

- (BOOL)_isCapturingSteady
{
  if ([(AVCaptureDevice *)self->_cameraDevice isAdjustingExposure])
  {
    return 0;
  }

  else
  {
    return ![(AVCaptureDevice *)self->_cameraDevice isAdjustingFocus];
  }
}

- (id)_bestCandidateVisualCode:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = 1;
  }

  else if ([v4 count] == 2)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0x7FEFFFFFFFFFFFFFLL;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__BCSRootViewController__bestCandidateVisualCode___block_invoke;
    v9[3] = &unk_278D01F60;
    v9[4] = v14;
    v9[5] = &v10;
    [v4 enumerateObjectsUsingBlock:v9];
    v5 = [v4 objectAtIndex:v11[3]];
    [v5 boundingBox];
    if (CGRectGetWidth(v16) >= 0.05)
    {
      v6 = 1;
    }

    else
    {

      v5 = 0;
      v6 = 2;
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(v14, 8);
  }

  else
  {
    v5 = 0;
    v6 = 2 * ([v4 count] > 2);
  }

  if (self->_lastAvailability != v6)
  {
    self->_lastAvailability = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__BCSRootViewController__bestCandidateVisualCode___block_invoke_2;
    v8[3] = &unk_278D01E48;
    v8[4] = self;
    v8[5] = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  return v5;
}

uint64_t __50__BCSRootViewController__bestCandidateVisualCode___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 boundingBox];
  result = _bcs_pointToRectDistance();
  v7 = *(*(a1 + 32) + 8);
  if (v6 < *(v7 + 24))
  {
    *(v7 + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!self->_hasCapturedCode && (self->_shouldScanFaster || [(BCSRootViewController *)self _isCapturingSteady]) && CMSampleBufferGetNumSamples(a4) == 1 && CMSampleBufferIsValid(a4) && CMSampleBufferDataIsReady(a4))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    codeDetector = self->_codeDetector;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__BCSRootViewController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
    v11[3] = &unk_278D01F88;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = a4;
    [(BCSVisualCodeDetector *)codeDetector detectCodeFromBuffer:a4 completion:v11];
    if (*(v13 + 24) == 1)
    {
      [(BCSVisualCodeDetector *)self->_codeDetector resetCache];
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __76__BCSRootViewController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _bestCandidateVisualCode:a2];
  if (v3)
  {
    v4 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(a1 + 32) + 1032) = 1;
    *(*(a1 + 32) + 1064) = 0;
    v5 = [*(a1 + 32) _imageFromLastVideoSample:v4 rect:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BCSRootViewController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2;
    block[3] = &unk_278D01D30;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)liveViewControllerWillPerformAction:(id)a3
{
  v4 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "scanningToAction", "end capturing enableTelemetry=YES ", buf, 2u);
  }

  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BCSRootViewController_liveViewControllerWillPerformAction___block_invoke;
  block[3] = &unk_278D01AE0;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

void __61__BCSRootViewController_liveViewControllerWillPerformAction___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) stopRunning];
  [*(*(a1 + 32) + 1080) endSession];
  v2 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2419E7000, v2, OS_LOG_TYPE_INFO, "liveViewControllerWillPerformAction - stopRunning.", v3, 2u);
  }
}

- (void)liveViewControllerDidResetCapture:(id)a3
{
  self->_hasCapturedCode = 0;
  self->_shouldScanFaster = 0;
  self->_lastAvailability = 0;
  [(BCSRootViewController *)self _startSession];
}

- (BOOL)liveViewControllerTorchModeSupported:(id)a3
{
  v4 = [(AVCaptureDevice *)self->_cameraDevice hasTorch];
  if (v4)
  {
    cameraDevice = self->_cameraDevice;

    LOBYTE(v4) = [(AVCaptureDevice *)cameraDevice isTorchModeSupported:1];
  }

  return v4;
}

- (void)liveViewController:(id)a3 torchModeChangedTo:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__BCSRootViewController_liveViewController_torchModeChangedTo___block_invoke;
  v4[3] = &unk_278D01FB0;
  v5 = a4;
  v4[4] = self;
  [(BCSRootViewController *)self _executeBlockWithLockedCameraDevice:v4];
}

void __63__BCSRootViewController_liveViewController_torchModeChangedTo___block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 992);
    if (v3 == 1)
    {
      v7 = 0;
      LODWORD(a3) = 1.0;
      [v4 setTorchModeOnWithLevel:&v7 error:a3];
      v5 = v7;
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __63__BCSRootViewController_liveViewController_torchModeChangedTo___block_invoke_cold_1(v5);
        }
      }
    }

    else
    {

      [v4 setTorchMode:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2419E7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSRootViewController: unable to gain exclusive ownership of the device to adjust the torch", v6, 2u);
  }
}

- (id)_imageFromLastVideoSample:(opaqueCMSampleBuffer *)a3 rect:(CGRect)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v6 = MEMORY[0x277CBF758];
    v7 = *MEMORY[0x277CBFA08];
    v18[0] = MEMORY[0x277CBEC38];
    v8 = *MEMORY[0x277CBFA68];
    v17[0] = v7;
    v17[1] = v8;
    v15 = *MEMORY[0x277CD3410];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BCSRootViewController _desiredImageOrientation](self, "_desiredImageOrientation")}];
    v16 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v6 imageWithCVPixelBuffer:ImageBuffer options:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)continueUserActivity:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)continueUserActivity:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __63__BCSRootViewController_liveViewController_torchModeChangedTo___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end