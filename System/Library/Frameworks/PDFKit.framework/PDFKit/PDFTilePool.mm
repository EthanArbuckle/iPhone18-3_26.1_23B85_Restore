@interface PDFTilePool
+ (id)sharedPool;
- (CGContext)_createContextForTileSurface:(id)surface ofRequest:(id)request;
- (PDFTilePool)init;
- (id)_createTileSurfaceForRequest:(id)request;
- (void)_colorizeTileEdgesForRequest:(id)request context:(CGContext *)context tileSize:(int)size;
- (void)_renderTileForRequest:(id)request;
- (void)dealloc;
- (void)releasePDFTileSurface:(id)surface;
- (void)requestPDFTileSurfaceForTarget:(id)target forPage:(id)page withRenderingProperties:(id)properties atZoomFactor:(double)factor frame:(CGRect)frame transform:(CGAffineTransform *)transform tag:(int)tag;
@end

@implementation PDFTilePool

+ (id)sharedPool
{
  if (sharedPool_onceToken != -1)
  {
    +[PDFTilePool sharedPool];
  }

  v3 = sharedPool_singleton;

  return v3;
}

uint64_t __25__PDFTilePool_sharedPool__block_invoke()
{
  v0 = objc_alloc_init(PDFTilePool);
  v1 = sharedPool_singleton;
  sharedPool_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PDFTilePool)init
{
  v18.receiver = self;
  v18.super_class = PDFTilePool;
  v2 = [(PDFTilePool *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFTilePoolPrivate);
    v4 = v2->_private;
    v2->_private = v3;

    if (GetUseWhippet())
    {
      v5 = 0;
      v2->_private->surfaceType = 2;
    }

    else
    {
      v2->_private->surfaceType = GetUseIOSurfaceForTiles();
      v5 = MEMORY[0x1E69E96A8];
      v6 = MEMORY[0x1E69E96A8];
    }

    v7 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("PDFKit.PDFTilePool.workQueue", v7);
    v9 = v2->_private;
    workQueue = v9->workQueue;
    v9->workQueue = v8;

    v11 = dispatch_semaphore_create(4);
    v12 = v2->_private;
    workQueueThrottle = v12->workQueueThrottle;
    v12->workQueueThrottle = v11;

    v2->_private->surfacesLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v2->_private;
    surfaces = v15->surfaces;
    v15->surfaces = v14;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_private->surfacesLock);
  [(NSMutableDictionary *)self->_private->surfaces enumerateKeysAndObjectsUsingBlock:&__block_literal_global_53];
  [(NSMutableDictionary *)self->_private->surfaces removeAllObjects];
  os_unfair_lock_unlock(&self->_private->surfacesLock);
  v3.receiver = self;
  v3.super_class = PDFTilePool;
  [(PDFTilePool *)&v3 dealloc];
}

- (void)requestPDFTileSurfaceForTarget:(id)target forPage:(id)page withRenderingProperties:(id)properties atZoomFactor:(double)factor frame:(CGRect)frame transform:(CGAffineTransform *)transform tag:(int)tag
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  propertiesCopy = properties;
  pageCopy = page;
  targetCopy = target;
  v22 = objc_alloc_init(TileRenderRequest);
  objc_storeWeak(&v22->target, targetCopy);

  objc_storeWeak(&v22->page, pageCopy);
  renderingProperties = v22->renderingProperties;
  v22->renderingProperties = propertiesCopy;
  v24 = propertiesCopy;

  v22->tileFrame.origin.x = x;
  v22->tileFrame.origin.y = y;
  v22->tileFrame.size.width = width;
  v22->tileFrame.size.height = height;
  v22->zoomFactor = factor;
  v26 = *&transform->c;
  v25 = *&transform->tx;
  *&v22->matrix.a = *&transform->a;
  *&v22->matrix.c = v26;
  *&v22->matrix.tx = v25;
  v22->tag = tag;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = v22;
  workQueue = self->_private->workQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __111__PDFTilePool_requestPDFTileSurfaceForTarget_forPage_withRenderingProperties_atZoomFactor_frame_transform_tag___block_invoke;
  v29[3] = &unk_1E8151380;
  v29[4] = self;
  v29[5] = v30;
  v28 = v22;
  dispatch_async(workQueue, v29);
  _Block_object_dispose(v30, 8);
}

