@interface SCATCameraInputSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)state;
- (BOOL)_hasHeadSwitchesAssigned;
- (SCATCameraInputSource)init;
- (id)_actionIdentifierForCameraSwitch:(int64_t)switch;
- (id)_captureDeviceInputWithPreset:(id)preset;
- (id)_captureMetadataOutputWithDelegate:(id)delegate queue:(id)queue;
- (id)_captureSessionWithPreset:(id)preset;
- (id)_captureVideoDataOutputWithDelegate:(id)delegate queue:(id)queue format:(id)format;
- (void)_cleanupCaptureOutput;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start;
- (void)_didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail;
- (void)_didUpdateState:(id)state;
- (void)_setupCaptureOutput;
- (void)_startCaptureOutput;
- (void)_stopCaptureOutput;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATCameraInputSource

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start
{
  identifierCopy = identifier;
  delegate = [(SCATInputSource *)self delegate];
  queue = [(SCATInputSource *)self queue];
  if (queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000871B4;
    v9[3] = &unk_1001D50B8;
    v10 = delegate;
    selfCopy = self;
    v12 = identifierCopy;
    startCopy = start;
    [queue performAsynchronousWritingBlock:v9];
  }
}

- (void)_didUpdateAvailability:(BOOL)availability withDetail:(unint64_t)detail
{
  availabilityCopy = availability;
  isAvailable = [(SCATCameraInputSource *)self isAvailable];
  availabilityDetail = [(SCATCameraInputSource *)self availabilityDetail];
  if (isAvailable != availabilityCopy || availabilityDetail != detail)
  {
    delegate = [(SCATInputSource *)self delegate];
    queue = [(SCATInputSource *)self queue];
    if (queue)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_1000872E8;
        v14 = &unk_1001D5918;
        v15 = delegate;
        selfCopy = self;
        v18 = availabilityCopy;
        detailCopy = detail;
        [queue performAsynchronousWritingBlock:&v11];
      }
    }

    [(SCATCameraInputSource *)self setAvailable:availabilityCopy, v11, v12, v13, v14];
    [(SCATCameraInputSource *)self setAvailabilityDetail:detail];
  }
}

- (void)_cleanupCaptureOutput
{
  [(SCATCameraInputSource *)self setCaptureOutputQueue:0];
  [(SCATCameraInputSource *)self setCaptureSession:0];
  captureOutputPreview = [(SCATCameraInputSource *)self captureOutputPreview];
  v4 = captureOutputPreview;
  if (captureOutputPreview)
  {
    v5 = captureOutputPreview;
    AXPerformBlockSynchronouslyOnMainThread();
    [(SCATCameraInputSource *)self setCaptureOutputPreview:0];
    [(SCATCameraInputSource *)self setCaptureVideoPreviewLayer:0];
    [(SCATCameraInputSource *)self setFaceLayer:0];
  }
}

- (id)_captureDeviceInputWithPreset:(id)preset
{
  v11[0] = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  v11[1] = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v3 = [NSArray arrayWithObjects:v11 count:2];
  v4 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v3 mediaType:AVMediaTypeVideo position:2];

  devices = [v4 devices];
  firstObject = [devices firstObject];

  v10 = 0;
  v7 = [AVCaptureDeviceInput deviceInputWithDevice:firstObject error:&v10];
  v8 = v10;
  if (!v7)
  {
    _AXLogWithFacility();
  }

  return v7;
}

- (id)_captureMetadataOutputWithDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = objc_opt_new();
  [v7 setMetadataObjectsDelegate:delegateCopy queue:queueCopy];

  return v7;
}

- (id)_captureSessionWithPreset:(id)preset
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_captureVideoDataOutputWithDelegate:(id)delegate queue:(id)queue format:(id)format
{
  delegateCopy = delegate;
  queueCopy = queue;
  formatCopy = format;
  v10 = objc_opt_new();
  [v10 setAlwaysDiscardsLateVideoFrames:1];
  availableVideoCVPixelFormatTypes = [v10 availableVideoCVPixelFormatTypes];
  v12 = [availableVideoCVPixelFormatTypes containsObject:formatCopy];

  if (v12)
  {
    v15 = kCVPixelBufferPixelFormatTypeKey;
    v16 = formatCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v10 setVideoSettings:v13];

    [v10 setSampleBufferDelegate:delegateCopy queue:queueCopy];
  }

  else
  {
    _AXLogWithFacility();

    v10 = 0;
  }

  return v10;
}

