@interface OSDCamera
+ (BOOL)checkProtocol:(id)protocol obj:(id)obj error:(id *)error;
- (BOOL)_checkProtocol:(id)protocol error:(id *)error;
- (BOOL)_checkProtocol:(id)protocol obj:(id)obj error:(id *)error;
- (BOOL)_checkSelector:(SEL)selector error:(id *)error;
- (BOOL)activate:(id *)activate;
- (BOOL)implementorActive:(id *)active;
- (BOOL)isStreaming;
- (BOOL)setFormatIndex:(id)index error:(id *)error;
- (BOOL)setFrameRate:(id)rate error:(id *)error;
- (BOOL)setMinimumFrameRate:(id)rate error:(id *)error;
- (BOOL)startStreamingWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)stopStreaming:(id *)streaming;
- (OSDCamera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error;
- (id)errorCountForType:(unint64_t)type error:(id *)error;
- (id)formatIndex:(id *)index;
- (id)frameCount:(id *)count;
- (id)name:(id *)name;
- (id)supportedFormats:(id *)formats;
- (id)useMaxAvailableDataRate:(id *)rate;
- (unint64_t)streamingOptions:(id *)options;
- (void)deactivate;
- (void)setFrameHandler:(id)handler;
- (void)setPreviewLayer:(id)layer;
@end

@implementation OSDCamera

+ (BOOL)checkProtocol:(id)protocol obj:(id)obj error:(id *)error
{
  objCopy = obj;
  protocolCopy = protocol;
  v9 = [objc_opt_class() conformsToProtocol:protocolCopy];

  if ((v9 & 1) == 0)
  {
    [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation.", objc_opt_class(), objCopy];
  }

  return v9;
}

- (OSDCamera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = OSDCamera;
  v9 = [(OSDCamera *)&v15 init];
  if (v9)
  {
    v10 = +[OSDCaptureDevice ispVersion];
    intValue = [v10 intValue];

    if (intValue >= 7)
    {
      v12 = [[_OSDH9Camera alloc] initWithCaptureDevice:deviceCopy cameraSource:source error:error];
      cameraImp = v9->_cameraImp;
      v9->_cameraImp = v12;
    }
  }

  return v9;
}

- (BOOL)activate:(id *)activate
{
  cameraImp = [(OSDCamera *)self cameraImp];
  LOBYTE(activate) = [cameraImp getDeviceAndStreams:activate];

  return activate;
}

- (void)setPreviewLayer:(id)layer
{
  layerCopy = layer;
  cameraImp = [(OSDCamera *)self cameraImp];
  [cameraImp setPreviewLayer:layerCopy];
}

- (void)setFrameHandler:(id)handler
{
  handlerCopy = handler;
  cameraImp = [(OSDCamera *)self cameraImp];
  [cameraImp setFrameHandler:handlerCopy];
}

- (void)deactivate
{
  cameraImp = [(OSDCamera *)self cameraImp];
  [cameraImp doneWithDeviceAndStreams];
}

- (id)name:(id *)name
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v6 = [cameraImp name:name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)startStreamingWithOptions:(unint64_t)options error:(id *)error
{
  v7 = [(OSDCamera *)self implementorActive:error];
  if (v7)
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v9 = [cameraImp startStreamingWithOptions:options error:error];

    LOBYTE(v7) = v9;
  }

  return v7;
}

- (BOOL)stopStreaming:(id *)streaming
{
  v5 = [(OSDCamera *)self implementorActive:?];
  if (v5)
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v7 = [cameraImp stopStreaming:streaming];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)isStreaming
{
  cameraImp = [(OSDCamera *)self cameraImp];
  isStreaming = [cameraImp isStreaming];

  return isStreaming;
}

- (unint64_t)streamingOptions:(id *)options
{
  if (![(OSDCamera *)self implementorActive:options])
  {
    return 0;
  }

  cameraImp = [(OSDCamera *)self cameraImp];
  streamingOptions = [cameraImp streamingOptions];

  return streamingOptions;
}

- (id)frameCount:(id *)count
{
  if ([(OSDCamera *)self implementorActive:count])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    frameCount = [cameraImp frameCount];
  }

  else
  {
    frameCount = 0;
  }

  return frameCount;
}

- (id)errorCountForType:(unint64_t)type error:(id *)error
{
  if ([(OSDCamera *)self implementorActive:error])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v8 = [cameraImp errorCountForType:type error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setFrameRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  if ([(OSDCamera *)self implementorActive:error])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v8 = [cameraImp setFrameRate:rateCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setMinimumFrameRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  if ([(OSDCamera *)self implementorActive:error])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v8 = [cameraImp setMinimumFrameRate:rateCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setFormatIndex:(id)index error:(id *)error
{
  indexCopy = index;
  if ([(OSDCamera *)self implementorActive:error])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v8 = [cameraImp setFormatIndex:indexCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formatIndex:(id *)index
{
  if ([(OSDCamera *)self implementorActive:index])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    formatIndex = [cameraImp formatIndex];
  }

  else
  {
    formatIndex = 0;
  }

  return formatIndex;
}

- (id)supportedFormats:(id *)formats
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v6 = [cameraImp supportedFormats:formats];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)useMaxAvailableDataRate:(id *)rate
{
  if ([(OSDCamera *)self implementorActive:?])
  {
    cameraImp = [(OSDCamera *)self cameraImp];
    v6 = [cameraImp useMaxAvailableDataRate:rate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)implementorActive:(id *)active
{
  cameraImp = [(OSDCamera *)self cameraImp];
  objc_sync_enter(cameraImp);
  cameraImp2 = [(OSDCamera *)self cameraImp];
  isActive = [cameraImp2 isActive];

  if ((isActive & 1) == 0)
  {
    [OSDError setError:active withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Camera is not active!", self];
  }

  objc_sync_exit(cameraImp);

  return isActive;
}

- (BOOL)_checkProtocol:(id)protocol obj:(id)obj error:(id *)error
{
  protocolCopy = protocol;
  v8 = [objc_opt_class() conformsToProtocol:protocolCopy];

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_class();
    cameraImp = [(OSDCamera *)self cameraImp];
    [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation.", v9, cameraImp];
  }

  return v8;
}

- (BOOL)_checkProtocol:(id)protocol error:(id *)error
{
  protocolCopy = protocol;
  cameraImp = [(OSDCamera *)self cameraImp];
  LOBYTE(error) = [(OSDCamera *)self _checkProtocol:protocolCopy obj:cameraImp error:error];

  return error;
}

- (BOOL)_checkSelector:(SEL)selector error:(id *)error
{
  cameraImp = [(OSDCamera *)self cameraImp];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_class();
    cameraImp2 = [(OSDCamera *)self cameraImp];
    v11 = NSStringFromSelector(selector);
    [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> %@ does not provide this implementation : '%@'.", v9, cameraImp2, v11];
  }

  return v8 & 1;
}

@end