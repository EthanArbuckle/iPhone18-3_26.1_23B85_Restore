@interface PKTiledCanvasView
+ (void)initialize;
+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(BOOL)a3 prewarmSharedResourceHandler:(BOOL)a4;
+ (void)setupDefaults;
- (BOOL)_hasStrokeTransformChanged;
- (BOOL)_isDisplayLinkPaused;
- (BOOL)_isFastDetectionAllowedForInkAndInputType:(int64_t)a3;
- (BOOL)_isLiveAnimating;
- (BOOL)_isShapeRecognitionEnabled;
- (BOOL)drawingGestureRecognizer:(id)a3 shouldBeginDrawingWithTouches:(id)a4 event:(id)a5;
- (BOOL)drawingGestureRecognizer:(id)a3 shouldDelayDrawingBeganWithTouch:(id)a4;
- (BOOL)eraserBegan:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)shapeDrawingController:(id)a3 scratchOutStrokesCoveredByStroke:(id)a4;
- (CAMetalLayer)metalLayer;
- (CGAffineTransform)_replayCoordinateSystemTransform;
- (CGAffineTransform)_strokeTransformForAttachment:(SEL)a3;
- (CGAffineTransform)paperTransform;
- (CGAffineTransform)scaledStrokeTransform;
- (CGAffineTransform)strokeTransform;
- (CGPoint)_oldEraseLocation;
- (CGPoint)applyTransformToTouchLocation:(CGPoint)a3;
- (CGPoint)canvasOffset;
- (CGRect)renderedStrokesBounds;
- (CGRect)viewScissor;
- (CGRect)visibleStrokesBounds;
- (CGSize)_fixedPixelSize;
- (CGSize)_metalViewDrawableSize;
- (CGSize)_rendererControllerPixelSize;
- (CGSize)liveStrokeMaxSize;
- (PKDrawing)activeDrawing;
- (PKDrawing)currentDrawingBeingCopiedToCanvas;
- (PKMetalRendererController)_rendererController;
- (PKRulerController)rulerController;
- (PKSelectionController)selectionController;
- (PKStrokeGenerator)strokeGenerator;
- (PKTiledCanvasView)initWithFrame:(CGRect)a3 usePrivateResourceHandler:(BOOL)a4 singleComponent:(BOOL)a5 sixChannelBlending:(BOOL)a6;
- (PKTiledCanvasViewDelegate)delegate;
- (UIGestureRecognizer)allowSimultaneousGR;
- (double)_inputScale;
- (double)layerContentsScale;
- (id).cxx_construct;
- (id)_inkForNewStroke;
- (id)_strokeUUIDsForStrokes:(id)a3;
- (id)_touchView;
- (id)currentStroke;
- (id)currentStrokeWithStrokeDataCopy;
- (id)liveDrawing;
- (id)shapeDrawingControllerRendererController:(id)a3;
- (id)snapshotFramebufferWithSize:(CGSize)a3;
- (int64_t)shapeDrawingControllerMaximumSupportedContentVersion:(id)a3;
- (unint64_t)metalLayerPixelFormat;
- (void)_callOptionalDrawingEndedCompletion:(id)a3 withStroke:(id)a4 shapeStrokes:(id)a5;
- (void)_didFinishErasingStrokes:(BOOL)a3;
- (void)_didFinishHideCanvasTransaction;
- (void)_drawingBegan:(id)a3 inputPoint:(id *)a4 locationInView:(CGPoint)a5 forPreview:(BOOL)a6 disableDetachedRendering:(BOOL)a7 activeInputProperties:(unint64_t)a8 inputType:(int64_t)a9;
- (void)_drawingDisplay:(double)a3;
- (void)_drawingEnded:(id)a3 estimatesTimeout:(double)a4 completion:(id)a5;
- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)a3;
- (void)_finishCombiningStrokesIfNecessary;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handleEndOfStroke:(id)a3 shapeStrokes:(id)a4 groupedUndoCommands:(id)a5 invalidateTiles:(BOOL)a6;
- (void)_notifyEraserMoved:(id)a3 location:(CGPoint)a4;
- (void)_postBeganErasingAXAnnouncement;
- (void)_postBeganSketchingAXAnnouncement;
- (void)_postEndedErasingAXAnnouncement;
- (void)_postEndedSketchingAXAnnouncement;
- (void)_previewDrawingBegan:(id *)a3 tiledViewLocation:(CGPoint)a4 disableDetachedRendering:(BOOL)a5;
- (void)_previewDrawingEnded;
- (void)_previewDrawingMoved:(id *)a3 tiledViewLocation:(CGPoint)a4;
- (void)_purgeResources;
- (void)_reduceMemoryFootprint;
- (void)_replayDrawingBegan:(id *)a3;
- (void)_replayDrawingBegan:(id *)a3 coordinateSpace:(id)a4 activeInputProperties:(unint64_t)a5 inputType:(int64_t)a6;
- (void)_replayDrawingCancelled;
- (void)_replayDrawingEndedEstimatesTimeout:(double)a3 withBackgroundQueueCompletion:(id)a4;
- (void)_replayDrawingMoved:(id *)a3;
- (void)_replayDrawingMoved:(id *)a3 coordinateSpace:(id)a4;
- (void)_replayEstimatedPropertiesUpdated:(id *)a3;
- (void)_setDrawing:(id)a3 tiles:(id)a4 tileScale:(double)a5 snapshotTexture:(id)a6 snapshotTextureTransform:(CGAffineTransform *)a7 completionBlock:(id)a8;
- (void)_setFixedPointSize:(CGSize)a3 drawingScale:(double)a4;
- (void)_startDisplayLinkShouldPause:(BOOL)a3;
- (void)_stopDisplayLink;
- (void)_updateMetalLayerOpacity;
- (void)_updateMetalLayerOpacityForceNonOpaqueSixChannel:(BOOL)a3;
- (void)_updateSequenceVSync:(double)a3;
- (void)adjustedPixelSize:(CGSize *)a3 drawingSize:(CGSize *)a4;
- (void)animateStrokes:(id)a3 destinationFrame:(CGRect)a4 duration:(double)a5 particles:(BOOL)a6;
- (void)cancelCurrentStroke;
- (void)cancelPurgeResourcesBlock;
- (void)checkAnimationsDidEndAtTime:(double)a3;
- (void)clearHiddenStrokes;
- (void)dealloc;
- (void)delayCompletionBlockUntilPresentation:(id)a3;
- (void)didEndLiveInteractionWithStrokes:(id)a3 drawing:(id)a4 cancelled:(BOOL)a5 forPreview:(BOOL)a6;
- (void)didMoveToWindow;
- (void)drawingBegan:(id)a3;
- (void)drawingCancelledForPreview:(BOOL)a3;
- (void)drawingChanged:(id)a3;
- (void)drawingEstimatedPropertiesUpdated:(id)a3;
- (void)drawingGestureRecognizer:(id)a3 touchesEndedWithDrawingTouch:(id)a4;
- (void)drawingMoved:(id)a3 withEvent:(id)a4;
- (void)enumerateRenderedStrokesBounds:(id)a3;
- (void)eraseStrokes:(id)a3;
- (void)eraseStrokesForPoint:(CGPoint)a3 prevPoint:(CGPoint)a4;
- (void)eraserCancelled;
- (void)eraserEnded:(id)a3;
- (void)eraserMoved:(id)a3;
- (void)fadeOutAndHideStrokes:(id)a3 duration:(double)a4;
- (void)handleDrawingShouldPause:(BOOL)a3;
- (void)layoutSubviews;
- (void)liveStrokeParticlesToDestinationFrame:(CGRect)a3;
- (void)removeStuckStrokesAndSimulateCrashIfNecessary;
- (void)resizeBackingBuffersForPixelSize:(CGSize)a3 drawingScale:(double)a4;
- (void)schedulePurgeResourcesBlock;
- (void)setCanvasBackgroundColor:(id)a3;
- (void)setCanvasOffset:(CGPoint)a3;
- (void)setCaptureLiveData:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDrawBitmapEraserMask:(BOOL)a3;
- (void)setDrawingGestureRecognizer:(id)a3;
- (void)setHasSnapshot:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setInk:(id)a3;
- (void)setIsDrawing:(BOOL)a3 forPreview:(BOOL)a4;
- (void)setIsPDFCanvasForAnalytics:(BOOL)a3;
- (void)setIsUnderBlendedContent:(BOOL)a3;
- (void)setLinedPaper:(id)a3;
- (void)setLiveAnimationStartTime:(double)a3;
- (void)setLiveRenderingOverrideColor:(id)a3 animated:(BOOL)a4;
- (void)setLiveStrokeMaxSize:(CGSize)a3;
- (void)setLiveStrokeMode:(BOOL)a3;
- (void)setMetalLayerContentsScaleOverride:(double)a3;
- (void)setNeedsDrawingDisplay;
- (void)setOpaque:(BOOL)a3;
- (void)setPaperTexture:(id)a3;
- (void)setPaperTransform:(CGAffineTransform *)a3;
- (void)setResourceCacheSize:(unint64_t)a3;
- (void)setSixChannelBlendingMode:(int64_t)a3;
- (void)setUseLuminanceColorFilter:(BOOL)a3;
- (void)setViewScissor:(CGRect)a3;
- (void)setWantsExtendedDynamicRangeContent:(BOOL)a3;
- (void)setupDisplayLink;
- (void)setupDrawing;
- (void)setupGestures;
- (void)setupMetalViewForPixelFormat:(unint64_t)a3 withPixelSize:(CGSize)a4;
- (void)setupMetalViewIfNecessary;
- (void)setupViewWithPixelSize:(CGSize)a3 drawingSize:(CGSize)a4;
- (void)shapeDrawingControllerShapeDetectionCancelled:(id)a3;
- (void)shapeDrawingControllerShapeGestureDetected:(id)a3 isFastGesture:(BOOL)a4;
- (void)strokeGeneratorDidSnapToRuler:(id)a3;
- (void)testHideOldestStroke;
- (void)updateHasVisibleStrokes;
- (void)willBeginLiveInteractionWithTouch:(id)a3;
@end

@implementation PKTiledCanvasView

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___PKTiledCanvasView;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == a1)
  {
    +[PKTiledCanvasView setupDefaults];
  }
}

+ (void)setupDefaults
{
  if (+[PKTiledCanvasView setupDefaults]::onceToken != -1)
  {
    dispatch_once(&+[PKTiledCanvasView setupDefaults]::onceToken, &__block_literal_global_10);
  }
}

void __34__PKTiledCanvasView_setupDefaults__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[0] = @"internalSettings.drawing.apt.minimumMovementDistancePencil";
  v2[1] = @"internalSettings.drawing.apt.minimumMovementDistanceFinger";
  v3[0] = &unk_1F47C1EF8;
  v3[1] = &unk_1F47C1088;
  v2[2] = @"internalSettings.drawing.apt.minimumMovementDistanceTimeout";
  v3[2] = &unk_1F47C1F08;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  [v0 registerDefaults:v1];
}

- (id).cxx_construct
{
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 51) = 0;
  return self;
}

- (void)setupDrawing
{
  v3 = objc_opt_new();
  [(PKTiledCanvasView *)self setInk:v3];

  v4 = objc_alloc_init(PKDrawing);
  drawing = self->_drawing;
  self->_drawing = v4;

  [(PKTiledCanvasView *)self setupGestures];
}

- (void)_finishCombiningStrokesIfNecessary
{
  self->_isCombiningStrokes = 0;
  self->_combiningStrokesCount = 0;
  combineStrokesRenderGroupID = self->_combineStrokesRenderGroupID;
  self->_combineStrokesRenderGroupID = 0;

  combineStrokesDrawingID = self->_combineStrokesDrawingID;
  self->_combineStrokesDrawingID = 0;

  if (self->_combineTimeoutBlock)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Finish combining manually triggered", v8, 2u);
    }

    dispatch_block_cancel(self->_combineTimeoutBlock);
    combineTimeoutBlock = self->_combineTimeoutBlock;
    self->_combineTimeoutBlock = 0;

    v7 = [(PKTiledCanvasView *)self drawing];
    [(PKTiledCanvasView *)self didEndLiveInteractionWithStrokes:MEMORY[0x1E695E0F0] drawing:v7 cancelled:0];
  }
}

- (void)setupGestures
{
  v3 = objc_alloc_init(PKDrawingGestureRecognizer);
  [(PKDrawingGestureRecognizer *)v3 setDelegate:self];
  [(PKDrawingGestureRecognizer *)v3 setDrawingTarget:self];
  [(PKTiledCanvasView *)self addGestureRecognizer:v3];
  [(PKTiledCanvasView *)self setDrawingGestureRecognizer:v3];
  [(PKTiledCanvasView *)self setMultipleTouchEnabled:1];
}

- (void)cancelPurgeResourcesBlock
{
  v3 = [(PKTiledCanvasView *)self purgeResourcesBlock];

  if (v3)
  {
    v4 = [(PKTiledCanvasView *)self purgeResourcesBlock];
    dispatch_block_cancel(v4);

    [(PKTiledCanvasView *)self setPurgeResourcesBlock:0];
  }
}

- (void)schedulePurgeResourcesBlock
{
  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __48__PKTiledCanvasView_schedulePurgeResourcesBlock__block_invoke;
  v13 = &unk_1E82D6D80;
  objc_copyWeak(&v14, &location);
  v3 = dispatch_block_create(0, &v10);
  [(PKTiledCanvasView *)self setPurgeResourcesBlock:v3, v10, v11, v12, v13];

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.mobilenotes"];

  if (v6)
  {
    v7 = 10000000000;
  }

  else
  {
    v7 = 2000000000;
  }

  v8 = dispatch_time(0, v7);
  v9 = [(PKTiledCanvasView *)self purgeResourcesBlock];
  dispatch_after(v8, MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (PKStrokeGenerator)strokeGenerator
{
  v3 = [(PKTiledCanvasView *)self _rendererController];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 560);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    fallbackStrokeGenerator = self->_fallbackStrokeGenerator;
    if (!fallbackStrokeGenerator)
    {
      v8 = objc_alloc_init(PKStrokeGenerator);
      v9 = self->_fallbackStrokeGenerator;
      self->_fallbackStrokeGenerator = v8;

      fallbackStrokeGenerator = self->_fallbackStrokeGenerator;
    }

    v6 = fallbackStrokeGenerator;
  }

  v10 = [(PKStrokeGenerator *)v6 delegate];

  if (!v10)
  {
    [(PKStrokeGenerator *)v6 setDelegate:self];
  }

  return v6;
}

- (PKMetalRendererController)_rendererController
{
  v2 = [(PKTiledCanvasView *)self _drawingController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_updateMetalLayerOpacity
{
  v4 = [(PKTiledCanvasView *)self ink];
  if ([v4 _isEraserInk])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PKTiledCanvasView *)self hasSnapshot]^ 1;
  }

  [(PKTiledCanvasView *)self _updateMetalLayerOpacityForceNonOpaqueSixChannel:v3];
}

- (unint64_t)metalLayerPixelFormat
{
  v4 = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  if (v4 > 3)
  {
    if ((v4 - 4) >= 2)
    {
      return v2;
    }

LABEL_9:
    v6 = [(PKTiledCanvasView *)self _rendererController];
    goto LABEL_10;
  }

  if ((v4 - 2) < 2 || !v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    wantsExtendedDynamicRangeContent = self->_wantsExtendedDynamicRangeContent;
    v6 = [(PKTiledCanvasView *)self _rendererController];
    if (!wantsExtendedDynamicRangeContent)
    {
      if (v6)
      {
        v7 = v6 + 68;
LABEL_14:
        v2 = *v7;
LABEL_15:

        return v2;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (v6)
    {
      v8 = 67;
      if (*(v6 + 524))
      {
        v8 = 64;
      }

      v7 = &v6[v8];
      goto LABEL_14;
    }

LABEL_17:
    v2 = 0;
    goto LABEL_15;
  }

  return v2;
}

- (void)didMoveToWindow
{
  v3 = [(PKTiledCanvasView *)self window];

  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [(PKTiledCanvasView *)self superview];
      if (v4)
      {
        v5 = v4;
        while (([v5 isUserInteractionEnabled]& 1) == 0)
        {
          v6 = [v5 superview];

          v5 = v6;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        v10 = [objc_alloc(MEMORY[0x1E69DD3B8]) initWithView:v5];
        feedbackGenerator = self->_feedbackGenerator;
        self->_feedbackGenerator = v10;
      }

      else
      {
LABEL_7:
        v5 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Could not find view with user interaction enabled for canvas feedback.", v12, 2u);
        }
      }
    }
  }

  else
  {
    v7 = self->_feedbackGenerator;
    if (v7)
    {
      v8 = [(_UICanvasFeedbackGenerator *)v7 view];
      [v8 removeInteraction:self->_feedbackGenerator];

      v9 = self->_feedbackGenerator;
      self->_feedbackGenerator = 0;
    }
  }
}

- (double)layerContentsScale
{
  result = self->_metalLayerContentsScaleOverride;
  if (result <= 0.0)
  {
    +[PKMetalUtility layerContentsScale];
  }

  return result;
}

- (CGSize)_fixedPixelSize
{
  width = self->__fixedPixelSize.width;
  height = self->__fixedPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v24 layoutSubviews];
  if (self->_metalView)
  {
    [(PKTiledCanvasView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(PKMetalView *)self->_metalView frame];
    if (v4 != v8 || v6 != v7)
    {
      [(PKTiledCanvasView *)self _fixedPixelSize];
      v11 = v10;
      v13 = v12;
      [(PKTiledCanvasView *)self _fixedDrawingScale];
      [(PKTiledCanvasView *)self resizeBackingBuffersForPixelSize:v11 drawingScale:v13, v14];
      v15 = [(PKTiledCanvasView *)self powerSavingController];
      if (v15)
      {
        v15[72] = 0;
      }

      v16 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)v16 changeRenderSize];
    }
  }

  v17 = [(PKTiledCanvasView *)self traitCollection];
  v18 = [v17 userInterfaceStyle];
  v19 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v19 setInvertColors:?];

  v20 = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  v21 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v21 setSixChannelBlendingMode:v20];

  LODWORD(v20) = [(PKTiledCanvasView *)self drawBitmapEraserMask];
  v22 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v22 setDrawBitmapEraserMask:v20];

  v23 = [(PKTiledCanvasView *)self rulerController];
  [(PKRulerController *)v23 ensureRulerIsFullyOnscreen];
}

- (PKRulerController)rulerController
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerController);

  return WeakRetained;
}

- (PKTiledCanvasView)initWithFrame:(CGRect)a3 usePrivateResourceHandler:(BOOL)a4 singleComponent:(BOOL)a5 sixChannelBlending:(BOOL)a6
{
  v6 = a6;
  v31.receiver = self;
  v31.super_class = PKTiledCanvasView;
  v9 = [(PKTiledCanvasView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    v9->_usePrivateResourceHandler = a4;
    v12 = [[PKMetalConfig alloc] initWithPrivateResourceHandler:a4];
    metalConfig = v11->_metalConfig;
    v11->_metalConfig = v12;

    v11->_singleComponent = a5;
    v11->_sixChannelBlendingMode = v6;
    [(PKTiledCanvasView *)v11 setupDrawing];
    v14 = [MEMORY[0x1E695DF70] array];
    particlesToDestinationAnimations = v11->_particlesToDestinationAnimations;
    v11->_particlesToDestinationAnimations = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    transformStrokesAnimations = v11->_transformStrokesAnimations;
    v11->_transformStrokesAnimations = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    strokeUUIDsAboutToBeRemoved = v11->_strokeUUIDsAboutToBeRemoved;
    v11->_strokeUUIDsAboutToBeRemoved = v18;

    v21 = *(MEMORY[0x1E695EFD0] + 16);
    v20 = *(MEMORY[0x1E695EFD0] + 32);
    *&v10->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
    *&v10->__replayCoordinateSystemTransform.c = v21;
    *&v10->__replayCoordinateSystemTransform.tx = v20;
    v11->_maxNumPredictionPoints = -1;
    v22 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [v22 objectForKey:@"internalSettings.drawing.touchPredictionPointsOverride"];

    if (v23)
    {
      v24 = [MEMORY[0x1E695E000] standardUserDefaults];
      v11->_maxNumPredictionPoints = [v24 integerForKey:@"internalSettings.drawing.touchPredictionPointsOverride"];
    }

    v25 = [[PKShapeDrawingController alloc] initWithDelegate:v11];
    shapeDrawingController = v11->_shapeDrawingController;
    v11->_shapeDrawingController = v25;

    v27 = v11->_shapeDrawingController;
    if (v27)
    {
      v27->_fastDetectionEnabled = 1;
    }

    v28 = objc_alloc_init(PKScratchOutController);
    scratchOutController = v11->_scratchOutController;
    v11->_scratchOutController = v28;
  }

  return v11;
}

- (void)dealloc
{
  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  v3 = [(PKTiledCanvasView *)self _drawingController];
  v4 = v3;
  if (v3)
  {
    [(PKMetalRendererController *)*(v3 + 64) cancelLongRunningRenders];
  }

  [(PKTiledCanvasView *)self _stopDisplayLink];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v6 = [(PKTiledCanvasView *)self _drawingController];
  [(PKController *)v6 teardown];

  v7.receiver = self;
  v7.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v7 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_canvasViewFlags = &self->_canvasViewFlags;
    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFF7F | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFEFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFDFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xFBFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 2048;
    }

    else
    {
      v17 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xF7FF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xEFFF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x2000;
    }

    else
    {
      v19 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xDFFF | v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = 0x4000;
    }

    else
    {
      v20 = 0;
    }

    *p_canvasViewFlags = *p_canvasViewFlags & 0xBFFF | v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x8000;
    }

    else
    {
      v21 = 0;
    }

    *p_canvasViewFlags = v21 & 0x8000 | *p_canvasViewFlags & 0x7FFF;
    p_canvasViewFlags->delegateSupportsTouchView = objc_opt_respondsToSelector() & 1;
    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFFD | v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFFB | v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFF7 | v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFEF | v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = 32;
    }

    else
    {
      v26 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFDF | v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = 64;
    }

    else
    {
      v27 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFFBF | v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = 128;
    }

    else
    {
      v28 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFF7F | v28;
    if (objc_opt_respondsToSelector())
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFEFF | v29;
    if (objc_opt_respondsToSelector())
    {
      v30 = 512;
    }

    else
    {
      v30 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFDFF | v30;
    if (objc_opt_respondsToSelector())
    {
      v31 = 1024;
    }

    else
    {
      v31 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xFBFF | v31;
    if (objc_opt_respondsToSelector())
    {
      v32 = 2048;
    }

    else
    {
      v32 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xF7FF | v32;
    if (objc_opt_respondsToSelector())
    {
      v33 = 4096;
    }

    else
    {
      v33 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xEFFF | v33;
    if (objc_opt_respondsToSelector())
    {
      v34 = 0x2000;
    }

    else
    {
      v34 = 0;
    }

    *(p_canvasViewFlags + 8) = *(p_canvasViewFlags + 8) & 0xDFFF | v34;
    v5 = obj;
  }
}

+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(BOOL)a3 prewarmSharedResourceHandler:(BOOL)a4
{
  if (!a3)
  {
    v5 = a4;
    v6 = +[PKMetalUtility defaultDevice];
    if (v6)
    {
      v7 = !v5;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v6];
    }
  }

  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Began sketching" value:@"Began sketching" table:@"Localizable"];

  [a1 setupDefaults];
  v11 = MEMORY[0x1E69E96A0];

  dispatch_async(v11, &__block_literal_global_96_0);
}

uint64_t __98__PKTiledCanvasView_prewarmFutureCanvasesIfNecessarySecureRendering_prewarmSharedResourceHandler___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = MEMORY[0x1E69DCD58];

  return [v1 prefersPencilOnlyDrawing];
}

- (id)snapshotFramebufferWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PKTiledCanvasView *)self _rendererController];
  v7 = v6;
  if (v6 && *(v6 + 520) == 1 && !self->_wantsExtendedDynamicRangeContent)
  {
    v10 = 554;
  }

  else
  {
    v8 = [(PKTiledCanvasView *)self _rendererController];
    if (v8)
    {
      v9 = 536;
      if (v8[524])
      {
        v9 = 512;
      }

      v10 = *&v8[v9];
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = self->_snapshotFramebuffer;
  v12 = v11;
  if (!v11 || ([(PKMetalFramebuffer *)v11 size]== width ? (v14 = v13 == height) : (v14 = 0), !v14 || v12->_pixelFormat != v10))
  {
    v15 = [PKMetalFramebuffer alloc];
    v16 = [(PKTiledCanvasView *)self _rendererController];
    v17 = [(PKMetalRendererController *)v16 device];
    v18 = [(PKMetalFramebuffer *)&v15->super.isa initWithSize:v10 pixelFormat:v17 device:0 memoryless:1 backedByIOSurface:1 sampleCount:0 purgeable:width, height];

    objc_storeStrong(&self->_snapshotFramebuffer, v18);
    v12 = v18;
  }

  return v12;
}

- (void)setInk:(id)a3
{
  obj = a3;
  [(PKTiledCanvasView *)self _finishCombiningStrokesIfNecessary];
  v4 = [obj identifier];
  v5 = [v4 isEqualToString:@"com.apple.ink.marker"];

  if (v5)
  {
    v6 = [obj _copyWithVariant:@"linear"];

    v7 = v6;
  }

  else
  {
    v7 = obj;
  }

  obja = v7;
  objc_storeStrong(&self->_ink, v7);
  v8 = [obja _sixChannelVersion];
  sixChannelInk = self->_sixChannelInk;
  self->_sixChannelInk = v8;
}

- (void)setupMetalViewIfNecessary
{
  if (!self->_metalView)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __46__PKTiledCanvasView_setupMetalViewIfNecessary__block_invoke;
    v2[3] = &unk_1E82D6388;
    v2[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
  }
}

uint64_t __46__PKTiledCanvasView_setupMetalViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _fixedPixelSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) _fixedPixelSize];
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) _fixedDrawingScale];
  v12 = 1.0 / v11;

  return [v2 setupViewWithPixelSize:v4 drawingSize:{v6, v8 * v12, v10 * v12}];
}