- (void)_setupCaptureOutput
{
  v3 = [(SCATCameraInputSource *)self _captureSessionWithPreset:AVCaptureSessionPreset640x480];
  v4 = [(SCATCameraInputSource *)self _captureDeviceInputWithPreset:AVCaptureSessionPreset640x480];
  if ([v3 canAddInput:v4])
  {
    [v3 addInput:v4];
    v5 = dispatch_queue_create("CaptureOutputQueue", 0);
    [(SCATCameraInputSource *)self setCaptureOutputQueue:v5];
    v6 = [(SCATCameraInputSource *)self _captureVideoDataOutputWithDelegate:self queue:v5 format:&off_1001E5538];
    if ([v3 canAddOutput:v6])
    {
      [v3 addOutput:v6];
      v7 = [v6 connectionWithMediaType:AVMediaTypeVideo];
      if ([v7 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v7 setCameraIntrinsicMatrixDeliveryEnabled:1];
      }

      else
      {
        v30 = @"Camera intrinsics delivery is not supported";
        LOBYTE(v29) = 1;
        _AXLogWithFacility();
      }

      v8 = [(SCATCameraInputSource *)self _captureMetadataOutputWithDelegate:self queue:v5, v29, v30];
      if ([v3 canAddOutput:v8] && (objc_msgSend(v3, "addOutput:", v8), objc_msgSend(v8, "availableMetadataObjectTypes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", AVMetadataObjectTypeFace), v9, v10))
      {
        v33 = AVMetadataObjectTypeFace;
        v11 = [NSArray arrayWithObjects:&v33 count:1];
        [v8 setMetadataObjectTypes:v11];

        [(SCATCameraInputSource *)self setCaptureSession:v3];
        v12 = +[AXSettings sharedInstance];
        assistiveTouchCameraSwitchPreviewEnabled = [v12 assistiveTouchCameraSwitchPreviewEnabled];

        if (assistiveTouchCameraSwitchPreviewEnabled)
        {
          v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
          v15 = +[UIColor magentaColor];
          [v14 setBackgroundColor:v15];

          v16 = +[UIColor magentaColor];
          v31 = v7;
          cGColor = [v16 CGColor];
          layer = [v14 layer];
          v19 = cGColor;
          v7 = v31;
          [layer setBorderColor:v19];

          layer2 = [v14 layer];
          [layer2 setBorderWidth:2.0];

          layer3 = [v14 layer];
          [layer3 setCornerRadius:5.0];

          layer4 = [v14 layer];
          [layer4 setMasksToBounds:1];

          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          v32 = v14;
          [(SCATCameraInputSource *)self setCaptureOutputPreview:v14];
          v23 = [AVCaptureVideoPreviewLayer layerWithSession:v3];
          [v23 setFrame:{0.0, 0.0, 120.0, 160.0}];
          [(SCATCameraInputSource *)self setCaptureVideoPreviewLayer:v23];
          layer5 = [v14 layer];
          [layer5 addSublayer:v23];

          v25 = +[CALayer layer];
          v26 = +[UIColor cyanColor];
          [v25 setBorderColor:{objc_msgSend(v26, "CGColor")}];

          [v25 setBorderWidth:2.0];
          [v25 setCornerRadius:5.0];
          [v25 setFrame:{0.0, 0.0, 120.0, 160.0}];
          [v25 setHidden:1];
          [(SCATCameraInputSource *)self setFaceLayer:v25];
          layer6 = [v32 layer];
          [layer6 addSublayer:v25];

          v28 = v32;
          AXPerformBlockSynchronouslyOnMainThread();
        }
      }

      else
      {
        _AXLogWithFacility();
      }
    }

    else
    {
      _AXLogWithFacility();
    }
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_startCaptureOutput
{
  captureSession = [(SCATCameraInputSource *)self captureSession];
  if (([captureSession isRunning] & 1) == 0)
  {
    captureSession2 = [(SCATCameraInputSource *)self captureSession];
    [captureSession2 startRunning];
  }
}

- (void)_stopCaptureOutput
{
  captureSession = [(SCATCameraInputSource *)self captureSession];
  if ([captureSession isRunning])
  {
    captureSession2 = [(SCATCameraInputSource *)self captureSession];
    [captureSession2 stopRunning];
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  face = [(SCATCameraInputSource *)self face];
  if (!face)
  {
    face = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040C9EC6BF2uLL);
    face->var0.origin = vdupq_n_s64(0x3FD2666666666666uLL);
    face->var0.size = vdupq_n_s64(0x3FDB333333333333uLL);
    face->var4 = 0.0;
    face->var5 = 0;
    face->var1 = 0.0;
    face->var2 = 0.0;
    face->var3 = 0;
    [(SCATCameraInputSource *)self setFace:face];
  }

  if ([objectsCopy count] == 1)
  {
    v7 = [objectsCopy objectAtIndexedSubscript:0];
    v8 = [UIDevice currentDeviceOrientationAllowingAmbiguous:0];
    [v7 bounds];
    v10.f64[1] = v9;
    v11 = vmlaq_f64(vmulq_f64(face->var0.size, vdupq_n_s64(0x3FEF5C28F5C28F5CuLL)), vdupq_n_s64(0x3F947AE147AE147BuLL), v10);
    __asm { FMOV            V3.2D, #0.5 }

    v18.f64[1] = v17;
    face->var0.origin = vaddq_f64(v18, vmulq_f64(vsubq_f64(v10, v11), _Q3));
    face->var0.size = v11;
    face->var1 = CACurrentMediaTime();
    face->var2 = 0.0;
    face->var3 = 0;
    face->var4 = 0.0;
    face->var5 = 0;
    if (v8 == 4)
    {
      face->var0.origin.x = 1.0 - face->var0.origin.x - face->var0.size.width;
    }

    else if (v8 == 3)
    {
      face->var0.origin.y = 1.0 - face->var0.origin.y - face->var0.size.height;
    }

    else
    {
      if (v8 == 2)
      {
        __asm { FMOV            V0.2D, #1.0 }

        size = face->var0.size;
        v21 = vsubq_f64(vsubq_f64(_Q0, face->var0.origin), size);
        v22 = vextq_s8(v21, v21, 8uLL);
        v23 = vextq_s8(size, size, 8uLL);
      }

      else
      {
        v22 = vextq_s8(face->var0.origin, face->var0.origin, 8uLL);
        v23 = vextq_s8(face->var0.size, face->var0.size, 8uLL);
      }

      face->var0.origin = v22;
      face->var0.size = v23;
    }
  }

  else
  {
    face->var1 = 0.0;
  }
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  if (![(SCATCameraInputSource *)self _hasHeadSwitchesAssigned:output])
  {
    return;
  }

  face = [(SCATCameraInputSource *)self face];
  if (!face)
  {
    return;
  }

  p_x = &face->var0.origin.x;
  if (CACurrentMediaTime() - face->var1 < 0.6)
  {
    v8 = p_x[2];
    if (v8 < p_x[3])
    {
      v8 = p_x[3];
    }

    if (v8 <= 0.6)
    {
      selfCopy3 = self;
      if (v8 >= 0.25)
      {
        [(SCATCameraInputSource *)self _didUpdateAvailability:1 withDetail:0];
        v13 = p_x[2];
        v14 = *p_x + v13 * 0.5 + -0.5;
        v15 = +[AXSettings sharedInstance];
        assistiveTouchHeadMovementSensitivity = [v15 assistiveTouchHeadMovementSensitivity];
        v17 = 0.35;
        if (assistiveTouchHeadMovementSensitivity == 2)
        {
          v17 = 0.25;
        }

        v18 = v13 * v17;

        v19 = round(v14 / v18 * 100.0) / 100.0;
        v20 = fabs(v19) * 10.0;
        if (v19 >= -1.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 10.0;
        }

        if (v19 >= 0.0)
        {
          v21 = 0.0;
        }

        v22 = floor(v21) / 10.0;
        if (v19 < 0.0)
        {
          v20 = 0.0;
        }

        if (v19 >= 1.0)
        {
          v23 = 10.0;
        }

        else
        {
          v23 = v20;
        }

        v24 = floor(v23) / 10.0;
        HasFrontCameraPhysicallyMountedUpsideDown = AXDeviceHasFrontCameraPhysicallyMountedUpsideDown();
        if (HasFrontCameraPhysicallyMountedUpsideDown)
        {
          v26 = v22;
        }

        else
        {
          v26 = v24;
        }

        if (HasFrontCameraPhysicallyMountedUpsideDown)
        {
          v22 = v24;
        }

        if ([(SCATCameraInputSource *)self isLeftHeadSwitchDown]!= (v22 == 1.0))
        {
          v27 = [(SCATCameraInputSource *)self _actionIdentifierForCameraSwitch:1];
          [(SCATCameraInputSource *)self _didReceiveActionWithIdentifier:v27 start:v22 == 1.0];
          [(SCATCameraInputSource *)self setLeftHeadSwitchDown:v22 == 1.0];
        }

        if ((v26 == 1.0) != [(SCATCameraInputSource *)self isRightHeadSwitchDown])
        {
          v28 = [(SCATCameraInputSource *)self _actionIdentifierForCameraSwitch:2, 1.0];
          [(SCATCameraInputSource *)self _didReceiveActionWithIdentifier:v28 start:v26 == 1.0];
          [(SCATCameraInputSource *)self setRightHeadSwitchDown:v26 == 1.0];
        }

        [(SCATCameraInputSource *)self _didUpdateState:v22, v26];
        goto LABEL_10;
      }

      v10 = 3;
    }

    else
    {
      selfCopy3 = self;
      v10 = 2;
    }
  }

  else
  {
    selfCopy3 = self;
    v10 = 1;
  }

  [(SCATCameraInputSource *)selfCopy3 _didUpdateAvailability:0 withDetail:v10];
LABEL_10:
  captureOutputPreview = [(SCATCameraInputSource *)self captureOutputPreview];
  if (captureOutputPreview)
  {
    faceLayer = [(SCATCameraInputSource *)self faceLayer];
    v12 = faceLayer;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (id)_actionIdentifierForCameraSwitch:(int64_t)switch
{
  actions = [(SCATInputSource *)self actions];

  if (actions)
  {
    v6 = [NSNumber numberWithInteger:switch];
    actions2 = [(SCATInputSource *)self actions];
    v8 = [actions2 objectForKeyedSubscript:v6];
  }

  else
  {
    _AXLogWithFacility();
    v8 = 0;
  }

  return v8;
}

- (BOOL)_hasHeadSwitchesAssigned
{
  actions = [(SCATInputSource *)self actions];
  v3 = [actions objectForKeyedSubscript:&off_1001E5550];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [actions objectForKeyedSubscript:&off_1001E5568];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)dealloc
{
  [(SCATCameraInputSource *)self stopRunning];
  [(SCATCameraInputSource *)self _cleanupCaptureOutput];
  face = [(SCATCameraInputSource *)self face];
  if (face)
  {
    free(face);
    [(SCATCameraInputSource *)self setFace:0];
  }

  v4.receiver = self;
  v4.super_class = SCATCameraInputSource;
  [(SCATCameraInputSource *)&v4 dealloc];
}

- (SCATCameraInputSource)init
{
  v3.receiver = self;
  v3.super_class = SCATCameraInputSource;
  return [(SCATInputSource *)&v3 init];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v4.receiver = self;
  v4.super_class = SCATCameraInputSource;
  [(SCATInputSource *)&v4 setDelegate:delegate queue:queue];
}

- (void)startRunning
{
  if (![(SCATInputSource *)self isRunning])
  {
    [(SCATCameraInputSource *)self setAvailable:1];
    [(SCATCameraInputSource *)self setAvailabilityDetail:0];
    face = [(SCATCameraInputSource *)self face];
    if (face)
    {
      free(face);
      [(SCATCameraInputSource *)self setFace:0];
    }

    [(SCATCameraInputSource *)self setLeftHeadSwitchDown:0];
    [(SCATCameraInputSource *)self setRightHeadSwitchDown:0];

    [(SCATInputSource *)self setRunning:1];
  }
}

- (void)stopRunning
{
  if ([(SCATInputSource *)self isRunning])
  {

    [(SCATInputSource *)self setRunning:0];
  }
}

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = SCATCameraInputSource;
  switchesCopy = switches;
  [(SCATInputSource *)&v16 updateWithSwitches:switchesCopy recipe:recipeCopy];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100088850;
  v13 = &unk_1001D5DA8;
  v14 = recipeCopy;
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v8 = v15;
  v9 = recipeCopy;
  [switchesCopy enumerateObjectsUsingBlock:&v10];

  [(SCATInputSource *)self setActions:v8, v10, v11, v12, v13];
}

- (void)_didUpdateState:(id)state
{
  var1 = state.var1;
  var0 = state.var0;
  [(SCATCameraInputSource *)self state];
  if (var0 != v7 || var1 != v6)
  {
    delegate = [(SCATInputSource *)self delegate];
    queue = [(SCATInputSource *)self queue];
    if (queue)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_100088A44;
        v14 = &unk_1001D43A0;
        v15 = delegate;
        selfCopy = self;
        v17 = var0;
        v18 = var1;
        [queue performAsynchronousWritingBlock:&v11];
      }
    }

    [(SCATCameraInputSource *)self setState:var0, var1, v11, v12, v13, v14];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)state
{
  leftSwitch = self->_state.leftSwitch;
  rightSwitch = self->_state.rightSwitch;
  result.var1 = rightSwitch;
  result.var0 = leftSwitch;
  return result;
}

@end