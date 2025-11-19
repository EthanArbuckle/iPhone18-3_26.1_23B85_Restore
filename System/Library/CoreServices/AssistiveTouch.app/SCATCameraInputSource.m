@interface SCATCameraInputSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)state;
- (BOOL)_hasHeadSwitchesAssigned;
- (SCATCameraInputSource)init;
- (id)_actionIdentifierForCameraSwitch:(int64_t)a3;
- (id)_captureDeviceInputWithPreset:(id)a3;
- (id)_captureMetadataOutputWithDelegate:(id)a3 queue:(id)a4;
- (id)_captureSessionWithPreset:(id)a3;
- (id)_captureVideoDataOutputWithDelegate:(id)a3 queue:(id)a4 format:(id)a5;
- (void)_cleanupCaptureOutput;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4;
- (void)_didUpdateAvailability:(BOOL)a3 withDetail:(unint64_t)a4;
- (void)_didUpdateState:(id)a3;
- (void)_setupCaptureOutput;
- (void)_startCaptureOutput;
- (void)_stopCaptureOutput;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATCameraInputSource

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4
{
  v6 = a3;
  v7 = [(SCATInputSource *)self delegate];
  v8 = [(SCATInputSource *)self queue];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000871B4;
    v9[3] = &unk_1001D50B8;
    v10 = v7;
    v11 = self;
    v12 = v6;
    v13 = a4;
    [v8 performAsynchronousWritingBlock:v9];
  }
}

- (void)_didUpdateAvailability:(BOOL)a3 withDetail:(unint64_t)a4
{
  v5 = a3;
  v7 = [(SCATCameraInputSource *)self isAvailable];
  v8 = [(SCATCameraInputSource *)self availabilityDetail];
  if (v7 != v5 || v8 != a4)
  {
    v9 = [(SCATInputSource *)self delegate];
    v10 = [(SCATInputSource *)self queue];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_1000872E8;
        v14 = &unk_1001D5918;
        v15 = v9;
        v16 = self;
        v18 = v5;
        v17 = a4;
        [v10 performAsynchronousWritingBlock:&v11];
      }
    }

    [(SCATCameraInputSource *)self setAvailable:v5, v11, v12, v13, v14];
    [(SCATCameraInputSource *)self setAvailabilityDetail:a4];
  }
}

- (void)_cleanupCaptureOutput
{
  [(SCATCameraInputSource *)self setCaptureOutputQueue:0];
  [(SCATCameraInputSource *)self setCaptureSession:0];
  v3 = [(SCATCameraInputSource *)self captureOutputPreview];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    AXPerformBlockSynchronouslyOnMainThread();
    [(SCATCameraInputSource *)self setCaptureOutputPreview:0];
    [(SCATCameraInputSource *)self setCaptureVideoPreviewLayer:0];
    [(SCATCameraInputSource *)self setFaceLayer:0];
  }
}

- (id)_captureDeviceInputWithPreset:(id)a3
{
  v11[0] = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  v11[1] = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v3 = [NSArray arrayWithObjects:v11 count:2];
  v4 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v3 mediaType:AVMediaTypeVideo position:2];

  v5 = [v4 devices];
  v6 = [v5 firstObject];

  v10 = 0;
  v7 = [AVCaptureDeviceInput deviceInputWithDevice:v6 error:&v10];
  v8 = v10;
  if (!v7)
  {
    _AXLogWithFacility();
  }

  return v7;
}

- (id)_captureMetadataOutputWithDelegate:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setMetadataObjectsDelegate:v6 queue:v5];

  return v7;
}

