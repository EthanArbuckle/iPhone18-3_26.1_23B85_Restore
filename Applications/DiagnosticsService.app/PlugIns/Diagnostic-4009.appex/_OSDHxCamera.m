@interface _OSDHxCamera
- (BOOL)_startStreaming:(id *)a3;
- (BOOL)getDeviceAndStreams:(id *)a3;
- (BOOL)setFrameRate:(id)a3 error:(id *)a4;
- (BOOL)setMinimumFrameRate:(id)a3 error:(id *)a4;
- (BOOL)startStreamingWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)stopStreaming:(id *)a3;
- (_OSDHxCamera)initWithCaptureDevice:(id)a3 cameraSource:(unint64_t)a4 error:(id *)a5;
- (id)_getStreamErrorFor:(__CFString *)a3 error:(id *)a4;
- (id)frameCount;
- (id)ispVersion;
- (id)name:(id *)a3;
- (void)_showFrameOnPreviewLayer:(__CVBuffer *)a3;
- (void)doneWithDeviceAndStreams;
- (void)setPreviewLayer:(id)a3;
@end

@implementation _OSDHxCamera

- (_OSDHxCamera)initWithCaptureDevice:(id)a3 cameraSource:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = _OSDHxCamera;
  v10 = [(_OSDHxCamera *)&v16 init];
  v11 = v10;
  if (v10)
  {
    if (!v9)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [OSDError setError:a5 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Cannot init with a nil OSDCaptureDevice (%@)!", v14, 0];

      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v10->_captureDevice, a3);
    v11->_source = a4;
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (BOOL)getDeviceAndStreams:(id *)a3
{
  v5 = [(_OSDHxCamera *)self captureDevice];
  v6 = [v5 getDeviceAndStreams:a3];

  if (v6)
  {
    v7 = [(_OSDHxCamera *)self source];
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v8 = [(_OSDHxCamera *)self captureDevice];
        v9 = v8;
        v10 = &kFigCapturePortType_BackFacingCamera;
        goto LABEL_13;
      }

      if (v7 == 2)
      {
        v8 = [(_OSDHxCamera *)self captureDevice];
        v9 = v8;
        v10 = &kFigCapturePortType_FrontFacingCamera;
        goto LABEL_13;
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          v8 = [(_OSDHxCamera *)self captureDevice];
          v9 = v8;
          v10 = &kFigCapturePortType_BackFacingTelephotoCamera;
          goto LABEL_13;
        case 4:
          v8 = [(_OSDHxCamera *)self captureDevice];
          v9 = v8;
          v10 = &kFigCapturePortType_BackFacingSuperWideCamera;
          goto LABEL_13;
        case 5:
          v8 = [(_OSDHxCamera *)self captureDevice];
          v9 = v8;
          v10 = &kFigCapturePortType_FrontFacingSuperWideCamera;
LABEL_13:
          v11 = [v8 captureStreamForPortType:*v10 error:a3];
          [(_OSDHxCamera *)self setCaptureStream:v11];

          goto LABEL_14;
      }
    }

    [OSDError setError:a3 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Cannot get capture stream for source %lu", self, [(_OSDHxCamera *)self source]];
    [(_OSDHxCamera *)self setCaptureStream:0];
  }

LABEL_14:
  v12 = [(_OSDHxCamera *)self captureStream];

  if (v12)
  {
    [(_OSDHxCamera *)self setIsActive:1];
  }

  return v12 != 0;
}

- (void)doneWithDeviceAndStreams
{
  v3 = [(_OSDHxCamera *)self captureDevice];
  [v3 doneWithDeviceAndStreams];

  [(_OSDHxCamera *)self setCaptureStream:0];

  [(_OSDHxCamera *)self setIsActive:0];
}

- (id)ispVersion
{
  v2 = [(_OSDHxCamera *)self captureDevice];
  v3 = [v2 ispVersion];

  return v3;
}

