@interface COSMagicCodeScanner
- (COSMagicCodeScanner)initWithFrame:(CGRect)frame;
- (COSMagicCodeScannerDelegate)delegate;
- (id)setupCameraSession;
- (void)_changeCameraConfiguration;
- (void)_selectCaptureDevice;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)closeWriter;
- (void)dealloc;
- (void)handleRuntimeError:(id)error;
- (void)layoutSubviews;
- (void)setCameraAttributes;
- (void)setupAssetWriterIfNeeded;
- (void)startRunning;
- (void)stopRunning;
- (void)toggleDebugUI:(id)i;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer ofType:(id)type;
@end

@implementation COSMagicCodeScanner

- (COSMagicCodeScanner)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = COSMagicCodeScanner;
  v3 = [(COSMagicCodeScanner *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"COSEnableInternalUI"];

    if (v5)
    {
      v6 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"toggleDebugUI:"];
      debugUIRecognizer = v3->_debugUIRecognizer;
      v3->_debugUIRecognizer = v6;

      [(UITapGestureRecognizer *)v3->_debugUIRecognizer setNumberOfTapsRequired:2];
      [(COSMagicCodeScanner *)v3 addGestureRecognizer:v3->_debugUIRecognizer];
    }

    v8 = +[UIScreen mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    MGGetBoolAnswer();
    v17 = +[NSUserDefaults standardUserDefaults];
    v3->_lensCollectorMode = [v17 BOOLForKey:@"LensCollector"];

    lensCollectorMode = v3->_lensCollectorMode;
    if (lensCollectorMode)
    {
      v3->_lensOnlyMode = 1;
    }

    else
    {
      v19 = +[NSUserDefaults standardUserDefaults];
      v3->_lensOnlyMode = [v19 BOOLForKey:@"LensMode"];

      LOBYTE(lensCollectorMode) = v3->_lensOnlyMode;
      if (!lensCollectorMode)
      {
        v20 = +[NSUserDefaults standardUserDefaults];
        v3->_showLensHUD = [v20 BOOLForKey:@"LensHUD"];

        if (!v3->_showLensHUD)
        {
LABEL_10:
          setupController = [UIApp setupController];
          visualDetector = [setupController visualDetector];
          detector = v3->_detector;
          v3->_detector = visualDetector;

          return v3;
        }

LABEL_9:
        v28.origin.x = v10;
        v28.origin.y = v12;
        v28.size.width = v14;
        v28.size.height = v16;
        v21 = [[COSWristDetectionHUD alloc] initWithFrame:0.0, 0.0, CGRectGetWidth(v28), 300.0];
        mlHUD = v3->_mlHUD;
        v3->_mlHUD = v21;

        [(COSWristDetectionHUD *)v3->_mlHUD setAlpha:0.5];
        [(COSMagicCodeScanner *)v3 addSubview:v3->_mlHUD];
        goto LABEL_10;
      }
    }

    v3->_showLensHUD = lensCollectorMode;
    goto LABEL_9;
  }

  return v3;
}

- (void)dealloc
{
  reader = self->_reader;
  if (reader)
  {
    HCImagePerspectiveReader::~HCImagePerspectiveReader(reader);
    operator delete();
  }

  pixelBufferPyramidArray = self->_pixelBufferPyramidArray;
  if (pixelBufferPyramidArray)
  {
    CFArrayRemoveAllValues(pixelBufferPyramidArray);
    CFRelease(self->_pixelBufferPyramidArray);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    CFRelease(pixelTransferSession);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = COSMagicCodeScanner;
  [(COSMagicCodeScanner *)&v7 dealloc];
}

- (void)toggleDebugUI:(id)i
{
  [(CALayer *)self->_progressBGLayer setHidden:[(CALayer *)self->_progressBGLayer isHidden]^ 1];
  v4 = [(CALayer *)self->_progressLayer isHidden]^ 1;
  progressLayer = self->_progressLayer;

  [(CALayer *)progressLayer setHidden:v4];
}

- (void)setupAssetWriterIfNeeded
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:31457280];
  v13[0] = AVVideoExpectedSourceFrameRateKey;
  v13[1] = AVVideoProfileLevelKey;
  v14[0] = &off_100281A98;
  v14[1] = AVVideoProfileLevelH264MainAutoLevel;
  v13[2] = AVVideoAverageBitRateKey;
  v13[3] = AVVideoMaxKeyFrameIntervalKey;
  v14[2] = v4;
  v14[3] = &off_100281AB0;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v3 addEntriesFromDictionary:v5];

  v12[0] = AVVideoCodecTypeH264;
  v11[0] = AVVideoCodecKey;
  v11[1] = AVVideoWidthKey;
  v6 = [NSNumber numberWithDouble:736.0];
  v12[1] = v6;
  v11[2] = AVVideoHeightKey;
  v7 = [NSNumber numberWithDouble:414.0];
  v11[3] = AVVideoCompressionPropertiesKey;
  v12[2] = v7;
  v12[3] = v3;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  if (!self->_assetWriterInput)
  {
    v9 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeVideo outputSettings:v8];
    assetWriterInput = self->_assetWriterInput;
    self->_assetWriterInput = v9;
  }
}

