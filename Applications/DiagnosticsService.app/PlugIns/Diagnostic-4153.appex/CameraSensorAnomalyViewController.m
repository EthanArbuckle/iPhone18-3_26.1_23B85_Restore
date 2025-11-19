@interface CameraSensorAnomalyViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)originPoint;
- (CGRect)rectangle;
- (id)findDevice:(id)a3;
- (int64_t)setupCameraPreview;
- (int64_t)setupSessionForDevice:(id)a3;
- (void)addPanGesture;
- (void)addTapGesture;
- (void)addedRectangleView;
- (void)cancel;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)cleanUp;
- (void)continueButtonPressed:(id)a3;
- (void)disableAdaptationAndBlueLightReduction;
- (void)endTestWithStatusCode:(id)a3;
- (void)flashTapped;
- (void)flipTapped;
- (void)hideCameraView;
- (void)panOccurred:(id)a3;
- (void)parseResults;
- (void)removeDrawingModeViews;
- (void)removeResultWithTag:(int64_t)a3;
- (void)removeShape:(id)a3;
- (void)resetBrightness;
- (void)resetColorAdjustmentStates;
- (void)retakeButtonPressed:(id)a3;
- (void)saveAndMaximizeBrightness;
- (void)saveColorAdjustmentStates;
- (void)scrollViewDidZoom:(id)a3;
- (void)setupCamera;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)showCameraView;
- (void)start;
- (void)takePictureWithHandler:(id)a3;
- (void)tapOccurred:(id)a3;
- (void)updateViewConstraints;
- (void)usePhotoButtonPressed:(id)a3;
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

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(CameraSensorAnomalyViewController *)self setInputs:a3, a4];
  [(CameraSensorAnomalyViewController *)self setCurrentTag:1];
  [(CameraSensorAnomalyViewController *)self setDrawingMode:0];
  v5 = objc_alloc_init(NSMutableArray);
  [(CameraSensorAnomalyViewController *)self setAllResults:v5];

  [(CameraSensorAnomalyViewController *)self setExclavesStatus:0];
  v6 = [(CameraSensorAnomalyViewController *)self inputs];
  v7 = [v6 disableAmbientLightAdaptation];

  if (v7)
  {
    v8 = objc_alloc_init(CBClient);
    [(CameraSensorAnomalyViewController *)self setClient:v8];

    v9 = [(CameraSensorAnomalyViewController *)self client];
    v10 = [v9 blueLightClient];
    [(CameraSensorAnomalyViewController *)self setBlueLightClient:v10];

    v11 = [(CameraSensorAnomalyViewController *)self client];
    v12 = [v11 adaptationClient];
    [(CameraSensorAnomalyViewController *)self setAdaptationClient:v12];
  }

  v13 = +[DSTestAutomation sharedInstance];
  v14 = [v13 testAutomationEnabled];

  if (v14)
  {
    v33[0] = @"predicates";
    v31 = @"identifier";
    v30 = [(CameraSensorAnomalyViewController *)self inputs];
    v29 = [v30 identifier];
    v32 = v29;
    v28 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34[0] = v28;
    v33[1] = @"minimumSquareLength";
    v27 = [(CameraSensorAnomalyViewController *)self inputs];
    [v27 minimumSquareLength];
    v26 = [NSNumber numberWithFloat:?];
    v34[1] = v26;
    v33[2] = @"enableMaxBrightness";
    v25 = [(CameraSensorAnomalyViewController *)self inputs];
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v25 enableMaxBrightness]);
    v34[2] = v15;
    v33[3] = @"flashModeOn";
    v16 = [(CameraSensorAnomalyViewController *)self inputs];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 flashModeOn]);
    v34[3] = v17;
    v33[4] = @"viewfinderInstruction";
    v18 = [(CameraSensorAnomalyViewController *)self inputs];
    v19 = [v18 viewfinderInstruction];
    v34[4] = v19;
    v33[5] = @"drawColor";
    v20 = [(CameraSensorAnomalyViewController *)self inputs];
    v21 = [v20 drawColor];
    v34[5] = v21;
    v33[6] = @"disableAmbientLightAdaptation";
    v22 = [(CameraSensorAnomalyViewController *)self inputs];
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 disableAmbientLightAdaptation]);
    v34[6] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];
    [DSTestAutomation postConfiguration:v24];
  }
}

- (void)start
{
  v3 = +[UIColor blackColor];
  v4 = [(CameraSensorAnomalyViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CameraSensorAnomalyViewController *)self inputs];
  LODWORD(v4) = [v5 enableMaxBrightness];

  if (v4)
  {
    [(CameraSensorAnomalyViewController *)self saveAndMaximizeBrightness];
  }

  v6 = [(CameraSensorAnomalyViewController *)self inputs];
  v7 = [v6 disableAmbientLightAdaptation];

  if (v7)
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
  v3 = [(CameraSensorAnomalyViewController *)self inputs];
  v4 = [v3 disableAmbientLightAdaptation];

  if (v4)
  {
    [(CameraSensorAnomalyViewController *)self resetColorAdjustmentStates];
  }

  v5 = [(CameraSensorAnomalyViewController *)self session];

  if (v5)
  {
    v6 = [(CameraSensorAnomalyViewController *)self session];
    v7 = [v6 isRunning];

    if (v7)
    {
      v8 = [(CameraSensorAnomalyViewController *)self session];
      [v8 stopRunning];

      v9 = +[DSTestAutomation sharedInstance];
      v10 = [v9 testAutomationEnabled];

      if (v10)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        v12 = [(CameraSensorAnomalyViewController *)self session];
        [v11 removeObserver:self name:AVCaptureSessionDidStartRunningNotification object:v12];
      }

      [(CameraSensorAnomalyViewController *)self setSession:0];
    }
  }
}

