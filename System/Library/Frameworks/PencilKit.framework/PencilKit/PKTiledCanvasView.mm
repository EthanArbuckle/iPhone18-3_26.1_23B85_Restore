@interface PKTiledCanvasView
+ (void)initialize;
+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(BOOL)rendering prewarmSharedResourceHandler:(BOOL)handler;
+ (void)setupDefaults;
- (BOOL)_hasStrokeTransformChanged;
- (BOOL)_isDisplayLinkPaused;
- (BOOL)_isFastDetectionAllowedForInkAndInputType:(int64_t)type;
- (BOOL)_isLiveAnimating;
- (BOOL)_isShapeRecognitionEnabled;
- (BOOL)drawingGestureRecognizer:(id)recognizer shouldBeginDrawingWithTouches:(id)touches event:(id)event;
- (BOOL)drawingGestureRecognizer:(id)recognizer shouldDelayDrawingBeganWithTouch:(id)touch;
- (BOOL)eraserBegan:(id)began;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)shapeDrawingController:(id)controller scratchOutStrokesCoveredByStroke:(id)stroke;
- (CAMetalLayer)metalLayer;
- (CGAffineTransform)_replayCoordinateSystemTransform;
- (CGAffineTransform)_strokeTransformForAttachment:(SEL)attachment;
- (CGAffineTransform)paperTransform;
- (CGAffineTransform)scaledStrokeTransform;
- (CGAffineTransform)strokeTransform;
- (CGPoint)_oldEraseLocation;
- (CGPoint)applyTransformToTouchLocation:(CGPoint)location;
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
- (PKTiledCanvasView)initWithFrame:(CGRect)frame usePrivateResourceHandler:(BOOL)handler singleComponent:(BOOL)component sixChannelBlending:(BOOL)blending;
- (PKTiledCanvasViewDelegate)delegate;
- (UIGestureRecognizer)allowSimultaneousGR;
- (double)_inputScale;
- (double)layerContentsScale;
- (id).cxx_construct;
- (id)_inkForNewStroke;
- (id)_strokeUUIDsForStrokes:(id)strokes;
- (id)_touchView;
- (id)currentStroke;
- (id)currentStrokeWithStrokeDataCopy;
- (id)liveDrawing;
- (id)shapeDrawingControllerRendererController:(id)controller;
- (id)snapshotFramebufferWithSize:(CGSize)size;
- (int64_t)shapeDrawingControllerMaximumSupportedContentVersion:(id)version;
- (unint64_t)metalLayerPixelFormat;
- (void)_callOptionalDrawingEndedCompletion:(id)completion withStroke:(id)stroke shapeStrokes:(id)strokes;
- (void)_didFinishErasingStrokes:(BOOL)strokes;
- (void)_didFinishHideCanvasTransaction;
- (void)_drawingBegan:(id)began inputPoint:(id *)point locationInView:(CGPoint)view forPreview:(BOOL)preview disableDetachedRendering:(BOOL)rendering activeInputProperties:(unint64_t)properties inputType:(int64_t)type;
- (void)_drawingDisplay:(double)display;
- (void)_drawingEnded:(id)ended estimatesTimeout:(double)timeout completion:(id)completion;
- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)accepted;
- (void)_finishCombiningStrokesIfNecessary;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handleEndOfStroke:(id)stroke shapeStrokes:(id)strokes groupedUndoCommands:(id)commands invalidateTiles:(BOOL)tiles;
- (void)_notifyEraserMoved:(id)moved location:(CGPoint)location;
- (void)_postBeganErasingAXAnnouncement;
- (void)_postBeganSketchingAXAnnouncement;
- (void)_postEndedErasingAXAnnouncement;
- (void)_postEndedSketchingAXAnnouncement;
- (void)_previewDrawingBegan:(id *)began tiledViewLocation:(CGPoint)location disableDetachedRendering:(BOOL)rendering;
- (void)_previewDrawingEnded;
- (void)_previewDrawingMoved:(id *)moved tiledViewLocation:(CGPoint)location;
- (void)_purgeResources;
- (void)_reduceMemoryFootprint;
- (void)_replayDrawingBegan:(id *)began;
- (void)_replayDrawingBegan:(id *)began coordinateSpace:(id)space activeInputProperties:(unint64_t)properties inputType:(int64_t)type;
- (void)_replayDrawingCancelled;
- (void)_replayDrawingEndedEstimatesTimeout:(double)timeout withBackgroundQueueCompletion:(id)completion;
- (void)_replayDrawingMoved:(id *)moved;
- (void)_replayDrawingMoved:(id *)moved coordinateSpace:(id)space;
- (void)_replayEstimatedPropertiesUpdated:(id *)updated;
- (void)_setDrawing:(id)drawing tiles:(id)tiles tileScale:(double)scale snapshotTexture:(id)texture snapshotTextureTransform:(CGAffineTransform *)transform completionBlock:(id)block;
- (void)_setFixedPointSize:(CGSize)size drawingScale:(double)scale;
- (void)_startDisplayLinkShouldPause:(BOOL)pause;
- (void)_stopDisplayLink;
- (void)_updateMetalLayerOpacity;
- (void)_updateMetalLayerOpacityForceNonOpaqueSixChannel:(BOOL)channel;
- (void)_updateSequenceVSync:(double)sync;
- (void)adjustedPixelSize:(CGSize *)size drawingSize:(CGSize *)drawingSize;
- (void)animateStrokes:(id)strokes destinationFrame:(CGRect)frame duration:(double)duration particles:(BOOL)particles;
- (void)cancelCurrentStroke;
- (void)cancelPurgeResourcesBlock;
- (void)checkAnimationsDidEndAtTime:(double)time;
- (void)clearHiddenStrokes;
- (void)dealloc;
- (void)delayCompletionBlockUntilPresentation:(id)presentation;
- (void)didEndLiveInteractionWithStrokes:(id)strokes drawing:(id)drawing cancelled:(BOOL)cancelled forPreview:(BOOL)preview;
- (void)didMoveToWindow;
- (void)drawingBegan:(id)began;
- (void)drawingCancelledForPreview:(BOOL)preview;
- (void)drawingChanged:(id)changed;
- (void)drawingEstimatedPropertiesUpdated:(id)updated;
- (void)drawingGestureRecognizer:(id)recognizer touchesEndedWithDrawingTouch:(id)touch;
- (void)drawingMoved:(id)moved withEvent:(id)event;
- (void)enumerateRenderedStrokesBounds:(id)bounds;
- (void)eraseStrokes:(id)strokes;
- (void)eraseStrokesForPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint;
- (void)eraserCancelled;
- (void)eraserEnded:(id)ended;
- (void)eraserMoved:(id)moved;
- (void)fadeOutAndHideStrokes:(id)strokes duration:(double)duration;
- (void)handleDrawingShouldPause:(BOOL)pause;
- (void)layoutSubviews;
- (void)liveStrokeParticlesToDestinationFrame:(CGRect)frame;
- (void)removeStuckStrokesAndSimulateCrashIfNecessary;
- (void)resizeBackingBuffersForPixelSize:(CGSize)size drawingScale:(double)scale;
- (void)schedulePurgeResourcesBlock;
- (void)setCanvasBackgroundColor:(id)color;
- (void)setCanvasOffset:(CGPoint)offset;
- (void)setCaptureLiveData:(BOOL)data;
- (void)setDelegate:(id)delegate;
- (void)setDrawBitmapEraserMask:(BOOL)mask;
- (void)setDrawingGestureRecognizer:(id)recognizer;
- (void)setHasSnapshot:(BOOL)snapshot;
- (void)setHidden:(BOOL)hidden;
- (void)setInk:(id)ink;
- (void)setIsDrawing:(BOOL)drawing forPreview:(BOOL)preview;
- (void)setIsPDFCanvasForAnalytics:(BOOL)analytics;
- (void)setIsUnderBlendedContent:(BOOL)content;
- (void)setLinedPaper:(id)paper;
- (void)setLiveAnimationStartTime:(double)time;
- (void)setLiveRenderingOverrideColor:(id)color animated:(BOOL)animated;
- (void)setLiveStrokeMaxSize:(CGSize)size;
- (void)setLiveStrokeMode:(BOOL)mode;
- (void)setMetalLayerContentsScaleOverride:(double)override;
- (void)setNeedsDrawingDisplay;
- (void)setOpaque:(BOOL)opaque;
- (void)setPaperTexture:(id)texture;
- (void)setPaperTransform:(CGAffineTransform *)transform;
- (void)setResourceCacheSize:(unint64_t)size;
- (void)setSixChannelBlendingMode:(int64_t)mode;
- (void)setUseLuminanceColorFilter:(BOOL)filter;
- (void)setViewScissor:(CGRect)scissor;
- (void)setWantsExtendedDynamicRangeContent:(BOOL)content;
- (void)setupDisplayLink;
- (void)setupDrawing;
- (void)setupGestures;
- (void)setupMetalViewForPixelFormat:(unint64_t)format withPixelSize:(CGSize)size;
- (void)setupMetalViewIfNecessary;
- (void)setupViewWithPixelSize:(CGSize)size drawingSize:(CGSize)drawingSize;
- (void)shapeDrawingControllerShapeDetectionCancelled:(id)cancelled;
- (void)shapeDrawingControllerShapeGestureDetected:(id)detected isFastGesture:(BOOL)gesture;
- (void)strokeGeneratorDidSnapToRuler:(id)ruler;
- (void)testHideOldestStroke;
- (void)updateHasVisibleStrokes;
- (void)willBeginLiveInteractionWithTouch:(id)touch;
@end

@implementation PKTiledCanvasView

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___PKTiledCanvasView;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self)
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

    drawing = [(PKTiledCanvasView *)self drawing];
    [(PKTiledCanvasView *)self didEndLiveInteractionWithStrokes:MEMORY[0x1E695E0F0] drawing:drawing cancelled:0];
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
  purgeResourcesBlock = [(PKTiledCanvasView *)self purgeResourcesBlock];

  if (purgeResourcesBlock)
  {
    purgeResourcesBlock2 = [(PKTiledCanvasView *)self purgeResourcesBlock];
    dispatch_block_cancel(purgeResourcesBlock2);

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

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v6)
  {
    v7 = 10000000000;
  }

  else
  {
    v7 = 2000000000;
  }

  v8 = dispatch_time(0, v7);
  purgeResourcesBlock = [(PKTiledCanvasView *)self purgeResourcesBlock];
  dispatch_after(v8, MEMORY[0x1E69E96A0], purgeResourcesBlock);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (PKStrokeGenerator)strokeGenerator
{
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  v4 = _rendererController;
  if (_rendererController)
  {
    v5 = *(_rendererController + 560);
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

  delegate = [(PKStrokeGenerator *)v6 delegate];

  if (!delegate)
  {
    [(PKStrokeGenerator *)v6 setDelegate:self];
  }

  return v6;
}

- (PKMetalRendererController)_rendererController
{
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  v3 = _drawingController;
  if (_drawingController)
  {
    v4 = *(_drawingController + 64);
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
  sixChannelBlendingMode = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  if (sixChannelBlendingMode > 3)
  {
    if ((sixChannelBlendingMode - 4) >= 2)
    {
      return v2;
    }

LABEL_9:
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    goto LABEL_10;
  }

  if ((sixChannelBlendingMode - 2) < 2 || !sixChannelBlendingMode)
  {
    goto LABEL_9;
  }

  if (sixChannelBlendingMode == 1)
  {
    wantsExtendedDynamicRangeContent = self->_wantsExtendedDynamicRangeContent;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    if (!wantsExtendedDynamicRangeContent)
    {
      if (_rendererController)
      {
        v7 = _rendererController + 68;
LABEL_14:
        v2 = *v7;
LABEL_15:

        return v2;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (_rendererController)
    {
      v8 = 67;
      if (*(_rendererController + 524))
      {
        v8 = 64;
      }

      v7 = &_rendererController[v8];
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
  window = [(PKTiledCanvasView *)self window];

  if (window)
  {
    if (_os_feature_enabled_impl())
    {
      superview = [(PKTiledCanvasView *)self superview];
      if (superview)
      {
        v5 = superview;
        while (([v5 isUserInteractionEnabled]& 1) == 0)
        {
          superview2 = [v5 superview];

          v5 = superview2;
          if (!superview2)
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
      view = [(_UICanvasFeedbackGenerator *)v7 view];
      [view removeInteraction:self->_feedbackGenerator];

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
      powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
      if (powerSavingController)
      {
        powerSavingController[72] = 0;
      }

      _rendererController = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)_rendererController changeRenderSize];
    }
  }

  traitCollection = [(PKTiledCanvasView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController2 setInvertColors:?];

  sixChannelBlendingMode = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  _rendererController3 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController3 setSixChannelBlendingMode:sixChannelBlendingMode];

  LODWORD(sixChannelBlendingMode) = [(PKTiledCanvasView *)self drawBitmapEraserMask];
  _rendererController4 = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController4 setDrawBitmapEraserMask:sixChannelBlendingMode];

  rulerController = [(PKTiledCanvasView *)self rulerController];
  [(PKRulerController *)rulerController ensureRulerIsFullyOnscreen];
}

- (PKRulerController)rulerController
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerController);

  return WeakRetained;
}

- (PKTiledCanvasView)initWithFrame:(CGRect)frame usePrivateResourceHandler:(BOOL)handler singleComponent:(BOOL)component sixChannelBlending:(BOOL)blending
{
  blendingCopy = blending;
  v31.receiver = self;
  v31.super_class = PKTiledCanvasView;
  v9 = [(PKTiledCanvasView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    v9->_usePrivateResourceHandler = handler;
    v12 = [[PKMetalConfig alloc] initWithPrivateResourceHandler:handler];
    metalConfig = v11->_metalConfig;
    v11->_metalConfig = v12;

    v11->_singleComponent = component;
    v11->_sixChannelBlendingMode = blendingCopy;
    [(PKTiledCanvasView *)v11 setupDrawing];
    array = [MEMORY[0x1E695DF70] array];
    particlesToDestinationAnimations = v11->_particlesToDestinationAnimations;
    v11->_particlesToDestinationAnimations = array;

    array2 = [MEMORY[0x1E695DF70] array];
    transformStrokesAnimations = v11->_transformStrokesAnimations;
    v11->_transformStrokesAnimations = array2;

    v18 = [MEMORY[0x1E695DFA8] set];
    strokeUUIDsAboutToBeRemoved = v11->_strokeUUIDsAboutToBeRemoved;
    v11->_strokeUUIDsAboutToBeRemoved = v18;

    v21 = *(MEMORY[0x1E695EFD0] + 16);
    v20 = *(MEMORY[0x1E695EFD0] + 32);
    *&v10->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
    *&v10->__replayCoordinateSystemTransform.c = v21;
    *&v10->__replayCoordinateSystemTransform.tx = v20;
    v11->_maxNumPredictionPoints = -1;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [standardUserDefaults objectForKey:@"internalSettings.drawing.touchPredictionPointsOverride"];

    if (v23)
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v11->_maxNumPredictionPoints = [standardUserDefaults2 integerForKey:@"internalSettings.drawing.touchPredictionPointsOverride"];
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
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  v4 = _drawingController;
  if (_drawingController)
  {
    [(PKMetalRendererController *)*(_drawingController + 64) cancelLongRunningRenders];
  }

  [(PKTiledCanvasView *)self _stopDisplayLink];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
  [(PKController *)_drawingController2 teardown];

  v7.receiver = self;
  v7.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v7 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(BOOL)rendering prewarmSharedResourceHandler:(BOOL)handler
{
  if (!rendering)
  {
    handlerCopy = handler;
    v6 = +[PKMetalUtility defaultDevice];
    if (v6)
    {
      v7 = !handlerCopy;
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

  [self setupDefaults];
  v11 = MEMORY[0x1E69E96A0];

  dispatch_async(v11, &__block_literal_global_96_0);
}

uint64_t __98__PKTiledCanvasView_prewarmFutureCanvasesIfNecessarySecureRendering_prewarmSharedResourceHandler___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = MEMORY[0x1E69DCD58];

  return [v1 prefersPencilOnlyDrawing];
}

- (id)snapshotFramebufferWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  v7 = _rendererController;
  if (_rendererController && *(_rendererController + 520) == 1 && !self->_wantsExtendedDynamicRangeContent)
  {
    v10 = 554;
  }

  else
  {
    _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
    if (_rendererController2)
    {
      v9 = 536;
      if (_rendererController2[524])
      {
        v9 = 512;
      }

      v10 = *&_rendererController2[v9];
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
    _rendererController3 = [(PKTiledCanvasView *)self _rendererController];
    device = [(PKMetalRendererController *)_rendererController3 device];
    height = [(PKMetalFramebuffer *)&v15->super.isa initWithSize:v10 pixelFormat:device device:0 memoryless:1 backedByIOSurface:1 sampleCount:0 purgeable:width, height];

    objc_storeStrong(&self->_snapshotFramebuffer, height);
    v12 = height;
  }

  return v12;
}

- (void)setInk:(id)ink
{
  obj = ink;
  [(PKTiledCanvasView *)self _finishCombiningStrokesIfNecessary];
  identifier = [obj identifier];
  v5 = [identifier isEqualToString:@"com.apple.ink.marker"];

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
  _sixChannelVersion = [obja _sixChannelVersion];
  sixChannelInk = self->_sixChannelInk;
  self->_sixChannelInk = _sixChannelVersion;
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

- (void)setLinedPaper:(id)paper
{
  paperCopy = paper;
  objc_storeStrong(&self->_linedPaper, paper);
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setLinedPaper:paperCopy];
}

- (void)setPaperTexture:(id)texture
{
  textureCopy = texture;
  if (self->_paperTexture != textureCopy)
  {
    objc_storeStrong(&self->_paperTexture, texture);
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setPaperTextureImage:?];
  }
}

- (void)setLiveRenderingOverrideColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  liveRenderingOverrideColor = self->_liveRenderingOverrideColor;
  v26 = colorCopy;
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

      if (animatedCopy)
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
            color = [v25 color];

            goto LABEL_13;
          }

          v14 = v16;
        }

        color = v14;
LABEL_13:
        if (v26)
        {
          color2 = v26;
        }

        else
        {
          v18 = [(PKTiledCanvasView *)self ink];
          color2 = [v18 color];
        }

        objc_storeStrong(&self->_liveRenderingOverrideColor, color);
        if (color && color2)
        {
          v19 = CACurrentMediaTime();
          v20 = [[PKInterpolateColorAnimation alloc] initWithStartColor:color endColor:color2 startTime:v19 duration:0.15];
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

          _rendererController = [(PKTiledCanvasView *)self _rendererController];
          [(PKMetalRendererController *)_rendererController setLiveRenderingOverrideColor:?];
        }

        goto LABEL_22;
      }
    }

    else
    {

      if (animatedCopy)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong(&self->_liveRenderingOverrideColor, color);
    color = [(PKTiledCanvasView *)self _rendererController];
    -[PKMetalRendererController setLiveRenderingOverrideColor:](color, [v26 CGColor]);
LABEL_22:

    v10 = v26;
  }

LABEL_23:
}

- (void)setUseLuminanceColorFilter:(BOOL)filter
{
  filterCopy = filter;
  self->_useLuminanceColorFilter = filter;
  metalView = [(PKTiledCanvasView *)self metalView];
  [(PKMetalView *)metalView setUseLuminanceColorFilter:filterCopy];
}

- (void)setSixChannelBlendingMode:(int64_t)mode
{
  if (self->_sixChannelBlendingMode != mode)
  {
    self->_sixChannelBlendingMode = mode;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setSixChannelBlendingMode:mode];

    metalLayerPixelFormat = [(PKTiledCanvasView *)self metalLayerPixelFormat];
    metalView = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView setPixelFormat:metalLayerPixelFormat];

    metalView2 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView2 setSixChannelBlending:?];

    [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
    if ([(PKTiledCanvasView *)self sixChannelBlendingMode]== 2 || [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3)
    {
      _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
      metalView3 = [(PKTiledCanvasView *)self metalView];
      metalMultiplyLayer = [(PKMetalView *)metalView3 metalMultiplyLayer];
      [(PKMetalRendererController *)_rendererController2 setMultiplyPresentationLayer:metalMultiplyLayer];
    }

    else
    {
      _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)_rendererController2 setMultiplyPresentationLayer:?];
    }

    _rendererController3 = [(PKTiledCanvasView *)self _rendererController];
    metalView4 = [(PKTiledCanvasView *)self metalView];
    metalLayer = [(PKMetalView *)metalView4 metalLayer];
    [(PKMetalRendererController *)_rendererController3 setPresentationLayer:metalLayer];
  }
}

