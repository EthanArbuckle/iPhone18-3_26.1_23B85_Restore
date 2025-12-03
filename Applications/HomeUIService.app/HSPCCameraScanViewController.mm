@interface HSPCCameraScanViewController
- (BOOL)_isValidSetupPayloadURLString:(id)string;
- (HSPCCameraScanViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (void)_addInterruptionLabel;
- (void)_cameraWasInterrupted:(id)interrupted;
- (void)_handleOverrideSetupCodeIfNeeded;
- (void)_handleSetupCode:(id)code;
- (void)_handleSetupURLString:(id)string afterDelay:(double)delay;
- (void)_loadCameraReader;
- (void)_moveToNextViewController;
- (void)_startReaders;
- (void)_stopReaders;
- (void)_unloadCameraReader;
- (void)_updatePairingErrorWithPayload:(id)payload;
- (void)cameraReader:(id)reader didFailWithError:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)cameraReaderDidCancel:(id)cancel;
- (void)cameraReaderDidEnd:(id)end;
- (void)configureNextViewController:(id)controller;
- (void)nfcManager:(id)manager didRecognizePayloadString:(id)string;
- (void)setMode:(unint64_t)mode;
- (void)viewDidLoad;
@end

@implementation HSPCCameraScanViewController

- (HSPCCameraScanViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v12.receiver = self;
  v12.super_class = HSPCCameraScanViewController;
  v9 = [(HSPCCameraScanViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, coordinator);
    objc_storeStrong(&v10->_config, config);
  }

  return v10;
}

- (void)setMode:(unint64_t)mode
{
  self->_mode = mode;
  if (mode == 1)
  {
    v4 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setTitle:v4];

    v5 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setSubtitle:v5];

    v6 = [[HSNFCManager alloc] initWithDelegate:self];
    [(HSPCCameraScanViewController *)self setNfcManager:v6];

    v7 = objc_alloc_init(NAFuture);
    [(HSPCCameraScanViewController *)self setNfcAvailableFuture:v7];

    coordinator = [(HSPCCameraScanViewController *)self coordinator];
    setupSpecificAccessory = [coordinator setupSpecificAccessory];

    if (setupSpecificAccessory)
    {
      nfcAvailableFuture = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
      v11 = +[NSError na_genericError];
      [nfcAvailableFuture finishWithError:v11];
    }

    nfcManager = [(HSPCCameraScanViewController *)self nfcManager];
    v19 = 0;
    v13 = [nfcManager readerSupportedWithError:&v19];
    v14 = v19;

    nfcAvailableFuture2 = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
    v16 = nfcAvailableFuture2;
    if (v13)
    {
      [nfcAvailableFuture2 finishWithNoResult];
    }

    else
    {
      [nfcAvailableFuture2 finishWithError:v14];
    }

    [(HSPCCameraScanViewController *)self addMoreOptionsButtonWithTarget:self action:"_onMoreOptionsButton" userInfo:&__NSDictionary0__struct];
  }

  else
  {
    v17 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setTitle:v17];

    v18 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setSubtitle:v18];
  }
}

- (void)configureNextViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v6 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setPage:1];
}