- (void)setLinedPaper:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_linedPaper, a3);
  v5 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v5 setLinedPaper:v6];
}

- (void)setPaperTexture:(id)a3
{
  v6 = a3;
  if (self->_paperTexture != v6)
  {
    objc_storeStrong(&self->_paperTexture, a3);
    v5 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v5 setPaperTextureImage:?];
  }
}

- (void)setLiveRenderingOverrideColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  liveRenderingOverrideColor = self->_liveRenderingOverrideColor;
  v26 = v7;
  v9 = liveRenderingOverrideColor;
  v10 = v26;
  if (v26 | v9)
  {
    if (v26 && v9)
    {
      v11 = [v26 isEqual:v9];

      v10 = v26;
      if (v11)
      {
        goto LABEL_23;
      }

      if (v4)
      {
LABEL_6:
        liveRenderingOverrideColorAnimation = self->_liveRenderingOverrideColorAnimation;
        if (liveRenderingOverrideColorAnimation)
        {
          v13 = CACurrentMediaTime();
          v14 = [(PKInterpolateColorAnimation *)liveRenderingOverrideColorAnimation colorAtTime:v13];
        }

        else
        {
          v16 = self->_liveRenderingOverrideColor;
          if (!v16)
          {
            v25 = [(PKTiledCanvasView *)self ink];
            v15 = [v25 color];

            goto LABEL_13;
          }

          v14 = v16;
        }

        v15 = v14;
LABEL_13:
        if (v26)
        {
          v17 = v26;
        }

        else
        {
          v18 = [(PKTiledCanvasView *)self ink];
          v17 = [v18 color];
        }

        objc_storeStrong(&self->_liveRenderingOverrideColor, a3);
        if (v15 && v17)
        {
          v19 = CACurrentMediaTime();
          v20 = [[PKInterpolateColorAnimation alloc] initWithStartColor:v15 endColor:v17 startTime:v19 duration:0.15];
          v21 = self->_liveRenderingOverrideColorAnimation;
          self->_liveRenderingOverrideColorAnimation = v20;

          [(PKTiledCanvasView *)self liveAnimationStartTime];
          if (v22 == 0.0)
          {
            [(PKTiledCanvasView *)self setLiveAnimationStartTime:v19];
          }
        }

        else
        {
          v23 = self->_liveRenderingOverrideColorAnimation;
          self->_liveRenderingOverrideColorAnimation = 0;

          v24 = [(PKTiledCanvasView *)self _rendererController];
          [(PKMetalRendererController *)v24 setLiveRenderingOverrideColor:?];
        }

        goto LABEL_22;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong(&self->_liveRenderingOverrideColor, a3);
    v15 = [(PKTiledCanvasView *)self _rendererController];
    -[PKMetalRendererController setLiveRenderingOverrideColor:](v15, [v26 CGColor]);
LABEL_22:

    v10 = v26;
  }

LABEL_23:
}

- (void)setUseLuminanceColorFilter:(BOOL)a3
{
  v3 = a3;
  self->_useLuminanceColorFilter = a3;
  v4 = [(PKTiledCanvasView *)self metalView];
  [(PKMetalView *)v4 setUseLuminanceColorFilter:v3];
}

- (void)setSixChannelBlendingMode:(int64_t)a3
{
  if (self->_sixChannelBlendingMode != a3)
  {
    self->_sixChannelBlendingMode = a3;
    v5 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v5 setSixChannelBlendingMode:a3];

    v6 = [(PKTiledCanvasView *)self metalLayerPixelFormat];
    v11 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v11 setPixelFormat:v6];

    v12 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v12 setSixChannelBlending:?];

    [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
    if ([(PKTiledCanvasView *)self sixChannelBlendingMode]== 2 || [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3)
    {
      v13 = [(PKTiledCanvasView *)self _rendererController];
      v7 = [(PKTiledCanvasView *)self metalView];
      v8 = [(PKMetalView *)v7 metalMultiplyLayer];
      [(PKMetalRendererController *)v13 setMultiplyPresentationLayer:v8];
    }

    else
    {
      v13 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)v13 setMultiplyPresentationLayer:?];
    }

    v14 = [(PKTiledCanvasView *)self _rendererController];
    v9 = [(PKTiledCanvasView *)self metalView];
    v10 = [(PKMetalView *)v9 metalLayer];
    [(PKMetalRendererController *)v14 setPresentationLayer:v10];
  }
}

- (void)setDrawBitmapEraserMask:(BOOL)a3
{
  if (self->_drawBitmapEraserMask != a3)
  {
    v4 = a3;
    self->_drawBitmapEraserMask = a3;
    v5 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v5 setDrawBitmapEraserMask:v4];
  }
}

- (void)setHasSnapshot:(BOOL)a3
{
  if (self->_hasSnapshot != a3)
  {
    self->_hasSnapshot = a3;
    [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
  }
}

- (void)updateHasVisibleStrokes
{
  v5 = [(PKTiledCanvasView *)self _drawingController];
  v3 = [(PKController *)v5 renderedStrokes];
  v4 = [v3 count] || self->_liveInteractionCount > 0 || -[PKTiledCanvasView _isLiveAnimating](self, "_isLiveAnimating");

  if (self->_hasVisibleStrokes != v4)
  {
    self->_hasVisibleStrokes = v4;
    if ((*(&self->_canvasViewFlags + 16) & 4) != 0)
    {
      v6 = [(PKTiledCanvasView *)self delegate];
      [v6 canvasViewHasVisibleStrokesChanged:self];
    }
  }
}

- (void)setDrawingGestureRecognizer:(id)a3
{
  v5 = a3;
  drawingGestureRecognizer = self->_drawingGestureRecognizer;
  if (drawingGestureRecognizer != v5)
  {
    v9 = v5;
    if (drawingGestureRecognizer)
    {
      v7 = [(PKDrawingGestureRecognizerProtocol *)drawingGestureRecognizer delegate];

      if (v7 == self)
      {
        [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer setDelegate:0];
      }

      v8 = [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer drawingTarget];

      if (v8 == self)
      {
        [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer setDrawingTarget:0];
      }

      [(PKTiledCanvasView *)self removeGestureRecognizer:self->_drawingGestureRecognizer];
    }

    objc_storeStrong(&self->_drawingGestureRecognizer, a3);
    v5 = v9;
  }
}

- (void)setLiveStrokeMode:(BOOL)a3
{
  if (self->_liveStrokeMode != a3)
  {
    v4 = a3;
    self->_liveStrokeMode = a3;
    v6 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v6 setFadeOutStrokesMode:v4];

    v7 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v7 setLiveStrokeMode:v4];
  }
}

- (void)setLiveStrokeMaxSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_liveStrokeMaxSize.width != a3.width || self->_liveStrokeMaxSize.height != a3.height)
  {
    self->_liveStrokeMaxSize = a3;
    v6 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v6 setLiveStrokeMaxSize:height];
  }
}

- (void)enumerateRenderedStrokesBounds:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PKTiledCanvasView *)self _drawingController];
  v6 = [(PKController *)v5 renderedStrokes];

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) _bounds];
        v4[2](v4);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (CGRect)renderedStrokesBounds
{
  v24 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(PKTiledCanvasView *)self _drawingController];
  v7 = [(PKController *)v6 renderedStrokes];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v19 + 1) + 8 * v10) _bounds];
        v28.origin.x = v11;
        v28.origin.y = v12;
        v28.size.width = v13;
        v28.size.height = v14;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)visibleStrokesBounds
{
  v57 = *MEMORY[0x1E69E9840];
  [(PKTiledCanvasView *)self renderedStrokesBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = self->_fadeOutStrokeAnimations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v12)
  {
    v13 = *v51;
    do
    {
      v14 = 0;
      do
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v50 + 1) + 8 * v14) stroke];
        [v15 _bounds];
        v65.origin.x = v16;
        v65.origin.y = v17;
        v65.size.width = v18;
        v65.size.height = v19;
        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = height;
        v59 = CGRectUnion(v58, v65);
        x = v59.origin.x;
        y = v59.origin.y;
        width = v59.size.width;
        height = v59.size.height;

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v12);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = self->_particlesToDestinationAnimations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v21)
  {
    v22 = *v47;
    do
    {
      v23 = 0;
      do
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v46 + 1) + 8 * v23) bounds];
        v66.origin.x = v24;
        v66.origin.y = v25;
        v66.size.width = v26;
        v66.size.height = v27;
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v61 = CGRectUnion(v60, v66);
        x = v61.origin.x;
        y = v61.origin.y;
        width = v61.size.width;
        height = v61.size.height;
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v21);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = self->_transformStrokesAnimations;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v29)
  {
    v30 = *v43;
    do
    {
      v31 = 0;
      do
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v42 + 1) + 8 * v31);
        if (v32)
        {
          v33 = v32[13];
          v34 = v32[14];
          v35 = v32[15];
          v36 = v32[16];
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v33 = 0;
        }

        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        v63 = CGRectUnion(v62, *&v33);
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
        ++v31;
      }

      while (v29 != v31);
      v37 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v42 objects:v54 count:16];
      v29 = v37;
    }

    while (v37);
  }

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)setCanvasBackgroundColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_canvasBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_canvasBackgroundColor, a3);
    v5 = [(PKTiledCanvasView *)self _rendererController];
    -[PKMetalRendererController setBackgroundColor:](v5, [v6 CGColor]);
  }
}

- (void)setResourceCacheSize:(unint64_t)a3
{
  self->_resourceCacheSize = a3;
  v4 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v4 setResourceCacheSize:a3];
}

- (void)adjustedPixelSize:(CGSize *)a3 drawingSize:(CGSize *)a4
{
  height = a3->height;
  if (a3->width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(PKTiledCanvasView *)self bounds:a3->width];
    v10 = fmax(v9, 1.0);
    v12 = fmax(v11, 1.0);
    metalLayerContentsScaleOverride = self->_metalLayerContentsScaleOverride;
    if (metalLayerContentsScaleOverride <= 0.0)
    {
      +[PKMetalUtility layerContentsScale];
    }

    [PKMetalUtility clampedPixelSize:v10 * metalLayerContentsScaleOverride, v12 * metalLayerContentsScaleOverride];
    a3->width = v14;
    a3->height = v15;
    a4->width = v10;
    a4->height = v12;
  }
}

- (void)setupViewWithPixelSize:(CGSize)a3 drawingSize:(CGSize)a4
{
  v36 = a3;
  v35 = a4;
  if (!self->_drawingController)
  {
    [(PKTiledCanvasView *)self adjustedPixelSize:&v36 drawingSize:&v35];
    v5 = [PKController alloc];
    v6 = [(PKController *)v5 initWithPixelSize:[(PKTiledCanvasView *)self sixChannelBlendingMode] actualSize:[(PKTiledCanvasView *)self wantsExtendedDynamicRangeContent] singleComponent:self->_metalConfig sixChannelBlendingMode:v36.width wantsExtendedDynamicRangeContent:v36.height metalConfig:v35.width, v35.height];
    drawingController = self->_drawingController;
    self->_drawingController = v6;

    v8 = self->_drawingController;
    if (v8)
    {
      drawBitmapEraserMask = self->_drawBitmapEraserMask;
      if (v8->_drawBitmapEraserMask != drawBitmapEraserMask)
      {
        v8->_drawBitmapEraserMask = drawBitmapEraserMask;
        [(PKMetalRendererController *)v8->_rendererController setDrawBitmapEraserMask:?];
      }
    }

    v10 = [(PKTiledCanvasView *)self captureLiveData:*&v35.width];
    v11 = [(PKTiledCanvasView *)self strokeGenerator];
    [v11 setCaptureLiveData:v10];

    v12 = self->_drawingController;
    if (v12)
    {
      objc_storeWeak(&v12->_delegate, self);
    }

    v13 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v13 setBackboardPaperMultiply:?];

    if (self->_resourceCacheSize)
    {
      v14 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)v14 setResourceCacheSize:?];
    }

    v15 = [(PKTiledCanvasView *)self liveStrokeMode];
    v16 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v16 setFadeOutStrokesMode:v15];

    v17 = [(PKTiledCanvasView *)self liveStrokeMode];
    v18 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v18 setLiveStrokeMode:v17];

    LOBYTE(v17) = [(PKTiledCanvasView *)self isPDFCanvasForAnalytics];
    v19 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v19 setIsPDFCanvasForAnalytics:v17];
  }

  v20 = [(PKTiledCanvasView *)self metalLayerPixelFormat:*&v35.width];
  [(PKTiledCanvasView *)self setupMetalViewForPixelFormat:v20 withPixelSize:v36.width, v36.height];
  metalView = self->_metalView;
  if (metalView)
  {
    width = v36.width;
    height = v36.height;
    if (v36.width == *MEMORY[0x1E695F060] && v36.height == *(MEMORY[0x1E695F060] + 8))
    {
      metalView->_isFixedPixelSize = 0;
    }

    else
    {
      metalView->_isFixedPixelSize = 1;
      p_width = &metalView->_fixedPixelSize.width;
      *p_width = width;
      p_width[1] = height;
    }
  }

  [(PKMetalView *)self->_metalView resizeDrawableIfNecessary];
  v26 = [(PKTiledCanvasView *)self _rendererController];
  v27 = [(PKMetalView *)&self->_metalView->super.super.super.isa metalLayer];
  [(PKMetalRendererController *)v26 setPresentationLayer:v27];

  if ([(PKTiledCanvasView *)self sixChannelBlendingMode]== 2 || [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3)
  {
    v28 = [(PKTiledCanvasView *)self _rendererController];
    v29 = [(PKMetalView *)&self->_metalView->super.super.super.isa metalMultiplyLayer];
    [(PKMetalRendererController *)v28 setMultiplyPresentationLayer:v29];
  }

  canvasBackgroundColor = self->_canvasBackgroundColor;
  v31 = canvasBackgroundColor;
  if (!canvasBackgroundColor)
  {
    v31 = [MEMORY[0x1E69DC888] whiteColor];
  }

  [(PKTiledCanvasView *)self setCanvasBackgroundColor:v31];
  if (!canvasBackgroundColor)
  {
  }

  v32 = [(PKTiledCanvasView *)self linedPaper];

  if (v32)
  {
    v33 = [(PKTiledCanvasView *)self linedPaper];
    v34 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v34 setLinedPaper:v33];
  }
}

- (void)setupMetalViewForPixelFormat:(unint64_t)a3 withPixelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 80;
  }

  v8 = [PKMetalView alloc];
  [(PKTiledCanvasView *)self bounds];
  v13 = [(PKMetalView *)v8 initWithFrame:v7 andPixelSize:[(PKTiledCanvasView *)self wantsExtendedDynamicRangeContent] pixelFormat:v9 wantsExtendedDynamicRangeContent:v10, v11, v12, width, height];
  metalView = self->_metalView;
  self->_metalView = v13;

  v15 = 1;
  [(PKMetalView *)self->_metalView setOpaque:1];
  [(PKMetalView *)self->_metalView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKMetalView *)self->_metalView setUseLuminanceColorFilter:?];
  if ([(PKTiledCanvasView *)self sixChannelBlendingMode]!= 2)
  {
    v15 = [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3;
  }

  [(PKMetalView *)self->_metalView setSixChannelBlending:v15];
  [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
  [(PKTiledCanvasView *)self addSubview:self->_metalView];

  [(PKTiledCanvasView *)self setupDisplayLink];
}

- (void)setMetalLayerContentsScaleOverride:(double)a3
{
  if (self->_metalLayerContentsScaleOverride != a3)
  {
    self->_metalLayerContentsScaleOverride = a3;
    [(PKTiledCanvasView *)self _fixedPixelSize];
    v6 = v5;
    v8 = v7;
    [(PKTiledCanvasView *)self _fixedDrawingScale];

    [(PKTiledCanvasView *)self resizeBackingBuffersForPixelSize:v6 drawingScale:v8, v9];
  }
}

- (void)_setFixedPointSize:(CGSize)a3 drawingScale:(double)a4
{
  v6 = fmax(a3.width, 1.0);
  v7 = fmax(a3.height, 1.0);
  +[PKMetalUtility layerContentsScale];
  [PKMetalUtility clampedPixelSize:v6 * v8, v7 * v8];
  v10 = v9;
  v12 = v11;
  v13 = v9 / v6 * a4;
  [(PKTiledCanvasView *)self _fixedPixelSize];
  v16 = v15 == v10 && v14 == v12;
  if (!v16 || ([(PKTiledCanvasView *)self _fixedDrawingScale], vabdd_f64(v17, v13) >= 0.00999999978))
  {
    [(PKTiledCanvasView *)self set_fixedPixelSize:v10, v12];
    [(PKTiledCanvasView *)self set_fixedDrawingScale:v13];
    [(PKTiledCanvasView *)self _fixedPixelSize];
    v19 = v18;
    v21 = v20;
    [(PKTiledCanvasView *)self _fixedDrawingScale];

    [(PKTiledCanvasView *)self resizeBackingBuffersForPixelSize:v19 drawingScale:v21, v22];
  }
}

- (void)resizeBackingBuffersForPixelSize:(CGSize)a3 drawingScale:(double)a4
{
  v15 = a3;
  if (self->_metalView)
  {
    if (a4 <= 0.0)
    {
      v14 = v15;
    }

    else
    {
      v5 = 1.0 / a4;
      v14.width = a3.width * v5;
      v14.height = a3.height * v5;
    }

    [(PKTiledCanvasView *)self adjustedPixelSize:&v15 drawingSize:&v14];
    v6 = [(PKTiledCanvasView *)self _drawingController];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 64);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [(PKMetalRendererController *)v9 setPixelSize:v15.height actualSize:v14.width, v14.height];

    metalView = self->_metalView;
    [(PKTiledCanvasView *)self bounds];
    [(PKMetalView *)metalView setFrame:?];
    v11 = self->_metalView;
    if (v11)
    {
      v12 = v15;
      if (v15.width == *MEMORY[0x1E695F060] && v15.height == *(MEMORY[0x1E695F060] + 8))
      {
        v11->_isFixedPixelSize = 0;
      }

      else
      {
        v11->_isFixedPixelSize = 1;
        v11->_fixedPixelSize = v12;
      }
    }

    [(PKMetalView *)self->_metalView resizeDrawableIfNecessary];
  }
}

- (void)setupDisplayLink
{
  if (!self->_displayLink)
  {
    v7 = objc_alloc_init(PKTiledCanvasViewDisplayLinkDelegate);
    [(PKTiledCanvasViewDisplayLinkDelegate *)v7 setView:self];
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:v7 selector:sel_display_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v9.minimum, *&v9.maximum, *&v9.preferred];
    [(CADisplayLink *)self->_displayLink setHighFrameRateReason:1507329];
    v5 = self->_displayLink;
    v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink setPaused:1];
  }
}

