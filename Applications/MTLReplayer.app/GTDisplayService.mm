@interface GTDisplayService
- (GTDisplayService)initWithDelegate:(id)delegate connection:(id)connection;
- (id)show:(id)show completionHandler:(id)handler;
- (id)update:(id)update completionHandler:(id)handler;
- (void)broadcastDisconnect:(id)disconnect path:(id)path;
- (void)encodeRenderPass;
- (void)lazyInit;
- (void)processFetchIntoRenderMaskResponse:(id)response forRequest:(id)request;
- (void)processFetchIntoTextureResponse:(id)response forRequest:(id)request;
- (void)processFetchIntoWireframeResponse:(id)response forRequest:(id)request;
- (void)processFetchRenderMaskResponse:(id)response data:(id)data forRequest:(id)request;
- (void)processFetchTextureResponse:(id)response data:(id)data forRequest:(id)request;
- (void)processFetchWireframeResponse:(id)response data:(id)data forRequest:(id)request;
- (void)setVisible:(BOOL)visible;
- (void)showUsingFetch:(id)fetch replayer:(id)replayer completionHandler:(id)handler;
- (void)showUsingFetchInto:(id)into replayer:(id)replayer completionHandler:(id)handler;
- (void)updateOverlays:(id)overlays completionHandler:(id)handler;
- (void)updateTermination:(id)termination completionHandler:(id)handler;
- (void)updateWindowConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation GTDisplayService

- (void)broadcastDisconnect:(id)disconnect path:(id)path
{
  pathCopy = path;
  connection = [disconnect connection];
  v7 = connection;
  if (connection == self->_terminateConnection)
  {
    terminatePath = self->_terminatePath;
    v9 = MessagePathEndsWith();

    if (v9)
    {
      [(GTDisplayService *)self terminateProcess];
    }
  }

  else
  {
  }
}

- (void)setVisible:(BOOL)visible
{
  v3 = 32;
  if (visible)
  {
    v3 = 0;
  }

  *(&GT_ENV + 6) = *(&GT_ENV + 6) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)updateTermination:(id)termination completionHandler:(id)handler
{
  terminationCopy = termination;
  terminateConnection = self->_terminateConnection;
  handlerCopy = handler;
  connection = [terminationCopy connection];
  v9 = self->_terminateConnection;
  self->_terminateConnection = connection;

  if (terminateConnection)
  {
    terminatePath = self->_terminatePath;
    path = [terminationCopy path];
    v12 = MessagePathMerge();
    v13 = self->_terminatePath;
    self->_terminatePath = v12;
  }

  else
  {
    path2 = [terminationCopy path];
    path = self->_terminatePath;
    self->_terminatePath = path2;
  }

  v15 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(terminationCopy, "requestID")}];
  handlerCopy[2](handlerCopy, v15);
}

- (void)updateWindowConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  [(GTDisplayService *)self lazyInit];
  -[GTMTLReplayDisplayDelegate setOrientation:](self->_delegate, "setOrientation:", [configurationCopy orientation]);
  delegate = self->_delegate;
  windowTitle = [configurationCopy windowTitle];
  [(GTMTLReplayDisplayDelegate *)delegate setWindowTitle:windowTitle];

  -[GTDisplayService setVisible:](self, "setVisible:", [configurationCopy visible]);
  v10 = [GTDisplayResponse alloc];
  requestID = [configurationCopy requestID];

  v12 = [v10 initWithID:requestID];
  handlerCopy[2](handlerCopy, v12);
}

- (void)updateOverlays:(id)overlays completionHandler:(id)handler
{
  handlerCopy = handler;
  overlaysCopy = overlays;
  [(GTDisplayService *)self lazyInit];
  self->_texture.enabled = [overlaysCopy overlays] & 1;
  self->_wireframe.enabled = ([overlaysCopy overlays] & 2) != 0;
  self->_outline.enabled = ([overlaysCopy overlays] & 4) != 0;
  [(GTDisplayService *)self encodeRenderPass];
  v8 = [GTDisplayResponse alloc];
  requestID = [overlaysCopy requestID];

  v10 = [v8 initWithID:requestID];
  handlerCopy[2](handlerCopy, v10);
}

