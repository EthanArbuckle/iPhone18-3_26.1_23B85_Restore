@interface CDZQRScanningViewController
- (CDZQRScanningViewController)init;
- (CDZQRScanningViewController)initWithMetadataObjectTypes:(id)types;
- (UILabel)cameraUnavailableLabel;
- (void)cancelItemSelected:(id)selected;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)dealloc;
- (void)handleFocusTap:(id)tap;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionRuntimeError:(id)error;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setAvSession:(id)session;
- (void)toggleTorch:(id)torch;
- (void)turnTorchOff;
- (void)turnTorchOn;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CDZQRScanningViewController

- (UILabel)cameraUnavailableLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraUnavailableLabel);

  return WeakRetained;
}

- (void)sessionInterruptionEnded:(id)ended
{
  cameraUnavailableLabel = [(CDZQRScanningViewController *)self cameraUnavailableLabel];
  isHidden = [cameraUnavailableLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CDZQRScanningViewController_sessionInterruptionEnded___block_invoke;
    v7[3] = &unk_278C37538;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__CDZQRScanningViewController_sessionInterruptionEnded___block_invoke_2;
    v6[3] = &unk_278C37560;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.25];
  }
}

void __56__CDZQRScanningViewController_sessionInterruptionEnded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraUnavailableLabel];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) previewLayer];
  LODWORD(v3) = 1.0;
  [v4 setOpacity:v3];
}

