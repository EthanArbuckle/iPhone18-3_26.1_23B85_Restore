@interface PKMetalRendererController
- (__n128)_updateRendererStrokeTransformWithTransform:(__n128)result offset:(double)a4;
- (__n128)setPaperTransform:(uint64_t)a1;
- (__n128)setStrokeTransform:(uint64_t)a1;
- (double)_latestLatency;
- (id).cxx_construct;
- (uint64_t)_drawStrokesAfterClear:(_OWORD *)a3 clippedToStrokeSpaceRect:(CGFloat)a4 strokeTransform:(CGFloat)a5 useLayerContext:(CGFloat)a6 progress:(CGFloat)a7;
- (uint64_t)_renderAheadWithTransform:(uint64_t)a1 at:(_OWORD *)a2;
- (uint64_t)drawStrokes:(void *)a3 intoTile:(uint64_t)a4 renderCount:(char)a5 offscreen:;
- (uint64_t)prerenderWithTransform:(double)a3 inputScale:(double)a4 at:;
- (uint64_t)renderStrokesSync:(_OWORD *)a3 clippedToStrokeSpaceRect:(CGFloat)a4 strokeTransform:(CGFloat)a5 imageClipRect:(CGFloat)a6;
- (void)_drawStrokesAfterClear:(__int128 *)a3 clippedToStrokeSpaceRect:(char)a4 strokeTransform:(void *)a5 useLayerContext:(double)a6 renderCompletion:(double)a7;
- (void)_logStrokeDuration;
- (void)_recordStrokeStatistics;
- (void)_recreateMetalRenderer;
- (void)_renderLiveStrokeAndPresentWithTransform:(uint64_t)a1 at:(_OWORD *)a2 setDirtyRect:(int)a3;
- (void)addBlockToCallAfterPresenting:(uint64_t)a1;
- (void)addInputPoint:(uint64_t)a1;
- (void)buildRenderCacheForStrokes:(uint64_t)a1;
- (void)callBlockAfterPresenting:(uint64_t)a1;
- (void)callBlockOnRenderQueue:(uint64_t)a1;
- (void)cancelAllRendering;
- (void)cancelLongRunningRenders;
- (void)changeRenderSize;
- (void)commandQueue;
- (void)dealloc;
- (void)device;
- (void)didFinishRendering:(uint64_t)a1;
- (void)drawStrokesAfterClear:(__int128 *)a3 clippedToStrokeSpaceRect:(char)a4 strokeTransform:(void *)a5 useLayerContext:(double)a6 completion:(double)a7;
- (void)drawTexture:(uint64_t)a1;
- (void)drawingBeganWithStroke:(char)a3 forPreview:;
- (void)drawingCancelledForPreview:(uint64_t)a1;
- (void)drawingEnded:(void *)a3 finishStrokeBlock:;
- (void)flushMemoryIfPossible;
- (void)initWithPixelSize:(uint64_t)a3 actualSize:(int)a4 pixelFormat:(void *)a5 sixChannelBlendingMode:(double)a6 wantsExtendedDynamicRangeContent:(double)a7 metalConfig:(double)a8;
- (void)liveStrokeParticlesToFrame:(double)a3 strokes:(double)a4 startTime:(double)a5 duration:(double)a6;
- (void)pokeEventDispatcher;
- (void)purgeOriginalBackFramebuffer;
- (void)purgeRenderCachesForStrokes:(uint64_t)a1;
- (void)renderImageTexture:(__int128 *)a3 imageTextureTransform:(void *)a4 withTiles:(__int128 *)a5 tileTransform:;
- (void)renderStrokes:(__int128 *)a3 clippedToStrokeSpaceRect:(void *)a4 strokeTransform:(double)a5 imageClipRect:(double)a6 completion:(double)a7;
- (void)renderTilesIntoTiles:(uint64_t)a1;
- (void)renderWithTransform:(double)a3 inputScale:(double)a4 at:;
- (void)replaceInkTexture:(uint64_t)a3 image:;
- (void)resumeLongRunningRenders;
- (void)resumeLongRunningRendersAfterAllWorkIsDone;
- (void)setAlternativeStrokes:(double)a3 alpha:(double)a4 originalStrokeAlpha:;
- (void)setBackboardPaperMultiply:(uint64_t)a1;
- (void)setBackgroundColor:(uint64_t)a1;
- (void)setCanvasOffset:(double)a3;
- (void)setCanvasOffsetPresentationOffsetBlock:(uint64_t)a1;
- (void)setCombineStrokesAllowed:(uint64_t)a1;
- (void)setContentZoomScale:(uint64_t)a1;
- (void)setDrawBitmapEraserMask:(uint64_t)a1;
- (void)setFadeOutStrokesMode:(uint64_t)a1;
- (void)setInvertColors:(uint64_t)a1;
- (void)setIsPDFCanvasForAnalytics:(uint64_t)a1;
- (void)setLinedPaper:(uint64_t)a1;
- (void)setLiveRenderingOverrideColor:(uint64_t)a1;
- (void)setLiveStrokeElapsedTime:(uint64_t)a1;
- (void)setLiveStrokeMaxSize:(double)a3;
- (void)setLiveStrokeMode:(uint64_t)a1;
- (void)setLiveStrokeStrokes:(double)a3 animationBounds:(double)a4;
- (void)setMultiplyPresentationLayer:(uint64_t)a1;
- (void)setPaperTextureImage:(uint64_t)a1;
- (void)setPixelSize:(double)a3 actualSize:(double)a4;
- (void)setPresentationLayer:(uint64_t)a1;
- (void)setPreviewStrokeAlpha:(uint64_t)a1;
- (void)setPreviewStrokeMaxPoints:(uint64_t)a1;
- (void)setResourceCacheSize:(uint64_t)a1;
- (void)setSixChannelBlendingMode:(uint64_t)a1;
- (void)setViewScissor:(double)a3;
- (void)setWantsExtendedDynamicRangeContent:(uint64_t)a1;
- (void)setup;
- (void)signalVSyncSemaphore:(double)a3 presentationTime:(unint64_t)a4;
- (void)teardown;
- (void)updateCyclePreCACommit:(uint64_t)a1 isDrawing:(char)a2;
- (void)updateTiles:(void *)a3 withNewStrokes:(void *)a4 completionBlock:;
@end

@implementation PKMetalRendererController

- (void)initWithPixelSize:(uint64_t)a3 actualSize:(int)a4 pixelFormat:(void *)a5 sixChannelBlendingMode:(double)a6 wantsExtendedDynamicRangeContent:(double)a7 metalConfig:(double)a8
{
  v17 = a5;
  if (a1)
  {
    v53.receiver = a1;
    v53.super_class = PKMetalRendererController;
    v18 = objc_msgSendSuper2(&v53, sel_init);
    a1 = v18;
    if (+[PKMetalUtility isMetalAvailable])
    {
      if (v18)
      {
        [PKMetalUtility clampedPixelSize:a6, a7];
        v20 = v19;
        v22 = v21;
        *(v18 + 69) = 0x3FF0000000000000;
        v18[524] = a4;
        *(v18 + 77) = a3;
        v18[525] = 0;
        if (!v17)
        {
          v17 = objc_alloc_init(PKMetalConfig);
        }

        objc_storeStrong(v18 + 1, v17);
        v23 = [(PKMetalConfig *)v17 renderQueue];
        v24 = *(v18 + 3);
        *(v18 + 3) = v23;

        atomic_exchange(v18 + 48, 1u);
        v25 = dispatch_semaphore_create(0);
        v26 = *(v18 + 5);
        *(v18 + 5) = v25;

        dispatch_semaphore_signal(*(v18 + 5));
        v27 = +[PKRendererVSyncController sharedController];
        v18[80] = [(PKRendererVSyncController *)v27 isActive];

        if (_UIUpdateCycleEnabled())
        {
          v28 = dispatch_semaphore_create(0);
          v29 = *(v18 + 62);
          *(v18 + 62) = v28;
        }

        if ([PKMetalRendererController initWithPixelSize:actualSize:pixelFormat:sixChannelBlendingMode:wantsExtendedDynamicRangeContent:metalConfig:]::onceToken != -1)
        {
          dispatch_once(&[PKMetalRendererController initWithPixelSize:actualSize:pixelFormat:sixChannelBlendingMode:wantsExtendedDynamicRangeContent:metalConfig:]::onceToken, &__block_literal_global_29);
        }

        if (a2 == 80)
        {
          v30 = [(PKMetalConfig *)v17 resourceHandler];
          if (v30)
          {
            v31 = v30[56];
          }

          else
          {
            v31 = 0;
          }

          *(v18 + 64) = v31;
        }

        else
        {
          *(v18 + 64) = a2;
        }

        v32 = a2;
        if (a4)
        {
          v32 = *(v18 + 64);
        }

        v33 = [PKMetalRenderer alloc];
        v34 = [(PKMetalConfig *)v17 device];
        v35 = [(PKMetalConfig *)v17 resourceHandler];
        v36 = [PKMetalRenderer initWithDrawingPixelSize:v34 actualSize:v35 device:*(v18 + 77) resourceHandler:v32 sixChannelBlendingMode:v18[524] pixelFormat:? wantsExtendedDynamicRangeContent:?];
        v37 = *(v18 + 80);
        *(v18 + 80) = v36;

        v38 = *(v18 + 80);
        if (v38)
        {
          *(v38 + 1006) = v18[525];
          v39 = *(v18 + 80);
          *(v18 + 67) = a2;
          if (a4)
          {
            if (v39)
            {
              v40 = *(v39 + 192);
              if (v40)
              {
                v41 = v40[56];
                goto LABEL_26;
              }

LABEL_36:
              v41 = 0;
LABEL_26:
              *(v18 + 68) = v41;

              v42 = *(v18 + 80);
              if (v42)
              {
                v43 = *(v42 + 192);
                if (v43)
                {
                  v44 = v43[421];
LABEL_29:
                  v18[520] = v44 & (a4 ^ 1);

                  v45 = objc_alloc_init(PKStrokeGenerator);
                  v46 = *(v18 + 70);
                  *(v18 + 70) = v45;

                  v47 = MEMORY[0x1E695EFD0];
                  v48 = *(MEMORY[0x1E695EFD0] + 16);
                  *(v18 + 44) = *MEMORY[0x1E695EFD0];
                  *(v18 + 45) = v48;
                  *(v18 + 46) = *(v47 + 32);
                  v49 = [MEMORY[0x1E695DF70] array];
                  v50 = *(v18 + 11);
                  *(v18 + 11) = v49;

                  *(v18 + 13) = v20;
                  *(v18 + 14) = v22;
                  *(v18 + 15) = a8;
                  *(v18 + 16) = a9;
                  v51 = *(MEMORY[0x1E695F050] + 16);
                  *(v18 + 440) = *MEMORY[0x1E695F050];
                  *(v18 + 456) = v51;
                  goto LABEL_30;
                }
              }

              else
              {
                v43 = 0;
              }

              v44 = 0;
              goto LABEL_29;
            }
          }

          else if (v39)
          {
            v40 = *(v39 + 192);
            if (v40)
            {
              v41 = v40[55];
              goto LABEL_26;
            }

            goto LABEL_36;
          }
        }

        else
        {
          *(v18 + 67) = a2;
        }

        v41 = 0;
        v40 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v18[96] = 1;

      a1 = 0;
    }
  }

LABEL_30:

  return a1;
}

void __138__PKMetalRendererController_initWithPixelSize_actualSize_pixelFormat_sixChannelBlendingMode_wantsExtendedDynamicRangeContent_metalConfig___block_invoke()
{
  v31 = *MEMORY[0x1E69E9840];
  mach_timebase_info(&dword_1EC291594);
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 maximumFramesPerSecond];

  v2 = 1.0 / v1;
  *&_MergedGlobals_115 = v2;
  *&qword_1ED6A4EB8 = v2 + 0.001;
  v3 = v2 < 0.01;
  v4 = qword_1C801D0B0[v2 < 0.01];
  v5 = qword_1C801D0C0[v3];
  qword_1ED6A4EC0 = 0x3F50624DD2F1A9FCLL;
  qword_1ED6A4EC8 = v4;
  qword_1ED6A4ED0 = v5;
  v29 = xmmword_1C801D0F0;
  v30 = 372777383;
  v27 = xmmword_1C801D104;
  v28 = -858079590;
  if (MGIsDeviceOneOfType())
  {
    _MergedGlobals_158 = 257;
    qword_1ED6A4EC8 = 0x3F85CFAACD9E83E4;
    qword_1ED6A4ED0 = 0x3F70624DD2F1A9FCLL;
    byte_1EC291590 = 1;
  }

  v30 = -340360463;
  v29 = xmmword_1C801D118;
  v27 = xmmword_1C801D12C;
  v28 = 1605231531;
  if (MGIsDeviceOneOfType())
  {
    HIBYTE(_MergedGlobals_158) = 1;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"PKFinalRenderMaximumMidFrameTouchWaitTime"];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v9 doubleForKey:@"PKFinalRenderMaximumMidFrameTouchWaitTime"];
    qword_1ED6A4EC8 = v10;
  }

  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 objectForKey:@"PKFinalRenderMinimumMidFrameTouchWaitTime"];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v14 doubleForKey:@"PKFinalRenderMinimumMidFrameTouchWaitTime"];
    qword_1ED6A4ED0 = v15;
  }

  v16 = [MEMORY[0x1E695E000] standardUserDefaults];
  v17 = [v16 objectForKey:@"PKFinalRenderFirstTouchWaitTime"];
  v18 = v17 == 0;

  if (!v18)
  {
    v19 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v19 doubleForKey:@"PKFinalRenderFirstTouchWaitTime"];
    qword_1ED6A4ED8 = v20;
  }

  v21 = [MEMORY[0x1E695E000] standardUserDefaults];
  v22 = [v21 objectForKey:@"PKFinalRenderInitialMaxDelay"];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v24 doubleForKey:@"PKFinalRenderInitialMaxDelay"];
    qword_1ED6A4EC8 = v25;
  }

  v26 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1EC291591 = [v26 BOOLForKey:@"PKAlwaysRenderLiveStrokesAsPreview"];
}

