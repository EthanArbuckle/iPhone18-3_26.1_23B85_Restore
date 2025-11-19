@interface PKPaintAreaViewSurface
- (BOOL)eraserBeganAtLocation:(CGPoint)a3;
- (CGAffineTransform)strokeTransform;
- (CGPoint)previousPoint;
- (CGSize)drawingSize;
- (PKPaintAreaView)paintAreaView;
- (PKPaintAreaViewSurface)initWithPaintSurface:(id)a3 dispatchQueue:(id)a4 device:(id)a5;
- (id)CIImageFromTexture:(id)a3;
- (id)nextTextureTargetForMetalRendererController:(id)a3;
- (void)_didFinishErasingStrokes:(BOOL)a3;
- (void)_setupPKController;
- (void)dealloc;
- (void)dispatchSyncOnSurfaceQueue:(id)a3;
- (void)drawingBegan:(id *)a3 activeInputProperties:(unint64_t)a4 inputType:(int64_t)a5;
- (void)drawingCancelled;
- (void)drawingChanged:(id)a3;
- (void)drawingEndedWithDetectedShape:(id)a3 completionBlock:(id)a4;
- (void)eraseStrokesForPoint:(CGPoint)a3 prevPoint:(CGPoint)a4;
- (void)eraserMovedToLocation:(CGPoint)a3;
- (void)metalRendererController:(id)a3 didCommitRenderingIntoTexture:(id)a4;
- (void)vsync:(double)a3;
@end

@implementation PKPaintAreaViewSurface

- (PKPaintAreaViewSurface)initWithPaintSurface:(id)a3 dispatchQueue:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PKPaintAreaViewSurface;
  v12 = [(PKPaintAreaViewSurface *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_surface, a3);
    objc_storeStrong(&v13->_device, a5);
    objc_storeStrong(&v13->_dispatchQueue, a4);
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    textureSet = v13->_textureSet;
    v13->_textureSet = v14;

    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    v13->_previousPoint = v16;
    v13->_oldEraseLocation = v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__PKPaintAreaViewSurface_initWithPaintSurface_dispatchQueue_device___block_invoke;
    v18[3] = &unk_1E82D6890;
    v19 = v13;
    v20 = v9;
    [(PKPaintAreaViewSurface *)v19 dispatchSyncOnSurfaceQueue:v18];
  }

  return v13;
}

double __68__PKPaintAreaViewSurface_initWithPaintSurface_dispatchQueue_device___block_invoke(uint64_t a1)
{
  [*(a1 + 40) paintSurfaceDrawingSize];
  v2 = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  [*(a1 + 40) paintSurfaceTextureScale];
  *(*(a1 + 32) + 112) = v5;
  *(*(a1 + 32) + 24) = vrndaq_f64(vmulq_n_f64(*(*(a1 + 32) + 136), *(*(a1 + 32) + 112)));
  *(*(a1 + 32) + 75) = [*(a1 + 40) paintSurfaceIsMipmapped];
  v6 = [*(a1 + 40) paintSurfaceDrawing];
  v7 = [v6 uuid];
  v8 = *(a1 + 32);
  v9 = *(v8 + 128);
  *(v8 + 128) = v7;

  v10 = *(a1 + 40);
  if (v10)
  {
    [v10 paintSurfaceStrokeTransform];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v11 = *(a1 + 32);
  *(v11 + 168) = v13;
  *(v11 + 184) = v14;
  result = *&v15;
  *(v11 + 200) = v15;
  return result;
}

- (void)dealloc
{
  [(PKController *)&self->_drawingController->super.isa teardown];
  v3.receiver = self;
  v3.super_class = PKPaintAreaViewSurface;
  [(PKPaintAreaViewSurface *)&v3 dealloc];
}

- (id)CIImageFromTexture:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = *MEMORY[0x1E695F9B8];
  v9[0] = *MEMORY[0x1E695F9A8];
  v9[1] = v5;
  v10[0] = DeviceRGB;
  v10[1] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  CGColorSpaceRelease(DeviceRGB);
  v7 = [objc_alloc(MEMORY[0x1E695F658]) initWithMTLTexture:v3 options:v6];

  return v7;
}

