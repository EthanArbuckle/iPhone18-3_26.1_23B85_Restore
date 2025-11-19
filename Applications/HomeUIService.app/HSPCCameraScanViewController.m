@interface HSPCCameraScanViewController
- (BOOL)_isValidSetupPayloadURLString:(id)a3;
- (HSPCCameraScanViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (void)_addInterruptionLabel;
- (void)_cameraWasInterrupted:(id)a3;
- (void)_handleOverrideSetupCodeIfNeeded;
- (void)_handleSetupCode:(id)a3;
- (void)_handleSetupURLString:(id)a3 afterDelay:(double)a4;
- (void)_loadCameraReader;
- (void)_moveToNextViewController;
- (void)_startReaders;
- (void)_stopReaders;
- (void)_unloadCameraReader;
- (void)_updatePairingErrorWithPayload:(id)a3;
- (void)cameraReader:(id)a3 didFailWithError:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidCancel:(id)a3;
- (void)cameraReaderDidEnd:(id)a3;
- (void)configureNextViewController:(id)a3;
- (void)nfcManager:(id)a3 didRecognizePayloadString:(id)a4;
- (void)setMode:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation HSPCCameraScanViewController

- (HSPCCameraScanViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HSPCCameraScanViewController;
  v9 = [(HSPCCameraScanViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coordinator, a3);
    objc_storeStrong(&v10->_config, a4);
  }

  return v10;
}

- (void)setMode:(unint64_t)a3
{
  self->_mode = a3;
  if (a3 == 1)
  {
    v4 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setTitle:v4];

    v5 = HULocalizedString();
    [(HSPCCameraScanViewController *)self setSubtitle:v5];

    v6 = [[HSNFCManager alloc] initWithDelegate:self];
    [(HSPCCameraScanViewController *)self setNfcManager:v6];

    v7 = objc_alloc_init(NAFuture);
    [(HSPCCameraScanViewController *)self setNfcAvailableFuture:v7];

    v8 = [(HSPCCameraScanViewController *)self coordinator];
    v9 = [v8 setupSpecificAccessory];

    if (v9)
    {
      v10 = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
      v11 = +[NSError na_genericError];
      [v10 finishWithError:v11];
    }

    v12 = [(HSPCCameraScanViewController *)self nfcManager];
    v19 = 0;
    v13 = [v12 readerSupportedWithError:&v19];
    v14 = v19;

    v15 = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
    v16 = v15;
    if (v13)
    {
      [v15 finishWithNoResult];
    }

    else
    {
      [v15 finishWithError:v14];
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

- (void)configureNextViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = v3;
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
  v3 = [(HSPCCameraScanViewController *)self commitConfiguration];
  [(HSPCCameraScanViewController *)self handleButtonDirectiveFuture:v3];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = HSPCCameraScanViewController;
  [(HSPCCameraScanViewController *)&v40 viewDidLoad];
  v3 = [(HSPCCameraScanViewController *)self contentView];
  v4 = [v3 mainContentGuide];

  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HSPCCameraScanViewController *)self setCameraContainerView:v5];
  v6 = [v5 layer];
  [v6 setCornerRadius:14.0];

  v7 = [(HSPCCameraScanViewController *)self contentView];
  [v7 addSubview:v5];

  v36 = [v5 topAnchor];
  v34 = [v4 topAnchor];
  v32 = [v36 constraintEqualToAnchor:v34];
  v43[0] = v32;
  v8 = [v5 leadingAnchor];
  v9 = [v4 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v43[1] = v10;
  v11 = [v5 trailingAnchor];
  v39 = v4;
  v12 = [v4 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v43[2] = v13;
  v38 = v5;
  v14 = [v5 heightAnchor];
  v15 = [v14 constraintEqualToConstant:180.0];
  v43[3] = v15;
  v16 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  if ([(HSPCCameraScanViewController *)self mode]== 1)
  {
    v17 = [HSCameraInstructionsView alloc];
    v18 = [(HSPCCameraScanViewController *)self nfcAvailableFuture];
    v19 = [(HSCameraInstructionsView *)v17 initWithNFCStartFuture:v18];

    [(HSCameraInstructionsView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HSPCCameraScanViewController *)self setCameraInstructionsView:v19];
    v20 = [(HSPCCameraScanViewController *)self contentView];
    [v20 addSubview:v19];

    v33 = [(HSCameraInstructionsView *)v19 topAnchor];
    v21 = [v38 bottomAnchor];
    v22 = [v33 constraintEqualToAnchor:v21];
    v42[0] = v22;
    v37 = [(HSCameraInstructionsView *)v19 leadingAnchor];
    v35 = [v39 leadingAnchor];
    v31 = [v37 constraintEqualToAnchor:v35];
    v42[1] = v31;
    v23 = [(HSCameraInstructionsView *)v19 trailingAnchor];
    v24 = [v39 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v42[2] = v25;
    v26 = [(HSCameraInstructionsView *)v19 bottomAnchor];
    v27 = [v39 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v42[3] = v28;
    v29 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    v30 = v33;
  }

  else
  {
    v19 = [v38 bottomAnchor];
    v30 = [v39 bottomAnchor];
    v21 = [(HSCameraInstructionsView *)v19 constraintEqualToAnchor:v30];
    v41 = v21;
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
  v6 = [(HSPCCameraScanViewController *)self cameraReader];
  [v6 setOutputObjectTypes:v5];

  v7 = [(HSPCCameraScanViewController *)self cameraReader];
  [v7 setDelegate:self];

  v8 = [(HSPCCameraScanViewController *)self cameraReader];
  [v8 willMoveToParentViewController:self];

  v9 = [(HSPCCameraScanViewController *)self cameraReader];
  [(HSPCCameraScanViewController *)self addChildViewController:v9];

  v10 = [(HSPCCameraScanViewController *)self cameraContainerView];
  v11 = [(HSPCCameraScanViewController *)self cameraReader];
  v12 = [v11 view];
  [v10 addSubview:v12];

  v13 = [(HSPCCameraScanViewController *)self cameraReader];
  [v13 didMoveToParentViewController:self];

  v14 = +[UIDevice currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = [(HSPCCameraScanViewController *)self cameraReader];
    [v16 toggleCamera];
  }

  v17 = [(HSPCCameraScanViewController *)self cameraReader];
  v18 = [v17 view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = [(HSPCCameraScanViewController *)self cameraReader];
  v46 = [v47 view];
  v44 = [v46 topAnchor];
  v45 = [(HSPCCameraScanViewController *)self cameraContainerView];
  v43 = [v45 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v49[0] = v42;
  v41 = [(HSPCCameraScanViewController *)self cameraReader];
  v40 = [v41 view];
  v38 = [v40 bottomAnchor];
  v39 = [(HSPCCameraScanViewController *)self cameraContainerView];
  v37 = [v39 bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v49[1] = v36;
  v35 = [(HSPCCameraScanViewController *)self cameraReader];
  v34 = [v35 view];
  v32 = [v34 leadingAnchor];
  v33 = [(HSPCCameraScanViewController *)self cameraContainerView];
  v19 = [v33 leadingAnchor];
  v20 = [v32 constraintEqualToAnchor:v19];
  v49[2] = v20;
  v21 = [(HSPCCameraScanViewController *)self cameraReader];
  v22 = [v21 view];
  v23 = [v22 trailingAnchor];
  v24 = [(HSPCCameraScanViewController *)self cameraContainerView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v49[3] = v26;
  v27 = [NSArray arrayWithObjects:v49 count:4];
  [NSLayoutConstraint activateConstraints:v27];

  v28 = PRXProminentButtonCornerRadius;
  v29 = [(HSPCCameraScanViewController *)self cameraReader];
  v30 = [v29 view];
  v31 = [v30 layer];
  [v31 setCornerRadius:v28];
}

- (void)_unloadCameraReader
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unloading the CRCameraReader", v13, 2u);
  }

  v4 = [(HSPCCameraScanViewController *)self cameraReader];
  v5 = [v4 view];
  v6 = [v5 constraints];
  [NSLayoutConstraint deactivateConstraints:v6];

  v7 = [(HSPCCameraScanViewController *)self cameraReader];
  [v7 setDelegate:0];

  v8 = [(HSPCCameraScanViewController *)self cameraReader];
  [v8 willMoveToParentViewController:0];

  v9 = [(HSPCCameraScanViewController *)self cameraReader];
  [v9 removeFromParentViewController];

  v10 = [(HSPCCameraScanViewController *)self cameraReader];
  v11 = [v10 view];
  [v11 removeFromSuperview];

  v12 = [(HSPCCameraScanViewController *)self cameraReader];
  [v12 didMoveToParentViewController:0];

  [(HSPCCameraScanViewController *)self setCameraReader:0];
  [(HSPCCameraScanViewController *)self setCameraReaderIsRunning:0];
}

- (void)_startReaders
{
  v3 = [(HSPCCameraScanViewController *)self nfcManager];
  v4 = [v3 start];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_cameraWasInterrupted:" name:AVCaptureSessionWasInterruptedNotification object:0];

  v6 = [(HSPCCameraScanViewController *)self cameraReader];

  if (!v6)
  {
    [(HSPCCameraScanViewController *)self _loadCameraReader];
  }

  v7 = [(HSPCCameraScanViewController *)self cameraReader];
  [v7 start];

  [(HSPCCameraScanViewController *)self setCameraReaderIsRunning:1];
}

- (void)_stopReaders
{
  v3 = [(HSPCCameraScanViewController *)self nfcManager];
  [v3 stop];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVCaptureSessionWasInterruptedNotification object:0];

  v5 = [(HSPCCameraScanViewController *)self cameraReaderIsRunning];
  v6 = HFLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The camera view disappeared, but the camera is still running. Cancelling the cameraReader", buf, 2u);
    }

    v8 = [(HSPCCameraScanViewController *)self cameraReader];
    [v8 cancel];
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

- (void)_cameraWasInterrupted:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
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
  v3 = [(HSPCCameraScanViewController *)self interruptionLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(UILabel);
    [(HSPCCameraScanViewController *)self setInterruptionLabel:v4];

    v5 = sub_1000057C8();
    v6 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v6 setFont:v5];

    v7 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v7 setNumberOfLines:0];

    v8 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v8 setLineBreakMode:0];

    v9 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v9 setTextAlignment:1];

    v10 = +[UIColor systemWhiteColor];
    v11 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v11 setTextColor:v10];

    v12 = sub_100063A44(@"HSSetupCodeInterruptionLabel");
    v13 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v13 setText:v12];

    v14 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v14 sizeToFit];

    v15 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(HSPCCameraScanViewController *)self view];
    v17 = [(HSPCCameraScanViewController *)self interruptionLabel];
    [v16 addSubview:v17];

    v18 = [(HSPCCameraScanViewController *)self cameraContainerView];
    v19 = [v18 readableContentGuide];

    v34 = [(HSPCCameraScanViewController *)self interruptionLabel];
    v33 = [v34 leadingAnchor];
    v31 = v19;
    v32 = [v19 leadingAnchor];
    v30 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v30;
    v20 = [(HSPCCameraScanViewController *)self interruptionLabel];
    v21 = [v20 trailingAnchor];
    v22 = [v19 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v35[1] = v23;
    v24 = [(HSPCCameraScanViewController *)self interruptionLabel];
    v25 = [v24 centerYAnchor];
    v26 = [(HSPCCameraScanViewController *)self cameraContainerView];
    v27 = [v26 centerYAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v35[2] = v28;
    v29 = [NSArray arrayWithObjects:v35 count:3];
    [NSLayoutConstraint activateConstraints:v29];
  }
}

