@interface GTDisplayService
- (GTDisplayService)initWithDelegate:(id)a3 connection:(id)a4;
- (id)show:(id)a3 completionHandler:(id)a4;
- (id)update:(id)a3 completionHandler:(id)a4;
- (void)broadcastDisconnect:(id)a3 path:(id)a4;
- (void)encodeRenderPass;
- (void)lazyInit;
- (void)processFetchIntoRenderMaskResponse:(id)a3 forRequest:(id)a4;
- (void)processFetchIntoTextureResponse:(id)a3 forRequest:(id)a4;
- (void)processFetchIntoWireframeResponse:(id)a3 forRequest:(id)a4;
- (void)processFetchRenderMaskResponse:(id)a3 data:(id)a4 forRequest:(id)a5;
- (void)processFetchTextureResponse:(id)a3 data:(id)a4 forRequest:(id)a5;
- (void)processFetchWireframeResponse:(id)a3 data:(id)a4 forRequest:(id)a5;
- (void)setVisible:(BOOL)a3;
- (void)showUsingFetch:(id)a3 replayer:(id)a4 completionHandler:(id)a5;
- (void)showUsingFetchInto:(id)a3 replayer:(id)a4 completionHandler:(id)a5;
- (void)updateOverlays:(id)a3 completionHandler:(id)a4;
- (void)updateTermination:(id)a3 completionHandler:(id)a4;
- (void)updateWindowConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation GTDisplayService

- (void)broadcastDisconnect:(id)a3 path:(id)a4
{
  v10 = a4;
  v6 = [a3 connection];
  v7 = v6;
  if (v6 == self->_terminateConnection)
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

- (void)setVisible:(BOOL)a3
{
  v3 = 32;
  if (a3)
  {
    v3 = 0;
  }

  *(&GT_ENV + 6) = *(&GT_ENV + 6) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)updateTermination:(id)a3 completionHandler:(id)a4
{
  v16 = a3;
  terminateConnection = self->_terminateConnection;
  v7 = a4;
  v8 = [v16 connection];
  v9 = self->_terminateConnection;
  self->_terminateConnection = v8;

  if (terminateConnection)
  {
    terminatePath = self->_terminatePath;
    v11 = [v16 path];
    v12 = MessagePathMerge();
    v13 = self->_terminatePath;
    self->_terminatePath = v12;
  }

  else
  {
    v14 = [v16 path];
    v11 = self->_terminatePath;
    self->_terminatePath = v14;
  }

  v15 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(v16, "requestID")}];
  v7[2](v7, v15);
}

- (void)updateWindowConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTDisplayService *)self lazyInit];
  -[GTMTLReplayDisplayDelegate setOrientation:](self->_delegate, "setOrientation:", [v7 orientation]);
  delegate = self->_delegate;
  v9 = [v7 windowTitle];
  [(GTMTLReplayDisplayDelegate *)delegate setWindowTitle:v9];

  -[GTDisplayService setVisible:](self, "setVisible:", [v7 visible]);
  v10 = [GTDisplayResponse alloc];
  v11 = [v7 requestID];

  v12 = [v10 initWithID:v11];
  v6[2](v6, v12);
}

- (void)updateOverlays:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTDisplayService *)self lazyInit];
  self->_texture.enabled = [v7 overlays] & 1;
  self->_wireframe.enabled = ([v7 overlays] & 2) != 0;
  self->_outline.enabled = ([v7 overlays] & 4) != 0;
  [(GTDisplayService *)self encodeRenderPass];
  v8 = [GTDisplayResponse alloc];
  v9 = [v7 requestID];

  v10 = [v8 initWithID:v9];
  v6[2](v6, v10);
}

- (id)update:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GTDisplayService *)self updateOverlays:v6 completionHandler:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(GTDisplayService *)self updateWindowConfiguration:v6 completionHandler:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(GTDisplayService *)self updateTermination:v6 completionHandler:v7];
      }

      else
      {
        v8 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(v6, "requestID")}];
        v9 = GTTransportErrorDomain;
        v14 = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTDisplayService", @"Invalid request class passed to update"];
        v15 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v12 = [NSError errorWithDomain:v9 code:4 userInfo:v11];
        [v8 setError:v12];

        v7[2](v7, v8);
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

- (void)processFetchRenderMaskResponse:(id)a3 data:(id)a4 forRequest:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([v23 length] < 0xF0)
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
    v10 = [v23 bytes];
    v11 = [v8 subdataWithRange:{*(v10 + 46), *(v10 + 47)}];
    v12 = v10[27];
    v13 = *(v10 + 52);
    v14 = *(v10 + 106);
    v15 = *(v10 + 56);
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
    v20 = [(MTLCommandQueue *)self->_queue commandBuffer];
    [(GTDisplayOutlineGenerator *)self->_outlineGenerator encodeToCommandBuffer:v20 renderMask:v17 destination:v19];
    [v20 commit];
    [v20 waitUntilCompleted];
    sub_1000040FC(&self->_outline, v19, 0, 0, 0);
  }
}

