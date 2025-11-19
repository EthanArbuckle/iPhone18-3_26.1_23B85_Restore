@interface OSDCamera
+ (BOOL)checkProtocol:(id)a3 obj:(id)a4 error:(id *)a5;
- (BOOL)_checkProtocol:(id)a3 error:(id *)a4;
- (BOOL)_checkProtocol:(id)a3 obj:(id)a4 error:(id *)a5;
- (BOOL)_checkSelector:(SEL)a3 error:(id *)a4;
- (BOOL)activate:(id *)a3;
- (BOOL)implementorActive:(id *)a3;
- (BOOL)isStreaming;
- (BOOL)setFormatIndex:(id)a3 error:(id *)a4;
- (BOOL)setFrameRate:(id)a3 error:(id *)a4;
- (BOOL)setMinimumFrameRate:(id)a3 error:(id *)a4;
- (BOOL)startStreamingWithOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)stopStreaming:(id *)a3;
- (OSDCamera)initWithCaptureDevice:(id)a3 cameraSource:(unint64_t)a4 error:(id *)a5;
- (id)errorCountForType:(unint64_t)a3 error:(id *)a4;
- (id)formatIndex:(id *)a3;
- (id)frameCount:(id *)a3;
- (id)name:(id *)a3;
- (id)supportedFormats:(id *)a3;
- (id)useMaxAvailableDataRate:(id *)a3;
- (unint64_t)streamingOptions:(id *)a3;
- (void)deactivate;
- (void)setFrameHandler:(id)a3;
- (void)setPreviewLayer:(id)a3;
@end

@implementation OSDCamera

+ (BOOL)checkProtocol:(id)a3 obj:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() conformsToProtocol:v8];

  if ((v9 & 1) == 0)
  {
    [OSDError setError:a5 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation.", objc_opt_class(), v7];
  }

  return v9;
}

- (OSDCamera)initWithCaptureDevice:(id)a3 cameraSource:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = OSDCamera;
  v9 = [(OSDCamera *)&v15 init];
  if (v9)
  {
    v10 = +[OSDCaptureDevice ispVersion];
    v11 = [v10 intValue];

    if (v11 >= 7)
    {
      v12 = [[_OSDH9Camera alloc] initWithCaptureDevice:v8 cameraSource:a4 error:a5];
      cameraImp = v9->_cameraImp;
      v9->_cameraImp = v12;
    }
  }

  return v9;
}

- (BOOL)activate:(id *)a3
{
  v4 = [(OSDCamera *)self cameraImp];
  LOBYTE(a3) = [v4 getDeviceAndStreams:a3];

  return a3;
}

- (void)setPreviewLayer:(id)a3
{
  v4 = a3;
  v5 = [(OSDCamera *)self cameraImp];
  [v5 setPreviewLayer:v4];
}

- (void)setFrameHandler:(id)a3
{
  v4 = a3;
  v5 = [(OSDCamera *)self cameraImp];
  [v5 setFrameHandler:v4];
}

- (void)deactivate
{
  v2 = [(OSDCamera *)self cameraImp];
  [v2 doneWithDeviceAndStreams];
}

- (id)name:(id *)a3
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    v5 = [(OSDCamera *)self cameraImp];
    v6 = [v5 name:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)startStreamingWithOptions:(unint64_t)a3 error:(id *)a4
{
  v7 = [(OSDCamera *)self implementorActive:a4];
  if (v7)
  {
    v8 = [(OSDCamera *)self cameraImp];
    v9 = [v8 startStreamingWithOptions:a3 error:a4];

    LOBYTE(v7) = v9;
  }

  return v7;
}

- (BOOL)stopStreaming:(id *)a3
{
  v5 = [(OSDCamera *)self implementorActive:?];
  if (v5)
  {
    v6 = [(OSDCamera *)self cameraImp];
    v7 = [v6 stopStreaming:a3];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)isStreaming
{
  v2 = [(OSDCamera *)self cameraImp];
  v3 = [v2 isStreaming];

  return v3;
}

- (unint64_t)streamingOptions:(id *)a3
{
  if (![(OSDCamera *)self implementorActive:a3])
  {
    return 0;
  }

  v4 = [(OSDCamera *)self cameraImp];
  v5 = [v4 streamingOptions];

  return v5;
}

- (id)frameCount:(id *)a3
{
  if ([(OSDCamera *)self implementorActive:a3])
  {
    v4 = [(OSDCamera *)self cameraImp];
    v5 = [v4 frameCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)errorCountForType:(unint64_t)a3 error:(id *)a4
{
  if ([(OSDCamera *)self implementorActive:a4])
  {
    v7 = [(OSDCamera *)self cameraImp];
    v8 = [v7 errorCountForType:a3 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setFrameRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(OSDCamera *)self implementorActive:a4])
  {
    v7 = [(OSDCamera *)self cameraImp];
    v8 = [v7 setFrameRate:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setMinimumFrameRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(OSDCamera *)self implementorActive:a4])
  {
    v7 = [(OSDCamera *)self cameraImp];
    v8 = [v7 setMinimumFrameRate:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setFormatIndex:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(OSDCamera *)self implementorActive:a4])
  {
    v7 = [(OSDCamera *)self cameraImp];
    v8 = [v7 setFormatIndex:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formatIndex:(id *)a3
{
  if ([(OSDCamera *)self implementorActive:a3])
  {
    v4 = [(OSDCamera *)self cameraImp];
    v5 = [v4 formatIndex];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)supportedFormats:(id *)a3
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    v5 = [(OSDCamera *)self cameraImp];
    v6 = [v5 supportedFormats:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)useMaxAvailableDataRate:(id *)a3
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    v5 = [(OSDCamera *)self cameraImp];
    v6 = [v5 useMaxAvailableDataRate:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)implementorActive:(id *)a3
{
  v5 = [(OSDCamera *)self cameraImp];
  objc_sync_enter(v5);
  v6 = [(OSDCamera *)self cameraImp];
  v7 = [v6 isActive];

  if ((v7 & 1) == 0)
  {
    [OSDError setError:a3 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Camera is not active!", self];
  }

  objc_sync_exit(v5);

  return v7;
}

- (BOOL)_checkProtocol:(id)a3 obj:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [objc_opt_class() conformsToProtocol:v7];

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = [(OSDCamera *)self cameraImp];
    [OSDError setError:a5 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation.", v9, v10];
  }

  return v8;
}

- (BOOL)_checkProtocol:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(OSDCamera *)self cameraImp];
  LOBYTE(a4) = [(OSDCamera *)self _checkProtocol:v6 obj:v7 error:a4];

  return a4;
}

- (BOOL)_checkSelector:(SEL)a3 error:(id *)a4
{
  v7 = [(OSDCamera *)self cameraImp];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = [(OSDCamera *)self cameraImp];
    v11 = NSStringFromSelector(a3);
    [OSDError setError:a4 withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation : '%@'.", v9, v10, v11];
  }

  return v8 & 1;
}

@end