void __111__PDFTilePool_requestPDFTileSurfaceForTarget_forPage_withRenderingProperties_atZoomFactor_frame_transform_tag___block_invoke(uint64_t a1)
{
  dsema = *(*(*(a1 + 32) + 8) + 16);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _renderTileForRequest:*(*(*(a1 + 40) + 8) + 40)];
  dispatch_semaphore_signal(dsema);
}

- (id)_createTileSurfaceForRequest:(id)request
{
  v29[5] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = objc_alloc_init(PDFTileSurface);
  v5->tileId = atomic_fetch_add(gPDFTileSurfaceCount, 1u);
  WeakRetained = objc_loadWeakRetained(requestCopy + 2);

  document = [WeakRetained document];
  v5->pageNumber = [document indexForPage:WeakRetained];

  v5->type = [(PDFTilePool *)self tileSurfaceType];
  tileSurfaceSize = [(PDFTilePool *)self tileSurfaceSize];
  tileSurfacePadding = [(PDFTilePool *)self tileSurfacePadding];
  v5->tileSize = tileSurfaceSize;
  v5->tilePadding = tileSurfacePadding;
  type = v5->type;
  if (!type)
  {
    v5->cgImageRef = 0;
    goto LABEL_19;
  }

  v11 = (tileSurfaceSize + 2 * tileSurfacePadding);
  if (type == 2)
  {
    v26[0] = *MEMORY[0x1E696D130];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v27[0] = v12;
    v26[1] = *MEMORY[0x1E696CF58];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v27[1] = v13;
    v26[2] = *MEMORY[0x1E696CFC0];
    v21 = MEMORY[0x1E696AD98];
    if (MGGetBoolAnswer())
    {
      v22 = 1999843442;
    }

    else
    {
      v22 = 1111970369;
    }

    v16 = [v21 numberWithInt:v22];
    v23 = *MEMORY[0x1E696CE50];
    v27[2] = v16;
    v27[3] = &unk_1F4184150;
    v24 = *MEMORY[0x1E696CFB8];
    v26[3] = v23;
    v26[4] = v24;
    v27[4] = &unk_1F4184138;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
  }

  else
  {
    if (type != 1)
    {
      v20 = 0;
      goto LABEL_18;
    }

    v28[0] = *MEMORY[0x1E696D130];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v29[0] = v12;
    v28[1] = *MEMORY[0x1E696CF58];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v29[1] = v13;
    v28[2] = *MEMORY[0x1E696CFC0];
    v14 = MEMORY[0x1E696AD98];
    if (MGGetBoolAnswer())
    {
      v15 = 1380411457;
    }

    else
    {
      v15 = 1380401729;
    }

    v16 = [v14 numberWithInt:v15];
    v29[2] = v16;
    v28[3] = *MEMORY[0x1E696CE50];
    v17 = MEMORY[0x1E696AD98];
    if (MGGetBoolAnswer())
    {
      v18 = 8;
    }

    else
    {
      v18 = 4;
    }

    v19 = [v17 numberWithInt:v18];
    v28[4] = *MEMORY[0x1E696CFB8];
    v29[3] = v19;
    v29[4] = &unk_1F4184138;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:5];
  }

LABEL_18:
  v5->ioSurfaceRef = IOSurfaceCreate(v20);

LABEL_19:

  return v5;
}