- (id)name:(id *)a3
{
  v4 = [(_OSDHxCamera *)self captureStream];
  v5 = [v4 name:a3];

  return v5;
}

- (id)frameCount
{
  v2 = [(_OSDHxCamera *)self _frameCounter];

  return [NSNumber numberWithInt:v2];
}

- (BOOL)startStreamingWithOptions:(unint64_t)a3 error:(id *)a4
{
  v6 = self;
  objc_sync_enter(v6);
  [(_OSDHxCamera *)v6 setStreamingOptions:a3];
  if ((a3 & 1) != 0 && ![(_OSDHxCamera *)v6 _enableMotionDataMetadata:1 error:a4])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(_OSDHxCamera *)v6 _startStreaming:a4];
  }

  objc_sync_exit(v6);

  return v7;
}

- (BOOL)stopStreaming:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(_OSDHxCamera *)v4 captureStream];
  v6 = [v5 stop:a3];

  if (v6)
  {
    [(_OSDHxCamera *)v4 setIsStreaming:0];
  }

  objc_sync_exit(v4);

  return v6;
}

- (void)setPreviewLayer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_previewLayer == v4)
    {
      goto LABEL_6;
    }

    v8 = v4;
    [(CALayer *)v4 frame];
    [(CALayer *)v8 frame];
    self->__imageQueue = CAImageQueueCreate();
    +[CATransaction begin];
    [(CALayer *)v8 setContents:self->__imageQueue];
    +[CATransaction commit];
    v5 = v8;
    previewLayer = self->_previewLayer;
    self->_previewLayer = v5;
  }

  else
  {
    v8 = 0;
    imageQueue = self->__imageQueue;
    CAImageQueueInvalidate();
    CFRelease(self->__imageQueue);
    self->__imageQueue = 0;
    previewLayer = self->_previewLayer;
    self->_previewLayer = 0;
  }

  v4 = v8;
LABEL_6:
}

- (BOOL)setFrameRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_OSDHxCamera *)self captureStream];
  v8 = [v7 setProperty:kFigCaptureStreamProperty_MinimumFrameRate number:v6 error:a4];

  v9 = [(_OSDHxCamera *)self captureStream];
  LOBYTE(a4) = [v9 setProperty:kFigCaptureStreamProperty_MaximumFrameRate number:v6 error:a4];

  return v8 & a4;
}

- (BOOL)setMinimumFrameRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_OSDHxCamera *)self captureStream];
  LOBYTE(a4) = [v7 setProperty:kFigCaptureStreamProperty_MinimumFrameRate number:v6 error:a4];

  return a4;
}

- (BOOL)_startStreaming:(id *)a3
{
  v5 = [(_OSDHxCamera *)self captureStream];
  v6 = [v5 start:a3];

  if (v6)
  {
    [(_OSDHxCamera *)self setIsStreaming:1];
    [(_OSDHxCamera *)self set_frameCounter:0];
  }

  else
  {
    [(_OSDHxCamera *)self setIsStreaming:0];
  }

  return v6;
}

- (void)_showFrameOnPreviewLayer:(__CVBuffer *)a3
{
  CVPixelBufferGetIOSurface(a3);
  [(_OSDHxCamera *)self _imageQueue];
  v4 = CAImageQueueRegisterIOSurfaceBuffer();
  [(_OSDHxCamera *)self _imageQueue];
  CAImageQueueCollect();
  v5 = [(_OSDHxCamera *)self _imageQueue];
  v6.n128_f64[0] = CACurrentMediaTime();

  _CAImageQueueInsertImage(v5, 3, v4, 1, 0, 0, v6);
}

- (id)_getStreamErrorFor:(__CFString *)a3 error:(id *)a4
{
  v6 = [(_OSDHxCamera *)self captureStream];
  v7 = [v6 copyProperty:kFigCaptureStreamProperty_ErrorCounters error:a4];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:a3];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end