- (void)device
{
  if (a1)
  {
    v2 = a1[80];
    if (v2)
    {
      v2 = v2[3];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (void)commandQueue
{
  if (a1)
  {
    v2 = a1[80];
    if (v2)
    {
      v2 = v2[4];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (void)_recreateMetalRenderer
{
  if (a1)
  {
    v2 = *(a1 + 640);
    v22 = v2;
    if (v2)
    {
      v3 = v2[130];
      v4 = v2[30];
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v5 = CGColorRetain(v4);
    v6 = (a1 + 640);

    v7 = *(a1 + 640);
    if (v7)
    {
      v7 = v7[24];
    }

    v23 = v7;
    v8 = 536;
    if (*(a1 + 524))
    {
      v8 = 512;
    }

    v9 = *(a1 + v8);
    v10 = [PKMetalRenderer alloc];
    if (v23)
    {
      v11 = v23[53];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [PKMetalRenderer initWithDrawingPixelSize:v12 actualSize:v23 device:*(a1 + 616) resourceHandler:v9 sixChannelBlendingMode:*(a1 + 524) pixelFormat:? wantsExtendedDynamicRangeContent:?];
    objc_storeStrong((a1 + 640), v13);

    if (*v6)
    {
      *(*v6 + 1040) = v3;
      v14 = *v6;
    }

    else
    {
      v14 = 0;
    }

    [(PKMetalRenderer *)v14 setBackgroundColor:v5];
    [(PKMetalRenderer *)*(a1 + 640) setLinedPaper:?];
    v15 = *(a1 + 640);
    if (v15 && ((v16 = *(a1 + 521), *(v15 + 1003) == v16) || (*(v15 + 1003) = v16, (v15 = *v6) != 0)) && (*(v15 + 1088) = *(a1 + 656), (v17 = *(a1 + 640)) != 0) && (*(v17 + 1002) = *(a1 + 522), (v18 = *(a1 + 640)) != 0) && (*(v18 + 1005) = *(a1 + 523), (v19 = *(a1 + 640)) != 0))
    {
      *(v19 + 1006) = *(a1 + 525);
      v20 = *v6;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 352);
    if (v21)
    {
      [(PKMetalRenderer *)v20 setPaperTextureImage:v21];
    }

    CGColorRelease(v5);
  }
}

- (void)setPixelSize:(double)a3 actualSize:(double)a4
{
  if (a1)
  {
    [(PKMetalRendererController *)a1 cancelLongRunningRenders];
    v10 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PKMetalRendererController_setPixelSize_actualSize___block_invoke;
    block[3] = &unk_1E82D8330;
    block[4] = a1;
    *&block[5] = a2;
    *&block[6] = a3;
    *&block[7] = a4;
    *&block[8] = a5;
    dispatch_async(v10, block);
  }
}

- (void)cancelLongRunningRenders
{
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Cancel long-running render.", v3, 2u);
    }

    atomic_fetch_add((a1 + 32), 1u);
  }
}

void __53__PKMetalRendererController_setPixelSize_actualSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Drawing setPixelSize:actualSize:", v10, 2u);
    }

    v5 = *(a1 + 32);
    if (*(v5 + 104) == *(a1 + 40) && *(v5 + 112) == *(a1 + 48))
    {
      *(v5 + 120) = *(a1 + 56);
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 640);
        if (v8)
        {
          v9 = *(a1 + 56);
          *(v8 + 248) = v9;
          *(v8 + 264) = *(v8 + 224) / *&v9;
        }
      }
    }

    else
    {
      *(v5 + 104) = *(a1 + 40);
      *(*(a1 + 32) + 120) = *(a1 + 56);
      [(PKMetalRenderer *)*(*(a1 + 32) + 640) updateActualSize:*(a1 + 64) pixelSize:*(a1 + 40), *(a1 + 48)];
    }

    [(PKMetalRendererController *)*(a1 + 32) resumeLongRunningRenders];
  }
}

- (void)resumeLongRunningRenders
{
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Resume long-running render.", v3, 2u);
    }

    atomic_fetch_add((a1 + 32), 0xFFFFFFFF);
  }
}

- (void)teardown
{
  if (a1)
  {
    [(PKMetalRendererController *)a1 cancelAllRendering];
    v2 = dispatch_semaphore_create(0);
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PKMetalRendererController_teardown__block_invoke;
    block[3] = &unk_1E82D6890;
    v4 = v2;
    v9 = v4;
    v10 = a1;
    dispatch_async(v3, block);

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__PKMetalRendererController_teardown__block_invoke_2;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v4;
    v5 = v4;
    dispatch_async(v3, v6);
  }
}

- (void)cancelAllRendering
{
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Cancel all rendering.", v3, 2u);
    }

    atomic_store(1u, (a1 + 36));
  }
}

intptr_t __37__PKMetalRendererController_teardown__block_invoke(uint64_t a1)
{
  result = dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 40) + 96) = 1;
  return result;
}

intptr_t __37__PKMetalRendererController_teardown__block_invoke_2(uint64_t a1)
{
  v2 = +[PKRendererVSyncController sharedController];
  [(PKRendererVSyncController *)v2 removeRendererController:?];

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKMetalRendererController_teardown__block_invoke_3;
  block[3] = &unk_1E82D6388;
  block[4] = v3;
  dispatch_sync(v4, block);
  return dispatch_semaphore_signal(*(a1 + 40));
}

void __37__PKMetalRendererController_teardown__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 328);
  *(v2 + 328) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 320);
  *(v4 + 320) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 336);
  *(v6 + 336) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 344);
  *(v8 + 344) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 640);
  *(v10 + 640) = 0;

  v12 = *(*(a1 + 32) + 352);
  if (v12)
  {
    CGImageRelease(v12);
    *(*(a1 + 32) + 352) = 0;
  }
}

- (void)dealloc
{
  if (!self->_isTorndown)
  {
    objc_exception_throw(@"PKMetalRendererController was not fully torndown before dealloc.");
  }

  v2.receiver = self;
  v2.super_class = PKMetalRendererController;
  [(PKMetalRendererController *)&v2 dealloc];
}

- (void)setup
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PKMetalRendererController_setup__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

uint64_t __34__PKMetalRendererController_setup__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    atomic_load((v1 + 36));
  }

  return result;
}

- (void)signalVSyncSemaphore:(double)a3 presentationTime:(unint64_t)a4
{
  atomic_store(a4, &self->_lastPresentationTime);
  atomic_store(0, &self->_skipRendersUntilTime);
  kdebug_trace();
  atomic_store(*&a3, &self->_lastFrameDuration);
  if ((_UIUpdateCycleEnabled() & 1) == 0 && (atomic_exchange_explicit(&self->_readyToBeginRender._Value, 1u, memory_order_acquire) & 1) == 0)
  {
    canBeginRenderSemaphore = self->_canBeginRenderSemaphore;

    dispatch_semaphore_signal(canBeginRenderSemaphore);
  }
}

- (void)resumeLongRunningRendersAfterAllWorkIsDone
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKMetalRendererController_resumeLongRunningRendersAfterAllWorkIsDone__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

- (void)setPresentationLayer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__PKMetalRendererController_setPresentationLayer___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __50__PKMetalRendererController_setPresentationLayer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Set presentation layer.", v8, 2u);
    }

    v5 = +[PKRendererVSyncController sharedController];
    [(PKRendererVSyncController *)v5 addRendererController:?];

    v6 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 600));

    if (v6 != WeakRetained)
    {
      objc_storeWeak((*(a1 + 32) + 600), *(a1 + 40));
    }
  }
}

- (void)setMultiplyPresentationLayer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__PKMetalRendererController_setMultiplyPresentationLayer___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __58__PKMetalRendererController_setMultiplyPresentationLayer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Set multiply presentation layer.", v7, 2u);
    }

    v5 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 608));

    if (v5 != WeakRetained)
    {
      objc_storeWeak((*(a1 + 32) + 608), *(a1 + 40));
    }
  }
}