void __56__CDZQRScanningViewController_sessionInterruptionEnded___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraUnavailableLabel];
  [v1 setHidden:1];
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  userInfo = [interruptedCopy userInfo];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr;
  v21 = getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr;
  if (!getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr)
  {
    v16[5] = MEMORY[0x277D85DD0];
    v16[6] = 3221225472;
    v16[7] = __getAVCaptureSessionInterruptionReasonKeySymbolLoc_block_invoke;
    v16[8] = &unk_278C37610;
    v17 = &v18;
    v7 = AVFoundationLibrary_5485();
    v19[3] = dlsym(v7, "AVCaptureSessionInterruptionReasonKey");
    getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    v8 = [userInfo objectForKeyedSubscript:*v6];
    integerValue = [v8 integerValue];

    if (integerValue == 4)
    {
      v10 = @"Camera Unavailable in Multitasking";
    }

    else
    {
      v10 = @"Camera Unavailable";
    }

    cameraUnavailableLabel = [(CDZQRScanningViewController *)self cameraUnavailableLabel];
    [cameraUnavailableLabel setText:v10];

    cameraUnavailableLabel2 = [(CDZQRScanningViewController *)self cameraUnavailableLabel];
    [cameraUnavailableLabel2 setAlpha:0.0];

    cameraUnavailableLabel3 = [(CDZQRScanningViewController *)self cameraUnavailableLabel];
    [cameraUnavailableLabel3 setHidden:0];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__CDZQRScanningViewController_sessionWasInterrupted___block_invoke;
    v16[3] = &unk_278C37538;
    v16[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v16 animations:0.25];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVCaptureSessionInterruptionReasonKey(void)"];
    [currentHandler handleFailureInFunction:v15 file:@"CDZQRScanningViewController.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void __53__CDZQRScanningViewController_sessionWasInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraUnavailableLabel];
  [v2 setAlpha:1.0];

  v4 = [*(a1 + 32) previewLayer];
  LODWORD(v3) = 0.5;
  [v4 setOpacity:v3];
}

- (void)sessionRuntimeError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getAVCaptureSessionErrorKeySymbolLoc_ptr;
  v16 = getAVCaptureSessionErrorKeySymbolLoc_ptr;
  if (!getAVCaptureSessionErrorKeySymbolLoc_ptr)
  {
    v7 = AVFoundationLibrary_5485();
    v14[3] = dlsym(v7, "AVCaptureSessionErrorKey");
    getAVCaptureSessionErrorKeySymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v6)
  {
    v8 = [userInfo objectForKeyedSubscript:*v6];

    errorBlock = [(CDZQRScanningViewController *)self errorBlock];

    if (errorBlock)
    {
      errorBlock2 = [(CDZQRScanningViewController *)self errorBlock];
      (errorBlock2)[2](errorBlock2, v8);
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVCaptureSessionErrorKey(void)"];
    [currentHandler handleFailureInFunction:v12 file:@"CDZQRScanningViewController.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  objectsCopy = objects;
  v7 = [objectsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(objectsCopy);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      metadataObjectTypes = [(CDZQRScanningViewController *)self metadataObjectTypes];
      type = [v10 type];
      v13 = [metadataObjectTypes containsObject:type];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [objectsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v7 = v10;
    stringValue = [v7 stringValue];

    if (stringValue)
    {
      lastCapturedString = [(CDZQRScanningViewController *)self lastCapturedString];
      v17 = [lastCapturedString isEqualToString:stringValue];

      if ((v17 & 1) == 0)
      {
        [(CDZQRScanningViewController *)self setLastCapturedString:stringValue];
        avSession = [(CDZQRScanningViewController *)self avSession];
        [avSession stopRunning];

        resultBlock = [(CDZQRScanningViewController *)self resultBlock];

        if (resultBlock)
        {
          resultBlock2 = [(CDZQRScanningViewController *)self resultBlock];
          (resultBlock2)[2](resultBlock2, v7);
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_9:
    stringValue = 0;
    resultBlock2 = objectsCopy;
LABEL_14:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)turnTorchOff
{
  captureDevice = [(CDZQRScanningViewController *)self captureDevice];
  if ([captureDevice hasTorch])
  {
    captureDevice2 = [(CDZQRScanningViewController *)self captureDevice];
    if ([captureDevice2 isTorchModeSupported:0])
    {
      captureDevice3 = [(CDZQRScanningViewController *)self captureDevice];
      v5 = [captureDevice3 lockForConfiguration:0];

      if (!v5)
      {
        return;
      }

      captureDevice4 = [(CDZQRScanningViewController *)self captureDevice];
      [captureDevice4 setTorchMode:0];

      captureDevice = [(CDZQRScanningViewController *)self captureDevice];
      [captureDevice unlockForConfiguration];
    }

    else
    {
    }
  }
}

- (void)turnTorchOn
{
  captureDevice = [(CDZQRScanningViewController *)self captureDevice];
  if (![captureDevice hasTorch])
  {
    goto LABEL_8;
  }

  captureDevice2 = [(CDZQRScanningViewController *)self captureDevice];
  if (([captureDevice2 isTorchAvailable] & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  captureDevice3 = [(CDZQRScanningViewController *)self captureDevice];
  if (([captureDevice3 isTorchModeSupported:1] & 1) == 0)
  {

    goto LABEL_7;
  }

  captureDevice4 = [(CDZQRScanningViewController *)self captureDevice];
  v6 = [captureDevice4 lockForConfiguration:0];

  if (!v6)
  {
    return;
  }

  captureDevice5 = [(CDZQRScanningViewController *)self captureDevice];
  LODWORD(v8) = 0.25;
  [captureDevice5 setTorchModeOnWithLevel:0 error:v8];

  captureDevice = [(CDZQRScanningViewController *)self captureDevice];
  [captureDevice unlockForConfiguration];
LABEL_8:
}

- (void)handleFocusTap:(id)tap
{
  tapCopy = tap;
  view = [(CDZQRScanningViewController *)self view];
  [tapCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  previewLayer = [(CDZQRScanningViewController *)self previewLayer];
  [previewLayer captureDevicePointOfInterestForPoint:{v7, v9}];
  v12 = v11;
  v14 = v13;

  captureDevice = [(CDZQRScanningViewController *)self captureDevice];
  v18 = 0;
  LODWORD(view) = [captureDevice lockForConfiguration:&v18];
  v16 = v18;
  v17 = v16;
  if (view)
  {
    if ([captureDevice isFocusPointOfInterestSupported] && objc_msgSend(captureDevice, "isFocusModeSupported:", 1))
    {
      [captureDevice setFocusMode:1];
      [captureDevice setFocusPointOfInterest:{v12, v14}];
    }

    if ([captureDevice isExposurePointOfInterestSupported] && objc_msgSend(captureDevice, "isExposureModeSupported:", 1))
    {
      [captureDevice setExposureMode:1];
      [captureDevice setExposurePointOfInterest:{v12, v14}];
    }

    [captureDevice unlockForConfiguration];
  }

  else
  {
    NSLog(&cfstr_CaptureDeviceC.isa, v16);
  }
}

- (void)toggleTorch:(id)torch
{
  captureDevice = [(CDZQRScanningViewController *)self captureDevice];
  isTorchActive = [captureDevice isTorchActive];

  if (isTorchActive)
  {
    [(CDZQRScanningViewController *)self turnTorchOff];
  }

  else
  {
    [(CDZQRScanningViewController *)self turnTorchOn];
  }

  torchButton = [(CDZQRScanningViewController *)self torchButton];
  [torchButton setSelected:isTorchActive ^ 1u];
}

- (void)cancelItemSelected:(id)selected
{
  avSession = [(CDZQRScanningViewController *)self avSession];
  [avSession stopRunning];

  cancelBlock = [(CDZQRScanningViewController *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(CDZQRScanningViewController *)self cancelBlock];
    cancelBlock2[2]();
  }
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = CDZQRScanningViewController;
  [(CDZQRScanningViewController *)&v23 viewDidLayoutSubviews];
  view = [(CDZQRScanningViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  previewLayer = [(CDZQRScanningViewController *)self previewLayer];
  [previewLayer setBounds:{v5, v7, v9, v11}];

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  MidY = CGRectGetMidY(v25);
  previewLayer2 = [(CDZQRScanningViewController *)self previewLayer];
  [previewLayer2 setPosition:{MidX, MidY}];

  previewLayer3 = [(CDZQRScanningViewController *)self previewLayer];
  connection = [previewLayer3 connection];
  isVideoOrientationSupported = [connection isVideoOrientationSupported];

  if (isVideoOrientationSupported)
  {
    v19 = [objc_msgSend(MEMORY[0x277D75128] performSelector:{sel_sharedApplication), "statusBarOrientation"}];
    if ((v19 - 2) >= 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    previewLayer4 = [(CDZQRScanningViewController *)self previewLayer];
    connection2 = [previewLayer4 connection];
    [connection2 setVideoOrientation:v20];
  }
}

void __46__CDZQRScanningViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cancelBlock];

  if (v1)
  {
    v2 = [WeakRetained avSession];
    [v2 stopRunning];

    v3 = [WeakRetained cancelBlock];
    v3[2]();
  }
}

void __46__CDZQRScanningViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2050000000;
  v2 = getAVCaptureDeviceClass_softClass;
  v59 = getAVCaptureDeviceClass_softClass;
  if (!getAVCaptureDeviceClass_softClass)
  {
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __getAVCaptureDeviceClass_block_invoke;
    v54 = &unk_278C37610;
    v55 = &v56;
    __getAVCaptureDeviceClass_block_invoke(&v51);
    v2 = v57[3];
  }

  v3 = v2;
  _Block_object_dispose(&v56, 8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v4 = getAVMediaTypeVideoSymbolLoc_ptr_5512;
  v59 = getAVMediaTypeVideoSymbolLoc_ptr_5512;
  if (!getAVMediaTypeVideoSymbolLoc_ptr_5512)
  {
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __getAVMediaTypeVideoSymbolLoc_block_invoke_5513;
    v54 = &unk_278C37610;
    v55 = &v56;
    v5 = AVFoundationLibrary_5485();
    v6 = dlsym(v5, "AVMediaTypeVideo");
    *(v55[1] + 24) = v6;
    getAVMediaTypeVideoSymbolLoc_ptr_5512 = *(v55[1] + 24);
    v4 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v4)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeVideo(void)"];
    [v39 handleFailureInFunction:v40 file:@"CDZQRScanningViewController.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v7 = *v4;
  v8 = [v2 defaultDeviceWithMediaType:v7];
  [*(a1 + 32) setCaptureDevice:v8];

  v9 = [*(a1 + 32) captureDevice];
  if ([v9 isLowLightBoostSupported])
  {
    v10 = [*(a1 + 32) captureDevice];
    v11 = [v10 lockForConfiguration:0];

    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [*(a1 + 32) captureDevice];
    [v12 setAutomaticallyEnablesLowLightBoostWhenAvailable:1];

    v9 = [*(a1 + 32) captureDevice];
    [v9 unlockForConfiguration];
  }

LABEL_10:
  v13 = [*(a1 + 32) avSession];
  [v13 beginConfiguration];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2050000000;
  v14 = getAVCaptureDeviceInputClass_softClass_5516;
  v59 = getAVCaptureDeviceInputClass_softClass_5516;
  if (!getAVCaptureDeviceInputClass_softClass_5516)
  {
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __getAVCaptureDeviceInputClass_block_invoke_5517;
    v54 = &unk_278C37610;
    v55 = &v56;
    __getAVCaptureDeviceInputClass_block_invoke_5517(&v51);
    v14 = v57[3];
  }

  v15 = v14;
  _Block_object_dispose(&v56, 8);
  v16 = [*(a1 + 32) captureDevice];
  v50 = 0;
  v17 = [v14 deviceInputWithDevice:v16 error:&v50];
  v41 = v50;

  if (v17)
  {
    v18 = [*(a1 + 32) avSession];
    [v18 addInput:v17];

    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v19 = getAVCaptureMetadataOutputClass_softClass;
    v59 = getAVCaptureMetadataOutputClass_softClass;
    if (!getAVCaptureMetadataOutputClass_softClass)
    {
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __getAVCaptureMetadataOutputClass_block_invoke;
      v54 = &unk_278C37610;
      v55 = &v56;
      __getAVCaptureMetadataOutputClass_block_invoke(&v51);
      v19 = v57[3];
    }

    v20 = v19;
    _Block_object_dispose(&v56, 8);
    v21 = objc_alloc_init(v19);
    v22 = [*(a1 + 32) avSession];
    [v22 addOutput:v21];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = [*(a1 + 32) metadataObjectTypes];
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v24)
    {
      v25 = *v45;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v44 + 1) + 8 * i);
          v28 = [v21 availableMetadataObjectTypes];
          v29 = [v28 containsObject:v27];

          if ((v29 & 1) == 0)
          {
            v35 = [*(a1 + 32) errorBlock];

            if (v35)
            {
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __46__CDZQRScanningViewController_viewWillAppear___block_invoke_4;
              v43[3] = &unk_278C375A0;
              v43[4] = *(a1 + 32);
              v43[5] = v27;
              dispatch_async(MEMORY[0x277D85CD0], v43);
            }

            goto LABEL_27;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v31 = *(a1 + 32);
    v30 = (a1 + 32);
    v32 = [v31 metadataObjectTypes];
    [v21 setMetadataObjectTypes:v32];

    [v21 setMetadataObjectsDelegate:*v30 queue:MEMORY[0x277D85CD0]];
    v33 = [*v30 avSession];
    [v33 commitConfiguration];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CDZQRScanningViewController_viewWillAppear___block_invoke_5;
    block[3] = &unk_278C37538;
    block[4] = *v30;
    v34 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_27:
  }

  else
  {
    NSLog(&cfstr_Qrscanningview.isa, v41);
    v36 = [*(a1 + 32) avSession];
    [v36 commitConfiguration];

    v37 = [*(a1 + 32) errorBlock];

    if (v37)
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __46__CDZQRScanningViewController_viewWillAppear___block_invoke_3;
      v48[3] = &unk_278C375A0;
      v48[4] = *(a1 + 32);
      v49 = v41;
      dispatch_async(MEMORY[0x277D85CD0], v48);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __46__CDZQRScanningViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) avSession];
  [v2 stopRunning];

  v3 = [*(a1 + 32) errorBlock];
  v3[2](v3, *(a1 + 40));
}

void __46__CDZQRScanningViewController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) avSession];
  [v2 stopRunning];

  v3 = [*(a1 + 32) errorBlock];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to scan object of type %@", v5, *MEMORY[0x277CCA450]];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:@"com.cdzombak.qrscanningviewcontroller" code:1 userInfo:v7];
  (v3)[2](v3, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __46__CDZQRScanningViewController_viewWillAppear___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) previewLayer];
  v3 = [v2 connection];
  v4 = [v3 isVideoOrientationSupported];

  if (v4)
  {
    v5 = [objc_msgSend(MEMORY[0x277D75128] performSelector:{sel_sharedApplication), "statusBarOrientation"}];
    if ((v5 - 2) >= 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [*(a1 + 32) previewLayer];
    v8 = [v7 connection];
    [v8 setVideoOrientation:v6];
  }

  v9 = [*(a1 + 32) avSession];
  [v9 startRunning];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CDZQRScanningViewController;
  [(CDZQRScanningViewController *)&v5 viewDidLoad];
  blackColor = [MEMORY[0x277D75348] blackColor];
  view = [(CDZQRScanningViewController *)self view];
  [view setBackgroundColor:blackColor];
}

- (CDZQRScanningViewController)init
{
  v17[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v3 = getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525;
  v16 = getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525;
  if (!getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525)
  {
    v4 = AVFoundationLibrary_5485();
    v14[3] = dlsym(v4, "AVMetadataObjectTypeQRCode");
    getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525 = v14[3];
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeQRCode(void)"];
    [currentHandler handleFailureInFunction:v12 file:@"CDZQRScanningViewController.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v17[0] = *v3;
  v5 = MEMORY[0x277CBEA60];
  v6 = v17[0];
  v7 = [v5 arrayWithObjects:v17 count:1];

  v8 = [(CDZQRScanningViewController *)self initWithMetadataObjectTypes:v7];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setAvSession:(id)session
{
  sessionCopy = session;
  if (self->_avSession)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = getAVCaptureSessionRuntimeErrorNotification();
    [defaultCenter removeObserver:self name:v6 object:self->_avSession];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = getAVCaptureSessionWasInterruptedNotification();
    [defaultCenter2 removeObserver:self name:v8 object:self->_avSession];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = getAVCaptureSessionInterruptionEndedNotification();
    [defaultCenter3 removeObserver:self name:v10 object:self->_avSession];
  }

  objc_storeStrong(&self->_avSession, session);
  if (self->_avSession)
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = getAVCaptureSessionRuntimeErrorNotification();
    [defaultCenter4 addObserver:self selector:sel_sessionRuntimeError_ name:v12 object:self->_avSession];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = getAVCaptureSessionWasInterruptedNotification();
    [defaultCenter5 addObserver:self selector:sel_sessionWasInterrupted_ name:v14 object:self->_avSession];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = getAVCaptureSessionInterruptionEndedNotification();
    [defaultCenter6 addObserver:self selector:sel_sessionInterruptionEnded_ name:v16 object:self->_avSession];
  }
}

- (void)dealloc
{
  [(CDZQRScanningViewController *)self setAvSession:0];
  v3.receiver = self;
  v3.super_class = CDZQRScanningViewController;
  [(CDZQRScanningViewController *)&v3 dealloc];
}

- (CDZQRScanningViewController)initWithMetadataObjectTypes:(id)types
{
  typesCopy = types;
  v36.receiver = self;
  v36.super_class = CDZQRScanningViewController;
  v5 = [(CDZQRScanningViewController *)&v36 init];
  v6 = v5;
  if (v5)
  {
    [(CDZQRScanningViewController *)v5 setMetadataObjectTypes:typesCopy];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"Scan QR Code" value:&stru_2850A01A8 table:0];
    [(CDZQRScanningViewController *)v6 setTitle:v8];

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.fill"];
    [v9 size];
    height = v37.height;
    v37.width = 18.0;
    UIGraphicsBeginImageContextWithOptions(v37, 0, 0.0);
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = 18.0;
    v38.size.height = height;
    MidX = CGRectGetMidX(v38);
    [v9 size];
    v13 = MidX - v12 * 0.5;
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = 18.0;
    v39.size.height = height;
    MidY = CGRectGetMidY(v39);
    [v9 size];
    [v9 drawAtPoint:{v13, MidY - v15 * 0.5}];
    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v17 = [MEMORY[0x277D75220] buttonWithType:1];
    [(UIButton *)v17 setImage:v16 forState:0];
    [(UIButton *)v17 addTarget:v6 action:sel_toggleTorch_ forControlEvents:64];
    [v16 size];
    v19 = v18;
    [v16 size];
    [(UIButton *)v17 setFrame:0.0, 0.0, v19, v20];
    v21 = WFLocalizedString(@"Flash");
    [(UIButton *)v17 setAccessibilityLabel:v21];

    torchButton = v6->_torchButton;
    v6->_torchButton = v17;
    v23 = v17;

    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v23];
    navigationItem = [(CDZQRScanningViewController *)v6 navigationItem];
    [navigationItem setRightBarButtonItem:v24];

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v26 setHidden:1];
    [v26 setTextAlignment:1];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v26 setTextColor:whiteColor];

    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v26 setFont:v28];

    objc_storeWeak(&v6->_cameraUnavailableLabel, v26);
    view = [(CDZQRScanningViewController *)v6 view];
    [view addSubview:v26];

    v30 = _NSDictionaryOfVariableBindings(&cfstr_Unavailablelab.isa, v26, 0);
    v31 = objc_opt_new();
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[unavailableLabel]|" options:0 metrics:0 views:v30];
    [v31 addObjectsFromArray:v32];

    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[unavailableLabel]|" options:0 metrics:0 views:v30];
    [v31 addObjectsFromArray:v33];

    [MEMORY[0x277CCAAD0] activateConstraints:v31];
    v34 = v6;
  }

  return v6;
}

@end