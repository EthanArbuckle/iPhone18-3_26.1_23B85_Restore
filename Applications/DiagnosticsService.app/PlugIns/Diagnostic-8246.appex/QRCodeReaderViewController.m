@interface QRCodeReaderViewController
- (BOOL)setActiveCamera:(int64_t)a3;
- (BOOL)setFlash:(BOOL)a3;
- (QRCodeReaderViewController)init;
- (void)cancelTapped;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)cleanup;
- (void)finishWithStatusCode:(id)a3 metadata:(id)a4;
- (void)flashTapped;
- (void)flipTapped;
- (void)setupCamera;
- (void)setupCodeRecognition;
- (void)setupUI;
- (void)start;
- (void)takePictureWithHandler:(id)a3;
@end

@implementation QRCodeReaderViewController

- (QRCodeReaderViewController)init
{
  v5.receiver = self;
  v5.super_class = QRCodeReaderViewController;
  v2 = [(QRCodeReaderViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(QRCodeReaderViewController *)v2 setShouldShowPressHomeLabel:0];
  }

  return v3;
}

- (void)start
{
  [(QRCodeReaderViewController *)self setupCamera];

  [(QRCodeReaderViewController *)self setupUI];
}

- (void)setupCamera
{
  v3 = objc_alloc_init(AVCaptureSession);
  [(QRCodeReaderViewController *)self setCaptureSession:v3];

  objc_initWeak(&location, self);
  if ([(QRCodeReaderViewController *)self setActiveCamera:1])
  {
    goto LABEL_5;
  }

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000530C();
  }

  if ([(QRCodeReaderViewController *)self setActiveCamera:2])
  {
LABEL_5:
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = [(QRCodeReaderViewController *)self captureSession];
    v7 = +[NSOperationQueue mainQueue];
    v8 = [v5 addObserverForName:AVCaptureSessionRuntimeErrorNotification object:v6 queue:v7 usingBlock:&stru_10000C3D8];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = [(QRCodeReaderViewController *)self captureSession];
    v11 = +[NSOperationQueue mainQueue];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000030EC;
    v29 = &unk_10000C400;
    objc_copyWeak(&v30, &location);
    v12 = [v9 addObserverForName:AVCaptureSessionDidStartRunningNotification object:v10 queue:v11 usingBlock:&v26];

    v13 = [NSNotificationCenter defaultCenter:v26];
    v14 = [(QRCodeReaderViewController *)self captureSession];
    v15 = +[NSOperationQueue mainQueue];
    v16 = [v13 addObserverForName:AVCaptureSessionDidStopRunningNotification object:v14 queue:v15 usingBlock:&stru_10000C420];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = [(QRCodeReaderViewController *)self captureSession];
    v19 = +[NSOperationQueue mainQueue];
    v20 = [v17 addObserverForName:AVCaptureSessionWasInterruptedNotification object:v18 queue:v19 usingBlock:&stru_10000C440];

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = [(QRCodeReaderViewController *)self captureSession];
    v23 = +[NSOperationQueue mainQueue];
    v24 = [v21 addObserverForName:AVCaptureSessionInterruptionEndedNotification object:v22 queue:v23 usingBlock:&stru_10000C460];

    objc_destroyWeak(&v30);
  }

  else
  {
    v25 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100005348();
    }

    [(QRCodeReaderViewController *)self finishWithStatusCode:&off_10000C978 metadata:0];
  }

  objc_destroyWeak(&location);
}

- (void)setupCodeRecognition
{
  v6 = objc_alloc_init(AVCaptureMetadataOutput);
  v3 = [(QRCodeReaderViewController *)self captureSession];
  [v3 addOutput:v6];

  [v6 setMetadataObjectsDelegate:self queue:&_dispatch_main_q];
  v4 = [(QRCodeReaderViewController *)self inputs];
  v5 = [v4 codeTypes];
  [v6 setMetadataObjectTypes:v5];
}