- (BOOL)_isDisplayLinkPaused
{
  if (_UIUpdateCycleEnabled())
  {
    return self->_updateSequenceVSyncItem == 0;
  }

  displayLink = self->_displayLink;

  return [(CADisplayLink *)displayLink isPaused];
}

- (void)_startDisplayLinkShouldPause:(BOOL)a3
{
  self->_shouldPause = a3;
  v4 = _UIUpdateCycleEnabled();
  if (_UIUpdateCycleEnabled() && !self->_updateSequenceItem)
  {
    v5 = [(PKTiledCanvasView *)self window];
    v6 = [v5 screen];
    v7 = [v6 maximumFramesPerSecond];

    objc_initWeak(&location, self);
    _UIUpdateRequestActivate();
    v8[2] = MEMORY[0x1E69E9820];
    v8[3] = 3221225472;
    v8[4] = __50__PKTiledCanvasView__startDisplayLinkShouldPause___block_invoke;
    v8[5] = &unk_1E82D72D0;
    objc_copyWeak(&v9, &location);
    v8[6] = self;
    self->_updateSequenceItem = _UIUpdateSequenceInsertItem();
    v8[1] = v7;
    objc_copyWeak(v8, &location);
    self->_updateSequenceVSyncItem = _UIUpdateSequenceInsertItem();
    objc_destroyWeak(v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    if (v4)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  [(CADisplayLink *)self->_displayLink setPaused:0];
}

void __50__PKTiledCanvasView__startDisplayLinkShouldPause___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _rendererController];
    -[PKMetalRendererController updateCyclePreCACommit:isDrawing:](v3, [*(a1 + 32) isDrawing]);

    WeakRetained = v4;
  }
}

void __50__PKTiledCanvasView__startDisplayLinkShouldPause___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  _UIMediaTimeForMachTime();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 >= 1)
  {
    v5 = 1.0 / v4;
    mach_absolute_time();
    _UIMediaTimeForMachTime();
    v7 = v3 - v5 - v6;
    if (v7 > 0.0 && v7 < v5 / 3.0)
    {
      v9 = _UIMachTimeForMediaTime();
      mach_wait_until(v9);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSequenceVSync:v3];
}

- (void)_stopDisplayLink
{
  if (_UIUpdateCycleEnabled() && self->_updateSequenceItem)
  {
    _UIUpdateSequenceRemoveItem();
    self->_updateSequenceItem = 0;
    _UIUpdateSequenceRemoveItem();
    self->_updateSequenceVSyncItem = 0;
    _UIUpdateRequestDeactivate();
  }

  [(CADisplayLink *)self->_displayLink setPaused:1];
  self->_shouldPause = 0;
}

- (BOOL)_isShapeRecognitionEnabled
{
  if (PKDisableShapeRecognition())
  {
    return 0;
  }

  v4 = [(PKTiledCanvasView *)self delegate];
  v3 = [v4 canvasViewAllowSnapToShape:self];

  return v3;
}

- (BOOL)_isFastDetectionAllowedForInkAndInputType:(int64_t)a3
{
  if (a3 != 2)
  {
    return 0;
  }

  v4 = [(PKTiledCanvasView *)self ink];
  if ([v4 _isPenInk])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKTiledCanvasView *)self ink];
    if ([v6 _isHandwritingInk])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(PKTiledCanvasView *)self ink];
      v5 = [v7 _isPencilInk];
    }
  }

  return v5;
}

- (void)setNeedsDrawingDisplay
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKTiledCanvasView_setNeedsDrawingDisplay__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __43__PKTiledCanvasView_setNeedsDrawingDisplay__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isDisplayLinkPaused];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startDisplayLinkShouldPause:1];
  }

  return result;
}

- (BOOL)_isLiveAnimating
{
  if (self->_alternativeStrokesAnimation)
  {
    return 1;
  }

  [(PKTiledCanvasView *)self liveAnimationStartTime];
  if (v3 > 0.0)
  {
    return 1;
  }

  if (![(PKTiledCanvasView *)self liveStrokeMode])
  {
    return 0;
  }

  v6 = [(PKTiledCanvasView *)self _drawingController];
  v7 = [(PKController *)v6 renderedStrokes];
  v4 = [v7 count] != 0;

  return v4;
}

- (void)handleDrawingShouldPause:(BOOL)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKTiledCanvasView_handleDrawingShouldPause___block_invoke;
  aBlock[3] = &unk_1E82D75A0;
  v7 = a3;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PKTiledCanvasView_handleDrawingShouldPause___block_invoke_2;
    block[3] = &unk_1E82D63B0;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __46__PKTiledCanvasView_handleDrawingShouldPause___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 _drawingController];
    if (v4 && (v4[48] & 1) != 0)
    {
      v5 = *(*(a1 + 32) + 607);
    }

    else
    {
      v5 = 1;
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v5 = v3[607];
  }

  result = [v3 _isLiveAnimating];
  if (result & 1) == 0 && (v5)
  {
    v7 = *(a1 + 32);

    return [v7 _stopDisplayLink];
  }

  return result;
}

- (void)_reduceMemoryFootprint
{
  [(PKTiledCanvasView *)self cancelCurrentStroke];
  [(PKTiledCanvasView *)self _stopDisplayLink];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKTiledCanvasView__reduceMemoryFootprint__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_purgeResources
{
  if ([(PKTiledCanvasView *)self isHidden])
  {
    snapshotFramebuffer = self->_snapshotFramebuffer;
    self->_snapshotFramebuffer = 0;

    [(PKMetalView *)self->_metalView flushDrawables];
    v4 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v4 purgeOriginalBackFramebuffer];

    if ([(NSMutableArray *)self->_strokeRenderCachesToPurge count])
    {
      v5 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)v5 purgeRenderCachesForStrokes:?];

      strokeRenderCachesToPurge = self->_strokeRenderCachesToPurge;

      [(NSMutableArray *)strokeRenderCachesToPurge removeAllObjects];
    }
  }
}

void __48__PKTiledCanvasView_schedulePurgeResourcesBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([WeakRetained isHidden])
    {
      if (([WeakRetained isDrawing] & 1) == 0)
      {
        v1 = [WeakRetained _drawingController];
        if (!v1 || (v2 = v1[48], v1, (v2 & 1) == 0))
        {
          [WeakRetained _purgeResources];
        }
      }
    }

    [WeakRetained setPurgeResourcesBlock:0];
  }
}

- (void)setWantsExtendedDynamicRangeContent:(BOOL)a3
{
  if (self->_wantsExtendedDynamicRangeContent != a3)
  {
    v3 = a3;
    self->_wantsExtendedDynamicRangeContent = a3;
    v5 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v5 setWantsExtendedDynamicRangeContent:v3];

    v6 = [(PKTiledCanvasView *)self metalLayerPixelFormat];
    v7 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v7 setPixelFormat:v6];

    v8 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v8 setWantsExtendedDynamicRangeContent:v3];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKTiledCanvasView *)self isHidden];
  if (v5 != v3)
  {
    [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  }

  v7.receiver = self;
  v7.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v7 setHidden:v3];
  if (!(v5 | !v3))
  {
    [(PKTiledCanvasView *)self schedulePurgeResourcesBlock];
    v6 = [(PKTiledCanvasView *)self strokeGenerator];
    [v6 resetFilters];
  }
}

- (void)_didFinishHideCanvasTransaction
{
  v2 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v2 setCombineStrokesAllowed:?];
}

- (void)_drawingDisplay:(double)a3
{
  if (!_UIUpdateCycleEnabled() || !self->_updateSequenceVSyncItem)
  {

    [(PKTiledCanvasView *)self _updateSequenceVSync:a3];
  }
}

- (void)_updateSequenceVSync:(double)a3
{
  v147 = *MEMORY[0x1E69E9840];
  v5 = CACurrentMediaTime();
  v6 = [(PKTiledCanvasView *)self _isLiveAnimating];
  v7 = [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer isReplaying];
  v102 = v6;
  val = self;
  if (v6)
  {
    [(PKTiledCanvasView *)self liveAnimationStartTime];
    v9 = v8;
    v10 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v10 setLiveStrokeElapsedTime:?];

    [(PKTiledCanvasView *)self isHidden];
  }

  else if ([(PKTiledCanvasView *)self isHidden])
  {
    v11 = [(PKTiledCanvasView *)self _drawingController];
    v12 = v11;
    if (v11 && (v11[48] & 1) != 0 || val->_isErasingObjects)
    {

      self = val;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&val->_currentDrawingBeingCopiedToCanvas);

      self = val;
      if (!WeakRetained)
      {

        [(PKTiledCanvasView *)val handleDrawingShouldPause:1];
        return;
      }
    }
  }

  metalView = self->_metalView;
  if (metalView && metalView->_doubleBuffered && ([(PKMetalView *)metalView isDrawableAvailable]& 1) == 0)
  {
    v14 = self->_numSkippedDoubleBufferedFrames + 1;
    self->_numSkippedDoubleBufferedFrames = v14;
    if (v14 < 8)
    {
      return;
    }

    v15 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v15 setDoubleBuffered:?];

    self = val;
  }

  v16 = [(PKTiledCanvasView *)self shapeDrawingController];
  v17 = v16;
  if (v16)
  {
    [(PKShapeDrawingController *)v16 _checkDetectedStroke];
  }

  v18 = [MEMORY[0x1E696AE30] processInfo];
  [v18 systemUptime];
  v20 = v19;

  v21 = val;
  [(PKTiledCanvasView *)val drawingStartTimestamp];
  v23 = v22;
  [(CADisplayLink *)val->_displayLink maximumRefreshRate];
  if (v24 >= 0.00833333333)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.00833333333;
  }

  if ([(PKTiledCanvasView *)val isDrawing])
  {
    v26 = [(PKTiledCanvasView *)val powerSavingController];
    if (v26)
    {
      v27 = v26[72];

      v21 = val;
      if (v27 == 1)
      {
        v28 = [(PKTiledCanvasView *)val powerSavingController];
        [(PKDrawingPowerSavingController *)v28 accumulateMovementForCurrentFrame];

        v21 = val;
        if (!((val->_metalView == 0) | (v102 | v7) & 1) && ![(PKTiledCanvasView *)val isPreviewing])
        {
          v30 = [(PKTiledCanvasView *)val powerSavingController];
          v31 = [(PKDrawingPowerSavingController *)v30 shouldSkipFrameWithFrameStartTimestamp:v20 framesAfterStart:?];

          v21 = val;
          if (v31)
          {

            kdebug_trace();
            return;
          }
        }
      }
    }

    else
    {
      v21 = val;
    }
  }

  if ([v21 isDrawing])
  {
    v33 = [v21 powerSavingController];
    if (v33)
    {
      *(v33 + 72) = 1;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = v20;
    }

    v21 = val;
  }

  [(PKMetalView *)v21[94] resizeDrawableIfNecessary];
  if ([v21 liveStrokeMode])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v38 = [MEMORY[0x1E695DFA8] setWithCapacity:100];
    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v40 = val->_fadeOutStrokeAnimations;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v137 objects:v146 count:16];
    if (v41)
    {
      v42 = *v138;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v138 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = *(*(&v137 + 1) + 8 * i);
          v45 = [v44 newStrokeAtTime:v5];
          [v39 addObject:v45];

          v46 = [v44 stroke];
          v47 = [v46 _strokeUUID];
          [v38 addObject:v47];
        }

        v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v137 objects:v146 count:16];
      }

      while (v41);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = [(PKTiledCanvasView *)val particlesToDestinationAnimations];
    v48 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
    if (v48)
    {
      v106 = *v134;
      do
      {
        v108 = v48;
        for (j = 0; j != v108; ++j)
        {
          if (*v134 != v106)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v133 + 1) + 8 * j);
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v110 = v50;
          v51 = [v50 strokes];
          v52 = [v51 countByEnumeratingWithState:&v129 objects:v144 count:16];
          if (v52)
          {
            v53 = *v130;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v130 != v53)
                {
                  objc_enumerationMutation(v51);
                }

                v55 = *(*(&v129 + 1) + 8 * k);
                v56 = [v55 _strokeUUID];
                v57 = [v38 containsObject:v56];

                if ((v57 & 1) == 0)
                {
                  [v39 addObject:v55];
                  [v38 addObject:v55];
                }
              }

              v52 = [v51 countByEnumeratingWithState:&v129 objects:v144 count:16];
            }

            while (v52);
          }

          [v110 bounds];
          v153.origin.x = v58;
          v153.origin.y = v59;
          v153.size.width = v60;
          v153.size.height = v61;
          v149.origin.x = x;
          v149.origin.y = y;
          v149.size.width = width;
          v149.size.height = height;
          v150 = CGRectUnion(v149, v153);
          x = v150.origin.x;
          y = v150.origin.y;
          width = v150.size.width;
          height = v150.size.height;
        }

        v48 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
      }

      while (v48);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v62 = [(PKTiledCanvasView *)val transformStrokesAnimations];
    v107 = v62;
    v63 = [v62 countByEnumeratingWithState:&v125 objects:v143 count:16];
    if (v63)
    {
      obja = *v126;
      do
      {
        v64 = 0;
        v109 = v63;
        do
        {
          if (*v126 != obja)
          {
            objc_enumerationMutation(v62);
          }

          v111 = v64;
          v65 = *(*(&v125 + 1) + 8 * v64);
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v66 = [(PKTransformStrokesAnimation *)v65 newStrokesAtTime:v5];
          v67 = [v66 countByEnumeratingWithState:&v121 objects:v142 count:16];
          if (v67)
          {
            v68 = *v122;
            do
            {
              for (m = 0; m != v67; ++m)
              {
                if (*v122 != v68)
                {
                  objc_enumerationMutation(v66);
                }

                v70 = *(*(&v121 + 1) + 8 * m);
                v71 = [v70 _strokeUUID];
                v72 = [v38 containsObject:v71];

                if ((v72 & 1) == 0)
                {
                  [v39 addObject:v70];
                  [v38 addObject:v70];
                }
              }

              v67 = [v66 countByEnumeratingWithState:&v121 objects:v142 count:16];
            }

            while (v67);
          }

          if (v65)
          {
            v73 = v65[13];
            v74 = v65[14];
            v75 = v65[15];
            v76 = v65[16];
          }

          else
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v73 = 0;
          }

          v62 = v107;
          v151.origin.x = x;
          v151.origin.y = y;
          v151.size.width = width;
          v151.size.height = height;
          v152 = CGRectUnion(v151, *&v73);
          x = v152.origin.x;
          y = v152.origin.y;
          width = v152.size.width;
          height = v152.size.height;
          v64 = v111 + 1;
        }

        while (v111 + 1 != v109);
        v63 = [v107 countByEnumeratingWithState:&v125 objects:v143 count:16];
      }

      while (v63);
    }

    v77 = [(PKTiledCanvasView *)val strokeUUIDsAboutToBeRemoved];
    [v38 unionSet:v77];

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v78 = [(PKTiledCanvasView *)val _drawingController];
    v79 = [(PKController *)v78 renderedStrokes];

    v80 = [v79 countByEnumeratingWithState:&v117 objects:v141 count:16];
    if (v80)
    {
      v81 = *v118;
      do
      {
        for (n = 0; n != v80; ++n)
        {
          if (*v118 != v81)
          {
            objc_enumerationMutation(v79);
          }

          v83 = *(*(&v117 + 1) + 8 * n);
          v84 = [v83 _strokeUUID];
          v85 = [v38 containsObject:v84];

          if ((v85 & 1) == 0)
          {
            [v39 addObject:v83];
          }
        }

        v80 = [v79 countByEnumeratingWithState:&v117 objects:v141 count:16];
      }

      while (v80);
    }

    [PKDrawing sortStrokes:v39];
    v86 = [(PKTiledCanvasView *)val _rendererController];
    [(PKMetalRendererController *)v86 setLiveStrokeStrokes:v39 animationBounds:x, y, width, height];

    v21 = val;
  }

  if (v21[106])
  {
    v87 = [v21 _rendererController];
    alternativeStrokesAnimation = val->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      alternativeStrokesAnimation = alternativeStrokesAnimation->_strokes;
    }

    v89 = alternativeStrokesAnimation;
    v90 = val->_alternativeStrokesAnimation;
    v91 = [(PKAlternativeStrokesAnimation *)v90 alphaAtTime:v5];
    v92 = [(PKAlternativeStrokesAnimation *)v90 originalStrokeAlphaAtTime:v5];
    [(PKMetalRendererController *)v87 setAlternativeStrokes:v89 alpha:v91 originalStrokeAlpha:v92];

    v21 = val;
  }

  v93 = v21[109];
  if (v93)
  {
    v94 = [(PKInterpolateColorAnimation *)v93 colorAtTime:v5];
    v95 = [(PKTiledCanvasView *)val _rendererController];
    v96 = v94;
    -[PKMetalRendererController setLiveRenderingOverrideColor:](v95, [v94 CGColor]);

    v21 = val;
  }

  if (v102)
  {
    [v21 checkAnimationsDidEndAtTime:v5];
    v21 = val;
  }

  v97 = [v21 _rendererController];
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  [(PKMetalRendererController *)v97 prerenderWithTransform:val->_inputScale inputScale:a3 at:?];

  *&v114 = 0;
  *(&v114 + 1) = &v114;
  *&v115 = 0x3042000000;
  *(&v115 + 1) = __Block_byref_object_copy__3;
  *&v116 = __Block_byref_object_dispose__3;
  objc_initWeak(&v116 + 1, val);
  val->_latestRenderTimestamp = CACurrentMediaTime();
  v98 = [(PKTiledCanvasView *)val _drawingController];
  v99 = v98;
  if (v98)
  {
    v100 = *(v98 + 64);
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __42__PKTiledCanvasView__updateSequenceVSync___block_invoke;
  v112[3] = &unk_1E82D7320;
  v112[4] = &v114;
  v113 = v102;
  [(PKMetalRendererController *)v101 didFinishRendering:v112];

  _Block_object_dispose(&v114, 8);
  objc_destroyWeak(&v116 + 1);
}

void __42__PKTiledCanvasView__updateSequenceVSync___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (a2)
  {
    v5 = *(a1 + 40) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = WeakRetained;
  [WeakRetained handleDrawingShouldPause:v5 & 1];
}

- (void)_updateMetalLayerOpacityForceNonOpaqueSixChannel:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  v6 = [(PKTiledCanvasView *)self isOpaque];
  v7 = v5 == 1 && v3;
  if (v5 == 1)
  {
    v8 = !v3;
  }

  else
  {
    v8 = v6;
  }

  v36 = [(PKTiledCanvasView *)self metalView];
  v9 = [(PKMetalView *)v36 metalLayer];
  [v9 setOpaque:v8];

  v37 = [(PKTiledCanvasView *)self metalView];
  v10 = [(PKMetalView *)v37 metalMultiplyLayer];
  [v10 setOpaque:v8];

  if ((v8 & 1) == 0)
  {
    v38 = [(PKTiledCanvasView *)self ink];
    v11 = [v38 behavior];
    v12 = [v11 renderingDescriptor];
    v13 = [v12 blendMode] == 1 && v7;

    if (v13 == 1)
    {
      v39 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
      v14 = [(PKTiledCanvasView *)self metalView];
      v15 = [(PKMetalView *)v14 metalLayer];
      [v15 setCompositingFilter:v39];

      v40 = [(PKTiledCanvasView *)self metalView];
      v16 = [(PKMetalView *)v40 metalLayer];
      [v16 setAllowsGroupOpacity:0];

      v41 = [(PKTiledCanvasView *)self metalView];
      v17 = [(PKMetalView *)v41 metalLayer];
      [v17 setAllowsGroupBlending:0];

      v42 = [(PKTiledCanvasView *)self metalView];
      v18 = [v42 layer];
      [v18 setAllowsGroupOpacity:0];

      v43 = [(PKTiledCanvasView *)self metalView];
      v19 = [v43 layer];
      [v19 setAllowsGroupBlending:0];

LABEL_20:
      DeviceRGB = DKUCGColorCreateDeviceRGB(0.0, 0.0, 0.0, 0.0);
      v33 = [(PKTiledCanvasView *)self _drawingController];
      v53 = v33;
      if (v33)
      {
        v34 = *(v33 + 64);
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      [(PKMetalRendererController *)v35 setBackgroundColor:?];

      CGColorRelease(DeviceRGB);
      return;
    }
  }

  if ([(PKTiledCanvasView *)self sixChannelBlendingMode]== 2 || [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3)
  {
    v44 = [(PKTiledCanvasView *)self metalView];
    v20 = [(PKMetalView *)v44 metalLayer];
    [v20 setAllowsGroupOpacity:0];

    v45 = [(PKTiledCanvasView *)self metalView];
    v21 = [(PKMetalView *)v45 metalLayer];
    [v21 setAllowsGroupBlending:0];

    v46 = [(PKTiledCanvasView *)self metalView];
    v22 = [v46 layer];
    [v22 setAllowsGroupOpacity:0];

    v47 = [(PKTiledCanvasView *)self metalView];
    v23 = [v47 layer];
    [v23 setAllowsGroupBlending:0];
  }

  else
  {
    v48 = [(PKTiledCanvasView *)self metalView];
    v24 = [(PKMetalView *)v48 metalLayer];
    [v24 setCompositingFilter:0];

    v49 = [(PKTiledCanvasView *)self metalView];
    v25 = [(PKMetalView *)v49 metalLayer];
    [v25 setAllowsGroupOpacity:1];

    v50 = [(PKTiledCanvasView *)self metalView];
    v26 = [(PKMetalView *)v50 metalLayer];
    [v26 setAllowsGroupBlending:1];

    v51 = [(PKTiledCanvasView *)self metalView];
    v27 = [v51 layer];
    [v27 setAllowsGroupOpacity:1];

    v47 = [(PKTiledCanvasView *)self metalView];
    v23 = [v47 layer];
    [v23 setAllowsGroupBlending:1];
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

  v52 = self->_canvasBackgroundColor;
  v28 = [(PKTiledCanvasView *)self _drawingController];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 64);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  [(PKMetalRendererController *)v31 setBackgroundColor:?];
}

- (void)setOpaque:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v4 setOpaque:a3];
  [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
}