- (uint64_t)renderStrokesSync:(_OWORD *)a3 clippedToStrokeSpaceRect:(CGFloat)a4 strokeTransform:(CGFloat)a5 imageClipRect:(CGFloat)a6
{
  v21 = a2;
  if (a1)
  {
    v22 = a3[1];
    v25[0] = *a3;
    v25[1] = v22;
    v25[2] = a3[2];
    [(PKMetalRendererController *)a1 _drawStrokesAfterClear:v21 clippedToStrokeSpaceRect:v25 strokeTransform:a4 useLayerContext:a5 progress:a6, a7, 0, 0];
    v23 = [(PKMetalRenderer *)*(a1 + 640) newCGImageWithClipRect:a8, a9, a10, a11];
    [(PKMetalRenderer *)*(a1 + 640) teardownOriginalBackFramebuffer];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (uint64_t)_drawStrokesAfterClear:(_OWORD *)a3 clippedToStrokeSpaceRect:(CGFloat)a4 strokeTransform:(CGFloat)a5 useLayerContext:(CGFloat)a6 progress:(CGFloat)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a9;
  if (a1)
  {
    if (atomic_load((a1 + 36)))
    {
      a1 = 0;
    }

    else
    {
      v19 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = [v16 count];
        _os_log_debug_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEBUG, "Draw clear and clipped commands %ld.", buf, 0xCu);
      }

      v20 = *(a1 + 640);
      v21 = a3[1];
      *buf = *a3;
      v27 = v21;
      v28 = a3[2];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __118__PKMetalRendererController__drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_progress___block_invoke;
      v23[3] = &unk_1E82D83A8;
      v24 = v17;
      v25 = a1;
      a1 = [(PKMetalRenderer *)v20 clearAndRenderStrokes:v16 clippedToStrokeSpaceRect:buf strokeTransform:v23 stopBlock:a4, a5, a6, a7];
    }
  }

  return a1;
}

- (void)renderStrokes:(__int128 *)a3 clippedToStrokeSpaceRect:(void *)a4 strokeTransform:(double)a5 imageClipRect:(double)a6 completion:(double)a7
{
  v23 = a2;
  v24 = a4;
  v25 = v24;
  if (a1)
  {
    v26 = a3[1];
    v33[0] = *a3;
    v33[1] = v26;
    v33[2] = a3[2];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __109__PKMetalRendererController_renderStrokes_clippedToStrokeSpaceRect_strokeTransform_imageClipRect_completion___block_invoke;
    v27[3] = &unk_1E82D8358;
    v27[4] = a1;
    v29 = a9;
    v30 = a10;
    v31 = a11;
    v32 = a12;
    v28 = v24;
    [(PKMetalRendererController *)a1 _drawStrokesAfterClear:v23 clippedToStrokeSpaceRect:v33 strokeTransform:0 useLayerContext:v27 renderCompletion:a5, a6, a7, a8];
  }
}

void __109__PKMetalRendererController_renderStrokes_clippedToStrokeSpaceRect_strokeTransform_imageClipRect_completion___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 616);
  v5 = [(PKMetalRenderer *)*(v3 + 640) newCGImageWithClipRect:*(a1 + 56), *(a1 + 64), *(a1 + 72)];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))();
    if (!v5)
    {
      goto LABEL_13;
    }

    v9 = v5;
    goto LABEL_12;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 640);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PKMetalRenderer *)v7 newSixChannelMultiplyCGImageWithClipRect:*(a1 + 56), *(a1 + 64), *(a1 + 72)];
  (*(*(a1 + 40) + 16))();
  if (v5)
  {
    CGImageRelease(v5);
  }

  if (v8)
  {
    v9 = v8;
LABEL_12:
    CGImageRelease(v9);
  }

LABEL_13:
  v10 = *(*(a1 + 32) + 640);

  [(PKMetalRenderer *)v10 teardownOriginalBackFramebuffer];
}

- (void)_drawStrokesAfterClear:(__int128 *)a3 clippedToStrokeSpaceRect:(char)a4 strokeTransform:(void *)a5 useLayerContext:(double)a6 renderCompletion:(double)a7
{
  v17 = a2;
  v18 = a5;
  if (a1)
  {
    v19 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v17, "count")}];
    v20 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__PKMetalRendererController__drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_renderCompletion___block_invoke;
    block[3] = &unk_1E82D8380;
    block[4] = a1;
    v21 = v17;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a9;
    v22 = a3[1];
    v32 = *a3;
    v33 = v22;
    v34 = a3[2];
    v35 = a4;
    v25 = v21;
    v26 = v19;
    v27 = v18;
    v23 = v19;
    dispatch_async(v20, block);
  }
}

- (void)buildRenderCacheForStrokes:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(PKMetalRenderer *)*(a1 + 640) buildRenderCacheForStrokes:v3];
  }
}

uint64_t __126__PKMetalRendererController__drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_renderCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 112);
  v12[0] = *(a1 + 96);
  v12[1] = v9;
  v12[2] = *(a1 + 128);
  [(PKMetalRendererController *)v2 _drawStrokesAfterClear:v3 clippedToStrokeSpaceRect:v12 strokeTransform:v5 useLayerContext:v6 progress:v7, v8, 0, v4];
  [*(a1 + 40) count];
  v10 = *(*(a1 + 56) + 16);

  return v10();
}

BOOL __118__PKMetalRendererController__drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_progress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = atomic_load((v2 + 32));
  return v3 > 0;
}

- (void)setSixChannelBlendingMode:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 616) != a2)
    {
      block[5] = v2;
      block[6] = v3;
      *(a1 + 616) = a2;
      v4 = *(a1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PKMetalRendererController_setSixChannelBlendingMode___block_invoke;
      block[3] = &unk_1E82D6388;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }
}

- (void)setWantsExtendedDynamicRangeContent:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 524) != a2)
    {
      block[5] = v2;
      block[6] = v3;
      *(a1 + 524) = a2;
      v4 = *(a1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKMetalRendererController_setWantsExtendedDynamicRangeContent___block_invoke;
      block[3] = &unk_1E82D6388;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }
}

- (void)setDrawBitmapEraserMask:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 525) != a2)
    {
      v7 = v2;
      v8 = v3;
      *(a1 + 525) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __53__PKMetalRendererController_setDrawBitmapEraserMask___block_invoke;
      v5[3] = &unk_1E82D75A0;
      v5[4] = a1;
      v6 = a2;
      dispatch_async(v4, v5);
    }
  }
}

uint64_t __53__PKMetalRendererController_setDrawBitmapEraserMask___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      *(v2 + 1006) = *(result + 40);
    }
  }

  return result;
}

- (void)setPreviewStrokeAlpha:(uint64_t)a1
{
  if (a1)
  {
    if (vabdd_f64(*(a1 + 632), a2) >= 0.00999999978)
    {
      v5[6] = v2;
      v5[7] = v3;
      *(a1 + 632) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __51__PKMetalRendererController_setPreviewStrokeAlpha___block_invoke;
      v5[3] = &unk_1E82D83D0;
      v5[4] = a1;
      *&v5[5] = a2;
      dispatch_async(v4, v5);
    }
  }
}

double __51__PKMetalRendererController_setPreviewStrokeAlpha___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      result = *(a1 + 40);
      *(v2 + 1064) = result;
    }
  }

  return result;
}

- (void)setPreviewStrokeMaxPoints:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 624) != a2)
    {
      v5[6] = v2;
      v5[7] = v3;
      *(a1 + 624) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __55__PKMetalRendererController_setPreviewStrokeMaxPoints___block_invoke;
      v5[3] = &unk_1E82D83D0;
      v5[4] = a1;
      v5[5] = a2;
      dispatch_async(v4, v5);
    }
  }
}

double __55__PKMetalRendererController_setPreviewStrokeMaxPoints___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      result = *(a1 + 40);
      *(v2 + 1072) = result;
    }
  }

  return result;
}

- (void)setLiveStrokeMode:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 521) != a2)
    {
      v7 = v2;
      v8 = v3;
      *(a1 + 521) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __47__PKMetalRendererController_setLiveStrokeMode___block_invoke;
      v5[3] = &unk_1E82D75A0;
      v5[4] = a1;
      v6 = a2;
      dispatch_async(v4, v5);
    }
  }
}

uint64_t __47__PKMetalRendererController_setLiveStrokeMode___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      v3 = *(result + 40);
      if (*(v2 + 1003) != v3)
      {
        *(v2 + 1003) = v3;
      }
    }
  }

  return result;
}

- (void)setLiveStrokeMaxSize:(double)a3
{
  if (a1)
  {
    if (*(a1 + 656) != a2 || *(a1 + 664) != a3)
    {
      block[7] = v3;
      block[8] = v4;
      *(a1 + 656) = a2;
      *(a1 + 664) = a3;
      v6 = *(a1 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PKMetalRendererController_setLiveStrokeMaxSize___block_invoke;
      block[3] = &unk_1E82D6610;
      block[4] = a1;
      *&block[5] = a2;
      *&block[6] = a3;
      dispatch_async(v6, block);
    }
  }
}

__n128 __50__PKMetalRendererController_setLiveStrokeMaxSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      result = *(a1 + 40);
      v2[68] = result;
    }
  }

  return result;
}

- (void)setFadeOutStrokesMode:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 522) != a2)
    {
      v7 = v2;
      v8 = v3;
      *(a1 + 522) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __51__PKMetalRendererController_setFadeOutStrokesMode___block_invoke;
      v5[3] = &unk_1E82D75A0;
      v5[4] = a1;
      v6 = a2;
      dispatch_async(v4, v5);
    }
  }
}

uint64_t __51__PKMetalRendererController_setFadeOutStrokesMode___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      *(v2 + 1002) = *(result + 40);
    }
  }

  return result;
}

- (void)setLiveStrokeStrokes:(double)a3 animationBounds:(double)a4
{
  v11 = a2;
  v12 = v11;
  if (a1)
  {
    v13 = *(a1 + 24);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__PKMetalRendererController_setLiveStrokeStrokes_animationBounds___block_invoke;
    v14[3] = &unk_1E82D83F8;
    v14[4] = a1;
    v15 = v11;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    dispatch_async(v13, v14);
  }
}

__n128 __66__PKMetalRendererController_setLiveStrokeStrokes_animationBounds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 432);
  *(v3 + 432) = v2;

  v5 = *(a1 + 32) + 440;
  result = *(a1 + 48);
  v7 = *(a1 + 64);
  *v5 = result;
  *(v5 + 16) = v7;
  return result;
}