- (void)setDrawBitmapEraserMask:(BOOL)mask
{
  if (self->_drawBitmapEraserMask != mask)
  {
    maskCopy = mask;
    self->_drawBitmapEraserMask = mask;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setDrawBitmapEraserMask:maskCopy];
  }
}

- (void)setHasSnapshot:(BOOL)snapshot
{
  if (self->_hasSnapshot != snapshot)
  {
    self->_hasSnapshot = snapshot;
    [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
  }
}

- (void)updateHasVisibleStrokes
{
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  v4 = [renderedStrokes count] || self->_liveInteractionCount > 0 || -[PKTiledCanvasView _isLiveAnimating](self, "_isLiveAnimating");

  if (self->_hasVisibleStrokes != v4)
  {
    self->_hasVisibleStrokes = v4;
    if ((*(&self->_canvasViewFlags + 16) & 4) != 0)
    {
      delegate = [(PKTiledCanvasView *)self delegate];
      [delegate canvasViewHasVisibleStrokesChanged:self];
    }
  }
}

- (void)setDrawingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  drawingGestureRecognizer = self->_drawingGestureRecognizer;
  if (drawingGestureRecognizer != recognizerCopy)
  {
    v9 = recognizerCopy;
    if (drawingGestureRecognizer)
    {
      delegate = [(PKDrawingGestureRecognizerProtocol *)drawingGestureRecognizer delegate];

      if (delegate == self)
      {
        [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer setDelegate:0];
      }

      drawingTarget = [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer drawingTarget];

      if (drawingTarget == self)
      {
        [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer setDrawingTarget:0];
      }

      [(PKTiledCanvasView *)self removeGestureRecognizer:self->_drawingGestureRecognizer];
    }

    objc_storeStrong(&self->_drawingGestureRecognizer, recognizer);
    recognizerCopy = v9;
  }
}

- (void)setLiveStrokeMode:(BOOL)mode
{
  if (self->_liveStrokeMode != mode)
  {
    modeCopy = mode;
    self->_liveStrokeMode = mode;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setFadeOutStrokesMode:modeCopy];

    _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController2 setLiveStrokeMode:modeCopy];
  }
}

- (void)setLiveStrokeMaxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_liveStrokeMaxSize.width != size.width || self->_liveStrokeMaxSize.height != size.height)
  {
    self->_liveStrokeMaxSize = size;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setLiveStrokeMaxSize:height];
  }
}

- (void)enumerateRenderedStrokesBounds:(id)bounds
{
  v15 = *MEMORY[0x1E69E9840];
  boundsCopy = bounds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];

  v7 = [renderedStrokes countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(renderedStrokes);
        }

        [*(*(&v10 + 1) + 8 * v9) _bounds];
        boundsCopy[2](boundsCopy);
        ++v9;
      }

      while (v7 != v9);
      v7 = [renderedStrokes countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];

  v8 = [renderedStrokes countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(renderedStrokes);
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
      v8 = [renderedStrokes countByEnumeratingWithState:&v19 objects:v23 count:16];
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

        stroke = [*(*(&v50 + 1) + 8 * v14) stroke];
        [stroke _bounds];
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

- (void)setCanvasBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_canvasBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_canvasBackgroundColor, color);
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    -[PKMetalRendererController setBackgroundColor:](_rendererController, [colorCopy CGColor]);
  }
}

- (void)setResourceCacheSize:(unint64_t)size
{
  self->_resourceCacheSize = size;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setResourceCacheSize:size];
}

- (void)adjustedPixelSize:(CGSize *)size drawingSize:(CGSize *)drawingSize
{
  height = size->height;
  if (size->width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(PKTiledCanvasView *)self bounds:size->width];
    v10 = fmax(v9, 1.0);
    v12 = fmax(v11, 1.0);
    metalLayerContentsScaleOverride = self->_metalLayerContentsScaleOverride;
    if (metalLayerContentsScaleOverride <= 0.0)
    {
      +[PKMetalUtility layerContentsScale];
    }

    [PKMetalUtility clampedPixelSize:v10 * metalLayerContentsScaleOverride, v12 * metalLayerContentsScaleOverride];
    size->width = v14;
    size->height = v15;
    drawingSize->width = v10;
    drawingSize->height = v12;
  }
}

- (void)setupViewWithPixelSize:(CGSize)size drawingSize:(CGSize)drawingSize
{
  sizeCopy = size;
  drawingSizeCopy = drawingSize;
  if (!self->_drawingController)
  {
    [(PKTiledCanvasView *)self adjustedPixelSize:&sizeCopy drawingSize:&drawingSizeCopy];
    v5 = [PKController alloc];
    v6 = [(PKController *)v5 initWithPixelSize:[(PKTiledCanvasView *)self sixChannelBlendingMode] actualSize:[(PKTiledCanvasView *)self wantsExtendedDynamicRangeContent] singleComponent:self->_metalConfig sixChannelBlendingMode:sizeCopy.width wantsExtendedDynamicRangeContent:sizeCopy.height metalConfig:drawingSizeCopy.width, drawingSizeCopy.height];
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

    v10 = [(PKTiledCanvasView *)self captureLiveData:*&drawingSizeCopy.width];
    strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
    [strokeGenerator setCaptureLiveData:v10];

    v12 = self->_drawingController;
    if (v12)
    {
      objc_storeWeak(&v12->_delegate, self);
    }

    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setBackboardPaperMultiply:?];

    if (self->_resourceCacheSize)
    {
      _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)_rendererController2 setResourceCacheSize:?];
    }

    liveStrokeMode = [(PKTiledCanvasView *)self liveStrokeMode];
    _rendererController3 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController3 setFadeOutStrokesMode:liveStrokeMode];

    liveStrokeMode2 = [(PKTiledCanvasView *)self liveStrokeMode];
    _rendererController4 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController4 setLiveStrokeMode:liveStrokeMode2];

    LOBYTE(liveStrokeMode2) = [(PKTiledCanvasView *)self isPDFCanvasForAnalytics];
    _rendererController5 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController5 setIsPDFCanvasForAnalytics:liveStrokeMode2];
  }

  v20 = [(PKTiledCanvasView *)self metalLayerPixelFormat:*&drawingSizeCopy.width];
  [(PKTiledCanvasView *)self setupMetalViewForPixelFormat:v20 withPixelSize:sizeCopy.width, sizeCopy.height];
  metalView = self->_metalView;
  if (metalView)
  {
    width = sizeCopy.width;
    height = sizeCopy.height;
    if (sizeCopy.width == *MEMORY[0x1E695F060] && sizeCopy.height == *(MEMORY[0x1E695F060] + 8))
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
  _rendererController6 = [(PKTiledCanvasView *)self _rendererController];
  metalLayer = [(PKMetalView *)&self->_metalView->super.super.super.isa metalLayer];
  [(PKMetalRendererController *)_rendererController6 setPresentationLayer:metalLayer];

  if ([(PKTiledCanvasView *)self sixChannelBlendingMode]== 2 || [(PKTiledCanvasView *)self sixChannelBlendingMode]== 3)
  {
    _rendererController7 = [(PKTiledCanvasView *)self _rendererController];
    metalMultiplyLayer = [(PKMetalView *)&self->_metalView->super.super.super.isa metalMultiplyLayer];
    [(PKMetalRendererController *)_rendererController7 setMultiplyPresentationLayer:metalMultiplyLayer];
  }

  canvasBackgroundColor = self->_canvasBackgroundColor;
  whiteColor = canvasBackgroundColor;
  if (!canvasBackgroundColor)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  [(PKTiledCanvasView *)self setCanvasBackgroundColor:whiteColor];
  if (!canvasBackgroundColor)
  {
  }

  linedPaper = [(PKTiledCanvasView *)self linedPaper];

  if (linedPaper)
  {
    linedPaper2 = [(PKTiledCanvasView *)self linedPaper];
    _rendererController8 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController8 setLinedPaper:linedPaper2];
  }
}

- (void)setupMetalViewForPixelFormat:(unint64_t)format withPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (format)
  {
    formatCopy = format;
  }

  else
  {
    formatCopy = 80;
  }

  v8 = [PKMetalView alloc];
  [(PKTiledCanvasView *)self bounds];
  height = [(PKMetalView *)v8 initWithFrame:formatCopy andPixelSize:[(PKTiledCanvasView *)self wantsExtendedDynamicRangeContent] pixelFormat:v9 wantsExtendedDynamicRangeContent:v10, v11, v12, width, height];
  metalView = self->_metalView;
  self->_metalView = height;

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

- (void)setMetalLayerContentsScaleOverride:(double)override
{
  if (self->_metalLayerContentsScaleOverride != override)
  {
    self->_metalLayerContentsScaleOverride = override;
    [(PKTiledCanvasView *)self _fixedPixelSize];
    v6 = v5;
    v8 = v7;
    [(PKTiledCanvasView *)self _fixedDrawingScale];

    [(PKTiledCanvasView *)self resizeBackingBuffersForPixelSize:v6 drawingScale:v8, v9];
  }
}