- (void)setIsUnderBlendedContent:(BOOL)a3
{
  v3 = a3;
  self->_isUnderBlendedContent = a3;
  v5 = [(PKTiledCanvasView *)self metalView];
  v4 = [(PKMetalView *)v5 metalLayer];
  [v4 setAllowsDisplayCompositing:!v3];
}

- (void)setCaptureLiveData:(BOOL)a3
{
  v3 = a3;
  self->_captureLiveData = a3;
  v4 = [(PKTiledCanvasView *)self strokeGenerator];
  [v4 setCaptureLiveData:v3];
}

- (void)delayCompletionBlockUntilPresentation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKTiledCanvasView *)self _rendererController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PKTiledCanvasView_delayCompletionBlockUntilPresentation___block_invoke;
    aBlock[3] = &unk_1E82D63B0;
    v8 = v4;
    [(PKMetalRendererController *)v5 callBlockAfterPresenting:?];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKTiledCanvasView_delayCompletionBlockUntilPresentation___block_invoke_2;
  v6[3] = &unk_1E82D6388;
  v6[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_setDrawing:(id)a3 tiles:(id)a4 tileScale:(double)a5 snapshotTexture:(id)a6 snapshotTextureTransform:(CGAffineTransform *)a7 completionBlock:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  if (!v15)
  {
LABEL_5:
    if (v18)
    {
      v18[2](v18);
    }

    goto LABEL_12;
  }

  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  [(PKTiledCanvasView *)self setHasSnapshot:v17 != 0];
  if (self->_liveInteractionCount >= 1 && [v15 _isEmpty])
  {
    v19 = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)v19 setLiveInteractionDrawing:v15];

    objc_storeStrong(&self->_drawing, a3);
    goto LABEL_5;
  }

  objc_initWeak(location, self);
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  [(PKTiledCanvasView *)self scaledStrokeTransform];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke;
  aBlock[3] = &unk_1E82D7348;
  objc_copyWeak(&v39, location);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  v38 = v18;
  v20 = _Block_copy(aBlock);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_2;
  v33[3] = &unk_1E82D7370;
  objc_copyWeak(&v36, location);
  v21 = v15;
  v34 = v21;
  v22 = v20;
  v35 = v22;
  v23 = _Block_copy(v33);
  if (v16 || !v17)
  {
    memset(&v30, 0, sizeof(v30));
    [(PKTiledCanvasView *)self strokeTransform];
    t1 = v30;
    CGAffineTransformMakeScale(&v27, a5, a5);
    CGAffineTransformConcat(&v29, &t1, &v27);
    v30 = v29;
    v25 = [(PKTiledCanvasView *)self _drawingController];
    v29 = v30;
    v26 = *&a7->c;
    *&t1.a = *&a7->a;
    *&t1.c = v26;
    *&t1.tx = *&a7->tx;
    [(PKController *)v25 setDrawing:v21 tiles:v16 tileTransform:&v29 contentImageTexture:v17 contentImageTextureTransform:&t1 completionBlock:v23];
  }

  else
  {
    v24 = [(PKTiledCanvasView *)self _drawingController];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_4;
    v31[3] = &unk_1E82D63B0;
    v32 = v23;
    [(PKController *)v24 setDrawing:v21 imageTexture:v17 completion:v31];
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v39);
  objc_destroyWeak(location);
LABEL_12:
}

uint64_t __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v2;
  v10 = *(a1 + 80);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _rendererController];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [(PKMetalRendererController *)v4 setStrokeTransform:v7];

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_3;
  v7 = &unk_1E82D6890;
  v3 = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  dispatch_sync(MEMORY[0x1E69E96A0], &v4);
  [v3 delayCompletionBlockUntilPresentation:{*(a1 + 40), v4, v5, v6, v7}];
}

void *__106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = [result drawing];
    v4 = [v3 uuid];
    v5 = [*(a1 + 40) uuid];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = [*(a1 + 32) drawing];
      [v7 mergeWithDrawing:*(a1 + 40)];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v7 = *(v8 + 648);
      *(v8 + 648) = v9;
    }

    v10 = *(a1 + 32);

    return [v10 setupDisplayLink];
  }

  return result;
}

- (PKDrawing)activeDrawing
{
  v3 = [(PKTiledCanvasView *)self currentDrawingBeingCopiedToCanvas];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PKTiledCanvasView *)self drawing];
  }

  v6 = v5;

  return v6;
}

- (void)drawingChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __36__PKTiledCanvasView_drawingChanged___block_invoke;
  v11 = &unk_1E82D6890;
  v12 = self;
  v6 = v5;
  v13 = v6;
  v7 = _Block_copy(&v8);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __36__PKTiledCanvasView_drawingChanged___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) drawing];
  v3 = [v2 uuid];
  v4 = [*(a1 + 40) uuid];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) drawing];
    [v6 mergeWithDrawing:*(a1 + 40)];
  }

  v7 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) drawing];
    v12 = [*(a1 + 32) _drawingController];
    v13 = [(PKController *)v12 renderedStrokes];
    v14 = 138412546;
    v15 = v11;
    v16 = 2048;
    v17 = [v13 count];
    _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "Drawing changed %@, renderedStrokes: %lu", &v14, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8[224])
  {
    v9 = [v8 delegate];
    [v9 canvasView:*(a1 + 32) drawingDidChange:*(a1 + 40)];

    v8 = *(a1 + 32);
  }

  return [v8 updateHasVisibleStrokes];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKTiledCanvasView *)self allowSimultaneousGR];
  if (v8)
  {
    v9 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
    if (v9 == v6)
    {
      v11 = 1;
    }

    else
    {
      v10 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      v11 = v10 == v7;
    }

    v14 = v8 == v6 || v8 == v7;
    v12 = v14 && v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  v9 = v8;
  if (v8 != v6)
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  NSClassFromString(&cfstr_Uitextselectio.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  if ((*&self->_canvasViewFlags & 0x1000) != 0)
  {
    v7 = [(PKTiledCanvasView *)self delegate];
    v6 = [v7 canvasView:self shouldBeginDrawingWithTouch:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = [(PKTiledCanvasView *)self drawingGestureRecognizer];

  if (v5 == v4)
  {
    v6 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "_gestureRecognizerFailed called for drawing gesture recognizer", v7, 2u);
    }

    [v4 cancel];
  }
}

- (id)_touchView
{
  v2 = self;
  v3 = v2;
  if (v2->_canvasViewFlags.delegateSupportsTouchView)
  {
    v4 = [(PKTiledCanvasView *)v2 delegate];
    v5 = [v4 canvasViewTouchView:v3];
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    v3 = v5;
  }

  v6 = v3;

  return v3;
}

- (id)currentStroke
{
  v2 = [(PKTiledCanvasView *)self strokeGenerator];
  v3 = [v2 newStrokeWithCurrentData];

  return v3;
}

- (id)currentStrokeWithStrokeDataCopy
{
  v2 = [(PKTiledCanvasView *)self strokeGenerator];
  v3 = [v2 newStrokeWithCurrentDataCopy];

  return v3;
}

- (void)cancelCurrentStroke
{
  v3 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "cancelCurrentStroke called", v5, 2u);
  }

  v4 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  [v4 cancel];
}

- (id)liveDrawing
{
  v3 = [(PKTiledCanvasView *)self currentStrokeWithStrokeDataCopy];
  if (v3)
  {
    [(PKDrawing *)self->_drawing updateStroke:v3 indexHint:[(PKDrawing *)self->_drawing _rootStrokesCount]- 1];
  }

  drawing = self->_drawing;
  v5 = drawing;

  return drawing;
}

- (double)_inputScale
{
  [(PKTiledCanvasView *)self strokeTransform];
  CGAffineTransformInvert(&v11, &v10);
  a = v11.a;
  b = v11.b;
  v5 = [(PKTiledCanvasView *)self window];
  [(PKTiledCanvasView *)self convertSize:v5 toView:1.0, 1.0];
  v7 = v6;
  v8 = sqrt(b * b + a * a);

  result = v8 / v7;
  if (v7 <= 0.0)
  {
    return v8;
  }

  return result;
}

- (CGAffineTransform)strokeTransform
{
  v7 = [(PKTiledCanvasView *)self _touchView];
  v4 = objc_opt_class();
  v5 = PKDynamicCast(v4, v7);
  [(PKTiledCanvasView *)self strokeTransformForAttachment:v5];

  return result;
}

- (CGAffineTransform)_strokeTransformForAttachment:(SEL)a3
{
  v6 = a4;
  memset(&v18, 0, sizeof(v18));
  [(PKTiledCanvasView *)self _replayCoordinateSystemTransform];
  t1 = v18;
  if (!CGAffineTransformIsIdentity(&t1))
  {
    v9 = *&v18.c;
    *&retstr->a = *&v18.a;
    *&retstr->c = v9;
    v10 = *&v18.tx;
    goto LABEL_9;
  }

  if ((*(&self->_canvasViewFlags + 8) & 0x80) == 0 || (-[PKTiledCanvasView delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 canvasViewContentCoordinateSpace:self], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    if (v6)
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
      v11 = [v6 tileContainerView];
      PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v11, self, &retstr->a);

      [v6 drawingTransform];
      v12 = *&retstr->c;
      *&v16.a = *&retstr->a;
      *&v16.c = v12;
      *&v16.tx = *&retstr->tx;
      CGAffineTransformConcat(retstr, &t1, &v16);
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v14;
    v10 = *(v13 + 32);
LABEL_9:
    *&retstr->tx = v10;
    goto LABEL_10;
  }

  PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v8, self, &retstr->a);

LABEL_10:
  return result;
}

- (CGAffineTransform)scaledStrokeTransform
{
  [(PKTiledCanvasView *)self strokeTransform];
  [(PKTiledCanvasView *)self layerContentsScale];
  v6 = v5;
  [(PKTiledCanvasView *)self layerContentsScale];
  CGAffineTransformMakeScale(&v9, v6, v7);
  return CGAffineTransformConcat(retstr, &t1, &v9);
}

- (void)willBeginLiveInteractionWithTouch:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentStrokeTouch, a3);
  liveInteractionCount = self->_liveInteractionCount;
  self->_liveInteractionCount = liveInteractionCount + 1;
  if (liveInteractionCount)
  {
    if (self->_combineTimeoutBlock)
    {
      self->_liveInteractionCount = liveInteractionCount;
      dispatch_block_cancel(self->_combineTimeoutBlock);
      combineTimeoutBlock = self->_combineTimeoutBlock;
      self->_combineTimeoutBlock = 0;
    }
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Canvas live interaction did begin", v21, 2u);
    }

    v9 = [(PKTiledCanvasView *)self ink];
    v10 = [v9 _supportsCombiningStrokes];

    if (v10 && ((*(&self->_canvasViewFlags + 8) & 0x40) == 0 || (-[PKTiledCanvasView delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 canvasViewShouldCombineStrokes:self], v11, v12)))
    {
      isCombiningStrokes = 1;
      if (!self->_isCombiningStrokes)
      {
        self->_isCombiningStrokes = 1;
        self->_combiningStrokesCount = 0;
        v14 = [MEMORY[0x1E696AFB0] UUID];
        combineStrokesRenderGroupID = self->_combineStrokesRenderGroupID;
        self->_combineStrokesRenderGroupID = v14;

        v16 = [(PKTiledCanvasView *)self activeDrawing];
        v17 = [v16 uuid];
        combineStrokesDrawingID = self->_combineStrokesDrawingID;
        self->_combineStrokesDrawingID = v17;

        isCombiningStrokes = self->_isCombiningStrokes;
      }
    }

    else
    {
      isCombiningStrokes = 0;
      self->_isCombiningStrokes = 0;
    }

    v19 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v19 setCombineStrokesAllowed:?];

    v20 = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)v20 didStartLiveInteraction];

    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }
}

- (void)didEndLiveInteractionWithStrokes:(id)a3 drawing:(id)a4 cancelled:(BOOL)a5 forPreview:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  liveInteractionCount = self->_liveInteractionCount;
  v13 = liveInteractionCount - 1;
  self->_liveInteractionCount = liveInteractionCount - 1;
  if (self->_isCombiningStrokes && liveInteractionCount == 1)
  {
    self->_liveInteractionCount = liveInteractionCount;
    objc_initWeak(location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKTiledCanvasView_didEndLiveInteractionWithStrokes_drawing_cancelled_forPreview___block_invoke;
    block[3] = &unk_1E82D6DA8;
    objc_copyWeak(&v47, location);
    v46 = v11;
    v15 = dispatch_block_create(0, block);
    combineTimeoutBlock = self->_combineTimeoutBlock;
    self->_combineTimeoutBlock = v15;

    v17 = dispatch_time(0, 1000000000);
    dispatch_after(v17, MEMORY[0x1E69E96A0], self->_combineTimeoutBlock);

    objc_destroyWeak(&v47);
    objc_destroyWeak(location);
    v13 = self->_liveInteractionCount;
  }

  if (v13)
  {
    if (v13 >= 1 && [v10 count] && !v7)
    {
      finishedStrokes = self->_finishedStrokes;
      if (!finishedStrokes)
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
        v20 = self->_finishedStrokes;
        self->_finishedStrokes = v19;

        finishedStrokes = self->_finishedStrokes;
      }

      [(NSMutableArray *)finishedStrokes addObjectsFromArray:v10];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEBUG, "Canvas live interaction will end", location, 2u);
    }

    v22 = MEMORY[0x1E695E0F0];
    if (v10 && !v7)
    {
      v22 = [v10 copy];
    }

    if ([(NSMutableArray *)self->_finishedStrokes count])
    {
      [(NSMutableArray *)self->_finishedStrokes addObjectsFromArray:v22];
      v23 = [(NSMutableArray *)self->_finishedStrokes copy];

      v22 = v23;
      [(NSMutableArray *)self->_finishedStrokes removeAllObjects];
    }

    if ((*&self->_canvasViewFlags & 0x800) != 0)
    {
      v24 = [(PKTiledCanvasView *)self delegate];
      [v24 _canvasView:self didFinishRenderingNewStrokes:v22 inDrawing:v11 forPreview:v6];
    }

    currentStrokeTouch = self->_currentStrokeTouch;
    self->_currentStrokeTouch = 0;

    v26 = [(PKTiledCanvasView *)self _drawingController];
    v27 = v26;
    if (v26)
    {
      dispatch_semaphore_signal(*(v26 + 80));
    }

    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }

  if ([v10 count] && v7 && (*&self->_canvasViewFlags & 8) != 0 && !v6)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = v10;
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v29)
    {
      v30 = *v42;
      do
      {
        v31 = 0;
        do
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v41 + 1) + 8 * v31);
          v33 = [(PKTiledCanvasView *)self delegate];
          [v33 canvasView:self cancelledStroke:v32];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }

    v34 = [(PKTiledCanvasView *)self _drawingController];
    v35 = [(PKController *)v34 renderedStrokes];
    if ([v35 count])
    {
      v36 = [(PKTiledCanvasView *)self drawing];
      v37 = [v36 strokes];
      v38 = [v37 count] == 0;

      if (!v38)
      {
        goto LABEL_41;
      }

      v34 = [(PKTiledCanvasView *)self _drawingController];
      v35 = [(PKTiledCanvasView *)self _drawingController];
      v39 = [(PKController *)v35 renderedStrokes];
      [(PKController *)v34 hideStrokesWithoutUpdating:v39 completion:0];
    }
  }

LABEL_41:
  if (self->_liveInteractionCount < 0)
  {
    v40 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v40, OS_LOG_TYPE_FAULT, "Drawing count mismatch!", location, 2u);
    }

    self->_liveInteractionCount = 0;
  }
}

void __83__PKTiledCanvasView_didEndLiveInteractionWithStrokes_drawing_cancelled_forPreview___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained[64];
    WeakRetained[64] = 0;

    *(WeakRetained + 528) = 0;
    [WeakRetained didEndLiveInteractionWithStrokes:MEMORY[0x1E695E0F0] drawing:*(a1 + 32) cancelled:0];
  }
}

- (BOOL)drawingGestureRecognizer:(id)a3 shouldBeginDrawingWithTouches:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
  if (alternativeStrokesAnimation)
  {
    alternativeStrokesAnimation->_forceDone = 1;
    [(PKTiledCanvasView *)self _drawingDisplay:0.0];
  }

  v12 = [(PKTiledCanvasView *)self ink];
  v13 = [v12 _isHandwritingInk];

  return v13 ^ 1;
}

- (BOOL)drawingGestureRecognizer:(id)a3 shouldDelayDrawingBeganWithTouch:(id)a4
{
  v5 = a4;
  if ((*(&self->_canvasViewFlags + 8) & 0x20) != 0)
  {
    v7 = [(PKTiledCanvasView *)self delegate];
    v6 = [v7 canvasView:self shouldDelayDrawingBeganWithTouch:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_inkForNewStroke
{
  if ([(PKTiledCanvasView *)self sixChannelBlendingMode])
  {
    [(PKTiledCanvasView *)self sixChannelInk];
  }

  else
  {
    [(PKTiledCanvasView *)self ink];
  }
  v3 = ;
  if (!v3)
  {
    v4 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_FAULT, "Started a new stroke without an ink", v8, 2u);
    }

    v3 = objc_opt_new();
    [(PKTiledCanvasView *)self setInk:v3];
  }

  if (!self->_wantsExtendedDynamicRangeContent)
  {
    [v3 hdrHeadroom];
    if (v5 > 1.0)
    {
      v6 = [PKInk sdrInkFromInk:v3];

      v3 = v6;
    }
  }

  return v3;
}

- (void)drawingBegan:(id)a3
{
  v4 = a3;
  LogTouchIfEnabled(v4, 0);
  v5 = [(PKTiledCanvasView *)self _touchView];
  [(UITouch *)v4 PK_preciseLocationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UITouch *)v4 type]== UITouchTypePencil;
  v11 = [(PKTiledCanvasView *)self drawingGestureRecognizer:0];
  -[PKTiledCanvasView _drawingBegan:inputPoint:locationInView:forPreview:disableDetachedRendering:activeInputProperties:inputType:](self, "_drawingBegan:inputPoint:locationInView:forPreview:disableDetachedRendering:activeInputProperties:inputType:", v4, &v12, 0, 0, [v11 activeInputProperties], v10, v7, v9);
}