- (id)update:(id)update completionHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GTDisplayService *)self updateOverlays:updateCopy completionHandler:handlerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(GTDisplayService *)self updateWindowConfiguration:updateCopy completionHandler:handlerCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GTDisplayService *)self updateTermination:updateCopy completionHandler:handlerCopy];
      }

      else
      {
        v8 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(updateCopy, "requestID")}];
        v9 = GTTransportErrorDomain;
        v14 = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTDisplayService", @"Invalid request class passed to update"];
        v15 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v12 = [NSError errorWithDomain:v9 code:4 userInfo:v11];
        [v8 setError:v12];

        handlerCopy[2](handlerCopy, v8);
      }
    }
  }

  return 0;
}

- (void)encodeRenderPass
{
  v3 = [[GTMTLTextureRenderEncoder alloc] initWithDevice:self->_device];
  v4 = v3;
  v8 = v3;
  if (self->_texture.enabled)
  {
    overlay = self->_texture.overlay;
    if (overlay)
    {
      [v3 drawTexture:overlay isDepthStencil:self->_texture.isDepthStencil shrinkToFit:1 waitEvent:self->_texture.event waitValue:self->_texture.readyValue];
      v4 = v8;
    }
  }

  if (self->_wireframe.enabled)
  {
    v6 = self->_wireframe.overlay;
    if (v6)
    {
      [v4 drawOverlay:v6 color:16711935 shrinkToFit:1 waitEvent:self->_wireframe.event waitValue:self->_wireframe.readyValue];
      v4 = v8;
    }
  }

  if (self->_outline.enabled)
  {
    v7 = self->_outline.overlay;
    if (v7)
    {
      [v4 drawOverlay:v7 color:16711935 shrinkToFit:1 waitEvent:self->_outline.event waitValue:self->_outline.readyValue];
      v4 = v8;
    }
  }

  [(GTMTLReplayDisplayDelegate *)self->_delegate setDisplayTextureEncoder:v4];
}

- (void)processFetchRenderMaskResponse:(id)response data:(id)data forRequest:(id)request
{
  responseCopy = response;
  dataCopy = data;
  requestCopy = request;
  if ([responseCopy length] < 0xF0)
  {
    overlay = self->_outline.overlay;
    self->_outline.overlay = 0;

    self->_outline.isDepthStencil = 0;
    event = self->_outline.event;
    self->_outline.event = 0;

    self->_outline.readyValue = 0;
  }

  else
  {
    bytes = [responseCopy bytes];
    v11 = [dataCopy subdataWithRange:{*(bytes + 46), *(bytes + 47)}];
    v12 = bytes[27];
    v13 = *(bytes + 52);
    v14 = *(bytes + 106);
    v15 = *(bytes + 56);
    v16 = v11;
    v24 = v16;
    v25 = 2;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = 65537;
    v30 = v15;
    v31 = 0;
    v17 = sub_100009378(&v24);
    v18 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v17 pixelFormat], objc_msgSend(v17, "width"), objc_msgSend(v17, "height"), 0);
    [v18 setStorageMode:2];
    [v18 setUsage:3];
    v19 = [(MTLDevice *)self->_device newTextureWithDescriptor:v18];
    commandBuffer = [(MTLCommandQueue *)self->_queue commandBuffer];
    [(GTDisplayOutlineGenerator *)self->_outlineGenerator encodeToCommandBuffer:commandBuffer renderMask:v17 destination:v19];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    sub_1000040FC(&self->_outline, v19, 0, 0, 0);
  }
}