- (void)dispatchSyncOnSurfaceQueue:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  block = v4;
  if (!dispatchQueue)
  {
    v6 = [MEMORY[0x1E696AF00] isMainThread];
    v4 = block;
    if (v6)
    {
      block[2](block);
      goto LABEL_6;
    }

    dispatchQueue = MEMORY[0x1E69E96A0];
  }

  dispatch_sync(dispatchQueue, v4);
LABEL_6:
}

- (void)drawingBegan:(id *)a3 activeInputProperties:(unint64_t)a4 inputType:(int64_t)a5
{
  [(PKPaintAreaViewSurface *)self setIsDrawing:1];
  if (!self->_drawingController)
  {
    [(PKPaintAreaViewSurface *)self _setupPKController];
    memset(&v34, 0, sizeof(v34));
    [(PKPaintAreaViewSurface *)self strokeTransform];
    CGAffineTransformMakeScale(&t2, self->_textureScale, self->_textureScale);
    CGAffineTransformConcat(&v34, &t1, &t2);
    t1.a = 0.0;
    *&t1.b = &t1;
    *&t1.c = 0x3032000000;
    *&t1.d = __Block_byref_object_copy__11;
    *&t1.tx = __Block_byref_object_dispose__11;
    t1.ty = 0.0;
    t2.a = 0.0;
    *&t2.b = &t2;
    *&t2.c = 0x3032000000;
    *&t2.d = __Block_byref_object_copy__11;
    *&t2.tx = __Block_byref_object_dispose__11;
    t2.ty = 0.0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__11;
    v48[4] = __Block_byref_object_dispose__11;
    v49 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke;
    v47[3] = &unk_1E82D8CF8;
    v47[4] = self;
    v47[5] = &t1;
    v47[6] = v48;
    v47[7] = &t2;
    [(PKPaintAreaViewSurface *)self dispatchSyncOnSurfaceQueue:v47];
    drawingController = self->_drawingController;
    if (drawingController)
    {
      drawingController = drawingController->_rendererController;
    }

    v10 = drawingController;
    v11 = dispatch_semaphore_create(0);
    v12 = self->_drawingController;
    v13 = *(*&t1.b + 40);
    v14 = *(*&t2.b + 40);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke_2;
    v43[3] = &unk_1E82D8420;
    v46 = v34;
    v44 = v10;
    v45 = v11;
    v15 = v11;
    v16 = v10;
    [(PKController *)v12 setDrawing:v13 imageTexture:v14 completion:v43];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(&t2, 8);

    _Block_object_dispose(&t1, 8);
  }

  if (![(PKPaintAreaViewSurface *)self eraserBeganAtLocation:a3->var0.var0.x, a3->var0.var0.y])
  {
    [(PKPaintAreaViewSurface *)self strokeTransform];
    CGAffineTransformInvert(&v34, &t1);
    v17 = *&v34.a;
    v18 = [(PKPaintAreaViewSurface *)self surface];
    v19 = [v18 paintSurfaceDrawing];
    v20 = [v19 newStroke];

    v21 = [(PKPaintAreaViewSurface *)self paintAreaView];
    v22 = [v21 tool];
    v23 = [v22 ink];
    [v20 _setInk:v23];

    if (!a5)
    {
      v24 = [(PKPaintAreaViewSurface *)self paintAreaView];
      v25 = [v24 traitCollection];
      v26 = [v25 forceTouchCapability];

      if (v26 == 1)
      {
        a3->var1 = -1.0;
      }
    }

    v27 = [(PKController *)&self->_drawingController->super.isa inputController];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke_3;
    v41[3] = &unk_1E82D6890;
    v41[4] = self;
    v28 = v20;
    v42 = v28;
    [v27 drawingBeganWithStroke:v28 inputType:a5 activeInputProperties:a4 inputScale:v41 start:sqrt(*(&v17 + 1) * *(&v17 + 1) + *&v17 * *&v17)];

    v29 = [(PKController *)&self->_drawingController->super.isa inputController];
    v30 = *&a3->var13;
    v38 = *&a3->var11;
    v39 = v30;
    var15 = a3->var15;
    v31 = *&a3->var5;
    *&v34.tx = *&a3->var3;
    v35 = v31;
    v32 = *&a3->var9;
    v36 = *&a3->var7;
    v37 = v32;
    v33 = *&a3->var1;
    *&v34.a = a3->var0;
    *&v34.c = v33;
    [v29 addPoint:&v34];
  }
}