- (void)setupCamera
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(CameraSensorAnomalyViewController *)self inputs];
    v4 = [v3 identifier];
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "self.inputs.identifier: %@", buf, 0xCu);
  }

  v5 = [(CameraSensorAnomalyViewController *)self inputs];
  v6 = [v5 identifier];
  v7 = [(CameraSensorAnomalyViewController *)self findDevice:v6];

  objc_initWeak(buf, self);
  if (!v7)
  {
    v8 = -3;
LABEL_8:
    v30 = [NSNumber numberWithInteger:v8];
    [(CameraSensorAnomalyViewController *)self endTestWithStatusCode:v30];

    goto LABEL_9;
  }

  v8 = [(CameraSensorAnomalyViewController *)self setupSessionForDevice:v7];
  if (v8)
  {
    goto LABEL_8;
  }

  v8 = [(CameraSensorAnomalyViewController *)self setupCameraPreview];
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = [(CameraSensorAnomalyViewController *)self session];
  v11 = +[NSOperationQueue mainQueue];
  v12 = [v9 addObserverForName:AVCaptureSessionRuntimeErrorNotification object:v10 queue:v11 usingBlock:&stru_100014430];

  v13 = +[NSNotificationCenter defaultCenter];
  v14 = [(CameraSensorAnomalyViewController *)self session];
  v15 = +[NSOperationQueue mainQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100002B0C;
  v31[3] = &unk_100014458;
  objc_copyWeak(&v32, buf);
  v16 = [v13 addObserverForName:AVCaptureSessionDidStartRunningNotification object:v14 queue:v15 usingBlock:v31];

  v17 = +[NSNotificationCenter defaultCenter];
  v18 = [(CameraSensorAnomalyViewController *)self session];
  v19 = +[NSOperationQueue mainQueue];
  v20 = [v17 addObserverForName:AVCaptureSessionDidStopRunningNotification object:v18 queue:v19 usingBlock:&stru_100014478];

  v21 = +[NSNotificationCenter defaultCenter];
  v22 = [(CameraSensorAnomalyViewController *)self session];
  v23 = +[NSOperationQueue mainQueue];
  v24 = [v21 addObserverForName:AVCaptureSessionWasInterruptedNotification object:v22 queue:v23 usingBlock:&stru_100014498];

  v25 = +[NSNotificationCenter defaultCenter];
  v26 = [(CameraSensorAnomalyViewController *)self session];
  v27 = +[NSOperationQueue mainQueue];
  v28 = [v25 addObserverForName:AVCaptureSessionInterruptionEndedNotification object:v26 queue:v27 usingBlock:&stru_1000144B8];

  [(CameraSensorAnomalyViewController *)self showCameraView];
  v29 = [(CameraSensorAnomalyViewController *)self session];
  [v29 startRunning];

  objc_destroyWeak(&v32);
LABEL_9:
  objc_destroyWeak(buf);
}