- (CGContext)_createContextForTileSurface:(id)surface ofRequest:(id)request
{
  surfaceCopy = surface;
  tileSurfaceSize = [(PDFTilePool *)self tileSurfaceSize];
  tileSurfacePadding = [(PDFTilePool *)self tileSurfacePadding];
  if (MGGetBoolAnswer() && *(surfaceCopy + 6) == 2)
  {
    DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v9 = DeviceRGB;
  v10 = tileSurfaceSize + 2 * tileSurfacePadding;
  v11 = *(surfaceCopy + 6);
  switch(v11)
  {
    case 0:
      v9 = CGColorSpaceCreateDeviceRGB();
      v15 = v10;
      v16 = 0;
      v17 = v10;
      v18 = 8;
      v19 = 0;
      goto LABEL_20;
    case 2:
      if (MGGetBoolAnswer())
      {
        if (getIOSurfaceContextOptions_onceToken != -1)
        {
          [PDFTilePool _createContextForTileSurface:ofRequest:];
        }
      }

      else if (getIOSurfaceContextOptions_onceToken != -1)
      {
        [PDFTilePool _createContextForTileSurface:ofRequest:];
      }

      v23 = CGIOSurfaceContextCreateWithOptions();
      goto LABEL_22;
    case 1:
      IOSurfaceLock(*(surfaceCopy + 4), 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(*(surfaceCopy + 4));
      BytesPerRow = IOSurfaceGetBytesPerRow(*(surfaceCopy + 4));
      v14 = MGGetBoolAnswer();
      v15 = v10;
      if (v14)
      {
        v16 = BaseAddress;
        v17 = v10;
        v18 = 16;
        v19 = BytesPerRow;
        v20 = v9;
        v21 = 4353;
LABEL_21:
        v23 = CGBitmapContextCreate(v16, v15, v17, v18, v19, v20, v21);
LABEL_22:
        v22 = v23;
        goto LABEL_23;
      }

      v16 = BaseAddress;
      v17 = v10;
      v18 = 8;
      v19 = BytesPerRow;
LABEL_20:
      v20 = v9;
      v21 = 1;
      goto LABEL_21;
  }

  v22 = 0;
LABEL_23:
  CGColorSpaceRelease(v9);

  return v22;
}

- (void)_renderTileForRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(requestCopy + 1);
  v6 = objc_loadWeakRetained(requestCopy + 2);
  pdfView = [requestCopy[3] pdfView];
  v8 = requestCopy[3];
  if (WeakRetained && v6)
  {
    v35 = WeakRetained;
    v36 = pdfView;
    v34 = v6;
    [WeakRetained hasStartedWork];
    MachSeconds = GetMachSeconds();
    v10 = [(PDFTilePool *)self _createTileSurfaceForRequest:requestCopy];
    os_unfair_lock_lock(&self->_private->surfacesLock);
    surfaces = self->_private->surfaces;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v10 + 8)];
    [(NSMutableDictionary *)surfaces setObject:v10 forKey:v12];

    os_unfair_lock_unlock(&self->_private->surfacesLock);
    v13 = [(PDFTilePool *)self _createContextForTileSurface:v10 ofRequest:requestCopy];
    if ([v8 isDarkMode])
    {
      CGContextSetProperty();
    }

    v32 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
    [PDFPage setNativeRotationDrawingEnabledForThisThread:0];
    v31 = +[PDFPage shouldHideAnnotationsForThisThread];
    [PDFPage setShouldHideAnnotationsForThisThread:1];
    v30 = +[PDFPage isExcludingAKAnnotationRenderingForThisThread];
    [PDFPage setExcludingAKAnnotationRenderingForThisThread:1];
    v14 = GetDefaultsWriteColorTileEdge();
    tileSurfaceSize = [(PDFTilePool *)self tileSurfaceSize];
    tileSurfacePadding = [(PDFTilePool *)self tileSurfacePadding];
    v33 = v8;
    pageBackgroundColor = [v8 pageBackgroundColor];
    cGColor = [pageBackgroundColor CGColor];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__PDFTilePool__renderTileForRequest___block_invoke;
    aBlock[3] = &unk_1E81513A8;
    v45 = cGColor;
    v47 = tileSurfaceSize;
    v48 = tileSurfacePadding;
    v41 = requestCopy;
    pdfView = v36;
    v42 = v36;
    v6 = v34;
    v19 = v34;
    v49 = v14;
    v43 = v19;
    selfCopy = self;
    v46 = v13;
    v20 = _Block_copy(aBlock);
    v20[2](v20, v13);
    [PDFPage setExcludingAKAnnotationRenderingForThisThread:v30];
    [PDFPage setShouldHideAnnotationsForThisThread:v31];
    [PDFPage setNativeRotationDrawingEnabledForThisThread:v32];
    if (!*(v10 + 24))
    {
      *(v10 + 40) = CGBitmapContextCreateImage(v13);
    }

    CGContextFlush(v13);
    CGContextRelease(v13);
    if (*(v10 + 24) == 1)
    {
      IOSurfaceUnlock(*(v10 + 32), 0, 0);
    }

    if (GetDefaultsWriteLogPerfTimes())
    {
      v21 = MachSeconds;
      document = [v19 document];
      v23 = [document indexForPage:v19];

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v26 = (v25 * 1000.0);

      v27 = GetMachSeconds();
      v29 = v23;
      pdfView = v36;
      NSLog(&cfstr_Pdfkit2Logperf.isa, v29, v26, v27 - v21);
      NSLog(&cfstr_Pdfkit2Logperf_0.isa, [(NSMutableDictionary *)self->_private->surfaces count]);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PDFTilePool__renderTileForRequest___block_invoke_2;
    block[3] = &unk_1E8150FF8;
    WeakRetained = v35;
    v38 = v35;
    v39 = v10;
    v28 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v8 = v33;
  }
}