- (void)liveStrokeParticlesToFrame:(double)a3 strokes:(double)a4 startTime:(double)a5 duration:(double)a6
{
  v15 = a2;
  v16 = v15;
  if (a1)
  {
    v17 = *(a1 + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__PKMetalRendererController_liveStrokeParticlesToFrame_strokes_startTime_duration___block_invoke;
    v18[3] = &unk_1E82D8420;
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v19 = v15;
    v20 = a1;
    v25 = a7;
    v26 = a8;
    dispatch_async(v17, v18);
  }
}

void __83__PKMetalRendererController_liveStrokeParticlesToFrame_strokes_startTime_duration___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v7)
    {
      v8 = *v59;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v59 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v58 + 1) + 8 * i);
          [v10 _pointsCount];
          [v10 _bounds];
          v68.origin.x = v11;
          v68.origin.y = v12;
          v68.size.width = v13;
          v68.size.height = v14;
          v66.origin.x = x;
          v66.origin.y = y;
          v66.size.width = width;
          v66.size.height = height;
          v67 = CGRectUnion(v66, v68);
          x = v67.origin.x;
          y = v67.origin.y;
          width = v67.size.width;
          height = v67.size.height;
        }

        v7 = [v6 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v7);
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    v15 = [*(a1 + 32) count];
    v16 = v15;
    if (v15)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3) < v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          v17 = 0x5555555555555556 * ((v57 - v55) >> 3);
          if (v17 <= v15)
          {
            v17 = v15;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v57 - v55) >> 3) >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v17;
          }

          if (v18 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      bzero(v56, 24 * ((24 * v15 - 24) / 0x18) + 24);
      v56 = (24 * ((24 * v16 - 24) / 0x18) + 24);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = *(a1 + 32);
    v19 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v19)
    {
      v20 = 0;
      v49 = *v52;
      do
      {
        v21 = 0;
        v50 = v19;
        do
        {
          if (*v52 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v51 + 1) + 8 * v21);
          v23 = v55;
          v24 = [v22 _pointsCount];
          v25 = v23 + 24 * v20;
          v26 = *v25;
          v27 = *(v25 + 8);
          v28 = (v27 - *v25) >> 3;
          if (v24 <= v28)
          {
            if (v24 >= v28)
            {
              goto LABEL_39;
            }

            v34 = v26 + 8 * v24;
          }

          else
          {
            v29 = v24 - v28;
            v30 = *(v25 + 16);
            if (v29 > (v30 - v27) >> 3)
            {
              if (!(v24 >> 61))
              {
                v31 = v30 - v26;
                v32 = v31 >> 2;
                if (v31 >> 2 <= v24)
                {
                  v32 = v24;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v33 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v32;
                }

                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v25, v33);
              }

              std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
            }

            bzero(*(v25 + 8), 8 * v29);
            v34 = v27 + 8 * v29;
          }

          *(v25 + 8) = v34;
LABEL_39:
          v35 = [v22 _pointsCount];
          if (v35)
          {
            for (j = 0; j != v35; ++j)
            {
              [v22 _locationAtIndex:j];
              v39 = *(a1 + 48) + *(a1 + 64) * ((v37 - x) / width);
              v40 = *(a1 + 56) + *(a1 + 72) * ((v38 - y) / height);
              v41 = v39 - v37;
              v42 = v40 - v38;
              v43 = sqrt(v42 * v42 + v41 * v41);
              if (v43 > 100.0)
              {
                v39 = v37 + v41 * (1.0 / v43) * 100.0;
                v40 = v38 + v42 * (1.0 / v43) * 100.0;
              }

              *&v44 = v39;
              v45 = v40;
              *(&v44 + 1) = v45;
              *(*(v55 + 24 * v20) + 8 * j) = v44;
            }
          }

          ++v20;
          ++v21;
        }

        while (v21 != v50);
        v19 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v19);
    }

    v46 = *(a1 + 40);
    if (v46)
    {
      v47 = *(v46 + 640);
    }

    else
    {
      v47 = 0;
    }

    [PKMetalRenderer generateLiveStrokeCachesForStrokes:v47 destinationLocations:*(a1 + 32) startTime:? duration:?];
    v62 = &v55;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v62);
  }
}

- (void)setLiveStrokeElapsedTime:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 576) != a2)
    {
      v5[6] = v2;
      v5[7] = v3;
      *(a1 + 576) = a2;
      v4 = *(a1 + 24);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __54__PKMetalRendererController_setLiveStrokeElapsedTime___block_invoke;
      v5[3] = &unk_1E82D83D0;
      v5[4] = a1;
      *&v5[5] = a2;
      dispatch_async(v4, v5);
    }
  }
}

double __54__PKMetalRendererController_setLiveStrokeElapsedTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      result = *(a1 + 40);
      *(v2 + 1080) = result;
    }
  }

  return result;
}

- (void)setResourceCacheSize:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__PKMetalRendererController_setResourceCacheSize___block_invoke;
    v3[3] = &unk_1E82D83D0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void __50__PKMetalRendererController_setResourceCacheSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[80];
    if (v2)
    {
      v2 = v2[24];
    }
  }

  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v5 = [(PKMetalResourceHandler *)v3 strokeRenderCache];
  if (v5)
  {
    v5[8] = v4;
  }
}

- (void)purgeRenderCachesForStrokes:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 copy];
    v6 = *(a1 + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PKMetalRendererController_purgeRenderCachesForStrokes___block_invoke;
    v8[3] = &unk_1E82D6890;
    v8[4] = a1;
    v9 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

- (void)setPaperTextureImage:(uint64_t)a1
{
  if (a1)
  {
    v3 = CGImageRetain(image);
    v4 = *(a1 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PKMetalRendererController_setPaperTextureImage___block_invoke;
    v5[3] = &unk_1E82D83D0;
    v5[4] = a1;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void __50__PKMetalRendererController_setPaperTextureImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Set background image", v7, 2u);
    }

    CGImageRelease(*(*(a1 + 32) + 352));
    *(*(a1 + 32) + 352) = CGImageRetain(*(a1 + 40));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 640);
    }

    else
    {
      v6 = 0;
    }

    [(PKMetalRenderer *)v6 setPaperTextureImage:?];
  }

  CGImageRelease(*(a1 + 40));
}

- (void)setBackgroundColor:(uint64_t)a1
{
  if (a1)
  {
    v3 = CGColorRetain(color);
    v4 = *(a1 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__PKMetalRendererController_setBackgroundColor___block_invoke;
    v5[3] = &unk_1E82D83D0;
    v5[4] = a1;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void __48__PKMetalRendererController_setBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Set background color", v7, 2u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 640);
    }

    else
    {
      v6 = 0;
    }

    [(PKMetalRenderer *)v6 setBackgroundColor:?];
  }

  CGColorRelease(*(a1 + 40));
}

- (void)setLiveRenderingOverrideColor:(uint64_t)a1
{
  if (a1)
  {
    v3 = CGColorRetain(color);
    v4 = *(a1 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PKMetalRendererController_setLiveRenderingOverrideColor___block_invoke;
    v5[3] = &unk_1E82D83D0;
    v5[4] = a1;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void __59__PKMetalRendererController_setLiveRenderingOverrideColor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Set live rendering override color", v7, 2u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 640);
    }

    else
    {
      v6 = 0;
    }

    [(PKMetalRenderer *)v6 setLiveRenderingOverrideColor:?];
  }

  CGColorRelease(*(a1 + 40));
}

- (__n128)setStrokeTransform:(uint64_t)a1
{
  if (a1)
  {
    v2 = *a2;
    v3 = a2[2];
    *(a1 + 720) = a2[1];
    *(a1 + 736) = v3;
    *(a1 + 704) = v2;
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PKMetalRendererController_setStrokeTransform___block_invoke;
    block[3] = &unk_1E82D6520;
    block[4] = a1;
    v5 = a2[1];
    v8 = *a2;
    v9 = v5;
    v10 = a2[2];
    dispatch_async(v4, block);
  }

  return result;
}

double __48__PKMetalRendererController_setStrokeTransform___block_invoke(uint64_t a1)
{
  v3 = (*(a1 + 32) + 376);
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v3[1] = *(a1 + 56);
  v3[2] = v5;
  *v3 = v4;
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!atomic_load((v6 + 36)))
  {
    v6 = *(a1 + 32);
LABEL_4:
    v13 = v1;
    v14 = v2;
    v8 = *(a1 + 56);
    v11[0] = *(a1 + 40);
    v11[1] = v8;
    v12 = *(a1 + 72);
    v9.n128_u64[1] = *(&v12 + 1);
    v9.n128_u64[0] = *(v6 + 360);
    *&v4 = [(PKMetalRendererController *)v6 _updateRendererStrokeTransformWithTransform:v11 offset:v9, *(v6 + 368)].n128_u64[0];
  }

  return *&v4;
}

- (__n128)_updateRendererStrokeTransformWithTransform:(__n128)result offset:(double)a4
{
  if (a1)
  {
    CGAffineTransformMakeTranslation(&t1, -result.n128_f64[0], -a4);
    v6 = a2[1];
    *&v10.a = *a2;
    *&v10.c = v6;
    *&v10.tx = a2[2];
    CGAffineTransformConcat(&v12, &t1, &v10);
    v7 = *&v12.c;
    *a2 = *&v12.a;
    a2[1] = v7;
    result.n128_u64[0] = *&v12.tx;
    a2[2] = *&v12.tx;
    v8 = *(a1 + 640);
    if (v8)
    {
      result = *a2;
      v9 = a2[2];
      *(v8 + 288) = a2[1];
      *(v8 + 304) = v9;
      *(v8 + 272) = result;
    }
  }

  return result;
}

- (void)setContentZoomScale:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 552) = a2;
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__PKMetalRendererController_setContentZoomScale___block_invoke;
    v3[3] = &unk_1E82D83D0;
    v3[4] = a1;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

double __49__PKMetalRendererController_setContentZoomScale___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 640);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 1032) = result;
  }

  return result;
}

- (void)setLinedPaper:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 copy];
    v6 = *(a1 + 568);
    *(a1 + 568) = v5;

    v7 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKMetalRendererController_setLinedPaper___block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_async(v7, block);
  }
}

void __43__PKMetalRendererController_setLinedPaper___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
  }

  else
  {
    v2 = 0;
  }

  [(PKMetalRenderer *)v2 setLinedPaper:?];
}

- (__n128)setPaperTransform:(uint64_t)a1
{
  if (a1)
  {
    v2 = *a2;
    v3 = a2[2];
    *(a1 + 768) = a2[1];
    *(a1 + 784) = v3;
    *(a1 + 752) = v2;
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PKMetalRendererController_setPaperTransform___block_invoke;
    block[3] = &unk_1E82D6520;
    block[4] = a1;
    v5 = a2[1];
    v8 = *a2;
    v9 = v5;
    v10 = a2[2];
    dispatch_async(v4, block);
  }

  return result;
}

__n128 __47__PKMetalRendererController_setPaperTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (!atomic_load((v1 + 36)))
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 640);
        if (v4)
        {
          result = *(a1 + 40);
          v6 = *(a1 + 56);
          *(v4 + 1136) = *(a1 + 72);
          *(v4 + 1120) = v6;
          *(v4 + 1104) = result;
        }
      }
    }
  }

  return result;
}

- (void)setViewScissor:(double)a3
{
  if (a1)
  {
    *(a1 + 672) = a2;
    *(a1 + 680) = a3;
    *(a1 + 688) = a4;
    *(a1 + 696) = a5;
    v5 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PKMetalRendererController_setViewScissor___block_invoke;
    block[3] = &unk_1E82D8330;
    block[4] = a1;
    *&block[5] = a2;
    *&block[6] = a3;
    *&block[7] = a4;
    *&block[8] = a5;
    dispatch_async(v5, block);
  }
}

BOOL __44__PKMetalRendererController_setViewScissor___block_invoke(_BOOL8 result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    return [(PKMetalRenderer *)0 setViewScissor:*(result + 48), *(result + 56), *(result + 64)];
  }

  if (!atomic_load((v1 + 36)))
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    v5 = *(result + 48);
    v6 = *(result + 56);
    v7 = *(result + 64);
    if (v3)
    {
      v8 = *(v3 + 640);
    }

    else
    {
      v8 = 0;
    }

    return [(PKMetalRenderer *)v8 setViewScissor:v4, v5, v6, v7];
  }

  return result;
}

- (void)setBackboardPaperMultiply:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__PKMetalRendererController_setBackboardPaperMultiply___block_invoke;
    v3[3] = &unk_1E82D83D0;
    v3[4] = a1;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

double __55__PKMetalRendererController_setBackboardPaperMultiply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (!atomic_load((v1 + 36)))
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 640);
        if (v4)
        {
          result = *(a1 + 40);
          *(v4 + 1040) = result;
        }
      }
    }
  }

  return result;
}

- (void)setCombineStrokesAllowed:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 526) = a2;
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __54__PKMetalRendererController_setCombineStrokesAllowed___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

double __54__PKMetalRendererController_setCombineStrokesAllowed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 640);
  }

  else
  {
    v3 = 0;
  }

  *&result = [(PKMetalRenderer *)v3 setCombineStrokesAllowed:v1].n128_u64[0];
  return result;
}