void __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) surface];
  v3 = [v2 paintSurfaceDrawing];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) surface];
  v8 = [v7 paintSurfaceTexture];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11 && [v11 width] >= 2 && objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "height") >= 2)
  {
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = (*(*(a1 + 56) + 8) + 40);

    objc_storeStrong(v13, v12);
  }
}

intptr_t __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v2;
  v5[2] = *(a1 + 80);
  [(PKMetalRendererController *)*(a1 + 32) setStrokeTransform:v5];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void __71__PKPaintAreaViewSurface_drawingBegan_activeInputProperties_inputType___block_invoke_3(uint64_t a1)
{
  [(PKController *)*(*(a1 + 32) + 8) didStartLiveInteraction];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  [(PKMetalRendererController *)v3 drawingBeganWithStroke:0 forPreview:?];
}

- (void)_setupPKController
{
  v12 = objc_alloc_init(PKMetalConfig);
  v3 = [[PKController alloc] initWithPixelSize:0 actualSize:0 singleComponent:v12 sixChannelBlendingMode:self->_pixelSize.width wantsExtendedDynamicRangeContent:self->_pixelSize.height metalConfig:self->_drawingSize.width, self->_drawingSize.height];
  drawingController = self->_drawingController;
  self->_drawingController = v3;

  v5 = self->_drawingController;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, self);
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  v7 = self->_drawingController;
  if (v7)
  {
    v7 = v7->_rendererController;
  }

  v8 = v7;
  -[PKMetalRendererController setBackgroundColor:](v8, [v6 CGColor]);

  v9 = self->_drawingController;
  if (v9)
  {
    v10 = v9->_rendererController;
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_delegate, self);
    }
  }

  else
  {
    v11 = 0;
  }
}

- (void)drawingEndedWithDetectedShape:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaintAreaViewSurface *)self isDrawing];
  [(PKPaintAreaViewSurface *)self setIsDrawing:0];
  if (self->_isErasingObjects)
  {
    [(PKPaintAreaViewSurface *)self eraserEnded];
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    if (v8)
    {
      self->_waitingForStrokeToEnd = 1;
    }

    v9 = [(PKController *)&self->_drawingController->super.isa inputController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke;
    v10[3] = &unk_1E82D8D40;
    v11 = v6;
    v12 = self;
    v14 = v8;
    v13 = v7;
    [v9 drawingEndedEstimatesTimeout:v10 completion:0.1];
  }
}

void __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v14[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 strokes];

      v5 = v7;
    }

    [(PKController *)*(*(a1 + 40) + 8) addNewRenderedStrokes:v5 wasAddedEarly:0 hidden:0 preDrawingChangedBlock:&__block_literal_global_37];
  }

  if (*(a1 + 56) == 1)
  {
    v8 = *(*(a1 + 40) + 8);
    if (v8)
    {
      v8 = v8[8];
    }

    v9 = v8;
    v10 = [(PKController *)*(*(a1 + 40) + 8) inputController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke_4;
    v12[3] = &unk_1E82D6D58;
    v11 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v11;
    [(PKMetalRendererController *)v9 drawingEnded:v10 finishStrokeBlock:v12];
  }
}

void __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke_5;
  v2[3] = &unk_1E82D6D58;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

