@interface CameraSensorAnomalyViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)originPoint;
- (CGRect)rectangle;
- (id)findDevice:(id)device;
- (int64_t)setupCameraPreview;
- (int64_t)setupSessionForDevice:(id)device;
- (void)addPanGesture;
- (void)addTapGesture;
- (void)addedRectangleView;
- (void)cancel;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)cleanUp;
- (void)continueButtonPressed:(id)pressed;
- (void)disableAdaptationAndBlueLightReduction;
- (void)endTestWithStatusCode:(id)code;
- (void)flashTapped;
- (void)flipTapped;
- (void)hideCameraView;
- (void)panOccurred:(id)occurred;
- (void)parseResults;
- (void)removeDrawingModeViews;
- (void)removeResultWithTag:(int64_t)tag;
- (void)removeShape:(id)shape;
- (void)resetBrightness;
- (void)resetColorAdjustmentStates;
- (void)retakeButtonPressed:(id)pressed;
- (void)saveAndMaximizeBrightness;
- (void)saveColorAdjustmentStates;
- (void)scrollViewDidZoom:(id)zoom;
- (void)setupCamera;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)showCameraView;
- (void)start;
- (void)takePictureWithHandler:(id)handler;
- (void)tapOccurred:(id)occurred;
- (void)updateViewConstraints;
- (void)usePhotoButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation CameraSensorAnomalyViewController

- (void)viewDidLoad
{
  [(CameraSensorAnomalyViewController *)self setShouldShowPressHomeLabel:0];
  v3.receiver = self;
  v3.super_class = CameraSensorAnomalyViewController;
  [(CameraSensorAnomalyViewController *)&v3 viewDidLoad];
}

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(CameraSensorAnomalyViewController *)self setInputs:inputs, responder];
  [(CameraSensorAnomalyViewController *)self setCurrentTag:1];
  [(CameraSensorAnomalyViewController *)self setDrawingMode:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(CameraSensorAnomalyViewController *)self setAllResults:v5];

  [(CameraSensorAnomalyViewController *)self setExclavesStatus:0];
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  disableAmbientLightAdaptation = [inputs disableAmbientLightAdaptation];

  if (disableAmbientLightAdaptation)
  {
    v8 = objc_alloc_init(CBClient);
    [(CameraSensorAnomalyViewController *)self setClient:v8];

    client = [(CameraSensorAnomalyViewController *)self client];
    blueLightClient = [client blueLightClient];
    [(CameraSensorAnomalyViewController *)self setBlueLightClient:blueLightClient];

    client2 = [(CameraSensorAnomalyViewController *)self client];
    adaptationClient = [client2 adaptationClient];
    [(CameraSensorAnomalyViewController *)self setAdaptationClient:adaptationClient];
  }

  v13 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v13 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v33[0] = @"predicates";
    v31 = @"identifier";
    inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
    identifier = [inputs2 identifier];
    v32 = identifier;
    v28 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34[0] = v28;
    v33[1] = @"minimumSquareLength";
    inputs3 = [(CameraSensorAnomalyViewController *)self inputs];
    [inputs3 minimumSquareLength];
    v26 = [NSNumber numberWithFloat:?];
    v34[1] = v26;
    v33[2] = @"enableMaxBrightness";
    inputs4 = [(CameraSensorAnomalyViewController *)self inputs];
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs4 enableMaxBrightness]);
    v34[2] = v15;
    v33[3] = @"flashModeOn";
    inputs5 = [(CameraSensorAnomalyViewController *)self inputs];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs5 flashModeOn]);
    v34[3] = v17;
    v33[4] = @"viewfinderInstruction";
    inputs6 = [(CameraSensorAnomalyViewController *)self inputs];
    viewfinderInstruction = [inputs6 viewfinderInstruction];
    v34[4] = viewfinderInstruction;
    v33[5] = @"drawColor";
    inputs7 = [(CameraSensorAnomalyViewController *)self inputs];
    drawColor = [inputs7 drawColor];
    v34[5] = drawColor;
    v33[6] = @"disableAmbientLightAdaptation";
    inputs8 = [(CameraSensorAnomalyViewController *)self inputs];
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs8 disableAmbientLightAdaptation]);
    v34[6] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];
    [DSTestAutomation postConfiguration:v24];
  }
}

- (void)start
{
  v3 = +[UIColor blackColor];
  view = [(CameraSensorAnomalyViewController *)self view];
  [view setBackgroundColor:v3];

  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  LODWORD(view) = [inputs enableMaxBrightness];

  if (view)
  {
    [(CameraSensorAnomalyViewController *)self saveAndMaximizeBrightness];
  }

  inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
  disableAmbientLightAdaptation = [inputs2 disableAmbientLightAdaptation];

  if (disableAmbientLightAdaptation)
  {
    [(CameraSensorAnomalyViewController *)self saveColorAdjustmentStates];
    [(CameraSensorAnomalyViewController *)self disableAdaptationAndBlueLightReduction];
  }

  [(CameraSensorAnomalyViewController *)self setupCamera];
}

- (void)cancel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000024DC;
  block[3] = &unk_1000143F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cleanUp
{
  [(CameraSensorAnomalyViewController *)self resetBrightness];
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  disableAmbientLightAdaptation = [inputs disableAmbientLightAdaptation];

  if (disableAmbientLightAdaptation)
  {
    [(CameraSensorAnomalyViewController *)self resetColorAdjustmentStates];
  }

  session = [(CameraSensorAnomalyViewController *)self session];

  if (session)
  {
    session2 = [(CameraSensorAnomalyViewController *)self session];
    isRunning = [session2 isRunning];

    if (isRunning)
    {
      session3 = [(CameraSensorAnomalyViewController *)self session];
      [session3 stopRunning];

      v9 = +[DSTestAutomation sharedInstance];
      testAutomationEnabled = [v9 testAutomationEnabled];

      if (testAutomationEnabled)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        session4 = [(CameraSensorAnomalyViewController *)self session];
        [v11 removeObserver:self name:AVCaptureSessionDidStartRunningNotification object:session4];
      }

      [(CameraSensorAnomalyViewController *)self setSession:0];
    }
  }
}