- (id)findDevice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Front"])
  {
    v4 = &AVCaptureDeviceTypeBuiltInWideAngleCamera;
    v5 = 2;
  }

  else
  {
    if ([v3 isEqualToString:@"Rear"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInWideAngleCamera;
    }

    else if ([v3 isEqualToString:@"RearTelephoto"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInTelephotoCamera;
    }

    else if ([v3 isEqualToString:@"RearSuperWide"])
    {
      v4 = &AVCaptureDeviceTypeBuiltInUltraWideCamera;
    }

    else
    {
      if (![v3 isEqualToString:@"RearSynced"])
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

    v10 = [v9 devices];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v9 devices];
      v13 = [v12 firstObject];

      if (v13)
      {
        v14 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 deviceType];
          v17 = 138412546;
          v18 = v13;
          v19 = 2112;
          v20 = v15;
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

  v13 = 0;
LABEL_21:

  return v13;
}

- (int64_t)setupSessionForDevice:(id)a3
{
  v19 = 0;
  v4 = [AVCaptureDeviceInput deviceInputWithDevice:a3 error:&v19];
  v5 = v19;
  if (v4)
  {
    v6 = objc_alloc_init(AVCapturePhotoOutput);
    [(CameraSensorAnomalyViewController *)self setOutput:v6];

    v7 = [(CameraSensorAnomalyViewController *)self output];
    [v7 setLivePhotoCaptureEnabled:0];

    v8 = objc_alloc_init(AVCaptureSession);
    [(CameraSensorAnomalyViewController *)self setSession:v8];

    v9 = [(CameraSensorAnomalyViewController *)self session];
    [v9 setSessionPreset:AVCaptureSessionPresetPhoto];

    v10 = [(CameraSensorAnomalyViewController *)self session];
    if ([v10 canAddInput:v4])
    {
      v11 = [(CameraSensorAnomalyViewController *)self session];
      v12 = [(CameraSensorAnomalyViewController *)self output];
      v13 = [v11 canAddOutput:v12];

      if (v13)
      {
        v14 = [(CameraSensorAnomalyViewController *)self session];
        [v14 addInput:v4];

        v15 = [(CameraSensorAnomalyViewController *)self session];
        v16 = [(CameraSensorAnomalyViewController *)self output];
        [v15 addOutput:v16];

        v17 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000091E8();
    }

    v17 = -5;
  }

  else
  {
    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
  v4 = [(CameraSensorAnomalyViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(CameraSensorAnomalyViewController *)self setPreviewView:v5];

  v6 = [(CameraSensorAnomalyViewController *)self session];
  v7 = [AVCaptureVideoPreviewLayer layerWithSession:v6];

  if (v7)
  {
    [v7 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    v8 = [(CameraSensorAnomalyViewController *)self inputs];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:@"Front"];

    if (v10)
    {
      v11 = ((MGGetSInt32Answer() + 90) % 360);
    }

    else
    {
      v11 = 90.0;
    }

    v14 = [v7 connection];
    [v14 setVideoRotationAngle:v11];

    v15 = [(CameraSensorAnomalyViewController *)self previewView];
    [v15 bounds];
    [v7 setFrame:?];

    v16 = [CameraTargetView alloc];
    v17 = [(CameraSensorAnomalyViewController *)self previewView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = +[UIColor orangeColor];
    v27 = [(CameraSensorAnomalyViewController *)self inputs];
    v28 = [v27 viewfinderInstruction];
    v29 = [(CameraTargetView *)v16 initWithFrame:v26 color:v28 thickness:3 instructionText:v19 presentationOptions:v21, v23, v25, 2.0];
    [(CameraSensorAnomalyViewController *)self setOverlayView:v29];

    v30 = [(CameraSensorAnomalyViewController *)self overlayView];
    [v30 setUserInteractionEnabled:1];

    v31 = [(CameraSensorAnomalyViewController *)self overlayView];
    [v31 setDelegate:self];

    v32 = [(CameraSensorAnomalyViewController *)self previewView];
    v33 = [v32 layer];
    [v33 addSublayer:v7];

    v34 = [(CameraSensorAnomalyViewController *)self previewView];
    v35 = [(CameraSensorAnomalyViewController *)self overlayView];
    [v34 addSubview:v35];

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
  v3 = [(CameraSensorAnomalyViewController *)self view];
  v4 = [(CameraSensorAnomalyViewController *)self previewView];
  [v3 addSubview:v4];

  v5 = +[DSTestAutomation sharedInstance];
  LODWORD(v3) = [v5 testAutomationEnabled];

  if (v3)
  {

    [DSTestAutomation postInteractiveTestEvent:@"ViewDidChange" info:&off_100014FF0];
  }
}

- (void)hideCameraView
{
  v2 = [(CameraSensorAnomalyViewController *)self previewView];
  [v2 removeFromSuperview];
}

- (void)addPanGesture
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"panOccurred:"];
  [(CameraSensorAnomalyViewController *)self setPanGesture:v3];

  v4 = [(CameraSensorAnomalyViewController *)self panGesture];
  [v4 setMinimumNumberOfTouches:1];

  v5 = [(CameraSensorAnomalyViewController *)self panGesture];
  [v5 setDelegate:self];

  v8 = [(CameraSensorAnomalyViewController *)self currentImageView];
  v6 = [v8 drawableView];
  v7 = [(CameraSensorAnomalyViewController *)self panGesture];
  [v6 addGestureRecognizer:v7];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CameraSensorAnomalyViewController *)self panGesture];
  if (v5 != v4)
  {
    v6 = 1;
LABEL_6:

    goto LABEL_7;
  }

  v7 = [v4 numberOfTouches];

  if (v7 != 1)
  {
    v5 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v5 zoomScale];
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

  v4 = [(CameraSensorAnomalyViewController *)self tapGesture];
  [v4 setDelegate:self];

  v7 = [(CameraSensorAnomalyViewController *)self currentImageView];
  v5 = [v7 drawableView];
  v6 = [(CameraSensorAnomalyViewController *)self tapGesture];
  [v5 addGestureRecognizer:v6];
}

- (void)panOccurred:(id)a3
{
  v54 = a3;
  if ([v54 numberOfTouches] <= 1)
  {
    if ([v54 state] == 1)
    {
      v5 = [(CameraSensorAnomalyViewController *)self currentImageView];
      v6 = [v5 drawableView];
      [v54 locationInView:v6];
      [(CameraSensorAnomalyViewController *)self setOriginPoint:?];

      [(CameraSensorAnomalyViewController *)self setIsDrawing:1];
    }

    if ([(CameraSensorAnomalyViewController *)self isDrawing])
    {
      v7 = [v54 state];
      v8 = [(CameraSensorAnomalyViewController *)self currentImageView];
      v9 = [v8 drawableView];
      v10 = v9;
      if (v7 == 3)
      {
        [v9 endDrawing];

        [(CameraSensorAnomalyViewController *)self addedRectangleView];
        [(CameraSensorAnomalyViewController *)self setIsDrawing:0];
      }

      else
      {
        [v54 locationInView:v9];
        v12 = v11;
        v14 = v13;

        v15 = [(CameraSensorAnomalyViewController *)self currentImageView];
        v16 = [v15 drawableView];
        [v16 bounds];
        v56.x = v12;
        v56.y = v14;
        v17 = CGRectContainsPoint(v57, v56);

        if (v17)
        {
          [(CameraSensorAnomalyViewController *)self originPoint];
          v19 = vabdd_f64(v18, v12);
          v20 = [(CameraSensorAnomalyViewController *)self inputs];
          [v20 minimumSquareLength];
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
              v16 = [(CameraSensorAnomalyViewController *)self inputs];
              [v16 minimumSquareLength];
              v26 = v26 - v27;
              v28 = 1;
            }
          }

          [(CameraSensorAnomalyViewController *)self originPoint];
          v30 = vabdd_f64(v29, v14);
          v31 = [(CameraSensorAnomalyViewController *)self inputs];
          [v31 minimumSquareLength];
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
              v3 = [(CameraSensorAnomalyViewController *)self inputs];
              [v3 minimumSquareLength];
              v37 = v37 - v38;
              v39 = 1;
            }
          }

          [(CameraSensorAnomalyViewController *)self originPoint];
          v41 = vabdd_f64(v40, v12);
          v42 = [(CameraSensorAnomalyViewController *)self inputs];
          [v42 minimumSquareLength];
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
          v48 = [(CameraSensorAnomalyViewController *)self inputs];
          [v48 minimumSquareLength];
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

          v52 = [(CameraSensorAnomalyViewController *)self currentImageView];
          v53 = [v52 drawableView];
          [(CameraSensorAnomalyViewController *)self rectangle];
          [v53 updateDrawing:?];
        }
      }
    }
  }

  _objc_release_x1();
}