- (void)_moveToNextViewController
{
  commitConfiguration = [(HSPCCameraScanViewController *)self commitConfiguration];
  [(HSPCCameraScanViewController *)self handleButtonDirectiveFuture:commitConfiguration];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = HSPCCameraScanViewController;
  [(HSPCCameraScanViewController *)&v40 viewDidLoad];
  contentView = [(HSPCCameraScanViewController *)self contentView];
  mainContentGuide = [contentView mainContentGuide];

  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HSPCCameraScanViewController *)self setCameraContainerView:v5];
  layer = [v5 layer];
  [layer setCornerRadius:14.0];

  contentView2 = [(HSPCCameraScanViewController *)self contentView];
  [contentView2 addSubview:v5];

  topAnchor = [v5 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v32;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[1] = v10;
  trailingAnchor = [v5 trailingAnchor];
  v39 = mainContentGuide;
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[2] = v13;
  v38 = v5;
  heightAnchor = [v5 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:180.0];
  v43[3] = v15;
  v16 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  if ([(HSPCCameraScanViewController *)self mode]== 1)
  {
    v17 = [HSCameraInstructionsView alloc];
    nfcAvailableFuture = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
    bottomAnchor4 = [(HSCameraInstructionsView *)v17 initWithNFCStartFuture:nfcAvailableFuture];

    [(HSCameraInstructionsView *)bottomAnchor4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HSPCCameraScanViewController *)self setCameraInstructionsView:bottomAnchor4];
    contentView3 = [(HSPCCameraScanViewController *)self contentView];
    [contentView3 addSubview:bottomAnchor4];

    topAnchor3 = [(HSCameraInstructionsView *)bottomAnchor4 topAnchor];
    bottomAnchor = [v38 bottomAnchor];
    v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v42[0] = v22;
    leadingAnchor3 = [(HSCameraInstructionsView *)bottomAnchor4 leadingAnchor];
    leadingAnchor4 = [v39 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v42[1] = v31;
    trailingAnchor3 = [(HSCameraInstructionsView *)bottomAnchor4 trailingAnchor];
    trailingAnchor4 = [v39 trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v42[2] = v25;
    bottomAnchor2 = [(HSCameraInstructionsView *)bottomAnchor4 bottomAnchor];
    bottomAnchor3 = [v39 bottomAnchor];
    v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v42[3] = v28;
    v29 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    bottomAnchor5 = topAnchor3;
  }

  else
  {
    bottomAnchor4 = [v38 bottomAnchor];
    bottomAnchor5 = [v39 bottomAnchor];
    bottomAnchor = [(HSCameraInstructionsView *)bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v41 = bottomAnchor;
    v22 = [NSArray arrayWithObjects:&v41 count:1];
    [NSLayoutConstraint activateConstraints:v22];
  }
}

- (void)_loadCameraReader
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading the CRCameraReader", buf, 2u);
  }

  v4 = objc_alloc_init(CRCameraReader);
  [(HSPCCameraScanViewController *)self setCameraReader:v4];

  v50[0] = CROutputTypeHomeKitCode;
  v50[1] = CROutputTypeQRCode;
  v5 = [NSArray arrayWithObjects:v50 count:2];
  cameraReader = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader setOutputObjectTypes:v5];

  cameraReader2 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader2 setDelegate:self];

  cameraReader3 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader3 willMoveToParentViewController:self];

  cameraReader4 = [(HSPCCameraScanViewController *)self cameraReader];
  [(HSPCCameraScanViewController *)self addChildViewController:cameraReader4];

  cameraContainerView = [(HSPCCameraScanViewController *)self cameraContainerView];
  cameraReader5 = [(HSPCCameraScanViewController *)self cameraReader];
  view = [cameraReader5 view];
  [cameraContainerView addSubview:view];

  cameraReader6 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader6 didMoveToParentViewController:self];

  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    cameraReader7 = [(HSPCCameraScanViewController *)self cameraReader];
    [cameraReader7 toggleCamera];
  }

  cameraReader8 = [(HSPCCameraScanViewController *)self cameraReader];
  view2 = [cameraReader8 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  cameraReader9 = [(HSPCCameraScanViewController *)self cameraReader];
  view3 = [cameraReader9 view];
  topAnchor = [view3 topAnchor];
  cameraContainerView2 = [(HSPCCameraScanViewController *)self cameraContainerView];
  topAnchor2 = [cameraContainerView2 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[0] = v42;
  cameraReader10 = [(HSPCCameraScanViewController *)self cameraReader];
  view4 = [cameraReader10 view];
  bottomAnchor = [view4 bottomAnchor];
  cameraContainerView3 = [(HSPCCameraScanViewController *)self cameraContainerView];
  bottomAnchor2 = [cameraContainerView3 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[1] = v36;
  cameraReader11 = [(HSPCCameraScanViewController *)self cameraReader];
  view5 = [cameraReader11 view];
  leadingAnchor = [view5 leadingAnchor];
  cameraContainerView4 = [(HSPCCameraScanViewController *)self cameraContainerView];
  leadingAnchor2 = [cameraContainerView4 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[2] = v20;
  cameraReader12 = [(HSPCCameraScanViewController *)self cameraReader];
  view6 = [cameraReader12 view];
  trailingAnchor = [view6 trailingAnchor];
  cameraContainerView5 = [(HSPCCameraScanViewController *)self cameraContainerView];
  trailingAnchor2 = [cameraContainerView5 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[3] = v26;
  v27 = [NSArray arrayWithObjects:v49 count:4];
  [NSLayoutConstraint activateConstraints:v27];

  v28 = PRXProminentButtonCornerRadius;
  cameraReader13 = [(HSPCCameraScanViewController *)self cameraReader];
  view7 = [cameraReader13 view];
  layer = [view7 layer];
  [layer setCornerRadius:v28];
}

- (void)_unloadCameraReader
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unloading the CRCameraReader", v13, 2u);
  }

  cameraReader = [(HSPCCameraScanViewController *)self cameraReader];
  view = [cameraReader view];
  constraints = [view constraints];
  [NSLayoutConstraint deactivateConstraints:constraints];

  cameraReader2 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader2 setDelegate:0];

  cameraReader3 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader3 willMoveToParentViewController:0];

  cameraReader4 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader4 removeFromParentViewController];

  cameraReader5 = [(HSPCCameraScanViewController *)self cameraReader];
  view2 = [cameraReader5 view];
  [view2 removeFromSuperview];

  cameraReader6 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader6 didMoveToParentViewController:0];

  [(HSPCCameraScanViewController *)self setCameraReader:0];
  [(HSPCCameraScanViewController *)self setCameraReaderIsRunning:0];
}