- (id)setupCameraSession
{
  if (self->_session)
  {
LABEL_2:
    self->_watermark = CFAbsoluteTimeGetCurrent();
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      activeFormat = [(AVCaptureDevice *)self->_device activeFormat];
      *buf = 138412290;
      v38 = activeFormat;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "activeFormat: %@", buf, 0xCu);
    }

    v5 = 0;
    self->_canUseCamera = 1;
    goto LABEL_31;
  }

  v6 = dispatch_queue_create("com.apple.Xceive", 0);
  queue = self->_queue;
  self->_queue = v6;

  v8 = objc_alloc_init(AVCaptureVideoDataOutput);
  if (sub_10002D16C())
  {
    self->_shouldCaptureMagicCodeScan = 1;
  }

  else
  {
    v9 = sub_10002D148();
    self->_shouldCaptureMagicCodeScan = v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v10 = +[COSInternalUserStudyAssetManager detailBundle];
  if (v10)
  {
    v11 = +[COSMLCaptureDisclosureController disclosureEffectivelyAccepted];

    if (v11)
    {
      v12 = pbb_setupflow_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "COSMagicCodeScanner: Is Internal Device...", buf, 2u);
      }

      if (!self->_assetWriter)
      {
        v13 = [AVAssetWriter alloc];
        v14 = +[COSInternalUserStudyAssetManager fileURLPath];
        v15 = [NSURL URLWithString:v14];
        v34 = 0;
        v16 = [v13 initWithURL:v15 fileType:AVFileTypeMPEG4 error:&v34];
        v17 = v34;
        assetWriter = self->_assetWriter;
        self->_assetWriter = v16;

        v19 = pbb_setupflow_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_assetWriter;
          *buf = 138412290;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "COSMagicCodeScanner: Created AssetWriter %@", buf, 0xCu);
        }

        if (!v17)
        {
          [(COSMagicCodeScanner *)self setupAssetWriterIfNeeded];
          [(AVAssetWriter *)self->_assetWriter addInput:self->_assetWriterInput];
        }
      }
    }
  }

LABEL_18:
  v21 = objc_alloc_init(AVCaptureSession);
  session = self->_session;
  self->_session = v21;

  [(AVCaptureSession *)self->_session beginConfiguration];
  [v8 setAlwaysDiscardsLateVideoFrames:1];
  v35 = kCVPixelBufferPixelFormatTypeKey;
  v36 = &off_100281AC8;
  v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v8 setVideoSettings:v23];

  [v8 setSampleBufferDelegate:self queue:self->_queue];
  [(COSMagicCodeScanner *)self _selectCaptureDevice];
  device = self->_device;
  if (!device)
  {
    v25 = pbb_setupflow_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100187C44();
    }

    v26 = 0;
    goto LABEL_26;
  }

  if ([(AVCaptureDevice *)device position]== 2)
  {
    v25 = pbb_setupflow_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100187C10();
    }

    v26 = 1;
LABEL_26:

    v5 = sub_1000696C0(v26);

    goto LABEL_31;
  }

  v27 = self->_device;
  v33 = 0;
  v28 = [AVCaptureDeviceInput deviceInputWithDevice:v27 error:&v33];
  v29 = v33;
  if (!v29)
  {
    [(AVCaptureSession *)self->_session addOutput:v8];
    [(AVCaptureSession *)self->_session addInput:v28];
    if ([(AVCaptureSession *)self->_session canSetSessionPreset:AVCaptureSessionPreset1920x1080])
    {
      v32 = AVCaptureSessionPreset1920x1080;
    }

    else
    {
      v32 = AVCaptureSessionPresetMedium;
    }

    [(AVCaptureSession *)self->_session setSessionPreset:v32];
    [(AVCaptureSession *)self->_session commitConfiguration];
    [(COSMagicCodeScanner *)self setCameraAttributes];

    goto LABEL_2;
  }

  v30 = pbb_setupflow_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_100187BDC();
  }

  v5 = sub_1000696C0(2uLL);