- (void)setIsPDFCanvasForAnalytics:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__PKMetalRendererController_setIsPDFCanvasForAnalytics___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

- (uint64_t)drawStrokes:(void *)a3 intoTile:(uint64_t)a4 renderCount:(char)a5 offscreen:
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = *(a1 + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__PKMetalRendererController_drawStrokes_intoTile_renderCount_offscreen___block_invoke;
    v15[3] = &unk_1E82D8470;
    v15[4] = a1;
    v16 = v10;
    v19 = a4;
    v17 = v9;
    v18 = &v21;
    v20 = a5;
    dispatch_sync(v12, v15);
    v13 = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void __72__PKMetalRendererController_drawStrokes_intoTile_renderCount_offscreen___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (*(v4 + 85))
      {
        return;
      }

      v4 = atomic_load((v4 + 16));
    }

    if (v4 == *(a1 + 64))
    {
      v5 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 40);
        *buf = 138412290;
        v25 = v20;
        _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Draw tile %@.", buf, 0xCu);
      }

      v6 = [*(a1 + 48) count];
      v7 = *(a1 + 32);
      if (v6)
      {
        if (v7)
        {
          v7 = v7[80];
        }

        v8 = v7;
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = *(a1 + 72);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __72__PKMetalRendererController_drawStrokes_intoTile_renderCount_offscreen___block_invoke_34;
        v21[3] = &unk_1E82D8448;
        v21[4] = *(a1 + 32);
        v12 = v9;
        v13 = *(a1 + 64);
        v22 = v12;
        v23 = v13;
        [(PKMetalRenderer *)v8 updateTile:v12 strokes:v10 clear:1 waitUntilCompleted:1 offscreen:v11 stopBlock:v21];

        v14 = *(a1 + 32);
        if (v14)
        {
          v15 = *(v14 + 640);
        }

        else
        {
          v15 = 0;
        }

        [(PKMetalRenderer *)v15 purgeOriginalBackFramebuffer];
        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = atomic_load((v16 + 32));
          if (v17 > 0)
          {
            goto LABEL_21;
          }
        }

        v18 = *(a1 + 40);
        if (v18)
        {
          if (*(v18 + 85))
          {
LABEL_21:

            return;
          }

          v18 = atomic_load((v18 + 16));
        }

        if (v18 == *(a1 + 64))
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        goto LABEL_21;
      }

      if (v7)
      {
        v19 = v7[80];
      }

      else
      {
        v19 = 0;
      }

      [PKMetalRenderer clearTile:v19 waitUntilCompleted:*(a1 + 40)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

BOOL __72__PKMetalRendererController_drawStrokes_intoTile_renderCount_offscreen___block_invoke_34(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = atomic_load((v1 + 32));
    if (v2 > 0)
    {
      return 1;
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (*(v3 + 85))
    {
      return 1;
    }

    v3 = atomic_load((v3 + 16));
  }

  return v3 != a1[6];
}

- (void)updateTiles:(void *)a3 withNewStrokes:(void *)a4 completionBlock:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKMetalRendererController_updateTiles_withNewStrokes_completionBlock___block_invoke;
    v11[3] = &unk_1E82D67F0;
    v12 = v7;
    v13 = a1;
    v14 = v8;
    v15 = v9;
    dispatch_async(v10, v11);
  }
}

void __72__PKMetalRendererController_updateTiles_withNewStrokes_completionBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [*(a1 + 32) lastObject];

        [(PKMetalRenderer *)*(*(a1 + 40) + 640) updateTile:v6 strokes:*(a1 + 48) clear:0 waitUntilCompleted:v6 == v7 offscreen:0 stopBlock:0];
        v8 = *(a1 + 56);
        if (v8 && v6 == v7)
        {
          (*(v8 + 16))();
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)renderImageTexture:(__int128 *)a3 imageTextureTransform:(void *)a4 withTiles:(__int128 *)a5 tileTransform:
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    v11 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PKMetalRendererController_renderImageTexture_imageTextureTransform_withTiles_tileTransform___block_invoke;
    block[3] = &unk_1E82D8498;
    block[4] = a1;
    v15 = v9;
    v12 = a3[1];
    v17 = *a3;
    v18 = v12;
    v19 = a3[2];
    v16 = v10;
    v13 = a5[1];
    v20 = *a5;
    v21 = v13;
    v22 = a5[2];
    dispatch_sync(v11, block);
  }
}

void __94__PKMetalRendererController_renderImageTexture_imageTextureTransform_withTiles_tileTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Render tiles.", buf, 2u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 640);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 72);
    *buf = *(a1 + 56);
    v13 = v7;
    v14 = *(a1 + 88);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 120);
    v11[0] = *(a1 + 104);
    v11[1] = v10;
    v11[2] = *(a1 + 136);
    [(PKMetalRenderer *)v6 renderImageTexture:v8 imageTextureTransform:buf withTiles:v9 tileTransform:v11 waitUntilCompleted:1];
  }
}

- (void)renderTilesIntoTiles:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__PKMetalRendererController_renderTilesIntoTiles___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

void __50__PKMetalRendererController_renderTilesIntoTiles___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Render tile into tile.", v11, 2u);
    }

    v5 = [*(a1 + 40) keyEnumerator];
    v6 = [v5 nextObject];
    if (v6)
    {
      do
      {
        v7 = [v5 nextObject];
        v8 = *(a1 + 32);
        if (v8)
        {
          v8 = v8[80];
        }

        v9 = v8;
        v10 = [*(a1 + 40) objectForKey:v6];
        [(PKMetalRenderer *)v9 renderTiles:v10 intoTile:v6 waitUntilCompleted:v7 == 0];

        v6 = v7;
      }

      while (v7);
    }
  }
}

- (void)drawTexture:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__PKMetalRendererController_drawTexture___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __41__PKMetalRendererController_drawTexture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = atomic_load((v2 + 36))) == 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Draw texture.", v7, 2u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 640);
    }

    else
    {
      v6 = 0;
    }

    [(PKMetalRenderer *)v6 renderTexture:?];
  }
}

- (void)flushMemoryIfPossible
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PKMetalRendererController_flushMemoryIfPossible__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void __50__PKMetalRendererController_flushMemoryIfPossible__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (atomic_load((v1 + 36)))
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [(PKMetalRenderer *)*(v3 + 640) flushMemoryIfPossible];
  }

  else
  {
LABEL_5:
    [(PKMetalRenderer *)0 flushMemoryIfPossible];
  }
}

- (void)purgeOriginalBackFramebuffer
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKMetalRendererController_purgeOriginalBackFramebuffer__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void __57__PKMetalRendererController_purgeOriginalBackFramebuffer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (atomic_load((v1 + 36)))
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [(PKMetalRenderer *)*(v3 + 640) purgeOriginalBackFramebuffer];
  }

  else
  {
LABEL_5:
    [(PKMetalRenderer *)0 purgeOriginalBackFramebuffer];
  }
}

- (void)drawStrokesAfterClear:(__int128 *)a3 clippedToStrokeSpaceRect:(char)a4 strokeTransform:(void *)a5 useLayerContext:(double)a6 completion:(double)a7
{
  v17 = a2;
  v18 = a5;
  v19 = v18;
  if (a1)
  {
    v20 = a3[1];
    v23[0] = *a3;
    v23[1] = v20;
    v23[2] = a3[2];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __119__PKMetalRendererController_drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_completion___block_invoke;
    v21[3] = &unk_1E82D6818;
    v22 = v18;
    [(PKMetalRendererController *)a1 _drawStrokesAfterClear:v17 clippedToStrokeSpaceRect:v23 strokeTransform:a4 useLayerContext:v21 renderCompletion:a6, a7, a8, a9];
  }
}

void __119__PKMetalRendererController_drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __119__PKMetalRendererController_drawStrokesAfterClear_clippedToStrokeSpaceRect_strokeTransform_useLayerContext_completion___block_invoke_2;
  v5[3] = &unk_1E82D84C0;
  v6 = *(a1 + 32);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (double)_latestLatency
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  if (v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__PKMetalRendererController__latestLatency__block_invoke;
    v4[3] = &unk_1E82D6868;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[3];
  }

  else
  {
    v2 = 0.0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

double __43__PKMetalRendererController__latestLatency__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 592);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)drawingBeganWithStroke:(char)a3 forPreview:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKMetalRendererController_drawingBeganWithStroke_forPreview___block_invoke;
    block[3] = &unk_1E82D75C8;
    block[4] = a1;
    v10 = a3;
    v9 = v5;
    dispatch_sync(v7, block);
  }
}

void __63__PKMetalRendererController_drawingBeganWithStroke_forPreview___block_invoke(uint64_t a1)
{
  v2 = qword_1C801D0D0[*&_MergedGlobals_115 < 0.01];
  v3 = *(a1 + 32);
  os_unfair_lock_lock((v3 + 224));
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 216) = v2;
  os_unfair_lock_unlock((v3 + 224));
  v4 = *(a1 + 32);
  os_unfair_lock_lock((v4 + 312));
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 304) = v2;
  os_unfair_lock_unlock((v4 + 312));
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 473) = *(a1 + 48);
  *(*(a1 + 32) + 488) = CACurrentMediaTime();
  v5 = [*(a1 + 40) ink];
  v6 = [v5 identifier];
  v7 = *(a1 + 32);
  v8 = *(v7 + 480);
  *(v7 + 480) = v6;

  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_8;
  }

  if (atomic_load((v9 + 36)))
  {
    return;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 640);
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  v13 = *(a1 + 40);

  [PKMetalRenderer drawingBeganWithStroke:v12 forPreview:v13];
}

- (void)_recordStrokeStatistics
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 224));
    v2 = *(a1 + 152);
    os_unfair_lock_unlock((a1 + 224));
    if (v2)
    {
      v3 = PKRunningStat::min((a1 + 144));
      v4 = PKRunningStat::mean((a1 + 144)) * 1000.0;
      v5 = PKRunningStat::max((a1 + 144)) * 1000.0;
      v6 = PKRunningStat::variance((a1 + 144));
      os_unfair_lock_lock((a1 + 224));
      v7 = *(a1 + 160);
      os_unfair_lock_unlock((a1 + 224));
      os_unfair_lock_lock((a1 + 224));
      v8 = *(a1 + 152);
      os_unfair_lock_unlock((a1 + 224));
      v9 = v7 / v8;
      v10 = os_log_create("com.apple.pencilkit", "Latency");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134219008;
        v24 = v3 * 1000.0;
        v25 = 2048;
        v26 = v4;
        v27 = 2048;
        v28 = sqrt(v6) * 1000.0;
        v29 = 2048;
        v30 = v5;
        v31 = 2048;
        v32 = v9;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Stroke latency min: %g, mean: %g, std deviation: %g, max: %g, percentage high: %g", &v23, 0x34u);
      }

      *(a1 + 592) = v4;
      v11 = *(a1 + 473);
      v12 = +[PKStatisticsManager sharedStatisticsManager];
      v13 = v12;
      if (v11)
      {
        [PKStatisticsManager recordHoverLatency:v12 mean:? max:? shadowEnabled:? isInPDF:?];
      }

      else
      {
        [PKStatisticsManager recordLatency:v12 mean:? max:? percentageOverLatencyThreshold:? isInPDF:?];
      }
    }

    os_unfair_lock_lock((a1 + 312));
    v14 = *(a1 + 240);
    os_unfair_lock_unlock((a1 + 312));
    if (v14)
    {
      v15 = PKRunningStat::min((a1 + 232));
      v16 = PKRunningStat::mean((a1 + 232)) * 1000.0;
      v17 = PKRunningStat::max((a1 + 232)) * 1000.0;
      v18 = PKRunningStat::variance((a1 + 232));
      os_unfair_lock_lock((a1 + 312));
      v19 = *(a1 + 248);
      os_unfair_lock_unlock((a1 + 312));
      os_unfair_lock_lock((a1 + 312));
      v20 = *(a1 + 240);
      os_unfair_lock_unlock((a1 + 312));
      v21 = os_log_create("com.apple.pencilkit", "Latency");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134219008;
        v24 = v15 * 1000.0;
        v25 = 2048;
        v26 = v16;
        v27 = 2048;
        v28 = sqrt(v18) * 1000.0;
        v29 = 2048;
        v30 = v17;
        v31 = 2048;
        v32 = v19 / v20;
        _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Stroke latency with prediction min: %g, mean: %g, std deviation: %g, max: %g, percentage high: %g", &v23, 0x34u);
      }

      if ((*(a1 + 473) & 1) == 0)
      {
        v22 = +[PKStatisticsManager sharedStatisticsManager];
        [PKStatisticsManager recordPerceivedLatency:v22 mean:? max:? isInPDF:?];
      }
    }
  }
}

