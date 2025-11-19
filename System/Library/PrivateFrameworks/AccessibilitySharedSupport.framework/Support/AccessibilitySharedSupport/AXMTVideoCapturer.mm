@interface AXMTVideoCapturer
+ (id)_idealFrameRateRangeForDeviceFormat:(id)a3;
- (AXMTVideoCapturer)initWithInput:(id)a3;
- (AXMTVideoCapturerDelegate)delegate;
- (BOOL)_videoDimensionsMatchesDesiredResolutions:(id)a3;
- (CGSize)resolution;
- (id)_binnedFormatsForDevice:(id)a3;
- (void)_avCaptureSessionDidStopRunningNotification:(id)a3;
- (void)_avCaptureSessionRuntimeErrorNotification:(id)a3;
- (void)_avCaptureSessionWasInterruptedNotification:(id)a3;
- (void)_configureCaptureDevice:(id)a3;
- (void)_configureCaptureSession;
- (void)_configureMetadataOutputWithObjectType:(id)a3 forCaptureSession:(id)a4 addFaceTracking:(BOOL)a5;
- (void)_configureVideoDataOutputForCaptureSession:(id)a3;
- (void)_informDelegateOfError:(id)a3;
- (void)_timerFiredForDelayedCameraStolen:(id)a3;
- (void)_updateCaptureDeviceIfNeeded;
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
- (void)reconfigureCaptureDeviceForBacklightOff:(BOOL)a3;
- (void)setInput:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation AXMTVideoCapturer

- (AXMTVideoCapturer)initWithInput:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AXMTVideoCapturer;
  v5 = [(AXMTVideoCapturer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_pixelFormatType = 1111970369;
    v7 = [v4 copy];
    input = v6->_input;
    v6->_input = v7;
  }

  return v6;
}

- (void)reconfigureCaptureDeviceForBacklightOff:(BOOL)a3
{
  v3 = a3;
  if ([(AXMTVideoCapturer *)self _backlightIsOff]!= a3)
  {
    [(AXMTVideoCapturer *)self set_backlightIsOff:v3];
    v5 = [(AXMTVideoCapturer *)self _captureDevice];
    [(AXMTVideoCapturer *)self _configureCaptureDevice:v5];
  }
}

- (void)_configureCaptureDevice:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_68;
  }

  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D20C(v3);
  }

  v5 = [(AXMTVideoCapturer *)self _binnedFormatsForDevice:v3];
  if (![v5 count])
  {
    v6 = [v3 formats];

    v5 = v6;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v52 = v3;
    v53 = 0;
    v58 = 0;
    v59 = 0;
    v10 = 0;
    v60 = 0;
    v61 = 0;
    v11 = *v72;
    v54 = *v72;
    v55 = v7;
    do
    {
      v12 = 0;
      v57 = v9;
      do
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v71 + 1) + 8 * v12);
        v14 = [v13 formatDescription];
        if (CMFormatDescriptionGetMediaSubType(v14) == 875704422)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(v14);
          v16 = HIDWORD(Dimensions);
          v17 = [objc_opt_class() _idealFrameRateRangeForDeviceFormat:v13];
          v18 = [(AXMTVideoCapturer *)self _videoDimensionsMatchesDesiredResolutions:Dimensions];
          v20 = v60 <= Dimensions && v61 <= SHIDWORD(Dimensions);
          if (v10)
          {
            [v17 maxFrameRate];
            v22 = v21;
            v23 = v10;
            [v10 maxFrameRate];
            LOBYTE(v10) = v22 < v24;
          }

          else
          {
            v23 = 0;
          }

          if (v58)
          {
            [v17 maxFrameRate];
            v26 = v25;
            [v58 maxFrameRate];
            v28 = v26 >= v27;
          }

          else
          {
            v28 = 1;
          }

          if (v10 & 1 | ((v18 & 1) == 0))
          {
            v10 = v23;
            v29 = v59;
          }

          else
          {
            v29 = v13;

            v10 = v17;
          }

          v59 = v29;
          v30 = !v20 || !v28;
          v11 = v54;
          if (v30)
          {
            LODWORD(Dimensions) = v60;
            LODWORD(v16) = v61;
          }

          else
          {
            v31 = v13;

            v32 = v17;
            v58 = v32;
            v53 = v31;
          }

          v9 = v57;

          v60 = Dimensions;
          v61 = v16;
          v7 = v55;
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v9);

    v3 = v52;
    v34 = v58;
    v33 = v59;
    if (v59)
    {
      goto LABEL_40;
    }
  }

  else
  {

    v53 = 0;
    v10 = 0;
    v34 = 0;
  }

  v33 = v53;
  v34 = v34;

  v10 = v34;
  v53 = v33;