- (void)processFetchIntoRenderMaskResponse:(id)response forRequest:(id)request
{
  requestCopy = request;
  responseCopy = response;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  data = [responseCopy data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    dest = [requestCopy dest];
    pixelFormat = [dest pixelFormat];
    dest2 = [requestCopy dest];
    width = [dest2 width];
    dest3 = [requestCopy dest];
    v17 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", pixelFormat, width, [dest3 height], 0);

    [v17 setStorageMode:2];
    [v17 setUsage:3];
    v18 = [(MTLDevice *)self->_device newTextureWithDescriptor:v17];
    commandBuffer = [(MTLCommandQueue *)self->_queue commandBuffer];
    event = [requestCopy event];
    [commandBuffer encodeWaitForEvent:event value:256];

    outlineGenerator = self->_outlineGenerator;
    dest4 = [requestCopy dest];
    [(GTDisplayOutlineGenerator *)outlineGenerator encodeToCommandBuffer:commandBuffer renderMask:dest4 destination:v18];

    event2 = [requestCopy event];
    [commandBuffer encodeSignalEvent:event2 value:272];

    [commandBuffer commit];
    event3 = [requestCopy event];
    sub_1000040FC(&self->_outline, v18, 0, event3, 272);
  }

  else
  {
    overlay = self->_outline.overlay;
    self->_outline.overlay = 0;

    self->_outline.isDepthStencil = 0;
    event = self->_outline.event;
    self->_outline.event = 0;

    self->_outline.readyValue = 0;
  }
}

- (void)processFetchWireframeResponse:(id)response data:(id)data forRequest:(id)request
{
  responseCopy = response;
  dataCopy = data;
  requestCopy = request;
  if ([responseCopy length] < 0xA0)
  {
    overlay = self->_wireframe.overlay;
    self->_wireframe.overlay = 0;

    self->_wireframe.isDepthStencil = 0;
    event = self->_wireframe.event;
    self->_wireframe.event = 0;

    self->_wireframe.readyValue = 0;
  }

  else
  {
    bytes = [responseCopy bytes];
    v11 = [dataCopy subdataWithRange:{*(bytes + 26), *(bytes + 27)}];
    v12 = bytes[17];
    v13 = *(bytes + 32);
    v14 = *(bytes + 66);
    v15 = *(bytes + 36);
    v20 = v11;
    v21 = 2;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = 65537;
    v26 = v15;
    v27 = 0;
    v16 = sub_100009378(&v20);
    sub_1000040FC(&self->_wireframe, v16, 0, 0, 0);
  }
}

- (void)processFetchIntoWireframeResponse:(id)response forRequest:(id)request
{
  requestCopy = request;
  responseCopy = response;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  data = [responseCopy data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    dest = [requestCopy dest];
    event = [requestCopy event];
    sub_1000040FC(&self->_wireframe, dest, 0, event, 256);
  }

  else
  {
    overlay = self->_wireframe.overlay;
    self->_wireframe.overlay = 0;

    self->_wireframe.isDepthStencil = 0;
    event = self->_wireframe.event;
    self->_wireframe.event = 0;

    self->_wireframe.readyValue = 0;
  }
}

- (void)processFetchTextureResponse:(id)response data:(id)data forRequest:(id)request
{
  responseCopy = response;
  dataCopy = data;
  requestCopy = request;
  if ([responseCopy length] >= 0x50)
  {
    bytes = [responseCopy bytes];
    v12 = [dataCopy subdataWithRange:{*(bytes + 6), *(bytes + 7)}];
    v13 = bytes[7];
    v14 = *(bytes + 12);
    v15 = *(bytes + 26);
    v16 = *(bytes + 16);
    v17 = v12;
    v20 = v17;
    v21 = 2;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = 65537;
    v26 = v16;
    v27 = 0;
    v18 = sub_100009378(&v20);
    [v18 pixelFormat];
    device = self->_device;
    MTLPixelFormatGetInfoForDevice();
    sub_1000040FC(&self->_texture, v18, 0, 0, 0);
  }

  else
  {
    sub_1000040FC(&self->_texture, self->_errorTexture, 0, 0, 0);
  }
}

- (void)processFetchIntoTextureResponse:(id)response forRequest:(id)request
{
  requestCopy = request;
  responseCopy = response;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  data = [responseCopy data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    dest = [requestCopy dest];
    [dest pixelFormat];

    device = self->_device;
    MTLPixelFormatGetInfoForDevice();
    dest2 = [requestCopy dest];
    event = [requestCopy event];
    sub_1000040FC(&self->_texture, dest2, 0, event, 256);
  }

  else
  {
    sub_1000040FC(&self->_texture, self->_errorTexture, 0, 0, 0);
  }
}