- (void)_handleSetupCode:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received setup code %@", buf, 0xCu);
  }

  v6 = [(HSPCCameraScanViewController *)self delayedSetupCodeHandler];
  [v6 cancel];

  objc_initWeak(buf, self);
  v7 = +[NAScheduler mainThreadScheduler];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000663F8;
  v13 = &unk_1000C7A58;
  objc_copyWeak(&v15, buf);
  v8 = v4;
  v14 = v8;
  v9 = [v7 afterDelay:&v10 performBlock:0.5];
  [(HSPCCameraScanViewController *)self setDelayedSetupCodeHandler:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_updatePairingErrorWithPayload:(id)a3
{
  v4 = a3;
  v5 = HULocalizedString();
  v6 = HULocalizedString();
  v7 = [NSError hf_errorWithCode:62 title:v5 description:v6];

  if (v4)
  {
    v8 = [v4 setupCode];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 setupPayloadURL];
      v28 = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleSetupAccessoryPayload:, code %@ url %@", &v28, 0x16u);
    }

    v11 = [v4 setupPayloadURL];

    if (v11)
    {
      v12 = [(HSPCCameraScanViewController *)self coordinator];
      v13 = [v12 discoveredAccessory];

      v14 = [(HSPCCameraScanViewController *)self coordinator];
      v15 = v14;
      if (v13)
      {
        v16 = [v14 didReceiveSetupCode:v8 withPayload:v4 fromViewController:self];
      }

      else
      {
        [v14 updateSetupAccessoryDescriptionWithPayload:v4];
      }

LABEL_22:

      goto LABEL_23;
    }

    v15 = [[HFSetupAccessoryResult alloc] initWithPayload:v4];
    v18 = [v15 error];
    if (v18)
    {
      v19 = v18;
      v20 = [v15 error];
      v21 = [v20 domain];
      if ([v21 isEqualToString:HFErrorDomain])
      {
        v22 = [v15 error];
        v23 = [v22 code];

        if (v23 == 22)
        {
          v24 = [v15 error];
          v25 = 1;
LABEL_17:
          v26 = [(HSPCCameraScanViewController *)self config];
          [v26 setPairingError:v24];

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
    v24 = v7;
    goto LABEL_17;
  }

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleSetupAccessoryPayload: got nil payload.", &v28, 2u);
  }

  v8 = [(HSPCCameraScanViewController *)self config];
  [v8 setPairingError:v7];
LABEL_23:
}

- (void)_handleSetupURLString:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received setup URL string: %@", buf, 0xCu);
  }

  v8 = [(HSPCCameraScanViewController *)self delayedSetupCodeHandler];
  [v8 cancel];

  v9 = [(HSPCCameraScanViewController *)self coordinator];
  v10 = [v9 discoveredAccessory];
  [v10 setRawSetupPayloadString:v6];

  objc_initWeak(buf, self);
  v11 = +[NAScheduler mainThreadScheduler];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100066AFC;
  v17 = &unk_1000C8130;
  v12 = v6;
  v18 = v12;
  objc_copyWeak(&v19, buf);
  v13 = [v11 afterDelay:&v14 performBlock:a4];
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

    v6 = [(HSPCCameraScanViewController *)self cameraReader];
    v7 = HFForceCameraQRCodeURLString();
    v8 = [(HSPCCameraScanViewController *)self cameraReader:v6 shouldReturnQRCode:v7];

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