- (void)tapOccurred:(id)a3
{
  v4 = a3;
  v5 = [(CameraSensorAnomalyViewController *)self currentImageView];
  v6 = [v5 drawableView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [(CameraSensorAnomalyViewController *)self setOriginPoint:v8, v10];
  [(CameraSensorAnomalyViewController *)self originPoint];
  v12 = v11;
  v13 = [(CameraSensorAnomalyViewController *)self inputs];
  [v13 minimumSquareLength];
  v15 = v12 - (v14 * 0.5);
  [(CameraSensorAnomalyViewController *)self originPoint];
  v17 = v16;
  v18 = [(CameraSensorAnomalyViewController *)self inputs];
  [v18 minimumSquareLength];
  v20 = v17 - (v19 * 0.5);
  v21 = [(CameraSensorAnomalyViewController *)self inputs];
  [v21 minimumSquareLength];
  v23 = v22;
  v24 = [(CameraSensorAnomalyViewController *)self inputs];
  [v24 minimumSquareLength];
  [(CameraSensorAnomalyViewController *)self setRectangle:v15, v20, v23, v25];

  [(CameraSensorAnomalyViewController *)self addedRectangleView];
}

- (void)removeShape:(id)a3
{
  v4 = [a3 view];
  v5 = [(CameraSensorAnomalyViewController *)self inputs];
  v6 = [v5 drawColor];
  [v4 setBackgroundColor:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOVE_ITEM" value:&stru_100014B00 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"REMOVE" value:&stru_100014B00 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004064;
  v20[3] = &unk_1000144E0;
  v12 = v4;
  v21 = v12;
  v22 = self;
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
  v11 = [(CameraSensorAnomalyViewController *)self inputs];
  v12 = [v11 drawColor];
  v13 = +[UIColor clearColor];
  v14 = [DSShapeView rectangleWithFrame:v12 borderColor:v13 fillColor:v4, v6, v8, v10];

  [v14 setTag:{-[CameraSensorAnomalyViewController currentTag](self, "currentTag")}];
  [(CameraSensorAnomalyViewController *)self setCurrentTag:[(CameraSensorAnomalyViewController *)self currentTag]+ 1];
  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"removeShape:"];
  [v14 addGestureRecognizer:v15];

  v16 = [(CameraSensorAnomalyViewController *)self currentImageView];
  v17 = [v16 drawableView];
  [v17 addSubview:v14];

  v18 = [(CameraSensorAnomalyViewController *)self currentImageView];
  v19 = [v18 drawableView];
  [v14 frame];
  v21 = v20;
  v23 = v22;
  v24 = [(CameraSensorAnomalyViewController *)self view];
  [v19 convertPoint:v24 toView:{v21, v23}];
  v26 = v25;
  v28 = v27;

  v43[0] = @"xPos";
  v42 = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [v42 zoomScale];
  v30 = [NSNumber numberWithDouble:v26 / v29];
  v44[0] = v30;
  v43[1] = @"yPos";
  v31 = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [v31 zoomScale];
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

  v41 = [(CameraSensorAnomalyViewController *)self allResults];
  [v41 addObject:v40];
}

- (void)removeDrawingModeViews
{
  v3 = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [v3 removeFromSuperview];

  v4 = [(CameraSensorAnomalyViewController *)self bottomBar];
  [v4 removeFromSuperview];
}

- (void)retakeButtonPressed:(id)a3
{
  [(CameraSensorAnomalyViewController *)self removeDrawingModeViews];
  [(CameraSensorAnomalyViewController *)self setDrawingMode:0];

  [(CameraSensorAnomalyViewController *)self showCameraView];
}

- (void)usePhotoButtonPressed:(id)a3
{
  v4 = [(CameraSensorAnomalyViewController *)self retakeButton];
  [v4 setHidden:1];

  v5 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
  [v5 setHidden:1];

  v6 = [(CameraSensorAnomalyViewController *)self continueButton];
  [v6 setHidden:0];

  v7 = [(CameraSensorAnomalyViewController *)self currentImageView];
  [v7 setUserInteractionEnabled:1];

  v8 = [(CameraSensorAnomalyViewController *)self imageScrollView];
  [v8 setMaximumZoomScale:3.0];

  [(CameraSensorAnomalyViewController *)self addPanGesture];
  [(CameraSensorAnomalyViewController *)self addTapGesture];
  v9 = +[DSTestAutomation sharedInstance];
  LODWORD(v8) = [v9 testAutomationEnabled];

  if (v8)
  {

    [DSTestAutomation postInteractiveTestEvent:@"ViewDidChange" info:&off_100015018];
  }
}

- (void)continueButtonPressed:(id)a3
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

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  [(CameraSensorAnomalyViewController *)self cleanUp];
  v5 = [(CameraSensorAnomalyViewController *)self exclavesStatus];
  v6 = [DAExclavesSupport testResultOverrideForExclavesStatus:v5 originalResult:v4];

  v7 = [(CameraSensorAnomalyViewController *)self result];
  [v7 setStatusCode:v6];

  [(CameraSensorAnomalyViewController *)self parseResults];

  [(CameraSensorAnomalyViewController *)self setFinished:1];
}