- (void)drawingEnded:(void *)a3 finishStrokeBlock:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PKMetalRendererController_drawingEnded_finishStrokeBlock___block_invoke;
    block[3] = &unk_1E82D6840;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

void __60__PKMetalRendererController_drawingEnded_finishStrokeBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (atomic_load((v2 + 36)))
    {
      return;
    }

    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  [(PKMetalRendererController *)v4 _logStrokeDuration];
  [(PKMetalRendererController *)*(a1 + 32) _recordStrokeStatistics];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[80];
  }

  v6 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PKMetalRendererController_drawingEnded_finishStrokeBlock___block_invoke_2;
  v8[3] = &unk_1E82D63B0;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [(PKMetalRenderer *)v6 drawingEnded:v7 finishStrokeBlock:v8];
}

- (void)_logStrokeDuration
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CACurrentMediaTime();
    v3 = os_log_create("com.apple.pencilkit", "Stroke Drawing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2 - *(a1 + 488);
      v5 = *(a1 + 480);
      v6 = @"NO";
      if (*(a1 + 473))
      {
        v6 = @"YES";
      }

      v7 = 134218498;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Stroke Duration: %.3f, ink: %@, forPreview: %@", &v7, 0x20u);
    }
  }
}

uint64_t __60__PKMetalRendererController_drawingEnded_finishStrokeBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)drawingCancelledForPreview:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__PKMetalRendererController_drawingCancelledForPreview___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void __56__PKMetalRendererController_drawingCancelledForPreview___block_invoke(uint64_t a1)
{
  if (!atomic_load((*(a1 + 32) + 36)))
  {
    v3 = *(a1 + 32);
    if (*(v3 + 473) == 1)
    {
      [(PKMetalRendererController *)v3 _logStrokeDuration];
      [(PKMetalRendererController *)*(a1 + 32) _recordStrokeStatistics];
      v3 = *(a1 + 32);
    }

    [(PKMetalRenderer *)*(v3 + 640) drawingCancelledForPreview:?];
    *(*(a1 + 32) + 472) = 1;
  }
}

- (void)setAlternativeStrokes:(double)a3 alpha:(double)a4 originalStrokeAlpha:
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 24);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PKMetalRendererController_setAlternativeStrokes_alpha_originalStrokeAlpha___block_invoke;
    v10[3] = &unk_1E82D84E8;
    v10[4] = a1;
    v11 = v7;
    v12 = a3;
    v13 = a4;
    dispatch_async(v9, v10);
  }
}

- (void)changeRenderSize
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKMetalRendererController_changeRenderSize__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void __45__PKMetalRendererController_changeRenderSize__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!v3 || (v4 = atomic_load((v3 + 36))) == 0)
  {
    v7 = v1;
    v8 = v2;
    v5 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Drawing resize.", v6, 2u);
    }
  }
}

uint64_t __51__PKMetalRendererController__present_setDirtyRect___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 presentedTime];
  v5 = v4 - *(a1 + 40);
  if (v5 > 0.0)
  {
    v6 = v5 + *&qword_1ED6A4EB8;
    v7 = v4 + *&qword_1ED6A4EB8 - *(a1 + 48);
    v8 = *(a1 + 32);
    os_unfair_lock_lock((v8 + 224));
    v9 = *(v8 + 152);
    os_unfair_lock_unlock((v8 + 224));
    if (v9 < 10 || (v10 = PKRunningStat::mean((*(a1 + 32) + 144)), v6 < v10 + v10))
    {
      PKRunningStat::push((*(a1 + 32) + 144), v6);
      PKRunningStat::push((*(a1 + 32) + 232), v7);
    }

    return kdebug_trace();
  }

  return result;
}

uint64_t __51__PKMetalRendererController__present_setDirtyRect___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  if (*(a1 + 48))
  {
    [MEMORY[0x1E6979518] setLowLatency:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [MEMORY[0x1E6979518] setAnimationDuration:0.0];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) present];
    (*(*(a1 + 48) + 16))(*(a1 + 56), *(a1 + 64));
  }

  return [MEMORY[0x1E6979518] commit];
}

- (void)_renderLiveStrokeAndPresentWithTransform:(uint64_t)a1 at:(_OWORD *)a2 setDirtyRect:(int)a3
{
  if (a1)
  {
    kdebug_trace();
    WeakRetained = objc_loadWeakRetained((a1 + 600));
    [WeakRetained contentsScale];
    v8 = v7;

    v9 = objc_loadWeakRetained((a1 + 600));
    [v9 drawableSize];
    v11 = v10;
    v13 = v12;

    v14 = *(a1 + 640);
    v15 = a2[1];
    *&t1.a = *a2;
    *&t1.c = v15;
    *&t1.tx = a2[2];
    v16 = v14;
    CGAffineTransformMakeScale(&t2, v8, v8);
    CGAffineTransformConcat(&aBlock, &t1, &t2);
    [(PKMetalRenderer *)v16 renderLiveStrokeWithTransform:v11 renderBufferSize:v13];

    kdebug_trace();
    v17 = *(a1 + 328);
    v18 = *(a1 + 344);
    v19 = *(a1 + 320);
    v20 = *(a1 + 328);
    *(a1 + 328) = 0;

    v21 = *(a1 + 320);
    *(a1 + 320) = 0;

    v22 = *(a1 + 344);
    *(a1 + 344) = 0;

    v23 = *(a1 + 336);
    *(a1 + 336) = 0;

    v47 = v19;
    if (v19)
    {
      v24 = objc_loadWeakRetained((a1 + 528));
      v25 = objc_opt_respondsToSelector();
    }

    else
    {
      v25 = 0;
    }

    v26 = [*(a1 + 88) copy];
    [*(a1 + 88) removeAllObjects];
    v48 = *(a1 + 640);
    kdebug_trace();
    [*(a1 + 560) latestTimestamp];
    v28 = v27;
    [*(a1 + 560) latestNonPredictedTimestamp];
    v30 = v29;
    v31 = objc_loadWeakRetained((a1 + 600));
    [v31 setInputTime:v30];

    if (v17 && v30 > 0.0)
    {
      v32 = 6;
      if (byte_1EC291590)
      {
        v32 = 8;
      }

      if (*(a1 + 136) > v32)
      {
        *&t1.a = MEMORY[0x1E69E9820];
        *&t1.b = 3221225472;
        *&t1.c = __51__PKMetalRendererController__present_setDirtyRect___block_invoke;
        *&t1.d = &unk_1E82D8510;
        t1.ty = v30;
        v54 = v28;
        *&t1.tx = a1;
        [v17 addPresentedHandler:&t1];
      }
    }

    v33 = _Block_copy(*(a1 + 424));
    *&t2.a = *(a1 + 360);
    if (v17 && a3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = *(a1 + 640);
      if (v34)
      {
        v35 = v34[92];
        v36 = v34[93];
        v37 = v34[94];
        v38 = v34[95];
      }

      else
      {
        v36 = 0.0;
        v37 = 0.0;
        v38 = 0.0;
        v35 = 0.0;
      }

      [v17 setDirtyRect:{v35, v36, v37, v38}];
      [v18 setDirtyRect:{v35, v36, v37, v38}];
    }

    v39 = (v33 | [v26 count]) != 0;
    if (v33)
    {
      v40 = 0;
    }

    else
    {
      v40 = v17;
    }

    if (v33)
    {
      v41 = 0;
    }

    else
    {
      v41 = v18;
    }

    [(PKMetalRenderer *)v48 finishLiveStrokeAndPresentDrawable:v40 multiplyDrawable:v41 waitUntilScheduled:v39];
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 3221225472;
    *&aBlock.c = __51__PKMetalRendererController__present_setDirtyRect___block_invoke_2;
    *&aBlock.d = &unk_1E82D8538;
    v42 = v33;
    v51 = v42;
    v43 = v26;
    *&aBlock.tx = v43;
    v44 = v17;
    *&aBlock.ty = v44;
    v52 = *&t2.a;
    v45 = _Block_copy(&aBlock);
    if (v33)
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v45);
    }

    else if (v39)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v45);
    }

    if (v25)
    {
      v46 = objc_loadWeakRetained((a1 + 528));
      [v46 metalRendererController:a1 didCommitRenderingIntoTexture:v47];
    }

    kdebug_trace();
  }
}

- (void)pokeEventDispatcher
{
  if (a1 && (_UIUpdateCycleEnabled() & 1) == 0)
  {
    v1 = MEMORY[0x1E69E96A0];

    dispatch_async(v1, &__block_literal_global_54);
  }
}

void __48__PKMetalRendererController_pokeEventDispatcher__block_invoke()
{
  v0 = [*MEMORY[0x1E69DDA98] valueForKeyPath:@"eventDispatcher"];
  [v0 eventFetcherDidReceiveEvents:0];
}

- (void)renderWithTransform:(double)a3 inputScale:(double)a4 at:
{
  if (a1)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v5 = a2[1];
    v7 = *a2;
    v8 = v5;
    block[2] = __63__PKMetalRendererController_renderWithTransform_inputScale_at___block_invoke;
    block[3] = &unk_1E82D8560;
    block[4] = a1;
    v9 = a2[2];
    v10 = a3;
    v11 = a4;
    dispatch_async(v4, block);
  }
}

void __63__PKMetalRendererController_renderWithTransform_inputScale_at___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v4 = (a1 + 40);
    goto LABEL_12;
  }

  v3 = *(v2 + 640);
  if (v3)
  {
    *(v3 + 1001) = 1;
    v2 = *(a1 + 32);
    v4 = (a1 + 40);
    v5 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = v5;
    v17 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = (a1 + 40);
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = v14;
    v17 = *(a1 + 72);
  }

  objc_copyStruct((v2 + 800), &v15, 48, 1, 0);
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v6 + 648) = *(a1 + 88);
    v7 = *(a1 + 32);
    goto LABEL_6;
  }

LABEL_12:
  v7 = 0;