- (void)setupUI
{
  v3 = +[UIColor blackColor];
  v4 = [(QRCodeReaderViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UIView alloc];
  v6 = [(QRCodeReaderViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:?];
  [(QRCodeReaderViewController *)self setPreviewView:v7];

  v8 = [AVCaptureVideoPreviewLayer alloc];
  v9 = [(QRCodeReaderViewController *)self captureSession];
  v10 = [v8 initWithSession:v9];

  if (v10)
  {
    [v10 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    if ([(QRCodeReaderViewController *)self cameraPosition]== 2)
    {
      v11 = ((MGGetSInt32Answer() + 90) % 360);
    }

    else
    {
      v11 = 90.0;
    }

    v13 = [v10 connection];
    [v13 setVideoRotationAngle:v11];

    v14 = [(QRCodeReaderViewController *)self previewView];
    [v14 bounds];
    [v10 setFrame:?];

    v15 = [CameraTargetView alloc];
    v16 = [(QRCodeReaderViewController *)self previewView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(QRCodeReaderViewController *)self inputs];
    v26 = [v25 viewfinderInstruction];
    v27 = [(CameraTargetView *)v15 initWithFrame:v26 instructionText:12 presentationOptions:v18, v20, v22, v24];
    [(QRCodeReaderViewController *)self setOverlayView:v27];

    v28 = [(QRCodeReaderViewController *)self overlayView];
    [v28 setDelegate:self];

    v29 = [(QRCodeReaderViewController *)self previewView];
    v30 = [v29 layer];
    [v30 addSublayer:v10];

    v31 = [(QRCodeReaderViewController *)self previewView];
    v32 = [(QRCodeReaderViewController *)self overlayView];
    [v31 addSubview:v32];

    v33 = [(QRCodeReaderViewController *)self view];
    v34 = [(QRCodeReaderViewController *)self previewView];
    [v33 addSubview:v34];
  }

  else
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000053F8();
    }

    [(QRCodeReaderViewController *)self finishWithStatusCode:&off_10000C990 metadata:0];
  }
}

- (void)cleanup
{
  v3 = [(QRCodeReaderViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(QRCodeReaderViewController *)self timeoutTimer];
    [v4 invalidate];
  }

  v5 = [(QRCodeReaderViewController *)self cameraDevice];
  if (v5)
  {
    v6 = v5;
    v7 = [(QRCodeReaderViewController *)self cameraDevice];
    v8 = [v7 isTorchActive];

    if (v8)
    {
      [(QRCodeReaderViewController *)self setFlash:0];
    }
  }

  v9 = [(QRCodeReaderViewController *)self captureSession];
  if (v9)
  {
    v10 = v9;
    v11 = [(QRCodeReaderViewController *)self captureSession];
    v12 = [v11 isRunning];

    if (v12)
    {
      v13 = [(QRCodeReaderViewController *)self captureSession];
      [v13 stopRunning];

      [(QRCodeReaderViewController *)self setCaptureSession:0];
    }
  }
}

- (void)finishWithStatusCode:(id)a3 metadata:(id)a4
{
  v16 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (v16)
  {
    [v7 addEntriesFromDictionary:v16];
  }

  v9 = [(QRCodeReaderViewController *)self exclavesStatus];

  if (v9)
  {
    v10 = [(QRCodeReaderViewController *)self exclavesStatus];
    [v8 addEntriesFromDictionary:v10];
  }

  if ([v8 count])
  {
    v11 = [v8 copy];
    v12 = [(QRCodeReaderViewController *)self result];
    [v12 setData:v11];
  }

  [(QRCodeReaderViewController *)self cleanup];
  v13 = [(QRCodeReaderViewController *)self exclavesStatus];
  v14 = [DAExclavesSupport testResultOverrideForExclavesStatus:v13 originalResult:v6];

  v15 = [(QRCodeReaderViewController *)self result];
  [v15 setStatusCode:v14];

  [(QRCodeReaderViewController *)self setFinished:1];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v5 = a4;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "captureOutput called for %ld objects", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 stringValue];
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Decoded QR Code: %@", buf, 0xCu);
          }

          v17 = [v14 stringValue];
          [v7 addObject:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count] && (-[QRCodeReaderViewController isFinished](self, "isFinished") & 1) == 0)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v27[0] = @"camera";
    v19 = [(QRCodeReaderViewController *)self cameraPosition];
    v20 = @"back";
    if (v19 == 2)
    {
      v20 = @"front";
    }

    v27[1] = @"qrCodes";
    v28[0] = v20;
    v28[1] = v7;
    v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v18 addEntriesFromDictionary:v21];

    [(QRCodeReaderViewController *)self finishWithStatusCode:&off_10000C9A8 metadata:v18];
  }
}