LABEL_31:

  return v5;
}

- (void)_selectCaptureDevice
{
  v3 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInUltraWideCamera mediaType:AVMediaTypeVideo position:1];
  v4 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  minimumFocusDistance = [v3 minimumFocusDistance];
  minimumFocusDistance2 = [v4 minimumFocusDistance];
  v7 = minimumFocusDistance2;
  if (v3)
  {
    v8 = (minimumFocusDistance - 1) >= 0x31;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && minimumFocusDistance < minimumFocusDistance2;
  device = self->_device;
  if (device)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    objc_storeStrong(&self->_device, v3);
    device = self->_device;
  }

  if (!device)
  {
    objc_storeStrong(&self->_device, v4);
  }

  v13 = pbb_setupflow_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136316418;
    v15 = "[COSMagicCodeScanner _selectCaptureDevice]";
    v16 = 2112;
    v17 = v3;
    v18 = 2048;
    v19 = minimumFocusDistance;
    v20 = 2112;
    v21 = v4;
    v22 = 2048;
    v23 = v7;
    v24 = 1024;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:\n ultraWideDevice: %@\n ultraWideMinimumFocusDistance: %ld\n defaultDevice: %@\n defaultMinimumFocusDistance: %ld\n useUltrawideMacroCamera: %{BOOL}d", &v14, 0x3Au);
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = COSMagicCodeScanner;
  [(COSMagicCodeScanner *)&v8 layoutSubviews];
  previewLayer = self->_previewLayer;
  layer = [(COSMagicCodeScanner *)self layer];
  [layer bounds];
  v6 = v5;
  layer2 = [(COSMagicCodeScanner *)self layer];
  [layer2 bounds];
  [(AVCaptureVideoPreviewLayer *)previewLayer setFrame:0.0, 0.0, v6];
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  connectionCopy = connection;
  if (!self->_isClosingCapture && self->_isScanningForCode)
  {
    detector = self->_detector;
    if (!detector)
    {
      setupController = [UIApp setupController];
      visualDetector = [setupController visualDetector];
      v11 = self->_detector;
      self->_detector = visualDetector;

      detector = self->_detector;
    }

    [(COSWristAttributeVisualDetector *)detector ingestSampleBuffer:buffer];
    v12 = +[NSUserDefaults standardUserDefaults];
    bufferCopy = buffer;
    v13 = [v12 BOOLForKey:@"LiveOnCollection"];

    if (self->_showLensHUD || ((self->_lensCollectorMode | v13) & 1) != 0)
    {
      computedConfidences = [(COSWristAttributeVisualDetector *)self->_detector computedConfidences];
      confidenceSummary = [(COSWristAttributeVisualDetector *)self->_detector confidenceSummary];
      v16 = confidenceSummary;
      if (((self->_lensCollectorMode | v13) & 1) != 0 && [confidenceSummary attribute] >= 5)
      {
        -[COSWristAttributeVisualDetector exportSample:withClassification:](self->_detector, "exportSample:withClassification:", bufferCopy, [v16 attribute]);
      }

      v17 = &_dispatch_main_q;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006B2B4;
      block[3] = &unk_100269910;
      block[4] = self;
      v18 = computedConfidences;
      v79 = v18;
      v19 = v16;
      v80 = v19;
      dispatch_async(&_dispatch_main_q, block);
    }

    if (!self->_isClosingCapture && self->_shouldCaptureMagicCodeScan && self->_hasBegunCapture && self->_missWmCount <= 7)
    {
      [(COSMagicCodeScanner *)self writeSampleBuffer:bufferCopy ofType:AVMediaTypeVideo];
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current < self->_nextFrameTime)
    {
      goto LABEL_94;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
    if (!CVPixelBufferIsPlanar(ImageBuffer))
    {
      v25 = pbb_setupflow_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100187D9C();
      }

      goto LABEL_94;
    }

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 1uLL);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(ImageBuffer, 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ImageBuffer, 1uLL);
    v23 = BytesPerRowOfPlane;
    if (self->_readerUVWidth != WidthOfPlane || self->_readerUVHeight != HeightOfPlane || self->_readerUVBytesPerRow != BytesPerRowOfPlane)
    {
      reader = self->_reader;
      if (reader)
      {
        HCImagePerspectiveReader::~HCImagePerspectiveReader(reader);
        operator delete();
      }

      self->_readerUVWidth = WidthOfPlane;
      self->_readerUVHeight = HeightOfPlane;
      self->_readerUVBytesPerRow = v23;
      operator new();
    }

    DecoderProgress = HCImagePerspectiveReader::GetDecoderProgress(self->_reader);
    if (self->_lastWmProgress > 0.0 && Current - self->_lastWmTime > 4.0)
    {
      v27 = pbb_setupflow_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(pixelBufferOut) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "4 second timeout elapsed; resetting", &pixelBufferOut, 2u);
      }

      self->_lastWmTime = Current;
      HCImagePerspectiveReader::Reset(self->_reader);
    }

    v77 = 0;
    pixelBufferPyramidArray = self->_pixelBufferPyramidArray;
    if (pixelBufferPyramidArray)
    {
      if (ImageBuffer && (pixelTransferSession = self->_pixelTransferSession) != 0)
      {
        if (CFArrayGetCount(self->_pixelBufferPyramidArray) >= 1)
        {
          v30 = 0;
          v31 = ImageBuffer;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(pixelBufferPyramidArray, v30);
            if (VTPixelTransferSessionTransferImage(pixelTransferSession, v31, ValueAtIndex))
            {
              break;
            }

            ++v30;
            v31 = ValueAtIndex;
          }

          while (CFArrayGetCount(pixelBufferPyramidArray) > v30);
        }
      }

      else
      {
        v33 = pbb_setupflow_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100187CF0();
        }
      }

      pixelBufferPyramidArray = CFArrayGetCount(self->_pixelBufferPyramidArray);
    }

    v34 = 0;
    v35 = ImageBuffer;
    do
    {
      v36 = v34;
      if (CVPixelBufferLockBaseAddress(v35, 1uLL))
      {
        v37 = 0;
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v35, 1uLL);
        v39 = CVPixelBufferGetBytesPerRowOfPlane(v35, 1uLL);
        v37 = HCImagePerspectiveReader::ProcessUVFrame(self->_reader, BaseAddressOfPlane, HeightOfPlane, WidthOfPlane, v39, &v77);
        CVPixelBufferUnlockBaseAddress(ImageBuffer, 1uLL);
      }

      v40 = self->_pixelBufferPyramidArray;
      if (v40)
      {
        v41 = pixelBufferPyramidArray > v36;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v35 = CFArrayGetValueAtIndex(v40, v36);
      }

      if (pixelBufferPyramidArray <= v36)
      {
        break;
      }

      if (v77)
      {
        break;
      }

      v34 = v36 + 1;
    }

    while (!v37);
    if (v37)
    {
      v42 = pbb_setupflow_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100187D24(v37, v42);
      }