- (void)_setFixedPointSize:(CGSize)size drawingScale:(double)scale
{
  v6 = fmax(size.width, 1.0);
  v7 = fmax(size.height, 1.0);
  +[PKMetalUtility layerContentsScale];
  [PKMetalUtility clampedPixelSize:v6 * v8, v7 * v8];
  v10 = v9;
  v12 = v11;
  v13 = v9 / v6 * scale;
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

- (void)resizeBackingBuffersForPixelSize:(CGSize)size drawingScale:(double)scale
{
  sizeCopy = size;
  if (self->_metalView)
  {
    if (scale <= 0.0)
    {
      v14 = sizeCopy;
    }

    else
    {
      v5 = 1.0 / scale;
      v14.width = size.width * v5;
      v14.height = size.height * v5;
    }

    [(PKTiledCanvasView *)self adjustedPixelSize:&sizeCopy drawingSize:&v14];
    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    v7 = _drawingController;
    if (_drawingController)
    {
      v8 = *(_drawingController + 64);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [(PKMetalRendererController *)v9 setPixelSize:sizeCopy.height actualSize:v14.width, v14.height];

    metalView = self->_metalView;
    [(PKTiledCanvasView *)self bounds];
    [(PKMetalView *)metalView setFrame:?];
    v11 = self->_metalView;
    if (v11)
    {
      v12 = sizeCopy;
      if (sizeCopy.width == *MEMORY[0x1E695F060] && sizeCopy.height == *(MEMORY[0x1E695F060] + 8))
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
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

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

- (void)_startDisplayLinkShouldPause:(BOOL)pause
{
  self->_shouldPause = pause;
  v4 = _UIUpdateCycleEnabled();
  if (_UIUpdateCycleEnabled() && !self->_updateSequenceItem)
  {
    window = [(PKTiledCanvasView *)self window];
    screen = [window screen];
    maximumFramesPerSecond = [screen maximumFramesPerSecond];

    objc_initWeak(&location, self);
    _UIUpdateRequestActivate();
    v8[2] = MEMORY[0x1E69E9820];
    v8[3] = 3221225472;
    v8[4] = __50__PKTiledCanvasView__startDisplayLinkShouldPause___block_invoke;
    v8[5] = &unk_1E82D72D0;
    objc_copyWeak(&v9, &location);
    v8[6] = self;
    self->_updateSequenceItem = _UIUpdateSequenceInsertItem();
    v8[1] = maximumFramesPerSecond;
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

  delegate = [(PKTiledCanvasView *)self delegate];
  v3 = [delegate canvasViewAllowSnapToShape:self];

  return v3;
}

- (BOOL)_isFastDetectionAllowedForInkAndInputType:(int64_t)type
{
  if (type != 2)
  {
    return 0;
  }

  v4 = [(PKTiledCanvasView *)self ink];
  if ([v4 _isPenInk])
  {
    _isPencilInk = 1;
  }

  else
  {
    v6 = [(PKTiledCanvasView *)self ink];
    if ([v6 _isHandwritingInk])
    {
      _isPencilInk = 1;
    }

    else
    {
      v7 = [(PKTiledCanvasView *)self ink];
      _isPencilInk = [v7 _isPencilInk];
    }
  }

  return _isPencilInk;
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

  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  v4 = [renderedStrokes count] != 0;

  return v4;
}

- (void)handleDrawingShouldPause:(BOOL)pause
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKTiledCanvasView_handleDrawingShouldPause___block_invoke;
  aBlock[3] = &unk_1E82D75A0;
  pauseCopy = pause;
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
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController purgeOriginalBackFramebuffer];

    if ([(NSMutableArray *)self->_strokeRenderCachesToPurge count])
    {
      _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)_rendererController2 purgeRenderCachesForStrokes:?];

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

- (void)setWantsExtendedDynamicRangeContent:(BOOL)content
{
  if (self->_wantsExtendedDynamicRangeContent != content)
  {
    contentCopy = content;
    self->_wantsExtendedDynamicRangeContent = content;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setWantsExtendedDynamicRangeContent:contentCopy];

    metalLayerPixelFormat = [(PKTiledCanvasView *)self metalLayerPixelFormat];
    metalView = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView setPixelFormat:metalLayerPixelFormat];

    metalView2 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView2 setWantsExtendedDynamicRangeContent:contentCopy];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(PKTiledCanvasView *)self isHidden];
  if (isHidden != hiddenCopy)
  {
    [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  }

  v7.receiver = self;
  v7.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v7 setHidden:hiddenCopy];
  if (!(isHidden | !hiddenCopy))
  {
    [(PKTiledCanvasView *)self schedulePurgeResourcesBlock];
    strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
    [strokeGenerator resetFilters];
  }
}

- (void)_didFinishHideCanvasTransaction
{
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setCombineStrokesAllowed:?];
}

- (void)_drawingDisplay:(double)display
{
  if (!_UIUpdateCycleEnabled() || !self->_updateSequenceVSyncItem)
  {

    [(PKTiledCanvasView *)self _updateSequenceVSync:display];
  }
}

- (void)_updateSequenceVSync:(double)sync
{
  v147 = *MEMORY[0x1E69E9840];
  v5 = CACurrentMediaTime();
  _isLiveAnimating = [(PKTiledCanvasView *)self _isLiveAnimating];
  isReplaying = [(PKDrawingGestureRecognizerProtocol *)self->_drawingGestureRecognizer isReplaying];
  v102 = _isLiveAnimating;
  val = self;
  if (_isLiveAnimating)
  {
    [(PKTiledCanvasView *)self liveAnimationStartTime];
    v9 = v8;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setLiveStrokeElapsedTime:?];

    [(PKTiledCanvasView *)self isHidden];
  }

  else if ([(PKTiledCanvasView *)self isHidden])
  {
    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    v12 = _drawingController;
    if (_drawingController && (_drawingController[48] & 1) != 0 || val->_isErasingObjects)
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

    metalView = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView setDoubleBuffered:?];

    self = val;
  }

  shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
  v17 = shapeDrawingController;
  if (shapeDrawingController)
  {
    [(PKShapeDrawingController *)shapeDrawingController _checkDetectedStroke];
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
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
    powerSavingController = [(PKTiledCanvasView *)val powerSavingController];
    if (powerSavingController)
    {
      v27 = powerSavingController[72];

      v21 = val;
      if (v27 == 1)
      {
        powerSavingController2 = [(PKTiledCanvasView *)val powerSavingController];
        [(PKDrawingPowerSavingController *)powerSavingController2 accumulateMovementForCurrentFrame];

        v21 = val;
        if (!((val->_metalView == 0) | (v102 | isReplaying) & 1) && ![(PKTiledCanvasView *)val isPreviewing])
        {
          powerSavingController3 = [(PKTiledCanvasView *)val powerSavingController];
          v31 = [(PKDrawingPowerSavingController *)powerSavingController3 shouldSkipFrameWithFrameStartTimestamp:v20 framesAfterStart:?];

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
    powerSavingController4 = [v21 powerSavingController];
    if (powerSavingController4)
    {
      *(powerSavingController4 + 72) = 1;
      *(powerSavingController4 + 48) = 0;
      *(powerSavingController4 + 56) = 0;
      *(powerSavingController4 + 64) = v20;
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

          stroke = [v44 stroke];
          _strokeUUID = [stroke _strokeUUID];
          [v38 addObject:_strokeUUID];
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
          strokes = [v50 strokes];
          v52 = [strokes countByEnumeratingWithState:&v129 objects:v144 count:16];
          if (v52)
          {
            v53 = *v130;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v130 != v53)
                {
                  objc_enumerationMutation(strokes);
                }

                v55 = *(*(&v129 + 1) + 8 * k);
                _strokeUUID2 = [v55 _strokeUUID];
                v57 = [v38 containsObject:_strokeUUID2];

                if ((v57 & 1) == 0)
                {
                  [v39 addObject:v55];
                  [v38 addObject:v55];
                }
              }

              v52 = [strokes countByEnumeratingWithState:&v129 objects:v144 count:16];
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
    transformStrokesAnimations = [(PKTiledCanvasView *)val transformStrokesAnimations];
    v107 = transformStrokesAnimations;
    v63 = [transformStrokesAnimations countByEnumeratingWithState:&v125 objects:v143 count:16];
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
            objc_enumerationMutation(transformStrokesAnimations);
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
                _strokeUUID3 = [v70 _strokeUUID];
                v72 = [v38 containsObject:_strokeUUID3];

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

          transformStrokesAnimations = v107;
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

    strokeUUIDsAboutToBeRemoved = [(PKTiledCanvasView *)val strokeUUIDsAboutToBeRemoved];
    [v38 unionSet:strokeUUIDsAboutToBeRemoved];

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    _drawingController2 = [(PKTiledCanvasView *)val _drawingController];
    renderedStrokes = [(PKController *)_drawingController2 renderedStrokes];

    v80 = [renderedStrokes countByEnumeratingWithState:&v117 objects:v141 count:16];
    if (v80)
    {
      v81 = *v118;
      do
      {
        for (n = 0; n != v80; ++n)
        {
          if (*v118 != v81)
          {
            objc_enumerationMutation(renderedStrokes);
          }

          v83 = *(*(&v117 + 1) + 8 * n);
          _strokeUUID4 = [v83 _strokeUUID];
          v85 = [v38 containsObject:_strokeUUID4];

          if ((v85 & 1) == 0)
          {
            [v39 addObject:v83];
          }
        }

        v80 = [renderedStrokes countByEnumeratingWithState:&v117 objects:v141 count:16];
      }

      while (v80);
    }

    [PKDrawing sortStrokes:v39];
    _rendererController2 = [(PKTiledCanvasView *)val _rendererController];
    [(PKMetalRendererController *)_rendererController2 setLiveStrokeStrokes:v39 animationBounds:x, y, width, height];

    v21 = val;
  }

  if (v21[106])
  {
    _rendererController3 = [v21 _rendererController];
    alternativeStrokesAnimation = val->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      alternativeStrokesAnimation = alternativeStrokesAnimation->_strokes;
    }

    v89 = alternativeStrokesAnimation;
    v90 = val->_alternativeStrokesAnimation;
    v91 = [(PKAlternativeStrokesAnimation *)v90 alphaAtTime:v5];
    v92 = [(PKAlternativeStrokesAnimation *)v90 originalStrokeAlphaAtTime:v5];
    [(PKMetalRendererController *)_rendererController3 setAlternativeStrokes:v89 alpha:v91 originalStrokeAlpha:v92];

    v21 = val;
  }

  v93 = v21[109];
  if (v93)
  {
    v94 = [(PKInterpolateColorAnimation *)v93 colorAtTime:v5];
    _rendererController4 = [(PKTiledCanvasView *)val _rendererController];
    v96 = v94;
    -[PKMetalRendererController setLiveRenderingOverrideColor:](_rendererController4, [v94 CGColor]);

    v21 = val;
  }

  if (v102)
  {
    [v21 checkAnimationsDidEndAtTime:v5];
    v21 = val;
  }

  _rendererController5 = [v21 _rendererController];
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  [(PKMetalRendererController *)_rendererController5 prerenderWithTransform:val->_inputScale inputScale:sync at:?];

  *&v114 = 0;
  *(&v114 + 1) = &v114;
  *&v115 = 0x3042000000;
  *(&v115 + 1) = __Block_byref_object_copy__3;
  *&v116 = __Block_byref_object_dispose__3;
  objc_initWeak(&v116 + 1, val);
  val->_latestRenderTimestamp = CACurrentMediaTime();
  _drawingController3 = [(PKTiledCanvasView *)val _drawingController];
  v99 = _drawingController3;
  if (_drawingController3)
  {
    v100 = *(_drawingController3 + 64);
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

- (void)_updateMetalLayerOpacityForceNonOpaqueSixChannel:(BOOL)channel
{
  channelCopy = channel;
  sixChannelBlendingMode = [(PKTiledCanvasView *)self sixChannelBlendingMode];
  isOpaque = [(PKTiledCanvasView *)self isOpaque];
  v7 = sixChannelBlendingMode == 1 && channelCopy;
  if (sixChannelBlendingMode == 1)
  {
    v8 = !channelCopy;
  }

  else
  {
    v8 = isOpaque;
  }

  metalView = [(PKTiledCanvasView *)self metalView];
  metalLayer = [(PKMetalView *)metalView metalLayer];
  [metalLayer setOpaque:v8];

  metalView2 = [(PKTiledCanvasView *)self metalView];
  metalMultiplyLayer = [(PKMetalView *)metalView2 metalMultiplyLayer];
  [metalMultiplyLayer setOpaque:v8];

  if ((v8 & 1) == 0)
  {
    v38 = [(PKTiledCanvasView *)self ink];
    behavior = [v38 behavior];
    renderingDescriptor = [behavior renderingDescriptor];
    v13 = [renderingDescriptor blendMode] == 1 && v7;

    if (v13 == 1)
    {
      v39 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
      metalView3 = [(PKTiledCanvasView *)self metalView];
      metalLayer2 = [(PKMetalView *)metalView3 metalLayer];
      [metalLayer2 setCompositingFilter:v39];

      metalView4 = [(PKTiledCanvasView *)self metalView];
      metalLayer3 = [(PKMetalView *)metalView4 metalLayer];
      [metalLayer3 setAllowsGroupOpacity:0];

      metalView5 = [(PKTiledCanvasView *)self metalView];
      metalLayer4 = [(PKMetalView *)metalView5 metalLayer];
      [metalLayer4 setAllowsGroupBlending:0];

      metalView6 = [(PKTiledCanvasView *)self metalView];
      layer = [metalView6 layer];
      [layer setAllowsGroupOpacity:0];

      metalView7 = [(PKTiledCanvasView *)self metalView];
      layer2 = [metalView7 layer];
      [layer2 setAllowsGroupBlending:0];

LABEL_20:
      DeviceRGB = DKUCGColorCreateDeviceRGB(0.0, 0.0, 0.0, 0.0);
      _drawingController = [(PKTiledCanvasView *)self _drawingController];
      v53 = _drawingController;
      if (_drawingController)
      {
        v34 = *(_drawingController + 64);
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
    metalView8 = [(PKTiledCanvasView *)self metalView];
    metalLayer5 = [(PKMetalView *)metalView8 metalLayer];
    [metalLayer5 setAllowsGroupOpacity:0];

    metalView9 = [(PKTiledCanvasView *)self metalView];
    metalLayer6 = [(PKMetalView *)metalView9 metalLayer];
    [metalLayer6 setAllowsGroupBlending:0];

    metalView10 = [(PKTiledCanvasView *)self metalView];
    layer3 = [metalView10 layer];
    [layer3 setAllowsGroupOpacity:0];

    metalView11 = [(PKTiledCanvasView *)self metalView];
    layer4 = [metalView11 layer];
    [layer4 setAllowsGroupBlending:0];
  }

  else
  {
    metalView12 = [(PKTiledCanvasView *)self metalView];
    metalLayer7 = [(PKMetalView *)metalView12 metalLayer];
    [metalLayer7 setCompositingFilter:0];

    metalView13 = [(PKTiledCanvasView *)self metalView];
    metalLayer8 = [(PKMetalView *)metalView13 metalLayer];
    [metalLayer8 setAllowsGroupOpacity:1];

    metalView14 = [(PKTiledCanvasView *)self metalView];
    metalLayer9 = [(PKMetalView *)metalView14 metalLayer];
    [metalLayer9 setAllowsGroupBlending:1];

    metalView15 = [(PKTiledCanvasView *)self metalView];
    layer5 = [metalView15 layer];
    [layer5 setAllowsGroupOpacity:1];

    metalView11 = [(PKTiledCanvasView *)self metalView];
    layer4 = [metalView11 layer];
    [layer4 setAllowsGroupBlending:1];
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

  v52 = self->_canvasBackgroundColor;
  _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
  v29 = _drawingController2;
  if (_drawingController2)
  {
    v30 = *(_drawingController2 + 64);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  [(PKMetalRendererController *)v31 setBackgroundColor:?];
}

- (void)setOpaque:(BOOL)opaque
{
  v4.receiver = self;
  v4.super_class = PKTiledCanvasView;
  [(PKTiledCanvasView *)&v4 setOpaque:opaque];
  [(PKTiledCanvasView *)self _updateMetalLayerOpacity];
}

- (void)setIsUnderBlendedContent:(BOOL)content
{
  contentCopy = content;
  self->_isUnderBlendedContent = content;
  metalView = [(PKTiledCanvasView *)self metalView];
  metalLayer = [(PKMetalView *)metalView metalLayer];
  [metalLayer setAllowsDisplayCompositing:!contentCopy];
}

- (void)setCaptureLiveData:(BOOL)data
{
  dataCopy = data;
  self->_captureLiveData = data;
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  [strokeGenerator setCaptureLiveData:dataCopy];
}

- (void)delayCompletionBlockUntilPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentationCopy)
  {
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PKTiledCanvasView_delayCompletionBlockUntilPresentation___block_invoke;
    aBlock[3] = &unk_1E82D63B0;
    v8 = presentationCopy;
    [(PKMetalRendererController *)_rendererController callBlockAfterPresenting:?];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKTiledCanvasView_delayCompletionBlockUntilPresentation___block_invoke_2;
  v6[3] = &unk_1E82D6388;
  v6[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_setDrawing:(id)drawing tiles:(id)tiles tileScale:(double)scale snapshotTexture:(id)texture snapshotTextureTransform:(CGAffineTransform *)transform completionBlock:(id)block
{
  drawingCopy = drawing;
  tilesCopy = tiles;
  textureCopy = texture;
  blockCopy = block;
  if (!drawingCopy)
  {
LABEL_5:
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    goto LABEL_12;
  }

  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  [(PKTiledCanvasView *)self setHasSnapshot:textureCopy != 0];
  if (self->_liveInteractionCount >= 1 && [drawingCopy _isEmpty])
  {
    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)_drawingController setLiveInteractionDrawing:drawingCopy];

    objc_storeStrong(&self->_drawing, drawing);
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
  v38 = blockCopy;
  v20 = _Block_copy(aBlock);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_2;
  v33[3] = &unk_1E82D7370;
  objc_copyWeak(&v36, location);
  v21 = drawingCopy;
  v34 = v21;
  v22 = v20;
  v35 = v22;
  v23 = _Block_copy(v33);
  if (tilesCopy || !textureCopy)
  {
    memset(&v30, 0, sizeof(v30));
    [(PKTiledCanvasView *)self strokeTransform];
    t1 = v30;
    CGAffineTransformMakeScale(&v27, scale, scale);
    CGAffineTransformConcat(&v29, &t1, &v27);
    v30 = v29;
    _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
    v29 = v30;
    v26 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v26;
    *&t1.tx = *&transform->tx;
    [(PKController *)_drawingController2 setDrawing:v21 tiles:tilesCopy tileTransform:&v29 contentImageTexture:textureCopy contentImageTextureTransform:&t1 completionBlock:v23];
  }

  else
  {
    _drawingController3 = [(PKTiledCanvasView *)self _drawingController];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __106__PKTiledCanvasView__setDrawing_tiles_tileScale_snapshotTexture_snapshotTextureTransform_completionBlock___block_invoke_4;
    v31[3] = &unk_1E82D63B0;
    v32 = v23;
    [(PKController *)_drawingController3 setDrawing:v21 imageTexture:textureCopy completion:v31];
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
  currentDrawingBeingCopiedToCanvas = [(PKTiledCanvasView *)self currentDrawingBeingCopiedToCanvas];
  v4 = currentDrawingBeingCopiedToCanvas;
  if (currentDrawingBeingCopiedToCanvas)
  {
    drawing = currentDrawingBeingCopiedToCanvas;
  }

  else
  {
    drawing = [(PKTiledCanvasView *)self drawing];
  }

  v6 = drawing;

  return v6;
}

- (void)drawingChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy copy];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __36__PKTiledCanvasView_drawingChanged___block_invoke;
  v11 = &unk_1E82D6890;
  selfCopy = self;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  allowSimultaneousGR = [(PKTiledCanvasView *)self allowSimultaneousGR];
  if (allowSimultaneousGR)
  {
    drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
    if (drawingGestureRecognizer == recognizerCopy)
    {
      v11 = 1;
    }

    else
    {
      drawingGestureRecognizer2 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      v11 = drawingGestureRecognizer2 == gestureRecognizerCopy;
    }

    v14 = allowSimultaneousGR == recognizerCopy || allowSimultaneousGR == gestureRecognizerCopy;
    v12 = v14 && v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  v9 = drawingGestureRecognizer;
  if (drawingGestureRecognizer != recognizerCopy)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ((*&self->_canvasViewFlags & 0x1000) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    v6 = [delegate canvasView:self shouldBeginDrawingWithTouch:touchCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];

  if (drawingGestureRecognizer == failedCopy)
  {
    v6 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "_gestureRecognizerFailed called for drawing gesture recognizer", v7, 2u);
    }

    [failedCopy cancel];
  }
}

- (id)_touchView
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy->_canvasViewFlags.delegateSupportsTouchView)
  {
    delegate = [(PKTiledCanvasView *)selfCopy delegate];
    v5 = [delegate canvasViewTouchView:v3];
  }

  else
  {
    v5 = selfCopy;
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
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  newStrokeWithCurrentData = [strokeGenerator newStrokeWithCurrentData];

  return newStrokeWithCurrentData;
}

- (id)currentStrokeWithStrokeDataCopy
{
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  newStrokeWithCurrentDataCopy = [strokeGenerator newStrokeWithCurrentDataCopy];

  return newStrokeWithCurrentDataCopy;
}

- (void)cancelCurrentStroke
{
  v3 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "cancelCurrentStroke called", v5, 2u);
  }

  drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  [drawingGestureRecognizer cancel];
}

- (id)liveDrawing
{
  currentStrokeWithStrokeDataCopy = [(PKTiledCanvasView *)self currentStrokeWithStrokeDataCopy];
  if (currentStrokeWithStrokeDataCopy)
  {
    [(PKDrawing *)self->_drawing updateStroke:currentStrokeWithStrokeDataCopy indexHint:[(PKDrawing *)self->_drawing _rootStrokesCount]- 1];
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
  window = [(PKTiledCanvasView *)self window];
  [(PKTiledCanvasView *)self convertSize:window toView:1.0, 1.0];
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
  _touchView = [(PKTiledCanvasView *)self _touchView];
  v4 = objc_opt_class();
  v5 = PKDynamicCast(v4, _touchView);
  [(PKTiledCanvasView *)self strokeTransformForAttachment:v5];

  return result;
}

- (CGAffineTransform)_strokeTransformForAttachment:(SEL)attachment
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
      tileContainerView = [v6 tileContainerView];
      PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(tileContainerView, self, &retstr->a);

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

- (void)willBeginLiveInteractionWithTouch:(id)touch
{
  touchCopy = touch;
  objc_storeStrong(&self->_currentStrokeTouch, touch);
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
    _supportsCombiningStrokes = [v9 _supportsCombiningStrokes];

    if (_supportsCombiningStrokes && ((*(&self->_canvasViewFlags + 8) & 0x40) == 0 || (-[PKTiledCanvasView delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 canvasViewShouldCombineStrokes:self], v11, v12)))
    {
      isCombiningStrokes = 1;
      if (!self->_isCombiningStrokes)
      {
        self->_isCombiningStrokes = 1;
        self->_combiningStrokesCount = 0;
        uUID = [MEMORY[0x1E696AFB0] UUID];
        combineStrokesRenderGroupID = self->_combineStrokesRenderGroupID;
        self->_combineStrokesRenderGroupID = uUID;

        activeDrawing = [(PKTiledCanvasView *)self activeDrawing];
        uuid = [activeDrawing uuid];
        combineStrokesDrawingID = self->_combineStrokesDrawingID;
        self->_combineStrokesDrawingID = uuid;

        isCombiningStrokes = self->_isCombiningStrokes;
      }
    }

    else
    {
      isCombiningStrokes = 0;
      self->_isCombiningStrokes = 0;
    }

    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController setCombineStrokesAllowed:?];

    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)_drawingController didStartLiveInteraction];

    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }
}