- (void)_drawingBegan:(id)a3 inputPoint:(id *)a4 locationInView:(CGPoint)a5 forPreview:(BOOL)a6 disableDetachedRendering:(BOOL)a7 activeInputProperties:(unint64_t)a8 inputType:(int64_t)a9
{
  v101 = a8;
  v10 = a7;
  v11 = a6;
  y = a5.y;
  x = a5.x;
  v129 = *MEMORY[0x1E69E9840];
  v105 = a3;
  std::vector<PKInputPoint>::resize(&self->_rollPointsToUpdate.__begin_, 0);
  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  v16 = [(PKTiledCanvasView *)self strokeGenerator];
  [v16 setIsPreviewing:v11];

  p_canvasViewFlags = &self->_canvasViewFlags;
  if ((*(&self->_canvasViewFlags + 8) & 1) != 0 && [(PKTiledCanvasView *)self enableCanvasOffsetSupport])
  {
    v18 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v18 setPresentsWithTransaction:?];

    objc_initWeak(location, self);
    v19 = [(PKTiledCanvasView *)self _rendererController];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke;
    v118[3] = &unk_1E82D7398;
    objc_copyWeak(&v119, location);
    [(PKMetalRendererController *)v19 setCanvasOffsetPresentationOffsetBlock:v118];

    objc_destroyWeak(&v119);
    objc_destroyWeak(location);
  }

  else
  {
    v20 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v20 setPresentsWithTransaction:?];

    v21 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v21 setCanvasOffsetPresentationOffsetBlock:?];
  }

  v22 = [(PKTiledCanvasView *)self metalView];
  v23 = [(PKMetalView *)v22 metalLayer];
  [v23 setAllowsDisplayCompositing:!v10];

  v24 = [(PKTiledCanvasView *)self shapeDrawingController];
  LOBYTE(v23) = v24 == 0;

  if ((v23 & 1) == 0)
  {
    v25 = [(PKTiledCanvasView *)self _isShapeRecognitionEnabled];
    v26 = [(PKTiledCanvasView *)self shapeDrawingController];
    if (v26)
    {
      v26[193] = v25 && !v11;
    }
  }

  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  if ((*(&self->_canvasViewFlags + 8) & 0x200) != 0)
  {
    v27 = [(PKTiledCanvasView *)self delegate];
    v28 = *&a4->var13;
    v126 = *&a4->var11;
    v127 = v28;
    var15 = a4->var15;
    v29 = *&a4->var5;
    v122 = *&a4->var3;
    v123 = v29;
    v30 = *&a4->var9;
    v124 = *&a4->var7;
    v125 = v30;
    v31 = *&a4->var1;
    *location = a4->var0;
    v121 = v31;
    [v27 _canvasViewWillBeginDrawing:self startPoint:location forPreview:v11];
    goto LABEL_14;
  }

  if ((*p_canvasViewFlags & 0x40) != 0 && !v11)
  {
    v27 = [(PKTiledCanvasView *)self delegate];
    [v27 _canvasViewWillBeginDrawing:self];
LABEL_14:
  }

  if (a9 == 1)
  {
    v32 = +[PKPencilDevice activePencil];
    [v32 tagAsUsed];
  }

  if (!v105 || ![(PKTiledCanvasView *)self eraserBegan:v105])
  {
    v33 = [(PKTiledCanvasView *)self ink];
    if ([v33 _isEraserInk])
    {
      v34 = 1;
    }

    else
    {
      v34 = [(PKTiledCanvasView *)self hasSnapshot]^ 1;
    }

    [(PKTiledCanvasView *)self _updateMetalLayerOpacityForceNonOpaqueSixChannel:v34];

    if ((*p_canvasViewFlags & 2) != 0)
    {
      v35 = [(PKTiledCanvasView *)self delegate];
      [v35 canvasViewWillBeginNewStroke:self withTouch:v105 location:{x, y}];
    }

    if (v105)
    {
      v36 = [(PKTiledCanvasView *)self _touchView];
      [v105 PK_preciseLocationInView:v36];
      x = v37;
      y = v38;

      [(PKTiledCanvasView *)self applyTransformToTouchLocation:x, y];
      [(PKInputPointUtility *)self drawingInputPoint:v105 view:0 touch:v102 predicted:location activeInputProperties:v39, v40];
      v41 = v127;
      *&a4->var11 = v126;
      *&a4->var13 = v41;
      a4->var15 = var15;
      v42 = v123;
      *&a4->var3 = v122;
      *&a4->var5 = v42;
      v43 = v125;
      *&a4->var7 = v124;
      *&a4->var9 = v43;
      v44 = v121;
      a4->var0 = *location;
      *&a4->var1 = v44;
    }

    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    [(PKTiledCanvasView *)self scaledStrokeTransform];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v45 = [(PKTiledCanvasView *)self _rendererController];
    *location = 0u;
    v121 = 0u;
    v122 = 0u;
    [(PKMetalRendererController *)v45 setStrokeTransform:?];

    self->_inputScale = sqrt(0.0 * 0.0 + 0.0 * 0.0);
    kdebug_trace();
    kdebug_trace();
    v46 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      p_canvasViewFlags = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = p_canvasViewFlags;
      _os_log_impl(&dword_1C7CCA000, v46, OS_LOG_TYPE_DEFAULT, "Began drawing: %@", location, 0xCu);
    }

    [(PKTiledCanvasView *)self willBeginLiveInteractionWithTouch:v105];
    [(PKTiledCanvasView *)self setIsDrawing:1 forPreview:v11];
    v47 = [MEMORY[0x1E696AE30] processInfo];
    [v47 systemUptime];
    [(PKTiledCanvasView *)self setDrawingStartTimestamp:?];

    [(PKTiledCanvasView *)self _inputScale];
    v49 = v48;
    v50 = [(PKTiledCanvasView *)self activeDrawing];
    v103 = [v50 newStroke];

    v51 = [(PKTiledCanvasView *)self _inkForNewStroke];
    [v103 _setInk:v51];

    if ([(PKTiledCanvasView *)self generateLiveDrawing])
    {
      objc_initWeak(location, self);
      v52 = [(PKTiledCanvasView *)self _drawingController];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_140;
      v110[3] = &unk_1E82D73C0;
      objc_copyWeak(&v111, location);
      [(PKController *)v52 addLiveStrokeEarly:v103 completionBlock:v110];

      objc_destroyWeak(&v111);
      objc_destroyWeak(location);
    }

    if (self->_isCombiningStrokes)
    {
      [v103 _setRenderGroupID:self->_combineStrokesRenderGroupID];
    }

    v53 = [(PKTiledCanvasView *)self ink];
    if ([v53 _isStrokeGeneratingInk])
    {
      v54 = [(PKTiledCanvasView *)self ink];
      if ([v54 _isHandwritingInk] || (-[PKTiledCanvasView shapeDrawingController](self, "shapeDrawingController"), (v55 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        if (v55[192] == 1)
        {
        }

        else
        {
          v56 = v55[193];

          if ((v56 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v57 = [(PKTiledCanvasView *)self _touchView];
        v58 = [(PKTiledCanvasView *)self _touchView];
        v59 = [v58 window];
        [v57 convertPoint:v59 toView:{x, y}];
        v61 = v60;
        v63 = v62;

        v64 = [(PKTiledCanvasView *)self shapeDrawingController];
        [(PKShapeDrawingController *)v64 beginStrokeAtPoint:v61, v63];

        v65 = -[PKTiledCanvasView _isFastDetectionAllowedForInkAndInputType:](self, "_isFastDetectionAllowedForInkAndInputType:", [v105 type]);
        v66 = [(PKTiledCanvasView *)self shapeDrawingController];
        v53 = v66;
        if (v66)
        {
          *(v66 + 195) = v65;
        }
      }
    }

LABEL_42:
    if (!a9)
    {
      v67 = [(PKTiledCanvasView *)self traitCollection];
      v68 = [v67 forceTouchCapability] == 1;

      if (v68)
      {
        a4->var1 = -1.0;
      }
    }

    if (!v11)
    {
      v69 = 1;
    }

    else if (os_variant_has_internal_diagnostics())
    {
      if (qword_1EC291570 != -1)
      {
        dispatch_once(&qword_1EC291570, &__block_literal_global_855);
      }

      v69 = !v11 | byte_1EC291561;
    }

    else
    {
      v69 = 0;
    }

    v70 = [(PKTiledCanvasView *)self powerSavingController];
    v71 = v70 == 0;

    if (v71)
    {
      v72 = objc_alloc_init(PKDrawingPowerSavingController);
      [(PKTiledCanvasView *)self setPowerSavingController:v72];
    }

    v73 = [(PKTiledCanvasView *)self powerSavingController];
    if (v73)
    {
      v73[104] = a9 == 1;
    }

    v74 = [v103 ink];
    v75 = [v74 identifier];
    v76 = [v75 isEqual:@"com.apple.ink.marker"];
    if (v76)
    {
      v77 = 1;
    }

    else
    {
      v9 = [v103 ink];
      p_canvasViewFlags = [v9 identifier];
      v77 = [p_canvasViewFlags isEqual:@"com.apple.ink.eraser"];
    }

    v78 = [(PKTiledCanvasView *)self powerSavingController];
    if (v78)
    {
      v78[105] = v77;
    }

    if ((v76 & 1) == 0)
    {
    }

    v79 = [(PKTiledCanvasView *)self powerSavingController];
    if (v79)
    {
      *(v79 + 72) = 0;
      *(v79 + 32) = x;
      *(v79 + 40) = y;
      *(v79 + 48) = 0;
      *(v79 + 56) = 0;
      *(v79 + 16) = *(v79 + 8);
    }

    [(PKTiledCanvasView *)self _postBeganSketchingAXAnnouncement];
    v80 = [(PKTiledCanvasView *)self _rendererController];
    v81 = *&a4->var13;
    v126 = *&a4->var11;
    v127 = v81;
    var15 = a4->var15;
    v82 = *&a4->var5;
    v122 = *&a4->var3;
    v123 = v82;
    v83 = *&a4->var9;
    v124 = *&a4->var7;
    v125 = v83;
    v84 = *&a4->var1;
    *location = a4->var0;
    v121 = v84;
    [(PKMetalRendererController *)v80 addInputPoint:?];

    v85 = +[PKPencilDevice activePencil];
    [v85 baseRollAngle];
    v87 = v86;
    v88 = [(PKTiledCanvasView *)self strokeGenerator];
    v89 = v88;
    if (v88)
    {
      os_unfair_lock_lock(v88 + 80);
      *&v89[94]._os_unfair_lock_opaque = v87;
      os_unfair_lock_unlock(v89 + 80);
    }

    v90 = [(PKTiledCanvasView *)self strokeGenerator];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_3;
    v106[3] = &unk_1E82D73E8;
    v106[4] = self;
    v91 = v103;
    v107 = v91;
    v108 = v69 & 1;
    v109 = v11;
    [v90 drawingBeganWithStroke:v91 inputType:a9 activeInputProperties:v102 inputScale:v106 start:v49];

    v92 = [(PKTiledCanvasView *)self strokeGenerator];
    v93 = *&a4->var13;
    v126 = *&a4->var11;
    v127 = v93;
    var15 = a4->var15;
    v94 = *&a4->var5;
    v122 = *&a4->var3;
    v123 = v94;
    v95 = *&a4->var9;
    v124 = *&a4->var7;
    v125 = v95;
    v96 = *&a4->var1;
    *location = a4->var0;
    v121 = v96;
    [v92 addPoint:location];

    v97 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)v97 setDoubleBuffered:?];

    self->_numSkippedDoubleBufferedFrames = 0;
    v98 = [(PKTiledCanvasView *)self rulerController];
    LODWORD(v92) = [(PKRulerController *)v98 rulerSelected];

    if (v92)
    {
      v99 = [(PKTiledCanvasView *)self rulerController];
      v100 = [(PKTiledCanvasView *)self _touchView];
      [(PKRulerController *)v99 drawingBegan:v100 coordinateSystem:x, y];
    }

    kdebug_trace();
  }
}

void __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v6 = [WeakRetained delegate];
    [v6 canvasView:v7 didPresentWithCanvasOffset:{a2, a3}];

    WeakRetained = v7;
  }
}

void __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_140(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_2;
  v5[3] = &unk_1E82D6DA8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained drawing];
  v3 = [v2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v6 = [v9 drawing];
    [v6 mergeWithDrawing:*(a1 + 32)];
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setDrawing:v7];
  }
}

void __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _drawingController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKMetalRendererController *)v5 drawingBeganWithStroke:(*(a1 + 48) & 1) == 0 forPreview:?];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_4;
  block[3] = &unk_1E82D75C8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = *(a1 + 49);
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _startDisplayLinkShouldPause:0];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if ((v2[224] & 4) != 0)
    {
      v3 = [v2 delegate];
      [v3 canvasView:*(a1 + 32) beganStroke:*(a1 + 40)];
    }
  }
}

- (void)_notifyEraserMoved:(id)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v19 = a3;
  if ((*&self->_canvasViewFlags & 0x4000) != 0)
  {
    v7 = [(PKTiledCanvasView *)self selectionController];
    v8 = v7;
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [WeakRetained liveAttachment];

    if (v10)
    {
      if (v19)
      {
        v11 = [(PKTiledCanvasView *)self _touchView];
        [v19 PK_preciseLocationInView:v11];
        v13 = v12;
        v15 = v14;

        [(PKTiledCanvasView *)self applyTransformToTouchLocation:v13, v15];
        x = v16;
        y = v17;
      }

      v18 = [(PKTiledCanvasView *)self delegate];
      [v18 _canvasView:self eraserMoved:v10 attachment:{x, y}];
    }
  }
}

- (void)drawingMoved:(id)a3 withEvent:(id)a4
{
  v143 = *MEMORY[0x1E69E9840];
  v101 = a3;
  v99 = a4;
  v6 = [(PKTiledCanvasView *)self ink];
  v7 = [v6 _isEraserInk];

  v8 = v7 ^ 1;
  if (!v101)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [(PKTiledCanvasView *)self _notifyEraserMoved:v101 location:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  if (self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserMoved:v101];
    goto LABEL_74;
  }

  v9 = [(PKTiledCanvasView *)self strokeGenerator];
  v10 = [v9 inputType];

  if (v10 == 1)
  {
    v11 = +[PKPencilDevice activePencil];
    [v11 tagAsUsed];
  }

  v12 = [(PKTiledCanvasView *)self rulerController];
  v13 = [(PKRulerController *)v12 rulerSelected];

  v14 = v13 ^ 1;
  if (!v101)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v15 = [(PKTiledCanvasView *)self _touchView];
    [v101 PK_preciseLocationInView:v15];
    v17 = v16;
    v19 = v18;

    v20 = [(PKTiledCanvasView *)self rulerController];
    v21 = [(PKTiledCanvasView *)self _touchView];
    [(PKRulerController *)v20 drawingMoved:v21 coordinateSystem:v17, v19];
  }

  if (qword_1EC291578 != -1)
  {
    dispatch_once(&qword_1EC291578, &__block_literal_global_860);
  }

  if (byte_1EC291562 == 1)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = [v99 coalescedTouchesForTouch:v101];
    v22 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
    if (!v22)
    {
      goto LABEL_73;
    }

    v23 = *v137;
    while (1)
    {
      v24 = 0;
      do
      {
        if (*v137 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v136 + 1) + 8 * v24);
        v26 = [v25 estimationUpdateIndex];
        if (v26)
        {
          v27 = ([v25 estimatedPropertiesExpectingUpdates] & 0x10) == 0;

          if (!v27)
          {
            v28 = [(PKTiledCanvasView *)self _touchView];
            [v25 PK_preciseLocationInView:v28];
            v30 = v29;
            v32 = v31;

            v33 = [(PKTiledCanvasView *)self powerSavingController];
            if (v33)
            {
              v34 = v33[6] + sqrt((v33[5] - v32) * (v33[5] - v32) + (v33[4] - v30) * (v33[4] - v30));
              v33[5] = v32;
              v33[6] = v34;
              v33[4] = v30;
            }

            [(PKTiledCanvasView *)self applyTransformToTouchLocation:v30, v32];
            v36 = v35;
            v38 = v37;
            v135 = 0;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v39 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
            +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v25, 0, [v39 activeInputProperties], &v127, v36, v38);

            std::vector<PKInputPoint>::push_back[abi:ne200100](&self->_rollPointsToUpdate, &v127);
            v40 = [(PKTiledCanvasView *)self shapeDrawingController];
            if (v40)
            {
              v41 = v40[2] == v40[1];

              if (v41)
              {
                goto LABEL_29;
              }

              v42 = [(PKTiledCanvasView *)self window];
              [v101 locationInView:v42];
              v44 = v43;
              v46 = v45;

              v47 = [(PKTiledCanvasView *)self shapeDrawingController];
              v124 = v133;
              v125 = v134;
              v126 = v135;
              v120 = v129;
              v121 = v130;
              v122 = v131;
              v123 = v132;
              v118 = v127;
              v119 = v128;
              [(PKShapeDrawingController *)v47 addStrokePoint:v44 inputPoint:v46];
            }

            else
            {
              v47 = 0;
            }
          }
        }

LABEL_29:
        ++v24;
      }

      while (v22 != v24);
      v48 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
      v22 = v48;
      if (!v48)
      {
        goto LABEL_73;
      }
    }
  }

  [v101 timestamp];
  kdebug_trace();
  v49 = [v99 coalescedTouchesForTouch:v101];
  v50 = [v49 count];

  if (self->_maxNumPredictionPoints && ![(PKTiledCanvasView *)self predictionDisabled])
  {
    v52 = [v99 predictedTouchesForTouch:v101];
    v53 = v52;
    if (self->_maxNumPredictionPoints < 1 || [v52 count] <= self->_maxNumPredictionPoints)
    {
      v51 = v53;
    }

    else
    {
      v54 = [v53 subarrayWithRange:0];

      v51 = v54;
    }

    v50 += [v51 count];
  }

  else
  {
    v51 = 0;
  }

  v98 = v51;
  v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<PKInputPoint>::reserve(&v115, v50);
  v114 = 0u;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  obja = [v99 coalescedTouchesForTouch:v101];
  v56 = [obja countByEnumeratingWithState:&v111 objects:v141 count:16];
  if (!v56)
  {
    goto LABEL_57;
  }

  v100 = 0;
  v57 = *v112;
  do
  {
    v58 = 0;
    v100 += v56;
    do
    {
      if (*v112 != v57)
      {
        objc_enumerationMutation(obja);
      }

      v59 = *(*(&v111 + 1) + 8 * v58);
      LogTouchIfEnabled(v59, 0);
      v60 = [(PKTiledCanvasView *)self _touchView];
      [(UITouch *)v59 PK_preciseLocationInView:v60];
      v62 = v61;
      v64 = v63;

      v65 = [(PKTiledCanvasView *)self powerSavingController];
      if (v65)
      {
        v66 = v65[6] + sqrt((v65[5] - v64) * (v65[5] - v64) + (v65[4] - v62) * (v65[4] - v62));
        v65[5] = v64;
        v65[6] = v66;
        v65[4] = v62;
      }

      [(PKTiledCanvasView *)self applyTransformToTouchLocation:v62, v64];
      v68 = v67;
      v70 = v69;
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v71 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v59, 0, [v71 activeInputProperties], &v127, v68, v70);

      std::vector<PKInputPoint>::push_back[abi:ne200100](&v115, &v127);
      [v55 addObject:v59];
      v72 = [(PKTiledCanvasView *)self shapeDrawingController];
      if (v72)
      {
        v73 = v72[2] == v72[1];

        if (v73)
        {
          goto LABEL_53;
        }

        v74 = [(PKTiledCanvasView *)self window];
        [v101 locationInView:v74];
        v76 = v75;
        v78 = v77;

        v79 = [(PKTiledCanvasView *)self shapeDrawingController];
        v124 = v133;
        v125 = v134;
        v126 = v135;
        v120 = v129;
        v121 = v130;
        v122 = v131;
        v123 = v132;
        v118 = v127;
        v119 = v128;
        [(PKShapeDrawingController *)v79 addStrokePoint:v76 inputPoint:v78];
      }

      else
      {
        v79 = 0;
      }

LABEL_53:
      ++v58;
    }

    while (v56 != v58);
    v80 = [obja countByEnumeratingWithState:&v111 objects:v141 count:16];
    v56 = v80;
  }

  while (v80);
LABEL_57:

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v98;
  v81 = [obj countByEnumeratingWithState:&v107 objects:v140 count:16];
  if (v81)
  {
    v82 = *v108;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v108 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v84 = *(*(&v107 + 1) + 8 * i);
        v85 = [(PKTiledCanvasView *)self _touchView];
        [v84 PK_preciseLocationInView:v85];
        v87 = v86;
        v89 = v88;

        [(PKTiledCanvasView *)self applyTransformToTouchLocation:v87, v89];
        v91 = v90;
        v93 = v92;
        v135 = 0;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v94 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
        +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v84, 1, [v94 activeInputProperties], &v127, v91, v93);

        std::vector<PKInputPoint>::push_back[abi:ne200100](&v115, &v127);
        [v55 addObject:v84];
      }

      v81 = [obj countByEnumeratingWithState:&v107 objects:v140 count:16];
    }

    while (v81);
  }

  v95 = [(PKTiledCanvasView *)self strokeGenerator];
  __p = 0;
  v105 = 0;
  v106 = 0;
  std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, v115, v116, 0xF0F0F0F0F0F0F0F1 * ((v116 - v115) >> 3));
  [v95 addPoints:&__p];
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  if (v116 != v115)
  {
    v96 = [(PKTiledCanvasView *)self _rendererController];
    v132 = *(v116 - 56);
    v133 = *(v116 - 40);
    v134 = *(v116 - 24);
    v135 = *(v116 - 1);
    v128 = *(v116 - 120);
    v129 = *(v116 - 104);
    v130 = *(v116 - 88);
    v131 = *(v116 - 72);
    v127 = *(v116 - 136);
    [(PKMetalRendererController *)v96 addInputPoint:?];
  }

  if ((*&self->_canvasViewFlags & 0x100) != 0)
  {
    v97 = [(PKTiledCanvasView *)self delegate];
    [v97 canvasViewDrawingMoved:self withTouch:v101];
  }

  [v101 timestamp];
  [obj count];
  kdebug_trace();
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

LABEL_73:
LABEL_74:
}

- (void)drawingEstimatedPropertiesUpdated:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v40 = a3;
  kdebug_trace();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = v40;
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v5)
  {
    v6 = *v66;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v65 + 1) + 8 * v7);
        if (v8 == self->_currentStrokeTouch)
        {
          LogTouchIfEnabled(*(*(&v65 + 1) + 8 * v7), 1);
          v9 = [(PKTiledCanvasView *)self _touchView];
          [(UITouch *)v8 PK_preciseLocationInView:v9];
          v11 = v10;
          v13 = v12;

          [(PKTiledCanvasView *)self applyTransformToTouchLocation:v11, v13];
          v15 = v14;
          v17 = v16;
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v18 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
          +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v8, 0, [v18 activeInputProperties], &v56, v15, v17);

          if (qword_1EC291578 != -1)
          {
            dispatch_once(&qword_1EC291578, &__block_literal_global_860);
          }

          if (byte_1EC291562 == 1)
          {
            v20 = [(UITouch *)v8 estimationUpdateIndex];
            if (v20)
            {
              v21 = ([(UITouch *)v8 estimatedProperties]& 0x10) == 0;

              if (v21)
              {
                v22 = [(UITouch *)v8 estimationUpdateIndex];
                v23 = [v22 integerValue];

                p_rollPointsToUpdate = &self->_rollPointsToUpdate;
                begin = self->_rollPointsToUpdate.__begin_;
                v26 = self->_rollPointsToUpdate.__end_ - begin;
                if (v26 >= 1)
                {
                  v27 = 0;
                  v28 = v26 / 0x88uLL;
                  if (v28 <= 1)
                  {
                    v28 = 1;
                  }

                  while (1)
                  {
                    v29 = begin + v27;
                    if (*(begin + v27 + 80) == v23)
                    {
                      break;
                    }

                    v27 += 136;
                    if (!--v28)
                    {
                      goto LABEL_26;
                    }
                  }

                  v30 = *(v29 + 3);
                  v53 = *(v29 + 2);
                  v54 = v30;
                  v55 = *(v29 + 4);
                  v31 = *(v29 + 1);
                  v51 = *v29;
                  v52 = v31;
                  v49 = *(v29 + 88);
                  v50 = *(v29 + 13);
                  [(UITouch *)v8 PK_rollAngle];
                  v33 = v32;
                  end = self->_rollPointsToUpdate.__end_;
                  v35 = p_rollPointsToUpdate->__begin_ + v27;
                  v36 = end - p_rollPointsToUpdate->__begin_ - v27;
                  v37 = v36 - 136;
                  if (v35 + 136 != end)
                  {
                    memmove(v35, v35 + 136, v36 - 136);
                  }

                  self->_rollPointsToUpdate.__end_ = &v35[v37];
                  v38 = [(PKTiledCanvasView *)self strokeGenerator];
                  v43 = v53;
                  v44 = v54;
                  v45 = v55;
                  v41 = v51;
                  v42 = v52;
                  *v46 = -1;
                  *&v46[8] = v49;
                  *&v46[24] = v50;
                  v47 = v33;
                  v48 = 0;
                  [v38 addPoint:&v41];

                  if ((*&self->_canvasViewFlags & 0x100) != 0)
                  {
                    v39 = [(PKTiledCanvasView *)self delegate];
                    [v39 canvasViewDrawingMoved:self withTouch:v8];
                  }
                }
              }
            }

            goto LABEL_26;
          }

          v19 = [(PKTiledCanvasView *)self strokeGenerator];
          *&v46[16] = v62;
          v47 = v63;
          v48 = v64;
          v43 = v58;
          v44 = v59;
          v45 = v60;
          *v46 = v61;
          v41 = v56;
          v42 = v57;
          [v19 drawingUpdatePoint:&v41];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
}