- (void)_startReaders
{
  nfcManager = [(HSPCCameraScanViewController *)self nfcManager];
  start = [nfcManager start];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_cameraWasInterrupted:" name:AVCaptureSessionWasInterruptedNotification object:0];

  cameraReader = [(HSPCCameraScanViewController *)self cameraReader];

  if (!cameraReader)
  {
    [(HSPCCameraScanViewController *)self _loadCameraReader];
  }

  cameraReader2 = [(HSPCCameraScanViewController *)self cameraReader];
  [cameraReader2 start];

  [(HSPCCameraScanViewController *)self setCameraReaderIsRunning:1];
}

- (void)_stopReaders
{
  nfcManager = [(HSPCCameraScanViewController *)self nfcManager];
  [nfcManager stop];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVCaptureSessionWasInterruptedNotification object:0];

  cameraReaderIsRunning = [(HSPCCameraScanViewController *)self cameraReaderIsRunning];
  v6 = HFLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (cameraReaderIsRunning)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The camera view disappeared, but the camera is still running. Cancelling the cameraReader", buf, 2u);
    }

    cameraReader = [(HSPCCameraScanViewController *)self cameraReader];
    [cameraReader cancel];
  }

  else
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The camera view disappeared and the camera is not running. Removing it from the view hierarchy so it can be recreated if it's needed again", v9, 2u);
    }

    [(HSPCCameraScanViewController *)self _unloadCameraReader];
  }
}

- (void)_cameraWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  userInfo = [interruptedCopy userInfo];
  if (userInfo)
  {
    userInfo2 = [interruptedCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
  }

  else
  {
    v7 = 0;
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notified that the camera was interrupted with reason: %@", &v9, 0xCu);
  }

  if (v7 && [v7 intValue] == 4)
  {
    [(HSPCCameraScanViewController *)self _addInterruptionLabel];
  }
}

- (void)_addInterruptionLabel
{
  interruptionLabel = [(HSPCCameraScanViewController *)self interruptionLabel];

  if (!interruptionLabel)
  {
    v4 = objc_alloc_init(UILabel);
    [(HSPCCameraScanViewController *)self setInterruptionLabel:v4];

    v5 = sub_1000057C8();
    interruptionLabel2 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel2 setFont:v5];

    interruptionLabel3 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel3 setNumberOfLines:0];

    interruptionLabel4 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel4 setLineBreakMode:0];

    interruptionLabel5 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel5 setTextAlignment:1];

    v10 = +[UIColor systemWhiteColor];
    interruptionLabel6 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel6 setTextColor:v10];

    v12 = sub_100063A44(@"HSSetupCodeInterruptionLabel");
    interruptionLabel7 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel7 setText:v12];

    interruptionLabel8 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel8 sizeToFit];

    interruptionLabel9 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [interruptionLabel9 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(HSPCCameraScanViewController *)self view];
    interruptionLabel10 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [view addSubview:interruptionLabel10];

    cameraContainerView = [(HSPCCameraScanViewController *)self cameraContainerView];
    readableContentGuide = [cameraContainerView readableContentGuide];

    interruptionLabel11 = [(HSPCCameraScanViewController *)self interruptionLabel];
    leadingAnchor = [interruptionLabel11 leadingAnchor];
    v31 = readableContentGuide;
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v30;
    interruptionLabel12 = [(HSPCCameraScanViewController *)self interruptionLabel];
    trailingAnchor = [interruptionLabel12 trailingAnchor];
    trailingAnchor2 = [readableContentGuide trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v23;
    interruptionLabel13 = [(HSPCCameraScanViewController *)self interruptionLabel];
    centerYAnchor = [interruptionLabel13 centerYAnchor];
    cameraContainerView2 = [(HSPCCameraScanViewController *)self cameraContainerView];
    centerYAnchor2 = [cameraContainerView2 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v35[2] = v28;
    v29 = [NSArray arrayWithObjects:v35 count:3];
    [NSLayoutConstraint activateConstraints:v29];
  }
}

