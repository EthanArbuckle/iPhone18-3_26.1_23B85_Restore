@interface WFTakePhotoImmediateModeManager
- (WFTakePhotoImmediateModeDelegate)delegate;
- (WFTakePhotoImmediateModeManager)initWithCameraPosition:(int64_t)position delegate:(id)delegate;
- (id)captureSessionWithDevice:(id)device output:(id)output error:(id *)error;
- (id)configuredCaptureDeviceWithError:(id *)error;
- (void)cameraIsReady:(id)ready;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)dealloc;
- (void)startSessionWithError:(id *)error;
- (void)stop;
- (void)takePhotoWithError:(id *)error;
@end

@implementation WFTakePhotoImmediateModeManager

- (WFTakePhotoImmediateModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  photoCopy = photo;
  errorCopy = error;
  delegate = [(WFTakePhotoImmediateModeManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(WFTakePhotoImmediateModeManager *)self delegate];
    [delegate2 manager:self didFinishWithPhoto:photoCopy error:errorCopy];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE5930] object:0];

  v4.receiver = self;
  v4.super_class = WFTakePhotoImmediateModeManager;
  [(WFTakePhotoImmediateModeManager *)&v4 dealloc];
}

- (void)cameraIsReady:(id)ready
{
  delegate = [(WFTakePhotoImmediateModeManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFTakePhotoImmediateModeManager *)self delegate];
    [delegate2 managerDidBecomeReady:self];
  }
}

- (id)captureSessionWithDevice:(id)device output:(id)output error:(id *)error
{
  deviceCopy = device;
  outputCopy = output;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v10 = getAVCaptureSessionClass_softClass;
  v31 = getAVCaptureSessionClass_softClass;
  if (!getAVCaptureSessionClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAVCaptureSessionClass_block_invoke;
    v26 = &unk_278C37610;
    v27 = &v28;
    __getAVCaptureSessionClass_block_invoke(&v23);
    v10 = v29[3];
  }

  v11 = v10;
  _Block_object_dispose(&v28, 8);
  v12 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v13 = getAVCaptureSessionPresetPhotoSymbolLoc_ptr;
  v31 = getAVCaptureSessionPresetPhotoSymbolLoc_ptr;
  if (!getAVCaptureSessionPresetPhotoSymbolLoc_ptr)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getAVCaptureSessionPresetPhotoSymbolLoc_block_invoke;
    v26 = &unk_278C37610;
    v27 = &v28;
    v14 = AVFoundationLibrary_2446();
    v15 = dlsym(v14, "AVCaptureSessionPresetPhoto");
    *(v27[1] + 24) = v15;
    getAVCaptureSessionPresetPhotoSymbolLoc_ptr = *(v27[1] + 24);
    v13 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (v13)
  {
    [v12 setSessionPreset:*v13];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v16 = getAVCaptureDeviceInputClass_softClass;
    v31 = getAVCaptureDeviceInputClass_softClass;
    if (!getAVCaptureDeviceInputClass_softClass)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getAVCaptureDeviceInputClass_block_invoke;
      v26 = &unk_278C37610;
      v27 = &v28;
      __getAVCaptureDeviceInputClass_block_invoke(&v23);
      v16 = v29[3];
    }

    v17 = v16;
    _Block_object_dispose(&v28, 8);
    v18 = [v16 deviceInputWithDevice:deviceCopy error:error];
    if (v18)
    {
      [v12 addInput:v18];
      [v12 addOutput:outputCopy];
      [(WFTakePhotoImmediateModeManager *)self setSession:v12];
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVCaptureSessionPreset getAVCaptureSessionPresetPhoto(void)"];
    [currentHandler handleFailureInFunction:v22 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)configuredCaptureDeviceWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v5 = getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr;
  v48 = getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_block_invoke;
    v43 = &unk_278C37610;
    v44 = &v45;
    v6 = AVFoundationLibrary_2446();
    v46[3] = dlsym(v6, "AVCaptureDeviceTypeBuiltInDualCamera");
    getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = *(v44[1] + 24);
    v5 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVCaptureDeviceType getAVCaptureDeviceTypeBuiltInDualCamera(void)"];
    [currentHandler handleFailureInFunction:v35 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:20 description:{@"%s", dlerror()}];

    goto LABEL_29;
  }

  v7 = *v5;
  v53 = v7;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v8 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  v48 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_block_invoke;
    v43 = &unk_278C37610;
    v44 = &v45;
    v9 = AVFoundationLibrary_2446();
    v46[3] = dlsym(v9, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
    getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = *(v44[1] + 24);
    v8 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v8)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVCaptureDeviceType getAVCaptureDeviceTypeBuiltInWideAngleCamera(void)"];
    [currentHandler2 handleFailureInFunction:v37 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:21 description:{@"%s", dlerror()}];

    goto LABEL_29;
  }

  v54 = *v8;
  v10 = MEMORY[0x277CBEA60];
  v11 = v54;
  v12 = [v10 arrayWithObjects:&v53 count:2];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v13 = getAVCaptureDeviceDiscoverySessionClass_softClass;
  v48 = getAVCaptureDeviceDiscoverySessionClass_softClass;
  if (!getAVCaptureDeviceDiscoverySessionClass_softClass)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getAVCaptureDeviceDiscoverySessionClass_block_invoke;
    v43 = &unk_278C37610;
    v44 = &v45;
    __getAVCaptureDeviceDiscoverySessionClass_block_invoke(&v40);
    v13 = v46[3];
  }

  v14 = v13;
  _Block_object_dispose(&v45, 8);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v15 = getAVMediaTypeVideoSymbolLoc_ptr;
  v48 = getAVMediaTypeVideoSymbolLoc_ptr;
  if (!getAVMediaTypeVideoSymbolLoc_ptr)
  {
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __getAVMediaTypeVideoSymbolLoc_block_invoke;
    v43 = &unk_278C37610;
    v44 = &v45;
    v16 = AVFoundationLibrary_2446();
    v17 = dlsym(v16, "AVMediaTypeVideo");
    *(v44[1] + 24) = v17;
    getAVMediaTypeVideoSymbolLoc_ptr = *(v44[1] + 24);
    v15 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v15)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeVideo(void)"];
    [currentHandler3 handleFailureInFunction:v39 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:22 description:{@"%s", dlerror()}];

