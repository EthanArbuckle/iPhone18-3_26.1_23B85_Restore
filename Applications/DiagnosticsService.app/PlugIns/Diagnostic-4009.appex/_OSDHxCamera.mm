@interface _OSDHxCamera
- (BOOL)_startStreaming:(id *)streaming;
- (BOOL)getDeviceAndStreams:(id *)streams;
- (BOOL)setFrameRate:(id)rate error:(id *)error;
- (BOOL)setMinimumFrameRate:(id)rate error:(id *)error;
- (BOOL)startStreamingWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)stopStreaming:(id *)streaming;
- (_OSDHxCamera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error;
- (id)_getStreamErrorFor:(__CFString *)for error:(id *)error;
- (id)frameCount;
- (id)ispVersion;
- (id)name:(id *)name;
- (void)_showFrameOnPreviewLayer:(__CVBuffer *)layer;
- (void)doneWithDeviceAndStreams;
- (void)setPreviewLayer:(id)layer;
@end

@implementation _OSDHxCamera

- (_OSDHxCamera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = _OSDHxCamera;
  v10 = [(_OSDHxCamera *)&v16 init];
  v11 = v10;
  if (v10)
  {
    if (!deviceCopy)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Cannot init with a nil OSDCaptureDevice (%@)!", v14, 0];

      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v10->_captureDevice, device);
    v11->_source = source;
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (BOOL)getDeviceAndStreams:(id *)streams
{
  captureDevice = [(_OSDHxCamera *)self captureDevice];
  v6 = [captureDevice getDeviceAndStreams:streams];

  if (v6)
  {
    source = [(_OSDHxCamera *)self source];
    if (source <= 2)
    {
      if (source == 1)
      {
        captureDevice2 = [(_OSDHxCamera *)self captureDevice];
        v9 = captureDevice2;
        v10 = &kFigCapturePortType_BackFacingCamera;
        goto LABEL_13;
      }

      if (source == 2)
      {
        captureDevice2 = [(_OSDHxCamera *)self captureDevice];
        v9 = captureDevice2;
        v10 = &kFigCapturePortType_FrontFacingCamera;
        goto LABEL_13;
      }
    }

    else
    {
      switch(source)
      {
        case 3:
          captureDevice2 = [(_OSDHxCamera *)self captureDevice];
          v9 = captureDevice2;
          v10 = &kFigCapturePortType_BackFacingTelephotoCamera;
          goto LABEL_13;
        case 4:
          captureDevice2 = [(_OSDHxCamera *)self captureDevice];
          v9 = captureDevice2;
          v10 = &kFigCapturePortType_BackFacingSuperWideCamera;
          goto LABEL_13;
        case 5:
          captureDevice2 = [(_OSDHxCamera *)self captureDevice];
          v9 = captureDevice2;
          v10 = &kFigCapturePortType_FrontFacingSuperWideCamera;
LABEL_13:
          v11 = [captureDevice2 captureStreamForPortType:*v10 error:streams];
          [(_OSDHxCamera *)self setCaptureStream:v11];

          goto LABEL_14;
      }
    }

    [OSDError setError:streams withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Cannot get capture stream for source %lu", self, [(_OSDHxCamera *)self source]];
    [(_OSDHxCamera *)self setCaptureStream:0];
  }

LABEL_14:
  captureStream = [(_OSDHxCamera *)self captureStream];

  if (captureStream)
  {
    [(_OSDHxCamera *)self setIsActive:1];
  }

  return captureStream != 0;
}

- (void)doneWithDeviceAndStreams
{
  captureDevice = [(_OSDHxCamera *)self captureDevice];
  [captureDevice doneWithDeviceAndStreams];

  [(_OSDHxCamera *)self setCaptureStream:0];

  [(_OSDHxCamera *)self setIsActive:0];
}

- (id)ispVersion
{
  captureDevice = [(_OSDHxCamera *)self captureDevice];
  ispVersion = [captureDevice ispVersion];

  return ispVersion;
}

- (id)name:(id *)name
{
  captureStream = [(_OSDHxCamera *)self captureStream];
  v5 = [captureStream name:name];

  return v5;
}

- (id)frameCount
{
  _frameCounter = [(_OSDHxCamera *)self _frameCounter];

  return [NSNumber numberWithInt:_frameCounter];
}

- (BOOL)startStreamingWithOptions:(unint64_t)options error:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_OSDHxCamera *)selfCopy setStreamingOptions:options];
  if ((options & 1) != 0 && ![(_OSDHxCamera *)selfCopy _enableMotionDataMetadata:1 error:error])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(_OSDHxCamera *)selfCopy _startStreaming:error];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)stopStreaming:(id *)streaming
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  captureStream = [(_OSDHxCamera *)selfCopy captureStream];
  v6 = [captureStream stop:streaming];

  if (v6)
  {
    [(_OSDHxCamera *)selfCopy setIsStreaming:0];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setPreviewLayer:(id)layer
{
  layerCopy = layer;
  if (layerCopy)
  {
    if (self->_previewLayer == layerCopy)
    {
      goto LABEL_6;
    }

    v8 = layerCopy;
    [(CALayer *)layerCopy frame];
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

  layerCopy = v8;
LABEL_6:
}

- (BOOL)setFrameRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  captureStream = [(_OSDHxCamera *)self captureStream];
  v8 = [captureStream setProperty:kFigCaptureStreamProperty_MinimumFrameRate number:rateCopy error:error];

  captureStream2 = [(_OSDHxCamera *)self captureStream];
  LOBYTE(error) = [captureStream2 setProperty:kFigCaptureStreamProperty_MaximumFrameRate number:rateCopy error:error];

  return v8 & error;
}

- (BOOL)setMinimumFrameRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  captureStream = [(_OSDHxCamera *)self captureStream];
  LOBYTE(error) = [captureStream setProperty:kFigCaptureStreamProperty_MinimumFrameRate number:rateCopy error:error];

  return error;
}

- (BOOL)_startStreaming:(id *)streaming
{
  captureStream = [(_OSDHxCamera *)self captureStream];
  v6 = [captureStream start:streaming];

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

- (void)_showFrameOnPreviewLayer:(__CVBuffer *)layer
{
  CVPixelBufferGetIOSurface(layer);
  [(_OSDHxCamera *)self _imageQueue];
  v4 = CAImageQueueRegisterIOSurfaceBuffer();
  [(_OSDHxCamera *)self _imageQueue];
  CAImageQueueCollect();
  _imageQueue = [(_OSDHxCamera *)self _imageQueue];
  v6.n128_f64[0] = CACurrentMediaTime();

  _CAImageQueueInsertImage(_imageQueue, 3, v4, 1, 0, 0, v6);
}

- (id)_getStreamErrorFor:(__CFString *)for error:(id *)error
{
  captureStream = [(_OSDHxCamera *)self captureStream];
  v7 = [captureStream copyProperty:kFigCaptureStreamProperty_ErrorCounters error:error];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:for];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end