LABEL_94:
      self->_lastFrameTime = Current;
      goto LABEL_95;
    }

    if (v77 == 1)
    {
      v43 = +[NSNotificationCenter defaultCenter];
      v44 = [NSNumber numberWithDouble:DecoderProgress * 100.0];
      [v43 postNotificationName:@"COSMagicCodeDidDecodeNotification" object:v44];

      self->_missWmCount = 0;
      v45 = HCImagePerspectiveReader::GetDecoderProgress(self->_reader);
      lastWmProgress = self->_lastWmProgress;
      if (!self->_isClosingCapture && self->_shouldCaptureMagicCodeScan && !self->_hasBegunCapture)
      {
        self->_hasBegunCapture = 1;
        v47 = pbb_setupflow_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(pixelBufferOut) = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Started Writing...", &pixelBufferOut, 2u);
        }

        [(COSMagicCodeScanner *)self writeSampleBuffer:bufferCopy ofType:AVMediaTypeVideo];
      }

      v48 = pbb_setupflow_log();
      v49 = (v45 - lastWmProgress);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = (Current - self->_lastFrameTime) * 1000.0;
        pixelBufferOut = 134219008;
        v51 = Current - self->_lastWmTime;
        pixelBufferOut_4 = v45 * 100.0;
        v83 = 2048;
        v84 = v49 * 100.0;
        v85 = 1024;
        v86 = v36;
        v87 = 2048;
        v88 = v50;
        v89 = 2048;
        v90 = v51 * 1000.0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Progress: %.2f%%  delta: %5.2f%%;  level: %d; frame %.2fms; wm %.2fms", &pixelBufferOut, 0x30u);
      }

      self->_lastWmProgress = v45;
      self->_lastWmTime = Current;
      if (v49 < 0.13)
      {
        goto LABEL_78;
      }

      v55 = Current + 0.09;
    }

    else
    {
      missWmCount = self->_missWmCount;
      self->_missWmCount = missWmCount + 1;
      if (missWmCount + 1 < 0x1F)
      {
LABEL_78:
        if ((self->_showLensHUD || self->_lensOnlyMode) && HCImagePerspectiveReader::IsPayloadReady(self->_reader))
        {
          self->_isScanningForCode = 0;
          v56 = &_dispatch_main_q;
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_10006B304;
          v76[3] = &unk_100269938;
          v76[4] = self;
          dispatch_async(&_dispatch_main_q, v76);

          v57 = dispatch_time(0, 6000000000);
          v75[0] = _NSConcreteStackBlock;
          v75[1] = 3221225472;
          v75[2] = sub_10006B31C;
          v75[3] = &unk_100269938;
          v75[4] = self;
          dispatch_after(v57, &_dispatch_main_q, v75);
        }

        v58 = MGGetBoolAnswer();
        if (!self->_lensOnlyMode && HCImagePerspectiveReader::IsPayloadReady(self->_reader))
        {
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10006B368;
          v73[3] = &unk_100269988;
          v73[4] = self;
          *&v73[5] = Current;
          v74 = v58;
          v59 = objc_retainBlock(v73);
          self->_isClosingCapture = 1;
          if (self->_assetWriter && self->_shouldCaptureMagicCodeScan && self->_hasBegunCapture && +[COSMLCaptureDisclosureController disclosureEffectivelyAccepted])
          {
            [(COSMagicCodeScanner *)self closeWriter];
            v60 = pbb_setupflow_log();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(pixelBufferOut) = 0;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Finish Writing With Completion", &pixelBufferOut, 2u);
            }

            assetWriter = self->_assetWriter;
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_10006B840;
            v71[3] = &unk_1002699B0;
            v72 = v59;
            [(AVAssetWriter *)assetWriter finishWritingWithCompletionHandler:v71];
          }

          else
          {
            (v59[2])(v59);
          }

          DecoderProgress = 100.0;
        }

        v62 = &_dispatch_main_q;
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_10006B924;
        v68[3] = &unk_1002699D8;
        v70 = v58;
        v68[4] = self;
        v69 = DecoderProgress;
        dispatch_async(&_dispatch_main_q, v68);

        goto LABEL_94;
      }

      v53 = CFAbsoluteTimeGetCurrent();
      v54 = (missWmCount - 29) * 0.033;
      if (v54 > 0.1)
      {
        v54 = 0.1;
      }

      v55 = v54 + v53;
    }

    self->_nextFrameTime = v55;
    goto LABEL_78;
  }