- (void)parseResults
{
  v3 = [(CameraSensorAnomalyViewController *)self result];
  v4 = [v3 statusCode];
  v5 = [v4 isEqualToNumber:&off_100014F40];

  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000092DC();
    }

    v7 = [(CameraSensorAnomalyViewController *)self result];
    [v7 setData:&__NSDictionary0__struct];
  }

  else
  {
    v8 = [NSMutableArray alloc];
    v9 = [(CameraSensorAnomalyViewController *)self allResults];
    v7 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [(CameraSensorAnomalyViewController *)self allResults];
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v34 + 1) + 8 * v14) mutableCopy];
          [v15 removeObjectForKey:@"tag"];
          [v7 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v12);
    }

    v16 = [v7 copy];
    [(CameraSensorAnomalyViewController *)self setAllResults:v16];

    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = [(CameraSensorAnomalyViewController *)self view];
    v19 = [v18 window];
    v20 = [v19 windowScene];
    v21 = [v20 screen];
    [v21 bounds];
    v23 = v22;
    v25 = v24;

    v38[0] = @"displayResX";
    v26 = [NSNumber numberWithDouble:v23];
    v39[0] = v26;
    v38[1] = @"displayResY";
    v27 = [NSNumber numberWithDouble:v25];
    v39[1] = v27;
    v38[2] = @"anomaliesDetected";
    v28 = [(CameraSensorAnomalyViewController *)self allResults];
    v39[2] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];

    [v17 addEntriesFromDictionary:v29];
    v30 = [(CameraSensorAnomalyViewController *)self exclavesStatus];

    if (v30)
    {
      v31 = [(CameraSensorAnomalyViewController *)self exclavesStatus];
      [v17 addEntriesFromDictionary:v31];
    }

    v32 = [v17 copy];
    v33 = [(CameraSensorAnomalyViewController *)self result];
    [v33 setData:v32];
  }
}