- (void)cancelTapped
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancel button tapped.", v4, 2u);
  }

  [(QRCodeReaderViewController *)self finishWithStatusCode:&off_10000C9D8 metadata:0];
}

- (void)flashTapped
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flash button tapped.", v5, 2u);
  }

  [(QRCodeReaderViewController *)self setFlashState:[(QRCodeReaderViewController *)self flashState]^ 1];
  if ([(QRCodeReaderViewController *)self setFlash:[(QRCodeReaderViewController *)self flashState]])
  {
    v4 = [(QRCodeReaderViewController *)self overlayView];
    [v4 setFlashState:{-[QRCodeReaderViewController flashState](self, "flashState")}];
  }
}

- (BOOL)setFlash:(BOOL)a3
{
  v3 = a3;
  v5 = [(QRCodeReaderViewController *)self cameraDevice];

  if (!v5)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No camera device set. Not changing torch state.", buf, 2u);
    }

    goto LABEL_13;
  }

  v6 = [(QRCodeReaderViewController *)self cameraDevice];
  if (([v6 isTorchModeSupported:1] & 1) == 0)
  {

    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(QRCodeReaderViewController *)self cameraDevice];
  v17 = 0;
  v8 = [v7 lockForConfiguration:&v17];
  v9 = v17;

  if (!v8)
  {
LABEL_10:
    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100005434(v3, v9, v15);
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting torch state to %d", buf, 8u);
  }

  v11 = [(QRCodeReaderViewController *)self flashState];
  v12 = [(QRCodeReaderViewController *)self cameraDevice];
  [v12 setTorchMode:v11];

  v13 = [(QRCodeReaderViewController *)self cameraDevice];
  [v13 unlockForConfiguration];

  v14 = 1;
LABEL_14:

  return v14;
}

- (void)flipTapped
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flip button tapped.", &v10, 2u);
  }

  v4 = [(QRCodeReaderViewController *)self cameraPosition];
  if ([(QRCodeReaderViewController *)self cameraPosition]== 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(QRCodeReaderViewController *)self setActiveCamera:v5];
  v7 = DiagnosticLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully set camera position to %ld", &v10, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000054C0();
    }

    if (![(QRCodeReaderViewController *)self setActiveCamera:v4])
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000054FC();
      }

      [(QRCodeReaderViewController *)self finishWithStatusCode:&off_10000C9F0 metadata:0];
    }
  }
}

- (void)takePictureWithHandler:(id)a3
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "take picture call on QRCodeReaderViewController", v4, 2u);
  }
}

- (BOOL)setActiveCamera:(int64_t)a3
{
  [(QRCodeReaderViewController *)self setFlash:0];
  v5 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:a3];
  if (v5)
  {
    v18 = 0;
    v6 = [[AVCaptureDeviceInput alloc] initWithDevice:v5 error:&v18];
    v7 = v18;
    v8 = v6 != 0;
    if (v6)
    {
      v9 = [(QRCodeReaderViewController *)self captureSession];
      [v9 beginConfiguration];

      v10 = [(QRCodeReaderViewController *)self cameraInput];

      if (v10)
      {
        v11 = [(QRCodeReaderViewController *)self captureSession];
        v12 = [(QRCodeReaderViewController *)self cameraInput];
        [v11 removeInput:v12];
      }

      v13 = [(QRCodeReaderViewController *)self captureSession];
      [v13 addInput:v6];

      v14 = [(QRCodeReaderViewController *)self captureSession];
      [v14 commitConfiguration];

      [(QRCodeReaderViewController *)self setCameraDevice:v5];
      [(QRCodeReaderViewController *)self setCameraInput:v6];
      [(QRCodeReaderViewController *)self setCameraPosition:a3];
      v15 = [(QRCodeReaderViewController *)self overlayView];
      [v15 setFlashUIEnabled:a3 == 1];

      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = a3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully set active camera to position %ld", buf, 0xCu);
      }
    }

    else
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100005538();
      }
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000055AC();
    }

    v8 = 0;
  }

  return v8;
}

@end