- (void)setupCamera
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    inputs = [(CameraSensorAnomalyViewController *)self inputs];
    identifier = [inputs identifier];
    *buf = 138412290;
    v34 = identifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "self.inputs.identifier: %@", buf, 0xCu);
  }

  inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
  identifier2 = [inputs2 identifier];
  v7 = [(CameraSensorAnomalyViewController *)self findDevice:identifier2];

  objc_initWeak(buf, self);
  if (!v7)
  {
    setupCameraPreview = -3;
LABEL_8:
    v30 = [NSNumber numberWithInteger:setupCameraPreview];
    [(CameraSensorAnomalyViewController *)self endTestWithStatusCode:v30];

    goto LABEL_9;
  }

  setupCameraPreview = [(CameraSensorAnomalyViewController *)self setupSessionForDevice:v7];
  if (setupCameraPreview)
  {
    goto LABEL_8;
  }

  setupCameraPreview = [(CameraSensorAnomalyViewController *)self setupCameraPreview];
  if (setupCameraPreview)
  {
    goto LABEL_8;
  }

  v9 = +[NSNotificationCenter defaultCenter];
  session = [(CameraSensorAnomalyViewController *)self session];
  v11 = +[NSOperationQueue mainQueue];
  v12 = [v9 addObserverForName:AVCaptureSessionRuntimeErrorNotification object:session queue:v11 usingBlock:&stru_100014430];

  v13 = +[NSNotificationCenter defaultCenter];
  session2 = [(CameraSensorAnomalyViewController *)self session];
  v15 = +[NSOperationQueue mainQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100002B0C;
  v31[3] = &unk_100014458;
  objc_copyWeak(&v32, buf);
  v16 = [v13 addObserverForName:AVCaptureSessionDidStartRunningNotification object:session2 queue:v15 usingBlock:v31];

  v17 = +[NSNotificationCenter defaultCenter];
  session3 = [(CameraSensorAnomalyViewController *)self session];
  v19 = +[NSOperationQueue mainQueue];
  v20 = [v17 addObserverForName:AVCaptureSessionDidStopRunningNotification object:session3 queue:v19 usingBlock:&stru_100014478];

  v21 = +[NSNotificationCenter defaultCenter];
  session4 = [(CameraSensorAnomalyViewController *)self session];
  v23 = +[NSOperationQueue mainQueue];
  v24 = [v21 addObserverForName:AVCaptureSessionWasInterruptedNotification object:session4 queue:v23 usingBlock:&stru_100014498];

  v25 = +[NSNotificationCenter defaultCenter];
  session5 = [(CameraSensorAnomalyViewController *)self session];
  v27 = +[NSOperationQueue mainQueue];
  v28 = [v25 addObserverForName:AVCaptureSessionInterruptionEndedNotification object:session5 queue:v27 usingBlock:&stru_1000144B8];

  [(CameraSensorAnomalyViewController *)self showCameraView];
  session6 = [(CameraSensorAnomalyViewController *)self session];
  [session6 startRunning];

  objc_destroyWeak(&v32);
LABEL_9:
  objc_destroyWeak(buf);
}