- (void)removeResultWithTag:(int64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CameraSensorAnomalyViewController *)self allResults];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"tag"];
        v12 = [v11 integerValue];

        if (v12 == a3)
        {
          v13 = [(CameraSensorAnomalyViewController *)self allResults];
          [v13 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [v3 getBlueLightStatus:v5];

  [(CameraSensorAnomalyViewController *)self setBlueLightStatusActive:LOBYTE(v5[0])];
  v4 = [(CameraSensorAnomalyViewController *)self adaptationClient];
  -[CameraSensorAnomalyViewController setColorAdaptationStatus:](self, "setColorAdaptationStatus:", [v4 getEnabled]);
}

- (void)resetColorAdjustmentStates
{
  v3 = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [v3 setActive:{-[CameraSensorAnomalyViewController blueLightStatusActive](self, "blueLightStatusActive")}];

  v4 = [(CameraSensorAnomalyViewController *)self adaptationClient];
  [v4 setEnabled:{-[CameraSensorAnomalyViewController colorAdaptationStatus](self, "colorAdaptationStatus")}];
}

- (void)disableAdaptationAndBlueLightReduction
{
  v3 = [(CameraSensorAnomalyViewController *)self blueLightClient];
  [v3 setActive:0];

  v4 = [(CameraSensorAnomalyViewController *)self adaptationClient];
  [v4 setEnabled:0];
}

- (void)saveAndMaximizeBrightness
{
  BKSDisplayBrightnessGetCurrent();
  [(CameraSensorAnomalyViewController *)self setOriginalScreenBrightness:?];
  v6 = [(CameraSensorAnomalyViewController *)self view];
  v3 = [v6 window];
  v4 = [v3 windowScene];
  v5 = [v4 screen];
  [v5 setBrightness:1.0];
}

- (void)resetBrightness
{
  v3 = [(CameraSensorAnomalyViewController *)self inputs];
  v4 = [v3 enableMaxBrightness];

  if (v4)
  {
    v9 = [(CameraSensorAnomalyViewController *)self view];
    v5 = [v9 window];
    v6 = [v5 windowScene];
    v7 = [v6 screen];
    [(CameraSensorAnomalyViewController *)self originalScreenBrightness];
    [v7 setBrightness:v8];
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

- (void)takePictureWithHandler:(id)a3
{
  [(CameraSensorAnomalyViewController *)self setPhotoCaptureCompletionHandler:a3];
  v6 = +[AVCapturePhotoSettings photoSettings];
  v4 = [(CameraSensorAnomalyViewController *)self inputs];
  [v6 setFlashMode:{objc_msgSend(v4, "flashModeOn")}];

  v5 = [(CameraSensorAnomalyViewController *)self output];
  [v5 capturePhotoWithSettings:v6 delegate:self];
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(CameraSensorAnomalyViewController *)self hideCameraView];
  v9 = [(CameraSensorAnomalyViewController *)self photoCaptureCompletionHandler];

  if (v9)
  {
    v10 = [(CameraSensorAnomalyViewController *)self photoCaptureCompletionHandler];
    v10[2]();

    [(CameraSensorAnomalyViewController *)self setPhotoCaptureCompletionHandler:0];
  }

  v11 = [CameraSensorAnomalyTestImageView alloc];
  v12 = [(CameraSensorAnomalyViewController *)self view];
  [v12 frame];
  v13 = [(CameraSensorAnomalyTestImageView *)v11 initWithFrame:?];
  [(CameraSensorAnomalyViewController *)self setCurrentImageView:v13];

  v14 = [v8 fileDataRepresentation];

  v188 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [(CameraSensorAnomalyViewController *)self view];
  v16 = [v15 window];
  v17 = [v16 windowScene];
  v18 = [v17 screen];
  [v18 scale];
  v19 = [UIImage imageWithData:v14 scale:?];

  if (v19)
  {
    v187 = v7;
    [(CameraSensorAnomalyViewController *)self setDrawingMode:1];
    v20 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v20 setImage:v19];

    v21 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v21 bounds];
    v23 = v22;
    v24 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v25 = [v24 image];
    [v25 size];
    v27 = v23 / v26;

    v28 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v28 bounds];
    v30 = v29;
    v31 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v32 = [v31 image];
    [v32 size];
    v34 = v30 / v33;

    if (v27 < v34)
    {
      v34 = v27;
    }

    v35 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v36 = [v35 image];
    [v36 size];
    v37 = v34;
    v39 = v38 * v37;

    v40 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v41 = [v40 image];
    [v41 size];
    *&v37 = v42 * v37;

    v43 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v43 frame];
    v44 = *&v37;
    v46 = (v45 - v44) * 0.5;

    v47 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v47 setFrame:{0.0, v46, v39, v44}];

    v48 = [DADrawableView alloc];
    v49 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v49 frame];
    v51 = v50;
    v52 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v52 frame];
    v54 = v53;
    v55 = +[UIColor clearColor];
    v56 = [(CameraSensorAnomalyViewController *)self inputs];
    v57 = [v56 drawColor];
    v58 = [(DADrawableView *)v48 initWithFrame:v55 rectangleFillColor:v57 rectangleEdgeColor:0.0, 0.0, v51, v54];
    v59 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v59 setDrawableView:v58];

    v60 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v61 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v62 = [v61 drawableView];
    [v60 addSubview:v62];

    v63 = [UIScrollView alloc];
    v64 = [(CameraSensorAnomalyViewController *)self view];
    [v64 frame];
    v66 = v65;
    v67 = [(CameraSensorAnomalyViewController *)self view];
    [v67 frame];
    v69 = [v63 initWithFrame:{0.0, 0.0, v66, v68 - 85.0}];
    [(CameraSensorAnomalyViewController *)self setImageScrollView:v69];

    v70 = [(CameraSensorAnomalyViewController *)self currentImageView];
    v71 = [v70 drawableView];
    [v71 frame];
    v73 = v72;
    v75 = v74;
    v76 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v76 setContentSize:{v73, v75}];

    v77 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v77 setShowsHorizontalScrollIndicator:0];

    v78 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v78 setShowsVerticalScrollIndicator:0];

    v79 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v79 setScrollsToTop:0];

    v80 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v80 setDelegate:self];

    v81 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v81 setBouncesZoom:1];

    v82 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v82 setDecelerationRate:UIScrollViewDecelerationRateFast];

    v83 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    v84 = [v83 panGestureRecognizer];
    [v84 setMinimumNumberOfTouches:2];

    v85 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    v86 = [v85 panGestureRecognizer];
    [v86 setEnabled:0];

    v87 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    v88 = [(CameraSensorAnomalyViewController *)self currentImageView];
    [v87 addSubview:v88];

    v89 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CameraSensorAnomalyViewController *)self setBottomBar:v89];

    v90 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [v90 setOpaque:0];

    v91 = [UIColor colorWithWhite:0.0 alpha:0.5];
    v92 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [v92 setBackgroundColor:v91];

    v93 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [v93 setTranslatesAutoresizingMaskIntoConstraints:0];

    v94 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v95 = [UIFont fontWithDescriptor:v94 size:18.0];

    v96 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setRetakeButton:v96];

    v97 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v97 setOpaque:0];

    v98 = +[UIColor clearColor];
    v99 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v99 setBackgroundColor:v98];

    v100 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v101 = [v100 titleLabel];
    [v101 setContentMode:7];

    v102 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v103 = [v102 titleLabel];
    [v103 setTextAlignment:1];

    v104 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v105 = [v104 titleLabel];
    [v105 setLineBreakMode:4];

    v106 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v107 = [v106 titleLabel];
    [v107 setFont:v95];

    v108 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v109 = [v108 titleLabel];
    [v109 setNumberOfLines:1];

    v110 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v111 = +[NSBundle mainBundle];
    v112 = [v111 localizedStringForKey:@"RETAKE" value:&stru_100014B00 table:0];
    [v110 setTitle:v112 forState:0];

    v113 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v114 = +[UIColor whiteColor];
    [v113 setTitleColor:v114 forState:0];

    v115 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v115 sizeToFit];

    v116 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v116 addTarget:self action:"retakeButtonPressed:" forControlEvents:64];

    v117 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v117 setTranslatesAutoresizingMaskIntoConstraints:0];

    v118 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setUsePhotoButton:v118];

    v119 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v119 setOpaque:0];

    v120 = +[UIColor clearColor];
    v121 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v121 setBackgroundColor:v120];

    v122 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v123 = [v122 titleLabel];
    [v123 setContentMode:7];

    v124 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v125 = [v124 titleLabel];
    [v125 setTextAlignment:1];

    v126 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v127 = [v126 titleLabel];
    [v127 setLineBreakMode:4];

    v128 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v129 = [v128 titleLabel];
    [v129 setFont:v95];

    v130 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v131 = [v130 titleLabel];
    [v131 setNumberOfLines:1];

    v132 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v133 = +[NSBundle mainBundle];
    v134 = [v133 localizedStringForKey:@"USE_PHOTO" value:&stru_100014B00 table:0];
    [v132 setTitle:v134 forState:0];

    v135 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v136 = +[UIColor whiteColor];
    [v135 setTitleColor:v136 forState:0];

    v137 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v137 sizeToFit];

    v138 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v138 addTarget:self action:"usePhotoButtonPressed:" forControlEvents:64];

    v139 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v139 setTranslatesAutoresizingMaskIntoConstraints:0];

    v140 = [UIButton buttonWithType:1];
    [(CameraSensorAnomalyViewController *)self setContinueButton:v140];

    v141 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v141 setOpaque:0];

    v142 = +[UIColor clearColor];
    v143 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v143 setBackgroundColor:v142];

    v144 = [(CameraSensorAnomalyViewController *)self continueButton];
    v145 = [v144 titleLabel];
    [v145 setContentMode:7];

    v146 = [(CameraSensorAnomalyViewController *)self continueButton];
    v147 = [v146 titleLabel];
    [v147 setTextAlignment:1];

    v148 = [(CameraSensorAnomalyViewController *)self continueButton];
    v149 = [v148 titleLabel];
    [v149 setLineBreakMode:4];

    v150 = [(CameraSensorAnomalyViewController *)self continueButton];
    v151 = [v150 titleLabel];
    [v151 setFont:v95];

    v152 = [(CameraSensorAnomalyViewController *)self continueButton];
    v153 = [v152 titleLabel];
    [v153 setNumberOfLines:1];

    v154 = [(CameraSensorAnomalyViewController *)self continueButton];
    v155 = +[NSBundle mainBundle];
    v156 = [v155 localizedStringForKey:@"CONTINUE" value:&stru_100014B00 table:0];
    [v154 setTitle:v156 forState:0];

    v157 = [(CameraSensorAnomalyViewController *)self continueButton];
    v158 = +[UIColor whiteColor];
    [v157 setTitleColor:v158 forState:0];

    v159 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v159 sizeToFit];

    v160 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v160 addTarget:self action:"continueButtonPressed:" forControlEvents:64];

    v161 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v161 setTranslatesAutoresizingMaskIntoConstraints:0];

    v162 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v162 setHidden:1];

    v163 = [(CameraSensorAnomalyViewController *)self view];
    [v163 setNeedsUpdateConstraints];

    v164 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v165 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v164 addSubview:v165];

    v166 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v167 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v166 addSubview:v167];

    v168 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v169 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v168 addSubview:v169];

    v170 = [(CameraSensorAnomalyViewController *)self view];
    v171 = [(CameraSensorAnomalyViewController *)self imageScrollView];
    [v170 addSubview:v171];

    v172 = [(CameraSensorAnomalyViewController *)self view];
    v173 = [(CameraSensorAnomalyViewController *)self bottomBar];
    [v172 addSubview:v173];

    v174 = +[DSTestAutomation sharedInstance];
    LODWORD(v173) = [v174 testAutomationEnabled];

    if (v173)
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

    v175 = v7;
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