- (id)_captureSessionWithPreset:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_captureVideoDataOutputWithDelegate:(id)a3 queue:(id)a4 format:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setAlwaysDiscardsLateVideoFrames:1];
  v11 = [v10 availableVideoCVPixelFormatTypes];
  v12 = [v11 containsObject:v9];

  if (v12)
  {
    v15 = kCVPixelBufferPixelFormatTypeKey;
    v16 = v9;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v10 setVideoSettings:v13];

    [v10 setSampleBufferDelegate:v7 queue:v8];
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
        v13 = [v12 assistiveTouchCameraSwitchPreviewEnabled];

        if (v13)
        {
          v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
          v15 = +[UIColor magentaColor];
          [v14 setBackgroundColor:v15];

          v16 = +[UIColor magentaColor];
          v31 = v7;
          v17 = [v16 CGColor];
          v18 = [v14 layer];
          v19 = v17;
          v7 = v31;
          [v18 setBorderColor:v19];

          v20 = [v14 layer];
          [v20 setBorderWidth:2.0];

          v21 = [v14 layer];
          [v21 setCornerRadius:5.0];

          v22 = [v14 layer];
          [v22 setMasksToBounds:1];

          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          v32 = v14;
          [(SCATCameraInputSource *)self setCaptureOutputPreview:v14];
          v23 = [AVCaptureVideoPreviewLayer layerWithSession:v3];
          [v23 setFrame:{0.0, 0.0, 120.0, 160.0}];
          [(SCATCameraInputSource *)self setCaptureVideoPreviewLayer:v23];
          v24 = [v14 layer];
          [v24 addSublayer:v23];

          v25 = +[CALayer layer];
          v26 = +[UIColor cyanColor];
          [v25 setBorderColor:{objc_msgSend(v26, "CGColor")}];

          [v25 setBorderWidth:2.0];
          [v25 setCornerRadius:5.0];
          [v25 setFrame:{0.0, 0.0, 120.0, 160.0}];
          [v25 setHidden:1];
          [(SCATCameraInputSource *)self setFaceLayer:v25];
          v27 = [v32 layer];
          [v27 addSublayer:v25];

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
  v4 = [(SCATCameraInputSource *)self captureSession];
  if (([v4 isRunning] & 1) == 0)
  {
    v3 = [(SCATCameraInputSource *)self captureSession];
    [v3 startRunning];
  }
}