- (id)findDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isEqualToString:@"Front"])
  {
    v4 = &AVCaptureDeviceTypeBuiltInWideAngleCamera;
    v5 = 2;
  }

  else
  {
    if ([deviceCopy isEqualToString:@"Rear"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInWideAngleCamera;
    }

    else if ([deviceCopy isEqualToString:@"RearTelephoto"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInTelephotoCamera;
    }

    else if ([deviceCopy isEqualToString:@"RearSuperWide"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInUltraWideCamera;
    }

    else
    {
      if (![deviceCopy isEqualToString:@"RearSynced"])
      {
        v7 = 0;
        goto LABEL_18;
      }

      v4 = &AVCaptureDeviceTypeBuiltInDualCamera;
    }

    v5 = 1;
  }

  v6 = *v4;
  v7 = v6;
  if (v6)
  {
    v21 = v6;
    v8 = [NSArray arrayWithObjects:&v21 count:1];
    v9 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v8 mediaType:AVMediaTypeVideo position:v5];

    devices = [v9 devices];
    v11 = [devices count];

    if (v11)
    {
      devices2 = [v9 devices];
      firstObject = [devices2 firstObject];

      if (firstObject)
      {
        v14 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          deviceType = [firstObject deviceType];
          v17 = 138412546;
          v18 = firstObject;
          v19 = 2112;
          v20 = deviceType;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Requested device found: %@, %@", &v17, 0x16u);
        }

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

LABEL_18:
  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100009174();
  }

  firstObject = 0;
LABEL_21:

  return firstObject;
}

- (int64_t)setupSessionForDevice:(id)device
{
  v19 = 0;
  v4 = [AVCaptureDeviceInput deviceInputWithDevice:device error:&v19];
  v5 = v19;
  if (v4)
  {
    v6 = objc_alloc_init(AVCapturePhotoOutput);
    [(CameraSensorAnomalyViewController *)self setOutput:v6];

    output = [(CameraSensorAnomalyViewController *)self output];
    [output setLivePhotoCaptureEnabled:0];

    v8 = objc_alloc_init(AVCaptureSession);
    [(CameraSensorAnomalyViewController *)self setSession:v8];

    session = [(CameraSensorAnomalyViewController *)self session];
    [session setSessionPreset:AVCaptureSessionPresetPhoto];

    session2 = [(CameraSensorAnomalyViewController *)self session];
    if ([session2 canAddInput:v4])
    {
      session3 = [(CameraSensorAnomalyViewController *)self session];
      output2 = [(CameraSensorAnomalyViewController *)self output];
      v13 = [session3 canAddOutput:output2];

      if (v13)
      {
        session4 = [(CameraSensorAnomalyViewController *)self session];
        [session4 addInput:v4];

        session5 = [(CameraSensorAnomalyViewController *)self session];
        output3 = [(CameraSensorAnomalyViewController *)self output];
        [session5 addOutput:output3];

        v17 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    session5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(session5, OS_LOG_TYPE_ERROR))
    {
      sub_1000091E8();
    }

    v17 = -5;
  }

  else
  {
    session5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(session5, OS_LOG_TYPE_ERROR))
    {
      sub_100009228();
    }

    v17 = -4;
  }

LABEL_12:

  return v17;
}

- (int64_t)setupCameraPreview
{
  v3 = [UIView alloc];
  view = [(CameraSensorAnomalyViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  [(CameraSensorAnomalyViewController *)self setPreviewView:v5];

  session = [(CameraSensorAnomalyViewController *)self session];
  v7 = [AVCaptureVideoPreviewLayer layerWithSession:session];

  if (v7)
  {
    [v7 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    inputs = [(CameraSensorAnomalyViewController *)self inputs];
    identifier = [inputs identifier];
    v10 = [identifier isEqualToString:@"Front"];

    if (v10)
    {
      v11 = ((MGGetSInt32Answer() + 90) % 360);
    }

    else
    {
      v11 = 90.0;
    }

    connection = [v7 connection];
    [connection setVideoRotationAngle:v11];

    previewView = [(CameraSensorAnomalyViewController *)self previewView];
    [previewView bounds];
    [v7 setFrame:?];

    v16 = [CameraTargetView alloc];
    previewView2 = [(CameraSensorAnomalyViewController *)self previewView];
    [previewView2 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = +[UIColor orangeColor];
    inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
    viewfinderInstruction = [inputs2 viewfinderInstruction];
    v29 = [(CameraTargetView *)v16 initWithFrame:v26 color:viewfinderInstruction thickness:3 instructionText:v19 presentationOptions:v21, v23, v25, 2.0];
    [(CameraSensorAnomalyViewController *)self setOverlayView:v29];

    overlayView = [(CameraSensorAnomalyViewController *)self overlayView];
    [overlayView setUserInteractionEnabled:1];

    overlayView2 = [(CameraSensorAnomalyViewController *)self overlayView];
    [overlayView2 setDelegate:self];

    previewView3 = [(CameraSensorAnomalyViewController *)self previewView];
    layer = [previewView3 layer];
    [layer addSublayer:v7];

    previewView4 = [(CameraSensorAnomalyViewController *)self previewView];
    overlayView3 = [(CameraSensorAnomalyViewController *)self overlayView];
    [previewView4 addSubview:overlayView3];

    v13 = 0;
  }

  else
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000929C();
    }

    v13 = -6;
  }

  return v13;
}

- (void)showCameraView
{
  view = [(CameraSensorAnomalyViewController *)self view];
  previewView = [(CameraSensorAnomalyViewController *)self previewView];
  [view addSubview:previewView];

  v5 = +[DSTestAutomation sharedInstance];
  LODWORD(view) = [v5 testAutomationEnabled];

  if (view)
  {

    [DSTestAutomation postInteractiveTestEvent:@"ViewDidChange" info:&off_100014FF0];
  }
}

- (void)hideCameraView
{
  previewView = [(CameraSensorAnomalyViewController *)self previewView];
  [previewView removeFromSuperview];
}

- (void)addPanGesture
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"panOccurred:"];
  [(CameraSensorAnomalyViewController *)self setPanGesture:v3];

  panGesture = [(CameraSensorAnomalyViewController *)self panGesture];
  [panGesture setMinimumNumberOfTouches:1];

  panGesture2 = [(CameraSensorAnomalyViewController *)self panGesture];
  [panGesture2 setDelegate:self];

  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  drawableView = [currentImageView drawableView];
  panGesture3 = [(CameraSensorAnomalyViewController *)self panGesture];
  [drawableView addGestureRecognizer:panGesture3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGesture = [(CameraSensorAnomalyViewController *)self panGesture];
  if (panGesture != beginCopy)
  {
    v6 = 1;
LABEL_6:

    goto LABEL_7;
  }

  numberOfTouches = [beginCopy numberOfTouches];

  if (numberOfTouches != 1)
  {
    panGesture = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [panGesture zoomScale];
    v6 = v8 <= 1.0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (void)addTapGesture
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapOccurred:"];
  [(CameraSensorAnomalyViewController *)self setTapGesture:v3];

  tapGesture = [(CameraSensorAnomalyViewController *)self tapGesture];
  [tapGesture setDelegate:self];

  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  drawableView = [currentImageView drawableView];
  tapGesture2 = [(CameraSensorAnomalyViewController *)self tapGesture];
  [drawableView addGestureRecognizer:tapGesture2];
}

- (void)panOccurred:(id)occurred
{
  occurredCopy = occurred;
  if ([occurredCopy numberOfTouches] <= 1)
  {
    if ([occurredCopy state] == 1)
    {
      currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
      drawableView = [currentImageView drawableView];
      [occurredCopy locationInView:drawableView];
      [(CameraSensorAnomalyViewController *)self setOriginPoint:?];

      [(CameraSensorAnomalyViewController *)self setIsDrawing:1];
    }

    if ([(CameraSensorAnomalyViewController *)self isDrawing])
    {
      state = [occurredCopy state];
      currentImageView2 = [(CameraSensorAnomalyViewController *)self currentImageView];
      drawableView2 = [currentImageView2 drawableView];
      v10 = drawableView2;
      if (state == 3)
      {
        [drawableView2 endDrawing];

        [(CameraSensorAnomalyViewController *)self addedRectangleView];
        [(CameraSensorAnomalyViewController *)self setIsDrawing:0];
      }

      else
      {
        [occurredCopy locationInView:drawableView2];
        v12 = v11;
        v14 = v13;

        currentImageView3 = [(CameraSensorAnomalyViewController *)self currentImageView];
        drawableView3 = [currentImageView3 drawableView];
        [drawableView3 bounds];
        v56.x = v12;
        v56.y = v14;
        v17 = CGRectContainsPoint(v57, v56);

        if (v17)
        {
          [(CameraSensorAnomalyViewController *)self originPoint];
          v19 = vabdd_f64(v18, v12);
          inputs = [(CameraSensorAnomalyViewController *)self inputs];
          [inputs minimumSquareLength];
          v22 = v21;
          [(CameraSensorAnomalyViewController *)self originPoint];
          v24 = v23;
          if (v19 >= v22)
          {
            v28 = 0;
            if (v23 >= v12)
            {
              v26 = v12;
            }

            else
            {
              v26 = v23;
            }
          }

          else
          {
            [(CameraSensorAnomalyViewController *)self originPoint];
            v26 = v25;
            if (v12 >= v24)
            {
              v28 = 0;
            }

            else
            {
              drawableView3 = [(CameraSensorAnomalyViewController *)self inputs];
              [drawableView3 minimumSquareLength];
              v26 = v26 - v27;
              v28 = 1;
            }
          }

          [(CameraSensorAnomalyViewController *)self originPoint];
          v30 = vabdd_f64(v29, v14);
          inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
          [inputs2 minimumSquareLength];
          v33 = v32;
          [(CameraSensorAnomalyViewController *)self originPoint];
          v35 = v34;
          if (v30 >= v33)
          {
            v39 = 0;
            if (v34 >= v14)
            {
              v37 = v14;
            }

            else
            {
              v37 = v34;
            }
          }

          else
          {
            [(CameraSensorAnomalyViewController *)self originPoint];
            v37 = v36;
            if (v14 >= v35)
            {
              v39 = 0;
            }

            else
            {
              inputs3 = [(CameraSensorAnomalyViewController *)self inputs];
              [inputs3 minimumSquareLength];
              v37 = v37 - v38;
              v39 = 1;
            }
          }

          [(CameraSensorAnomalyViewController *)self originPoint];
          v41 = vabdd_f64(v40, v12);
          inputs4 = [(CameraSensorAnomalyViewController *)self inputs];
          [inputs4 minimumSquareLength];
          v44 = v43;

          if (v41 >= v44)
          {
            v45 = v41;
          }

          else
          {
            v45 = v44;
          }

          [(CameraSensorAnomalyViewController *)self originPoint];
          v47 = vabdd_f64(v46, v14);
          inputs5 = [(CameraSensorAnomalyViewController *)self inputs];
          [inputs5 minimumSquareLength];
          v50 = v49;

          if (v47 >= v50)
          {
            v51 = v47;
          }

          else
          {
            v51 = v50;
          }

          [(CameraSensorAnomalyViewController *)self setRectangle:v26, v37, v45, v51];
          if (v39)
          {
          }

          if (v28)
          {
          }

          currentImageView4 = [(CameraSensorAnomalyViewController *)self currentImageView];
          drawableView4 = [currentImageView4 drawableView];
          [(CameraSensorAnomalyViewController *)self rectangle];
          [drawableView4 updateDrawing:?];
        }
      }
    }
  }

  _objc_release_x1();
}

- (void)tapOccurred:(id)occurred
{
  occurredCopy = occurred;
  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  drawableView = [currentImageView drawableView];
  [occurredCopy locationInView:drawableView];
  v8 = v7;
  v10 = v9;

  [(CameraSensorAnomalyViewController *)self setOriginPoint:v8, v10];
  [(CameraSensorAnomalyViewController *)self originPoint];
  v12 = v11;
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  [inputs minimumSquareLength];
  v15 = v12 - (v14 * 0.5);
  [(CameraSensorAnomalyViewController *)self originPoint];
  v17 = v16;
  inputs2 = [(CameraSensorAnomalyViewController *)self inputs];
  [inputs2 minimumSquareLength];
  v20 = v17 - (v19 * 0.5);
  inputs3 = [(CameraSensorAnomalyViewController *)self inputs];
  [inputs3 minimumSquareLength];
  v23 = v22;
  inputs4 = [(CameraSensorAnomalyViewController *)self inputs];
  [inputs4 minimumSquareLength];
  [(CameraSensorAnomalyViewController *)self setRectangle:v15, v20, v23, v25];

  [(CameraSensorAnomalyViewController *)self addedRectangleView];
}

- (void)removeShape:(id)shape
{
  view = [shape view];
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  drawColor = [inputs drawColor];
  [view setBackgroundColor:drawColor];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOVE_ITEM" value:&stru_100014B00 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"REMOVE" value:&stru_100014B00 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004064;
  v20[3] = &unk_1000144E0;
  v12 = view;
  v21 = v12;
  selfCopy = self;
  v13 = [UIAlertAction actionWithTitle:v11 style:2 handler:v20];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_100014B00 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000040AC;
  v18[3] = &unk_100014508;
  v19 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v18];
  [v9 addAction:v17];

  [(CameraSensorAnomalyViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)addedRectangleView
{
  [(CameraSensorAnomalyViewController *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  drawColor = [inputs drawColor];
  v13 = +[UIColor clearColor];
  v14 = [DSShapeView rectangleWithFrame:drawColor borderColor:v13 fillColor:v4, v6, v8, v10];

  [v14 setTag:{-[CameraSensorAnomalyViewController currentTag](self, "currentTag")}];
  [(CameraSensorAnomalyViewController *)self setCurrentTag:[(CameraSensorAnomalyViewController *)self currentTag]+ 1];
  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"removeShape:"];
  [v14 addGestureRecognizer:v15];

  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  drawableView = [currentImageView drawableView];
  [drawableView addSubview:v14];

  currentImageView2 = [(CameraSensorAnomalyViewController *)self currentImageView];
  drawableView2 = [currentImageView2 drawableView];
  [v14 frame];
  v21 = v20;
  v23 = v22;
  view = [(CameraSensorAnomalyViewController *)self view];
  [drawableView2 convertPoint:view toView:{v21, v23}];
  v26 = v25;
  v28 = v27;

  v43[0] = @"xPos";
  imageScrollView = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [imageScrollView zoomScale];
  v30 = [NSNumber numberWithDouble:v26 / v29];
  v44[0] = v30;
  v43[1] = @"yPos";
  imageScrollView2 = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [imageScrollView2 zoomScale];
  v33 = [NSNumber numberWithDouble:v28 / v32];
  v44[1] = v33;
  v43[2] = @"width";
  [v14 frame];
  v35 = [NSNumber numberWithDouble:v34];
  v44[2] = v35;
  v43[3] = @"height";
  [v14 frame];
  v37 = [NSNumber numberWithDouble:v36];
  v44[3] = v37;
  v43[4] = @"tag";
  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 tag]);
  v44[4] = v38;
  v43[5] = @"brightness";
  BKSDisplayBrightnessGetCurrent();
  v39 = [NSNumber numberWithFloat:?];
  v44[5] = v39;
  v40 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:6];

  allResults = [(CameraSensorAnomalyViewController *)self allResults];
  [allResults addObject:v40];
}

- (void)removeDrawingModeViews
{
  imageScrollView = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [imageScrollView removeFromSuperview];

  bottomBar = [(CameraSensorAnomalyViewController *)self bottomBar];
  [bottomBar removeFromSuperview];
}

- (void)retakeButtonPressed:(id)pressed
{
  [(CameraSensorAnomalyViewController *)self removeDrawingModeViews];
  [(CameraSensorAnomalyViewController *)self setDrawingMode:0];

  [(CameraSensorAnomalyViewController *)self showCameraView];
}

- (void)usePhotoButtonPressed:(id)pressed
{
  retakeButton = [(CameraSensorAnomalyViewController *)self retakeButton];
  [retakeButton setHidden:1];

  usePhotoButton = [(CameraSensorAnomalyViewController *)self usePhotoButton];
  [usePhotoButton setHidden:1];

  continueButton = [(CameraSensorAnomalyViewController *)self continueButton];
  [continueButton setHidden:0];

  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  [currentImageView setUserInteractionEnabled:1];

  imageScrollView = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [imageScrollView setMaximumZoomScale:3.0];

  [(CameraSensorAnomalyViewController *)self addPanGesture];
  [(CameraSensorAnomalyViewController *)self addTapGesture];
  v9 = +[DSTestAutomation sharedInstance];
  LODWORD(imageScrollView) = [v9 testAutomationEnabled];

  if (imageScrollView)
  {

    [DSTestAutomation postInteractiveTestEvent:@"ViewDidChange" info:&off_100015018];
  }
}

- (void)continueButtonPressed:(id)pressed
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CAMERA_SENSOR_ANOMALY_TOOL_COMPLETE_TITLE" value:&stru_100014B00 table:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CAMERA_SENSOR_ANOMALY_TOOL_COMPLETE_MESSAGE" value:&stru_100014B00 table:0];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"GO_BACK" value:&stru_100014B00 table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"DONE" value:&stru_100014B00 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004854;
  v15[3] = &unk_100014508;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];
  [v8 addAction:v14];

  [(CameraSensorAnomalyViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  [(CameraSensorAnomalyViewController *)self cleanUp];
  exclavesStatus = [(CameraSensorAnomalyViewController *)self exclavesStatus];
  v6 = [DAExclavesSupport testResultOverrideForExclavesStatus:exclavesStatus originalResult:codeCopy];

  result = [(CameraSensorAnomalyViewController *)self result];
  [result setStatusCode:v6];

  [(CameraSensorAnomalyViewController *)self parseResults];

  [(CameraSensorAnomalyViewController *)self setFinished:1];
}

- (void)parseResults
{
  result = [(CameraSensorAnomalyViewController *)self result];
  statusCode = [result statusCode];
  v5 = [statusCode isEqualToNumber:&off_100014F40];

  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000092DC();
    }

    result2 = [(CameraSensorAnomalyViewController *)self result];
    [result2 setData:&__NSDictionary0__struct];
  }

  else
  {
    v8 = [NSMutableArray alloc];
    allResults = [(CameraSensorAnomalyViewController *)self allResults];
    result2 = [v8 initWithCapacity:{objc_msgSend(allResults, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allResults2 = [(CameraSensorAnomalyViewController *)self allResults];
    v11 = [allResults2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(allResults2);
          }

          v15 = [*(*(&v34 + 1) + 8 * v14) mutableCopy];
          [v15 removeObjectForKey:@"tag"];
          [result2 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [allResults2 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v12);
    }

    v16 = [result2 copy];
    [(CameraSensorAnomalyViewController *)self setAllResults:v16];

    v17 = objc_alloc_init(NSMutableDictionary);
    view = [(CameraSensorAnomalyViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [screen bounds];
    v23 = v22;
    v25 = v24;

    v38[0] = @"displayResX";
    v26 = [NSNumber numberWithDouble:v23];
    v39[0] = v26;
    v38[1] = @"displayResY";
    v27 = [NSNumber numberWithDouble:v25];
    v39[1] = v27;
    v38[2] = @"anomaliesDetected";
    allResults3 = [(CameraSensorAnomalyViewController *)self allResults];
    v39[2] = allResults3;
    v29 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];

    [v17 addEntriesFromDictionary:v29];
    exclavesStatus = [(CameraSensorAnomalyViewController *)self exclavesStatus];

    if (exclavesStatus)
    {
      exclavesStatus2 = [(CameraSensorAnomalyViewController *)self exclavesStatus];
      [v17 addEntriesFromDictionary:exclavesStatus2];
    }

    v32 = [v17 copy];
    result3 = [(CameraSensorAnomalyViewController *)self result];
    [result3 setData:v32];
  }
}

- (void)removeResultWithTag:(int64_t)tag
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allResults = [(CameraSensorAnomalyViewController *)self allResults];
  v6 = [allResults countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allResults);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"tag"];
        integerValue = [v11 integerValue];

        if (integerValue == tag)
        {
          allResults2 = [(CameraSensorAnomalyViewController *)self allResults];
          [allResults2 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [allResults countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)saveColorAdjustmentStates
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  blueLightClient = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [blueLightClient getBlueLightStatus:v5];

  [(CameraSensorAnomalyViewController *)self setBlueLightStatusActive:LOBYTE(v5[0])];
  adaptationClient = [(CameraSensorAnomalyViewController *)self adaptationClient];
  -[CameraSensorAnomalyViewController setColorAdaptationStatus:](self, "setColorAdaptationStatus:", [adaptationClient getEnabled]);
}

- (void)resetColorAdjustmentStates
{
  blueLightClient = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [blueLightClient setActive:{-[CameraSensorAnomalyViewController blueLightStatusActive](self, "blueLightStatusActive")}];

  adaptationClient = [(CameraSensorAnomalyViewController *)self adaptationClient];
  [adaptationClient setEnabled:{-[CameraSensorAnomalyViewController colorAdaptationStatus](self, "colorAdaptationStatus")}];
}

- (void)disableAdaptationAndBlueLightReduction
{
  blueLightClient = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [blueLightClient setActive:0];

  adaptationClient = [(CameraSensorAnomalyViewController *)self adaptationClient];
  [adaptationClient setEnabled:0];
}

- (void)saveAndMaximizeBrightness
{
  BKSDisplayBrightnessGetCurrent();
  [(CameraSensorAnomalyViewController *)self setOriginalScreenBrightness:?];
  view = [(CameraSensorAnomalyViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen setBrightness:1.0];
}

- (void)resetBrightness
{
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  enableMaxBrightness = [inputs enableMaxBrightness];

  if (enableMaxBrightness)
  {
    view = [(CameraSensorAnomalyViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [(CameraSensorAnomalyViewController *)self originalScreenBrightness];
    [screen setBrightness:v8];
  }
}

- (void)flipTapped
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "flip tapped call on QRCodeReaderViewController", v3, 2u);
  }
}

- (void)flashTapped
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "flash tapped call on QRCodeReaderViewController", v3, 2u);
  }
}

- (void)takePictureWithHandler:(id)handler
{
  [(CameraSensorAnomalyViewController *)self setPhotoCaptureCompletionHandler:handler];
  v6 = +[AVCapturePhotoSettings photoSettings];
  inputs = [(CameraSensorAnomalyViewController *)self inputs];
  [v6 setFlashMode:{objc_msgSend(inputs, "flashModeOn")}];

  output = [(CameraSensorAnomalyViewController *)self output];
  [output capturePhotoWithSettings:v6 delegate:self];
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  errorCopy = error;
  photoCopy = photo;
  [(CameraSensorAnomalyViewController *)self hideCameraView];
  photoCaptureCompletionHandler = [(CameraSensorAnomalyViewController *)self photoCaptureCompletionHandler];

  if (photoCaptureCompletionHandler)
  {
    photoCaptureCompletionHandler2 = [(CameraSensorAnomalyViewController *)self photoCaptureCompletionHandler];
    photoCaptureCompletionHandler2[2]();

    [(CameraSensorAnomalyViewController *)self setPhotoCaptureCompletionHandler:0];
  }

  v11 = [CameraSensorAnomalyTestImageView alloc];
  view = [(CameraSensorAnomalyViewController *)self view];
  [view frame];
  v13 = [(CameraSensorAnomalyTestImageView *)v11 initWithFrame:?];
  [(CameraSensorAnomalyViewController *)self setCurrentImageView:v13];

  fileDataRepresentation = [photoCopy fileDataRepresentation];

  v188 = fileDataRepresentation;
  if (!fileDataRepresentation)
  {
    goto LABEL_10;
  }

  view2 = [(CameraSensorAnomalyViewController *)self view];
  window = [view2 window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen scale];
  v19 = [UIImage imageWithData:fileDataRepresentation scale:?];

  if (v19)
  {
    v187 = errorCopy;
    [(CameraSensorAnomalyViewController *)self setDrawingMode:1];
    currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView setImage:v19];

    currentImageView2 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView2 bounds];
    v23 = v22;
    currentImageView3 = [(CameraSensorAnomalyViewController *)self currentImageView];
    image = [currentImageView3 image];
    [image size];
    v27 = v23 / v26;

    currentImageView4 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView4 bounds];
    v30 = v29;
    currentImageView5 = [(CameraSensorAnomalyViewController *)self currentImageView];
    image2 = [currentImageView5 image];
    [image2 size];
    v34 = v30 / v33;

    if (v27 < v34)
    {
      v34 = v27;
    }

    currentImageView6 = [(CameraSensorAnomalyViewController *)self currentImageView];
    image3 = [currentImageView6 image];
    [image3 size];
    v37 = v34;
    v39 = v38 * v37;

    currentImageView7 = [(CameraSensorAnomalyViewController *)self currentImageView];
    image4 = [currentImageView7 image];
    [image4 size];
    *&v37 = v42 * v37;

    currentImageView8 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView8 frame];
    v44 = *&v37;
    v46 = (v45 - v44) * 0.5;

    currentImageView9 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView9 setFrame:{0.0, v46, v39, v44}];

    v48 = [DADrawableView alloc];
    currentImageView10 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView10 frame];
    v51 = v50;
    currentImageView11 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView11 frame];
    v54 = v53;
    v55 = +[UIColor clearColor];
    inputs = [(CameraSensorAnomalyViewController *)self inputs];
    drawColor = [inputs drawColor];
    v58 = [(DADrawableView *)v48 initWithFrame:v55 rectangleFillColor:drawColor rectangleEdgeColor:0.0, 0.0, v51, v54];
    currentImageView12 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [currentImageView12 setDrawableView:v58];

    currentImageView13 = [(CameraSensorAnomalyViewController *)self currentImageView];
    currentImageView14 = [(CameraSensorAnomalyViewController *)self currentImageView];
    drawableView = [currentImageView14 drawableView];
    [currentImageView13 addSubview:drawableView];

    v63 = [UIScrollView alloc];
    view3 = [(CameraSensorAnomalyViewController *)self view];
    [view3 frame];
    v66 = v65;
    view4 = [(CameraSensorAnomalyViewController *)self view];
    [view4 frame];
    v69 = [v63 initWithFrame:{0.0, 0.0, v66, v68 - 85.0}];
    [(CameraSensorAnomalyViewController *)self setImageScrollView:v69];

    currentImageView15 = [(CameraSensorAnomalyViewController *)self currentImageView];
    drawableView2 = [currentImageView15 drawableView];
    [drawableView2 frame];
    v73 = v72;
    v75 = v74;
    imageScrollView = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView setContentSize:{v73, v75}];

    imageScrollView2 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView2 setShowsHorizontalScrollIndicator:0];

    imageScrollView3 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView3 setShowsVerticalScrollIndicator:0];

    imageScrollView4 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView4 setScrollsToTop:0];

    imageScrollView5 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView5 setDelegate:self];

    imageScrollView6 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView6 setBouncesZoom:1];

    imageScrollView7 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [imageScrollView7 setDecelerationRate:UIScrollViewDecelerationRateFast];

    imageScrollView8 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    panGestureRecognizer = [imageScrollView8 panGestureRecognizer];
    [panGestureRecognizer setMinimumNumberOfTouches:2];

    imageScrollView9 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    panGestureRecognizer2 = [imageScrollView9 panGestureRecognizer];
    [panGestureRecognizer2 setEnabled:0];

    imageScrollView10 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    currentImageView16 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [imageScrollView10 addSubview:currentImageView16];

    v89 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CameraSensorAnomalyViewController *)self setBottomBar:v89];

    bottomBar = [(CameraSensorAnomalyViewController *)self bottomBar];
    [bottomBar setOpaque:0];

    v91 = [UIColor colorWithWhite:0.0 alpha:0.5];
    bottomBar2 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [bottomBar2 setBackgroundColor:v91];

    bottomBar3 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [bottomBar3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v94 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v95 = [UIFont fontWithDescriptor:v94 size:18.0];

    v96 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setRetakeButton:v96];

    retakeButton = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton setOpaque:0];

    v98 = +[UIColor clearColor];
    retakeButton2 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton2 setBackgroundColor:v98];

    retakeButton3 = [(CameraSensorAnomalyViewController *)self retakeButton];
    titleLabel = [retakeButton3 titleLabel];
    [titleLabel setContentMode:7];

    retakeButton4 = [(CameraSensorAnomalyViewController *)self retakeButton];
    titleLabel2 = [retakeButton4 titleLabel];
    [titleLabel2 setTextAlignment:1];

    retakeButton5 = [(CameraSensorAnomalyViewController *)self retakeButton];
    titleLabel3 = [retakeButton5 titleLabel];
    [titleLabel3 setLineBreakMode:4];

    retakeButton6 = [(CameraSensorAnomalyViewController *)self retakeButton];
    titleLabel4 = [retakeButton6 titleLabel];
    [titleLabel4 setFont:v95];

    retakeButton7 = [(CameraSensorAnomalyViewController *)self retakeButton];
    titleLabel5 = [retakeButton7 titleLabel];
    [titleLabel5 setNumberOfLines:1];

    retakeButton8 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v111 = +[NSBundle mainBundle];
    v112 = [v111 localizedStringForKey:@"RETAKE" value:&stru_100014B00 table:0];
    [retakeButton8 setTitle:v112 forState:0];

    retakeButton9 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v114 = +[UIColor whiteColor];
    [retakeButton9 setTitleColor:v114 forState:0];

    retakeButton10 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton10 sizeToFit];

    retakeButton11 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton11 addTarget:self action:"retakeButtonPressed:" forControlEvents:64];

    retakeButton12 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v118 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setUsePhotoButton:v118];

    usePhotoButton = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton setOpaque:0];

    v120 = +[UIColor clearColor];
    usePhotoButton2 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton2 setBackgroundColor:v120];

    usePhotoButton3 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    titleLabel6 = [usePhotoButton3 titleLabel];
    [titleLabel6 setContentMode:7];

    usePhotoButton4 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    titleLabel7 = [usePhotoButton4 titleLabel];
    [titleLabel7 setTextAlignment:1];

    usePhotoButton5 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    titleLabel8 = [usePhotoButton5 titleLabel];
    [titleLabel8 setLineBreakMode:4];

    usePhotoButton6 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    titleLabel9 = [usePhotoButton6 titleLabel];
    [titleLabel9 setFont:v95];

    usePhotoButton7 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    titleLabel10 = [usePhotoButton7 titleLabel];
    [titleLabel10 setNumberOfLines:1];

    usePhotoButton8 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v133 = +[NSBundle mainBundle];
    v134 = [v133 localizedStringForKey:@"USE_PHOTO" value:&stru_100014B00 table:0];
    [usePhotoButton8 setTitle:v134 forState:0];

    usePhotoButton9 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v136 = +[UIColor whiteColor];
    [usePhotoButton9 setTitleColor:v136 forState:0];

    usePhotoButton10 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton10 sizeToFit];

    usePhotoButton11 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton11 addTarget:self action:"usePhotoButtonPressed:" forControlEvents:64];

    usePhotoButton12 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v140 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setContinueButton:v140];

    continueButton = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton setOpaque:0];

    v142 = +[UIColor clearColor];
    continueButton2 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton2 setBackgroundColor:v142];

    continueButton3 = [(CameraSensorAnomalyViewController *)self continueButton];
    titleLabel11 = [continueButton3 titleLabel];
    [titleLabel11 setContentMode:7];

    continueButton4 = [(CameraSensorAnomalyViewController *)self continueButton];
    titleLabel12 = [continueButton4 titleLabel];
    [titleLabel12 setTextAlignment:1];

    continueButton5 = [(CameraSensorAnomalyViewController *)self continueButton];
    titleLabel13 = [continueButton5 titleLabel];
    [titleLabel13 setLineBreakMode:4];

    continueButton6 = [(CameraSensorAnomalyViewController *)self continueButton];
    titleLabel14 = [continueButton6 titleLabel];
    [titleLabel14 setFont:v95];

    continueButton7 = [(CameraSensorAnomalyViewController *)self continueButton];
    titleLabel15 = [continueButton7 titleLabel];
    [titleLabel15 setNumberOfLines:1];

    continueButton8 = [(CameraSensorAnomalyViewController *)self continueButton];
    v155 = +[NSBundle mainBundle];
    v156 = [v155 localizedStringForKey:@"CONTINUE" value:&stru_100014B00 table:0];
    [continueButton8 setTitle:v156 forState:0];

    continueButton9 = [(CameraSensorAnomalyViewController *)self continueButton];
    v158 = +[UIColor whiteColor];
    [continueButton9 setTitleColor:v158 forState:0];

    continueButton10 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton10 sizeToFit];

    continueButton11 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton11 addTarget:self action:"continueButtonPressed:" forControlEvents:64];

    continueButton12 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton12 setTranslatesAutoresizingMaskIntoConstraints:0];

    continueButton13 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton13 setHidden:1];

    view5 = [(CameraSensorAnomalyViewController *)self view];
    [view5 setNeedsUpdateConstraints];

    bottomBar4 = [(CameraSensorAnomalyViewController *)self bottomBar];
    retakeButton13 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [bottomBar4 addSubview:retakeButton13];

    bottomBar5 = [(CameraSensorAnomalyViewController *)self bottomBar];
    usePhotoButton13 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [bottomBar5 addSubview:usePhotoButton13];

    bottomBar6 = [(CameraSensorAnomalyViewController *)self bottomBar];
    continueButton14 = [(CameraSensorAnomalyViewController *)self continueButton];
    [bottomBar6 addSubview:continueButton14];

    view6 = [(CameraSensorAnomalyViewController *)self view];
    imageScrollView11 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [view6 addSubview:imageScrollView11];

    view7 = [(CameraSensorAnomalyViewController *)self view];
    bottomBar7 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [view7 addSubview:bottomBar7];

    v174 = +[DSTestAutomation sharedInstance];
    LODWORD(bottomBar7) = [v174 testAutomationEnabled];

    if (bottomBar7)
    {
      [DSTestAutomation postInteractiveTestEvent:@"ViewDidChange" info:&off_100015040];
    }

    v175 = v187;
  }

  else
  {
LABEL_10:
    v176 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      sub_10000931C();
    }

    v175 = errorCopy;
    v177 = +[NSBundle mainBundle];
    v178 = [v177 localizedStringForKey:@"UIIMPC_ERROR_TITLE" value:&stru_100014B00 table:0];
    v179 = +[NSBundle mainBundle];
    v180 = [v179 localizedStringForKey:@"UIIMPC_ERROR_MESSAGE" value:&stru_100014B00 table:0];
    v19 = [UIAlertController alertControllerWithTitle:v178 message:v180 preferredStyle:1];

    v181 = +[NSBundle mainBundle];
    v182 = [v181 localizedStringForKey:@"CANCEL" value:&stru_100014B00 table:0];
    v190[0] = _NSConcreteStackBlock;
    v190[1] = 3221225472;
    v190[2] = sub_100006404;
    v190[3] = &unk_100014508;
    v190[4] = self;
    v183 = [UIAlertAction actionWithTitle:v182 style:0 handler:v190];
    [v19 addAction:v183];

    v184 = +[NSBundle mainBundle];
    v185 = [v184 localizedStringForKey:@"TRY_AGAIN" value:&stru_100014B00 table:0];
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_100006414;
    v189[3] = &unk_100014508;
    v189[4] = self;
    v186 = [UIAlertAction actionWithTitle:v185 style:0 handler:v189];
    [v19 addAction:v186];

    [(CameraSensorAnomalyViewController *)self presentViewController:v19 animated:1 completion:0];
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  [zoom bounds];
  v5 = v4;
  v7 = v6;
  currentImageView = [(CameraSensorAnomalyViewController *)self currentImageView];
  [currentImageView frame];
  v10 = v9;
  v12 = v11;

  if (v10 >= v5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = (v5 - v10) * 0.5;
  }

  if (v12 >= v7)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = (v7 - v12) * 0.5;
  }

  currentImageView2 = [(CameraSensorAnomalyViewController *)self currentImageView];
  [currentImageView2 setFrame:{v13, v14, v10, v12}];
}