- (void)scrollViewDidZoom:(id)a3
{
  [a3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(CameraSensorAnomalyViewController *)self currentImageView];
  [v8 frame];
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

  v15 = [(CameraSensorAnomalyViewController *)self currentImageView];
  [v15 setFrame:{v13, v14, v10, v12}];
}

- (void)updateViewConstraints
{
  v73.receiver = self;
  v73.super_class = CameraSensorAnomalyViewController;
  [(CameraSensorAnomalyViewController *)&v73 updateViewConstraints];
  if ([(CameraSensorAnomalyViewController *)self drawingMode])
  {
    v3 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v4 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v5 = [(CameraSensorAnomalyViewController *)self view];
    [v5 frame];
    v7 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v6];
    [v3 addConstraint:v7];

    v8 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v9 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:85.0];
    [v8 addConstraint:v10];

    v11 = [(CameraSensorAnomalyViewController *)self view];
    v12 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v13 = [(CameraSensorAnomalyViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
    [v11 addConstraint:v14];

    v15 = [(CameraSensorAnomalyViewController *)self view];
    v16 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v17 = [(CameraSensorAnomalyViewController *)self view];
    v18 = [NSLayoutConstraint constraintWithItem:v16 attribute:4 relatedBy:0 toItem:v17 attribute:4 multiplier:1.0 constant:0.0];
    [v15 addConstraint:v18];

    v19 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v20 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v21 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v21 frame];
    v23 = [NSLayoutConstraint constraintWithItem:v20 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v22];
    [v19 addConstraint:v23];

    v24 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v25 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v26 = [(CameraSensorAnomalyViewController *)self retakeButton];
    [v26 frame];
    v28 = [NSLayoutConstraint constraintWithItem:v25 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v27];
    [v24 addConstraint:v28];

    v29 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v30 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v31 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v32 = [NSLayoutConstraint constraintWithItem:v30 attribute:5 relatedBy:0 toItem:v31 attribute:5 multiplier:1.0 constant:15.0];
    [v29 addConstraint:v32];

    v33 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v34 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v35 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v36 = [NSLayoutConstraint constraintWithItem:v34 attribute:10 relatedBy:0 toItem:v35 attribute:10 multiplier:1.0 constant:0.0];
    [v33 addConstraint:v36];

    v37 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v38 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v39 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v39 frame];
    v41 = [NSLayoutConstraint constraintWithItem:v38 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v40];
    [v37 addConstraint:v41];

    v42 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v43 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v44 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    [v44 frame];
    v46 = [NSLayoutConstraint constraintWithItem:v43 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v45];
    [v42 addConstraint:v46];

    v47 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v48 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v49 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v50 = [NSLayoutConstraint constraintWithItem:v48 attribute:6 relatedBy:0 toItem:v49 attribute:6 multiplier:1.0 constant:15.0];
    [v47 addConstraint:v50];

    v51 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v52 = [(CameraSensorAnomalyViewController *)self usePhotoButton];
    v53 = [(CameraSensorAnomalyViewController *)self retakeButton];
    v54 = [NSLayoutConstraint constraintWithItem:v52 attribute:10 relatedBy:0 toItem:v53 attribute:10 multiplier:1.0 constant:0.0];
    [v51 addConstraint:v54];

    v55 = [(CameraSensorAnomalyViewController *)self continueButton];
    v56 = [(CameraSensorAnomalyViewController *)self continueButton];
    v57 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v57 frame];
    v59 = [NSLayoutConstraint constraintWithItem:v56 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v58];
    [v55 addConstraint:v59];

    v60 = [(CameraSensorAnomalyViewController *)self continueButton];
    v61 = [(CameraSensorAnomalyViewController *)self continueButton];
    v62 = [(CameraSensorAnomalyViewController *)self continueButton];
    [v62 frame];
    v64 = [NSLayoutConstraint constraintWithItem:v61 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v63];
    [v60 addConstraint:v64];

    v65 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v66 = [(CameraSensorAnomalyViewController *)self continueButton];
    v67 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v68 = [NSLayoutConstraint constraintWithItem:v66 attribute:9 relatedBy:0 toItem:v67 attribute:9 multiplier:1.0 constant:0.0];
    [v65 addConstraint:v68];

    v69 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v70 = [(CameraSensorAnomalyViewController *)self continueButton];
    v71 = [(CameraSensorAnomalyViewController *)self bottomBar];
    v72 = [NSLayoutConstraint constraintWithItem:v70 attribute:10 relatedBy:0 toItem:v71 attribute:10 multiplier:1.0 constant:0.0];
    [v69 addConstraint:v72];
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