LABEL_40:
  v35 = v33;
  if (v33 && v10)
  {
    v36 = CMVideoFormatDescriptionGetDimensions([v33 formatDescription]);
    [(AXMTVideoCapturer *)self setResolution:v36, (v36 >> 32)];
    [(AXMTVideoCapturer *)self delegate];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AD40;
    v37 = block[3] = &unk_100048948;
    v69 = v37;
    v70 = self;
    dispatch_async(&_dispatch_main_q, block);
    v67 = 0;
    v38 = [v3 lockForConfiguration:&v67];
    v39 = v67;
    if (v38)
    {
      [v3 setActiveFormat:v35];
      v40 = AXSSLogForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_10001D300(v3);
      }

      memset(&v66, 0, sizeof(v66));
      [v10 minFrameDuration];
      if ([(AXMTVideoCapturer *)self _backlightIsOff])
      {
        v41 = 1.0;
      }

      else
      {
        v41 = 30.0;
      }

      [v10 maxFrameRate];
      v43 = v42 - v41;
      [v10 minFrameRate];
      if (v43 > 1.0 && v44 <= v41)
      {
        CMTimeMake(&time, 1, v41);
        v66 = time;
      }

      time = v66;
      [v3 setActiveVideoMinFrameDuration:&time];
      time = v66;
      [v3 setActiveVideoMaxFrameDuration:&time];
      time = v66;
      if (CMTimeGetSeconds(&time) > 0.0)
      {
        v45 = AXSSLogForCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          time = v66;
          v50 = CMTimeCopyDescription(kCFAllocatorDefault, &time);
          time = v66;
          v62 = v50;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 138412546;
          *(&time.value + 4) = v50;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = 1.0 / Seconds;
          _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "AXMTVideoCapturer: _configureCaptureDevice: minFrameDuration and maxFrameDuration: %@ (FPS: %f)", &time, 0x16u);
        }
      }

      if ([v3 isFaceDetectionSupported])
      {
        [v3 setFaceDetectionDrivenImageProcessingEnabled:1];
      }

      if ([v3 canPerformReactionEffects])
      {
        [AVCaptureDevice setReactionEffectsEnabled:0];
      }

      v46 = [v3 isGeometricDistortionCorrectionEnabled];
      v47 = [v3 activeFormat];
      v48 = v47;
      if (v46)
      {
        [v47 geometricDistortionCorrectedVideoFieldOfView];
      }

      else
      {
        [v47 videoFieldOfView];
      }

      [(AXMTVideoCapturer *)self setFieldOfView:?];

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10001AD80;
      v63[3] = &unk_100048948;
      v64 = v37;
      v65 = self;
      dispatch_async(&_dispatch_main_q, v63);

      [v3 unlockForConfiguration];
    }

    else
    {
      v49 = AXSSLogForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10001D298();
      }
    }
  }

LABEL_68:
}

- (BOOL)_videoDimensionsMatchesDesiredResolutions:(id)a3
{
  if (a3.var0 == 1440.0 && a3.var1 == 1080.0)
  {
    return 1;
  }

  return a3.var0 == 1920.0 && a3.var1 == 1440.0;
}