- (void)processFetchIntoRenderMaskResponse:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  v9 = [v7 data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    v12 = [v6 dest];
    v13 = [v12 pixelFormat];
    v14 = [v6 dest];
    v15 = [v14 width];
    v16 = [v6 dest];
    v17 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", v13, v15, [v16 height], 0);

    [v17 setStorageMode:2];
    [v17 setUsage:3];
    v18 = [(MTLDevice *)self->_device newTextureWithDescriptor:v17];
    v19 = [(MTLCommandQueue *)self->_queue commandBuffer];
    v20 = [v6 event];
    [v19 encodeWaitForEvent:v20 value:256];

    outlineGenerator = self->_outlineGenerator;
    v22 = [v6 dest];
    [(GTDisplayOutlineGenerator *)outlineGenerator encodeToCommandBuffer:v19 renderMask:v22 destination:v18];

    v23 = [v6 event];
    [v19 encodeSignalEvent:v23 value:272];

    [v19 commit];
    v24 = [v6 event];
    sub_1000040FC(&self->_outline, v18, 0, v24, 272);
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

- (void)processFetchWireframeResponse:(id)a3 data:(id)a4 forRequest:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if ([v19 length] < 0xA0)
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
    v10 = [v19 bytes];
    v11 = [v8 subdataWithRange:{*(v10 + 26), *(v10 + 27)}];
    v12 = v10[17];
    v13 = *(v10 + 32);
    v14 = *(v10 + 66);
    v15 = *(v10 + 36);
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

- (void)processFetchIntoWireframeResponse:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  v9 = [v7 data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    v12 = [v6 dest];
    v13 = [v6 event];
    sub_1000040FC(&self->_wireframe, v12, 0, v13, 256);
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

- (void)processFetchTextureResponse:(id)a3 data:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] >= 0x50)
  {
    v11 = [v8 bytes];
    v12 = [v9 subdataWithRange:{*(v11 + 6), *(v11 + 7)}];
    v13 = v11[7];
    v14 = *(v11 + 12);
    v15 = *(v11 + 26);
    v16 = *(v11 + 16);
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

- (void)processFetchIntoTextureResponse:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSSet setWithObject:objc_opt_class()];
  objc_opt_class();
  v9 = [v7 data];

  v10 = GTUnarchivedObjectOfClassesExpectingClass();
  v11 = 0;

  if ([v10 BOOLValue])
  {
    v12 = [v6 dest];
    [v12 pixelFormat];

    device = self->_device;
    MTLPixelFormatGetInfoForDevice();
    v14 = [v6 dest];
    v15 = [v6 event];
    sub_1000040FC(&self->_texture, v14, 0, v15, 256);
  }

  else
  {
    sub_1000040FC(&self->_texture, self->_errorTexture, 0, 0, 0);
  }
}

- (void)showUsingFetch:(id)a3 replayer:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(v10, "requestID")}];
  v12 = objc_opt_new();
  [v12 setDispatchUID:{objc_msgSend(v10, "dispatchUID")}];
  [v12 setStreamRef:{objc_msgSend(v10, "streamRef")}];
  v32[0] = [v10 width];
  v32[1] = [v10 height];
  v32[2] = 1;
  [v12 setSize:v32];
  [v12 setLevel:{objc_msgSend(v10, "level")}];
  [v12 setSlice:{objc_msgSend(v10, "slice")}];
  [v12 setPlane:{objc_msgSend(v10, "plane")}];
  [v12 setDepth:{objc_msgSend(v10, "depth")}];
  v13 = objc_opt_new();
  [v13 setDispatchUID:{objc_msgSend(v10, "dispatchUID")}];
  [v13 setSolid:0];
  v14 = objc_opt_new();
  v15 = [v10 dispatchUID];

  [v14 setDispatchUID:v15];
  [v14 setSolid:1];
  v16 = objc_opt_new();
  v33[0] = v12;
  v33[1] = v13;
  v33[2] = v14;
  v17 = [NSArray arrayWithObjects:v33 count:3];
  [v16 setRequests:v17];

  v18 = [v16 requests];
  [v18 count];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100004EF0;
  v25[3] = &unk_100014AC8;
  v26 = v11;
  v27 = self;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v8;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v8;
  v23 = v11;
  [v16 setCompletionHandler:v25];
  v24 = [v9 fetch:v16];
}

