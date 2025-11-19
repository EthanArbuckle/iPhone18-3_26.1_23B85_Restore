@interface ETVideoController
- (ETVideoController)initWithMessageIdentifier:(id)a3;
- (ETVideoControllerDelegate)delegate;
- (double)currentFrameIntervalSinceFirstFrame;
- (double)timeSinceStartOfPreview;
- (id)_urlWithFormat:(id)a3;
- (id)_videoCaptureDeviceAtPosition:(int64_t)a3;
- (void)_addCaptureSessionObservers;
- (void)_createWriter;
- (void)_deleteAssetWithFormat:(id)a3;
- (void)_didReceiveCaptureSessionErrorNotification:(id)a3;
- (void)_previewInterruptedNotification:(id)a3;
- (void)_previewStartedNotification:(id)a3;
- (void)_setVideoState:(unint64_t)a3;
- (void)_toggleCameraToPosition:(int64_t)a3;
- (void)_updatePreviewOrientationWithSize:(CGSize)a3;
- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingPhotoSampleBuffer:(opaqueCMSampleBuffer *)a4 previewPhotoSampleBuffer:(opaqueCMSampleBuffer *)a5 resolvedSettings:(id)a6 bracketSettings:(id)a7 error:(id)a8;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)dealloc;
- (void)deleteWrittenAssets;
- (void)finishRecording;
- (void)startPreview;
- (void)startRecording;
- (void)stopPreview;
- (void)toggleCamera;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)writePhotoDataWithCompletion:(id)a3;
@end

@implementation ETVideoController

- (ETVideoController)initWithMessageIdentifier:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = ETVideoController;
  v6 = [(ETVideoController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    [(ETVideoController *)v6 _setVideoState:0];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.ET.VideoPreviewQueue", v8);
    previewQueue = v7->_previewQueue;
    v7->_previewQueue = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.ET.VideoWriterQueue", v11);
    writerQueue = v7->_writerQueue;
    v7->_writerQueue = v12;

    objc_storeStrong(&v7->_fileUUID, a3);
    v14 = [(ETVideoController *)v7 _urlWithFormat:@"DigitalTouch-%@.m4v"];
    fileURL = v7->_fileURL;
    v7->_fileURL = v14;

    v16 = [(ETVideoController *)v7 view];
    [v16 setUserInteractionEnabled:0];

    v17 = v7;
  }

  return v7;
}

- (id)_urlWithFormat:(id)a3
{
  v3 = [NSString stringWithValidatedFormat:a3 validFormatSpecifiers:@"%@" error:0, self->_fileUUID];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];
  v6 = [NSURL fileURLWithPath:v5];

  return v6;
}

- (void)_didReceiveCaptureSessionErrorNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVCaptureSessionErrorKey];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Received capture session error notification: %@, with error: %@", &v9, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained videoControllerDidInterruptPreview:self withInterruptionReason:0];
}