- (void)_updateCaptureDeviceIfNeeded
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D38C();
  }

  v5 = [(AXMTVideoCapturer *)self input];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([AXSSMotionTrackingCameraInput captureDeviceForMotionTrackingInput:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  }

  v7 = [v6 uniqueID];
  if (!v7)
  {
    v2 = [(AXMTVideoCapturer *)self _captureDevice];
    v12 = [v2 uniqueID];
    if (v12)
    {

LABEL_17:
      v14 = AXSSLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10001D3C0(self);
      }

      v15 = [(AXMTVideoCapturer *)self isStarted];
      if (v15)
      {
        [(AXMTVideoCapturer *)self stop];
      }

      if (v6)
      {
        [(AXMTVideoCapturer *)self _configureCaptureDevice:v6];
      }

      [(AXMTVideoCapturer *)self set_captureDevice:v6];
      if (v15)
      {
        v16 = [(AXMTVideoCapturer *)self _captureDevice];

        if (v16)
        {
          [(AXMTVideoCapturer *)self start];
        }
      }

      goto LABEL_26;
    }
  }

  v8 = [v6 uniqueID];
  v9 = [(AXMTVideoCapturer *)self _captureDevice];
  v10 = [v9 uniqueID];
  v11 = [v8 isEqualToString:v10];

  if (v7)
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v13 = AXSSLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D464();
  }

LABEL_26:
}

- (void)setInput:(id)a3
{
  v4 = a3;
  if (([(AXSSMotionTrackingCameraInput *)self->_input isEqual:v4]& 1) == 0)
  {
    v5 = [v4 copy];
    input = self->_input;
    self->_input = v5;

    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D498();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v4 captureDeviceUniqueID];
      v9 = [(AXMTVideoCapturer *)self _captureDevice];
      v10 = [v9 uniqueID];

      if (!v10 && v8 || ([v10 isEqualToString:v8] & 1) == 0)
      {
        [(AXMTVideoCapturer *)self _updateCaptureDeviceIfNeeded];
      }
    }
  }
}

- (void)start
{
  if (![(AXMTVideoCapturer *)self isStarted])
  {
    [(AXMTVideoCapturer *)self _updateCaptureDeviceIfNeeded];
    [(AXMTVideoCapturer *)self setStarted:1];
    v3 = [(AXMTVideoCapturer *)self _captureDevice];

    if (v3)
    {
      v4 = AXSSLogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v10 = "[AXMTVideoCapturer start]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: configuring new capture session", buf, 0xCu);
      }

      v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v6 = dispatch_queue_create("com.apple.accessibility.AXMTVideoCapturer.session", v5);
      [(AXMTVideoCapturer *)self set_captureSessionQueue:v6];

      v7 = [(AXMTVideoCapturer *)self _captureSessionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B2E4;
      block[3] = &unk_1000488F8;
      block[4] = self;
      dispatch_async(v7, block);
    }
  }
}