- (void)_handleEndOfStroke:(id)a3 shapeStrokes:(id)a4 groupedUndoCommands:(id)a5 invalidateTiles:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKTiledCanvasView__handleEndOfStroke_shapeStrokes_groupedUndoCommands_invalidateTiles___block_invoke;
  v16[3] = &unk_1E82D7410;
  objc_copyWeak(&v20, &location);
  v21 = a6;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __89__PKTiledCanvasView__handleEndOfStroke_shapeStrokes_groupedUndoCommands_invalidateTiles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained + 224;
    v9 = WeakRetained;
    if (WeakRetained[224] < 0)
    {
      v5 = [*(a1 + 32) count];
      v3 = v9;
      if (v5)
      {
        v6 = [v9 delegate];
        [v6 canvasView:v9 registerMultiStepUndoCommands:*(a1 + 32)];

        v3 = v9;
      }
    }

    if (*(a1 + 64) == 1 && (v4[8] & 2) != 0)
    {
      v7 = [v3 delegate];
      [v7 canvasViewInvalidateTiles:v9];

      v3 = v9;
    }

    if (*(a1 + 40))
    {
      if ((*v4 & 0x20) != 0)
      {
        v8 = [v3 delegate];
        [v8 canvasView:v9 endedStroke:*(a1 + 40) shapeStrokes:*(a1 + 48)];
      }

      else
      {
        if ((*v4 & 0x10) == 0)
        {
          goto LABEL_14;
        }

        v8 = [v3 delegate];
        [v8 canvasView:v9 endedStroke:*(a1 + 40)];
      }

      v3 = v9;
    }
  }

LABEL_14:
}

- (void)drawingGestureRecognizer:(id)a3 touchesEndedWithDrawingTouch:(id)a4
{
  v4 = [(PKTiledCanvasView *)self shapeDrawingController:a3];
  if (v4)
  {
    v4[67] = 0;
  }
}

- (void)_drawingEnded:(id)a3 estimatesTimeout:(double)a4 completion:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v62 = a5;
  v9 = [(PKTiledCanvasView *)self strokeGenerator];
  if (v9)
  {
    v10 = v9[43] - v9[42];
  }

  else
  {
    v10 = 0.0;
  }

  if (self->_isCombiningStrokes)
  {
    ++self->_combiningStrokesCount;
  }

  v11 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
    *buf = 138412290;
    v74 = v12;
    _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Ended drawing: %@", buf, 0xCu);
  }

  v13 = [(PKTiledCanvasView *)self powerSavingController];
  if (v13)
  {
    v13[72] = 0;
  }

  v14 = [(PKTiledCanvasView *)self shapeDrawingController];
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 208);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      alternativeStrokesAnimation = alternativeStrokesAnimation->_shape;
    }

    v19 = alternativeStrokesAnimation;
    v20 = v19 == 0;

    if (v20 || (v21 = CACurrentMediaTime(), v22 = self->_alternativeStrokesAnimation, [(PKAlternativeStrokesAnimation *)v22 alphaAtTime:v21]<= 0.01))
    {
      v17 = 0;
    }

    else
    {
      if (v22)
      {
        shape = v22->_shape;
      }

      else
      {
        shape = 0;
      }

      v17 = shape;
    }
  }

  if ([(PKTiledCanvasView *)self isScratchOutPending])
  {
    if ([(PKShape *)v17 type]== 13)
    {
      [(PKTiledCanvasView *)self _didFinishErasingStrokes:1];
    }

    else
    {
      [(PKTiledCanvasView *)self clearHiddenStrokes];
    }

    [(PKTiledCanvasView *)self setIsScratchOutPending:0];
  }

  v24 = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)v24 resetStroke];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:v17 != 0];
  if (v8 && self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserEnded:v8];
    [(PKTiledCanvasView *)self _callOptionalDrawingEndedCompletion:v62 withStroke:0 shapeStrokes:0];
    goto LABEL_63;
  }

  v25 = [(PKTiledCanvasView *)self rulerController];
  v26 = [(PKRulerController *)v25 rulerSelected];

  if (v26)
  {
    v27 = [(PKTiledCanvasView *)self rulerController];
    [(PKRulerController *)v27 drawingEnded];
  }

  [(PKTiledCanvasView *)self setIsDrawing:0];
  if (v8)
  {
    [v8 timestamp];
    kdebug_trace();
  }

  v60 = [(PKTiledCanvasView *)self drawing];
  v28 = [(PKTiledCanvasView *)self strokeGenerator];
  v61 = v28;
  if (!v28)
  {
    [(PKTiledCanvasView *)self _callOptionalDrawingEndedCompletion:v62 withStroke:0 shapeStrokes:0];
  }

  if (qword_1EC291580 != -1)
  {
    dispatch_once(&qword_1EC291580, &__block_literal_global_865);
  }

  if ((byte_1EC291563 & 1) != 0 || [(PKShape *)v17 type]== 13)
  {
    v29 = 1;
  }

  else if ((*(&self->_canvasViewFlags + 8) & 0x100) != 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke;
    aBlock[3] = &unk_1E82D7438;
    aBlock[4] = v28;
    v50 = _Block_copy(aBlock);
    v51 = [(PKTiledCanvasView *)self delegate];
    v29 = [v51 canvasView:self shouldDiscardEndedStroke:v50 drawing:v60];
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_class();
  v31 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  v32 = PKDynamicCast(v30, v31);

  if (v32)
  {
    v33 = v29;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    if ([v32 isReplaying])
    {
      v29 = 0;
      goto LABEL_59;
    }

    v34 = CACurrentMediaTime();
    [v32 startTimeInterval];
    v36 = v35;
    [v32 currentBoundingBoxInWindow];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v41 <= 7.0;
    if (v43 > 7.0)
    {
      v45 = 0;
    }

    v46 = v34 - v36 <= 0.15 && v45;
    v47 = [(PKTiledCanvasView *)self window];
    v48 = [v47 windowScene];
    v49 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v48];

    if (v46)
    {
      if ([v49 _tiledCanvasViewShouldDiscardTapStroke:self])
      {
        v29 = 1;
LABEL_58:

        goto LABEL_59;
      }

      if ((*(&self->_canvasViewFlags + 8) & 0x800) != 0)
      {
        [(PKTiledCanvasView *)self convertPoint:0 fromView:DKDCenterOfRect(v38, v40, v42, v44)];
        v56 = v55;
        v58 = v57;
        v59 = [(PKTiledCanvasView *)self delegate];
        v29 = [v59 canvasView:self shouldDiscardTapStrokeAt:v60 drawing:{v56, v58}];

        goto LABEL_58;
      }
    }

    v29 = 0;
    goto LABEL_58;
  }

LABEL_59:
  if ((*(&self->_canvasViewFlags + 8) & 0x1000) != 0)
  {
    v53 = [(PKTiledCanvasView *)self delegate];
    v52 = [v53 canvasView:self drawingIsShared:v60];
  }

  else
  {
    v52 = 0;
  }

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_2;
  v63[3] = &unk_1E82D74D8;
  v69 = v10;
  v64 = v8;
  v65 = self;
  v66 = v17;
  v70 = v52;
  v71 = v29;
  v54 = v60;
  v67 = v54;
  v68 = v62;
  [v61 drawingEndedEstimatesTimeout:v63 completion:a4];
  kdebug_trace();
  kdebug_trace();

LABEL_63:
}

id __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newStrokeWithCurrentData];

  return v1;
}

void __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 ink];
  v5 = [v4 behavior];
  if ([v5 isEraser])
  {
    v6 = *(a1 + 32);

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = +[PKStatisticsManager sharedStatisticsManager];
    -[PKStatisticsManager recordBitmapEraseWithInputType:](v4, [*(a1 + 32) type]);
  }

  else
  {
  }

LABEL_6:
  v50 = [v3 ink];
  if (v50)
  {
    v7 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v7 recordStrokeWithInk:v50 rollAngleDelta:*(a1 + 72)];
  }

  if (v3)
  {
    v8 = *(a1 + 40);
    if ((v8[232] & 8) != 0)
    {
      v9 = [v8 delegate];
      v10 = [v9 canvasView:*(a1 + 40) inkForStroke:v3];

      v11 = [v3 ink];

      if (v10 != v11)
      {
        v12 = [v3 mutableCopy];
        [v12 setInk:v10];
        v13 = [v12 copy];

        v3 = v13;
      }
    }
  }

  v49 = [*(a1 + 48) strokes];
  if (v3)
  {
    v14 = *(a1 + 40);
    if ((v14[232] & 0x10) == 0)
    {
      goto LABEL_20;
    }

    memset(&location, 0, sizeof(location));
    v15 = [v14 delegate];
    v16 = v15;
    if (v15)
    {
      [v15 canvasView:*(a1 + 40) transformForStroke:v3];
    }

    else
    {
      memset(&location, 0, sizeof(location));
    }

    t1 = location;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      v48 = [v3 mutableCopy];
      [v3 transform];
      t2 = location;
      CGAffineTransformConcat(&v74, &t1, &t2);
      t1 = v74;
      [v48 _setTransform:&t1];
      v17 = [v48 copy];

      v18 = v48;
      if ([v49 count])
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v20 = v49;
        v21 = [v20 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v21)
        {
          v22 = *v70;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v70 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v69 + 1) + 8 * i);
              v25 = [v24 mutableCopy];
              if (v24)
              {
                [v24 transform];
              }

              else
              {
                memset(&t1, 0, sizeof(t1));
              }

              t2 = location;
              CGAffineTransformConcat(&v68, &t1, &t2);
              t1 = v68;
              [v25 _setTransform:&t1];
              v26 = [v25 copy];
              [v19 addObject:v26];
            }

            v21 = [v20 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v21);
        }

        v27 = [v19 copy];
        v49 = v27;
        v18 = v48;
      }
    }

    else
    {
LABEL_20:
      v17 = v3;
    }
  }

  else
  {
    v17 = 0;
  }

  [v17 _setIsSharedStroke:*(a1 + 80)];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v28 = v49;
  v29 = [v28 countByEnumeratingWithState:&v64 objects:v78 count:16];
  if (v29)
  {
    v30 = *v65;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v65 != v30)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v64 + 1) + 8 * j) _setIsSharedStroke:*(a1 + 80)];
      }

      v29 = [v28 countByEnumeratingWithState:&v64 objects:v78 count:16];
    }

    while (v29);
  }

  if (v17 && (*(a1 + 81) & 1) == 0)
  {
    v77 = v17;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    v33 = [*(a1 + 40) _drawingController];
    if (v33 && (v34 = v33[48], v33, (v34 & 1) != 0))
    {
      v35 = 1;
    }

    else
    {
      v36 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location.a) = 0;
        _os_log_error_impl(&dword_1C7CCA000, v36, OS_LOG_TYPE_ERROR, "Did not have live interaction lock at end of stroke", &location, 2u);
      }

      v35 = 0;
    }

    v37 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v37 recordDrawStroke:v17];

    objc_initWeak(&location, *(a1 + 40));
    v38 = [*(a1 + 40) _drawingController];
    v39 = [*(a1 + 40) generateLiveDrawing];
    v40 = *(a1 + 48);
    v41 = v40 != 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_148;
    v58[3] = &unk_1E82D7488;
    v59 = v40;
    v60 = v28;
    objc_copyWeak(&v62, &location);
    v61 = v17;
    v63 = v35;
    [(PKController *)v38 addNewRenderedStrokes:v32 wasAddedEarly:v39 hidden:v41 preDrawingChangedBlock:v58];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  v42 = [*(a1 + 40) _rendererController];
  v43 = [*(a1 + 40) strokeGenerator];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_3;
  v52[3] = &unk_1E82D74B0;
  v44 = v17;
  v53 = v44;
  v45 = v28;
  v46 = *(a1 + 40);
  v47 = v45;
  v54 = v45;
  v55 = v46;
  v56 = *(a1 + 56);
  v57 = *(a1 + 81);
  [(PKMetalRendererController *)v42 drawingEnded:v43 finishStrokeBlock:v52];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_5;
  block[3] = &unk_1E82D6388;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [*(a1 + 40) _callOptionalDrawingEndedCompletion:*(a1 + 64) withStroke:v44 shapeStrokes:v47];
}

void __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_148(uint64_t a1, void *a2, void *a3, char a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (*(a1 + 32) && (v9 = [*(a1 + 40) count], v8) && v7 && v9)
  {
    v10 = +[PKStatisticsManager sharedStatisticsManager];
    -[PKStatisticsManager recordCreateShapeWithType:fromMenu:multiple:](v10, [*(a1 + 32) type], 0, 0);

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = [WeakRetained _drawingController];
    v13 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_2_149;
    v19[3] = &unk_1E82D7460;
    objc_copyWeak(&v24, (a1 + 56));
    v20 = *(a1 + 48);
    v21 = *(a1 + 40);
    v22 = v7;
    v23 = v8;
    v25 = *(a1 + 64);
    [(PKController *)v12 addNewRenderedStrokes:v13 wasAddedEarly:0 hidden:0 preDrawingChangedBlock:v19];

    objc_destroyWeak(&v24);
  }

  else
  {
    if (v7)
    {
      v26 = v7;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v27[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    v16 = objc_loadWeakRetained((a1 + 56));
    v17 = v16;
    if (a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a1 + 48);
    }

    [v16 _handleEndOfStroke:v18 shapeStrokes:0 groupedUndoCommands:v15 invalidateTiles:(*(a1 + 64) & 1) == 0];
  }
}

void __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_2_149(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [PKShape snapToShapeActionNameForNumShapes:1];
  [v5 setActionName:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v5)
  {
    v12 = *(a1 + 48);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v13[0] = v2;
    v11[0] = *(a1 + 56);
    v11[1] = v5;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v13[1] = v3;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [WeakRetained _handleEndOfStroke:v8 shapeStrokes:v9 groupedUndoCommands:v10 invalidateTiles:(*(a1 + 72) & 1) == 0];
  if (v5)
  {
  }
}

void __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_4;
  block[3] = &unk_1E82D74B0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v9 = v6;
  v8 = v5;
  v10 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__PKTiledCanvasView__drawingEnded_estimatesTimeout_completion___block_invoke_4(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v4[0] = *(a1 + 32);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  if ([*(a1 + 40) count])
  {
    v3 = *(a1 + 40);

    v2 = v3;
  }

  [*(a1 + 48) didEndLiveInteractionWithStrokes:v2 drawing:*(a1 + 56) cancelled:*(a1 + 64)];
}

- (void)_callOptionalDrawingEndedCompletion:(id)a3 withStroke:(id)a4 shapeStrokes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKTiledCanvasView__callOptionalDrawingEndedCompletion_withStroke_shapeStrokes___block_invoke;
    block[3] = &unk_1E82D7500;
    v14 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v10, block);
  }
}

- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)a3
{
  alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
  if (alternativeStrokesAnimation)
  {
    if (alternativeStrokesAnimation->_crossFadeStartTime == 0.0)
    {
      alternativeStrokesAnimation->_crossFadeStartTime = CACurrentMediaTime();
      alternativeStrokesAnimation->_accepted = a3;
    }
  }
}

- (void)drawingCancelledForPreview:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Cancelled drawing: %@", buf, 0xCu);
    }
  }

  v7 = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)v7 resetStroke];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
  if (self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserCancelled];
  }

  else
  {
    [(PKTiledCanvasView *)self setIsDrawing:0 forPreview:v3];
    v8 = [(PKTiledCanvasView *)self rulerController];
    v9 = [(PKRulerController *)v8 rulerSelected];

    if (v9)
    {
      v10 = [(PKTiledCanvasView *)self rulerController];
      [PKRulerController drawingCancelled:v10];
    }

    v11 = [(PKTiledCanvasView *)self powerSavingController];
    if (v11)
    {
      v11[72] = 0;
    }

    if ([(PKTiledCanvasView *)self isHidden])
    {
      v12 = [(PKTiledCanvasView *)self metalView];
      [(PKMetalView *)v12 flushDrawables];

      [(PKTiledCanvasView *)self schedulePurgeResourcesBlock];
    }

    v13 = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)v13 cancelLiveStroke];

    v14 = [(PKTiledCanvasView *)self drawing];
    v15 = [(PKTiledCanvasView *)self strokeGenerator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__PKTiledCanvasView_drawingCancelledForPreview___block_invoke;
    v17[3] = &unk_1E82D7528;
    v17[4] = self;
    v19 = v3;
    v16 = v14;
    v18 = v16;
    [v15 drawingCancelledWithCompletion:v17];

    kdebug_trace();
  }
}

void __48__PKTiledCanvasView_drawingCancelledForPreview___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _rendererController];
  [(PKMetalRendererController *)v4 drawingCancelledForPreview:?];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PKTiledCanvasView_drawingCancelledForPreview___block_invoke_2;
  v8[3] = &unk_1E82D6DD0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __48__PKTiledCanvasView_drawingCancelledForPreview___block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3[0] = *(a1 + 32);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  [*(a1 + 40) didEndLiveInteractionWithStrokes:v2 drawing:*(a1 + 48) cancelled:1 forPreview:*(a1 + 56)];
}

- (void)setViewScissor:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_viewScissor = a3;
  v7 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v7 setViewScissor:y, width, height];
}

- (void)setPaperTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_paperTransform.a = *&a3->a;
  *&self->_paperTransform.c = v4;
  *&self->_paperTransform.tx = v3;
  v5 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v5;
  v7[2] = *&a3->tx;
  v6 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v6 setPaperTransform:v7];
}

- (void)setIsDrawing:(BOOL)a3 forPreview:(BOOL)a4
{
  if (self->_isDrawing == a3)
  {
    return;
  }

  v5 = a3;
  v7 = [(PKTiledCanvasView *)self _drawingController];
  v14 = [(PKController *)v7 inputController];

  if ((*(&self->_canvasViewFlags + 8) & 0x400) != 0)
  {
    v9 = [(PKTiledCanvasView *)self delegate];
    v8 = [v9 canvasViewMaximumSupportedContentVersion:self];
  }

  else
  {
    v8 = 4;
  }

  v10 = [(PKTiledCanvasView *)self ink];
  [v14 setupForInk:v10 maximumSupportedContentVersion:v8];

  self->_isDrawing = v5;
  if (!a4)
  {
    if (v5)
    {
      if ((*&self->_canvasViewFlags & 0x80) == 0)
      {
LABEL_13:
        [(PKTiledCanvasView *)self updateHasVisibleStrokes];
        goto LABEL_14;
      }

      v11 = [(PKTiledCanvasView *)self delegate];
      [v11 canvasViewDidBeginDrawing:self];
    }

    else
    {
      if ((*&self->_canvasViewFlags & 0x400) != 0)
      {
        v12 = [(PKTiledCanvasView *)self delegate];
        [v12 canvasViewDidEndDrawing:self];
      }

      v13 = [(PKTiledCanvasView *)self window];
      v11 = [PKToolPicker activeToolPickerForWindow:v13];

      [v11 _saveStateIfNecessary];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (CGPoint)applyTransformToTouchLocation:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v4 = objc_opt_class();
  v5 = [(PKTiledCanvasView *)self _touchView];
  v6 = PKDynamicCast(v4, v5);

  v7.f64[0] = x;
  v7.f64[1] = y;
  v13 = v7;
  if (v6)
  {
    memset(&v16, 0, sizeof(v16));
    v8 = [v6 tileContainerView];
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v6, v8, &v16.a);

    memset(&v15, 0, sizeof(v15));
    [v6 drawingTransform];
    CGAffineTransformInvert(&v14, &t1);
    t1 = v16;
    t2 = v14;
    CGAffineTransformConcat(&v15, &t1, &t2);
    v13 = vaddq_f64(*&v15.tx, vmlaq_n_f64(vmulq_laneq_f64(*&v15.c, v13, 1), *&v15.a, x));
  }

  v10 = v13.f64[1];
  v9 = v13.f64[0];
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)eraseStrokesForPoint:(CGPoint)a3 prevPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v62 = *MEMORY[0x1E69E9840];
  v9 = [(PKTiledCanvasView *)self selectionController];
  v10 = v9;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained liveAttachment];

  v52 = v12;
  v13 = [v12 recognitionController];
  v14 = [v13 shouldCancelForAutoRefineCompletion];

  if ((v14 & 1) == 0)
  {
    if (!self->_strokesToErase)
    {
      v15 = [MEMORY[0x1E695DF70] array];
      strokesToErase = self->_strokesToErase;
      self->_strokesToErase = v15;

      v17 = [MEMORY[0x1E695DFA8] set];
      strokeIDsToErase = self->_strokeIDsToErase;
      self->_strokeIDsToErase = v17;
    }

    kdebug_trace();
    v19 = [v12 strokeSpatialCache];
    v20 = v19;
    if (v19 && *(v19 + 8) == 1)
    {
      v21 = [v12 strokeSpatialCache];
      v22 = v21;
      if (v21)
      {
        v23 = *(v21 + 24);
      }

      else
      {
        v23 = 0;
      }

      v50 = v23;
    }

    else
    {
      v50 = 0;
    }

    v24 = os_log_create("com.apple.pencilkit", "Erase");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v12 strokeSpatialCache];
      v42 = v41;
      if (v41)
      {
        v43 = *(v41 + 24);
      }

      else
      {
        v43 = 0;
      }

      v44 = v43;
      v45 = [v44 count];
      v46 = [v12 strokeSpatialCache];
      v47 = v46;
      v48 = @"NO";
      if (v46 && *(v46 + 8))
      {
        v48 = @"YES";
      }

      *buf = 134218242;
      v59 = v45;
      v60 = 2112;
      v61 = v48;
      _os_log_debug_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEBUG, "Used cached %lu strokes: %@", buf, 0x16u);
    }

    v25 = [(PKTiledCanvasView *)self drawing];
    v51 = [v25 strokesIntersectedByPoint:v50 prevPoint:v7 onscreenVisibleStrokes:{v6, x, y}];

    kdebug_trace();
    if ([v51 count])
    {
      v49 = [(NSMutableArray *)self->_strokesToErase count];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v26 = [v51 array];
      v27 = [PKStroke copyStrokes:v26 hidden:1];

      v28 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v28)
      {
        v29 = *v54;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v54 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v53 + 1) + 8 * i);
            v32 = self->_strokeIDsToErase;
            v33 = [v31 _strokeUUID];
            LOBYTE(v32) = [(NSMutableSet *)v32 containsObject:v33];

            if ((v32 & 1) == 0)
            {
              [(NSMutableArray *)self->_strokesToErase addObject:v31];
              v34 = self->_strokeIDsToErase;
              v35 = [v31 _strokeUUID];
              [(NSMutableSet *)v34 addObject:v35];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v28);
      }

      if ([(NSMutableArray *)self->_strokesToErase count]!= v49)
      {
        v36 = objc_loadWeakRetained(&self->_selectionController);
        v37 = self->_strokesToErase;
        v38 = [(PKTiledCanvasView *)self drawing];
        [(PKSelectionController *)v36 _setAdditionalStrokes:v37 inDrawing:v38 completion:0];
      }

      if ((*&self->_canvasViewFlags & 0x2000) != 0)
      {
        v39 = [(PKTiledCanvasView *)self delegate];
        v40 = [v51 array];
        [v39 _canvasViewDidEraseStrokes:v40];
      }
    }
  }
}