LABEL_6:
  v8 = *v4;
  v9 = v4[2];
  v16 = v4[1];
  v17 = v9;
  v15 = v8;
  if ([PKMetalRendererController _renderAheadWithTransform:v7 at:&v15])
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      [(PKMetalRenderer *)*(v10 + 640) getAndRenderNewPoints:?];
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = *v4;
    v13 = v4[2];
    v16 = v4[1];
    v17 = v13;
    v15 = v12;
    [PKMetalRendererController _renderLiveStrokeAndPresentWithTransform:v11 at:&v15 setDirtyRect:0];
    ++*(*(a1 + 32) + 136);
  }
}

- (uint64_t)_renderAheadWithTransform:(uint64_t)a1 at:(_OWORD *)a2
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 528));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (*(a1 + 320))
    {
      v6 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        v7 = "Already had texture target!";
LABEL_9:
        _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, v7, &buf, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v31 = objc_loadWeakRetained((a1 + 528));
    v32 = [v31 nextTextureTargetForMetalRendererController:a1];
    v33 = *(a1 + 320);
    *(a1 + 320) = v32;

    if (*(a1 + 320))
    {
      goto LABEL_11;
    }

LABEL_61:
    v29 = 0;
    goto LABEL_23;
  }

  if (!*(a1 + 328))
  {
    v34 = objc_loadWeakRetained((a1 + 600));
    v35 = [v34 isDrawableAvailable];

    if ((v35 & 1) == 0)
    {
      v22 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEFAULT, "PKMetalRendererController: No drawable available; skipping frame", &buf, 2u);
      }

      v29 = 0;
      goto LABEL_22;
    }

    v36 = objc_loadWeakRetained((a1 + 600));
    v37 = [v36 nextDrawable];
    v38 = *(a1 + 328);
    *(a1 + 328) = v37;

    if (!*(a1 + 328))
    {
      v39 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_DEFAULT, "No drawable available, trying discardContents", &buf, 2u);
      }

      v40 = objc_loadWeakRetained((a1 + 600));
      [v40 discardContents];

      v41 = objc_loadWeakRetained((a1 + 600));
      v42 = [v41 nextDrawable];
      v43 = *(a1 + 328);
      *(a1 + 328) = v42;

      if (!*(a1 + 328))
      {
        v44 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.a) = 0;
          _os_log_error_impl(&dword_1C7CCA000, v44, OS_LOG_TYPE_ERROR, "Unable to setup current drawable", &buf, 2u);
        }
      }
    }

    v45 = objc_loadWeakRetained((a1 + 608));
    v46 = v45 == 0;

    if (!v46)
    {
      v47 = objc_loadWeakRetained((a1 + 608));
      v48 = [v47 nextDrawable];
      v49 = *(a1 + 344);
      *(a1 + 344) = v48;

      v50 = objc_loadWeakRetained((a1 + 608));
      LODWORD(v47) = v50 == 0;

      if (v47)
      {
        v51 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.a) = 0;
          _os_log_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_DEFAULT, "No multiply drawable available, trying discardContents", &buf, 2u);
        }

        v52 = objc_loadWeakRetained((a1 + 608));
        [v52 discardContents];

        v53 = objc_loadWeakRetained((a1 + 608));
        v54 = [v53 nextDrawable];
        v55 = *(a1 + 344);
        *(a1 + 344) = v54;
      }

      if (!*(a1 + 344))
      {
        v56 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.a) = 0;
          _os_log_error_impl(&dword_1C7CCA000, v56, OS_LOG_TYPE_ERROR, "Unable to setup current multiply drawable", &buf, 2u);
        }
      }
    }

    v57 = *(a1 + 328);
    if (v57)
    {
      v58 = [v57 texture];
      v59 = [v58 width];
      v60 = [v58 height];
      if (*(a1 + 104) != v59 || *(a1 + 112) != v60)
      {
        v61 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v71 = *(a1 + 104);
          v72 = *(a1 + 112);
          LODWORD(buf.a) = 134218752;
          *(&buf.a + 4) = v59;
          WORD2(buf.b) = 2048;
          *(&buf.b + 6) = v60;
          HIWORD(buf.c) = 2048;
          buf.d = v71;
          LOWORD(buf.tx) = 2048;
          *(&buf.tx + 2) = v72;
          _os_log_error_impl(&dword_1C7CCA000, v61, OS_LOG_TYPE_ERROR, "Drawable has incorrect size: %g %g vs %g %g", &buf, 0x2Au);
        }

        v62 = *(a1 + 328);
        *(a1 + 328) = 0;
      }
    }

    v63 = *(a1 + 344);
    if (v63)
    {
      v64 = [v63 texture];
      v65 = [v64 width];
      v66 = [v64 height];
      if (*(a1 + 104) != v65 || *(a1 + 112) != v66)
      {
        v67 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v73 = *(a1 + 104);
          v74 = *(a1 + 112);
          LODWORD(buf.a) = 134218752;
          *(&buf.a + 4) = v65;
          WORD2(buf.b) = 2048;
          *(&buf.b + 6) = v66;
          HIWORD(buf.c) = 2048;
          buf.d = v73;
          LOWORD(buf.tx) = 2048;
          *(&buf.tx + 2) = v74;
          _os_log_error_impl(&dword_1C7CCA000, v67, OS_LOG_TYPE_ERROR, "Multiply drawable has incorrect size: %g %g vs %g %g", &buf, 0x2Au);
        }

        v68 = *(a1 + 344);
        *(a1 + 344) = 0;
      }
    }

    if (*(a1 + 328))
    {
      v69 = objc_loadWeakRetained((a1 + 608));
      if (!v69)
      {
        v6 = 0;
        goto LABEL_10;
      }

      v70 = *(a1 + 344) == 0;

      if (!v70)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_61;
  }

  v6 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.a) = 0;
    v7 = "Already had drawable!";
    goto LABEL_9;
  }

LABEL_10:

LABEL_11:
  v8 = *(a1 + 640);
  if (v8)
  {
    *(v8 + 1048) = *(a1 + 648);
  }

  v9 = *(a1 + 560);
  [v9 eraserIndicatorAlpha];
  v11 = *(a1 + 640);
  if (v11)
  {
    *(v11 + 1056) = v10;
  }

  v12 = objc_loadWeakRetained((a1 + 600));
  [v12 contentsScale];
  v14 = v13;

  v15 = objc_loadWeakRetained((a1 + 600));
  [v15 drawableSize];
  v17 = v16;
  v19 = v18;

  v20 = *(a1 + 328);
  if (v20)
  {
    v21 = [v20 texture];
  }

  else
  {
    v21 = *(a1 + 320);
  }

  v22 = v21;
  v23 = *(a1 + 344);
  if (v23)
  {
    v24 = [v23 texture];
  }

  else
  {
    v24 = *(a1 + 336);
  }

  v25 = v24;
  v26 = *(a1 + 640);
  v27 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v27;
  *&t1.tx = a2[2];
  v28 = v26;
  CGAffineTransformMakeScale(&v75, v14, v14);
  CGAffineTransformConcat(&buf, &t1, &v75);
  [(PKMetalRenderer *)v28 renderAheadWithTransform:1 onPaper:v22 renderBufferSize:v25 destinationTexture:v17 destinationMultiplyTexture:v19];

  v29 = 1;
LABEL_22:

LABEL_23:
  kdebug_trace();
  return v29;
}

- (uint64_t)prerenderWithTransform:(double)a3 inputScale:(double)a4 at:
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 600));
  if (WeakRetained)
  {
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 528));

    if (!v9)
    {
      return v9;
    }
  }

  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v10 systemUptime];
  v12 = v11;

  if (a4 - v12 > *&_MergedGlobals_115)
  {
    a4 = v12 + *&_MergedGlobals_115;
  }

  v13 = a2[1];
  src[0] = *a2;
  src[1] = v13;
  src[2] = a2[2];
  v9 = 1;
  objc_copyStruct((a1 + 800), src, 48, 1, 0);
  *(a1 + 648) = a3;
  add = atomic_fetch_add((a1 + 84), 1u);
  v15 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKMetalRendererController_prerenderWithTransform_inputScale_at___block_invoke;
  block[3] = &unk_1E82D8588;
  block[4] = a1;
  *&block[5] = a4;
  v22 = add;
  v16 = a2[1];
  v19 = *a2;
  v20 = v16;
  v21 = a2[2];
  dispatch_async(v15, block);
  return v9;
}

