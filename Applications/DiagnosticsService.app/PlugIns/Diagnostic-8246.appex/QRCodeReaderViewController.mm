@interface QRCodeReaderViewController
- (BOOL)setActiveCamera:(int64_t)camera;
- (BOOL)setFlash:(BOOL)flash;
- (QRCodeReaderViewController)init;
- (void)cancelTapped;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)cleanup;
- (void)finishWithStatusCode:(id)code metadata:(id)metadata;
- (void)flashTapped;
- (void)flipTapped;
- (void)setupCamera;
- (void)setupCodeRecognition;
- (void)setupUI;
- (void)start;
- (void)takePictureWithHandler:(id)handler;
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
    captureSession = [(QRCodeReaderViewController *)self captureSession];
    v7 = +[NSOperationQueue mainQueue];
    v8 = [v5 addObserverForName:AVCaptureSessionRuntimeErrorNotification object:captureSession queue:v7 usingBlock:&stru_10000C3D8];

    v9 = +[NSNotificationCenter defaultCenter];
    captureSession2 = [(QRCodeReaderViewController *)self captureSession];
    v11 = +[NSOperationQueue mainQueue];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000030EC;
    v29 = &unk_10000C400;
    objc_copyWeak(&v30, &location);
    v12 = [v9 addObserverForName:AVCaptureSessionDidStartRunningNotification object:captureSession2 queue:v11 usingBlock:&v26];

    v13 = [NSNotificationCenter defaultCenter:v26];
    captureSession3 = [(QRCodeReaderViewController *)self captureSession];
    v15 = +[NSOperationQueue mainQueue];
    v16 = [v13 addObserverForName:AVCaptureSessionDidStopRunningNotification object:captureSession3 queue:v15 usingBlock:&stru_10000C420];

    v17 = +[NSNotificationCenter defaultCenter];
    captureSession4 = [(QRCodeReaderViewController *)self captureSession];
    v19 = +[NSOperationQueue mainQueue];
    v20 = [v17 addObserverForName:AVCaptureSessionWasInterruptedNotification object:captureSession4 queue:v19 usingBlock:&stru_10000C440];

    v21 = +[NSNotificationCenter defaultCenter];
    captureSession5 = [(QRCodeReaderViewController *)self captureSession];
    v23 = +[NSOperationQueue mainQueue];
    v24 = [v21 addObserverForName:AVCaptureSessionInterruptionEndedNotification object:captureSession5 queue:v23 usingBlock:&stru_10000C460];

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
  captureSession = [(QRCodeReaderViewController *)self captureSession];
  [captureSession addOutput:v6];

  [v6 setMetadataObjectsDelegate:self queue:&_dispatch_main_q];
  inputs = [(QRCodeReaderViewController *)self inputs];
  codeTypes = [inputs codeTypes];
  [v6 setMetadataObjectTypes:codeTypes];
}