- (void)showUsingFetch:(id)fetch replayer:(id)replayer completionHandler:(id)handler
{
  handlerCopy = handler;
  replayerCopy = replayer;
  fetchCopy = fetch;
  v11 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(fetchCopy, "requestID")}];
  v12 = objc_opt_new();
  [v12 setDispatchUID:{objc_msgSend(fetchCopy, "dispatchUID")}];
  [v12 setStreamRef:{objc_msgSend(fetchCopy, "streamRef")}];
  v32[0] = [fetchCopy width];
  v32[1] = [fetchCopy height];
  v32[2] = 1;
  [v12 setSize:v32];
  [v12 setLevel:{objc_msgSend(fetchCopy, "level")}];
  [v12 setSlice:{objc_msgSend(fetchCopy, "slice")}];
  [v12 setPlane:{objc_msgSend(fetchCopy, "plane")}];
  [v12 setDepth:{objc_msgSend(fetchCopy, "depth")}];
  v13 = objc_opt_new();
  [v13 setDispatchUID:{objc_msgSend(fetchCopy, "dispatchUID")}];
  [v13 setSolid:0];
  v14 = objc_opt_new();
  dispatchUID = [fetchCopy dispatchUID];

  [v14 setDispatchUID:dispatchUID];
  [v14 setSolid:1];
  v16 = objc_opt_new();
  v33[0] = v12;
  v33[1] = v13;
  v33[2] = v14;
  v17 = [NSArray arrayWithObjects:v33 count:3];
  [v16 setRequests:v17];

  requests = [v16 requests];
  [requests count];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100004EF0;
  v25[3] = &unk_100014AC8;
  v26 = v11;
  selfCopy = self;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = handlerCopy;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = handlerCopy;
  v23 = v11;
  [v16 setCompletionHandler:v25];
  v24 = [replayerCopy fetch:v16];
}

- (void)showUsingFetchInto:(id)into replayer:(id)replayer completionHandler:(id)handler
{
  handlerCopy = handler;
  replayerCopy = replayer;
  intoCopy = into;
  v30 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(intoCopy, "requestID")}];
  v9 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [intoCopy pixelFormat], objc_msgSend(intoCopy, "width"), objc_msgSend(intoCopy, "height"), 0);
  [v9 setStorageMode:2];
  [v9 setUsage:17];
  v29 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  newSharedEvent = [(MTLDevice *)self->_device newSharedEvent];
  v10 = objc_alloc_init(GTReplayFetchIntoTexture);
  [v10 setDispatchUID:{objc_msgSend(intoCopy, "dispatchUID")}];
  [v10 setStreamRef:{objc_msgSend(intoCopy, "streamRef")}];
  [v10 setSlice:{objc_msgSend(intoCopy, "slice")}];
  [v10 setLevel:{objc_msgSend(intoCopy, "level")}];
  [v10 setDepth:{objc_msgSend(intoCopy, "depth")}];
  [v10 setPlane:{objc_msgSend(intoCopy, "plane")}];
  [v10 setDest:v29];
  [v10 setEvent:newSharedEvent];
  [v9 setPixelFormat:10];
  v27 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  newSharedEvent2 = [(MTLDevice *)self->_device newSharedEvent];
  v11 = objc_alloc_init(GTReplayFetchIntoWireframe);
  [v11 setDispatchUID:{objc_msgSend(intoCopy, "dispatchUID")}];
  [v11 setDest:v27];
  [v11 setEvent:newSharedEvent2];
  [v9 setPixelFormat:10];
  v25 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  newSharedEvent3 = [(MTLDevice *)self->_device newSharedEvent];
  v13 = objc_alloc_init(GTReplayFetchIntoRenderMask);
  dispatchUID = [intoCopy dispatchUID];

  [v13 setDispatchUID:dispatchUID];
  [v13 setDest:v25];
  [v13 setEvent:newSharedEvent3];
  v15 = objc_opt_new();
  v41[0] = v10;
  v41[1] = v11;
  v41[2] = v13;
  v16 = [NSArray arrayWithObjects:v41 count:3];
  [v15 setRequests:v16];

  requests = [v15 requests];
  v18 = [requests count];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100005784;
  v33[3] = &unk_100014AA0;
  v34 = v30;
  selfCopy = self;
  v36 = v10;
  v37 = v11;
  v39 = handlerCopy;
  v40 = v18;
  v38 = v13;
  v19 = v13;
  v20 = v11;
  v21 = v10;
  v22 = handlerCopy;
  v23 = v30;
  [v15 setCompletionHandler:v33];
  v24 = [replayerCopy fetchInto:v15];
}