- (void)updateViewConstraints
{
  v73.receiver = self;
  v73.super_class = CameraSensorAnomalyViewController;
  [(CameraSensorAnomalyViewController *)&v73 updateViewConstraints];
  if ([(CameraSensorAnomalyViewController *)self drawingMode])
  {
    bottomBar = [(CameraSensorAnomalyViewController *)self bottomBar];
    bottomBar2 = [(CameraSensorAnomalyViewController *)self bottomBar];
    view = [(CameraSensorAnomalyViewController *)self view];
    [view frame];
    v7 = [NSLayoutConstraint constraintWithItem:bottomBar2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v6];
    [bottomBar addConstraint:v7];

    bottomBar3 = [(CameraSensorAnomalyViewController *)self bottomBar];
    bottomBar4 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v10 = [NSLayoutConstraint constraintWithItem:bottomBar4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:85.0];
    [bottomBar3 addConstraint:v10];

    view2 = [(CameraSensorAnomalyViewController *)self view];
    bottomBar5 = [(CameraSensorAnomalyViewController *)self bottomBar];
    view3 = [(CameraSensorAnomalyViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:bottomBar5 attribute:9 relatedBy:0 toItem:view3 attribute:9 multiplier:1.0 constant:0.0];
    [view2 addConstraint:v14];

    view4 = [(CameraSensorAnomalyViewController *)self view];
    bottomBar6 = [(CameraSensorAnomalyViewController *)self bottomBar];
    view5 = [(CameraSensorAnomalyViewController *)self view];
    v18 = [NSLayoutConstraint constraintWithItem:bottomBar6 attribute:4 relatedBy:0 toItem:view5 attribute:4 multiplier:1.0 constant:0.0];
    [view4 addConstraint:v18];

    retakeButton = [(CameraSensorAnomalyViewController *)self retakeButton];
    retakeButton2 = [(CameraSensorAnomalyViewController *)self retakeButton];
    retakeButton3 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton3 frame];
    v23 = [NSLayoutConstraint constraintWithItem:retakeButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v22];
    [retakeButton addConstraint:v23];

    retakeButton4 = [(CameraSensorAnomalyViewController *)self retakeButton];
    retakeButton5 = [(CameraSensorAnomalyViewController *)self retakeButton];
    retakeButton6 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [retakeButton6 frame];
    v28 = [NSLayoutConstraint constraintWithItem:retakeButton5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v27];
    [retakeButton4 addConstraint:v28];

    bottomBar7 = [(CameraSensorAnomalyViewController *)self bottomBar];
    retakeButton7 = [(CameraSensorAnomalyViewController *)self retakeButton];
    bottomBar8 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v32 = [NSLayoutConstraint constraintWithItem:retakeButton7 attribute:5 relatedBy:0 toItem:bottomBar8 attribute:5 multiplier:1.0 constant:15.0];
    [bottomBar7 addConstraint:v32];

    bottomBar9 = [(CameraSensorAnomalyViewController *)self bottomBar];
    retakeButton8 = [(CameraSensorAnomalyViewController *)self retakeButton];
    bottomBar10 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v36 = [NSLayoutConstraint constraintWithItem:retakeButton8 attribute:10 relatedBy:0 toItem:bottomBar10 attribute:10 multiplier:1.0 constant:0.0];
    [bottomBar9 addConstraint:v36];

    usePhotoButton = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    usePhotoButton2 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    usePhotoButton3 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton3 frame];
    v41 = [NSLayoutConstraint constraintWithItem:usePhotoButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v40];
    [usePhotoButton addConstraint:v41];

    usePhotoButton4 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    usePhotoButton5 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    usePhotoButton6 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [usePhotoButton6 frame];
    v46 = [NSLayoutConstraint constraintWithItem:usePhotoButton5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v45];
    [usePhotoButton4 addConstraint:v46];

    bottomBar11 = [(CameraSensorAnomalyViewController *)self bottomBar];
    bottomBar12 = [(CameraSensorAnomalyViewController *)self bottomBar];
    usePhotoButton7 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v50 = [NSLayoutConstraint constraintWithItem:bottomBar12 attribute:6 relatedBy:0 toItem:usePhotoButton7 attribute:6 multiplier:1.0 constant:15.0];
    [bottomBar11 addConstraint:v50];

    bottomBar13 = [(CameraSensorAnomalyViewController *)self bottomBar];
    usePhotoButton8 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    retakeButton9 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v54 = [NSLayoutConstraint constraintWithItem:usePhotoButton8 attribute:10 relatedBy:0 toItem:retakeButton9 attribute:10 multiplier:1.0 constant:0.0];
    [bottomBar13 addConstraint:v54];

    continueButton = [(CameraSensorAnomalyViewController *)self continueButton];
    continueButton2 = [(CameraSensorAnomalyViewController *)self continueButton];
    continueButton3 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton3 frame];
    v59 = [NSLayoutConstraint constraintWithItem:continueButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v58];
    [continueButton addConstraint:v59];

    continueButton4 = [(CameraSensorAnomalyViewController *)self continueButton];
    continueButton5 = [(CameraSensorAnomalyViewController *)self continueButton];
    continueButton6 = [(CameraSensorAnomalyViewController *)self continueButton];
    [continueButton6 frame];
    v64 = [NSLayoutConstraint constraintWithItem:continueButton5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v63];
    [continueButton4 addConstraint:v64];

    bottomBar14 = [(CameraSensorAnomalyViewController *)self bottomBar];
    continueButton7 = [(CameraSensorAnomalyViewController *)self continueButton];
    bottomBar15 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v68 = [NSLayoutConstraint constraintWithItem:continueButton7 attribute:9 relatedBy:0 toItem:bottomBar15 attribute:9 multiplier:1.0 constant:0.0];
    [bottomBar14 addConstraint:v68];

    bottomBar16 = [(CameraSensorAnomalyViewController *)self bottomBar];
    continueButton8 = [(CameraSensorAnomalyViewController *)self continueButton];
    bottomBar17 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v72 = [NSLayoutConstraint constraintWithItem:continueButton8 attribute:10 relatedBy:0 toItem:bottomBar17 attribute:10 multiplier:1.0 constant:0.0];
    [bottomBar16 addConstraint:v72];
  }
}

- (CGRect)rectangle
{
  x = self->_rectangle.origin.x;
  y = self->_rectangle.origin.y;
  width = self->_rectangle.size.width;
  height = self->_rectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)originPoint
{
  x = self->_originPoint.x;
  y = self->_originPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end