- (void)didEndLiveInteractionWithStrokes:(id)strokes drawing:(id)drawing cancelled:(BOOL)cancelled forPreview:(BOOL)preview
{
  previewCopy = preview;
  cancelledCopy = cancelled;
  v50 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  drawingCopy = drawing;
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
    v46 = drawingCopy;
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
    if (v13 >= 1 && [strokesCopy count] && !cancelledCopy)
    {
      finishedStrokes = self->_finishedStrokes;
      if (!finishedStrokes)
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
        v20 = self->_finishedStrokes;
        self->_finishedStrokes = v19;

        finishedStrokes = self->_finishedStrokes;
      }

      [(NSMutableArray *)finishedStrokes addObjectsFromArray:strokesCopy];
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
    if (strokesCopy && !cancelledCopy)
    {
      v22 = [strokesCopy copy];
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
      delegate = [(PKTiledCanvasView *)self delegate];
      [delegate _canvasView:self didFinishRenderingNewStrokes:v22 inDrawing:drawingCopy forPreview:previewCopy];
    }

    currentStrokeTouch = self->_currentStrokeTouch;
    self->_currentStrokeTouch = 0;

    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    v27 = _drawingController;
    if (_drawingController)
    {
      dispatch_semaphore_signal(*(_drawingController + 80));
    }

    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }

  if ([strokesCopy count] && cancelledCopy && (*&self->_canvasViewFlags & 8) != 0 && !previewCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = strokesCopy;
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
          delegate2 = [(PKTiledCanvasView *)self delegate];
          [delegate2 canvasView:self cancelledStroke:v32];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }

    _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
    renderedStrokes = [(PKController *)_drawingController2 renderedStrokes];
    if ([renderedStrokes count])
    {
      drawing = [(PKTiledCanvasView *)self drawing];
      strokes = [drawing strokes];
      v38 = [strokes count] == 0;

      if (!v38)
      {
        goto LABEL_41;
      }

      _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
      renderedStrokes = [(PKTiledCanvasView *)self _drawingController];
      v35RenderedStrokes = [(PKController *)renderedStrokes renderedStrokes];
      [(PKController *)_drawingController2 hideStrokesWithoutUpdating:v35RenderedStrokes completion:0];
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

- (BOOL)drawingGestureRecognizer:(id)recognizer shouldBeginDrawingWithTouches:(id)touches event:(id)event
{
  recognizerCopy = recognizer;
  touchesCopy = touches;
  eventCopy = event;
  alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
  if (alternativeStrokesAnimation)
  {
    alternativeStrokesAnimation->_forceDone = 1;
    [(PKTiledCanvasView *)self _drawingDisplay:0.0];
  }

  v12 = [(PKTiledCanvasView *)self ink];
  _isHandwritingInk = [v12 _isHandwritingInk];

  return _isHandwritingInk ^ 1;
}

- (BOOL)drawingGestureRecognizer:(id)recognizer shouldDelayDrawingBeganWithTouch:(id)touch
{
  touchCopy = touch;
  if ((*(&self->_canvasViewFlags + 8) & 0x20) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    v6 = [delegate canvasView:self shouldDelayDrawingBeganWithTouch:touchCopy];
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

- (void)drawingBegan:(id)began
{
  beganCopy = began;
  LogTouchIfEnabled(beganCopy, 0);
  _touchView = [(PKTiledCanvasView *)self _touchView];
  [(UITouch *)beganCopy PK_preciseLocationInView:_touchView];
  v7 = v6;
  v9 = v8;

  v10 = [(UITouch *)beganCopy type]== UITouchTypePencil;
  v11 = [(PKTiledCanvasView *)self drawingGestureRecognizer:0];
  -[PKTiledCanvasView _drawingBegan:inputPoint:locationInView:forPreview:disableDetachedRendering:activeInputProperties:inputType:](self, "_drawingBegan:inputPoint:locationInView:forPreview:disableDetachedRendering:activeInputProperties:inputType:", beganCopy, &v12, 0, 0, [v11 activeInputProperties], v10, v7, v9);
}

- (void)_drawingBegan:(id)began inputPoint:(id *)point locationInView:(CGPoint)view forPreview:(BOOL)preview disableDetachedRendering:(BOOL)rendering activeInputProperties:(unint64_t)properties inputType:(int64_t)type
{
  propertiesCopy = properties;
  renderingCopy = rendering;
  previewCopy = preview;
  y = view.y;
  x = view.x;
  v129 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  std::vector<PKInputPoint>::resize(&self->_rollPointsToUpdate.__begin_, 0);
  [(PKTiledCanvasView *)self setupMetalViewIfNecessary];
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  [strokeGenerator setIsPreviewing:previewCopy];

  p_canvasViewFlags = &self->_canvasViewFlags;
  if ((*(&self->_canvasViewFlags + 8) & 1) != 0 && [(PKTiledCanvasView *)self enableCanvasOffsetSupport])
  {
    metalView = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView setPresentsWithTransaction:?];

    objc_initWeak(location, self);
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke;
    v118[3] = &unk_1E82D7398;
    objc_copyWeak(&v119, location);
    [(PKMetalRendererController *)_rendererController setCanvasOffsetPresentationOffsetBlock:v118];

    objc_destroyWeak(&v119);
    objc_destroyWeak(location);
  }

  else
  {
    metalView2 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView2 setPresentsWithTransaction:?];

    _rendererController2 = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController2 setCanvasOffsetPresentationOffsetBlock:?];
  }

  metalView3 = [(PKTiledCanvasView *)self metalView];
  metalLayer = [(PKMetalView *)metalView3 metalLayer];
  [metalLayer setAllowsDisplayCompositing:!renderingCopy];

  shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
  LOBYTE(metalLayer) = shapeDrawingController == 0;

  if ((metalLayer & 1) == 0)
  {
    _isShapeRecognitionEnabled = [(PKTiledCanvasView *)self _isShapeRecognitionEnabled];
    shapeDrawingController2 = [(PKTiledCanvasView *)self shapeDrawingController];
    if (shapeDrawingController2)
    {
      shapeDrawingController2[193] = _isShapeRecognitionEnabled && !previewCopy;
    }
  }

  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];
  if ((*(&self->_canvasViewFlags + 8) & 0x200) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    v28 = *&point->var13;
    v126 = *&point->var11;
    v127 = v28;
    var15 = point->var15;
    v29 = *&point->var5;
    v122 = *&point->var3;
    v123 = v29;
    v30 = *&point->var9;
    v124 = *&point->var7;
    v125 = v30;
    v31 = *&point->var1;
    *location = point->var0;
    v121 = v31;
    [delegate _canvasViewWillBeginDrawing:self startPoint:location forPreview:previewCopy];
    goto LABEL_14;
  }

  if ((*p_canvasViewFlags & 0x40) != 0 && !previewCopy)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    [delegate _canvasViewWillBeginDrawing:self];
LABEL_14:
  }

  if (type == 1)
  {
    v32 = +[PKPencilDevice activePencil];
    [v32 tagAsUsed];
  }

  if (!beganCopy || ![(PKTiledCanvasView *)self eraserBegan:beganCopy])
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
      delegate2 = [(PKTiledCanvasView *)self delegate];
      [delegate2 canvasViewWillBeginNewStroke:self withTouch:beganCopy location:{x, y}];
    }

    if (beganCopy)
    {
      _touchView = [(PKTiledCanvasView *)self _touchView];
      [beganCopy PK_preciseLocationInView:_touchView];
      x = v37;
      y = v38;

      [(PKTiledCanvasView *)self applyTransformToTouchLocation:x, y];
      [(PKInputPointUtility *)self drawingInputPoint:beganCopy view:0 touch:v102 predicted:location activeInputProperties:v39, v40];
      v41 = v127;
      *&point->var11 = v126;
      *&point->var13 = v41;
      point->var15 = var15;
      v42 = v123;
      *&point->var3 = v122;
      *&point->var5 = v42;
      v43 = v125;
      *&point->var7 = v124;
      *&point->var9 = v43;
      v44 = v121;
      point->var0 = *location;
      *&point->var1 = v44;
    }

    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    [(PKTiledCanvasView *)self scaledStrokeTransform];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    _rendererController3 = [(PKTiledCanvasView *)self _rendererController];
    *location = 0u;
    v121 = 0u;
    v122 = 0u;
    [(PKMetalRendererController *)_rendererController3 setStrokeTransform:?];

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

    [(PKTiledCanvasView *)self willBeginLiveInteractionWithTouch:beganCopy];
    [(PKTiledCanvasView *)self setIsDrawing:1 forPreview:previewCopy];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(PKTiledCanvasView *)self setDrawingStartTimestamp:?];

    [(PKTiledCanvasView *)self _inputScale];
    v49 = v48;
    activeDrawing = [(PKTiledCanvasView *)self activeDrawing];
    newStroke = [activeDrawing newStroke];

    _inkForNewStroke = [(PKTiledCanvasView *)self _inkForNewStroke];
    [newStroke _setInk:_inkForNewStroke];

    if ([(PKTiledCanvasView *)self generateLiveDrawing])
    {
      objc_initWeak(location, self);
      _drawingController = [(PKTiledCanvasView *)self _drawingController];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_140;
      v110[3] = &unk_1E82D73C0;
      objc_copyWeak(&v111, location);
      [(PKController *)_drawingController addLiveStrokeEarly:newStroke completionBlock:v110];

      objc_destroyWeak(&v111);
      objc_destroyWeak(location);
    }

    if (self->_isCombiningStrokes)
    {
      [newStroke _setRenderGroupID:self->_combineStrokesRenderGroupID];
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

        _touchView2 = [(PKTiledCanvasView *)self _touchView];
        _touchView3 = [(PKTiledCanvasView *)self _touchView];
        window = [_touchView3 window];
        [_touchView2 convertPoint:window toView:{x, y}];
        v61 = v60;
        v63 = v62;

        shapeDrawingController3 = [(PKTiledCanvasView *)self shapeDrawingController];
        [(PKShapeDrawingController *)shapeDrawingController3 beginStrokeAtPoint:v61, v63];

        v65 = -[PKTiledCanvasView _isFastDetectionAllowedForInkAndInputType:](self, "_isFastDetectionAllowedForInkAndInputType:", [beganCopy type]);
        shapeDrawingController4 = [(PKTiledCanvasView *)self shapeDrawingController];
        v53 = shapeDrawingController4;
        if (shapeDrawingController4)
        {
          *(shapeDrawingController4 + 195) = v65;
        }
      }
    }