- (void)_createWriter
{
  v3 = [AVAssetWriter alloc];
  fileURL = self->_fileURL;
  v19 = 0;
  v5 = [v3 initWithURL:fileURL fileType:AVFileTypeAppleM4V error:&v19];
  v6 = v19;
  writer = self->_writer;
  self->_writer = v5;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Failed to initialize media writer: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v23[0] = AVVideoCodecKey;
    v23[1] = AVVideoWidthKey;
    v24[0] = AVVideoCodecH264;
    v24[1] = &off_25638;
    v23[2] = AVVideoHeightKey;
    v23[3] = AVVideoScalingModeKey;
    v24[2] = &off_25650;
    v24[3] = AVVideoScalingModeResizeAspectFill;
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v10 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeVideo outputSettings:v9];
    videoWriterInput = self->_videoWriterInput;
    self->_videoWriterInput = v10;

    [(AVAssetWriterInput *)self->_videoWriterInput setExpectsMediaDataInRealTime:1];
    memset(&buf, 0, sizeof(buf));
    if ([(AVCaptureDevice *)self->_videoDevice position]== &dword_0 + 2)
    {
      CGAffineTransformMakeScale(&buf, -1.0, 1.0);
    }

    else
    {
      v12 = *&CGAffineTransformIdentity.c;
      *&buf.a = *&CGAffineTransformIdentity.a;
      *&buf.c = v12;
      *&buf.tx = *&CGAffineTransformIdentity.tx;
    }

    v13 = self->_videoWriterInput;
    v18 = buf;
    [(AVAssetWriterInput *)v13 setTransform:&v18];
    [(AVAssetWriter *)self->_writer addInput:self->_videoWriterInput];
    memset(&v18.a + 4, 0, 28);
    LODWORD(v18.a) = 6619138;
    v20[0] = AVFormatIDKey;
    v20[1] = AVNumberOfChannelsKey;
    v21[0] = &off_25668;
    v21[1] = &off_25680;
    v21[2] = &off_256C8;
    v20[2] = AVSampleRateKey;
    v20[3] = AVChannelLayoutKey;
    v14 = [NSData dataWithBytes:&v18 length:32];
    v21[3] = v14;
    v20[4] = AVEncoderBitRateKey;
    v21[4] = &off_25698;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

    v16 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeAudio outputSettings:v15];
    audioWriterInput = self->_audioWriterInput;
    self->_audioWriterInput = v16;

    [(AVAssetWriterInput *)self->_audioWriterInput setExpectsMediaDataInRealTime:1];
    [(AVAssetWriter *)self->_writer addInput:self->_audioWriterInput];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ETVideoController;
  [(ETVideoController *)&v4 dealloc];
}

- (void)_previewStartedNotification:(id)a3
{
  time1 = self->_writeStartTime;
  v4 = kCMTimeZero;
  if (!CMTimeCompare(&time1, &v4))
  {
    CMClockGetTime(&time1, [(AVCaptureSession *)self->_captureSession masterClock]);
    self->_captureSessionStartTime = time1;
  }
}

- (void)_previewInterruptedNotification:(id)a3
{
  if (self->_videoState - 1 <= 1)
  {
    v5 = [a3 userInfo];
    v7 = [v5 objectForKey:AVCaptureSessionInterruptionReasonKey];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained videoControllerDidInterruptPreview:self withInterruptionReason:{objc_msgSend(v7, "intValue")}];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = ETVideoController;
  [(ETVideoController *)&v12 viewDidLoad];
  v3 = [(ETVideoController *)self view];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];
  v6 = objc_opt_new();
  captureSession = self->_captureSession;
  self->_captureSession = v6;

  [(ETVideoController *)self _addCaptureSessionObservers];
  v8 = [AVCaptureVideoPreviewLayer layerWithSession:self->_captureSession];
  previewLayer = self->_previewLayer;
  self->_previewLayer = v8;

  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  previewQueue = self->_previewQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AF54;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(previewQueue, block);
}

- (void)_addCaptureSessionObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_previewStartedNotification:" name:AVCaptureSessionDidStartRunningNotification object:self->_captureSession];
  [v3 addObserver:self selector:"_previewInterruptedNotification:" name:AVCaptureSessionWasInterruptedNotification object:self->_captureSession];
  [v3 addObserver:self selector:"_didReceiveCaptureSessionErrorNotification:" name:AVCaptureSessionRuntimeErrorNotification object:self->_captureSession];
}

- (void)_updatePreviewOrientationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 statusBarOrientation];

  v8 = 1;
  if (v7 == (&dword_0 + 3))
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  if (v7 == &dword_4)
  {
    v9 = 4;
  }

  v10 = 3;
  if (width <= height)
  {
    v10 = 1;
  }

  if (v7 == (&dword_0 + 2))
  {
    v8 = 2;
  }

  if (!v7)
  {
    v8 = v10;
  }

  if (v7 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v14 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:AVMediaTypeVideo];
  [v14 setVideoMirrored:{-[AVCaptureDevice position](self->_videoDevice, "position") == &dword_0 + 2}];
  [v14 setVideoOrientation:v11];
  v12 = [(AVCaptureVideoDataOutput *)self->_videoDataOutput connectionWithMediaType:AVMediaTypeVideo];
  [v12 setVideoOrientation:v11];

  v13 = [(AVCaptureVideoPreviewLayer *)self->_previewLayer connection];
  [v13 setVideoOrientation:v11];
}