intptr_t __72__PKPaintAreaViewSurface_drawingEndedWithDetectedShape_completionBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 16) removeAllObjects];
  objc_sync_exit(v2);

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 73) = 0;
  v4 = *(*(a1 + 32) + 8);
  if (v4)
  {
    v5 = *(v4 + 80);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

- (void)drawingCancelled
{
  v3 = [(PKPaintAreaViewSurface *)self isDrawing];
  [(PKPaintAreaViewSurface *)self setIsDrawing:0];
  if (self->_isErasingObjects)
  {

    [(PKPaintAreaViewSurface *)self eraserCancelled];
  }

  else
  {
    v4 = self->_drawingController;
    v5 = [(PKController *)v4 inputController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PKPaintAreaViewSurface_drawingCancelled__block_invoke;
    v7[3] = &unk_1E82D7528;
    v7[4] = self;
    v9 = v3;
    v6 = v4;
    v8 = v6;
    [v5 drawingCancelledWithCompletion:v7];
  }
}

void __42__PKPaintAreaViewSurface_drawingCancelled__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 16) removeAllObjects];
  objc_sync_exit(v2);

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[8];
    }

    v4 = v3;
    [(PKMetalRendererController *)v4 drawingCancelledForPreview:?];

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 80);

      dispatch_semaphore_signal(v6);
    }
  }
}

- (void)vsync:(double)a3
{
  if ([(PKPaintAreaViewSurface *)self isDrawing]|| (v5 = self->_drawingController) != 0 && v5->_liveInteraction || self->_isErasingObjects)
  {
    memset(&v14, 0, sizeof(v14));
    [(PKPaintAreaViewSurface *)self strokeTransform];
    [(PKPaintAreaViewSurface *)self textureScale];
    v7 = v6;
    [(PKPaintAreaViewSurface *)self textureScale];
    CGAffineTransformMakeScale(&v12, v7, v8);
    CGAffineTransformConcat(&v14, &t1, &v12);
    v9 = sqrt(v14.b * v14.b + v14.a * v14.a);
    drawingController = self->_drawingController;
    if (drawingController)
    {
      drawingController = drawingController->_rendererController;
    }

    v11 = drawingController;
    t1 = v14;
    [(PKMetalRendererController *)v11 setStrokeTransform:?];
    memset(&t1, 0, sizeof(t1));
    [(PKMetalRendererController *)v11 renderWithTransform:v9 inputScale:a3 at:?];
  }
}

- (BOOL)eraserBeganAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_isErasingObjects = 0;
  v6 = [(PKPaintAreaViewSurface *)self paintAreaView];
  v7 = [v6 tool];
  v8 = [v7 ink];

  v9 = [v8 identifier];
  v10 = [v9 isEqual:@"com.apple.ink.objectEraser"];

  if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v11;
  if (v12)
  {
    self->_isErasingObjects = 1;
    [(PKPaintAreaViewSurface *)self eraseStrokesForPoint:x prevPoint:y, x, y];
    self->_oldEraseLocation.x = x;
    self->_oldEraseLocation.y = y;
  }

  return v12;
}

- (void)eraserMovedToLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ((*&a3.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v6 = self->_oldEraseLocation.x;
    v7 = self->_oldEraseLocation.y;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&self->_oldEraseLocation.y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    v8 = -(a3.x - v6);
    if (a3.x - v6 >= 0.0)
    {
      v8 = a3.x - v6;
    }

    if (v8 <= self->_drawingSize.width * 0.5)
    {
      v9 = y - v7;
      if (y - v7 < 0.0)
      {
        v9 = -(y - v7);
      }

      if (v9 <= self->_drawingSize.height * 0.5)
      {
LABEL_11:
        [(PKPaintAreaViewSurface *)self eraseStrokesForPoint:a3.x prevPoint:y];
      }
    }

    self->_oldEraseLocation.x = x;
    self->_oldEraseLocation.y = y;
  }
}