- (BOOL)_isValidSetupPayloadURLString:(id)a3
{
  v4 = a3;
  if (!v4)
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

  if (([HMAccessorySetupCoordinator isSetupPayloadURLString:v4]& 1) != 0)
  {
    v5 = [(HSPCCameraScanViewController *)self config];
    v6 = [v5 isSetupInitiatedByOtherMatterEcosystem];

    if (v6)
    {
      v7 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:v4];
      v8 = [v7 integerValue];

      if (v8 == 2)
      {
        v9 = HFLogForCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v16 = 138412290;
        v17 = v4;
        v14 = "Read CHIP/Matter setup URL string in PEA setup: %@";
        goto LABEL_17;
      }

      if (v8 == 1)
      {
        v9 = HFLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v4;
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
    v17 = v4;
    v14 = "Read setup URL string: %@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    goto LABEL_18;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    v10 = "Read string that is not setup URL: %@";
    goto LABEL_12;
  }

LABEL_14:
  v13 = 0;
LABEL_19:

  return v13;
}

- (void)cameraReader:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cameraReader:%@ didFailWithError:%@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000674E8;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReaderDidCancel:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cameraReaderDidCancel:%@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676E4;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReaderDidEnd:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cameraReaderDidEnd:%@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067838;
  block[3] = &unk_1000C5970;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cameraReader:%@ didRecognizeObjects:%@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006798C;
  v10[3] = &unk_1000C57E0;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)nfcManager:(id)a3 didRecognizePayloadString:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067C08;
  block[3] = &unk_1000C5E98;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

@end