LABEL_42:
    if (!type)
    {
      traitCollection = [(PKTiledCanvasView *)self traitCollection];
      v68 = [traitCollection forceTouchCapability] == 1;

      if (v68)
      {
        point->var1 = -1.0;
      }
    }

    if (!previewCopy)
    {
      v69 = 1;
    }

    else if (os_variant_has_internal_diagnostics())
    {
      if (qword_1EC291570 != -1)
      {
        dispatch_once(&qword_1EC291570, &__block_literal_global_855);
      }

      v69 = !previewCopy | byte_1EC291561;
    }

    else
    {
      v69 = 0;
    }

    powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
    v71 = powerSavingController == 0;

    if (v71)
    {
      v72 = objc_alloc_init(PKDrawingPowerSavingController);
      [(PKTiledCanvasView *)self setPowerSavingController:v72];
    }

    powerSavingController2 = [(PKTiledCanvasView *)self powerSavingController];
    if (powerSavingController2)
    {
      powerSavingController2[104] = type == 1;
    }

    v74 = [newStroke ink];
    identifier = [v74 identifier];
    v76 = [identifier isEqual:@"com.apple.ink.marker"];
    if (v76)
    {
      v77 = 1;
    }

    else
    {
      v9 = [newStroke ink];
      p_canvasViewFlags = [v9 identifier];
      v77 = [p_canvasViewFlags isEqual:@"com.apple.ink.eraser"];
    }

    powerSavingController3 = [(PKTiledCanvasView *)self powerSavingController];
    if (powerSavingController3)
    {
      powerSavingController3[105] = v77;
    }

    if ((v76 & 1) == 0)
    {
    }

    powerSavingController4 = [(PKTiledCanvasView *)self powerSavingController];
    if (powerSavingController4)
    {
      *(powerSavingController4 + 72) = 0;
      *(powerSavingController4 + 32) = x;
      *(powerSavingController4 + 40) = y;
      *(powerSavingController4 + 48) = 0;
      *(powerSavingController4 + 56) = 0;
      *(powerSavingController4 + 16) = *(powerSavingController4 + 8);
    }

    [(PKTiledCanvasView *)self _postBeganSketchingAXAnnouncement];
    _rendererController4 = [(PKTiledCanvasView *)self _rendererController];
    v81 = *&point->var13;
    v126 = *&point->var11;
    v127 = v81;
    var15 = point->var15;
    v82 = *&point->var5;
    v122 = *&point->var3;
    v123 = v82;
    v83 = *&point->var9;
    v124 = *&point->var7;
    v125 = v83;
    v84 = *&point->var1;
    *location = point->var0;
    v121 = v84;
    [(PKMetalRendererController *)_rendererController4 addInputPoint:?];

    v85 = +[PKPencilDevice activePencil];
    [v85 baseRollAngle];
    v87 = v86;
    strokeGenerator2 = [(PKTiledCanvasView *)self strokeGenerator];
    v89 = strokeGenerator2;
    if (strokeGenerator2)
    {
      os_unfair_lock_lock(strokeGenerator2 + 80);
      *&v89[94]._os_unfair_lock_opaque = v87;
      os_unfair_lock_unlock(v89 + 80);
    }

    strokeGenerator3 = [(PKTiledCanvasView *)self strokeGenerator];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __129__PKTiledCanvasView__drawingBegan_inputPoint_locationInView_forPreview_disableDetachedRendering_activeInputProperties_inputType___block_invoke_3;
    v106[3] = &unk_1E82D73E8;
    v106[4] = self;
    v91 = newStroke;
    v107 = v91;
    v108 = v69 & 1;
    v109 = previewCopy;
    [strokeGenerator3 drawingBeganWithStroke:v91 inputType:type activeInputProperties:v102 inputScale:v106 start:v49];

    strokeGenerator4 = [(PKTiledCanvasView *)self strokeGenerator];
    v93 = *&point->var13;
    v126 = *&point->var11;
    v127 = v93;
    var15 = point->var15;
    v94 = *&point->var5;
    v122 = *&point->var3;
    v123 = v94;
    v95 = *&point->var9;
    v124 = *&point->var7;
    v125 = v95;
    v96 = *&point->var1;
    *location = point->var0;
    v121 = v96;
    [strokeGenerator4 addPoint:location];

    metalView4 = [(PKTiledCanvasView *)self metalView];
    [(PKMetalView *)metalView4 setDoubleBuffered:?];

    self->_numSkippedDoubleBufferedFrames = 0;
    rulerController = [(PKTiledCanvasView *)self rulerController];
    LODWORD(strokeGenerator4) = [(PKRulerController *)rulerController rulerSelected];

    if (strokeGenerator4)
    {
      rulerController2 = [(PKTiledCanvasView *)self rulerController];
      _touchView4 = [(PKTiledCanvasView *)self _touchView];
      [(PKRulerController *)rulerController2 drawingBegan:_touchView4 coordinateSystem:x, y];
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

- (void)_notifyEraserMoved:(id)moved location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  movedCopy = moved;
  if ((*&self->_canvasViewFlags & 0x4000) != 0)
  {
    selectionController = [(PKTiledCanvasView *)self selectionController];
    v8 = selectionController;
    if (selectionController)
    {
      WeakRetained = objc_loadWeakRetained((selectionController + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    liveAttachment = [WeakRetained liveAttachment];

    if (liveAttachment)
    {
      if (movedCopy)
      {
        _touchView = [(PKTiledCanvasView *)self _touchView];
        [movedCopy PK_preciseLocationInView:_touchView];
        v13 = v12;
        v15 = v14;

        [(PKTiledCanvasView *)self applyTransformToTouchLocation:v13, v15];
        x = v16;
        y = v17;
      }

      delegate = [(PKTiledCanvasView *)self delegate];
      [delegate _canvasView:self eraserMoved:liveAttachment attachment:{x, y}];
    }
  }
}

- (void)drawingMoved:(id)moved withEvent:(id)event
{
  v143 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v6 = [(PKTiledCanvasView *)self ink];
  _isEraserInk = [v6 _isEraserInk];

  v8 = _isEraserInk ^ 1;
  if (!movedCopy)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [(PKTiledCanvasView *)self _notifyEraserMoved:movedCopy location:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  if (self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserMoved:movedCopy];
    goto LABEL_74;
  }

  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  inputType = [strokeGenerator inputType];

  if (inputType == 1)
  {
    v11 = +[PKPencilDevice activePencil];
    [v11 tagAsUsed];
  }

  rulerController = [(PKTiledCanvasView *)self rulerController];
  rulerSelected = [(PKRulerController *)rulerController rulerSelected];

  v14 = rulerSelected ^ 1;
  if (!movedCopy)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    _touchView = [(PKTiledCanvasView *)self _touchView];
    [movedCopy PK_preciseLocationInView:_touchView];
    v17 = v16;
    v19 = v18;

    rulerController2 = [(PKTiledCanvasView *)self rulerController];
    _touchView2 = [(PKTiledCanvasView *)self _touchView];
    [(PKRulerController *)rulerController2 drawingMoved:_touchView2 coordinateSystem:v17, v19];
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
    obj = [eventCopy coalescedTouchesForTouch:movedCopy];
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
        estimationUpdateIndex = [v25 estimationUpdateIndex];
        if (estimationUpdateIndex)
        {
          v27 = ([v25 estimatedPropertiesExpectingUpdates] & 0x10) == 0;

          if (!v27)
          {
            _touchView3 = [(PKTiledCanvasView *)self _touchView];
            [v25 PK_preciseLocationInView:_touchView3];
            v30 = v29;
            v32 = v31;

            powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
            if (powerSavingController)
            {
              v34 = powerSavingController[6] + sqrt((powerSavingController[5] - v32) * (powerSavingController[5] - v32) + (powerSavingController[4] - v30) * (powerSavingController[4] - v30));
              powerSavingController[5] = v32;
              powerSavingController[6] = v34;
              powerSavingController[4] = v30;
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
            drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
            +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v25, 0, [drawingGestureRecognizer activeInputProperties], &v127, v36, v38);

            std::vector<PKInputPoint>::push_back[abi:ne200100](&self->_rollPointsToUpdate, &v127);
            shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
            if (shapeDrawingController)
            {
              v41 = shapeDrawingController[2] == shapeDrawingController[1];

              if (v41)
              {
                goto LABEL_29;
              }

              window = [(PKTiledCanvasView *)self window];
              [movedCopy locationInView:window];
              v44 = v43;
              v46 = v45;

              shapeDrawingController2 = [(PKTiledCanvasView *)self shapeDrawingController];
              v124 = v133;
              v125 = v134;
              v126 = v135;
              v120 = v129;
              v121 = v130;
              v122 = v131;
              v123 = v132;
              v118 = v127;
              v119 = v128;
              [(PKShapeDrawingController *)shapeDrawingController2 addStrokePoint:v44 inputPoint:v46];
            }

            else
            {
              shapeDrawingController2 = 0;
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

  [movedCopy timestamp];
  kdebug_trace();
  v49 = [eventCopy coalescedTouchesForTouch:movedCopy];
  v50 = [v49 count];

  if (self->_maxNumPredictionPoints && ![(PKTiledCanvasView *)self predictionDisabled])
  {
    v52 = [eventCopy predictedTouchesForTouch:movedCopy];
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
  obja = [eventCopy coalescedTouchesForTouch:movedCopy];
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
      _touchView4 = [(PKTiledCanvasView *)self _touchView];
      [(UITouch *)v59 PK_preciseLocationInView:_touchView4];
      v62 = v61;
      v64 = v63;

      powerSavingController2 = [(PKTiledCanvasView *)self powerSavingController];
      if (powerSavingController2)
      {
        v66 = powerSavingController2[6] + sqrt((powerSavingController2[5] - v64) * (powerSavingController2[5] - v64) + (powerSavingController2[4] - v62) * (powerSavingController2[4] - v62));
        powerSavingController2[5] = v64;
        powerSavingController2[6] = v66;
        powerSavingController2[4] = v62;
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
      drawingGestureRecognizer2 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v59, 0, [drawingGestureRecognizer2 activeInputProperties], &v127, v68, v70);

      std::vector<PKInputPoint>::push_back[abi:ne200100](&v115, &v127);
      [v55 addObject:v59];
      shapeDrawingController3 = [(PKTiledCanvasView *)self shapeDrawingController];
      if (shapeDrawingController3)
      {
        v73 = shapeDrawingController3[2] == shapeDrawingController3[1];

        if (v73)
        {
          goto LABEL_53;
        }

        window2 = [(PKTiledCanvasView *)self window];
        [movedCopy locationInView:window2];
        v76 = v75;
        v78 = v77;

        shapeDrawingController4 = [(PKTiledCanvasView *)self shapeDrawingController];
        v124 = v133;
        v125 = v134;
        v126 = v135;
        v120 = v129;
        v121 = v130;
        v122 = v131;
        v123 = v132;
        v118 = v127;
        v119 = v128;
        [(PKShapeDrawingController *)shapeDrawingController4 addStrokePoint:v76 inputPoint:v78];
      }

      else
      {
        shapeDrawingController4 = 0;
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
        _touchView5 = [(PKTiledCanvasView *)self _touchView];
        [v84 PK_preciseLocationInView:_touchView5];
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
        drawingGestureRecognizer3 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
        +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v84, 1, [drawingGestureRecognizer3 activeInputProperties], &v127, v91, v93);

        std::vector<PKInputPoint>::push_back[abi:ne200100](&v115, &v127);
        [v55 addObject:v84];
      }

      v81 = [obj countByEnumeratingWithState:&v107 objects:v140 count:16];
    }

    while (v81);
  }

  strokeGenerator2 = [(PKTiledCanvasView *)self strokeGenerator];
  __p = 0;
  v105 = 0;
  v106 = 0;
  std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, v115, v116, 0xF0F0F0F0F0F0F0F1 * ((v116 - v115) >> 3));
  [strokeGenerator2 addPoints:&__p];
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  if (v116 != v115)
  {
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    v132 = *(v116 - 56);
    v133 = *(v116 - 40);
    v134 = *(v116 - 24);
    v135 = *(v116 - 1);
    v128 = *(v116 - 120);
    v129 = *(v116 - 104);
    v130 = *(v116 - 88);
    v131 = *(v116 - 72);
    v127 = *(v116 - 136);
    [(PKMetalRendererController *)_rendererController addInputPoint:?];
  }

  if ((*&self->_canvasViewFlags & 0x100) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    [delegate canvasViewDrawingMoved:self withTouch:movedCopy];
  }

  [movedCopy timestamp];
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

- (void)drawingEstimatedPropertiesUpdated:(id)updated
{
  v70 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  kdebug_trace();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = updatedCopy;
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
          _touchView = [(PKTiledCanvasView *)self _touchView];
          [(UITouch *)v8 PK_preciseLocationInView:_touchView];
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
          drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
          +[PKInputPointUtility drawingInputPoint:view:touch:predicted:activeInputProperties:](self, v8, 0, [drawingGestureRecognizer activeInputProperties], &v56, v15, v17);

          if (qword_1EC291578 != -1)
          {
            dispatch_once(&qword_1EC291578, &__block_literal_global_860);
          }

          if (byte_1EC291562 == 1)
          {
            estimationUpdateIndex = [(UITouch *)v8 estimationUpdateIndex];
            if (estimationUpdateIndex)
            {
              v21 = ([(UITouch *)v8 estimatedProperties]& 0x10) == 0;

              if (v21)
              {
                estimationUpdateIndex2 = [(UITouch *)v8 estimationUpdateIndex];
                integerValue = [estimationUpdateIndex2 integerValue];

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
                    if (*(begin + v27 + 80) == integerValue)
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
                  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
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
                  [strokeGenerator addPoint:&v41];

                  if ((*&self->_canvasViewFlags & 0x100) != 0)
                  {
                    delegate = [(PKTiledCanvasView *)self delegate];
                    [delegate canvasViewDrawingMoved:self withTouch:v8];
                  }
                }
              }
            }

            goto LABEL_26;
          }

          strokeGenerator2 = [(PKTiledCanvasView *)self strokeGenerator];
          *&v46[16] = v62;
          v47 = v63;
          v48 = v64;
          v43 = v58;
          v44 = v59;
          v45 = v60;
          *v46 = v61;
          v41 = v56;
          v42 = v57;
          [strokeGenerator2 drawingUpdatePoint:&v41];
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

- (void)_handleEndOfStroke:(id)stroke shapeStrokes:(id)strokes groupedUndoCommands:(id)commands invalidateTiles:(BOOL)tiles
{
  strokeCopy = stroke;
  strokesCopy = strokes;
  commandsCopy = commands;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKTiledCanvasView__handleEndOfStroke_shapeStrokes_groupedUndoCommands_invalidateTiles___block_invoke;
  v16[3] = &unk_1E82D7410;
  objc_copyWeak(&v20, &location);
  tilesCopy = tiles;
  v17 = commandsCopy;
  v18 = strokeCopy;
  v19 = strokesCopy;
  v13 = strokesCopy;
  v14 = strokeCopy;
  v15 = commandsCopy;
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

- (void)drawingGestureRecognizer:(id)recognizer touchesEndedWithDrawingTouch:(id)touch
{
  v4 = [(PKTiledCanvasView *)self shapeDrawingController:recognizer];
  if (v4)
  {
    v4[67] = 0;
  }
}

- (void)_drawingEnded:(id)ended estimatesTimeout:(double)timeout completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  completionCopy = completion;
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  if (strokeGenerator)
  {
    v10 = strokeGenerator[43] - strokeGenerator[42];
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
    drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
    *buf = 138412290;
    v74 = drawingGestureRecognizer;
    _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Ended drawing: %@", buf, 0xCu);
  }

  powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
  if (powerSavingController)
  {
    powerSavingController[72] = 0;
  }

  shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
  v15 = shapeDrawingController;
  if (shapeDrawingController)
  {
    v16 = *(shapeDrawingController + 208);
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

  shapeDrawingController2 = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController2 resetStroke];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:v17 != 0];
  if (endedCopy && self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserEnded:endedCopy];
    [(PKTiledCanvasView *)self _callOptionalDrawingEndedCompletion:completionCopy withStroke:0 shapeStrokes:0];
    goto LABEL_63;
  }

  rulerController = [(PKTiledCanvasView *)self rulerController];
  rulerSelected = [(PKRulerController *)rulerController rulerSelected];

  if (rulerSelected)
  {
    rulerController2 = [(PKTiledCanvasView *)self rulerController];
    [(PKRulerController *)rulerController2 drawingEnded];
  }

  [(PKTiledCanvasView *)self setIsDrawing:0];
  if (endedCopy)
  {
    [endedCopy timestamp];
    kdebug_trace();
  }

  drawing = [(PKTiledCanvasView *)self drawing];
  strokeGenerator2 = [(PKTiledCanvasView *)self strokeGenerator];
  v61 = strokeGenerator2;
  if (!strokeGenerator2)
  {
    [(PKTiledCanvasView *)self _callOptionalDrawingEndedCompletion:completionCopy withStroke:0 shapeStrokes:0];
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
    aBlock[4] = strokeGenerator2;
    v50 = _Block_copy(aBlock);
    delegate = [(PKTiledCanvasView *)self delegate];
    v29 = [delegate canvasView:self shouldDiscardEndedStroke:v50 drawing:drawing];
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_class();
  drawingGestureRecognizer2 = [(PKTiledCanvasView *)self drawingGestureRecognizer];
  v32 = PKDynamicCast(v30, drawingGestureRecognizer2);

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
    window = [(PKTiledCanvasView *)self window];
    windowScene = [window windowScene];
    v49 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];

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
        delegate2 = [(PKTiledCanvasView *)self delegate];
        v29 = [delegate2 canvasView:self shouldDiscardTapStrokeAt:drawing drawing:{v56, v58}];

        goto LABEL_58;
      }
    }

    v29 = 0;
    goto LABEL_58;
  }