- (void)eraseStrokes:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = v4;
  if (!self->_strokesToErase)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    strokesToErase = self->_strokesToErase;
    self->_strokesToErase = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    strokeIDsToErase = self->_strokeIDsToErase;
    self->_strokeIDsToErase = v7;

    v4 = v25;
  }

  if ([v4 count])
  {
    v24 = [(NSMutableArray *)self->_strokesToErase count];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v25 array];
    v10 = [PKStroke copyStrokes:v9 hidden:1];

    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = self->_strokeIDsToErase;
          v16 = [v14 _strokeUUID];
          LOBYTE(v15) = [(NSMutableSet *)v15 containsObject:v16];

          if ((v15 & 1) == 0)
          {
            [(NSMutableArray *)self->_strokesToErase addObject:v14];
            v17 = self->_strokeIDsToErase;
            v18 = [v14 _strokeUUID];
            [(NSMutableSet *)v17 addObject:v18];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    if ([(NSMutableArray *)self->_strokesToErase count]!= v24)
    {
      WeakRetained = objc_loadWeakRetained(&self->_selectionController);
      v20 = self->_strokesToErase;
      v21 = [(PKTiledCanvasView *)self drawing];
      [(PKSelectionController *)WeakRetained _setAdditionalStrokes:v20 inDrawing:v21 completion:0];
    }

    if ((*&self->_canvasViewFlags & 0x2000) != 0)
    {
      v22 = [(PKTiledCanvasView *)self delegate];
      v23 = [v25 array];
      [v22 _canvasViewDidEraseStrokes:v23];
    }
  }
}

- (void)clearHiddenStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)WeakRetained _resetSelectedStrokeStateForRenderer];

  strokesToErase = self->_strokesToErase;
  self->_strokesToErase = 0;

  strokeIDsToErase = self->_strokeIDsToErase;
  self->_strokeIDsToErase = 0;
}

- (void)_didFinishErasingStrokes:(BOOL)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  strokesToErase = self->_strokesToErase;
  if (strokesToErase)
  {
    v5 = a3;
    if ([(NSMutableArray *)strokesToErase count])
    {
      if (v5)
      {
        v6 = [(PKTiledCanvasView *)self drawing];
        v7 = [v6 undoableDeleteStrokes:self->_strokesToErase];

        if (v7 && (*&self->_canvasViewFlags & 0x80000000) != 0)
        {
          v8 = [(PKTiledCanvasView *)self delegate];
          v20[0] = v7;
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
          [v8 canvasView:self registerUndoCommands:v9];
        }

        v10 = [(PKTiledCanvasView *)self drawing];
        [(PKTiledCanvasView *)self drawingChanged:v10];

        v11 = os_log_create("com.apple.pencilkit", "Erase");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v17 = [(NSMutableArray *)self->_strokesToErase count];
          v18 = 134217984;
          v19 = v17;
          _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "Erased %lu strokes", &v18, 0xCu);
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_selectionController);
      v13 = [(PKTiledCanvasView *)self drawing];
      [(PKSelectionController *)WeakRetained _setAdditionalStrokes:v13 inDrawing:0 completion:?];
    }
  }

  v14 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v14 _resetSelectedStrokeStateForRenderer];

  v15 = self->_strokesToErase;
  self->_strokesToErase = 0;

  strokeIDsToErase = self->_strokeIDsToErase;
  self->_strokeIDsToErase = 0;
}

- (BOOL)eraserBegan:(id)a3
{
  v4 = a3;
  self->_isErasingObjects = 0;
  v5 = [(PKTiledCanvasView *)self ink];
  v6 = [v5 identifier];
  v7 = [v6 isEqual:@"com.apple.ink.objectEraser"];

  if (v7)
  {
    self->_isErasingObjects = 1;
    canvasViewFlags = self->_canvasViewFlags;
    if ((canvasViewFlags & 2) != 0)
    {
      v9 = [(PKTiledCanvasView *)self delegate];
      [v9 canvasViewWillBeginNewStroke:self withTouch:v4 location:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

      canvasViewFlags = self->_canvasViewFlags;
    }

    if ((canvasViewFlags & 0x80) != 0)
    {
      v10 = [(PKTiledCanvasView *)self delegate];
      [v10 canvasViewDidBeginDrawing:self];
    }

    v11 = [(PKTiledCanvasView *)self _touchView];
    [v4 PK_preciseLocationInView:v11];
    v13 = v12;
    v15 = v14;

    [(PKTiledCanvasView *)self applyTransformToTouchLocation:v13, v15];
    v17 = v16;
    v19 = v18;
    kdebug_trace();
    self->_isErasingObjects = 1;
    [(PKTiledCanvasView *)self eraseStrokesForPoint:v17 prevPoint:v19, v17, v19];
    [(PKTiledCanvasView *)self set_oldEraseLocation:v17, v19];
    v20 = os_log_create("com.apple.pencilkit", "Erase");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "Eraser began", v22, 2u);
    }

    [(PKTiledCanvasView *)self _postBeganErasingAXAnnouncement];
  }

  return v7;
}

- (void)eraserMoved:(id)a3
{
  v16 = a3;
  v4 = [(PKTiledCanvasView *)self _touchView];
  [v16 PK_preciseLocationInView:v4];
  v6 = v5;
  v8 = v7;

  [(PKTiledCanvasView *)self applyTransformToTouchLocation:v6, v8];
  v10 = v9;
  v12 = v11;
  [(PKTiledCanvasView *)self _notifyEraserMoved:v16 location:?];
  [(PKTiledCanvasView *)self _oldEraseLocation];
  [(PKTiledCanvasView *)self eraseStrokesForPoint:v10 prevPoint:v12, v13, v14];
  [(PKTiledCanvasView *)self set_oldEraseLocation:v10, v12];
  if ((*&self->_canvasViewFlags & 0x100) != 0)
  {
    v15 = [(PKTiledCanvasView *)self delegate];
    [v15 canvasViewDrawingMoved:self withTouch:v16];
  }
}

- (void)eraserEnded:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "Erase");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Eraser ended", v9, 2u);
  }

  self->_isErasingObjects = 0;
  [(PKTiledCanvasView *)self _didFinishErasingStrokes:1];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  -[PKStatisticsManager recordObjectEraseWithInputType:](v6, [v4 type]);

  if ((*&self->_canvasViewFlags & 0x400) != 0)
  {
    v7 = [(PKTiledCanvasView *)self delegate];
    [v7 canvasViewDidEndDrawing:self];
  }

  kdebug_trace();
  v8 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v8 recordTool:?];

  [(PKTiledCanvasView *)self _postEndedErasingAXAnnouncement];
}

- (void)eraserCancelled
{
  self->_isErasingObjects = 0;
  [(PKTiledCanvasView *)self _didFinishErasingStrokes:0];
  canvasViewFlags = self->_canvasViewFlags;
  if ((canvasViewFlags & 8) != 0)
  {
    v4 = [(PKTiledCanvasView *)self delegate];
    [v4 canvasView:self cancelledStroke:0];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((canvasViewFlags & 0x400) != 0)
  {
    v5 = [(PKTiledCanvasView *)self delegate];
    [v5 canvasViewDidEndDrawing:self];
  }
}

- (id)_strokeUUIDsForStrokes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) _strokeUUID];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v4 copy];

  return v10;
}

- (void)liveStrokeParticlesToDestinationFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PKTiledCanvasView *)self _drawingController];
  v9 = [(PKController *)v8 renderedStrokes];
  v10 = [v9 copy];

  if ([v10 count])
  {
    [(PKTiledCanvasView *)self animateStrokes:v10 destinationFrame:1 duration:x particles:y, width, height, 1.0];
  }
}

- (void)animateStrokes:(id)a3 destinationFrame:(CGRect)a4 duration:(double)a5 particles:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  [(PKTiledCanvasView *)self strokeTransform];
  CGAffineTransformInvert(&v36, &v35);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectApplyAffineTransform(v37, &v36);
  v14 = v38.origin.x;
  v15 = v38.origin.y;
  v16 = v38.size.width;
  v17 = v38.size.height;
  v18 = [(PKTiledCanvasView *)self _strokeUUIDsForStrokes:v13];
  v19 = [(PKTiledCanvasView *)self strokeUUIDsAboutToBeRemoved];
  [v19 unionSet:v18];

  v20 = [(PKTiledCanvasView *)self _drawingController];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __72__PKTiledCanvasView_animateStrokes_destinationFrame_duration_particles___block_invoke;
  v32 = &unk_1E82D6890;
  v33 = self;
  v21 = v18;
  v34 = v21;
  [(PKController *)v20 hideStrokesWithoutUpdating:v13 completion:&v29];

  v22 = CACurrentMediaTime();
  [(PKTiledCanvasView *)self liveAnimationStartTime:v29];
  if (v23 == 0.0)
  {
    [(PKTiledCanvasView *)self setLiveAnimationStartTime:v22];
  }

  if (a6)
  {
    v24 = [[PKLiveStrokesParticlesAnimation alloc] initWithStrokes:v13 startTime:v22 duration:a5 destinationFrame:v14, v15, v16, v17];
    v25 = [(PKTiledCanvasView *)self particlesToDestinationAnimations];
    [v25 addObject:v24];

    [(PKTiledCanvasView *)self liveAnimationStartTime];
    v27 = v26;
    v28 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)v28 liveStrokeParticlesToFrame:v13 strokes:v14 startTime:v15 duration:v16, v17, v22 - v27, a5];
  }

  else
  {
    v24 = [[PKTransformStrokesAnimation alloc] initWithStrokes:v13 startTime:v22 duration:a5 destinationFrame:v14 fadeOutDuration:v15, v16, v17, a5 * 0.95];
    v28 = [(PKTiledCanvasView *)self transformStrokesAnimations];
    [v28 addObject:v24];
  }

  if ([(CADisplayLink *)self->_displayLink isPaused])
  {
    [(PKTiledCanvasView *)self setNeedsDrawingDisplay];
  }
}

void __72__PKTiledCanvasView_animateStrokes_destinationFrame_duration_particles___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __72__PKTiledCanvasView_animateStrokes_destinationFrame_duration_particles___block_invoke_2;
  v2[3] = &unk_1E82D6890;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __72__PKTiledCanvasView_animateStrokes_destinationFrame_duration_particles___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) strokeUUIDsAboutToBeRemoved];
  [v2 minusSet:*(a1 + 40)];
}

- (void)setLiveAnimationStartTime:(double)a3
{
  if (self->_liveAnimationStartTime != a3)
  {
    self->_liveAnimationStartTime = a3;
    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }
}

- (void)checkAnimationsDidEndAtTime:(double)a3
{
  [(PKTiledCanvasView *)self liveAnimationStartTime];
  if (v5 != 0.0)
  {
    v6 = 0x1E695D000uLL;
    v33 = [MEMORY[0x1E695DF70] array];
    if ([(NSMutableArray *)self->_fadeOutStrokeAnimations count])
    {
      v7 = 0;
      v8 = [(NSMutableArray *)self->_fadeOutStrokeAnimations count];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [(NSMutableArray *)self->_fadeOutStrokeAnimations objectAtIndexedSubscript:i];
          if ([v10 isDoneAtTime:a3])
          {
            v11 = [v10 stroke];
            [v33 addObject:v11];

            if (!v7)
            {
              v7 = [MEMORY[0x1E696AD50] indexSet];
            }

            [v7 addIndex:i];
          }
        }

        if (v7)
        {
          [(NSMutableArray *)self->_fadeOutStrokeAnimations removeObjectsAtIndexes:v7];
        }
      }
    }

    if ([(NSMutableArray *)self->_particlesToDestinationAnimations count])
    {
      v12 = 0;
      v13 = [(NSMutableArray *)self->_particlesToDestinationAnimations count];
      if (v13)
      {
        for (j = 0; j != v13; ++j)
        {
          v15 = [(NSMutableArray *)self->_particlesToDestinationAnimations objectAtIndexedSubscript:j];
          if ([v15 isDoneAtTime:a3])
          {
            v16 = [v15 strokes];
            [v33 addObjectsFromArray:v16];

            if (!v12)
            {
              v12 = [MEMORY[0x1E696AD50] indexSet];
            }

            [v12 addIndex:j];
          }
        }

        if (v12)
        {
          [(NSMutableArray *)self->_particlesToDestinationAnimations removeObjectsAtIndexes:v12];
        }
      }
    }

    if ([(NSMutableArray *)self->_transformStrokesAnimations count])
    {
      v17 = [(NSMutableArray *)self->_transformStrokesAnimations count];
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = [(NSMutableArray *)self->_transformStrokesAnimations objectAtIndexedSubscript:v18];
          v21 = v20;
          if (v20 && *(v20 + 16) + *(v20 + 24) <= a3)
          {
            v22 = *(v20 + 8);
            [v33 addObjectsFromArray:v22];

            if (!v19)
            {
              v19 = [MEMORY[0x1E696AD50] indexSet];
            }

            [v19 addIndex:v18];
          }

          ++v18;
        }

        while (v17 != v18);
        if (v19)
        {
          [(NSMutableArray *)self->_transformStrokesAnimations removeObjectsAtIndexes:v19];
          v6 = 0x1E695D000;
        }

        else
        {
          v6 = 0x1E695D000uLL;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      if (alternativeStrokesAnimation->_forceDone || (crossFadeStartTime = alternativeStrokesAnimation->_crossFadeStartTime, crossFadeStartTime > 0.0) && crossFadeStartTime + alternativeStrokesAnimation->_fadeDuration <= a3)
      {
        self->_alternativeStrokesAnimation = 0;
      }
    }

    liveRenderingOverrideColorAnimation = self->_liveRenderingOverrideColorAnimation;
    if (liveRenderingOverrideColorAnimation && liveRenderingOverrideColorAnimation->_startTime + liveRenderingOverrideColorAnimation->_duration <= a3)
    {
      self->_liveRenderingOverrideColorAnimation = 0;

      v26 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)v26 setLiveRenderingOverrideColor:?];
    }

    if (![(NSMutableArray *)self->_fadeOutStrokeAnimations count]&& ![(NSMutableArray *)self->_particlesToDestinationAnimations count]&& ![(NSMutableArray *)self->_fadeOutStrokeAnimations count]&& !self->_alternativeStrokesAnimation && !self->_liveRenderingOverrideColorAnimation && ![(NSMutableArray *)self->_transformStrokesAnimations count])
    {
      [(PKTiledCanvasView *)self setLiveAnimationStartTime:0.0];
      v27 = [(PKTiledCanvasView *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = [(PKTiledCanvasView *)self delegate];
        [v29 canvasViewDidFinishAnimatingStrokes:self];
      }
    }

    if ([v33 count])
    {
      strokeRenderCachesToPurge = self->_strokeRenderCachesToPurge;
      if (!strokeRenderCachesToPurge)
      {
        v31 = [*(v6 + 3952) arrayWithCapacity:{objc_msgSend(v33, "count")}];
        v32 = self->_strokeRenderCachesToPurge;
        self->_strokeRenderCachesToPurge = v31;

        strokeRenderCachesToPurge = self->_strokeRenderCachesToPurge;
      }

      [(NSMutableArray *)strokeRenderCachesToPurge addObjectsFromArray:v33];
    }
  }
}

- (void)testHideOldestStroke
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKTiledCanvasView *)self _drawingController];
  v4 = [(PKController *)v3 renderedStrokes];
  v5 = [v4 copy];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(PKTiledCanvasView *)self fadeOutAndHideStrokes:v7 duration:0.3];
  }
}

- (void)fadeOutAndHideStrokes:(id)a3 duration:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CACurrentMediaTime();
  [(PKTiledCanvasView *)self liveAnimationStartTime];
  if (v8 == 0.0)
  {
    [(PKTiledCanvasView *)self setLiveAnimationStartTime:v7];
  }

  v19 = [(PKTiledCanvasView *)self _strokeUUIDsForStrokes:v6];
  v9 = [(PKTiledCanvasView *)self strokeUUIDsAboutToBeRemoved];
  [v9 unionSet:v19];

  v10 = [(PKTiledCanvasView *)self _drawingController];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__PKTiledCanvasView_fadeOutAndHideStrokes_duration___block_invoke;
  v25[3] = &unk_1E82D6890;
  v25[4] = self;
  v20 = v19;
  v26 = v20;
  [(PKController *)v10 hideStrokesWithoutUpdating:v6 completion:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [[PKFadeOutStrokeAnimation alloc] initWithStroke:*(*(&v21 + 1) + 8 * i) startTime:v7 duration:a4];
        fadeOutStrokeAnimations = self->_fadeOutStrokeAnimations;
        if (!fadeOutStrokeAnimations)
        {
          v17 = [MEMORY[0x1E695DF70] array];
          v18 = self->_fadeOutStrokeAnimations;
          self->_fadeOutStrokeAnimations = v17;

          fadeOutStrokeAnimations = self->_fadeOutStrokeAnimations;
        }

        [(NSMutableArray *)fadeOutStrokeAnimations addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v12);
  }

  [(PKTiledCanvasView *)self setNeedsDrawingDisplay];
}

void __52__PKTiledCanvasView_fadeOutAndHideStrokes_duration___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__PKTiledCanvasView_fadeOutAndHideStrokes_duration___block_invoke_2;
  v2[3] = &unk_1E82D6890;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __52__PKTiledCanvasView_fadeOutAndHideStrokes_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) strokeUUIDsAboutToBeRemoved];
  [v2 minusSet:*(a1 + 40)];
}

- (void)removeStuckStrokesAndSimulateCrashIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = [(PKTiledCanvasView *)self _drawingController];
  v3 = [(PKController *)v13 renderedStrokes];
  if ([v3 count])
  {
    v4 = [(PKTiledCanvasView *)self drawing];
    v5 = [v4 _isEmpty];

    if (v5)
    {
      v6 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v10 = [(PKTiledCanvasView *)self _drawingController];
        v11 = [(PKController *)v10 renderedStrokes];
        v12 = [PKDrawing _uuidDescriptionForStrokes:v11];
        *buf = 138412290;
        v15 = v12;
        _os_log_fault_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_FAULT, "Detected stuck strokes on canvas (<rdar://problem/50709761>): %@", buf, 0xCu);
      }

      v7 = [(PKTiledCanvasView *)self _drawingController];
      v8 = [(PKTiledCanvasView *)self _drawingController];
      v9 = [(PKController *)v8 renderedStrokes];
      [(PKController *)v7 hideStrokesWithoutUpdating:v9 completion:0];
    }
  }

  else
  {
  }
}

- (CGSize)_metalViewDrawableSize
{
  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  metalView = self->_metalView;
  if (metalView)
  {
    [(CAMetalLayer *)metalView->_metalLayer drawableSize];
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_rendererControllerPixelSize
{
  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  v3 = [(PKTiledCanvasView *)self _rendererController];
  if (v3)
  {
    v5 = v3[13];
    v4 = v3[14];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  v6 = v5;
  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setCanvasOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_canvasOffset = a3;
  v5 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v5 setCanvasOffset:y];
}

- (id)shapeDrawingControllerRendererController:(id)a3
{
  v3 = [(PKTiledCanvasView *)self _rendererController];

  return v3;
}

- (void)shapeDrawingControllerShapeGestureDetected:(id)a3 isFastGesture:(BOOL)a4
{
  if (!self->_combiningStrokesCount)
  {
    v4 = a4;
    [(PKTiledCanvasView *)self _finishCombiningStrokesIfNecessary];
    v6 = [(PKTiledCanvasView *)self strokeGenerator];
    v7 = [v6 isSnappedToRuler];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = [(PKTiledCanvasView *)self shapeDrawingController];
      [(PKTiledCanvasView *)self _inputScale];
      v11 = v10;
      v12 = [(PKTiledCanvasView *)self shapeDrawingController];
      v13 = v12;
      if (v12)
      {
        [(PKAveragePointGenerator *)*(v12 + 120) currentInputPoint];
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        v33 = 0u;
      }

      if (v4)
      {
        v14 = &unk_1F47C1928;
      }

      else
      {
        v14 = 0;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__PKTiledCanvasView_shapeDrawingControllerShapeGestureDetected_isFastGesture___block_invoke;
      v31[3] = &unk_1E82D7438;
      v31[4] = self;
      v8 = [(PKShapeDrawingController *)v9 detectedShapeWithInputScale:buf averageInputPoint:v14 allowedShapeTypes:v31 createCurrentStrokeBlock:v11];

      if (v8)
      {
        v15 = CACurrentMediaTime();
        [(PKTiledCanvasView *)self liveAnimationStartTime];
        if (v16 == 0.0)
        {
          [(PKTiledCanvasView *)self setLiveAnimationStartTime:v15];
        }

        if ([v8 type] != 13)
        {
          v17 = [PKAlternativeStrokesAnimation alloc];
          v18 = [v8 strokes];
          v19 = [(PKAlternativeStrokesAnimation *)&v17->super.isa initWithStrokes:v18 shape:v8 startTime:v15 fadeDuration:0.15];
          [(PKTiledCanvasView *)self setAlternativeStrokesAnimation:v19];
        }

        v20 = [(PKTiledCanvasView *)self shapeDrawingController];
        [(PKShapeDrawingController *)v20 setDetectedShape:v8];

        if (_os_feature_enabled_impl())
        {
          v21 = os_log_create("com.apple.pencilkit", "Feedback");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "[Canvas Feedback Event] shape recognized.", buf, 2u);
          }

          v22 = [(PKTiledCanvasView *)self shapeDrawingController];
          v23 = v22;
          if (v22)
          {
            [(PKAveragePointGenerator *)*(v22 + 120) currentInputPoint];
            v25 = *buf;
            v24 = *&buf[8];
          }

          else
          {
            v24 = 0.0;
            v25 = 0.0;
          }

          v26 = [(_UICanvasFeedbackGenerator *)self->_feedbackGenerator view];
          [(PKTiledCanvasView *)self convertPoint:v26 toView:v25, v24];
          v28 = v27;
          v30 = v29;

          [(_UICanvasFeedbackGenerator *)self->_feedbackGenerator pathCompletedAtLocation:v28, v30];
        }
      }
    }
  }
}