- (void)setupUI
{
  v3 = +[UIColor blackColor];
  view = [(QRCodeReaderViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UIView alloc];
  view2 = [(QRCodeReaderViewController *)self view];
  [view2 bounds];
  v7 = [v5 initWithFrame:?];
  [(QRCodeReaderViewController *)self setPreviewView:v7];

  v8 = [AVCaptureVideoPreviewLayer alloc];
  captureSession = [(QRCodeReaderViewController *)self captureSession];
  v10 = [v8 initWithSession:captureSession];

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

    connection = [v10 connection];
    [connection setVideoRotationAngle:v11];

    previewView = [(QRCodeReaderViewController *)self previewView];
    [previewView bounds];
    [v10 setFrame:?];

    v15 = [CameraTargetView alloc];
    previewView2 = [(QRCodeReaderViewController *)self previewView];
    [previewView2 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    inputs = [(QRCodeReaderViewController *)self inputs];
    viewfinderInstruction = [inputs viewfinderInstruction];
    v27 = [(CameraTargetView *)v15 initWithFrame:viewfinderInstruction instructionText:12 presentationOptions:v18, v20, v22, v24];
    [(QRCodeReaderViewController *)self setOverlayView:v27];

    overlayView = [(QRCodeReaderViewController *)self overlayView];
    [overlayView setDelegate:self];

    previewView3 = [(QRCodeReaderViewController *)self previewView];
    layer = [previewView3 layer];
    [layer addSublayer:v10];

    previewView4 = [(QRCodeReaderViewController *)self previewView];
    overlayView2 = [(QRCodeReaderViewController *)self overlayView];
    [previewView4 addSubview:overlayView2];

    view3 = [(QRCodeReaderViewController *)self view];
    previewView5 = [(QRCodeReaderViewController *)self previewView];
    [view3 addSubview:previewView5];
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
  timeoutTimer = [(QRCodeReaderViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(QRCodeReaderViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];
  }

  cameraDevice = [(QRCodeReaderViewController *)self cameraDevice];
  if (cameraDevice)
  {
    v6 = cameraDevice;
    cameraDevice2 = [(QRCodeReaderViewController *)self cameraDevice];
    isTorchActive = [cameraDevice2 isTorchActive];

    if (isTorchActive)
    {
      [(QRCodeReaderViewController *)self setFlash:0];
    }
  }

  captureSession = [(QRCodeReaderViewController *)self captureSession];
  if (captureSession)
  {
    v10 = captureSession;
    captureSession2 = [(QRCodeReaderViewController *)self captureSession];
    isRunning = [captureSession2 isRunning];

    if (isRunning)
    {
      captureSession3 = [(QRCodeReaderViewController *)self captureSession];
      [captureSession3 stopRunning];

      [(QRCodeReaderViewController *)self setCaptureSession:0];
    }
  }
}

- (void)finishWithStatusCode:(id)code metadata:(id)metadata
{
  metadataCopy = metadata;
  codeCopy = code;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (metadataCopy)
  {
    [v7 addEntriesFromDictionary:metadataCopy];
  }

  exclavesStatus = [(QRCodeReaderViewController *)self exclavesStatus];

  if (exclavesStatus)
  {
    exclavesStatus2 = [(QRCodeReaderViewController *)self exclavesStatus];
    [v8 addEntriesFromDictionary:exclavesStatus2];
  }

  if ([v8 count])
  {
    v11 = [v8 copy];
    result = [(QRCodeReaderViewController *)self result];
    [result setData:v11];
  }

  [(QRCodeReaderViewController *)self cleanup];
  exclavesStatus3 = [(QRCodeReaderViewController *)self exclavesStatus];
  v14 = [DAExclavesSupport testResultOverrideForExclavesStatus:exclavesStatus3 originalResult:codeCopy];

  result2 = [(QRCodeReaderViewController *)self result];
  [result2 setStatusCode:v14];

  [(QRCodeReaderViewController *)self setFinished:1];
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = [objectsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "captureOutput called for %ld objects", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objectsCopy;
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
            stringValue = [v14 stringValue];
            *buf = 138412290;
            v31 = stringValue;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Decoded QR Code: %@", buf, 0xCu);
          }

          stringValue2 = [v14 stringValue];
          [v7 addObject:stringValue2];
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
    cameraPosition = [(QRCodeReaderViewController *)self cameraPosition];
    v20 = @"back";
    if (cameraPosition == 2)
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
    overlayView = [(QRCodeReaderViewController *)self overlayView];
    [overlayView setFlashState:{-[QRCodeReaderViewController flashState](self, "flashState")}];
  }
}

- (BOOL)setFlash:(BOOL)flash
{
  flashCopy = flash;
  cameraDevice = [(QRCodeReaderViewController *)self cameraDevice];

  if (!cameraDevice)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No camera device set. Not changing torch state.", buf, 2u);
    }

    goto LABEL_13;
  }

  cameraDevice2 = [(QRCodeReaderViewController *)self cameraDevice];
  if (([cameraDevice2 isTorchModeSupported:1] & 1) == 0)
  {

    v9 = 0;
    goto LABEL_10;
  }

  cameraDevice3 = [(QRCodeReaderViewController *)self cameraDevice];
  v17 = 0;
  v8 = [cameraDevice3 lockForConfiguration:&v17];
  v9 = v17;

  if (!v8)
  {
LABEL_10:
    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100005434(flashCopy, v9, v15);
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = flashCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting torch state to %d", buf, 8u);
  }

  flashState = [(QRCodeReaderViewController *)self flashState];
  cameraDevice4 = [(QRCodeReaderViewController *)self cameraDevice];
  [cameraDevice4 setTorchMode:flashState];

  cameraDevice5 = [(QRCodeReaderViewController *)self cameraDevice];
  [cameraDevice5 unlockForConfiguration];

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

  cameraPosition = [(QRCodeReaderViewController *)self cameraPosition];
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

    if (![(QRCodeReaderViewController *)self setActiveCamera:cameraPosition])
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

- (void)takePictureWithHandler:(id)handler
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "take picture call on QRCodeReaderViewController", v4, 2u);
  }
}

- (BOOL)setActiveCamera:(int64_t)camera
{
  [(QRCodeReaderViewController *)self setFlash:0];
  v5 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:camera];
  if (v5)
  {
    v18 = 0;
    v6 = [[AVCaptureDeviceInput alloc] initWithDevice:v5 error:&v18];
    v7 = v18;
    v8 = v6 != 0;
    if (v6)
    {
      captureSession = [(QRCodeReaderViewController *)self captureSession];
      [captureSession beginConfiguration];

      cameraInput = [(QRCodeReaderViewController *)self cameraInput];

      if (cameraInput)
      {
        captureSession2 = [(QRCodeReaderViewController *)self captureSession];
        cameraInput2 = [(QRCodeReaderViewController *)self cameraInput];
        [captureSession2 removeInput:cameraInput2];
      }

      captureSession3 = [(QRCodeReaderViewController *)self captureSession];
      [captureSession3 addInput:v6];

      captureSession4 = [(QRCodeReaderViewController *)self captureSession];
      [captureSession4 commitConfiguration];

      [(QRCodeReaderViewController *)self setCameraDevice:v5];
      [(QRCodeReaderViewController *)self setCameraInput:v6];
      [(QRCodeReaderViewController *)self setCameraPosition:camera];
      overlayView = [(QRCodeReaderViewController *)self overlayView];
      [overlayView setFlashUIEnabled:camera == 1];

      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        cameraCopy = camera;
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