LABEL_59:
  if ((*(&self->_canvasViewFlags + 8) & 0x1000) != 0)
  {
    delegate3 = [(PKTiledCanvasView *)self delegate];
    v52 = [delegate3 canvasView:self drawingIsShared:drawing];
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
  v64 = endedCopy;
  selfCopy = self;
  v66 = v17;
  v70 = v52;
  v71 = v29;
  v54 = drawing;
  v67 = v54;
  v68 = completionCopy;
  [v61 drawingEndedEstimatesTimeout:v63 completion:timeout];
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

- (void)_callOptionalDrawingEndedCompletion:(id)completion withStroke:(id)stroke shapeStrokes:(id)strokes
{
  completionCopy = completion;
  strokeCopy = stroke;
  strokesCopy = strokes;
  if (completionCopy)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKTiledCanvasView__callOptionalDrawingEndedCompletion_withStroke_shapeStrokes___block_invoke;
    block[3] = &unk_1E82D7500;
    v14 = completionCopy;
    v12 = strokeCopy;
    v13 = strokesCopy;
    dispatch_async(v10, block);
  }
}

- (void)_endAlternativeStrokeIfNecessaryAccepted:(BOOL)accepted
{
  alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
  if (alternativeStrokesAnimation)
  {
    if (alternativeStrokesAnimation->_crossFadeStartTime == 0.0)
    {
      alternativeStrokesAnimation->_crossFadeStartTime = CACurrentMediaTime();
      alternativeStrokesAnimation->_accepted = accepted;
    }
  }
}

- (void)drawingCancelledForPreview:(BOOL)preview
{
  previewCopy = preview;
  v22 = *MEMORY[0x1E69E9840];
  if (!preview)
  {
    v5 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      drawingGestureRecognizer = [(PKTiledCanvasView *)self drawingGestureRecognizer];
      *buf = 138412290;
      v21 = drawingGestureRecognizer;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Cancelled drawing: %@", buf, 0xCu);
    }
  }

  shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController resetStroke];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
  if (self->_isErasingObjects)
  {
    [(PKTiledCanvasView *)self eraserCancelled];
  }

  else
  {
    [(PKTiledCanvasView *)self setIsDrawing:0 forPreview:previewCopy];
    rulerController = [(PKTiledCanvasView *)self rulerController];
    rulerSelected = [(PKRulerController *)rulerController rulerSelected];

    if (rulerSelected)
    {
      rulerController2 = [(PKTiledCanvasView *)self rulerController];
      [PKRulerController drawingCancelled:rulerController2];
    }

    powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
    if (powerSavingController)
    {
      powerSavingController[72] = 0;
    }

    if ([(PKTiledCanvasView *)self isHidden])
    {
      metalView = [(PKTiledCanvasView *)self metalView];
      [(PKMetalView *)metalView flushDrawables];

      [(PKTiledCanvasView *)self schedulePurgeResourcesBlock];
    }

    _drawingController = [(PKTiledCanvasView *)self _drawingController];
    [(PKController *)_drawingController cancelLiveStroke];

    drawing = [(PKTiledCanvasView *)self drawing];
    strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__PKTiledCanvasView_drawingCancelledForPreview___block_invoke;
    v17[3] = &unk_1E82D7528;
    v17[4] = self;
    v19 = previewCopy;
    v16 = drawing;
    v18 = v16;
    [strokeGenerator drawingCancelledWithCompletion:v17];

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

- (void)setViewScissor:(CGRect)scissor
{
  height = scissor.size.height;
  width = scissor.size.width;
  y = scissor.origin.y;
  x = scissor.origin.x;
  self->_viewScissor = scissor;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setViewScissor:y, width, height];
}

- (void)setPaperTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_paperTransform.a = *&transform->a;
  *&self->_paperTransform.c = v4;
  *&self->_paperTransform.tx = v3;
  v5 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v5;
  v7[2] = *&transform->tx;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setPaperTransform:v7];
}