- (void)stop
{
  if ([(AXMTVideoCapturer *)self isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D50C(self);
    }

    [(AXMTVideoCapturer *)self setStarted:0];
    v4 = [(AXMTVideoCapturer *)self captureSession];
    [v4 stopRunning];

    v5 = [(AXMTVideoCapturer *)self captureSession];

    if (v5)
    {
      v6 = +[NSNotificationCenter defaultCenter];
      v7 = [(AXMTVideoCapturer *)self captureSession];
      [v6 removeObserver:self name:AVCaptureSessionDidStopRunningNotification object:v7];

      v8 = +[NSNotificationCenter defaultCenter];
      v9 = [(AXMTVideoCapturer *)self captureSession];
      [v8 removeObserver:self name:AVCaptureSessionRuntimeErrorNotification object:v9];

      v10 = +[NSNotificationCenter defaultCenter];
      v11 = [(AXMTVideoCapturer *)self captureSession];
      [v10 removeObserver:self name:AVCaptureSessionWasInterruptedNotification object:v11];
    }

    [(AXMTVideoCapturer *)self setCaptureSession:0];
    [(AXMTVideoCapturer *)self set_captureDevice:0];
    [(AXMTVideoCapturer *)self set_videoDataOutput:0];
    [(AXMTVideoCapturer *)self set_metadataOutput:0];
    [(AXMTVideoCapturer *)self set_outputSynchronizer:0];
    [(AXMTVideoCapturer *)self set_droppedFrames:0];
    [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:0];
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  AXMTLogFPS();
  v7 = [(AXMTVideoCapturer *)self delegate];
  if (v7)
  {
    v9 = v7;
    v8 = [[AXMTVideoCapturerResult alloc] initWithBuffer:a4 metadataObjects:0];
    [v9 videoCapturer:self didCaptureBufferResult:v8];

    v7 = v9;
  }
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v6 = [(AXMTVideoCapturer *)self delegate:a3];
  if (v6)
  {
    v7 = v6;
    [v6 videoCapturerDidDropFrame:self];
    v6 = v7;
  }
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v5 = a4;
  AXMTLogFPS();
  v6 = [(AXMTVideoCapturer *)self _videoDataOutput];
  v18 = [v5 synchronizedDataForCaptureOutput:v6];

  v7 = [(AXMTVideoCapturer *)self _metadataOutput];
  v8 = [v5 synchronizedDataForCaptureOutput:v7];

  v9 = [v8 metadataObjects];
  v10 = [v9 count];

  if (v10 || (v11 = [(AXMTVideoCapturer *)self _droppedFrames]+ 1, [(AXMTVideoCapturer *)self set_droppedFrames:v11], v11 >= 0x15))
  {
    [(AXMTVideoCapturer *)self set_droppedFrames:0];
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(AXMTVideoCapturer *)self delegate];
  if (v13)
  {
    if ([v18 sampleBufferWasDropped])
    {
      [v13 videoCapturerDidDropFrame:self];
    }

    else if ((v12 & 1) == 0)
    {
      v14 = [AXMTVideoCapturerResult alloc];
      v15 = [v18 sampleBuffer];
      v16 = [v8 metadataObjects];
      v17 = [(AXMTVideoCapturerResult *)v14 initWithBuffer:v15 metadataObjects:v16];

      [v13 videoCapturer:self didCaptureBufferResult:v17];
    }
  }
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  AXMTLogFPS();
  v11 = [(AXMTVideoCapturer *)self delegate];
  if (![v9 count])
  {
    [v11 videoCapturerReceivedNoMetadata:self];
  }

  v12 = [[AXMTVideoCapturerResult alloc] initWithBuffer:0 metadataObjects:v9];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BC5C;
  block[3] = &unk_100049008;
  v13 = v11;
  v25 = v13;
  v26 = self;
  v14 = v12;
  v27 = v14;
  dispatch_async(&_dispatch_main_q, block);
  v15 = [(AXMTVideoCapturer *)self _delayCameraStolenErrorTimer];
  v16 = [v15 isValid];

  if (v16)
  {
    v17 = AXSSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[AXMTVideoCapturer captureOutput:didOutputMetadataObjects:fromConnection:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: clearing _delayCameraStolenErrorTimer", &buf, 0xCu);
    }

    v18 = [(AXMTVideoCapturer *)self _delayCameraStolenErrorTimer];
    [v18 invalidate];

    [(AXMTVideoCapturer *)self set_delayCameraStolenErrorTimer:0];
  }

  if ([(AXMTVideoCapturer *)self _lastTimeFaceIDStoleCamera])
  {
    v19 = mach_absolute_time();
    v20 = [(AXMTVideoCapturer *)self _lastTimeFaceIDStoleCamera];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v21 = off_1000545C8;
    v31 = off_1000545C8;
    if (!off_1000545C8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v33 = sub_10001D000;
      v34 = &unk_100048BA8;
      v35 = &v28;
      sub_10001D000(&buf);
      v21 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v21)
    {
      sub_100029794();
      __break(1u);
    }

    v22 = v21(v19 - v20);
    v23 = AXSSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v22 / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FaceID stole the camera for: %f", &buf, 0xCu);
    }

    [(AXMTVideoCapturer *)self set_lastTimeFaceIDStoleCamera:0];
  }
}