- (void)showUsingFetchInto:(id)a3 replayer:(id)a4 completionHandler:(id)a5
{
  v31 = a5;
  v32 = a4;
  v8 = a3;
  v30 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(v8, "requestID")}];
  v9 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v8 pixelFormat], objc_msgSend(v8, "width"), objc_msgSend(v8, "height"), 0);
  [v9 setStorageMode:2];
  [v9 setUsage:17];
  v29 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  v28 = [(MTLDevice *)self->_device newSharedEvent];
  v10 = objc_alloc_init(GTReplayFetchIntoTexture);
  [v10 setDispatchUID:{objc_msgSend(v8, "dispatchUID")}];
  [v10 setStreamRef:{objc_msgSend(v8, "streamRef")}];
  [v10 setSlice:{objc_msgSend(v8, "slice")}];
  [v10 setLevel:{objc_msgSend(v8, "level")}];
  [v10 setDepth:{objc_msgSend(v8, "depth")}];
  [v10 setPlane:{objc_msgSend(v8, "plane")}];
  [v10 setDest:v29];
  [v10 setEvent:v28];
  [v9 setPixelFormat:10];
  v27 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  v26 = [(MTLDevice *)self->_device newSharedEvent];
  v11 = objc_alloc_init(GTReplayFetchIntoWireframe);
  [v11 setDispatchUID:{objc_msgSend(v8, "dispatchUID")}];
  [v11 setDest:v27];
  [v11 setEvent:v26];
  [v9 setPixelFormat:10];
  v25 = [(MTLDevice *)self->_device newSharedTextureWithDescriptor:v9];
  v12 = [(MTLDevice *)self->_device newSharedEvent];
  v13 = objc_alloc_init(GTReplayFetchIntoRenderMask);
  v14 = [v8 dispatchUID];

  [v13 setDispatchUID:v14];
  [v13 setDest:v25];
  [v13 setEvent:v12];
  v15 = objc_opt_new();
  v41[0] = v10;
  v41[1] = v11;
  v41[2] = v13;
  v16 = [NSArray arrayWithObjects:v41 count:3];
  [v15 setRequests:v16];

  v17 = [v15 requests];
  v18 = [v17 count];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100005784;
  v33[3] = &unk_100014AA0;
  v34 = v30;
  v35 = self;
  v36 = v10;
  v37 = v11;
  v39 = v31;
  v40 = v18;
  v38 = v13;
  v19 = v13;
  v20 = v11;
  v21 = v10;
  v22 = v31;
  v23 = v30;
  [v15 setCompletionHandler:v33];
  v24 = [v32 fetchInto:v15];
}

- (id)show:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(GTDisplayService *)self lazyInit];
  v8 = [[GTDisplayResponse alloc] initWithID:{objc_msgSend(v6, "requestID")}];
  if ((GT_ENV[6] & 0x20) != 0)
  {
LABEL_10:
    v7[2](v7, v8);
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
      v54 = v39;
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

  v9 = v6;
  connection = self->_connection;
  v11 = allServices();
  [v9 replayServicePort];
  v12 = filteredArrayByPort();
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [[GTMTLReplayServiceXPCProxy alloc] initWithConnection:self->_connection serviceInfo:v13];
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

        [(GTDisplayService *)self showUsingFetch:v9 replayer:v14 completionHandler:v7];
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
        v46 = v7;
        [(GTDisplayService *)self showUsingFetchInto:v44 replayer:v45 completionHandler:v43];
      }
    }

    else
    {
      v40 = v13;
      v42 = v11;
      v29 = sub_100006F30(0x10u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v54 = [v9 replayServicePort];
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Found replay service for port (%llu) but failed to create proxy", buf, 0xCu);
      }

      v30 = GTTransportErrorDomain;
      v47 = NSLocalizedDescriptionKey;
      v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 replayServicePort]);
      v32 = [v31 stringValue];
      v33 = [NSString stringWithFormat:@"Service is unavailable: %@", v32];
      v48 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v35 = [NSError errorWithDomain:v30 code:1 userInfo:v34];
      [v8 setError:v35];

      v7[2](v7, v8);
      v13 = v40;
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
      v54 = [v9 replayServicePort];
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to find replay service port (%llu)", buf, 0xCu);
    }

    v23 = GTTransportErrorDomain;
    v49 = NSLocalizedDescriptionKey;
    v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 replayServicePort]);
    v25 = [v24 stringValue];
    v26 = [NSString stringWithFormat:@"Service is unavailable: %@", v25];
    v50 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v28 = [NSError errorWithDomain:v23 code:1 userInfo:v27];
    [v8 setError:v28];

    v7[2](v7, v8);
    v13 = 0;
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

- (GTDisplayService)initWithDelegate:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GTDisplayService;
  v9 = [(GTDisplayService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a3);
    objc_storeStrong(&v10->_connection, a4);
  }

  return v10;
}

@end