uint64_t __66__PKMetalRendererController_prerenderWithTransform_inputScale_at___block_invoke(uint64_t a1)
{
  atomic_fetch_add((*(a1 + 32) + 84), 0xFFFFFFFF);
  v2 = *(a1 + 32);
  if (v2 && (v3 = atomic_load((v2 + 36))) != 0 || *(a1 + 96) && (v5 = atomic_load((*(a1 + 32) + 84)), v5 >= 1))
  {
    _UIMachTimeForMediaTime();
  }

  else
  {
    if (HIBYTE(_MergedGlobals_158) == 1 && (*(*(a1 + 32) + 136) | 2) == 3)
    {
      _UIMachTimeForMediaTime();
      result = kdebug_trace();
      ++*(*(a1 + 32) + 136);
      return result;
    }

    if (_UIUpdateCycleEnabled())
    {
      v6 = *(*(a1 + 32) + 496) != 0;
    }

    else
    {
      v6 = 0;
    }

    _UIMachTimeForMediaTime();
    kdebug_trace();
    if (v6 && (v7 = *(a1 + 32), *(v7 + 80) == 1) && (v8 = *(a1 + 40), v9 = COERCE_DOUBLE(atomic_load((v7 + 72))), v8 < v9))
    {
      v10 = -5;
      while (!__CFADD__(v10++, 1))
      {
        usleep(0xFAu);
        v12 = COERCE_DOUBLE(atomic_load((v7 + 72)));
        if (v8 >= v12)
        {
          goto LABEL_21;
        }
      }

      _UIMachTimeForMediaTime();
      kdebug_trace();
    }

    else
    {
LABEL_21:
      v13 = *(*(a1 + 32) + 640);
      if (v13)
      {
        v14 = *(MEMORY[0x1E695F050] + 16);
        *(v13 + 736) = *MEMORY[0x1E695F050];
        *(v13 + 752) = v14;
      }

      v15 = +[PKRendererVSyncController sharedController];
      if ([(PKRendererVSyncController *)v15 isActive])
      {
        v16 = _UIUpdateCycleEnabled();

        if ((v16 & 1) == 0)
        {
          v17 = *(*(a1 + 32) + 40);
          v18 = dispatch_time(0, (*&_MergedGlobals_115 * 3.0 * 1000000000.0));
          if (!dispatch_semaphore_wait(v17, v18))
          {
            atomic_store(0, (*(a1 + 32) + 48));
          }
        }
      }

      else
      {
      }

      [*(*(a1 + 32) + 560) latestNonPredictedTimestamp];
      v20 = v19;
      v21 = [MEMORY[0x1E696AE30] processInfo];
      [v21 systemUptime];
      v23 = v22;

      v24 = mach_absolute_time();
      v25 = v24;
      v26 = atomic_load((*(a1 + 32) + 64));
      if (v26 && v24 > v26 && ((v24 - v26) * dword_1EC291594 / unk_1EC291598) / 1000000000.0 < *&_MergedGlobals_115 * 0.5)
      {
        v25 = v26;
      }

      v27 = *&qword_1ED6A4EC0;
      v28 = _UIUpdateCycleEnabled();
      v29 = *(a1 + 32);
      if (v28)
      {
        goto LABEL_37;
      }

      v30 = 5;
      if (byte_1EC291590)
      {
        v30 = 7;
      }

      if (*(v29 + 136) >= v30)
      {
LABEL_37:
        v32 = *(v29 + 640);
        if (v32)
        {
          v31 = *(v32 + 640) != *(v32 + 632);
        }

        else
        {
          v31 = 1;
        }
      }

      else
      {
        v31 = 0;
      }

      v33 = [*(v29 + 560) inputType];
      v34 = v33;
      if (v31 && v33 == 1)
      {
        v27 = *&qword_1ED6A4EC8;
      }

      else if (v31 && *&_MergedGlobals_115 > 0.01)
      {
        v27 = *&_MergedGlobals_115 * 0.5;
      }

      [(PKMetalRendererController *)*(a1 + 32) pokeEventDispatcher];
      v35 = *(a1 + 32);
      v36 = *(v35 + 392);
      v65 = *(v35 + 376);
      v66 = v36;
      v67 = *(v35 + 408);
      v37.n128_u64[1] = *(&v67 + 1);
      v37.n128_u64[0] = *(v35 + 360);
      *&v38 = [(PKMetalRendererController *)v35 _updateRendererStrokeTransformWithTransform:v37 offset:*(v35 + 368)].n128_u64[0];
      v39 = *(a1 + 32);
      if (v39 && *(v39 + 521) == 1)
      {
        v40 = *(v39 + 640);
        if (v40)
        {
          [(PKMetalRenderer *)*(v39 + 640) finishRendering];
          *(v40 + 72) = 1;
          v39 = *(a1 + 32);
        }

        v41 = [*(v39 + 432) count];
        v39 = *(a1 + 32);
        if (v41)
        {
          if (v39)
          {
            v42 = *(v39 + 640);
          }

          else
          {
            v42 = 0;
          }

          [(PKMetalRenderer *)v42 renderStrokes:0 stopBlock:?];
          v43 = *(a1 + 32);
          if (v43)
          {
            v44 = *(v43 + 640);
          }

          else
          {
            v44 = 0;
          }

          [(PKMetalRenderer *)v44 addStrokeSpaceDrawableDirtyRect:*(v43 + 448), *(v43 + 456), *(v43 + 464)];
          v39 = *(a1 + 32);
        }
      }

      v45 = *(a1 + 64);
      v65 = *(a1 + 48);
      v66 = v45;
      v67 = *(a1 + 80);
      if (([PKMetalRendererController _renderAheadWithTransform:v39 at:&v65]& 1) != 0)
      {
        v46 = unk_1EC291598 * (v27 * 1000000000.0) / dword_1EC291594 + v25;
        v47 = mach_absolute_time();
        v48 = 0.0;
        if (v46 > v47)
        {
          v48 = ((v46 - v47) * dword_1EC291594 / unk_1EC291598) / 1000000000.0;
        }

        if (v6)
        {
          v49 = *(*(a1 + 32) + 496);
          v50 = dispatch_time(0, (v48 * 1000000000.0));
          if (dispatch_semaphore_wait(v49, v50))
          {
            kdebug_trace();
          }
        }

        else if (v48 > 0.001 && v34 == 1)
        {
          mach_wait_until(unk_1EC291598 * (*&qword_1ED6A4ED8 * 1000000000.0) / dword_1EC291594 + v25);
          kdebug_trace();
          [*(*(a1 + 32) + 560) latestNonPredictedTimestamp];
          v52 = _MergedGlobals_158;
          if (v51 != v20)
          {
            v52 = 0;
          }

          if ((v52 & (v23 - v51 > 0.01)) != 0)
          {
            v53 = v23 + 0.006;
          }

          else
          {
            v53 = v51 + dbl_1C801D0E0[*&_MergedGlobals_115 < 0.01];
          }

          v54 = 330000 * unk_1EC291598 / dword_1EC291594;
          v55 = v25 - v54 + (*&qword_1ED6A4ED0 * 1000000000.0) * unk_1EC291598 / dword_1EC291594;
          while (1)
          {
            v56 = v46 >= v55 + v54 ? v55 + v54 : v46;
            mach_wait_until(v56);
            [(PKMetalRendererController *)*(a1 + 32) pokeEventDispatcher];
            v57 = mach_absolute_time();
            mach_wait_until(100000 * unk_1EC291598 / dword_1EC291594 + v57);
            [*(*(a1 + 32) + 560) latestNonPredictedTimestamp];
            if (v58 > v53)
            {
              break;
            }

            v55 = mach_absolute_time();
            if (v55 >= v46)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
          if (v27 > 0.0)
          {
            mach_wait_until(v46);
          }

LABEL_78:
          [(PKMetalRendererController *)*(a1 + 32) pokeEventDispatcher];
          v59 = mach_absolute_time();
          mach_wait_until(100000 * unk_1EC291598 / dword_1EC291594 + v59);
        }

        [(PKMetalRenderer *)*(*(a1 + 32) + 640) getAndRenderNewPoints:?];
        v60 = *(a1 + 32);
        v61 = *(v60 + 472);
        *(v60 + 472) = 0;
        v62 = *(a1 + 32);
        v63 = *(a1 + 64);
        v65 = *(a1 + 48);
        v66 = v63;
        v67 = *(a1 + 80);
        [PKMetalRendererController _renderLiveStrokeAndPresentWithTransform:v62 at:&v65 setDirtyRect:(v61 & 1) == 0];
        ++*(*(a1 + 32) + 136);
        if (v6)
        {
          v64 = *(a1 + 40) + *&_MergedGlobals_115 * 2.0 + -0.001;
          if (CACurrentMediaTime() < v64)
          {
            atomic_store(*&v64, (*(a1 + 32) + 72));
          }
        }
      }

      else
      {
        kdebug_trace();
        _UIMachTimeForMediaTime();
      }
    }
  }

  return kdebug_trace();
}

- (void)updateCyclePreCACommit:(uint64_t)a1 isDrawing:(char)a2
{
  if (a1 && *(a1 + 496))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke;
    aBlock[3] = &unk_1E82D6388;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    v5 = v4;
    if (a2)
    {
      if (*(a1 + 521) == 1)
      {
        v6 = *(a1 + 560);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke_2;
        v18[3] = &unk_1E82D63B0;
        v19 = v4;
        [v6 whenFinishedProcessingPointsCallCompletion:v18];
        v7 = v19;
      }

      else
      {
        v8 = dispatch_semaphore_create(0);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke_3;
        v16[3] = &unk_1E82D6388;
        v7 = v8;
        v17 = v7;
        v9 = _Block_copy(v16);
        v10 = *(a1 + 560);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke_4;
        v13[3] = &unk_1E82D85B0;
        v14 = v5;
        v11 = v9;
        v15 = v11;
        [v10 whenFinishedProcessingPointsCallCompletion:v13];
        v12 = dispatch_time(0, 500000);
        if (dispatch_semaphore_wait(v7, v12))
        {
          kdebug_trace();
        }
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

intptr_t __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke(uint64_t a1)
{
  kdebug_trace();
  if (dispatch_semaphore_signal(*(*(a1 + 32) + 496)))
  {

    return kdebug_trace();
  }

  else
  {
    v3 = *(*(a1 + 32) + 496);

    return dispatch_semaphore_wait(v3, 0);
  }
}

intptr_t __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke_3(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t __62__PKMetalRendererController_updateCyclePreCACommit_isDrawing___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)didFinishRendering:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PKMetalRendererController_didFinishRendering___block_invoke;
    v6[3] = &unk_1E82D6D58;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __48__PKMetalRendererController_didFinishRendering___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || (v2 = atomic_load((v1 + 36))) == 0)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4 && (v5 = *(v4 + 640)) != 0)
      {
        v7 = v5;
        v6 = *(v5 + 80) == *(v5 + 79);
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      (*(v3 + 16))(v3, v6);
    }
  }
}

- (void)addBlockToCallAfterPresenting:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKMetalRendererController_addBlockToCallAfterPresenting___block_invoke;
    v6[3] = &unk_1E82D6D58;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)callBlockAfterPresenting:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 88);
    v3 = _Block_copy(aBlock);
    [v2 addObject:?];
  }
}

- (void)setCanvasOffset:(double)a3
{
  if (a1)
  {
    v3 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKMetalRendererController_setCanvasOffset___block_invoke;
    block[3] = &unk_1E82D6610;
    block[4] = a1;
    *&block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v3, block);
  }
}

double __45__PKMetalRendererController_setCanvasOffset___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 360) = *(a1 + 40);
  v1 = *(a1 + 32);
  v2 = *(v1 + 720);
  v5[0] = *(v1 + 704);
  v5[1] = v2;
  v6 = *(v1 + 736);
  v3.n128_u64[1] = *(&v6 + 1);
  v3.n128_u64[0] = *(v1 + 360);
  *&result = [(PKMetalRendererController *)v1 _updateRendererStrokeTransformWithTransform:v5 offset:v3, *(v1 + 368)].n128_u64[0];
  return result;
}

- (void)replaceInkTexture:(uint64_t)a3 image:
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 640);
    v8 = v5;
    if (v6)
    {
      v6 = v6[24];
    }

    v7 = v6;
    [(PKMetalResourceHandler *)v7 replaceInkTexture:v8 image:a3];

    v5 = v8;
  }
}

- (void)setCanvasOffsetPresentationOffsetBlock:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PKMetalRendererController_setCanvasOffsetPresentationOffsetBlock___block_invoke;
    v6[3] = &unk_1E82D6D58;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __68__PKMetalRendererController_setCanvasOffsetPresentationOffsetBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = v2;

  v5 = *(*(a1 + 32) + 640);
  if (v5)
  {
    *(v5 + 1004) = *(a1 + 40) != 0;
  }
}

- (void)setInvertColors:(uint64_t)a1
{
  if (a1 && *(a1 + 523) != a2)
  {
    *(a1 + 523) = a2;
    if (*(a1 + 16) == 1)
    {
      v4 = *(a1 + 640);
      if (v4)
      {
        *(v4 + 1005) = a2;
      }
    }

    else
    {
      v8 = v2;
      v9 = v3;
      v5 = *(a1 + 24);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__PKMetalRendererController_setInvertColors___block_invoke;
      v6[3] = &unk_1E82D75A0;
      v6[4] = a1;
      v7 = a2;
      dispatch_async(v5, v6);
    }
  }
}

uint64_t __45__PKMetalRendererController_setInvertColors___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      *(v2 + 1005) = *(result + 40);
    }
  }

  return result;
}

- (void)callBlockOnRenderQueue:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PKMetalRendererController_callBlockOnRenderQueue___block_invoke;
    block[3] = &unk_1E82D63B0;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

- (void)addInputPoint:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v3 = a2[4];
    v13 = a2[5];
    v4 = a2[7];
    v14 = a2[6];
    v15 = v4;
    v5 = *a2;
    v9 = a2[1];
    v6 = a2[3];
    v10 = a2[2];
    v11 = v6;
    v12 = v3;
    v7[2] = __43__PKMetalRendererController_addInputPoint___block_invoke;
    v7[3] = &unk_1E82D85D8;
    v7[4] = a1;
    v16 = *(a2 + 16);
    v8 = v5;
    dispatch_async(v2, v7);
  }
}

void *__43__PKMetalRendererController_addInputPoint___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = *(v1 + 640);
    if (v2)
    {
      return memmove((v2 + 824), result + 5, 0x88uLL);
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 144) = 0;
  *(self + 27) = 0;
  *(self + 56) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 232) = 0;
  *(self + 38) = 0;
  *(self + 78) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  return self;
}

@end