- (void)_handleSetupCode:(id)code
{
  codeCopy = code;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = codeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received setup code %@", buf, 0xCu);
  }

  delayedSetupCodeHandler = [(HSPCCameraScanViewController *)self delayedSetupCodeHandler];
  [delayedSetupCodeHandler cancel];

  objc_initWeak(buf, self);
  v7 = +[NAScheduler mainThreadScheduler];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000663F8;
  v13 = &unk_1000C7A58;
  objc_copyWeak(&v15, buf);
  v8 = codeCopy;
  v14 = v8;
  v9 = [v7 afterDelay:&v10 performBlock:0.5];
  [(HSPCCameraScanViewController *)self setDelayedSetupCodeHandler:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_updatePairingErrorWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = HULocalizedString();
  v6 = HULocalizedString();
  v7 = [NSError hf_errorWithCode:62 title:v5 description:v6];

  if (payloadCopy)
  {
    setupCode = [payloadCopy setupCode];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      setupPayloadURL = [payloadCopy setupPayloadURL];
      v28 = 138412546;
      v29 = setupCode;
      v30 = 2112;
      v31 = setupPayloadURL;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleSetupAccessoryPayload:, code %@ url %@", &v28, 0x16u);
    }

    setupPayloadURL2 = [payloadCopy setupPayloadURL];

    if (setupPayloadURL2)
    {
      coordinator = [(HSPCCameraScanViewController *)self coordinator];
      discoveredAccessory = [coordinator discoveredAccessory];

      coordinator2 = [(HSPCCameraScanViewController *)self coordinator];
      v15 = coordinator2;
      if (discoveredAccessory)
      {
        v16 = [coordinator2 didReceiveSetupCode:setupCode withPayload:payloadCopy fromViewController:self];
      }

      else
      {
        [coordinator2 updateSetupAccessoryDescriptionWithPayload:payloadCopy];
      }

LABEL_22:

      goto LABEL_23;
    }

    v15 = [[HFSetupAccessoryResult alloc] initWithPayload:payloadCopy];
    error = [v15 error];
    if (error)
    {
      v19 = error;
      error2 = [v15 error];
      domain = [error2 domain];
      if ([domain isEqualToString:HFErrorDomain])
      {
        error3 = [v15 error];
        code = [error3 code];

        if (code == 22)
        {
          error4 = [v15 error];
          v25 = 1;
LABEL_17:
          config = [(HSPCCameraScanViewController *)self config];
          [config setPairingError:error4];

          if (v25)
          {
          }

          v27 = HFLogForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10007B9C4(v15, v27);
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v25 = 0;
    error4 = v7;
    goto LABEL_17;
  }

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleSetupAccessoryPayload: got nil payload.", &v28, 2u);
  }

  setupCode = [(HSPCCameraScanViewController *)self config];
  [setupCode setPairingError:v7];
LABEL_23:
}

- (void)_handleSetupURLString:(id)string afterDelay:(double)delay
{
  stringCopy = string;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = stringCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received setup URL string: %@", buf, 0xCu);
  }

  delayedSetupCodeHandler = [(HSPCCameraScanViewController *)self delayedSetupCodeHandler];
  [delayedSetupCodeHandler cancel];

  coordinator = [(HSPCCameraScanViewController *)self coordinator];
  discoveredAccessory = [coordinator discoveredAccessory];
  [discoveredAccessory setRawSetupPayloadString:stringCopy];

  objc_initWeak(buf, self);
  v11 = +[NAScheduler mainThreadScheduler];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100066AFC;
  v17 = &unk_1000C8130;
  v12 = stringCopy;
  v18 = v12;
  objc_copyWeak(&v19, buf);
  v13 = [v11 afterDelay:&v14 performBlock:delay];
  [(HSPCCameraScanViewController *)self setDelayedSetupCodeHandler:v13, v14, v15, v16, v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)_handleOverrideSetupCodeIfNeeded
{
  v3 = HFForceCameraQRCodeURLString();

  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HFForceCameraQRCodeURLString();
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HFForceCameraQRCodeURLString is set to: %@", &v18, 0xCu);
    }

    cameraReader = [(HSPCCameraScanViewController *)self cameraReader];
    v7 = HFForceCameraQRCodeURLString();
    v8 = [(HSPCCameraScanViewController *)self cameraReader:cameraReader shouldReturnQRCode:v7];

    v9 = HFLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v10)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The HFForceCameraQRCodeURLString was determined to not be a valid HomeKit QR code, so doing nothing", &v18, 2u);
      }

      goto LABEL_19;
    }

    if (v10)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The HFForceCameraQRCodeURLString was validated, so proceeding as if we had just scanned this a QR code with this payload.", &v18, 2u);
    }

    v9 = HFForceCameraQRCodeURLString();
    v11 = 0.5;
  }

  else
  {
    v12 = HFForceCameraLegacyCodeURLString();

    if (v12)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HFForceCameraQRCodeURLString();
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HFForceCameraLegacyCodeURLString is set to: %@, so proceeding as if we had just scanned this legacy code.", &v18, 0xCu);
      }

      v9 = HFForceCameraLegacyCodeURLString();
      [(HSPCCameraScanViewController *)self _handleSetupCode:v9];
      goto LABEL_19;
    }

    v15 = HFForceNFCURLString();

    if (!v15)
    {
      return;
    }

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HFForceCameraQRCodeURLString();
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "HFForceNFCURLString is set to: %@, so proceeding as if we had just scanned an NFC tag with this payload.", &v18, 0xCu);
    }

    v9 = HFForceNFCURLString();
    v11 = 0.0;
  }

  [(HSPCCameraScanViewController *)self _handleSetupURLString:v9 afterDelay:v11];