uint64_t __37__PDFTilePool__renderTileForRequest___block_invoke(uint64_t a1, CGContextRef c)
{
  CGContextSetFillColorWithColor(c, *(a1 + 64));
  v10.size.width = (*(a1 + 80) + 2 * *(a1 + 84));
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.height = v10.size.width;
  CGContextFillRect(c, v10);
  v4 = *(a1 + 32);
  v7 = *(v4 + 72);
  v8 = *(v4 + 88);
  v9 = vaddq_f64(*(v4 + 104), vdupq_lane_s64(COERCE__INT64(*(a1 + 84)), 0));
  CGContextSetCTM();
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 drawPage:*(a1 + 48) toContext:{c, v7, v8, *&v9}];
    result = [*(a1 + 40) drawPagePost:*(a1 + 48) toContext:c];
  }

  else
  {
    result = [*(a1 + 48) drawWithBox:objc_msgSend(*(*(a1 + 32) + 24) toContext:{"displayBox", v7, v8, *&v9), c}];
  }

  if (*(a1 + 88) == 1)
  {
    return [*(a1 + 56) _colorizeTileEdgesForRequest:*(a1 + 32) context:*(a1 + 72) tileSize:*(a1 + 80)];
  }

  return result;
}

void __37__PDFTilePool__renderTileForRequest___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) recievePDFTileSurface:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)_colorizeTileEdgesForRequest:(id)request context:(CGContext *)context tileSize:(int)size
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  CGContextSaveGState(context);
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *MEMORY[0x1E695EFD0];
  *v22 = *MEMORY[0x1E695EFD0];
  v19 = *(MEMORY[0x1E695EFD0] + 32);
  v20 = v8;
  *&v22[16] = v8;
  *&v22[32] = v19;
  CGContextSetCTM();
  v9 = (rand() % 100) / 100.0;
  v10 = (rand() % 100) / 100.0;
  v11 = (rand() % 100) / 100.0;
  CGContextSaveGState(context);
  CGContextSetLineWidth(context, 16.0);
  CGContextSetRGBStrokeColor(context, v9, v10, v11, 0.8);
  sizeCopy = size;
  v25.size.width = size + -16.0;
  v25.origin.x = 8.0;
  v25.origin.y = 8.0;
  v25.size.height = v25.size.width;
  CGContextStrokeRect(context, v25);
  CGContextRestoreGState(context);
  if (_colorizeTileEdgesForRequest_context_tileSize__onceToken != -1)
  {
    [PDFTilePool _colorizeTileEdgesForRequest:context:tileSize:];
  }

  if (_colorizeTileEdgesForRequest_context_tileSize__stringAttributes)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", requestCopy[30]];
    v14 = CFAttributedStringCreate(*MEMORY[0x1E695E480], v13, _colorizeTileEdgesForRequest_context_tileSize__stringAttributes);
    if (v14)
    {
      v15 = v14;
      v16 = CTLineCreateWithAttributedString(v14);
      if (v16)
      {
        v17 = v16;
        *v22 = v21;
        *&v22[16] = v20;
        *&v22[32] = v19;
        CGContextSetTextMatrix(context, v22);
        BoundsWithOptions = CTLineGetBoundsWithOptions(v17, 0);
        *v22 = 0x4049000000000000;
        *&v22[8] = sizeCopy + -50.0 - BoundsWithOptions.size.height;
        *&v22[16] = sizeCopy + -50.0 - BoundsWithOptions.size.width;
        *&v22[24] = *&v22[8];
        *&v22[32] = *&v22[16];
        *&v22[40] = vdupq_n_s64(0x4049000000000000uLL);
        v23 = 0x4049000000000000;
        CGContextSetRGBFillColor(context, v9, v10, v11, 0.8);
        for (i = 0; i != 64; i += 16)
        {
          CGContextSaveGState(context);
          CGContextSetTextPosition(context, *&v22[i], *&v22[i + 8]);
          CTLineDraw(v17, context);
          CGContextRestoreGState(context);
        }

        CFRelease(v15);
        CFRelease(v17);
      }
    }
  }

  CGContextRestoreGState(context);
}