+ (id)_idealFrameRateRangeForDeviceFormat:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001BD90;
  v12 = sub_10001BDA0;
  v13 = 0;
  v4 = [v3 videoSupportedFrameRateRanges];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BDA8;
  v7[3] = &unk_100049030;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_binnedFormatsForDevice:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 formats];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001BF1C;
  v9[3] = &unk_100049058;
  v10 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (void)_configureCaptureSession
{
  v3 = [(AXMTVideoCapturer *)self _captureDevice];
  v33 = 0;
  v4 = [AVCaptureDeviceInput deviceInputWithDevice:v3 error:&v33];
  v5 = v33;

  if (v5)
  {
    v6 = AXSSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001D5A4();
    }

    v7 = 0;
LABEL_27:

    [(AXMTVideoCapturer *)self setCaptureSession:v7];
    goto LABEL_28;
  }

  v7 = objc_opt_new();
  [v7 beginConfiguration];
  if ([v7 canAddInput:v4])
  {
    [v7 addInput:v4];
    v6 = dispatch_queue_create("com.apple.accessibility.AXMTVideoCapturer.metadataOutput", 0);
    v8 = [(AXMTVideoCapturer *)self input];
    v9 = [v8 trackingType];

    if (v9 == 3)
    {
      [(AXMTVideoCapturer *)self _configureVideoDataOutputForCaptureSession:v7];
      v10 = &AVMetadataObjectTypeFace;
    }

    else
    {
      v10 = &AVMetadataObjectTypeTrackedFaces;
    }

    [(AXMTVideoCapturer *)self _configureMetadataOutputWithObjectType:*v10 forCaptureSession:v7 addFaceTracking:v9 != 3];
    v12 = [(AXMTVideoCapturer *)self _metadataOutput];
    [v12 setMetadataObjectsDelegate:self queue:v6];

    v13 = [(AXMTVideoCapturer *)self _captureDevice];
    v32 = 0;
    v14 = [v13 lockForConfiguration:&v32];
    v15 = v32;

    if (v14)
    {
      v16 = [(AXMTVideoCapturer *)self _captureDevice];
      [(AXMTVideoCapturer *)self _configureCaptureDevice:v16];
    }

    else
    {
      v16 = AXSSLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001D688();
      }
    }

    v17 = AXSSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D708(self);
    }

    v18 = [(AXMTVideoCapturer *)self _captureDevice];
    v19 = v18;
    if (v18)
    {
      [v18 activeVideoMaxFrameDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (Seconds > 0.0)
    {
      v21 = AXSSLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v25 = [(AXMTVideoCapturer *)self _captureDevice];
        v31 = v25;
        if (v25)
        {
          [v25 activeVideoMinFrameDuration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v26 = CMTimeCopyDescription(kCFAllocatorDefault, &time);
        v30 = v26;
        v27 = [(AXMTVideoCapturer *)self _captureDevice];
        v28 = v27;
        if (v27)
        {
          [v27 activeVideoMaxFrameDuration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v29 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 136315650;
        *(&time.value + 4) = "[AXMTVideoCapturer _configureCaptureSession]";
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = v26;
        HIWORD(time.epoch) = 2048;
        v35 = 1.0 / v29;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: final minFrameDuration and maxFrameDuration: %@ (FPS: %f)", &time, 0x20u);
      }
    }

    [v7 commitConfiguration];
    if (v9 == 3)
    {
      v22 = [AVCaptureDataOutputSynchronizer alloc];
      v23 = [v7 outputs];
      v24 = [v22 initWithDataOutputs:v23];

      [v24 setDelegate:self queue:v6];
      [(AXMTVideoCapturer *)self set_outputSynchronizer:v24];
    }

    goto LABEL_27;
  }

  v11 = AXSSLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001D60C();
  }

LABEL_28:
}

- (void)_configureVideoDataOutputForCaptureSession:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v14 = kCVPixelBufferPixelFormatTypeKey;
  v6 = [NSNumber numberWithUnsignedInt:[(AXMTVideoCapturer *)self pixelFormatType]];
  v15 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  [v5 setVideoSettings:v7];
  [v5 setAlwaysDiscardsLateVideoFrames:1];
  v8 = dispatch_queue_create("com.apple.accessibility.AXMTVideoCapturer.videoDataOutput", 0);
  [v5 setSampleBufferDelegate:self queue:v8];
  [(AXMTVideoCapturer *)self set_videoDataOutput:v5];
  if ([v4 canAddOutput:v5])
  {
    [v4 addOutput:v5];
    v9 = [(AXMTVideoCapturer *)self _videoDataOutput];
    v10 = [v9 connectionWithMediaType:AVMediaTypeVideo];

    if (v10)
    {
      v11 = [v10 isCameraIntrinsicMatrixDeliverySupported];
      v12 = AXSSLogForCategory();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          sub_10001D868();
        }

        [v10 setCameraIntrinsicMatrixDeliveryEnabled:1];
      }

      else
      {
        if (v13)
        {
          sub_10001D834();
        }
      }

      if ([v10 isVideoMirroringSupported])
      {
        [v10 setVideoMirrored:0];
      }

      if ([v10 isVideoRetainedBufferCountHintSupported])
      {
        [v10 setVideoRetainedBufferCountHint:8];
      }
    }
  }

  else
  {
    v10 = AXSSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001D7B8();
    }
  }
}