LABEL_29:
    __break(1u);
  }

  v18 = *v15;
  v19 = [v13 discoverySessionWithDeviceTypes:v12 mediaType:v18 position:{-[WFTakePhotoImmediateModeManager position](self, "position")}];

  devices = [v19 devices];
  firstObject = [devices firstObject];

  if (!firstObject)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = getAVFoundationErrorDomain();
    v51 = *MEMORY[0x277CCA450];
    v25 = WFLocalizedString(@"No suitable camera was detected on this device.");
    v52 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    *error = [v23 errorWithDomain:v24 code:-11814 userInfo:v26];

LABEL_18:
    v31 = 0;
    goto LABEL_23;
  }

  if (![firstObject lockForConfiguration:0])
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = getAVFoundationErrorDomain();
    v49 = *MEMORY[0x277CCA450];
    v29 = WFLocalizedString(@"The camera is already in use.");
    v50 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    *error = [v27 errorWithDomain:v28 code:-11817 userInfo:v30];

    goto LABEL_18;
  }

  if ([firstObject isFocusModeSupported:2])
  {
    v22 = 2;
LABEL_21:
    [firstObject setFocusMode:v22];
    goto LABEL_22;
  }

  if ([firstObject isFocusModeSupported:1])
  {
    v22 = 1;
    goto LABEL_21;
  }

LABEL_22:
  [firstObject unlockForConfiguration];
  v31 = firstObject;
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)stop
{
  session = [(WFTakePhotoImmediateModeManager *)self session];
  [session stopRunning];

  [(WFTakePhotoImmediateModeManager *)self setSession:0];

  [(WFTakePhotoImmediateModeManager *)self setOutput:0];
}

- (void)takePhotoWithError:(id *)error
{
  output = [(WFTakePhotoImmediateModeManager *)self output];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getAVCapturePhotoSettingsClass_softClass;
  v12 = getAVCapturePhotoSettingsClass_softClass;
  if (!getAVCapturePhotoSettingsClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getAVCapturePhotoSettingsClass_block_invoke;
    v8[3] = &unk_278C37610;
    v8[4] = &v9;
    __getAVCapturePhotoSettingsClass_block_invoke(v8);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  photoSettings = [v5 photoSettings];
  [output capturePhotoWithSettings:photoSettings delegate:self];
}

- (void)startSessionWithError:(id *)error
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_cameraIsReady_ name:*MEMORY[0x277CE5930] object:0];

  v6 = [(WFTakePhotoImmediateModeManager *)self configuredCaptureDeviceWithError:error];
  if (!*error)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = getAVCapturePhotoOutputClass_softClass;
    v16 = getAVCapturePhotoOutputClass_softClass;
    if (!getAVCapturePhotoOutputClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getAVCapturePhotoOutputClass_block_invoke;
      v12[3] = &unk_278C37610;
      v12[4] = &v13;
      __getAVCapturePhotoOutputClass_block_invoke(v12);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    v9 = objc_opt_new();
    [(WFTakePhotoImmediateModeManager *)self setOutput:v9];
    v10 = [(WFTakePhotoImmediateModeManager *)self captureSessionWithDevice:v6 output:v9 error:error];
    [(WFTakePhotoImmediateModeManager *)self setSession:v10];

    session = [(WFTakePhotoImmediateModeManager *)self session];
    [session startRunning];
  }
}

- (WFTakePhotoImmediateModeManager)initWithCameraPosition:(int64_t)position delegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTakePhotoImmediateModeManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v14.receiver = self;
  v14.super_class = WFTakePhotoImmediateModeManager;
  v8 = [(WFTakePhotoImmediateModeManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v10 = 2 * (position == 1);
    if (!position)
    {
      v10 = 1;
    }

    v8->_position = v10;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v11 = v9;
  }

  return v9;
}

@end