id __78__PKTiledCanvasView_shapeDrawingControllerShapeGestureDetected_isFastGesture___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strokeGenerator];
  v2 = [v1 newStrokeWithCurrentData];

  return v2;
}

- (void)shapeDrawingControllerShapeDetectionCancelled:(id)a3
{
  v4 = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)v4 setDetectedShape:?];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
}

- (int64_t)shapeDrawingControllerMaximumSupportedContentVersion:(id)a3
{
  if ((*(&self->_canvasViewFlags + 8) & 0x400) == 0)
  {
    return 4;
  }

  v5 = [(PKTiledCanvasView *)self delegate];
  v3 = [v5 canvasViewMaximumSupportedContentVersion:self];

  return v3;
}

- (void)setIsPDFCanvasForAnalytics:(BOOL)a3
{
  self->_isPDFCanvasForAnalytics = a3;
  v4 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)v4 setIsPDFCanvasForAnalytics:a3];
}

- (void)strokeGeneratorDidSnapToRuler:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__PKTiledCanvasView_strokeGeneratorDidSnapToRuler___block_invoke;
    v4[3] = &unk_1E82D6D80;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__PKTiledCanvasView_strokeGeneratorDidSnapToRuler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.pencilkit", "Feedback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "[Canvas Feedback Event] snap-to-ruler recognized.", &v12, 2u);
    }

    v3 = [WeakRetained strokeGenerator];
    v4 = v3;
    if (v3)
    {
      [v3 _latestStrokePoint];
      v6 = *(&v12 + 1);
      v5 = *&v13;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = 0.0;
      v6 = 0.0;
    }

    v7 = [WeakRetained[54] view];
    [WeakRetained convertPoint:v7 toView:{v6, v5}];
    v9 = v8;
    v11 = v10;

    [WeakRetained[54] snappingOccurredAtLocation:{v9, v11}];
  }
}

- (BOOL)shapeDrawingController:(id)a3 scratchOutStrokesCoveredByStroke:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKTiledCanvasView *)self delegate];
  v7 = [(PKTiledCanvasView *)self drawing];
  v8 = [v6 canvasView:self attachmentViewForDrawing:v7];

  v45 = v8;
  v46 = [(PKTiledCanvasView *)self drawing];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [v10 isEqualToString:@"com.apple.freeform"];

  if (v11)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = [(PKTiledCanvasView *)self selectionController];
    v13 = v12;
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((v12 + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [WeakRetained attachments];

    v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v16)
    {
      v17 = *v55;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v54 + 1) + 8 * i);
          if ([v19 isExternalAttachment])
          {
            v20 = [v19 drawing];
            [v20 bounds];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            [v5 renderBounds];
            v61.origin.x = v29;
            v61.origin.y = v30;
            v61.size.width = v31;
            v61.size.height = v32;
            v60.origin.x = v22;
            v60.origin.y = v24;
            v60.size.width = v26;
            v60.size.height = v28;
            v33 = CGRectIntersectsRect(v60, v61);

            if (v33)
            {
              v34 = v19;

              v35 = [v34 drawing];

              v46 = v35;
              goto LABEL_16;
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v34 = v45;
LABEL_16:
  }

  else
  {
    v34 = v45;
  }

  v36 = [(PKScratchOutController *)self->_scratchOutController intersectedStrokesForStroke:v5 attachment:v34 drawing:v46];
  if ([v36 count])
  {
    scratchOutController = self->_scratchOutController;
    v38 = [v36 allObjects];
    v39 = [(PKScratchOutController *)scratchOutController intersectedStrokesFilteredByCoverageThresholdForStroke:v5 intersectedStrokes:v38];

    v40 = [v39 count] != 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PKTiledCanvasView_shapeDrawingController_scratchOutStrokesCoveredByStroke___block_invoke;
    aBlock[3] = &unk_1E82D7578;
    objc_copyWeak(&v52, &location);
    v48 = v36;
    v49 = self;
    v41 = v46;
    v50 = v41;
    v51 = v45;
    v42 = _Block_copy(aBlock);
    if (v40)
    {
      v43 = [(PKTiledCanvasView *)self delegate];
      [v43 canvasView:self textStrokesCoveredByStroke:v5 drawing:v41 completion:v42];
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(v40) = 0;
  }

  return v40;
}

void __77__PKTiledCanvasView_shapeDrawingController_scratchOutStrokesCoveredByStroke___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKTiledCanvasView_shapeDrawingController_scratchOutStrokesCoveredByStroke___block_invoke_2;
  v13[3] = &unk_1E82D7550;
  objc_copyWeak(&v20, (a1 + 64));
  v14 = *(a1 + 32);
  v15 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v21 = a4;
  v19 = *(a1 + 56);
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v20);
}

void __77__PKTiledCanvasView_shapeDrawingController_scratchOutStrokesCoveredByStroke___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained scratchOutController];
    v5 = [(PKScratchOutController *)v4 nonTextStrokeIntersectionBetweenAllStrokes:*(a1 + 40) textStrokesToDelete:*(a1 + 48) textStrokesToKeep:?];

    v6 = [v3 drawingGestureRecognizer];
    [v6 setState:5];

    [*(a1 + 56) drawingCancelled];
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.freeform"];

    if (v9)
    {
      if ((v3[58] & 0x2000) != 0)
      {
        v10 = objc_loadWeakRetained(v3 + 78);
        [v10 canvasView:v3 scratchOutStrokes:v5 drawing:*(a1 + 64)];
      }

LABEL_21:

      goto LABEL_22;
    }

    v11 = [v3 scratchOutController];
    v12 = v11;
    if (v11 && v11[8] == 1 && *(a1 + 88) == 1)
    {
      v13 = [v3 selectionController];
      v14 = [(PKSelectionController *)v13 selectionInteraction];
      v15 = [v14 delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = os_log_create("com.apple.pencilkit", "Actions");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 40) count];
          v37 = 134218240;
          v38 = v18;
          v39 = 2048;
          v40 = [v5 count];
          _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, "Scratch Out recognized only text strokes, trigger Reflow with %lu text strokes and %lu non-text strokes.", &v37, 0x16u);
        }

        if ([v5 count] && (objc_msgSend(v3, "selectionController"), v19 = objc_claimAutoreleasedReturnValue(), -[PKSelectionController selectionInteraction](v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "delegate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_opt_respondsToSelector(), v21, v20, v19, (v22 & 1) != 0))
        {
          v23 = [v3 selectionController];
          v24 = [(PKSelectionController *)v23 selectionInteraction];
          v25 = [v24 delegate];
          v26 = [v3 selectionController];
          v27 = [(PKSelectionController *)v26 selectionInteraction];
          [v25 selectionInteraction:v27 handleDeleteForTextStrokes:*(a1 + 40) nonTextStrokes:v5 inAttachment:*(a1 + 72)];
        }

        else
        {
          v32 = [v3 selectionController];
          v33 = [(PKSelectionController *)v32 selectionInteraction];
          v34 = [v33 delegate];
          v35 = [v3 selectionController];
          v36 = [(PKSelectionController *)v35 selectionInteraction];
          [v34 selectionInteraction:v36 handleDeleteForTextStrokes:*(a1 + 40) inAttachment:*(a1 + 72)];
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v28 = os_log_create("com.apple.pencilkit", "Actions");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEFAULT, "Scratch Out recognized a mix of text and drawing strokes, do not trigger Reflow.", &v37, 2u);
    }

    v29 = [v5 mutableCopy];
    v30 = v3[100];
    v3[100] = v29;

    if ((v3[56] & 0x2000) != 0 && [v3[100] count])
    {
      v31 = [v3 delegate];
      [v31 _canvasViewDidEraseStrokes:v3[100]];
    }

    [v3 eraserEnded:0];
    [v3 setIsScratchOutPending:1];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)_postBeganErasingAXAnnouncement
{
  if (![(PKTiledCanvasView *)self disableAXDrawingAnnouncements])
  {
    v4 = _PencilKitBundle();
    v3 = [v4 localizedStringForKey:@"Began erasing" value:@"Began erasing" table:@"Localizable"];
    [(PKTiledCanvasView *)self _postAXAnnouncement:v3];
  }
}

- (void)_postEndedErasingAXAnnouncement
{
  if (![(PKTiledCanvasView *)self disableAXDrawingAnnouncements])
  {
    v4 = _PencilKitBundle();
    v3 = [v4 localizedStringForKey:@"Ended erasing" value:@"Ended erasing" table:@"Localizable"];
    [(PKTiledCanvasView *)self _postAXAnnouncement:v3];
  }
}

- (void)_postBeganSketchingAXAnnouncement
{
  if (![(PKTiledCanvasView *)self disableAXDrawingAnnouncements])
  {
    v4 = _PencilKitBundle();
    v3 = [v4 localizedStringForKey:@"Began sketching" value:@"Began sketching" table:@"Localizable"];
    [(PKTiledCanvasView *)self _postAXAnnouncement:v3];
  }
}

- (void)_postEndedSketchingAXAnnouncement
{
  if (![(PKTiledCanvasView *)self disableAXDrawingAnnouncements])
  {
    v4 = _PencilKitBundle();
    v3 = [v4 localizedStringForKey:@"Ended sketching" value:@"Ended sketching" table:@"Localizable"];
    [(PKTiledCanvasView *)self _postAXAnnouncement:v3];
  }
}

- (BOOL)_hasStrokeTransformChanged
{
  if ([(PKTiledCanvasView *)self isDrawing])
  {
    [(PKTiledCanvasView *)self scaledStrokeTransform];
    memset(v11, 0, sizeof(v11));
    v3 = [(PKTiledCanvasView *)self _rendererController];
    v4 = v3;
    if (v3)
    {
      v5 = v3[45];
      v8 = v3[44];
      v9 = v5;
      v10 = v3[46];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    v6 = !DKDNearlyEqualTransforms(v11, &v8);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_previewDrawingBegan:(id *)a3 tiledViewLocation:(CGPoint)a4 disableDetachedRendering:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  [(PKTiledCanvasView *)self setIsPreviewing:1];
  v10 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Began preview drawing", v15, 2u);
  }

  v11 = *&a3->var13;
  v15[6] = *&a3->var11;
  v15[7] = v11;
  var15 = a3->var15;
  v12 = *&a3->var5;
  v15[2] = *&a3->var3;
  v15[3] = v12;
  v13 = *&a3->var9;
  v15[4] = *&a3->var7;
  v15[5] = v13;
  v14 = *&a3->var1;
  v15[0] = a3->var0;
  v15[1] = v14;
  [(PKTiledCanvasView *)self _drawingBegan:0 inputPoint:v15 locationInView:1 forPreview:v5 disableDetachedRendering:23 activeInputProperties:1 inputType:x, y];
}

- (void)_previewDrawingMoved:(id *)a3 tiledViewLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(PKTiledCanvasView *)self rulerController];
  v9 = [(PKRulerController *)v8 rulerSelected];

  if (v9)
  {
    v10 = [(PKTiledCanvasView *)self rulerController];
    v11 = [(PKTiledCanvasView *)self _touchView];
    [(PKRulerController *)v10 drawingMoved:v11 coordinateSystem:x, y];
  }

  v12 = [(PKTiledCanvasView *)self strokeGenerator];
  v13 = *&a3->var13;
  v28 = *&a3->var11;
  v29 = v13;
  var15 = a3->var15;
  v14 = *&a3->var5;
  v24 = *&a3->var3;
  v25 = v14;
  v15 = *&a3->var9;
  v26 = *&a3->var7;
  v27 = v15;
  v16 = *&a3->var1;
  var0 = a3->var0;
  v23 = v16;
  [v12 addPoint:&var0];

  v17 = [(PKTiledCanvasView *)self _rendererController];
  v18 = *&a3->var13;
  v28 = *&a3->var11;
  v29 = v18;
  var15 = a3->var15;
  v19 = *&a3->var5;
  v24 = *&a3->var3;
  v25 = v19;
  v20 = *&a3->var9;
  v26 = *&a3->var7;
  v27 = v20;
  v21 = *&a3->var1;
  var0 = a3->var0;
  v23 = v21;
  [(PKMetalRendererController *)v17 addInputPoint:?];
}

- (void)_previewDrawingEnded
{
  [(PKTiledCanvasView *)self setIsPreviewing:0];
  v3 = [(PKTiledCanvasView *)self strokeGenerator];
  [v3 setIsPreviewing:0];

  v4 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Ended preview drawing", v5, 2u);
  }

  [(PKTiledCanvasView *)self drawingCancelledForPreview:1];
}

- (void)_replayDrawingBegan:(id *)a3
{
  v4 = [(PKTiledCanvasView *)self _touchView:*&a3->var0.var0.x];
  [(PKTiledCanvasView *)self _replayDrawingBegan:&v5 coordinateSpace:v4 activeInputProperties:23 inputType:1];
}

- (void)_replayDrawingBegan:(id *)a3 coordinateSpace:(id)a4 activeInputProperties:(unint64_t)a5 inputType:(int64_t)a6
{
  v10 = a4;
  a3->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
  self->_replayInputType = a6;
  if (v10)
  {
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v10, self, &var0.var0.x);
    p_replayCoordinateSystemTransform = &self->__replayCoordinateSystemTransform;
    v12 = v25;
    *&self->__replayCoordinateSystemTransform.a = var0;
    *&self->__replayCoordinateSystemTransform.c = v12;
    v13 = v26;
  }

  else
  {
    p_replayCoordinateSystemTransform = &self->__replayCoordinateSystemTransform;
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *(MEMORY[0x1E695EFD0] + 32);
    *&self->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
    *&self->__replayCoordinateSystemTransform.c = v14;
  }

  *&p_replayCoordinateSystemTransform->tx = v13;
  v15 = [(PKTiledCanvasView *)self _touchView];
  [v15 convertPoint:v10 fromCoordinateSpace:{a3->var0.var0.x, a3->var0.var0.y}];
  v17 = v16;
  v19 = v18;

  v20 = *&a3->var13;
  v30 = *&a3->var11;
  v31 = v20;
  var15 = a3->var15;
  v21 = *&a3->var5;
  v26 = *&a3->var3;
  v27 = v21;
  v22 = *&a3->var9;
  v28 = *&a3->var7;
  v29 = v22;
  v23 = *&a3->var1;
  var0 = a3->var0;
  v25 = v23;
  [(PKTiledCanvasView *)self _drawingBegan:0 inputPoint:&var0 locationInView:0 forPreview:0 disableDetachedRendering:a5 activeInputProperties:a6 inputType:v17, v19];
}

- (void)_replayDrawingMoved:(id *)a3
{
  v4 = [(PKTiledCanvasView *)self _touchView:*&a3->var0.var0.x];
  [(PKTiledCanvasView *)self _replayDrawingMoved:&v5 coordinateSpace:v4];
}

- (void)_replayDrawingMoved:(id *)a3 coordinateSpace:(id)a4
{
  v6 = a4;
  a3->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
  v7 = [(PKTiledCanvasView *)self strokeGenerator];
  v8 = [v7 inputType];

  if (v8 == 1)
  {
    v9 = +[PKPencilDevice activePencil];
    [v9 tagAsUsed];
  }

  v10 = [(PKTiledCanvasView *)self strokeGenerator];
  v11 = *&a3->var13;
  v61 = *&a3->var11;
  v62 = v11;
  var15 = a3->var15;
  v12 = *&a3->var5;
  v57 = *&a3->var3;
  v58 = v12;
  v13 = *&a3->var9;
  v59 = *&a3->var7;
  v60 = v13;
  v14 = *&a3->var1;
  var0 = a3->var0;
  v56 = v14;
  [v10 addPoint:&var0];

  v15 = [(PKTiledCanvasView *)self _rendererController];
  v16 = *&a3->var13;
  v61 = *&a3->var11;
  v62 = v16;
  var15 = a3->var15;
  v17 = *&a3->var5;
  v57 = *&a3->var3;
  v58 = v17;
  v18 = *&a3->var9;
  v59 = *&a3->var7;
  v60 = v18;
  v19 = *&a3->var1;
  var0 = a3->var0;
  v56 = v19;
  [(PKMetalRendererController *)v15 addInputPoint:?];

  if ((*&self->_canvasViewFlags & 0x200) != 0)
  {
    v20 = [(PKTiledCanvasView *)self delegate];
    v21 = *&a3->var13;
    v61 = *&a3->var11;
    v62 = v21;
    var15 = a3->var15;
    v22 = *&a3->var5;
    v57 = *&a3->var3;
    v58 = v22;
    v23 = *&a3->var9;
    v59 = *&a3->var7;
    v60 = v23;
    v24 = *&a3->var1;
    var0 = a3->var0;
    v56 = v24;
    [v20 replayCanvasViewDrawingMoved:self inputPoint:&var0 inputType:self->_replayInputType];
  }

  if (!a3->var8)
  {
    v25 = [(PKTiledCanvasView *)self shapeDrawingController];
    if (v25)
    {
      v27 = v25[1];
      v26 = v25[2];

      if (v26 == v27)
      {
        goto LABEL_10;
      }

      x = a3->var0.var0.x;
      y = a3->var0.var0.y;
      v30 = [(PKTiledCanvasView *)self window];
      [v6 convertPoint:v30 toCoordinateSpace:{x, y}];
      v32 = v31;
      v34 = v33;

      v35 = [(PKTiledCanvasView *)self shapeDrawingController];
      v36 = *&a3->var13;
      v61 = *&a3->var11;
      v62 = v36;
      var15 = a3->var15;
      v37 = *&a3->var5;
      v57 = *&a3->var3;
      v58 = v37;
      v38 = *&a3->var9;
      v59 = *&a3->var7;
      v60 = v38;
      v39 = *&a3->var1;
      var0 = a3->var0;
      v56 = v39;
      [(PKShapeDrawingController *)v35 addStrokePoint:v32 inputPoint:v34];
    }

    else
    {
      v35 = 0;
    }
  }

LABEL_10:
  if (!a3->var8)
  {
    v40 = [(PKTiledCanvasView *)self ink];
    v41 = [v40 _isEraserInk];

    if (v41)
    {
      [(PKTiledCanvasView *)self _notifyEraserMoved:0 location:a3->var0.var0.x, a3->var0.var0.y];
    }

    v42 = a3->var0.var0.x;
    v43 = a3->var0.var0.y;
    v44 = [(PKTiledCanvasView *)self _touchView];
    [v6 convertPoint:v44 toCoordinateSpace:{v42, v43}];
    v46 = v45;
    v48 = v47;

    v49 = [(PKTiledCanvasView *)self rulerController];
    v50 = [(PKRulerController *)v49 rulerSelected];

    if (v50)
    {
      v51 = [(PKTiledCanvasView *)self rulerController];
      v52 = [(PKTiledCanvasView *)self _touchView];
      [(PKRulerController *)v51 drawingMoved:v52 coordinateSystem:v46, v48];
    }

    v53 = [(PKTiledCanvasView *)self powerSavingController];
    if (v53)
    {
      v54 = v53[6] + sqrt((v53[5] - v48) * (v53[5] - v48) + (v53[4] - v46) * (v53[4] - v46));
      v53[5] = v48;
      v53[6] = v54;
      v53[4] = v46;
    }
  }
}

- (void)_replayDrawingEndedEstimatesTimeout:(double)a3 withBackgroundQueueCompletion:(id)a4
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v4 = *(MEMORY[0x1E695EFD0] + 32);
  *&self->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
  *&self->__replayCoordinateSystemTransform.c = v5;
  *&self->__replayCoordinateSystemTransform.tx = v4;
  [(PKTiledCanvasView *)self _drawingEnded:0 estimatesTimeout:a4 completion:a3];
}

- (void)_replayDrawingCancelled
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v3 = *(MEMORY[0x1E695EFD0] + 32);
  *&self->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
  *&self->__replayCoordinateSystemTransform.c = v4;
  *&self->__replayCoordinateSystemTransform.tx = v3;
  v5 = [(PKTiledCanvasView *)self _drawingController];
  v6 = [(PKController *)v5 renderedStrokes];
  [(PKTiledCanvasView *)self fadeOutAndHideStrokes:v6 duration:0.0];

  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];

  [(PKTiledCanvasView *)self drawingCancelled];
}

- (void)_replayEstimatedPropertiesUpdated:(id *)a3
{
  v4 = [(PKTiledCanvasView *)self strokeGenerator];
  v5 = *&a3->var13;
  v9[6] = *&a3->var11;
  v9[7] = v5;
  var15 = a3->var15;
  v6 = *&a3->var5;
  v9[2] = *&a3->var3;
  v9[3] = v6;
  v7 = *&a3->var9;
  v9[4] = *&a3->var7;
  v9[5] = v7;
  v8 = *&a3->var1;
  v9[0] = a3->var0;
  v9[1] = v8;
  [v4 drawingUpdatePoint:v9];
}

- (CAMetalLayer)metalLayer
{
  v2 = [(PKTiledCanvasView *)self metalView];
  v3 = [(PKMetalView *)v2 metalLayer];

  return v3;
}

- (PKTiledCanvasViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

- (CGAffineTransform)paperTransform
{
  v3 = *&self[21].c;
  *&retstr->a = *&self[21].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[21].tx;
  return self;
}

- (CGPoint)canvasOffset
{
  x = self->_canvasOffset.x;
  y = self->_canvasOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)viewScissor
{
  x = self->_viewScissor.origin.x;
  y = self->_viewScissor.origin.y;
  width = self->_viewScissor.size.width;
  height = self->_viewScissor.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)liveStrokeMaxSize
{
  width = self->_liveStrokeMaxSize.width;
  height = self->_liveStrokeMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PKDrawing)currentDrawingBeingCopiedToCanvas
{
  WeakRetained = objc_loadWeakRetained(&self->_currentDrawingBeingCopiedToCanvas);

  return WeakRetained;
}

- (CGAffineTransform)_replayCoordinateSystemTransform
{
  v3 = *&self[22].c;
  *&retstr->a = *&self[22].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[22].tx;
  return self;
}

- (CGPoint)_oldEraseLocation
{
  x = self->__oldEraseLocation.x;
  y = self->__oldEraseLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIGestureRecognizer)allowSimultaneousGR
{
  WeakRetained = objc_loadWeakRetained(&self->_allowSimultaneousGR);

  return WeakRetained;
}

@end