- (void)_configureMetadataOutputWithObjectType:(id)a3 forCaptureSession:(id)a4 addFaceTracking:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  [(AXMTVideoCapturer *)self set_metadataOutput:v10];
  if ([v9 canAddOutput:v10])
  {
    [v9 addOutput:v10];
    if (v5)
    {
      if ([v10 isFaceTrackingSupported])
      {
        [v10 setFaceTrackingMetadataObjectTypesAvailable:1];
        [v10 setFaceTrackingMaxFaces:1];
        [v10 setFaceTrackingUsesFaceRecognition:AXMTFaceKitUseRecognition];
        LODWORD(v11) = 1069547520;
        [v10 setFaceTrackingNetworkFailureThresholdMultiplier:v11];
      }

      else
      {
        v12 = AXSSLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10001D89C(v12, v13, v14, v15, v16, v17, v18, v19);
        }
      }
    }

    v20 = [v10 availableMetadataObjectTypes];
    v21 = [v20 containsObject:v8];

    if (v21)
    {
      v24 = v8;
      v22 = [NSArray arrayWithObjects:&v24 count:1];
      [v10 setMetadataObjectTypes:v22];
    }

    else
    {
      v22 = AXSSLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001D914(v8, v10, v22);
      }
    }
  }

  v23 = AXSSLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D9D8(v10);
  }
}

- (void)_avCaptureSessionDidStopRunningNotification:(id)a3
{
  v3 = a3;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 object];
    v6 = [v3 userInfo];
    v7 = 136315650;
    v8 = "[AXMTVideoCapturer _avCaptureSessionDidStopRunningNotification:]";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: notification.object: %@, userInfo: %@", &v7, 0x20u);
  }
}

- (void)_avCaptureSessionRuntimeErrorNotification:(id)a3
{
  v3 = a3;
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001DA70(v3, v4);
  }
}

- (void)_avCaptureSessionWasInterruptedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
    v7 = [v6 integerValue];

    v8 = v7 == 3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionSystemPressureStateKey];
  v10 = AXSSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v19 = [v4 objectForKeyedSubscript:AVCaptureSessionInterruptionReasonKey];
    v20 = 136315650;
    v21 = "[AXMTVideoCapturer _avCaptureSessionWasInterruptedNotification:]";
    v22 = 2048;
    v23 = [v19 integerValue];
    v24 = 2112;
    v25 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: sessionInterruptionReason: %ld, systemPressureState: %@", &v20, 0x20u);
  }

  if (v8)
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  v12 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:v11 userInfo:v4];
  v13 = [v4 objectForKeyedSubscript:AVCaptureSessionCameraStolenInterruptorKey];
  if (([v13 isEqualToString:@"com.apple.biometrickitd"] & v8) == 1 && (-[AXMTVideoCapturer _delayCameraStolenErrorTimer](self, "_delayCameraStolenErrorTimer"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isValid"), v14, (v15 & 1) == 0))
  {
    [(AXMTVideoCapturer *)self set_lastTimeFaceIDStoleCamera:mach_absolute_time()];
    v16 = AXSSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[AXMTVideoCapturer _avCaptureSessionWasInterruptedNotification:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: starting delay timer for camera stolen error", &v20, 0xCu);
    }

    v17 = [(AXMTVideoCapturer *)self _delayCameraStolenErrorTimer];
    [v17 invalidate];

    v18 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timerFiredForDelayedCameraStolen:" selector:v12 userInfo:0 repeats:2.0];
    [(AXMTVideoCapturer *)self set_delayCameraStolenErrorTimer:v18];
  }

  else
  {
    [(AXMTVideoCapturer *)self _informDelegateOfError:v12];
  }
}

- (void)_informDelegateOfError:(id)a3
{
  v4 = a3;
  [(AXMTVideoCapturer *)self delegate];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CD3C;
  v8 = block[3] = &unk_100049008;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_timerFiredForDelayedCameraStolen:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AXMTVideoCapturer _timerFiredForDelayedCameraStolen:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  v6 = [v4 userInfo];

  [(AXMTVideoCapturer *)self _informDelegateOfError:v6];
}

- (AXMTVideoCapturerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end