LABEL_19:
}

- (BOOL)_isValidSetupPayloadURLString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v10 = "Read nil string";
      v11 = v9;
      v12 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (([HMAccessorySetupCoordinator isSetupPayloadURLString:stringCopy]& 1) != 0)
  {
    config = [(HSPCCameraScanViewController *)self config];
    isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

    if (isSetupInitiatedByOtherMatterEcosystem)
    {
      v7 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:stringCopy];
      integerValue = [v7 integerValue];

      if (integerValue == 2)
      {
        v9 = HFLogForCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v16 = 138412290;
        v17 = stringCopy;
        v14 = "Read CHIP/Matter setup URL string in PEA setup: %@";
        goto LABEL_17;
      }

      if (integerValue == 1)
      {
        v9 = HFLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = stringCopy;
          v10 = "Read HAP setup URL string in PEA setup, ignoring %@";
LABEL_12:
          v11 = v9;
          v12 = 12;
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    v9 = HFLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      v13 = 1;
      goto LABEL_19;
    }

    v16 = 138412290;
    v17 = stringCopy;
    v14 = "Read setup URL string: %@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    goto LABEL_18;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = stringCopy;
    v10 = "Read string that is not setup URL: %@";
    goto LABEL_12;
  }

LABEL_14:
  v13 = 0;
LABEL_19:

  return v13;
}

- (void)cameraReader:(id)reader didFailWithError:(id)error
{
  readerCopy = reader;
  errorCopy = error;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = readerCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cameraReader:%@ didFailWithError:%@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000674E8;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReaderDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = cancelCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cameraReaderDidCancel:%@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676E4;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReaderDidEnd:(id)end
{
  endCopy = end;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = endCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cameraReaderDidEnd:%@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067838;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  readerCopy = reader;
  objectsCopy = objects;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = readerCopy;
    v15 = 2112;
    v16 = objectsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cameraReader:%@ didRecognizeObjects:%@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006798C;
  v10[3] = &unk_1000C57E0;
  v11 = objectsCopy;
  selfCopy = self;
  v9 = objectsCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)nfcManager:(id)manager didRecognizePayloadString:(id)string
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067C08;
  block[3] = &unk_1000C5E98;
  managerCopy = manager;
  stringCopy = string;
  selfCopy = self;
  v6 = stringCopy;
  v7 = managerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end