- (id)show:(id)show completionHandler:(id)handler
{
  showCopy = show;
  handlerCopy = handler;
  [(GTDisplayService *)self lazyInit];
  v8 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(showCopy, "requestID")}];
  if ((GT_ENV[6] & 0x20) != 0)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, v8);
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = sub_100006F30(0x10u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138412290;
      replayServicePort = v39;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid GTDisplayService show request, expected GTDisplayShowTextureRequest, got %@", buf, 0xCu);
    }

    v16 = GTTransportErrorDomain;
    v51 = NSLocalizedDescriptionKey;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTDisplayShowTextureRequest", v18];
    v52 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v21 = [NSError errorWithDomain:v16 code:4 userInfo:v20];
    [v8 setError:v21];

    goto LABEL_10;
  }

  v9 = showCopy;
  connection = self->_connection;
  v11 = allServices();
  [v9 replayServicePort];
  v12 = filteredArrayByPort();
  firstObject = [v12 firstObject];

  if (firstObject)
  {
    v14 = [[GTMTLReplayServiceXPCProxy alloc] initWithConnection:self->_connection serviceInfo:firstObject];
    if (v14)
    {
      if ((GT_ENV[6] & 0x400000000) != 0)
      {
        v36 = sub_100006F30(0x10u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Environment forcing fetch rather than fetchInto", buf, 2u);
        }

        [(GTDisplayService *)self showUsingFetch:v9 replayer:v14 completionHandler:handlerCopy];
      }

      else
      {
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1000062EC;
        v43[3] = &unk_100014A50;
        v43[4] = self;
        v44 = v9;
        v45 = v14;
        v46 = handlerCopy;
        [(GTDisplayService *)self showUsingFetchInto:v44 replayer:v45 completionHandler:v43];
      }
    }

    else
    {
      v40 = firstObject;
      v42 = v11;
      v29 = sub_100006F30(0x10u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        replayServicePort = [v9 replayServicePort];
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Found replay service for port (%llu) but failed to create proxy", buf, 0xCu);
      }

      v30 = GTTransportErrorDomain;
      v47 = NSLocalizedDescriptionKey;
      v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 replayServicePort]);
      stringValue = [v31 stringValue];
      v33 = [NSString stringWithFormat:@"Service is unavailable: %@", stringValue];
      v48 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v35 = [NSError errorWithDomain:v30 code:1 userInfo:v34];
      [v8 setError:v35];

      handlerCopy[2](handlerCopy, v8);
      firstObject = v40;
      v11 = v42;
    }
  }

  else
  {
    v41 = v11;
    v22 = sub_100006F30(0x10u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      replayServicePort = [v9 replayServicePort];
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to find replay service port (%llu)", buf, 0xCu);
    }

    v23 = GTTransportErrorDomain;
    v49 = NSLocalizedDescriptionKey;
    v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 replayServicePort]);
    stringValue2 = [v24 stringValue];
    v26 = [NSString stringWithFormat:@"Service is unavailable: %@", stringValue2];
    v50 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v28 = [NSError errorWithDomain:v23 code:1 userInfo:v27];
    [v8 setError:v28];

    handlerCopy[2](handlerCopy, v8);
    firstObject = 0;
    v11 = v41;
  }

LABEL_22:
  return 0;
}

- (void)lazyInit
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006498;
  block[3] = &unk_100014BA0;
  block[4] = self;
  if (qword_10001CC58 != -1)
  {
    dispatch_once(&qword_10001CC58, block);
  }
}

- (GTDisplayService)initWithDelegate:(id)delegate connection:(id)connection
{
  delegateCopy = delegate;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = GTDisplayService;
  v9 = [(GTDisplayService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_connection, connection);
  }

  return v10;
}

@end