- (void)eraseStrokesForPoint:(CGPoint)a3 prevPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v42 = *MEMORY[0x1E69E9840];
  if (!self->_strokesToErase)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    strokesToErase = self->_strokesToErase;
    self->_strokesToErase = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    strokeIDsToErase = self->_strokeIDsToErase;
    self->_strokeIDsToErase = v11;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11;
  v39 = __Block_byref_object_dispose__11;
  v40 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__PKPaintAreaViewSurface_eraseStrokesForPoint_prevPoint___block_invoke;
  v28[3] = &unk_1E82D8D68;
  v29 = 0;
  v30 = &v35;
  v31 = v7;
  v32 = v6;
  v33 = x;
  v34 = y;
  v28[4] = self;
  [(PKPaintAreaViewSurface *)self dispatchSyncOnSurfaceQueue:v28];
  if ([v36[5] count])
  {
    v13 = [(NSMutableArray *)self->_strokesToErase count];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v36[5] array];
    v15 = [PKStroke copyStrokes:v14 hidden:1];

    v16 = [v15 countByEnumeratingWithState:&v24 objects:v41 count:16];
    if (v16)
    {
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = self->_strokeIDsToErase;
          v21 = [v19 _strokeUUID];
          LOBYTE(v20) = [(NSMutableSet *)v20 containsObject:v21];

          if ((v20 & 1) == 0)
          {
            [(NSMutableArray *)self->_strokesToErase addObject:v19];
            v22 = self->_strokeIDsToErase;
            v23 = [v19 _strokeUUID];
            [(NSMutableSet *)v22 addObject:v23];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v24 objects:v41 count:16];
      }

      while (v16);
    }

    if ([(NSMutableArray *)self->_strokesToErase count]!= v13)
    {
      [(PKController *)self->_drawingController updateDrawingWithErasedStrokes:?];
    }
  }

  _Block_object_dispose(&v35, 8);
}

void __57__PKPaintAreaViewSurface_eraseStrokesForPoint_prevPoint___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) surface];
  v2 = [v6 paintSurfaceDrawing];
  v3 = [v2 strokesIntersectedByPoint:*(a1 + 40) prevPoint:*(a1 + 56) onscreenVisibleStrokes:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_didFinishErasingStrokes:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_strokesToErase copy];
  strokesToErase = self->_strokesToErase;
  self->_strokesToErase = 0;

  strokeIDsToErase = self->_strokeIDsToErase;
  self->_strokeIDsToErase = 0;

  if (v5)
  {
    if ([v5 count])
    {
      v8 = !v3;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__PKPaintAreaViewSurface__didFinishErasingStrokes___block_invoke;
      v9[3] = &unk_1E82D6890;
      v9[4] = self;
      v10 = v5;
      [(PKPaintAreaViewSurface *)self dispatchSyncOnSurfaceQueue:v9];
    }
  }
}

void __51__PKPaintAreaViewSurface__didFinishErasingStrokes___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) surface];
  v3 = [v2 paintSurfaceDrawing];

  v4 = [PKModifyStrokesCommand commandForErasingStrokes:*(a1 + 40) drawing:v3];
  [v4 applyToDrawing:v3];
  v5 = [v3 copy];

  [*(a1 + 32) drawingChanged:v5];
  v6 = os_log_create("com.apple.pencilkit", "Erase");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [*(a1 + 40) count];
    v8 = 134217984;
    v9 = v7;
    _os_log_debug_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEBUG, "Erased %lu strokes", &v8, 0xCu);
  }
}