- (id)_videoCaptureDeviceAtPosition:(int64_t)a3
{
  v4 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInDualCamera mediaType:AVMediaTypeVideo position:a3];
  if (!v4)
  {
    v4 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:a3];
  }

  return v4;
}

- (void)_toggleCameraToPosition:(int64_t)a3
{
  writerQueue = self->_writerQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B57C;
  v4[3] = &unk_24948;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(writerQueue, v4);
}

- (void)toggleCamera
{
  previewQueue = self->_previewQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BA38;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(previewQueue, block);
}

- (void)_setVideoState:(unint64_t)a3
{
  if (self->_videoState == a3)
  {
    return;
  }

  self->_videoState = a3;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained videoControllerDidStartPreview:self];
      }

      else
      {
        if (a3 != 2)
        {
          return;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained videoControllerDidStartRecording:self];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained videoControllerDidStopPreview:self];
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 videoControllerWillCancelRecording:self];

        writerQueue = self->_writerQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_BD3C;
        block[3] = &unk_24858;
        block[4] = self;
        v6 = block;
      }

      else
      {
        v4 = objc_loadWeakRetained(&self->_delegate);
        [v4 videoControllerWillBeginPhotoCapture:self];

        writerQueue = self->_previewQueue;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_BE30;
        v12[3] = &unk_24858;
        v12[4] = self;
        v6 = v12;
      }

      dispatch_async(writerQueue, v6);
      return;
    }

    if (a3 == 5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained videoControllerDidEndPhotoCapture:self photoImage:self->_photoImage];
    }

    else
    {
      if (a3 != 6)
      {
        return;
      }

      if ([(AVAssetWriter *)self->_writer status]== &dword_0 + 3)
      {
        fileURL = 0;
      }

      else
      {
        fileURL = self->_fileURL;
      }

      v9 = fileURL;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [(AVAssetWriter *)self->_writer error];
      [WeakRetained videoControllerDidEndRecording:self mediaURL:v9 withError:v10];
    }
  }
}

- (void)startPreview
{
  previewQueue = self->_previewQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C060;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(previewQueue, block);
}

- (void)startRecording
{
  inCompletionBlock[0] = _NSConcreteStackBlock;
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = sub_C1E0;
  inCompletionBlock[3] = &unk_24858;
  inCompletionBlock[4] = self;
  AudioServicesPlaySystemSoundWithCompletion(0x45Du, inCompletionBlock);
}

- (void)_deleteAssetWithFormat:(id)a3
{
  v4 = a3;
  v5 = [(ETVideoController *)self _urlWithFormat:v4];
  v6 = +[NSFileManager defaultManager];
  v10 = 0;
  v7 = [v6 removeItemAtURL:v5 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Couldn't delete asset at URL: %@ with error: %@", buf, 0x16u);
    }
  }
}