- (void)setIsDrawing:(BOOL)drawing forPreview:(BOOL)preview
{
  if (self->_isDrawing == drawing)
  {
    return;
  }

  drawingCopy = drawing;
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  inputController = [(PKController *)_drawingController inputController];

  if ((*(&self->_canvasViewFlags + 8) & 0x400) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    v8 = [delegate canvasViewMaximumSupportedContentVersion:self];
  }

  else
  {
    v8 = 4;
  }

  v10 = [(PKTiledCanvasView *)self ink];
  [inputController setupForInk:v10 maximumSupportedContentVersion:v8];

  self->_isDrawing = drawingCopy;
  if (!preview)
  {
    if (drawingCopy)
    {
      if ((*&self->_canvasViewFlags & 0x80) == 0)
      {
LABEL_13:
        [(PKTiledCanvasView *)self updateHasVisibleStrokes];
        goto LABEL_14;
      }

      delegate2 = [(PKTiledCanvasView *)self delegate];
      [delegate2 canvasViewDidBeginDrawing:self];
    }

    else
    {
      if ((*&self->_canvasViewFlags & 0x400) != 0)
      {
        delegate3 = [(PKTiledCanvasView *)self delegate];
        [delegate3 canvasViewDidEndDrawing:self];
      }

      window = [(PKTiledCanvasView *)self window];
      delegate2 = [PKToolPicker activeToolPickerForWindow:window];

      [delegate2 _saveStateIfNecessary];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (CGPoint)applyTransformToTouchLocation:(CGPoint)location
{
  x = location.x;
  y = location.y;
  v4 = objc_opt_class();
  _touchView = [(PKTiledCanvasView *)self _touchView];
  v6 = PKDynamicCast(v4, _touchView);

  v7.f64[0] = x;
  v7.f64[1] = y;
  v13 = v7;
  if (v6)
  {
    memset(&v16, 0, sizeof(v16));
    tileContainerView = [v6 tileContainerView];
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v6, tileContainerView, &v16.a);

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

- (void)eraseStrokesForPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint
{
  y = prevPoint.y;
  x = prevPoint.x;
  v6 = point.y;
  v7 = point.x;
  v62 = *MEMORY[0x1E69E9840];
  selectionController = [(PKTiledCanvasView *)self selectionController];
  v10 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  liveAttachment = [WeakRetained liveAttachment];

  v52 = liveAttachment;
  recognitionController = [liveAttachment recognitionController];
  shouldCancelForAutoRefineCompletion = [recognitionController shouldCancelForAutoRefineCompletion];

  if ((shouldCancelForAutoRefineCompletion & 1) == 0)
  {
    if (!self->_strokesToErase)
    {
      array = [MEMORY[0x1E695DF70] array];
      strokesToErase = self->_strokesToErase;
      self->_strokesToErase = array;

      v17 = [MEMORY[0x1E695DFA8] set];
      strokeIDsToErase = self->_strokeIDsToErase;
      self->_strokeIDsToErase = v17;
    }

    kdebug_trace();
    strokeSpatialCache = [liveAttachment strokeSpatialCache];
    v20 = strokeSpatialCache;
    if (strokeSpatialCache && *(strokeSpatialCache + 8) == 1)
    {
      strokeSpatialCache2 = [liveAttachment strokeSpatialCache];
      v22 = strokeSpatialCache2;
      if (strokeSpatialCache2)
      {
        v23 = *(strokeSpatialCache2 + 24);
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
      strokeSpatialCache3 = [liveAttachment strokeSpatialCache];
      v42 = strokeSpatialCache3;
      if (strokeSpatialCache3)
      {
        v43 = *(strokeSpatialCache3 + 24);
      }

      else
      {
        v43 = 0;
      }

      v44 = v43;
      v45 = [v44 count];
      strokeSpatialCache4 = [liveAttachment strokeSpatialCache];
      v47 = strokeSpatialCache4;
      v48 = @"NO";
      if (strokeSpatialCache4 && *(strokeSpatialCache4 + 8))
      {
        v48 = @"YES";
      }

      *buf = 134218242;
      v59 = v45;
      v60 = 2112;
      v61 = v48;
      _os_log_debug_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEBUG, "Used cached %lu strokes: %@", buf, 0x16u);
    }

    drawing = [(PKTiledCanvasView *)self drawing];
    v51 = [drawing strokesIntersectedByPoint:v50 prevPoint:v7 onscreenVisibleStrokes:{v6, x, y}];

    kdebug_trace();
    if ([v51 count])
    {
      v49 = [(NSMutableArray *)self->_strokesToErase count];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      array2 = [v51 array];
      v27 = [PKStroke copyStrokes:array2 hidden:1];

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
            _strokeUUID = [v31 _strokeUUID];
            LOBYTE(v32) = [(NSMutableSet *)v32 containsObject:_strokeUUID];

            if ((v32 & 1) == 0)
            {
              [(NSMutableArray *)self->_strokesToErase addObject:v31];
              v34 = self->_strokeIDsToErase;
              _strokeUUID2 = [v31 _strokeUUID];
              [(NSMutableSet *)v34 addObject:_strokeUUID2];
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
        drawing2 = [(PKTiledCanvasView *)self drawing];
        [(PKSelectionController *)v36 _setAdditionalStrokes:v37 inDrawing:drawing2 completion:0];
      }

      if ((*&self->_canvasViewFlags & 0x2000) != 0)
      {
        delegate = [(PKTiledCanvasView *)self delegate];
        array3 = [v51 array];
        [delegate _canvasViewDidEraseStrokes:array3];
      }
    }
  }
}

- (void)eraseStrokes:(id)strokes
{
  v31 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v25 = strokesCopy;
  if (!self->_strokesToErase)
  {
    array = [MEMORY[0x1E695DF70] array];
    strokesToErase = self->_strokesToErase;
    self->_strokesToErase = array;

    v7 = [MEMORY[0x1E695DFA8] set];
    strokeIDsToErase = self->_strokeIDsToErase;
    self->_strokeIDsToErase = v7;

    strokesCopy = v25;
  }

  if ([strokesCopy count])
  {
    v24 = [(NSMutableArray *)self->_strokesToErase count];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    array2 = [v25 array];
    v10 = [PKStroke copyStrokes:array2 hidden:1];

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
          _strokeUUID = [v14 _strokeUUID];
          LOBYTE(v15) = [(NSMutableSet *)v15 containsObject:_strokeUUID];

          if ((v15 & 1) == 0)
          {
            [(NSMutableArray *)self->_strokesToErase addObject:v14];
            v17 = self->_strokeIDsToErase;
            _strokeUUID2 = [v14 _strokeUUID];
            [(NSMutableSet *)v17 addObject:_strokeUUID2];
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
      drawing = [(PKTiledCanvasView *)self drawing];
      [(PKSelectionController *)WeakRetained _setAdditionalStrokes:v20 inDrawing:drawing completion:0];
    }

    if ((*&self->_canvasViewFlags & 0x2000) != 0)
    {
      delegate = [(PKTiledCanvasView *)self delegate];
      array3 = [v25 array];
      [delegate _canvasViewDidEraseStrokes:array3];
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

- (void)_didFinishErasingStrokes:(BOOL)strokes
{
  v20[1] = *MEMORY[0x1E69E9840];
  strokesToErase = self->_strokesToErase;
  if (strokesToErase)
  {
    strokesCopy = strokes;
    if ([(NSMutableArray *)strokesToErase count])
    {
      if (strokesCopy)
      {
        drawing = [(PKTiledCanvasView *)self drawing];
        v7 = [drawing undoableDeleteStrokes:self->_strokesToErase];

        if (v7 && (*&self->_canvasViewFlags & 0x80000000) != 0)
        {
          delegate = [(PKTiledCanvasView *)self delegate];
          v20[0] = v7;
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
          [delegate canvasView:self registerUndoCommands:v9];
        }

        drawing2 = [(PKTiledCanvasView *)self drawing];
        [(PKTiledCanvasView *)self drawingChanged:drawing2];

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
      drawing3 = [(PKTiledCanvasView *)self drawing];
      [(PKSelectionController *)WeakRetained _setAdditionalStrokes:drawing3 inDrawing:0 completion:?];
    }
  }

  v14 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v14 _resetSelectedStrokeStateForRenderer];

  v15 = self->_strokesToErase;
  self->_strokesToErase = 0;

  strokeIDsToErase = self->_strokeIDsToErase;
  self->_strokeIDsToErase = 0;
}

- (BOOL)eraserBegan:(id)began
{
  beganCopy = began;
  self->_isErasingObjects = 0;
  v5 = [(PKTiledCanvasView *)self ink];
  identifier = [v5 identifier];
  v7 = [identifier isEqual:@"com.apple.ink.objectEraser"];

  if (v7)
  {
    self->_isErasingObjects = 1;
    canvasViewFlags = self->_canvasViewFlags;
    if ((canvasViewFlags & 2) != 0)
    {
      delegate = [(PKTiledCanvasView *)self delegate];
      [delegate canvasViewWillBeginNewStroke:self withTouch:beganCopy location:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

      canvasViewFlags = self->_canvasViewFlags;
    }

    if ((canvasViewFlags & 0x80) != 0)
    {
      delegate2 = [(PKTiledCanvasView *)self delegate];
      [delegate2 canvasViewDidBeginDrawing:self];
    }

    _touchView = [(PKTiledCanvasView *)self _touchView];
    [beganCopy PK_preciseLocationInView:_touchView];
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

- (void)eraserMoved:(id)moved
{
  movedCopy = moved;
  _touchView = [(PKTiledCanvasView *)self _touchView];
  [movedCopy PK_preciseLocationInView:_touchView];
  v6 = v5;
  v8 = v7;

  [(PKTiledCanvasView *)self applyTransformToTouchLocation:v6, v8];
  v10 = v9;
  v12 = v11;
  [(PKTiledCanvasView *)self _notifyEraserMoved:movedCopy location:?];
  [(PKTiledCanvasView *)self _oldEraseLocation];
  [(PKTiledCanvasView *)self eraseStrokesForPoint:v10 prevPoint:v12, v13, v14];
  [(PKTiledCanvasView *)self set_oldEraseLocation:v10, v12];
  if ((*&self->_canvasViewFlags & 0x100) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    [delegate canvasViewDrawingMoved:self withTouch:movedCopy];
  }
}

- (void)eraserEnded:(id)ended
{
  endedCopy = ended;
  v5 = os_log_create("com.apple.pencilkit", "Erase");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Eraser ended", v9, 2u);
  }

  self->_isErasingObjects = 0;
  [(PKTiledCanvasView *)self _didFinishErasingStrokes:1];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  -[PKStatisticsManager recordObjectEraseWithInputType:](v6, [endedCopy type]);

  if ((*&self->_canvasViewFlags & 0x400) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    [delegate canvasViewDidEndDrawing:self];
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
    delegate = [(PKTiledCanvasView *)self delegate];
    [delegate canvasView:self cancelledStroke:0];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((canvasViewFlags & 0x400) != 0)
  {
    delegate2 = [(PKTiledCanvasView *)self delegate];
    [delegate2 canvasViewDidEndDrawing:self];
  }
}

- (id)_strokeUUIDsForStrokes:(id)strokes
{
  v17 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = strokesCopy;
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

        _strokeUUID = [*(*(&v12 + 1) + 8 * i) _strokeUUID];
        [v4 addObject:_strokeUUID];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v4 copy];

  return v10;
}

- (void)liveStrokeParticlesToDestinationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  v10 = [renderedStrokes copy];

  if ([v10 count])
  {
    [(PKTiledCanvasView *)self animateStrokes:v10 destinationFrame:1 duration:x particles:y, width, height, 1.0];
  }
}

- (void)animateStrokes:(id)strokes destinationFrame:(CGRect)frame duration:(double)duration particles:(BOOL)particles
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  strokesCopy = strokes;
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
  v18 = [(PKTiledCanvasView *)self _strokeUUIDsForStrokes:strokesCopy];
  strokeUUIDsAboutToBeRemoved = [(PKTiledCanvasView *)self strokeUUIDsAboutToBeRemoved];
  [strokeUUIDsAboutToBeRemoved unionSet:v18];

  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __72__PKTiledCanvasView_animateStrokes_destinationFrame_duration_particles___block_invoke;
  v32 = &unk_1E82D6890;
  selfCopy = self;
  v21 = v18;
  v34 = v21;
  [(PKController *)_drawingController hideStrokesWithoutUpdating:strokesCopy completion:&v29];

  v22 = CACurrentMediaTime();
  [(PKTiledCanvasView *)self liveAnimationStartTime:v29];
  if (v23 == 0.0)
  {
    [(PKTiledCanvasView *)self setLiveAnimationStartTime:v22];
  }

  if (particles)
  {
    v24 = [[PKLiveStrokesParticlesAnimation alloc] initWithStrokes:strokesCopy startTime:v22 duration:duration destinationFrame:v14, v15, v16, v17];
    particlesToDestinationAnimations = [(PKTiledCanvasView *)self particlesToDestinationAnimations];
    [particlesToDestinationAnimations addObject:v24];

    [(PKTiledCanvasView *)self liveAnimationStartTime];
    v27 = v26;
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    [(PKMetalRendererController *)_rendererController liveStrokeParticlesToFrame:strokesCopy strokes:v14 startTime:v15 duration:v16, v17, v22 - v27, duration];
  }

  else
  {
    v24 = [[PKTransformStrokesAnimation alloc] initWithStrokes:strokesCopy startTime:v22 duration:duration destinationFrame:v14 fadeOutDuration:v15, v16, v17, duration * 0.95];
    _rendererController = [(PKTiledCanvasView *)self transformStrokesAnimations];
    [_rendererController addObject:v24];
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

- (void)setLiveAnimationStartTime:(double)time
{
  if (self->_liveAnimationStartTime != time)
  {
    self->_liveAnimationStartTime = time;
    [(PKTiledCanvasView *)self updateHasVisibleStrokes];
  }
}

- (void)checkAnimationsDidEndAtTime:(double)time
{
  [(PKTiledCanvasView *)self liveAnimationStartTime];
  if (v5 != 0.0)
  {
    v6 = 0x1E695D000uLL;
    array = [MEMORY[0x1E695DF70] array];
    if ([(NSMutableArray *)self->_fadeOutStrokeAnimations count])
    {
      indexSet = 0;
      v8 = [(NSMutableArray *)self->_fadeOutStrokeAnimations count];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [(NSMutableArray *)self->_fadeOutStrokeAnimations objectAtIndexedSubscript:i];
          if ([v10 isDoneAtTime:time])
          {
            stroke = [v10 stroke];
            [array addObject:stroke];

            if (!indexSet)
            {
              indexSet = [MEMORY[0x1E696AD50] indexSet];
            }

            [indexSet addIndex:i];
          }
        }

        if (indexSet)
        {
          [(NSMutableArray *)self->_fadeOutStrokeAnimations removeObjectsAtIndexes:indexSet];
        }
      }
    }

    if ([(NSMutableArray *)self->_particlesToDestinationAnimations count])
    {
      indexSet2 = 0;
      v13 = [(NSMutableArray *)self->_particlesToDestinationAnimations count];
      if (v13)
      {
        for (j = 0; j != v13; ++j)
        {
          v15 = [(NSMutableArray *)self->_particlesToDestinationAnimations objectAtIndexedSubscript:j];
          if ([v15 isDoneAtTime:time])
          {
            strokes = [v15 strokes];
            [array addObjectsFromArray:strokes];

            if (!indexSet2)
            {
              indexSet2 = [MEMORY[0x1E696AD50] indexSet];
            }

            [indexSet2 addIndex:j];
          }
        }

        if (indexSet2)
        {
          [(NSMutableArray *)self->_particlesToDestinationAnimations removeObjectsAtIndexes:indexSet2];
        }
      }
    }

    if ([(NSMutableArray *)self->_transformStrokesAnimations count])
    {
      v17 = [(NSMutableArray *)self->_transformStrokesAnimations count];
      if (v17)
      {
        v18 = 0;
        indexSet3 = 0;
        do
        {
          v20 = [(NSMutableArray *)self->_transformStrokesAnimations objectAtIndexedSubscript:v18];
          v21 = v20;
          if (v20 && *(v20 + 16) + *(v20 + 24) <= time)
          {
            v22 = *(v20 + 8);
            [array addObjectsFromArray:v22];

            if (!indexSet3)
            {
              indexSet3 = [MEMORY[0x1E696AD50] indexSet];
            }

            [indexSet3 addIndex:v18];
          }

          ++v18;
        }

        while (v17 != v18);
        if (indexSet3)
        {
          [(NSMutableArray *)self->_transformStrokesAnimations removeObjectsAtIndexes:indexSet3];
          v6 = 0x1E695D000;
        }

        else
        {
          v6 = 0x1E695D000uLL;
        }
      }

      else
      {
        indexSet3 = 0;
      }
    }

    alternativeStrokesAnimation = self->_alternativeStrokesAnimation;
    if (alternativeStrokesAnimation)
    {
      if (alternativeStrokesAnimation->_forceDone || (crossFadeStartTime = alternativeStrokesAnimation->_crossFadeStartTime, crossFadeStartTime > 0.0) && crossFadeStartTime + alternativeStrokesAnimation->_fadeDuration <= time)
      {
        self->_alternativeStrokesAnimation = 0;
      }
    }

    liveRenderingOverrideColorAnimation = self->_liveRenderingOverrideColorAnimation;
    if (liveRenderingOverrideColorAnimation && liveRenderingOverrideColorAnimation->_startTime + liveRenderingOverrideColorAnimation->_duration <= time)
    {
      self->_liveRenderingOverrideColorAnimation = 0;

      _rendererController = [(PKTiledCanvasView *)self _rendererController];
      [(PKMetalRendererController *)_rendererController setLiveRenderingOverrideColor:?];
    }

    if (![(NSMutableArray *)self->_fadeOutStrokeAnimations count]&& ![(NSMutableArray *)self->_particlesToDestinationAnimations count]&& ![(NSMutableArray *)self->_fadeOutStrokeAnimations count]&& !self->_alternativeStrokesAnimation && !self->_liveRenderingOverrideColorAnimation && ![(NSMutableArray *)self->_transformStrokesAnimations count])
    {
      [(PKTiledCanvasView *)self setLiveAnimationStartTime:0.0];
      delegate = [(PKTiledCanvasView *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        delegate2 = [(PKTiledCanvasView *)self delegate];
        [delegate2 canvasViewDidFinishAnimatingStrokes:self];
      }
    }

    if ([array count])
    {
      strokeRenderCachesToPurge = self->_strokeRenderCachesToPurge;
      if (!strokeRenderCachesToPurge)
      {
        v31 = [*(v6 + 3952) arrayWithCapacity:{objc_msgSend(array, "count")}];
        v32 = self->_strokeRenderCachesToPurge;
        self->_strokeRenderCachesToPurge = v31;

        strokeRenderCachesToPurge = self->_strokeRenderCachesToPurge;
      }

      [(NSMutableArray *)strokeRenderCachesToPurge addObjectsFromArray:array];
    }
  }
}

- (void)testHideOldestStroke
{
  v8[1] = *MEMORY[0x1E69E9840];
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  v5 = [renderedStrokes copy];

  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v8[0] = firstObject;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(PKTiledCanvasView *)self fadeOutAndHideStrokes:v7 duration:0.3];
  }
}

- (void)fadeOutAndHideStrokes:(id)strokes duration:(double)duration
{
  v28 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v7 = CACurrentMediaTime();
  [(PKTiledCanvasView *)self liveAnimationStartTime];
  if (v8 == 0.0)
  {
    [(PKTiledCanvasView *)self setLiveAnimationStartTime:v7];
  }

  v19 = [(PKTiledCanvasView *)self _strokeUUIDsForStrokes:strokesCopy];
  strokeUUIDsAboutToBeRemoved = [(PKTiledCanvasView *)self strokeUUIDsAboutToBeRemoved];
  [strokeUUIDsAboutToBeRemoved unionSet:v19];

  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__PKTiledCanvasView_fadeOutAndHideStrokes_duration___block_invoke;
  v25[3] = &unk_1E82D6890;
  v25[4] = self;
  v20 = v19;
  v26 = v20;
  [(PKController *)_drawingController hideStrokesWithoutUpdating:strokesCopy completion:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = strokesCopy;
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

        v15 = [[PKFadeOutStrokeAnimation alloc] initWithStroke:*(*(&v21 + 1) + 8 * i) startTime:v7 duration:duration];
        fadeOutStrokeAnimations = self->_fadeOutStrokeAnimations;
        if (!fadeOutStrokeAnimations)
        {
          array = [MEMORY[0x1E695DF70] array];
          v18 = self->_fadeOutStrokeAnimations;
          self->_fadeOutStrokeAnimations = array;

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
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  if ([renderedStrokes count])
  {
    drawing = [(PKTiledCanvasView *)self drawing];
    _isEmpty = [drawing _isEmpty];

    if (_isEmpty)
    {
      v6 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        _drawingController2 = [(PKTiledCanvasView *)self _drawingController];
        renderedStrokes2 = [(PKController *)_drawingController2 renderedStrokes];
        v12 = [PKDrawing _uuidDescriptionForStrokes:renderedStrokes2];
        *buf = 138412290;
        v15 = v12;
        _os_log_fault_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_FAULT, "Detected stuck strokes on canvas (<rdar://problem/50709761>): %@", buf, 0xCu);
      }

      _drawingController3 = [(PKTiledCanvasView *)self _drawingController];
      _drawingController4 = [(PKTiledCanvasView *)self _drawingController];
      renderedStrokes3 = [(PKController *)_drawingController4 renderedStrokes];
      [(PKController *)_drawingController3 hideStrokesWithoutUpdating:renderedStrokes3 completion:0];
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
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  if (_rendererController)
  {
    v5 = _rendererController[13];
    v4 = _rendererController[14];
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

- (void)setCanvasOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  self->_canvasOffset = offset;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setCanvasOffset:y];
}

- (id)shapeDrawingControllerRendererController:(id)controller
{
  _rendererController = [(PKTiledCanvasView *)self _rendererController];

  return _rendererController;
}

- (void)shapeDrawingControllerShapeGestureDetected:(id)detected isFastGesture:(BOOL)gesture
{
  if (!self->_combiningStrokesCount)
  {
    gestureCopy = gesture;
    [(PKTiledCanvasView *)self _finishCombiningStrokesIfNecessary];
    strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
    isSnappedToRuler = [strokeGenerator isSnappedToRuler];

    if (isSnappedToRuler)
    {
      v8 = 0;
    }

    else
    {
      shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
      [(PKTiledCanvasView *)self _inputScale];
      v11 = v10;
      shapeDrawingController2 = [(PKTiledCanvasView *)self shapeDrawingController];
      v13 = shapeDrawingController2;
      if (shapeDrawingController2)
      {
        [(PKAveragePointGenerator *)*(shapeDrawingController2 + 120) currentInputPoint];
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

      if (gestureCopy)
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
      v8 = [(PKShapeDrawingController *)shapeDrawingController detectedShapeWithInputScale:buf averageInputPoint:v14 allowedShapeTypes:v31 createCurrentStrokeBlock:v11];

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
          strokes = [v8 strokes];
          v19 = [(PKAlternativeStrokesAnimation *)&v17->super.isa initWithStrokes:strokes shape:v8 startTime:v15 fadeDuration:0.15];
          [(PKTiledCanvasView *)self setAlternativeStrokesAnimation:v19];
        }

        shapeDrawingController3 = [(PKTiledCanvasView *)self shapeDrawingController];
        [(PKShapeDrawingController *)shapeDrawingController3 setDetectedShape:v8];

        if (_os_feature_enabled_impl())
        {
          v21 = os_log_create("com.apple.pencilkit", "Feedback");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "[Canvas Feedback Event] shape recognized.", buf, 2u);
          }

          shapeDrawingController4 = [(PKTiledCanvasView *)self shapeDrawingController];
          v23 = shapeDrawingController4;
          if (shapeDrawingController4)
          {
            [(PKAveragePointGenerator *)*(shapeDrawingController4 + 120) currentInputPoint];
            v25 = *buf;
            v24 = *&buf[8];
          }

          else
          {
            v24 = 0.0;
            v25 = 0.0;
          }

          view = [(_UICanvasFeedbackGenerator *)self->_feedbackGenerator view];
          [(PKTiledCanvasView *)self convertPoint:view toView:v25, v24];
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

- (void)shapeDrawingControllerShapeDetectionCancelled:(id)cancelled
{
  shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
  [(PKShapeDrawingController *)shapeDrawingController setDetectedShape:?];

  [(PKTiledCanvasView *)self _endAlternativeStrokeIfNecessaryAccepted:0];
}

- (int64_t)shapeDrawingControllerMaximumSupportedContentVersion:(id)version
{
  if ((*(&self->_canvasViewFlags + 8) & 0x400) == 0)
  {
    return 4;
  }

  delegate = [(PKTiledCanvasView *)self delegate];
  v3 = [delegate canvasViewMaximumSupportedContentVersion:self];

  return v3;
}

- (void)setIsPDFCanvasForAnalytics:(BOOL)analytics
{
  self->_isPDFCanvasForAnalytics = analytics;
  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  [(PKMetalRendererController *)_rendererController setIsPDFCanvasForAnalytics:analytics];
}

- (void)strokeGeneratorDidSnapToRuler:(id)ruler
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

- (BOOL)shapeDrawingController:(id)controller scratchOutStrokesCoveredByStroke:(id)stroke
{
  v59 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  delegate = [(PKTiledCanvasView *)self delegate];
  drawing = [(PKTiledCanvasView *)self drawing];
  v8 = [delegate canvasView:self attachmentViewForDrawing:drawing];

  v45 = v8;
  drawing2 = [(PKTiledCanvasView *)self drawing];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

  if (v11)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    selectionController = [(PKTiledCanvasView *)self selectionController];
    v13 = selectionController;
    if (selectionController)
    {
      WeakRetained = objc_loadWeakRetained((selectionController + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    attachments = [WeakRetained attachments];

    v16 = [attachments countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v16)
    {
      v17 = *v55;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(attachments);
          }

          v19 = *(*(&v54 + 1) + 8 * i);
          if ([v19 isExternalAttachment])
          {
            drawing3 = [v19 drawing];
            [drawing3 bounds];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            [strokeCopy renderBounds];
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

              drawing4 = [v34 drawing];

              drawing2 = drawing4;
              goto LABEL_16;
            }
          }
        }

        v16 = [attachments countByEnumeratingWithState:&v54 objects:v58 count:16];
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

  v36 = [(PKScratchOutController *)self->_scratchOutController intersectedStrokesForStroke:strokeCopy attachment:v34 drawing:drawing2];
  if ([v36 count])
  {
    scratchOutController = self->_scratchOutController;
    allObjects = [v36 allObjects];
    v39 = [(PKScratchOutController *)scratchOutController intersectedStrokesFilteredByCoverageThresholdForStroke:strokeCopy intersectedStrokes:allObjects];

    v40 = [v39 count] != 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PKTiledCanvasView_shapeDrawingController_scratchOutStrokesCoveredByStroke___block_invoke;
    aBlock[3] = &unk_1E82D7578;
    objc_copyWeak(&v52, &location);
    v48 = v36;
    selfCopy = self;
    v41 = drawing2;
    v50 = v41;
    v51 = v45;
    v42 = _Block_copy(aBlock);
    if (v40)
    {
      delegate2 = [(PKTiledCanvasView *)self delegate];
      [delegate2 canvasView:self textStrokesCoveredByStroke:strokeCopy drawing:v41 completion:v42];
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
    _rendererController = [(PKTiledCanvasView *)self _rendererController];
    v4 = _rendererController;
    if (_rendererController)
    {
      v5 = _rendererController[45];
      v8 = _rendererController[44];
      v9 = v5;
      v10 = _rendererController[46];
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

- (void)_previewDrawingBegan:(id *)began tiledViewLocation:(CGPoint)location disableDetachedRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  y = location.y;
  x = location.x;
  [(PKTiledCanvasView *)self setIsPreviewing:1];
  v10 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Began preview drawing", v15, 2u);
  }

  v11 = *&began->var13;
  v15[6] = *&began->var11;
  v15[7] = v11;
  var15 = began->var15;
  v12 = *&began->var5;
  v15[2] = *&began->var3;
  v15[3] = v12;
  v13 = *&began->var9;
  v15[4] = *&began->var7;
  v15[5] = v13;
  v14 = *&began->var1;
  v15[0] = began->var0;
  v15[1] = v14;
  [(PKTiledCanvasView *)self _drawingBegan:0 inputPoint:v15 locationInView:1 forPreview:renderingCopy disableDetachedRendering:23 activeInputProperties:1 inputType:x, y];
}

- (void)_previewDrawingMoved:(id *)moved tiledViewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  rulerController = [(PKTiledCanvasView *)self rulerController];
  rulerSelected = [(PKRulerController *)rulerController rulerSelected];

  if (rulerSelected)
  {
    rulerController2 = [(PKTiledCanvasView *)self rulerController];
    _touchView = [(PKTiledCanvasView *)self _touchView];
    [(PKRulerController *)rulerController2 drawingMoved:_touchView coordinateSystem:x, y];
  }

  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  v13 = *&moved->var13;
  v28 = *&moved->var11;
  v29 = v13;
  var15 = moved->var15;
  v14 = *&moved->var5;
  v24 = *&moved->var3;
  v25 = v14;
  v15 = *&moved->var9;
  v26 = *&moved->var7;
  v27 = v15;
  v16 = *&moved->var1;
  var0 = moved->var0;
  v23 = v16;
  [strokeGenerator addPoint:&var0];

  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  v18 = *&moved->var13;
  v28 = *&moved->var11;
  v29 = v18;
  var15 = moved->var15;
  v19 = *&moved->var5;
  v24 = *&moved->var3;
  v25 = v19;
  v20 = *&moved->var9;
  v26 = *&moved->var7;
  v27 = v20;
  v21 = *&moved->var1;
  var0 = moved->var0;
  v23 = v21;
  [(PKMetalRendererController *)_rendererController addInputPoint:?];
}

- (void)_previewDrawingEnded
{
  [(PKTiledCanvasView *)self setIsPreviewing:0];
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  [strokeGenerator setIsPreviewing:0];

  v4 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Ended preview drawing", v5, 2u);
  }

  [(PKTiledCanvasView *)self drawingCancelledForPreview:1];
}

- (void)_replayDrawingBegan:(id *)began
{
  v4 = [(PKTiledCanvasView *)self _touchView:*&began->var0.var0.x];
  [(PKTiledCanvasView *)self _replayDrawingBegan:&v5 coordinateSpace:v4 activeInputProperties:23 inputType:1];
}

- (void)_replayDrawingBegan:(id *)began coordinateSpace:(id)space activeInputProperties:(unint64_t)properties inputType:(int64_t)type
{
  spaceCopy = space;
  began->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
  self->_replayInputType = type;
  if (spaceCopy)
  {
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(spaceCopy, self, &var0.var0.x);
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
  _touchView = [(PKTiledCanvasView *)self _touchView];
  [_touchView convertPoint:spaceCopy fromCoordinateSpace:{began->var0.var0.x, began->var0.var0.y}];
  v17 = v16;
  v19 = v18;

  v20 = *&began->var13;
  v30 = *&began->var11;
  v31 = v20;
  var15 = began->var15;
  v21 = *&began->var5;
  v26 = *&began->var3;
  v27 = v21;
  v22 = *&began->var9;
  v28 = *&began->var7;
  v29 = v22;
  v23 = *&began->var1;
  var0 = began->var0;
  v25 = v23;
  [(PKTiledCanvasView *)self _drawingBegan:0 inputPoint:&var0 locationInView:0 forPreview:0 disableDetachedRendering:properties activeInputProperties:type inputType:v17, v19];
}

- (void)_replayDrawingMoved:(id *)moved
{
  v4 = [(PKTiledCanvasView *)self _touchView:*&moved->var0.var0.x];
  [(PKTiledCanvasView *)self _replayDrawingMoved:&v5 coordinateSpace:v4];
}

- (void)_replayDrawingMoved:(id *)moved coordinateSpace:(id)space
{
  spaceCopy = space;
  moved->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  inputType = [strokeGenerator inputType];

  if (inputType == 1)
  {
    v9 = +[PKPencilDevice activePencil];
    [v9 tagAsUsed];
  }

  strokeGenerator2 = [(PKTiledCanvasView *)self strokeGenerator];
  v11 = *&moved->var13;
  v61 = *&moved->var11;
  v62 = v11;
  var15 = moved->var15;
  v12 = *&moved->var5;
  v57 = *&moved->var3;
  v58 = v12;
  v13 = *&moved->var9;
  v59 = *&moved->var7;
  v60 = v13;
  v14 = *&moved->var1;
  var0 = moved->var0;
  v56 = v14;
  [strokeGenerator2 addPoint:&var0];

  _rendererController = [(PKTiledCanvasView *)self _rendererController];
  v16 = *&moved->var13;
  v61 = *&moved->var11;
  v62 = v16;
  var15 = moved->var15;
  v17 = *&moved->var5;
  v57 = *&moved->var3;
  v58 = v17;
  v18 = *&moved->var9;
  v59 = *&moved->var7;
  v60 = v18;
  v19 = *&moved->var1;
  var0 = moved->var0;
  v56 = v19;
  [(PKMetalRendererController *)_rendererController addInputPoint:?];

  if ((*&self->_canvasViewFlags & 0x200) != 0)
  {
    delegate = [(PKTiledCanvasView *)self delegate];
    v21 = *&moved->var13;
    v61 = *&moved->var11;
    v62 = v21;
    var15 = moved->var15;
    v22 = *&moved->var5;
    v57 = *&moved->var3;
    v58 = v22;
    v23 = *&moved->var9;
    v59 = *&moved->var7;
    v60 = v23;
    v24 = *&moved->var1;
    var0 = moved->var0;
    v56 = v24;
    [delegate replayCanvasViewDrawingMoved:self inputPoint:&var0 inputType:self->_replayInputType];
  }

  if (!moved->var8)
  {
    shapeDrawingController = [(PKTiledCanvasView *)self shapeDrawingController];
    if (shapeDrawingController)
    {
      v27 = shapeDrawingController[1];
      v26 = shapeDrawingController[2];

      if (v26 == v27)
      {
        goto LABEL_10;
      }

      x = moved->var0.var0.x;
      y = moved->var0.var0.y;
      window = [(PKTiledCanvasView *)self window];
      [spaceCopy convertPoint:window toCoordinateSpace:{x, y}];
      v32 = v31;
      v34 = v33;

      shapeDrawingController2 = [(PKTiledCanvasView *)self shapeDrawingController];
      v36 = *&moved->var13;
      v61 = *&moved->var11;
      v62 = v36;
      var15 = moved->var15;
      v37 = *&moved->var5;
      v57 = *&moved->var3;
      v58 = v37;
      v38 = *&moved->var9;
      v59 = *&moved->var7;
      v60 = v38;
      v39 = *&moved->var1;
      var0 = moved->var0;
      v56 = v39;
      [(PKShapeDrawingController *)shapeDrawingController2 addStrokePoint:v32 inputPoint:v34];
    }

    else
    {
      shapeDrawingController2 = 0;
    }
  }

LABEL_10:
  if (!moved->var8)
  {
    v40 = [(PKTiledCanvasView *)self ink];
    _isEraserInk = [v40 _isEraserInk];

    if (_isEraserInk)
    {
      [(PKTiledCanvasView *)self _notifyEraserMoved:0 location:moved->var0.var0.x, moved->var0.var0.y];
    }

    v42 = moved->var0.var0.x;
    v43 = moved->var0.var0.y;
    _touchView = [(PKTiledCanvasView *)self _touchView];
    [spaceCopy convertPoint:_touchView toCoordinateSpace:{v42, v43}];
    v46 = v45;
    v48 = v47;

    rulerController = [(PKTiledCanvasView *)self rulerController];
    rulerSelected = [(PKRulerController *)rulerController rulerSelected];

    if (rulerSelected)
    {
      rulerController2 = [(PKTiledCanvasView *)self rulerController];
      _touchView2 = [(PKTiledCanvasView *)self _touchView];
      [(PKRulerController *)rulerController2 drawingMoved:_touchView2 coordinateSystem:v46, v48];
    }

    powerSavingController = [(PKTiledCanvasView *)self powerSavingController];
    if (powerSavingController)
    {
      v54 = powerSavingController[6] + sqrt((powerSavingController[5] - v48) * (powerSavingController[5] - v48) + (powerSavingController[4] - v46) * (powerSavingController[4] - v46));
      powerSavingController[5] = v48;
      powerSavingController[6] = v54;
      powerSavingController[4] = v46;
    }
  }
}

- (void)_replayDrawingEndedEstimatesTimeout:(double)timeout withBackgroundQueueCompletion:(id)completion
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v4 = *(MEMORY[0x1E695EFD0] + 32);
  *&self->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
  *&self->__replayCoordinateSystemTransform.c = v5;
  *&self->__replayCoordinateSystemTransform.tx = v4;
  [(PKTiledCanvasView *)self _drawingEnded:0 estimatesTimeout:completion completion:timeout];
}

- (void)_replayDrawingCancelled
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v3 = *(MEMORY[0x1E695EFD0] + 32);
  *&self->__replayCoordinateSystemTransform.a = *MEMORY[0x1E695EFD0];
  *&self->__replayCoordinateSystemTransform.c = v4;
  *&self->__replayCoordinateSystemTransform.tx = v3;
  _drawingController = [(PKTiledCanvasView *)self _drawingController];
  renderedStrokes = [(PKController *)_drawingController renderedStrokes];
  [(PKTiledCanvasView *)self fadeOutAndHideStrokes:renderedStrokes duration:0.0];

  [(PKTiledCanvasView *)self cancelPurgeResourcesBlock];

  [(PKTiledCanvasView *)self drawingCancelled];
}

- (void)_replayEstimatedPropertiesUpdated:(id *)updated
{
  strokeGenerator = [(PKTiledCanvasView *)self strokeGenerator];
  v5 = *&updated->var13;
  v9[6] = *&updated->var11;
  v9[7] = v5;
  var15 = updated->var15;
  v6 = *&updated->var5;
  v9[2] = *&updated->var3;
  v9[3] = v6;
  v7 = *&updated->var9;
  v9[4] = *&updated->var7;
  v9[5] = v7;
  v8 = *&updated->var1;
  v9[0] = updated->var0;
  v9[1] = v8;
  [strokeGenerator drawingUpdatePoint:v9];
}

- (CAMetalLayer)metalLayer
{
  metalView = [(PKTiledCanvasView *)self metalView];
  metalLayer = [(PKMetalView *)metalView metalLayer];

  return metalLayer;
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