- (id)nextTextureTargetForMetalRendererController:(id)a3
{
  v4 = self->_textureSet;
  objc_sync_enter(v4);
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  if ([(NSMutableArray *)self->_textureSet count]>= 2)
  {
    v7 = [(NSMutableArray *)self->_textureSet firstObject];
    [(NSMutableArray *)self->_textureSet removeObjectAtIndex:0];
    if (self->_pixelSize.width == [v7 width] && self->_pixelSize.height == objc_msgSend(v7, "height"))
    {
      objc_sync_exit(v4);
      goto LABEL_12;
    }
  }

  objc_sync_exit(v4);

  v8 = [(PKPaintAreaViewSurface *)self paintAreaView];
  v4 = [v8 delegate];

  if (objc_opt_respondsToSelector())
  {
    v9 = [(PKPaintAreaViewSurface *)self paintAreaView];
    v10 = [(PKPaintAreaViewSurface *)self surface];
    v11 = [(NSMutableArray *)v4 paintAreaView:v9 newTextureForSurface:v10];
  }

  else
  {
    v12 = [(PKPaintAreaViewSurface *)self drawingController];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 64);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v9 = [(PKMetalRendererController *)v15 device];

    v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:width height:height mipmapped:-[PKPaintAreaViewSurface isMipmapped](self, "isMipmapped")];
    [v10 setTextureType:2];
    [v10 setSampleCount:1];
    [v10 setUsage:5];
    [v10 setStorageMode:2];
    v11 = [v9 newTextureWithDescriptor:v10];
  }

  v7 = v11;

LABEL_12:

  return v7;
}

- (void)metalRendererController:(id)a3 didCommitRenderingIntoTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaintAreaViewSurface *)self dispatchQueue];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPaintAreaViewSurface_metalRendererController_didCommitRenderingIntoTexture___block_invoke;
  block[3] = &unk_1E82D6400;
  v15 = v7;
  v16 = self;
  v17 = v6;
  v12 = v6;
  v13 = v7;
  dispatch_async(v10, block);
}

void __80__PKPaintAreaViewSurface_metalRendererController_didCommitRenderingIntoTexture___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) mipmapLevelCount] >= 2 && objc_msgSend(*(a1 + 40), "isMipmapped"))
  {
    v2 = [(PKMetalRendererController *)*(a1 + 48) commandQueue];
    v8 = [v2 commandBuffer];

    v3 = [v8 blitCommandEncoder];
    [v3 generateMipmapsForTexture:*(a1 + 32)];
    [v3 endEncoding];
    [v8 commit];
    [v8 waitUntilScheduled];
  }

  v4 = [*(a1 + 40) surface];
  v9 = [v4 paintSurfaceTexture];

  v5 = *(*(a1 + 40) + 16);
  objc_sync_enter(v5);
  if ([*(*(a1 + 40) + 16) count] <= 3 && *(*(a1 + 40) + 24) == objc_msgSend(v9, "width") && *(*(a1 + 40) + 32) == objc_msgSend(v9, "height") && objc_msgSend(v9, "pixelFormat") == 80)
  {
    [*(*(a1 + 40) + 16) addObject:v9];
  }

  objc_sync_exit(v5);

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) surface];
  [v7 setPaintSurfaceTexture:v6];
}

- (void)drawingChanged:(id)a3
{
  v4 = a3;
  v5 = [(PKPaintAreaViewSurface *)self surface];
  v6 = [(PKPaintAreaViewSurface *)self paintAreaView];
  v7 = [v6 delegate];

  if (v5)
  {
    v8 = [(PKPaintAreaViewSurface *)self dispatchQueue];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__PKPaintAreaViewSurface_drawingChanged___block_invoke;
    v12[3] = &unk_1E82D75F0;
    v13 = v5;
    v14 = v4;
    v15 = v7;
    v16 = self;
    dispatch_async(v10, v12);
  }
}

void __41__PKPaintAreaViewSurface_drawingChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) paintSurfaceDrawing];
  v3 = [v2 uuid];
  v4 = [*(a1 + 40) uuid];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [v2 mergeWithDrawing:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) paintAreaView];
    v8 = [v6 paintAreaView:v7 didUpdateDrawingForSurface:*(a1 + 32)];
  }

  v9 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "Drawing changed %@", &v10, 0xCu);
  }
}

- (PKPaintAreaView)paintAreaView
{
  WeakRetained = objc_loadWeakRetained(&self->_paintAreaView);

  return WeakRetained;
}

- (CGSize)drawingSize
{
  width = self->_drawingSize.width;
  height = self->_drawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)strokeTransform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

- (CGPoint)previousPoint
{
  x = self->_previousPoint.x;
  y = self->_previousPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end