- (void)deleteWrittenAssets
{
  writerQueue = self->_writerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C4A4;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

- (void)finishRecording
{
  writerQueue = self->_writerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C574;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = ETVideoController;
  [(ETVideoController *)&v5 viewWillLayoutSubviews];
  previewLayer = self->_previewLayer;
  v4 = [(ETVideoController *)self view];
  [v4 bounds];
  [(AVCaptureVideoPreviewLayer *)previewLayer setFrame:?];
}

- (void)stopPreview
{
  writerQueue = self->_writerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_CA94;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(writerQueue, block);
  previewQueue = self->_previewQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CAA8;
  v5[3] = &unk_24858;
  v5[4] = self;
  dispatch_async(previewQueue, v5);
}

- (double)currentFrameIntervalSinceFirstFrame
{
  p_writeStartTime = &self->_writeStartTime;
  time1 = self->_writeStartTime;
  time2 = kCMTimeZero;
  if (!CMTimeCompare(&time1, &time2))
  {
    return 0.0;
  }

  CMClockGetTime(&time2, [(AVCaptureSession *)self->_captureSession masterClock]);
  v5 = *p_writeStartTime;
  CMTimeSubtract(&time1, &time2, &v5);
  return CMTimeGetSeconds(&time1);
}

- (double)timeSinceStartOfPreview
{
  p_captureSessionStartTime = &self->_captureSessionStartTime;
  time1 = self->_captureSessionStartTime;
  time2 = kCMTimeZero;
  if (!CMTimeCompare(&time1, &time2))
  {
    return 0.0;
  }

  CMClockGetTime(&time2, [(AVCaptureSession *)self->_captureSession masterClock]);
  v5 = *p_captureSessionStartTime;
  CMTimeSubtract(&time1, &time2, &v5);
  return CMTimeGetSeconds(&time1);
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = a3;
  if (self->_canWrite)
  {
    p_writeStartTime = &self->_writeStartTime;
    time1 = self->_writeStartTime;
    time2 = kCMTimeZero;
    v9 = CMTimeCompare(&time1, &time2);
    v10 = v9;
    if (self->_videoDataOutput == v7)
    {
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetPresentationTimeStamp(&time1, a4);
      if (!v10)
      {
        v11 = *&time1.value;
        *&p_writeStartTime->value = *&time1.value;
        epoch = time1.epoch;
        self->_writeStartTime.epoch = time1.epoch;
        writer = self->_writer;
        *&time2.value = v11;
        time2.epoch = epoch;
        [(AVAssetWriter *)writer startSessionAtSourceTime:&time2];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_CED4;
        block[3] = &unk_24858;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }

      if ([(AVAssetWriterInput *)self->_videoWriterInput isReadyForMoreMediaData])
      {
        [(AVAssetWriterInput *)self->_videoWriterInput appendSampleBuffer:a4];
      }

      lhs = time1;
      *&v14.value = *&p_writeStartTime->value;
      v14.epoch = self->_writeStartTime.epoch;
      CMTimeSubtract(&time2, &lhs, &v14);
      if (CMTimeGetSeconds(&time2) >= 10.0)
      {
        [(ETVideoController *)self finishRecording];
      }
    }

    else if (v9 && self->_audioDataOutput == v7 && [(AVAssetWriterInput *)self->_audioWriterInput isReadyForMoreMediaData])
    {
      [(AVAssetWriterInput *)self->_audioWriterInput appendSampleBuffer:a4];
    }
  }
}

- (void)captureOutput:(id)a3 didFinishProcessingPhotoSampleBuffer:(opaqueCMSampleBuffer *)a4 previewPhotoSampleBuffer:(opaqueCMSampleBuffer *)a5 resolvedSettings:(id)a6 bracketSettings:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (self->_photoOutput == v14)
  {
    if (a4)
    {
      v18 = [AVCapturePhotoOutput JPEGPhotoDataRepresentationForJPEGSampleBuffer:a4 previewPhotoSampleBuffer:a5];
      photoData = self->_photoData;
      self->_photoData = v18;

      v20 = [[CIImage alloc] initWithCVPixelBuffer:CMSampleBufferGetImageBuffer(a5)];
      v21 = [UIImage imageWithCIImage:v20];
      photoImage = self->_photoImage;
      self->_photoImage = v21;

      CMSampleBufferGetPresentationTimeStamp(&v25, a4);
      self->_writeStartTime = v25;
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25.value) = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "didFinishProcessingPhoto called with nil photoSampleBuffer.", &v25, 2u);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D1D4;
    block[3] = &unk_24858;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  previewQueue = self->_previewQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D27C;
  block[3] = &unk_24858;
  block[4] = self;
  dispatch_async(previewQueue, block);
}

- (void)writePhotoDataWithCompletion:(id)a3
{
  v4 = a3;
  writerQueue = self->_writerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D374;
  v7[3] = &unk_24A50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(writerQueue, v7);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  writerQueue = self->_writerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D500;
  block[3] = &unk_24A78;
  block[4] = self;
  v6 = a3;
  dispatch_async(writerQueue, block);
}

- (ETVideoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end