- (void)_stopCaptureOutput
{
  v4 = [(SCATCameraInputSource *)self captureSession];
  if ([v4 isRunning])
  {
    v3 = [(SCATCameraInputSource *)self captureSession];
    [v3 stopRunning];
  }
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v24 = a4;
  v6 = [(SCATCameraInputSource *)self face];
  if (!v6)
  {
    v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040C9EC6BF2uLL);
    v6->var0.origin = vdupq_n_s64(0x3FD2666666666666uLL);
    v6->var0.size = vdupq_n_s64(0x3FDB333333333333uLL);
    v6->var4 = 0.0;
    v6->var5 = 0;
    v6->var1 = 0.0;
    v6->var2 = 0.0;
    v6->var3 = 0;
    [(SCATCameraInputSource *)self setFace:v6];
  }

  if ([v24 count] == 1)
  {
    v7 = [v24 objectAtIndexedSubscript:0];
    v8 = [UIDevice currentDeviceOrientationAllowingAmbiguous:0];
    [v7 bounds];
    v10.f64[1] = v9;
    v11 = vmlaq_f64(vmulq_f64(v6->var0.size, vdupq_n_s64(0x3FEF5C28F5C28F5CuLL)), vdupq_n_s64(0x3F947AE147AE147BuLL), v10);
    __asm { FMOV            V3.2D, #0.5 }

    v18.f64[1] = v17;
    v6->var0.origin = vaddq_f64(v18, vmulq_f64(vsubq_f64(v10, v11), _Q3));
    v6->var0.size = v11;
    v6->var1 = CACurrentMediaTime();
    v6->var2 = 0.0;
    v6->var3 = 0;
    v6->var4 = 0.0;
    v6->var5 = 0;
    if (v8 == 4)
    {
      v6->var0.origin.x = 1.0 - v6->var0.origin.x - v6->var0.size.width;
    }

    else if (v8 == 3)
    {
      v6->var0.origin.y = 1.0 - v6->var0.origin.y - v6->var0.size.height;
    }

    else
    {
      if (v8 == 2)
      {
        __asm { FMOV            V0.2D, #1.0 }

        size = v6->var0.size;
        v21 = vsubq_f64(vsubq_f64(_Q0, v6->var0.origin), size);
        v22 = vextq_s8(v21, v21, 8uLL);
        v23 = vextq_s8(size, size, 8uLL);
      }

      else
      {
        v22 = vextq_s8(v6->var0.origin, v6->var0.origin, 8uLL);
        v23 = vextq_s8(v6->var0.size, v6->var0.size, 8uLL);
      }

      v6->var0.origin = v22;
      v6->var0.size = v23;
    }
  }

  else
  {
    v6->var1 = 0.0;
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  if (![(SCATCameraInputSource *)self _hasHeadSwitchesAssigned:a3])
  {
    return;
  }

  v6 = [(SCATCameraInputSource *)self face];
  if (!v6)
  {
    return;
  }

  p_x = &v6->var0.origin.x;
  if (CACurrentMediaTime() - v6->var1 < 0.6)
  {
    v8 = p_x[2];
    if (v8 < p_x[3])
    {
      v8 = p_x[3];
    }

    if (v8 <= 0.6)
    {
      v9 = self;
      if (v8 >= 0.25)
      {
        [(SCATCameraInputSource *)self _didUpdateAvailability:1 withDetail:0];
        v13 = p_x[2];
        v14 = *p_x + v13 * 0.5 + -0.5;
        v15 = +[AXSettings sharedInstance];
        v16 = [v15 assistiveTouchHeadMovementSensitivity];
        v17 = 0.35;
        if (v16 == 2)
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
      v9 = self;
      v10 = 2;
    }
  }

  else
  {
    v9 = self;
    v10 = 1;
  }

  [(SCATCameraInputSource *)v9 _didUpdateAvailability:0 withDetail:v10];
LABEL_10:
  v11 = [(SCATCameraInputSource *)self captureOutputPreview];
  if (v11)
  {
    v29 = [(SCATCameraInputSource *)self faceLayer];
    v12 = v29;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (id)_actionIdentifierForCameraSwitch:(int64_t)a3
{
  v5 = [(SCATInputSource *)self actions];

  if (v5)
  {
    v6 = [NSNumber numberWithInteger:a3];
    v7 = [(SCATInputSource *)self actions];
    v8 = [v7 objectForKeyedSubscript:v6];
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
  v2 = [(SCATInputSource *)self actions];
  v3 = [v2 objectForKeyedSubscript:&off_1001E5550];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:&off_1001E5568];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)dealloc
{
  [(SCATCameraInputSource *)self stopRunning];
  [(SCATCameraInputSource *)self _cleanupCaptureOutput];
  v3 = [(SCATCameraInputSource *)self face];
  if (v3)
  {
    free(v3);
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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATCameraInputSource;
  [(SCATInputSource *)&v4 setDelegate:a3 queue:a4];
}

- (void)startRunning
{
  if (![(SCATInputSource *)self isRunning])
  {
    [(SCATCameraInputSource *)self setAvailable:1];
    [(SCATCameraInputSource *)self setAvailabilityDetail:0];
    v3 = [(SCATCameraInputSource *)self face];
    if (v3)
    {
      free(v3);
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

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SCATCameraInputSource;
  v7 = a3;
  [(SCATInputSource *)&v16 updateWithSwitches:v7 recipe:v6];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100088850;
  v13 = &unk_1001D5DA8;
  v14 = v6;
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v8 = v15;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:&v10];

  [(SCATInputSource *)self setActions:v8, v10, v11, v12, v13];
}

- (void)_didUpdateState:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(SCATCameraInputSource *)self state];
  if (var0 != v7 || var1 != v6)
  {
    v9 = [(SCATInputSource *)self delegate];
    v10 = [(SCATInputSource *)self queue];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_100088A44;
        v14 = &unk_1001D43A0;
        v15 = v9;
        v16 = self;
        v17 = var0;
        v18 = var1;
        [v10 performAsynchronousWritingBlock:&v11];
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