void __61__PDFTilePool__colorizeTileEdgesForRequest_context_tileSize___block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = CTFontCreateWithName(@"Helvetica", 100.0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E69659E0];
    v7[0] = *MEMORY[0x1E6965658];
    v7[1] = v2;
    v8[0] = v0;
    v8[1] = MEMORY[0x1E695E118];
    v8[2] = &unk_1F4184438;
    v3 = *MEMORY[0x1E6965A58];
    v7[2] = *MEMORY[0x1E6965A60];
    v7[3] = v3;
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v8[3] = [v4 CGColor];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
    v6 = _colorizeTileEdgesForRequest_context_tileSize__stringAttributes;
    _colorizeTileEdgesForRequest_context_tileSize__stringAttributes = v5;

    CFRelease(v1);
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_0.isa, @"Helvetica");
  }
}

- (void)releasePDFTileSurface:(id)surface
{
  v4 = self->_private;
  surfaceCopy = surface;
  os_unfair_lock_lock(&v4->surfacesLock);
  surfaces = self->_private->surfaces;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:surfaceCopy[2]];
  v8 = [(NSMutableDictionary *)surfaces objectForKey:v7];

  v9 = self->_private->surfaces;
  v10 = MEMORY[0x1E696AD98];
  v11 = surfaceCopy[2];

  v12 = [v10 numberWithInt:v11];
  [(NSMutableDictionary *)v9 removeObjectForKey:v12];

  [v8 releaseSurface];
  if (GetDefaultsWriteLogPerfTimes())
  {
    NSLog(&cfstr_Pdfkit2Logperf_0.isa, [(NSMutableDictionary *)self->_private->surfaces count]);
  }

  p_surfacesLock = &self->_private->surfacesLock;

  os_unfair_lock_unlock(p_surfacesLock);
}

@end