LABEL_95:
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer ofType:(id)type
{
  typeCopy = type;
  if (__PAIR64__(self->_hasBegunCapture, self->_shouldCaptureMagicCodeScan) == 0x100000001)
  {
    memset(&v14, 0, sizeof(v14));
    CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
    if ([(AVAssetWriter *)self->_assetWriter status]== AVAssetWriterStatusUnknown)
    {
      if ([(AVAssetWriter *)self->_assetWriter startWriting])
      {
        v7 = pbb_setupflow_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startWriting", &buf, 2u);
        }

        assetWriter = self->_assetWriter;
        buf = v14;
        [(AVAssetWriter *)assetWriter startSessionAtSourceTime:&buf];
      }

      else
      {
        v9 = pbb_setupflow_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100187E48();
        }
      }
    }

    if ([(AVAssetWriter *)self->_assetWriter status]!= 1)
    {
      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_assetWriter;
        v12 = [NSNumber numberWithInteger:[(AVAssetWriter *)v11 status]];
        error = [(AVAssetWriter *)self->_assetWriter error];
        LODWORD(buf.value) = 138412802;
        *(&buf.value + 4) = v11;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v12;
        HIWORD(buf.epoch) = 2112;
        v16 = error;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Writer %@ Status was %@ Error %@", &buf, 0x20u);
      }

      goto LABEL_18;
    }

    if (AVMediaTypeVideo == typeCopy && [(AVAssetWriterInput *)self->_assetWriterInput isReadyForMoreMediaData]&& ![(AVAssetWriterInput *)self->_assetWriterInput appendSampleBuffer:buffer])
    {
      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100187E7C();
      }

LABEL_18:
    }
  }
}

- (void)closeWriter
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSMagicCodeScanner closeWriter]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(AVAssetWriterInput *)self->_assetWriterInput markAsFinished];
}

- (void)_changeCameraConfiguration
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(COSMagicCodeScanner *)self setCameraAttributes];

  +[CATransaction commit];
}

- (void)setCameraAttributes
{
  v2 = self->_device;
  v4 = 0;
  [(AVCaptureDevice *)v2 lockForConfiguration:&v4];
  v3 = v4;
  if ([(AVCaptureDevice *)v2 isFocusModeSupported:2])
  {
    [(AVCaptureDevice *)v2 setFocusPointOfInterest:0.500999987, 0.500999987];
    [(AVCaptureDevice *)v2 setFocusMode:2];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(AVCaptureDevice *)v2 isAutoFocusRangeRestrictionSupported])
  {
    [(AVCaptureDevice *)v2 setAutoFocusRangeRestriction:1];
  }

  if ([(AVCaptureDevice *)v2 isWhiteBalanceModeSupported:2])
  {
    [(AVCaptureDevice *)v2 setWhiteBalanceMode:2];
  }

  if ([(AVCaptureDevice *)v2 isExposureModeSupported:2])
  {
    [(AVCaptureDevice *)v2 setExposurePointOfInterest:0.500999987, 0.500999987];
    [(AVCaptureDevice *)v2 setExposureMode:2];
  }

  [(AVCaptureDevice *)v2 unlockForConfiguration];
}

- (void)startRunning
{
  if (!self->_registeredForCaptureRunTimeErrorNotification)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"handleRuntimeError:" name:AVCaptureSessionRuntimeErrorNotification object:0];

    self->_registeredForCaptureRunTimeErrorNotification = 1;
  }

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[COSMagicCodeScanner startRunning]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  if (self->_canUseCamera)
  {
    if (!self->_previewLayer)
    {
      v5 = pbb_setupflow_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Magic code scanner: adding preview layer", &v15, 2u);
      }

      v6 = [AVCaptureVideoPreviewLayer layerWithSession:self->_session];
      previewLayer = self->_previewLayer;
      self->_previewLayer = v6;

      layer = [(COSMagicCodeScanner *)self layer];
      [layer insertSublayer:self->_previewLayer atIndex:0];

      v9 = self->_previewLayer;
      layer2 = [(COSMagicCodeScanner *)self layer];
      [layer2 bounds];
      v12 = v11;
      layer3 = [(COSMagicCodeScanner *)self layer];
      [layer3 bounds];
      [(AVCaptureVideoPreviewLayer *)v9 setFrame:0.0, 0.0, v12];

      [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    }

    [(COSMagicCodeScanner *)self _changeCameraConfiguration];
    [(AVCaptureSession *)self->_session startRunning];
    self->_isScanningForCode = 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  self->_lastPayloadTime = Current;
  self->_lastFrameTime = Current;
  self->_lastWmTime = Current;
  self->_nextFrameTime = 0.0;
  self->_lastWmProgress = 0.0;
  self->_missWmCount = 0;
}

- (void)stopRunning
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop Scanning", v5, 2u);
  }

  if (self->_canUseCamera)
  {
    [(AVCaptureSession *)self->_session stopRunning];
    self->_isScanningForCode = 0;
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVCaptureSessionRuntimeErrorNotification object:0];

  self->_registeredForCaptureRunTimeErrorNotification = 0;
}

- (void)handleRuntimeError:(id)error
{
  errorCopy = error;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      userInfo = [errorCopy userInfo];
      sub_100187EB0(userInfo, buf, v6);
    }
  }

  if (self->_isScanningForCode)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C4C0;
    block[3] = &unk_100269938;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100187F08();
    }
  }
}

- (COSMagicCodeScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end