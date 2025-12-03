@interface PKTiledView
+ (BOOL)showDebugOutlines;
+ (id)newInlineDrawingOfClass:(Class)class;
- ($FF38E1E694A259ECA75E65D4243A6BF6)convertInputPoint:(SEL)point toAttachment:(id *)attachment;
- (BOOL)_isScrollViewSizeAnimating;
- (BOOL)_isValidDropPointForStrokes:(CGPoint)strokes didInsertNewAttachment:(BOOL *)attachment;
- (BOOL)_isZoomingOrResizing;
- (BOOL)_scrollViewIsScrollingOrZoomingOrResizing;
- (BOOL)_sixChannelBlendingIsActive;
- (BOOL)_snapshottingDisabled;
- (BOOL)_toolPickerIsOrWillBeVisible;
- (BOOL)_transparentBlendingIsActive;
- (BOOL)_updateHeightOfAttachmentIfNecessary:(id)necessary;
- (BOOL)allowsFingerDrawing;
- (BOOL)canvasView:(id)view drawingIsShared:(id)shared;
- (BOOL)canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch;
- (BOOL)canvasView:(id)view shouldDiscardEndedStroke:(id)stroke drawing:(id)drawing;
- (BOOL)canvasView:(id)view shouldDiscardTapStrokeAt:(CGPoint)at drawing:(id)drawing;
- (BOOL)canvasViewShouldCombineStrokes:(id)strokes;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hitSelectionAt:(CGPoint)at;
- (BOOL)hoverController:(id)controller shouldBeActiveAt:(CGPoint)at;
- (BOOL)insertSpaceEnabled;
- (BOOL)invertColors;
- (BOOL)isAutoRefineEnabled;
- (BOOL)isDrawing;
- (BOOL)isExtendedDynamicRangeRenderingActive;
- (BOOL)isGenerationModelAvailable;
- (BOOL)isInNotesTextView;
- (BOOL)needToUpdateViewFrame;
- (BOOL)p_shouldSkipStrokeCacheInvalidationForAttachment:(id)attachment;
- (BOOL)rulerHostWantsSharedRuler;
- (BOOL)selectionSupportsSnapToShape;
- (BOOL)selectionSupportsTranslate;
- (BOOL)shouldStartToolPreviewWhenHovering;
- (BOOL)tileIsVisibleForOffset:(CGPoint)offset inAttachment:(id)attachment distanceToMiddle:(double *)middle;
- (BOOL)toolShadowShouldBeActive;
- (CGAffineTransform)canvasView:(SEL)view transformForStroke:(id)stroke;
- (CGAffineTransform)contentCoordinateSpaceTransform;
- (CGAffineTransform)strokeTransform;
- (CGAffineTransform)transformFromStrokeSpaceToViewInAttachment:(SEL)attachment;
- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)drawing;
- (CGPoint)paletteViewHoverLocation:(id)location;
- (CGPoint)pointInStrokeSpace:(CGPoint)space inDrawing:(id)drawing;
- (CGRect)attachmentBoundsForDrawing:(id)drawing;
- (CGRect)boundsForDrawing:(id)drawing;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGRect)newViewFrame;
- (CGRect)visibleOnscreenBoundsForDrawing:(id)drawing;
- (CGRect)visibleOnscreenBoundsForDrawing:(id)drawing slack:(CGSize)slack;
- (PKAutoRefineTaskCoordinator)externalAutoRefineTaskCoordinator;
- (PKController)drawingController;
- (PKInk)ink;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (PKStrokeSelectionImage)selectionImage;
- (PKTileController)tileController;
- (PKTiledViewDelegate)delegate;
- (UIImage)paperTexture;
- (UIScrollView)scrollView;
- (UIView)attachmentContainerView;
- (UIView)contentSnapshottingView;
- (UIView)selectionView;
- (double)_latestLatency;
- (double)_layerContentsScale;
- (double)canvasZoomScale;
- (double)inputScale;
- (double)rulerWidth;
- (double)timestampForLatestUserInteraction;
- (id)_accessibilityUserTestingChildren;
- (id)_activeToolPicker;
- (id)_adornmentViewsToHitTest;
- (id)_attachmentForUUID:(id)d;
- (id)_createPKStrokesFromCHDrawing:(id)drawing inputScale:(double)scale sourceStroke:(id)stroke ink:(id)ink;
- (id)_createPKStrokesFromCHDrawing:(id)drawing transform:(CGAffineTransform *)transform inputScale:(double)scale sourceStroke:(id)stroke;
- (id)_hitAttachment:(CGPoint)attachment includeStandinAttachment:(BOOL)standinAttachment expandBottomAttachment:(BOOL)bottomAttachment;
- (id)_recentStrokesForAutoRefine;
- (id)_tilesForAttachment:(id)attachment bounds:(CGRect)bounds invert:(BOOL)invert;
- (id)_visibleAttachments;
- (id)_visibleTilesForAttachment:(id)attachment;
- (id)attachmentForHoverPreviewAt:(id *)at;
- (id)attachmentForUUID:(id)d;
- (id)attachmentViews;
- (id)attachments;
- (id)canvasView:(id)view attachmentViewForDrawing:(id)drawing;
- (id)canvasViewContentCoordinateSpace:(id)space;
- (id)canvasViewTouchView:(id)view;
- (id)currentDrawingBeingCopiedToCanvas;
- (id)didChangeDrawing:(id)drawing undoable:(BOOL)undoable;
- (id)drawingGestureRecognizer;
- (id)drawingUndoTarget;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)generateTile:(CGPoint)tile inAttachment:(id)attachment rendering:(BOOL)rendering offscreen:(BOOL)offscreen overrideAdditionalStrokes:(id)strokes;
- (id)hitAttachment:(CGPoint)attachment includeStandinAttachment:(BOOL)standinAttachment expandBottomAttachment:(BOOL)bottomAttachment;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hoverGestureRecognizer;
- (id)initInScrollView:(id)view;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only;
- (id)paletteViewHoverView:(id)view;
- (id)rulerHostingView;
- (id)rulerView;
- (id)selectedStrokeIdsForAttachment:(id)attachment;
- (id)smoothedHullForStroke:(id)stroke;
- (id)tileForOffset:(CGPoint)offset inAttachment:(id)attachment offscreen:(BOOL)offscreen tileZoomScale:(double)scale;
- (id)topZAttachment;
- (id)undoManager;
- (id)visibleAttachments;
- (id)visibleOnScreenStrokesForDrawing:(id)drawing;
- (int64_t)_activeSixChannelBlendingMode;
- (int64_t)_totalVisibleStrokes;
- (int64_t)effectiveMaximumSupportedContentVersion;
- (uint64_t)isSystemSnapshotting;
- (vector<AttachmentTileInfo,)getVisibleTiles:(PKTiledView *)self;
- (void)_addAttachmentsUnderView:(id)view toArray:(id)array;
- (void)_beginAnalyticsSessionIfNecessary;
- (void)_cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:(BOOL)caches;
- (void)_cancelHideCanvasIfNecessary;
- (void)_canvasView:(id)view didFinishRenderingNewStrokes:(id)strokes inDrawing:(id)drawing forPreview:(BOOL)preview;
- (void)_canvasViewDidEraseStrokes:(id)strokes;
- (void)_canvasViewWillBeginDrawing:(id)drawing startPoint:(id *)point forPreview:(BOOL)preview;
- (void)_canvasViewWillCreateSnapshot;
- (void)_cleanupTilesWithStaleTransform;
- (void)_clearSelectionIfNecessary;
- (void)_copyAll:(id)all;
- (void)_copyFromCanvas:(id)canvas intoAttachment:(id)attachment hideCanvas:(BOOL)hideCanvas strokes:(id)strokes;
- (void)_createHoverControllerIfNecessary;
- (void)_didAddDrawingAttachmentView;
- (void)_didEndInteractiveResize;
- (void)_disableScrollViewPanGestureIfNecessary;
- (void)_dismissInsertSpaceHandlesIfNecessary;
- (void)_endAnalyticsSessionsIfNecessary;
- (void)_endHoverToolPreview;
- (void)_findSelectionTranscriptionWithCompletion:(id)completion;
- (void)_finishCombiningStrokesIfNecessaryForAttachment:(id)attachment;
- (void)_flushCaches;
- (void)_getAllHandwritingTranscription:(id)transcription;
- (void)_handleDrawingDidChangeForAttachment:(id)attachment didChangeVisibleStrokes:(BOOL)strokes;
- (void)_handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification;
- (void)_handleSingleTapAtLocation:(CGPoint)location forAttachment:(id)attachment;
- (void)_hideCanvas;
- (void)_keepPencilShadowVisible;
- (void)_layoutSubviewsUpdateTilesForRendering:(BOOL)rendering;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_pauseHoverPreviewForTimeInterval:(double)interval;
- (void)_reenableScrollViewPanGestureIfNecessary;
- (void)_resetDrawingState;
- (void)_resetSelectedStrokeStateForRenderer;
- (void)_sceneDidActivate:(id)activate;
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
- (void)_scrollViewDidScroll;
- (void)_selectionRefreshWithChangeToDrawings:(id)drawings overrideAdditionalStrokes:(id)strokes completion:(id)completion;
- (void)_setAdditionalStrokes:(id)strokes inDrawing:(id)drawing invalidateTiles:(BOOL)tiles forceOffscreen:(BOOL)offscreen completion:(id)completion;
- (void)_setDrawingEnabled:(BOOL)enabled;
- (void)_setExternalAttachments:(id)attachments;
- (void)_setHasSeenAnyExtendedDynamicRangeInks;
- (void)_setupPencilShadowViewIfNecessary;
- (void)_showEditMenuFromLocation:(CGPoint)location forAttachment:(id)attachment;
- (void)_straightenStrokes:(id)strokes drawing:(id)drawing completionBlock:(id)block;
- (void)_transientlyUpdateHeightOfAttachment:(id)attachment delta:(double)delta;
- (void)_trimRecentStrokes;
- (void)_updateAttachmentHeightIfNecessaryForDrawing:(id)drawing;
- (void)_updateAttachmentOnscreenBounds;
- (void)_updateDrawingGestureEnablement;
- (void)_updateDrawingGestureEnablementWithInk:(id)ink;
- (void)_updateForToolPickerVisibilityChange:(id)change;
- (void)_updatePencilShadowView:(id *)view;
- (void)_updateSymbolPreviewViewForTouch:(id *)touch attachment:(id)attachment alpha:(double)alpha;
- (void)_updateToolPreviewIndicatorInputPoint:(id *)point;
- (void)_updateWantsExtendedDynamicRangeContent;
- (void)_willBeginInteractiveResize;
- (void)blitOldTilesIntoNewTiles:(id)tiles completion:(id)completion;
- (void)cancelTileGenerationInvalidateTiles:(BOOL)tiles;
- (void)canvasView:(id)view beganStroke:(id)stroke;
- (void)canvasView:(id)view cancelledStroke:(id)stroke;
- (void)canvasView:(id)view drawingDidChange:(id)change;
- (void)canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes;
- (void)canvasView:(id)view registerMultiStepUndoCommands:(id)commands;
- (void)canvasView:(id)view registerUndoCommands:(id)commands;
- (void)canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing;
- (void)canvasView:(id)view textStrokesCoveredByStroke:(id)stroke drawing:(id)drawing completion:(id)completion;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)canvasViewDrawingMoved:(id)moved withTouch:(id)touch;
- (void)canvasViewInvalidateTiles:(id)tiles;
- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location;
- (void)changeStrokesUsingTransformations:(id)transformations strokeGroups:(id)groups drawing:(id)drawing originalStrokes:(id)strokes;
- (void)commitSelectionIfNecessaryWithCompletion:(id)completion;
- (void)convertToShapeAtLocation:(CGPoint)location;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)endLiveResize;
- (void)getAttachment:(id)attachment strokeTransform:(CGAffineTransform *)transform paperTransform:(CGAffineTransform *)paperTransform;
- (void)getAttachment:(id)attachment strokeTransform:(CGAffineTransform *)transform paperTransform:(CGAffineTransform *)paperTransform scrollViewContentOffset:(CGPoint)offset;
- (void)hoverController:(id)controller didBegin:(id *)begin;
- (void)hoverController:(id)controller didUpdate:(id *)update;
- (void)hoverController:(id)controller holdGestureMeanTouch:(id *)touch latestTouch:(id *)latestTouch;
- (void)hoverController:(id)controller intentionalHoverWithDuration:(double)duration;
- (void)hoverControllerDidEnd:(id)end;
- (void)hoverControllerHoldGestureEnded:(id)ended;
- (void)insertCanvasView:(id)view intoScrollView:(id)scrollView;
- (void)insertSpace:(id)space;
- (void)insertSpaceAtLocation:(CGPoint)location;
- (void)layoutSubviews;
- (void)newCanvasView;
- (void)paletteViewPencilDidTap:(id)tap;
- (void)performUndo:(id)undo;
- (void)purgeNonVisibleTiles;
- (void)refine:(id)refine strokes:(id)strokes drawing:(id)drawing;
- (void)registerUndoCommand:(id)command;
- (void)registerUndoCommands:(id)commands;
- (void)registerUndoCommands:(id)commands andChangeToDrawing:(id)drawing;
- (void)renderAttachment:(id)attachment intoCanvas:(id)canvas showing:(BOOL)showing;
- (void)replaceInkTexture:(id)texture image:(CGImage *)image;
- (void)replayCanvasViewDrawingMoved:(id)moved inputPoint:(id *)point inputType:(int64_t)type;
- (void)resizeTiles:(id)tiles completion:(id)completion;
- (void)resumeWorkAfterDrawing;
- (void)selectionDidChange;
- (void)selectionSupportsRefinement:(id)refinement;
- (void)setCanvasViewZOrderPolicy:(int64_t)policy;
- (void)setCurrentDrawingBeingCopiedToCanvas:(id *)canvas;
- (void)setCurrentPreviewDrawingUUID:(uint64_t)d;
- (void)setDefaultDrawingClass:(Class)class;
- (void)setDelegate:(id)delegate;
- (void)setDisableTileRendering:(BOOL)rendering;
- (void)setDrawBitmapEraserMask:(BOOL)mask;
- (void)setDrawingPolicy:(unint64_t)policy;
- (void)setInk:(id)ink;
- (void)setInsertSpaceEnabled:(BOOL)enabled;
- (void)setIsAutoRefineEnabled:(BOOL)enabled;
- (void)setLinedPaper:(id)paper;
- (void)setLiveAttachment:(uint64_t)attachment;
- (void)setPaperTexture:(id)texture;
- (void)setRulerEnabled:(BOOL)enabled;
- (void)setRulerHostingDelegate:(id)delegate;
- (void)setSelectedStrokeIds:(id)ids selectionType:(int64_t)type forAttachment:(id)attachment;
- (void)setSelectedStrokesColor:(id)color;
- (void)setSelectionHidden:(BOOL)hidden;
- (void)setSixChannelBlending:(BOOL)blending;
- (void)setSixChannelBlendingDisableSnapshotting:(BOOL)snapshotting;
- (void)setSixChannelBlendingRendersTransparent:(BOOL)transparent;
- (void)setWantsExtendedDynamicRangeContent:(BOOL)content;
- (void)setupGestures;
- (void)setupRefineAnimationFrom:(id)from to:(id)to inDrawing:(id)drawing alternateContainerView:(id)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler;
- (void)setupRefineAnimationFrom:(id)from to:(id)to inDrawing:(id)drawing completionHandler:(id)handler;
- (void)setupStrokeInAnimationTo:(id)to inDrawing:(id)drawing alternateContainerView:(id)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler;
- (void)setupStrokeInAnimationTo:(id)to inDrawing:(id)drawing completionHandler:(id)handler;
- (void)showImageWandTipWithController:(id)controller toolPicker:(id)picker;
- (void)snapToShapeSelection;
- (void)startLiveResize;
- (void)startRefineAnimationWithDuration:(double)duration;
- (void)startToolPreviewIfPossibleForInputPoint:(id *)point;
- (void)startedDrawingInBlankSpaceWithTouch:(id)touch location:(CGPoint)location;
- (void)stopRefineAnimation;
- (void)straighten:(id)straighten strokes:(id)strokes drawing:(id)drawing;
- (void)straightenStrokes:(id)strokes drawing:(id)drawing completionBlockWithStrokeTransformInfo:(id)info;
- (void)swapOffscreenCallback:(id)callback;
- (void)traitCollectionDidChange:(id)change;
- (void)transformingSelectionBegan;
- (void)transformingSelectionCancelled;
- (void)transformingSelectionChanged:(CGAffineTransform *)changed;
- (void)transformingSelectionEnded;
- (void)updateAfterTraitCollectionChange;
- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(id)necessary;
- (void)updateExistingTiles:(BOOL)tiles;
- (void)updateForAllowedDrawingInput;
- (void)updateTilesForVisibleRect;
- (void)updateTilesForVisibleRectForceIfZooming:(BOOL)zooming;
- (void)updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:(id)strokes withCallback:(id)callback;
- (void)updateTilesForVisibleRectRendering:(BOOL)rendering offscreen:(BOOL)offscreen overrideAdditionalStrokes:(id)strokes;
- (void)updateTilesForVisibleRectRendering:(uint64_t)rendering offscreen:(char)offscreen overrideAdditionalStrokes:;
@end

@implementation PKTiledView

+ (BOOL)showDebugOutlines
{
  if (qword_1EC291540 != -1)
  {
    dispatch_once(&qword_1EC291540, &__block_literal_global_362);
  }

  return _MergedGlobals_289;
}

void __32__PKTiledView_showDebugOutlines__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  _MergedGlobals_289 = [v0 BOOLForKey:@"PKDebugViews"];
}

- (id)attachments
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->_tiledViewFlags & 4) != 0)
  {
    delegate = [(PKTiledView *)self delegate];
    tiledViewAttachmentViews = [delegate tiledViewAttachmentViews];

    v11 = [tiledViewAttachmentViews copy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    attachmentContainerView = [(PKTiledView *)self attachmentContainerView];
    [(PKTiledView *)self _addAttachmentsUnderView:attachmentContainerView toArray:array];

    timestampForLatestUserInteraction = self->_timestampForLatestUserInteraction;
    if (timestampForLatestUserInteraction != 0.0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = *&timestampForLatestUserInteraction;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            if ([v10 isExternalAttachment])
            {
              [array addObject:v10];
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }

    v11 = [array copy];
  }

  return v11;
}

- (UIView)attachmentContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  return WeakRetained;
}

- (double)canvasZoomScale
{
  contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];

  if (contentCoordinateSpace)
  {
    [(PKTiledView *)self contentCoordinateSpaceTransform];
    return sqrt(v10 * v10 + v9 * v9);
  }

  else
  {
    scrollView = [(PKTiledView *)self scrollView];

    if (scrollView)
    {
      scrollView2 = [(PKTiledView *)self scrollView];
      [scrollView2 zoomScale];
      v4 = v7;
    }

    else
    {
      return 1.0;
    }
  }

  return v4;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentContainerView);

  return WeakRetained;
}

- (BOOL)_sixChannelBlendingIsActive
{
  sixChannelBlending = [(PKTiledView *)self sixChannelBlending];
  if (sixChannelBlending)
  {
    LOBYTE(sixChannelBlending) = ![(PKTiledView *)self invertColors];
  }

  return sixChannelBlending;
}

- (id)rulerHostingView
{
  rulerHostingDelegate = [(PKTiledView *)self rulerHostingDelegate];
  if (!rulerHostingDelegate || (v4 = rulerHostingDelegate, -[PKTiledView rulerHostingDelegate](self, "rulerHostingDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0) || (-[PKTiledView rulerHostingDelegate](self, "rulerHostingDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rulerHostingView], selfCopy = objc_claimAutoreleasedReturnValue(), v7, !selfCopy))
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)invertColors
{
  traitCollection = [(PKTiledView *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (int64_t)_activeSixChannelBlendingMode
{
  if (![(PKTiledView *)self _sixChannelBlendingIsActive])
  {
    return 0;
  }

  if (!self->_isDoingLayoutAfterLiveWindowResizing)
  {
    return 1;
  }

  if (self->_shouldHideCanvasAfterScroll)
  {
    return 3;
  }

  return 2;
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tileSize);

  return WeakRetained;
}

- (void)newCanvasView
{
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v22 = [[PKTiledCanvasView alloc] initWithFrame:0 usePrivateResourceHandler:0 singleComponent:[(PKTiledView *)self _sixChannelBlendingIsActive] sixChannelBlending:v4, v6, fmax(v8, 1.0), fmax(v10, 1.0)];
  [(PKTiledCanvasView *)v22 setWantsExtendedDynamicRangeContent:[(PKTiledView *)self isExtendedDynamicRangeRenderingActive]];
  [(PKTiledCanvasView *)v22 setSixChannelBlendingMode:[(PKTiledView *)self _activeSixChannelBlendingMode]];
  v11 = objc_alloc_init([(PKTiledView *)self defaultDrawingClass]);
  [(PKTiledCanvasView *)v22 setDrawing:v11];

  [(PKTiledCanvasView *)v22 setSelectionController:self->_tileController];
  [(PKTiledCanvasView *)v22 setRulerController:self->_hoverController];
  [(PKTiledCanvasView *)v22 setHidden:1];
  if (qword_1EC291548 != -1)
  {
    dispatch_once(&qword_1EC291548, &__block_literal_global_1432);
  }

  v12 = qword_1EC291550;
  v13 = qword_1EC291550;
  if (v12)
  {
    scrollView2 = [(PKTiledView *)self scrollView];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(PKTiledCanvasView *)v22 setIsPDFCanvasForAnalytics:1];
    }
  }

  if ([(PKTiledView *)self showDebugOutlines])
  {
    layer = [(PKTiledCanvasView *)v22 layer];
    [layer setBorderWidth:2.0];

    purpleColor = [MEMORY[0x1E69DC888] purpleColor];
    cGColor = [purpleColor CGColor];
    layer2 = [(PKTiledCanvasView *)v22 layer];
    [layer2 setBorderColor:cGColor];
  }

  [(PKTiledView *)self setDrawingUndoTarget:self];
  [(PKTiledView *)self setDrawingUndoSelector:sel_performUndo_];
  [(PKTiledCanvasView *)v22 setDelegate:self];
  [(PKTiledCanvasView *)v22 setUserInteractionEnabled:0];
  [(PKTiledView *)self setCanvasView:v22];
  [(PKTiledView *)self setupGestures];
  scrollView3 = [(PKTiledView *)self scrollView];
  [(PKTiledView *)self insertCanvasView:v22 intoScrollView:scrollView3];
}

- (BOOL)isExtendedDynamicRangeRenderingActive
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.disableHDRMetalRenderer"];

  if ((v4 & 1) != 0 || (![(PKTiledView *)self _sixChannelBlendingIsActive]? (LOBYTE(v5) = 0) : (v5 = ![(PKTiledView *)self sixChannelBlendingDisableSnapshotting]), !self->_isDoingInteractiveResize))
  {
    v6 = 0;
  }

  else
  {
    v6 = BYTE1(self->_previouslySelectedDrawingUUID) | v5;
  }

  return v6 & 1;
}

- (void)updateForAllowedDrawingInput
{
  v35 = *MEMORY[0x1E69E9840];
  allowsFingerDrawing = [(PKTiledView *)self allowsFingerDrawing];
  if (!PKIsVisionDevice())
  {
    goto LABEL_5;
  }

  if (qword_1EC291558 != -1)
  {
    dispatch_once(&qword_1EC291558, &__block_literal_global_1439);
  }

  if (byte_1EC291539)
  {
LABEL_5:
    if (allowsFingerDrawing)
    {
      v4 = &unk_1F47C18E0;
    }

    else
    {
      v4 = &unk_1F47C18F8;
    }

    drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
    [drawingGestureRecognizer setAllowedTouchTypes:v4];

    scrollView = [(PKTiledView *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    panGestureRecognizer3 = panGestureRecognizer;
    if (allowsFingerDrawing)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [panGestureRecognizer setMinimumNumberOfTouches:v9];
    goto LABEL_12;
  }

  [(PKTiledView *)self _updateRemoteEffect];
  if (![(PKTiledView *)self _isVirtualDevice])
  {
    drawingGestureRecognizer2 = [(PKTiledView *)self drawingGestureRecognizer];
    [drawingGestureRecognizer2 setAllowedTouchTypes:&unk_1F47C18B0];

    scrollView2 = [(PKTiledView *)self scrollView];
    panGestureRecognizer2 = [scrollView2 panGestureRecognizer];
    [panGestureRecognizer2 setMinimumNumberOfTouches:1];

    scrollView = [(PKTiledView *)self scrollView];
    panGestureRecognizer3 = [scrollView panGestureRecognizer];
    [panGestureRecognizer3 setAllowedTouchTypes:&unk_1F47C18C8];
LABEL_12:
  }

  drawingGestureRecognizer3 = [(PKTiledView *)self drawingGestureRecognizer];
  allowedTouchTypes = [drawingGestureRecognizer3 allowedTouchTypes];
  generationToolGestureRecognizer = [(PKTiledView *)self generationToolGestureRecognizer];
  [generationToolGestureRecognizer setAllowedTouchTypes:allowedTouchTypes];

  drawingGestureRecognizer4 = [(PKTiledView *)self drawingGestureRecognizer];
  allowedTouchTypes2 = [drawingGestureRecognizer4 allowedTouchTypes];
  simultaneousDrawingGestureRecognizer = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
  [simultaneousDrawingGestureRecognizer setAllowedTouchTypes:allowedTouchTypes2];

  selectionController = [(PKTiledView *)self selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
  v18 = [(PKTiledView *)self ink];
  [selectionInteraction _updateAllowedTouchTypesForSelectedInk:v18];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v20 = [attachmentViews countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v20)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(attachmentViews);
        }

        [*(*(&v28 + 1) + 8 * i) fingerDrawingEnabledDidChange];
      }

      v20 = [attachmentViews countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    allowsFingerDrawing2 = [(PKTiledView *)self allowsFingerDrawing];
    *buf = 67109120;
    v33 = allowsFingerDrawing2;
    _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_INFO, "Update allows finger drawing: %{BOOL}d", buf, 8u);
  }
}

- (BOOL)allowsFingerDrawing
{
  delegate = self->_delegate;
  if (delegate == 2)
  {
    return 0;
  }

  if (delegate == 1)
  {
    return 1;
  }

  if (delegate || ([MEMORY[0x1E69DCD58] prefersPencilOnlyDrawing] & 1) != 0)
  {
    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PKTiledView_allowsFingerDrawing__block_invoke;
  aBlock[3] = &unk_1E82D69E8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  window = [(PKTiledView *)self window];
  if ([PKToolPicker isActiveToolPickerVisibleForWindow:window])
  {
    v4 = 1;
  }

  else
  {
    v4 = v5[2](v5);
  }

  return v4;
}

- (void)setupGestures
{
  v3 = objc_alloc_init(PKLongPressGestureRecognizer);
  simultaneousDrawingGestureRecognizer = self->_simultaneousDrawingGestureRecognizer;
  self->_simultaneousDrawingGestureRecognizer = v3;

  v5 = objc_alloc_init(PKDrawingGestureRecognizer);
  generationToolGestureRecognizer = self->_generationToolGestureRecognizer;
  self->_generationToolGestureRecognizer = v5;

  [(UIPanGestureRecognizer *)self->_generationToolGestureRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_generationToolGestureRecognizer setName:@"com.apple.PencilKit.simultaneous"];
  [(UIPanGestureRecognizer *)self->_generationToolGestureRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_simultaneousDrawingGestureRecognizer setDelegate:self];
  v7 = objc_alloc_init(PKDrawingGestureRecognizer);
  drawingUndoTarget = self->_drawingUndoTarget;
  self->_drawingUndoTarget = v7;

  [self->_drawingUndoTarget setName:@"com.apple.PencilKit.generationTool"];
  [self->_drawingUndoTarget setThresholdDistance:5.0];
  if (_os_feature_enabled_impl() && !PKIsDeviceLocked())
  {
    if (([MEMORY[0x1E696AAE8] mainBundle], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"com.apple.mobilenotes"), v10, v9, v11) && !PKIsQuickNoteOnPhone() || PKIsInternalTestApp())
    {
      [(PKAttachmentView *)self->_liveAttachment addGestureRecognizer:self->_drawingUndoTarget];
    }
  }

  v12 = self->_liveAttachment;
  canvasView = [(PKTiledView *)self canvasView];
  drawingGestureRecognizer = [canvasView drawingGestureRecognizer];
  [(PKAttachmentView *)v12 addGestureRecognizer:drawingGestureRecognizer];

  v15 = self->_simultaneousDrawingGestureRecognizer;
  canvasView2 = [(PKTiledView *)self canvasView];
  [canvasView2 setAllowSimultaneousGR:v15];

  [(PKAttachmentView *)self->_liveAttachment addGestureRecognizer:self->_generationToolGestureRecognizer];
  liveAttachment = self->_liveAttachment;
  v18 = self->_simultaneousDrawingGestureRecognizer;

  [(PKAttachmentView *)liveAttachment addGestureRecognizer:v18];
}

uint64_t __34__PKTiledView_allowsFingerDrawing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  v2 = [v1 windowScene];
  v3 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v2];
  v4 = [v3 _paletteViewVisible];

  return v4;
}

- (id)drawingGestureRecognizer
{
  canvasView = [(PKTiledView *)self canvasView];
  drawingGestureRecognizer = [canvasView drawingGestureRecognizer];

  return drawingGestureRecognizer;
}

- (PKInk)ink
{
  canvasView = [(PKTiledView *)self canvasView];
  v3 = [canvasView ink];

  return v3;
}

- (id)attachmentViews
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(PKTiledView *)self attachments];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = PKDynamicCast(v9, v8);
        if (v10)
        {
          [array addObject:{v10, v13}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [array copy];

  return v11;
}

- (UIImage)paperTexture
{
  canvasView = [(PKTiledView *)self canvasView];
  paperTexture = [canvasView paperTexture];

  return paperTexture;
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = PKTiledView;
  [(PKTiledView *)&v11 didMoveToWindow];
  [(PKTiledView *)self updateForAllowedDrawingInput];
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x1E69DE338] object:windowScene];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x1E69DE358] object:windowScene];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_startLiveResize name:*MEMORY[0x1E69DEB20] object:windowScene];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_endLiveResize name:*MEMORY[0x1E69DEB28] object:windowScene];

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_2);
  }

  else
  {
    [(PKTiledView *)self _endAnalyticsSessionsIfNecessary];
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 removeObserver:self name:*MEMORY[0x1E69DE358] object:0];
  }
}

- (void)updateTilesForVisibleRect
{
  if (![(PKTiledView *)self _isZoomingOrResizing])
  {

    [(PKTiledView *)self updateTilesForVisibleRectRendering:1 offscreen:0 overrideAdditionalStrokes:0];
  }
}

- (BOOL)_isZoomingOrResizing
{
  scrollView = [(PKTiledView *)self scrollView];
  if (([scrollView isZooming] & 1) != 0 || self && self->_disableTileRendering)
  {
    symbolPreviewActive = 1;
  }

  else
  {
    isSystemSnapshotting = [(PKTiledView *)self isSystemSnapshotting];
    symbolPreviewActive = isSystemSnapshotting;
    if (self)
    {
      v7 = isSystemSnapshotting;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      symbolPreviewActive = self->_symbolPreviewActive;
    }
  }

  return symbolPreviewActive;
}

- (uint64_t)isSystemSnapshotting
{
  if (!self)
  {
    return 0;
  }

  window = [self window];
  windowScene = [window windowScene];
  _isPerformingSystemSnapshot = [windowScene _isPerformingSystemSnapshot];

  return _isPerformingSystemSnapshot;
}

- (BOOL)_scrollViewIsScrollingOrZoomingOrResizing
{
  if ([(PKTiledView *)self _isZoomingOrResizing])
  {
    return 1;
  }

  scrollView = [(PKTiledView *)self scrollView];
  if ([scrollView isDragging])
  {
    isZoomAnimating = 1;
  }

  else
  {
    scrollView2 = [(PKTiledView *)self scrollView];
    if ([scrollView2 isDecelerating])
    {
      isZoomAnimating = 1;
    }

    else
    {
      scrollView3 = [(PKTiledView *)self scrollView];
      if ([scrollView3 isScrollAnimating])
      {
        isZoomAnimating = 1;
      }

      else
      {
        scrollView4 = [(PKTiledView *)self scrollView];
        isZoomAnimating = [scrollView4 isZoomAnimating];
      }
    }
  }

  return isZoomAnimating;
}

- (BOOL)needToUpdateViewFrame
{
  if (!self)
  {
    return 1;
  }

  if (self->_tileScale == 0.0)
  {
    return 1;
  }

  [(PKTiledView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PKTiledView *)self newViewFrame];
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v14;
  v17.size.height = v15;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  return !CGRectEqualToRect(v16, v17);
}

- (CGRect)newViewFrame
{
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  v7 = v6;

  scrollView2 = [(PKTiledView *)self scrollView];
  [scrollView2 bounds];
  v10 = v9;
  scrollView3 = [(PKTiledView *)self scrollView];
  [scrollView3 bounds];
  v13 = v12;

  v14 = v5;
  v15 = v7;
  v16 = v10;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_endHoverToolPreview
{
  if (self)
  {
    if (*(&self->_editMenuVisible + 2))
    {
      canvasView = [(PKTiledView *)self canvasView];
      [canvasView _previewDrawingEnded];
    }

    if (self->_toolPreviewView)
    {
      if ([(PKDrawing *)self->_erasePreviewDrawing count])
      {
        [(PKTiledView *)self _setAdditionalStrokes:MEMORY[0x1E695E0F0] inDrawing:self->_toolPreviewView invalidateTiles:1];
        objc_setProperty_nonatomic_copy(self, v4, 0, 864);
      }

      objc_storeStrong(&self->_toolPreviewView, 0);
    }

    objc_storeStrong(&self->_pencilStatisticsManager, 0);
    *(&self->_editMenuVisible + 2) = 0;
    *(&self->_editMenuVisible + 1) = 0;
    *(&self->_editMenuVisible + 3) = 0;
    [(NSOrderedSet *)self->_eraseOrLassoPreviewStrokes removeFromSuperview];
    objc_storeStrong(&self->_eraseOrLassoPreviewStrokes, 0);
    objc_setProperty_nonatomic_copy(self, v5, 0, 864);
  }

  else
  {
    [0 removeFromSuperview];
  }

  [(NSUUID *)self->_currentPreviewDrawingUUID removeFromSuperview];
  currentPreviewDrawingUUID = self->_currentPreviewDrawingUUID;
  self->_currentPreviewDrawingUUID = 0;
}

- (BOOL)isDrawing
{
  canvasView = [(PKTiledView *)self canvasView];
  isDrawing = [canvasView isDrawing];

  return isDrawing;
}

- (void)_dismissInsertSpaceHandlesIfNecessary
{
  tileController = self->_tileController;
  if (tileController)
  {
    if ([(NSMutableArray *)tileController[2]._tasks isCurrentlyAddingSpace])
    {
      v4 = self->_tileController;
      if (v4)
      {
        [(NSMutableArray *)v4[2]._tasks didMoveStrokes];
        v5 = self->_tileController;
        if (v5)
        {
          tasks = v5[2]._tasks;

          [(NSMutableArray *)tasks commitSpacingResize];
        }
      }
    }
  }
}

- (double)_layerContentsScale
{
  canvasView = [(PKTiledView *)self canvasView];
  if (canvasView)
  {
    canvasView2 = [(PKTiledView *)self canvasView];
    [canvasView2 layerContentsScale];
    v6 = v5;
  }

  else
  {
    +[PKMetalUtility layerContentsScale];
    v6 = v7;
  }

  return v6;
}

- (void)_hideCanvas
{
  v27 = *MEMORY[0x1E69E9840];
  canvasView = [(PKTiledView *)self canvasView];
  [canvasView _finishCombiningStrokesIfNecessary];

  WeakRetained = objc_loadWeakRetained(&self->_lastZoomScale);
  if (WeakRetained)
  {
    v5 = os_log_create("com.apple.pencilkit", "Rendering");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18[0]) = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "currentDrawingBeingCopiedToCanvas is not nil when it should be", v18, 2u);
    }

    [(PKTiledView *)&self->super.super.super.isa setCurrentDrawingBeingCopiedToCanvas:?];
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v7 = [attachmentViews countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(attachmentViews);
        }

        [*(*(&v22 + 1) + 8 * v9++) setContentHidden:0];
      }

      while (v7 != v9);
      v7 = [attachmentViews countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  canvasView2 = [(PKTiledView *)self canvasView];
  isHidden = [canvasView2 isHidden];

  canvasView3 = [(PKTiledView *)self canvasView];
  [canvasView3 setHidden:1];

  [(PKTiledView *)&self->super.super.super.isa setCurrentDrawingBeingCopiedToCanvas:?];
  if ((isHidden & 1) == 0 && (*&self->_tiledViewFlags & 0x20) != 0)
  {
    delegate = [(PKTiledView *)self delegate];
    [delegate canvasView:self didChangeHiddenState:1];
  }

  if ([(PKTiledView *)self canvasViewZOrderPolicy]== 2)
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v19 = *MEMORY[0x1E695EFD0];
    v20 = v14;
    v21 = *(MEMORY[0x1E695EFD0] + 32);
    canvasView4 = [(PKTiledView *)self canvasView];
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    [canvasView4 setTransform:v18];

    canvasView5 = [(PKTiledView *)self canvasView];
    scrollView = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self insertCanvasView:canvasView5 intoScrollView:scrollView];
  }

  [MEMORY[0x1E6979518] commit];
  [(PKTiledView *)self resumeWorkAfterDrawing];
}

- (void)_scrollViewDidScroll
{
  if (!self->_hideCanvasBlock)
  {
    [(PKTiledView *)self _updateAttachmentOnscreenBounds];
  }

  [(PKTiledView *)self purgeNonVisibleTiles];
  if (self->_aggd_didMergeWithCollaborator)
  {
    [(PKTiledView *)self _hideCanvas];
  }

  v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  [v4 logScrollEventWithContentOffset:?];
}

- (void)purgeNonVisibleTiles
{
  v72 = *MEMORY[0x1E69E9840];
  if ((!self || !self->_hoverPreviewActive) && ![(PKTiledView *)self _isZoomingOrResizing])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v4 = v3;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [(PKTiledView *)self attachmentViews];
    v5 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (!v5)
    {
      goto LABEL_50;
    }

    v55 = *v66;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v65 + 1) + 8 * i);
        viewRep = [v7 viewRep];
        isHidden = [viewRep isHidden];

        if (!isHidden)
        {
          [(PKTiledView *)self bounds];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v33 = [bundleIdentifier isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

          if (v33)
          {
            goto LABEL_29;
          }

          mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier2 = [mainBundle2 bundleIdentifier];
          if ([bundleIdentifier2 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
          {

            goto LABEL_29;
          }

          mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier3 = [mainBundle3 bundleIdentifier];
          v38 = [bundleIdentifier3 isEqualToString:@"com.apple.quicklook.UIExtension"];

          if ((v38 & 1) != 0 || PKIsQuickNoteOnPhone())
          {
LABEL_29:
            if (PKIsPhoneDevice() || _os_feature_enabled_impl())
            {
              v39 = 0.25;
              goto LABEL_33;
            }
          }

          v39 = 1.0;
LABEL_33:
          v40 = -(v28 * v39);
          v41 = -(v30 * v39);
          v73.origin.x = v24;
          v73.origin.y = v26;
          v73.size.width = v28;
          v73.size.height = v30;
          v74 = CGRectInset(v73, v40, v41);
          v42 = [(PKTiledView *)self _tilesForAttachment:v7 bounds:1 invert:v74.origin.x, v74.origin.y, v74.size.width, v74.size.height];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          allValues = v42;
          v43 = [allValues countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (!v43)
          {
            goto LABEL_47;
          }

          v44 = *v58;
          while (2)
          {
            v45 = 0;
LABEL_36:
            if (*v58 != v44)
            {
              objc_enumerationMutation(allValues);
            }

            v46 = *(*(&v57 + 1) + 8 * v45);
            if (v46)
            {
              if ((*(v46 + 86) & 1) == 0)
              {
                *&v47 = COERCE_DOUBLE(atomic_load((v46 + 24)));
                v48 = *&v47;
LABEL_41:
                if (v4 - v48 >= 0.1)
                {
                  [(PKRendererTile *)*(*(&v57 + 1) + 8 * v45) purgeTileLayers];
                  purgedTiles = [v7 purgedTiles];
                  properties = [(PKRendererTile *)v46 properties];
                  [purgedTiles setObject:v46 forKeyedSubscript:properties];

                  tiles = [v7 tiles];
                  properties2 = [(PKRendererTile *)v46 properties];
                  [tiles removeObjectForKey:properties2];
                }
              }

              if (v43 == ++v45)
              {
                v53 = [allValues countByEnumeratingWithState:&v57 objects:v69 count:16];
                v43 = v53;
                if (!v53)
                {
LABEL_47:

                  goto LABEL_48;
                }

                continue;
              }

              goto LABEL_36;
            }

            break;
          }

          v48 = 0.0;
          goto LABEL_41;
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        tiles2 = [v7 tiles];
        allValues = [tiles2 allValues];

        v12 = [allValues countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v12)
        {
          v13 = *v62;
          do
          {
            v14 = 0;
            do
            {
              if (*v62 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              v15 = *(*(&v61 + 1) + 8 * v14);
              if (v15)
              {
                *&v16 = COERCE_DOUBLE(atomic_load((v15 + 24)));
                v17 = *&v16;
              }

              else
              {
                v17 = 0.0;
              }

              if (v4 - v17 >= 0.1)
              {
                [(PKRendererTile *)*(*(&v61 + 1) + 8 * v14) purgeTileLayers];
                purgedTiles2 = [v7 purgedTiles];
                properties3 = [(PKRendererTile *)v15 properties];
                [purgedTiles2 setObject:v15 forKeyedSubscript:properties3];

                tiles3 = [v7 tiles];
                properties4 = [(PKRendererTile *)v15 properties];
                [tiles3 removeObjectForKey:properties4];
              }

              ++v14;
            }

            while (v12 != v14);
            v22 = [allValues countByEnumeratingWithState:&v61 objects:v70 count:16];
            v12 = v22;
          }

          while (v22);
        }

LABEL_48:
      }

      v5 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (!v5)
      {
LABEL_50:

        return;
      }
    }
  }
}

- (void)resumeWorkAfterDrawing
{
  [(PKTileController *)self->_drawingTouchThatHitNothing resumePreviews];
  defaultDrawingClass = self->_defaultDrawingClass;

  [(objc_class *)defaultDrawingClass didEndDrawing];
}

- (id)visibleAttachments
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(PKTiledView *)self _visibleAttachments];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = PKDynamicCast(v9, v8);
        if (v10)
        {
          [array addObject:{v10, v12}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)_visibleAttachments
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(PKTiledView *)self attachments];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        viewRep = [v8 viewRep];
        isHidden = [viewRep isHidden];

        if ((isHidden & 1) == 0)
        {
          [array addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return array;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKTiledView;
  [(PKTiledView *)&v9 layoutSubviews];
  if ([(PKTiledView *)self needToUpdateViewFrame])
  {
    [(PKTiledView *)self _layoutSubviews];
  }

  [(PKSelectionController *)&self->_tileController->super.isa _layoutViewsIfNecessary];
  if (([(PKTiledView *)self isSystemSnapshotting]& 1) != 0)
  {
    self->_disableUndoManager = 1;
  }

  else
  {
    invertColors = [(PKTiledView *)self invertColors];
    drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
    if (drawingTouchThatHitNothing)
    {
      LOBYTE(drawingTouchThatHitNothing[1].super.isa) = invertColors;
      [(PKMetalRendererController *)drawingTouchThatHitNothing[3].super.isa setInvertColors:invertColors];
    }

    _activeSixChannelBlendingMode = [(PKTiledView *)self _activeSixChannelBlendingMode];
    canvasView = [(PKTiledView *)self canvasView];
    [canvasView setSixChannelBlendingMode:_activeSixChannelBlendingMode];

    drawBitmapEraserMask = [(PKTiledView *)self drawBitmapEraserMask];
    canvasView2 = [(PKTiledView *)self canvasView];
    [canvasView2 setDrawBitmapEraserMask:drawBitmapEraserMask];
  }
}

- (id)initInScrollView:(id)view
{
  viewCopy = view;
  v5 = [(PKTiledView *)self initInScrollView:viewCopy defaultDrawingClass:objc_opt_class()];

  return v5;
}

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only
{
  blendingCopy = blending;
  viewCopy = view;
  [viewCopy bounds];
  v54.receiver = self;
  v54.super_class = PKTiledView;
  v11 = [(PKTiledView *)&v54 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    v13 = +[PKGenerationModelAvailabilityController sharedInstance];
    [v13 queryGenerationModelAvailabilityStatus];

    *(v11 + 77) = 4;
    *(v11 + 448) = !blendingCopy;
    if (blendingCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKTiledView_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly___block_invoke;
      block[3] = &unk_1E82D6388;
      v53 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    array = [MEMORY[0x1E695DF70] array];
    v15 = *(v11 + 61);
    *(v11 + 61) = array;

    objc_storeStrong(v11 + 67, class);
    *(v11 + 499) = blendingCopy;
    v16 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v19 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

    if (v19)
    {
      v20 = [v16 BOOLForKey:@"PKSixChannelDisableSnapshottingInFreeform"];
      v21 = &OBJC_IVAR___PKTiledView__sixChannelBlendingDisableSnapshotting;
    }

    else
    {
      v21 = &OBJC_IVAR___PKTiledView__sixChannelBlendingRendersTransparent;
      *(v11 + 503) = [v16 BOOLForKey:@"PKSixChannelDisableSnapshotting"];
      v20 = [v16 BOOLForKey:@"PKSixChannelRendersTransparent"];
    }

    *(v11 + *v21) = v20;
    *(v11 + 498) = +[PKTiledView showDebugOutlines];
    objc_opt_self();
    *(v11 + 88) = 0x4080000000000000;
    v22 = objc_storeWeak(v11 + 69, viewCopy);
    [viewCopy _addScrollViewScrollObserver:v11];

    WeakRetained = objc_loadWeakRetained(v11 + 69);
    [WeakRetained _setLayoutObserver:v11];

    v24 = objc_loadWeakRetained(v11 + 69);
    [v24 contentOffset];
    *(v11 + 121) = v25;
    *(v11 + 122) = v26;

    v27 = objc_loadWeakRetained(v11 + 69);
    objc_storeWeak(v11 + 70, v27);

    v28 = [[PKSelectionController alloc] initWithTiledView:v11];
    v29 = *(v11 + 84);
    *(v11 + 84) = v28;

    v30 = [[PKRulerController alloc] initWithDelegate:v11];
    v31 = *(v11 + 119);
    *(v11 + 119) = v30;

    [(PKRulerController *)*(v11 + 119) setRulerHostingDelegate:v11];
    *(v11 + 502) = 1;
    v32 = objc_alloc_init(PKWelcomeController);
    v33 = *(v11 + 78);
    *(v11 + 78) = v32;

    v34 = objc_alloc_init(PKTiledGestureView);
    v35 = *(v11 + 91);
    *(v11 + 91) = v34;

    [*(v11 + 91) setTiledView:v11];
    [v11 addSubview:*(v11 + 91)];
    if (!only)
    {
      [v11 newCanvasView];
    }

    [viewCopy addSubview:v11];
    [v11 set_maxFileFormatVersion:{+[PKDrawing _currentSerializationVersion](PKDrawingConcrete, "_currentSerializationVersion")}];
    *(v11 + 496) = 1;
    *(v11 + 72) = dyld_program_sdk_at_least() ^ 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerWillShowNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerDidShowNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerDidHideNotification" object:0];

    [objc_opt_class() addObserver:v12 forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:0];
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v12 selector:sel__handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification_ name:@"PKPencilSqueezeInteractionDidChangePaletteViewVisibilityNotification" object:0];

    [v12 updateForAllowedDrawingInput];
    [v12 setAccessibilityIdentifier:@"com.apple.pencilkit.tiledView"];
    v40 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v12];
    v41 = *(v12 + 51);
    *(v12 + 51) = v40;

    [viewCopy addInteraction:*(v12 + 51)];
    objc_initWeak(&location, v12);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __80__PKTiledView_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly___block_invoke_2;
    v49[3] = &unk_1E82D6D08;
    objc_copyWeak(&v50, &location);
    [PKHoverSettings checkIfHoverIsSupported:v49];
    v42 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v12];
    v43 = *(v12 + 118);
    *(v12 + 118) = v42;

    [v12 addInteraction:*(v12 + 118)];
    *(v12 + 523) = 0;
    *(v12 + 501) = 1;
    *(v12 + 464) = 1;
    v44 = objc_alloc_init(PKAutoRefineController);
    v45 = *(v12 + 116);
    *(v12 + 116) = v44;

    v46 = [[PKTiledViewAnimationController alloc] initWithTiledView:v12];
    v47 = *(v12 + 66);
    *(v12 + 66) = v46;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __80__PKTiledView_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly___block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Hover supported check completed: %d", v9, 8u);
    }

    if (a2)
    {
      [WeakRetained _createHoverControllerIfNecessary];
    }

    else
    {
      *(WeakRetained + 515) = 1;
      if (WeakRetained[120])
      {
        v5 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v9[0]) = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Tearing down hover controller since hover isn't supported", v9, 2u);
        }

        v6 = [(PKHoverController *)WeakRetained[120] hoverGestureRecognizer];
        v7 = [v6 view];
        [v7 removeGestureRecognizer:v6];

        v8 = WeakRetained[120];
        WeakRetained[120] = 0;
      }
    }
  }
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  [(PKTiledView *)self _reenableScrollViewPanGestureIfNecessary];
  [self->_drawingPolicy removeFromSuperview];
  hoverConvertToShapeBlock = self->_hoverConvertToShapeBlock;
  if (hoverConvertToShapeBlock)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = hoverConvertToShapeBlock;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v18 + 1) + 8 * v7++) removeAllActionsWithTarget:self];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }

  updateAttachmentBoundsBlock = self->_updateAttachmentBoundsBlock;
  if (updateAttachmentBoundsBlock)
  {
    dispatch_block_cancel(updateAttachmentBoundsBlock);
    v9 = self->_updateAttachmentBoundsBlock;
    self->_updateAttachmentBoundsBlock = 0;
  }

  hideCanvasBlock = self->_hideCanvasBlock;
  if (hideCanvasBlock)
  {
    dispatch_block_cancel(hideCanvasBlock);
    v11 = self->_hideCanvasBlock;
    self->_hideCanvasBlock = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing"];
  [(PKTileController *)self->_drawingTouchThatHitNothing teardown];
  view = [(UIDropInteraction *)self->_dropInteraction view];
  [view removeInteraction:self->_dropInteraction];

  WeakRetained = objc_loadWeakRetained(&self->_attachmentContainerView);
  [WeakRetained _setLayoutObserver:0];

  v15 = objc_loadWeakRetained(&self->_attachmentContainerView);
  [v15 _removeScrollViewScrollObserver:self];

  timestampForLatestUserInteraction = self->_timestampForLatestUserInteraction;
  self->_timestampForLatestUserInteraction = 0.0;

  v17.receiver = self;
  v17.super_class = PKTiledView;
  [(PKTiledView *)&v17 dealloc];
}

- (void)_setHasSeenAnyExtendedDynamicRangeInks
{
  if ((BYTE1(self->_previouslySelectedDrawingUUID) & 1) == 0)
  {
    BYTE1(self->_previouslySelectedDrawingUUID) = 1;
    [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
  }
}

- (int64_t)effectiveMaximumSupportedContentVersion
{
  maximumSupportedContentVersion = [(PKTiledView *)self maximumSupportedContentVersion];
  _activeToolPicker = [(PKTiledView *)self _activeToolPicker];
  v5 = _activeToolPicker;
  if (_activeToolPicker)
  {
    maximumSupportedContentVersion2 = [_activeToolPicker maximumSupportedContentVersion];
  }

  else
  {
    maximumSupportedContentVersion2 = 4;
  }

  if (maximumSupportedContentVersion >= maximumSupportedContentVersion2)
  {
    maximumSupportedContentVersion = maximumSupportedContentVersion2;
  }

  return maximumSupportedContentVersion;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_canvasViewZOrderPolicy, delegateCopy);
  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFFBF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFF7F | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *&self->_tiledViewFlags = *&self->_tiledViewFlags & 0xFEFF | v11;
}

- (void)_disableScrollViewPanGestureIfNecessary
{
  if (!self || !*(&self->_editMenuVisible + 4))
  {
    scrollView = [(PKTiledView *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    if ([panGestureRecognizer isEnabled])
    {
      _shouldPreventScrollViewPanGestureWhilePreviewing = [(PKTiledView *)self _shouldPreventScrollViewPanGestureWhilePreviewing];

      if (_shouldPreventScrollViewPanGestureWhilePreviewing)
      {
        v5 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Disable scroll view pan gesture recognizer", buf, 2u);
        }

        if (self)
        {
          *(&self->_editMenuVisible + 4) = 1;
        }

        scrollView2 = [(PKTiledView *)self scrollView];
        panGestureRecognizer2 = [scrollView2 panGestureRecognizer];
        [panGestureRecognizer2 setEnabled:0];
      }
    }

    else
    {
    }
  }
}

- (void)_reenableScrollViewPanGestureIfNecessary
{
  if (self && *(&self->_editMenuVisible + 4))
  {
    v3 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Reenabling scroll view pan gesture recognizer", v6, 2u);
    }

    scrollView = [(PKTiledView *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer setEnabled:1];

    *(&self->_editMenuVisible + 4) = 0;
  }
}

- (PKTileController)tileController
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(PKTiledView *)self disableTileRendering])
  {
    v3 = 0;
  }

  else
  {
    if (!self->_drawingTouchThatHitNothing)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      attachmentViews = [(PKTiledView *)self attachmentViews];
      v5 = [attachmentViews countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        v6 = *v27;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v27 != v6)
            {
              objc_enumerationMutation(attachmentViews);
            }

            if ([*(*(&v26 + 1) + 8 * i) hasSeenAnyExtendedDynamicRangeStrokes])
            {
              BYTE1(self->_previouslySelectedDrawingUUID) = 1;
              goto LABEL_14;
            }
          }

          v5 = [attachmentViews countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      canvasView = [(PKTiledView *)self canvasView];
      metalConfig = [canvasView metalConfig];
      v10 = metalConfig;
      if (metalConfig)
      {
        v11 = metalConfig;
      }

      else
      {
        v11 = objc_alloc_init(PKMetalConfig);
      }

      v12 = v11;

      objc_opt_self();
      +[PKMetalUtility layerContentsScale];
      v14 = v13;
      v15 = [PKTileController alloc];
      _sixChannelBlendingIsActive = [(PKTiledView *)self _sixChannelBlendingIsActive];
      _transparentBlendingIsActive = [(PKTiledView *)self _transparentBlendingIsActive];
      isExtendedDynamicRangeRenderingActive = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
      v19 = ceil(v14 * 512.0);
      v20 = [(PKTileController *)v15 initWithPixelSize:_sixChannelBlendingIsActive actualSize:_transparentBlendingIsActive pixelFormat:isExtendedDynamicRangeRenderingActive sixChannelBlending:v12 transparentBlending:v19 wantsExtendedDynamicRangeContent:v19 metalConfig:v19, v19];
      drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
      self->_drawingTouchThatHitNothing = v20;

      invertColors = [(PKTiledView *)self invertColors];
      v23 = self->_drawingTouchThatHitNothing;
      if (v23)
      {
        LOBYTE(v23[1].super.isa) = invertColors;
        [(PKMetalRendererController *)v23[3].super.isa setInvertColors:invertColors];
      }
    }

    [(PKTiledView *)self canvasZoomScale];
    [(PKTileController *)self->_drawingTouchThatHitNothing setContentZoomScale:v24];
    v3 = self->_drawingTouchThatHitNothing;
  }

  return v3;
}

- (double)timestampForLatestUserInteraction
{
  canvasView = [(PKTiledView *)self canvasView];
  if (([canvasView isDrawing] & 1) == 0)
  {

    return *&self->_recentStrokesForAutoRefine;
  }

  canvasView2 = [(PKTiledView *)self canvasView];
  isPreviewing = [canvasView2 isPreviewing];

  if (isPreviewing)
  {
    return *&self->_recentStrokesForAutoRefine;
  }

  return CACurrentMediaTime();
}

- (void)_cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:(BOOL)caches
{
  cachesCopy = caches;
  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  [(PKTiledView *)self _resetDrawingState];
  if (cachesCopy)
  {
    [(PKTiledView *)self _flushCaches];
  }

  canvasView = [(PKTiledView *)self canvasView];
  [canvasView _reduceMemoryFootprint];
}

- (void)_flushCaches
{
  _rendererController = [self->_drawingPolicy _rendererController];
  [(PKMetalRendererController *)_rendererController flushMemoryIfPossible];

  drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
  if (drawingTouchThatHitNothing)
  {
    isa = drawingTouchThatHitNothing[3].super.isa;

    [(PKMetalRendererController *)isa flushMemoryIfPossible];
  }
}

- (void)_resetDrawingState
{
  drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
  [drawingGestureRecognizer cancel];

  if (([self->_drawingPolicy isHidden] & 1) == 0)
  {

    [(PKTiledView *)self _hideCanvas];
  }
}

- (void)_beginAnalyticsSessionIfNecessary
{
  if (!self->_aggd_cachedVisibleStrokeCount)
  {
    v3 = objc_alloc_init(PKAnalyticsSession);
    aggd_cachedVisibleStrokeCount = self->_aggd_cachedVisibleStrokeCount;
    self->_aggd_cachedVisibleStrokeCount = v3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_analyticsSession);

  if (!WeakRetained)
  {
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    v8 = [PKPencilObserverInteraction interactionForScene:windowScene];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 56);
    }

    else
    {
      v10 = 0;
    }

    obj = v10;

    v11 = objc_storeWeak(&self->_analyticsSession, obj);
    [(PKPencilStatisticsManager *)obj startAnalyticsSessionIfNecessary];

    v12 = objc_loadWeakRetained(&self->_analyticsSession);
    v13 = [(PKTiledView *)self ink];
    identifier = [v13 identifier];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v14, identifier, 40);
    }
  }
}

- (void)_endAnalyticsSessionsIfNecessary
{
  [(PKAnalyticsSession *)self->_aggd_cachedVisibleStrokeCount endSessionAndSendAnalytics];
  aggd_cachedVisibleStrokeCount = self->_aggd_cachedVisibleStrokeCount;
  self->_aggd_cachedVisibleStrokeCount = 0;

  WeakRetained = objc_loadWeakRetained(&self->_analyticsSession);
  [(PKPencilStatisticsManager *)WeakRetained endAnalyticsSessionIfNecessary];

  objc_storeWeak(&self->_analyticsSession, 0);
}

- (void)startLiveResize
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v4 = [attachmentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(attachmentViews);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7)
        {
          [*(*(&v12 + 1) + 8 * v6) drawingTransform];
        }

        else
        {
          v10 = 0u;
          v11 = 0u;
          v9 = 0u;
        }

        v8[0] = v9;
        v8[1] = v10;
        v8[2] = v11;
        [v7 setPreResizeDrawingTransform:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [attachmentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  if (self)
  {
    self->_symbolPreviewActive = 1;
  }
}

- (void)endLiveResize
{
  if (self)
  {
    self->_symbolPreviewActive = 0;
    self->_didDisableScrollViewPanGestureRecognizer = 1;
    [(PKTiledView *)self _layoutSubviews];
    self->_didDisableScrollViewPanGestureRecognizer = 0;
  }

  else
  {

    [0 _layoutSubviews];
  }
}

- (void)setWantsExtendedDynamicRangeContent:(BOOL)content
{
  if (self->_isDoingInteractiveResize != content)
  {
    self->_isDoingInteractiveResize = content;
    [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
  }
}

- (void)_updateWantsExtendedDynamicRangeContent
{
  v42 = *MEMORY[0x1E69E9840];
  isExtendedDynamicRangeRenderingActive = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
  [self->_drawingPolicy setWantsExtendedDynamicRangeContent:isExtendedDynamicRangeRenderingActive];
  drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
  if (drawingTouchThatHitNothing && (isa = drawingTouchThatHitNothing[3].super.isa) != 0)
  {
    v6 = isExtendedDynamicRangeRenderingActive;
    if (isExtendedDynamicRangeRenderingActive == *(isa + 524))
    {
      return;
    }
  }

  else
  {
    if (!isExtendedDynamicRangeRenderingActive)
    {
      return;
    }

    v6 = 1;
  }

  [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];
  v7 = os_log_create("com.apple.pencilkit", "EDR");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v41 = v6;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Tile type changed to EDR: %{BOOL}d", buf, 8u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v10 = [attachmentViews countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(attachmentViews);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        tiles = [v13 tiles];
        [dictionary addEntriesFromDictionary:tiles];

        tiles2 = [v13 tiles];
        [tiles2 removeAllObjects];

        purgedTiles = [v13 purgedTiles];
        [purgedTiles removeAllObjects];
      }

      v10 = [attachmentViews countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues = [dictionary allValues];
  v18 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = *v31;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(allValues);
        }

        if (([(PKRendererTile *)*(*(&v30 + 1) + 8 * j) hasContents]& 1) != 0)
        {
          v21 = 1;
          goto LABEL_23;
        }
      }

      v18 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_23:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKTiledView__updateWantsExtendedDynamicRangeContent__block_invoke;
  aBlock[3] = &unk_1E82D6388;
  v22 = dictionary;
  v29 = v22;
  v23 = _Block_copy(aBlock);
  [(PKTileController *)self->_drawingTouchThatHitNothing setWantsExtendedDynamicRangeContent:isExtendedDynamicRangeRenderingActive];
  v24 = os_log_create("com.apple.pencilkit", "EDR");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Redrawing tiles offscreen after EDR change", buf, 2u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__PKTiledView__updateWantsExtendedDynamicRangeContent__block_invoke_368;
    v26[3] = &unk_1E82D63B0;
    v27 = v23;
    [(PKTiledView *)self updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:0 withCallback:v26];
  }

  else
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Redrawing tiles normally after EDR change.", buf, 2u);
    }

    [(PKTiledView *)self updateTilesForVisibleRect];
    v23[2](v23);
  }
}

void __54__PKTiledView__updateWantsExtendedDynamicRangeContent__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [*(a1 + 32) allValues];
  v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v2)
  {
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v1);
        }

        [(PKRendererTile *)*(*(&v5 + 1) + 8 * v4++) purgeTileLayers];
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_generationToolGestureRecognizer != begin && self->_simultaneousDrawingGestureRecognizer != begin)
  {
    return 1;
  }

  drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
  isEnabled = [drawingGestureRecognizer isEnabled];

  return isEnabled;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  generationToolGestureRecognizer = self->_generationToolGestureRecognizer;
  v11 = generationToolGestureRecognizer == recognizerCopy || generationToolGestureRecognizer == gestureRecognizerCopy;
  canvasView = [(PKTiledView *)self canvasView];
  drawingGestureRecognizer = [canvasView drawingGestureRecognizer];

  if (v11)
  {
    v14 = 1;
  }

  else
  {
    simultaneousDrawingGestureRecognizer = self->_simultaneousDrawingGestureRecognizer;
    v17 = simultaneousDrawingGestureRecognizer == recognizerCopy || simultaneousDrawingGestureRecognizer == v8;
    v19 = drawingGestureRecognizer == recognizerCopy || drawingGestureRecognizer == v8;
    v14 = v19 && v17;
  }

  return v14;
}

- (void)insertCanvasView:(id)view intoScrollView:(id)scrollView
{
  viewCopy = view;
  scrollViewCopy = scrollView;
  if ([(PKTiledView *)self canvasViewZOrderPolicy])
  {
    [scrollViewCopy addSubview:viewCopy];
  }

  else
  {
    [scrollViewCopy insertSubview:viewCopy atIndex:0];
  }
}

- (void)setDefaultDrawingClass:(Class)class
{
  if (self->_linedPaper != class)
  {
    objc_storeStrong(&self->_linedPaper, class);
    v5 = objc_alloc_init(class);
    [self->_drawingPolicy setDrawing:?];
  }
}

- (void)setCanvasViewZOrderPolicy:(int64_t)policy
{
  self->_contentSnapshottingView = policy;
  drawingPolicy = self->_drawingPolicy;
  if (drawingPolicy)
  {
    [drawingPolicy removeFromSuperview];
    v5 = self->_drawingPolicy;
    scrollView = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self insertCanvasView:v5 intoScrollView:?];
  }
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  identifier = [inkCopy identifier];
  canvasView = [(PKTiledView *)self canvasView];
  v7 = [canvasView ink];
  identifier2 = [v7 identifier];
  v9 = [identifier isEqualToString:identifier2];

  if ((v9 & 1) == 0)
  {
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    v12 = [PKPencilShadowView shadowViewForScene:windowScene];
    [v12 setInk:inkCopy];

    if ([inkCopy _isEraserInk] & 1) != 0 || (-[PKTiledView canvasView](self, "canvasView"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "ink"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "_isEraserInk"), v14, v13, (v15))
    {
      if (!self)
      {
LABEL_10:
        WeakRetained = objc_loadWeakRetained(&self->_analyticsSession);
        [(PKPencilStatisticsManager *)WeakRetained endAnalyticsSessionIfNecessary];

        objc_storeWeak(&self->_analyticsSession, 0);
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(self->_externalAttachments) = 1;
    }

    if (*(&self->_editMenuVisible + 2) || *(&self->_editMenuVisible + 3))
    {
      [(PKTiledView *)self _endHoverToolPreview];
      hoverController = [(PKTiledView *)self hoverController];
      [(PKHoverController *)hoverController reset];

      [(PKTiledView *)self _resetDrawingState];
    }

    goto LABEL_10;
  }

LABEL_11:
  [(PKTiledView *)self _updateDrawingGestureEnablementWithInk:inkCopy];
  canvasView2 = [(PKTiledView *)self canvasView];
  v19 = [canvasView2 ink];
  identifier3 = [v19 identifier];
  if (![identifier3 isEqual:@"com.apple.ink.objectEraser"])
  {
LABEL_17:

    goto LABEL_18;
  }

  canvasView3 = [(PKTiledView *)self canvasView];
  v45 = inkCopy;
  v22 = [canvasView3 ink];
  identifier4 = [v22 identifier];
  identifier5 = [inkCopy identifier];
  if (([identifier4 isEqual:identifier5] & 1) != 0 || (maxFileFormatVersion = self->__maxFileFormatVersion, maxFileFormatVersion != -[PKTiledView _totalVisibleStrokes](self, "_totalVisibleStrokes")))
  {

    inkCopy = v45;
    goto LABEL_17;
  }

  aggd_didMergeWithCollaborator = [(PKTiledView *)self aggd_didMergeWithCollaborator];

  inkCopy = v45;
  if (!aggd_didMergeWithCollaborator)
  {
    v26 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v26 recordInkPickerNoOp:?];

    goto LABEL_22;
  }

LABEL_18:
  identifier6 = [inkCopy identifier];
  v28 = [identifier6 isEqual:@"com.apple.ink.objectEraser"];

  if (v28)
  {
    self->__maxFileFormatVersion = [(PKTiledView *)self _totalVisibleStrokes];
    [(PKTiledView *)self setAggd_didMergeWithCollaborator:0];
  }

  else if ([inkCopy _isHandwritingInk])
  {
    [(PKTiledView *)self setRulerEnabled:0];
  }

LABEL_22:
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v30 = tileController;
  isDragging = [(PKTileController *)v30 isDragging];

  if ((isDragging & 1) == 0)
  {
    v32 = self->_tileController;
    if ((v32 && *&v32[2]._contentZoomScale || -[PKSelectionController _hasExternalElementsSelectedInAttachment:](v32, 0)) && ([inkCopy inkType], v33 = objc_claimAutoreleasedReturnValue(), -[PKTiledView ink](self, "ink"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "inkType"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v33, "isEqual:", v35), v35, v34, v33, (v36 & 1) == 0))
    {
      v38 = self->_tileController;
      if (v38)
      {
        [(PKSelectionController *)v38 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }

    else
    {
      v37 = self->_tileController;
      if (v37 && *&v37[2]._contentZoomScale)
      {
        goto LABEL_39;
      }
    }
  }

  canvasView4 = [(PKTiledView *)self canvasView];
  [canvasView4 setInk:inkCopy];

  [inkCopy hdrHeadroom];
  if (v40 > 1.0)
  {
    v41 = os_log_create("com.apple.pencilkit", "EDR");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v41, OS_LOG_TYPE_DEFAULT, "User selected EDR ink.", buf, 2u);
    }

    [(PKTiledView *)self _setHasSeenAnyExtendedDynamicRangeInks];
  }

  selectionController = [(PKTiledView *)self selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
  [selectionInteraction _updateAllowedTouchTypesForSelectedInk:inkCopy];

  objc_initWeak(buf, self);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __22__PKTiledView_setInk___block_invoke;
  v46[3] = &unk_1E82D6D08;
  objc_copyWeak(&v47, buf);
  [PKHoverSettings checkIfHoverIsSupported:v46];
  objc_destroyWeak(&v47);
  objc_destroyWeak(buf);
LABEL_39:
}

void __22__PKTiledView_setInk___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained window];
    v5 = [PKToolPicker existingPaletteViewForWindow:v4];

    if (v5)
    {
      [v5 setHoverDelegate:v6];
    }

    WeakRetained = v6;
  }
}

- (void)setSelectedStrokesColor:(id)color
{
  colorCopy = color;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  isDragging = [(PKTileController *)v5 isDragging];

  if ((isDragging & 1) == 0)
  {
    v7 = self->_tileController;
    if (v7)
    {
      if (*&v7[2]._contentZoomScale)
      {
        [(PKSelectionController *)v7 changeColorOfSelection:colorCopy];
      }
    }
  }
}

- (void)setPaperTexture:(id)texture
{
  textureCopy = texture;
  canvasView = [(PKTiledView *)self canvasView];
  [canvasView setPaperTexture:textureCopy];
}

- (int64_t)_totalVisibleStrokes
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [(PKTiledView *)self attachments];
  v3 = 0;
  v4 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(attachments);
        }

        drawing = [*(*(&v11 + 1) + 8 * v6) drawing];
        strokes = [drawing strokes];
        v9 = [strokes count];

        v3 += v9;
        ++v6;
      }

      while (v4 != v6);
      v4 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v3;
}

- (BOOL)_toolPickerIsOrWillBeVisible
{
  _activeToolPicker = [(PKTiledView *)self _activeToolPicker];
  v3 = _activeToolPicker;
  if (_activeToolPicker)
  {
    if ([_activeToolPicker isVisible])
    {
      _isAnimatingToVisible = 1;
    }

    else
    {
      _isAnimatingToVisible = [v3 _isAnimatingToVisible];
    }
  }

  else
  {
    _isAnimatingToVisible = 0;
  }

  return _isAnimatingToVisible;
}

- (void)_setDrawingEnabled:(BOOL)enabled
{
  if (self->_sixChannelBlendingRendersTransparent != enabled)
  {
    self->_sixChannelBlendingRendersTransparent = enabled;
    [(PKTiledView *)self _updateDrawingGestureEnablement];
  }
}

- (void)setDrawingPolicy:(unint64_t)policy
{
  if (self->_delegate != policy)
  {
    self->_delegate = policy;
    [(PKTiledView *)self updateForAllowedDrawingInput];
  }
}

- (void)showImageWandTipWithController:(id)controller toolPicker:(id)picker
{
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pickerCopy = picker;
  if ([pickerCopy isVisible])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    visibleAttachments = [(PKTiledView *)self visibleAttachments];
    v9 = [visibleAttachments countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = *v33;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(visibleAttachments);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          [v12 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          scrollView = [(PKTiledView *)self scrollView];
          [scrollView visibleBounds];
          v39.origin.x = v22;
          v39.origin.y = v23;
          v39.size.width = v24;
          v39.size.height = v25;
          v38.origin.x = v14;
          v38.origin.y = v16;
          v38.size.width = v18;
          v38.size.height = v20;
          v26 = CGRectIntersectsRect(v38, v39);

          if (v26)
          {
            drawing = [v12 drawing];
            [drawing bounds];
            v29 = v28;
            v31 = v30;

            if (v29 > 0.0 && v31 > 0.0)
            {
              [pickerCopy _showImageWandTipWithController:controllerCopy];
              goto LABEL_14;
            }
          }
        }

        v9 = [visibleAttachments countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)_updateForToolPickerVisibilityChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PKToolPickerNotificationWindowSceneUserInfoKey"];
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];

  if (v5 == windowScene)
  {
    [(PKTiledView *)self _toolPickerVisibilityDidChange];
  }
}

- (id)_activeToolPicker
{
  window = [(PKTiledView *)self window];

  if (window)
  {
    window2 = [(PKTiledView *)self window];
    window = [PKToolPicker activeToolPickerForWindow:window2];
  }

  return window;
}

- (void)_handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification
{
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];
  v6 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];
  _paletteViewVisible = [v6 _paletteViewVisible];

  if (_paletteViewVisible)
  {

    [(PKTiledView *)self updateForAllowedDrawingInput];
  }
}

- (void)_updateDrawingGestureEnablement
{
  canvasView = [(PKTiledView *)self canvasView];
  v3 = [canvasView ink];
  [(PKTiledView *)self _updateDrawingGestureEnablementWithInk:v3];
}

- (void)_updateDrawingGestureEnablementWithInk:(id)ink
{
  inkCopy = ink;
  if ([(PKTiledView *)self _isDrawingEnabled])
  {
    _isLassoInk = [inkCopy _isLassoInk];
    _isGenerationTool = [inkCopy _isGenerationTool];
    drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
    v7 = (_isLassoInk | _isGenerationTool) ^ 1;
    [drawingGestureRecognizer setEnabled:v7 & 1];

    simultaneousDrawingGestureRecognizer = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
    [simultaneousDrawingGestureRecognizer setEnabled:v7 & 1];

    generationToolGestureRecognizer = [(PKTiledView *)self generationToolGestureRecognizer];
    [generationToolGestureRecognizer setEnabled:_isGenerationTool];
  }

  else
  {
    drawingGestureRecognizer2 = [(PKTiledView *)self drawingGestureRecognizer];
    [drawingGestureRecognizer2 setEnabled:0];

    simultaneousDrawingGestureRecognizer2 = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
    [simultaneousDrawingGestureRecognizer2 setEnabled:0];

    generationToolGestureRecognizer = [(PKTiledView *)self generationToolGestureRecognizer];
    [generationToolGestureRecognizer setEnabled:0];
  }
}

- (void)setLinedPaper:(id)paper
{
  v17 = *MEMORY[0x1E69E9840];
  paperCopy = paper;
  v5 = [paperCopy copy];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  canvasView = [(PKTiledView *)self canvasView];
  [canvasView setLinedPaper:paperCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v9 = [attachmentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(attachmentViews);
        }

        [*(*(&v12 + 1) + 8 * v11++) setNeedsLayout];
      }

      while (v9 != v11);
      v9 = [attachmentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setRulerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!PKIsVisionDevice())
  {
    self->_rulerEnabled = enabledCopy;
    hoverController = self->_hoverController;
    if (enabledCopy)
    {
      [(PKRulerController *)hoverController showRuler];
    }

    else if (hoverController)
    {
      [(PKRulerController *)hoverController hideRulerAnimated:?];
    }

    _activeToolPicker = [(PKTiledView *)self _activeToolPicker];
    if ([_activeToolPicker isRulerActive] != enabledCopy)
    {
      [_activeToolPicker setRulerActive:enabledCopy];
    }
  }
}

- (double)rulerWidth
{
  hoverController = self->_hoverController;
  if (hoverController)
  {
    v4 = *&hoverController->_waitingForHoverHoldTimestamp;
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 52);
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_4:
  v7 = v6;
  [v7 rulerWidth];
  v9 = v8;
  v10 = self->_hoverController;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v11 = *&v10->_waitingForHoverHoldTimestamp;
  v12 = v11;
  if (!v11)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = *(v11 + 52);
LABEL_7:
  v14 = v13;
  [v14 rulerAlignInset];
  v16 = v9 - v15;

  return v16;
}

- (void)setRulerHostingDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_tileSize, delegateCopy);
  if (delegateCopy)
  {
    selfCopy = delegateCopy;
  }

  else
  {
    selfCopy = self;
  }

  [(PKRulerController *)self->_hoverController setRulerHostingDelegate:selfCopy];
}

- (BOOL)selectionSupportsTranslate
{
  if (!self->_tileController)
  {
    return 0;
  }

  LTUITranslationViewControllerClass = getLTUITranslationViewControllerClass();

  return [LTUITranslationViewControllerClass isAvailable];
}

- (void)selectionSupportsRefinement:(id)refinement
{
  refinementCopy = refinement;
  if (([(PKSelectionController *)self->_tileController refinementEnabled]& 1) != 0)
  {
    [(PKSelectionController *)&self->_tileController->super.isa supportsRefinement:refinementCopy];
  }

  else if (refinementCopy)
  {
    (*(refinementCopy + 2))(refinementCopy, 0);
  }
}

- (BOOL)selectionSupportsSnapToShape
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v3 = tileController;
  supportsSnapToShape = [(PKTileController *)v3 supportsSnapToShape];

  return supportsSnapToShape;
}

- (void)snapToShapeSelection
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v4 = tileController;
  [(PKTileController *)v4 convertToShapes:self];
}

- (void)insertSpace:(id)space
{
  spaceCopy = space;
  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v4 recordInsertSpaceWithType:?];

  [(PKSelectionController *)&self->_tileController->super.isa insertSpace:spaceCopy];
}

- (void)insertSpaceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v6 recordInsertSpaceWithType:?];

  tileController = self->_tileController;

  [(PKSelectionController *)&tileController->super.isa insertSpaceAtPoint:0 addDefaultSpace:0 strokesAbove:x strokesBelow:y];
}

- (id)_recentStrokesForAutoRefine
{
  [(PKTiledView *)self _trimRecentStrokes];
  v3 = [*&self->_drawingEnabled copy];

  return v3;
}

- (void)_trimRecentStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_editMenuInteraction);
  if (WeakRetained)
  {
    v4 = WeakRetained[4];

    if (v4 != 0.0)
    {
      v5 = [MEMORY[0x1E695DF00] now];
      [v5 timeIntervalSinceReferenceDate];
      v7 = v6;

      if ([*&self->_drawingEnabled count])
      {
        v8 = 0;
        v9 = v7 - v4;
        do
        {
          v10 = [*&self->_drawingEnabled objectAtIndexedSubscript:v8];
          path = [v10 path];
          if ([path _pointsCount] && (objc_msgSend(v10, "timestamp"), v13 = v12, objc_msgSend(path, "timestampAtIndex:", objc_msgSend(path, "_pointsCount") - 1), v13 + v14 < v9))
          {
            [*&self->_drawingEnabled removeObjectAtIndex:v8];
          }

          else
          {
            ++v8;
          }
        }

        while (v8 < [*&self->_drawingEnabled count]);
      }
    }
  }

  else
  {
  }
}

- (BOOL)_transparentBlendingIsActive
{
  sixChannelBlendingRendersTransparent = [(PKTiledView *)self sixChannelBlendingRendersTransparent];
  if (sixChannelBlendingRendersTransparent)
  {

    LOBYTE(sixChannelBlendingRendersTransparent) = [(PKTiledView *)self _sixChannelBlendingIsActive];
  }

  return sixChannelBlendingRendersTransparent;
}

- (double)inputScale
{
  drawingPolicy = self->_drawingPolicy;
  if (!drawingPolicy)
  {
    return 1.0;
  }

  [drawingPolicy _inputScale];
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = PKTiledView;
  [(PKTiledView *)&v8 traitCollectionDidChange:changeCopy];
  if (self->_drawingTouchThatHitNothing)
  {
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    activationState = [windowScene activationState];

    if (activationState == 2)
    {
      self->_disableUndoManager = 1;
    }

    else
    {
      [(PKTiledView *)self updateAfterTraitCollectionChange];
    }
  }
}

- (void)setSixChannelBlending:(BOOL)blending
{
  if (self->_supportsCopyAsText != blending)
  {
    self->_supportsCopyAsText = blending;
    _activeSixChannelBlendingMode = [(PKTiledView *)self _activeSixChannelBlendingMode];
    canvasView = [(PKTiledView *)self canvasView];
    [canvasView setSixChannelBlendingMode:_activeSixChannelBlendingMode];

    [(PKTiledView *)self updateAfterTraitCollectionChange];

    [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
  }
}

- (void)setDrawBitmapEraserMask:(BOOL)mask
{
  if (self->_shouldAdjustStrokeTransformAtEndOfStroke != mask)
  {
    self->_shouldAdjustStrokeTransformAtEndOfStroke = mask;
    [self->_drawingPolicy setDrawBitmapEraserMask:?];
  }
}

- (BOOL)isAutoRefineEnabled
{
  externalAutoRefineTaskCoordinator = self->_externalAutoRefineTaskCoordinator;
  if (externalAutoRefineTaskCoordinator)
  {
    LOBYTE(externalAutoRefineTaskCoordinator) = *(&externalAutoRefineTaskCoordinator->_delegateFlags + 1);
  }

  return externalAutoRefineTaskCoordinator & 1;
}

- (void)setIsAutoRefineEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x1E69E9840];
  [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator setIsAutoRefineOn:enabled];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v5 = [attachmentViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(attachmentViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) _handleAutoRefineSettingsDidChange];
      }

      while (v5 != v7);
      v5 = [attachmentViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateAfterTraitCollectionChange
{
  v25 = *MEMORY[0x1E69E9840];
  invertColors = [(PKTiledView *)self invertColors];
  _sixChannelBlendingIsActive = [(PKTiledView *)self _sixChannelBlendingIsActive];
  tileController = [(PKTiledView *)self tileController];
  if (tileController)
  {
    v6 = tileController[9];
  }

  else
  {
    v6 = 0;
  }

  tileController2 = [(PKTiledView *)self tileController];
  v8 = _sixChannelBlendingIsActive ^ v6;
  if (tileController2)
  {
    v9 = tileController2[8];
  }

  else
  {
    v9 = 0;
  }

  v10 = invertColors ^ v9 | v8;

  if (v10)
  {
    tileController3 = [(PKTiledView *)self tileController];
    v12 = tileController3;
    if (tileController3)
    {
      *(tileController3 + 8) = invertColors;
      [(PKMetalRendererController *)*(tileController3 + 24) setInvertColors:invertColors];
    }

    tileController4 = [(PKTiledView *)self tileController];
    [(PKTileController *)tileController4 setSixChannelBlending:_sixChannelBlendingIsActive];

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];
    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      attachmentViews = [(PKTiledView *)self attachmentViews];
      v15 = [attachmentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(attachmentViews);
            }

            [*(*(&v20 + 1) + 8 * i) setSixChannelBlending:_sixChannelBlendingIsActive];
          }

          v15 = [attachmentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v15);
      }

      _activeSixChannelBlendingMode = [(PKTiledView *)self _activeSixChannelBlendingMode];
      canvasView = [(PKTiledView *)self canvasView];
      [canvasView setSixChannelBlendingMode:_activeSixChannelBlendingMode];
    }

    [(PKTiledView *)self _layoutSubviews];
  }
}

- (void)_sceneDidActivate:(id)activate
{
  activateCopy = activate;
  if (self && self->_disableUndoManager)
  {
    self->_disableUndoManager = 0;
    [(PKTiledView *)self updateAfterTraitCollectionChange];
    [(PKTiledView *)self updateTilesForVisibleRect];
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  v43 = *MEMORY[0x1E69E9840];
  tileController = self->_tileController;
  y = self->_lastContentOffset.y;
  a = self->_strokeTransformAtStartOfStroke.a;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  [(PKSelectionController *)&tileController->super.isa didScroll:a - v9];

  [(PKTiledView *)self setNeedsLayout];
  scrollView2 = [(PKTiledView *)self scrollView];
  [scrollView2 contentOffset];
  v12 = v11;
  v14 = v13;
  v15 = self->_lastContentOffset.y;
  v16 = self->_strokeTransformAtStartOfStroke.a;

  if (v12 != v15 || v14 != v16)
  {
    updateAttachmentBoundsBlock = self->_updateAttachmentBoundsBlock;
    if (updateAttachmentBoundsBlock)
    {
      dispatch_block_cancel(updateAttachmentBoundsBlock);
    }

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKTiledView__observeScrollViewDidScroll___block_invoke;
    block[3] = &unk_1E82D6D80;
    objc_copyWeak(&v40, &location);
    v19 = dispatch_block_create(0, block);
    v20 = self->_updateAttachmentBoundsBlock;
    self->_updateAttachmentBoundsBlock = v19;

    self->_aggd_didMergeWithCollaborator = 1;
    v21 = dispatch_time(0, 100000000);
    dispatch_after(v21, MEMORY[0x1E69E96A0], self->_updateAttachmentBoundsBlock);
    scrollView3 = [(PKTiledView *)self scrollView];
    [scrollView3 contentOffset];
    self->_lastContentOffset.y = v23;
    self->_strokeTransformAtStartOfStroke.a = v24;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  cachedAdditionalStrokes = self->_cachedAdditionalStrokes;
  scrollView4 = [(PKTiledView *)self scrollView];
  [scrollView4 zoomScale];
  v28 = vabdd_f64(*&cachedAdditionalStrokes, v27) < 0.00999999978;

  if (!v28)
  {
    scrollView5 = [(PKTiledView *)self scrollView];
    [scrollView5 zoomScale];
    self->_cachedAdditionalStrokes = v30;
  }

  [(PKTiledView *)self updateTilesForVisibleRect];
  if ([(PKTiledView *)self _scrollViewIsScrollingOrZoomingOrResizing]|| !self->_updateAttachmentBoundsBlock)
  {
    [(PKTiledView *)self purgeNonVisibleTiles];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v32 = [attachmentViews countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v32)
  {
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(attachmentViews);
        }

        [*(*(&v35 + 1) + 8 * v34++) containingScrollViewDidScroll];
      }

      while (v32 != v34);
      v32 = [attachmentViews countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v32);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self->_tileController];
  [(PKTileController *)self->_tileController performSelector:sel_didEndScroll withObject:0 afterDelay:0.3];
}

void __43__PKTiledView__observeScrollViewDidScroll___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollViewDidScroll];
}

- (void)_addAttachmentsUnderView:(id)view toArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [view subviews];
  v7 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          tiledViewAttachmentViews = [v10 tiledViewAttachmentViews];
          [arrayCopy addObjectsFromArray:tiledViewAttachmentViews];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [arrayCopy addObject:v10];
          }

          else
          {
            subviews2 = [v10 subviews];
            v13 = [subviews2 count] == 0;

            if (!v13)
            {
              [(PKTiledView *)self _addAttachmentsUnderView:v10 toArray:arrayCopy];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)visibleOnScreenStrokesForDrawing:(id)drawing
{
  uuid = [drawing uuid];
  v5 = [(PKTiledView *)self attachmentForUUID:uuid];

  strokeSpatialCache = [v5 strokeSpatialCache];
  v7 = strokeSpatialCache;
  if (strokeSpatialCache)
  {
    v8 = *(strokeSpatialCache + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)smoothedHullForStroke:(id)stroke
{
  strokeCopy = stroke;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = "";
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__PKTiledView_smoothedHullForStroke___block_invoke;
  v11[3] = &unk_1E82D6A10;
  v11[4] = &v12;
  [strokeCopy interpolatePointDataWithStep:v11 usingBlock:1.0];
  [PKPathUtility smoothedHullForPoints:v13 + 6];
  v4 = [PKPathUtility bezierPathFromPoints:__p];
  v5 = [PKStroke alloc];
  cGPath = [v4 CGPath];
  v7 = [strokeCopy ink];
  v8 = [(PKStroke *)v5 _initWithPath:cGPath ink:v7 inputScale:1.0];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v12, 8);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return v8;
}

void __37__PKTiledView_smoothedHullForStroke___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>((v3 + 6), v13);
    }

    v14 = (16 * v9);
    *v14 = a2;
    v14[1] = a3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v15 = v3[6];
    v3[6] = 0;
    v3[7] = v6;
    v3[8] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v6 = (v5 + 2);
  }

  v3[7] = v6;
}

- (id)canvasView:(id)view attachmentViewForDrawing:(id)drawing
{
  uuid = [drawing uuid];
  v6 = [(PKTiledView *)self attachmentForUUID:uuid];

  return v6;
}

- (void)canvasView:(id)view textStrokesCoveredByStroke:(id)stroke drawing:(id)drawing completion:(id)completion
{
  strokeCopy = stroke;
  completionCopy = completion;
  uuid = [drawing uuid];
  v11 = [(PKTiledView *)self _attachmentForUUID:uuid];

  recognitionController = [v11 recognitionController];
  v13 = recognitionController;
  if (recognitionController)
  {
    v14 = *(recognitionController + 48);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [(PKRecognitionSessionManager *)v15 textStrokesCoveredByStroke:strokeCopy completion:completionCopy];
}

- (id)_attachmentForUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(PKTiledView *)self attachments];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        drawing = [v9 drawing];
        uuid = [drawing uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  if ((*&self->_tiledViewFlags & 0x100) != 0)
  {
    delegate = [(PKTiledView *)self delegate];
    [delegate canvasView:self scratchOutStrokes:strokesCopy drawing:drawingCopy];
  }
}

- (id)attachmentForUUID:(id)d
{
  v3 = [(PKTiledView *)self _attachmentForUUID:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setExternalAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v4 = COERCE_DOUBLE([attachmentsCopy copy]);
  timestampForLatestUserInteraction = self->_timestampForLatestUserInteraction;
  self->_timestampForLatestUserInteraction = v4;
}

- (BOOL)p_shouldSkipStrokeCacheInvalidationForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = objc_opt_class();
  v6 = PKDynamicCast(v5, attachmentCopy);
  v7 = v6;
  if (v6 && *&self->_timestampForLatestUserInteraction)
  {
    v8 = [v6 renderingEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)topZAttachment
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _visibleAttachments = [(PKTiledView *)self _visibleAttachments];
  v3 = 0;
  v4 = [_visibleAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(_visibleAttachments);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (v3)
        {
          viewRep = [v3 viewRep];
          viewRep2 = [v7 viewRep];
          v10 = [viewRep PK_isBelowViewInDepth:viewRep2];

          if (!v10)
          {
            continue;
          }
        }

        v11 = v7;

        v3 = v11;
      }

      v4 = [_visibleAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)undoManager
{
  if ([(PKTiledView *)self disableUndoManager])
  {
    undoManager = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKTiledView;
    undoManager = [(PKTiledView *)&v5 undoManager];
  }

  return undoManager;
}

- (void)startedDrawingInBlankSpaceWithTouch:(id)touch location:(CGPoint)location
{
  touchCopy = touch;
  objc_storeStrong(&self->_rulerHostingDelegate, touch);
  if (touchCopy)
  {
    viewForAttachmentAtBlankSpace = [(PKTiledView *)self viewForAttachmentAtBlankSpace];
  }

  else
  {
    viewForAttachmentAtBlankSpace = 0;
  }

  drawing = [viewForAttachmentAtBlankSpace drawing];
  if (!drawing)
  {
    drawing = [PKTiledView newInlineDrawingOfClass:[(PKTiledView *)self defaultDrawingClass]];
  }

  canvasView = [(PKTiledView *)self canvasView];
  [canvasView setDrawing:drawing];

  [(PKTiledView *)self defaultDrawingClass];
  if (objc_opt_isKindOfClass())
  {
    standInAttachmentView = [(PKTiledView *)self standInAttachmentView];
    [standInAttachmentView setDrawing:drawing];

    standInAttachmentView2 = [(PKTiledView *)self standInAttachmentView];
    canvasView2 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self renderAttachment:standInAttachmentView2 intoCanvas:canvasView2 showing:1];
  }

  else
  {
    if (!viewForAttachmentAtBlankSpace)
    {
      goto LABEL_11;
    }

    standInAttachmentView2 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self renderAttachment:viewForAttachmentAtBlankSpace intoCanvas:standInAttachmentView2 showing:1];
  }

LABEL_11:
}

- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  strokeCopy = stroke;
  touchCopy = touch;
  if (touchCopy)
  {
    hoverController = [(PKTiledView *)self hoverController];
    [(PKHoverController *)hoverController didReceiveNormalTouch:touchCopy];

    [(PKTiledView *)self canvasZoomScale];
    v13 = v12;
    drawingController = [(PKTiledView *)self drawingController];
    v15 = drawingController;
    if (drawingController)
    {
      v16 = *(drawingController + 64);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [(PKMetalRendererController *)v17 setContentZoomScale:v13];

    [touchCopy locationInView:self];
    x = v18;
    y = v19;
  }

  tileController = [(PKTiledView *)self tileController];
  if (touchCopy)
  {
    [(PKHoverController *)*&self->_lastContentOffset.x reset];
    selectionController = [(PKTiledView *)self selectionController];
    if (selectionController)
    {
      v22 = selectionController[16];

      if (!v22)
      {
        goto LABEL_11;
      }

      selectionController2 = [(PKTiledView *)self selectionController];
      v24 = selectionController2;
      if (selectionController2)
      {
        [(PKSelectionController *)selectionController2 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_11:
  [(PKTiledView *)self cancelTileGenerationInvalidateTiles:0];
  kdebug_trace();
  if (self)
  {
    self->_aggd_didMergeWithCollaborator = 0;
    self->_shouldBeginHoverPreview = 0;
  }

  v25 = [(PKTiledView *)self _hitAttachment:x, y];
  if (v25)
  {
    if (touchCopy)
    {
      drawingTouchThatHitNothing = [(PKTiledView *)self drawingTouchThatHitNothing];

      if (self)
      {
        if (drawingTouchThatHitNothing == touchCopy)
        {
          self->_shouldBeginHoverPreview = 1;
        }
      }
    }

    rulerHostingDelegate = self->_rulerHostingDelegate;
    self->_rulerHostingDelegate = 0;

    v28 = objc_opt_class();
    v29 = PKDynamicCast(v28, v25);
    objc_storeStrong(&self->_currentDrawingBeingCopiedToCanvas, v29);

    if ([strokeCopy isErasingObjects])
    {
      drawing = [v25 drawing];
      [strokeCopy setDrawing:drawing];
LABEL_26:

      goto LABEL_27;
    }

    drawing2 = [strokeCopy drawing];
    liveAttachment = [(PKTiledView *)self liveAttachment];
    drawing3 = [liveAttachment drawing];
    v34 = drawing3;
    if (drawing2 != drawing3)
    {

LABEL_25:
      [(PKTiledView *)self _layoutSubviewsUpdateTilesForRendering:0];
      drawing = [(PKTiledView *)self liveAttachment];
      [(PKTiledView *)self renderAttachment:drawing intoCanvas:strokeCopy showing:1];
      goto LABEL_26;
    }

    canvasView = [(PKTiledView *)self canvasView];
    isHidden = [canvasView isHidden];

    if (isHidden)
    {
      goto LABEL_25;
    }

    v37 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1C7CCA000, v37, OS_LOG_TYPE_INFO, "Skip render attachment", v38, 2u);
    }
  }

  else if (([strokeCopy isErasingObjects] & 1) == 0)
  {
    [(PKTiledView *)self startedDrawingInBlankSpaceWithTouch:touchCopy location:x, y];
  }

LABEL_27:
}

- (void)setLiveAttachment:(uint64_t)attachment
{
  if (attachment)
  {
    objc_storeStrong((attachment + 736), a2);
  }
}

- (void)_canvasViewWillBeginDrawing:(id)drawing startPoint:(id *)point forPreview:(BOOL)preview
{
  v26 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  if (preview)
  {
    [(PKTiledView *)self _setupPencilShadowViewIfNecessary];
  }

  else
  {
    hoverController = [(PKTiledView *)self hoverController];
    [(PKHoverController *)hoverController didReceiveNormalTouch:?];

    delegate = [(PKTiledView *)self delegate];
    [delegate _canvasViewWillBeginDrawing:self];

    [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  }

  v11 = +[PKPencilDevice activePencil];
  [v11 timeIntervalSinceUsed];
  v13 = v12;

  if (v13 <= 60.0)
  {
    if ((self->_externalAttachments & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(self->_externalAttachments) = 1;
  }

  v14 = os_log_create("com.apple.pencilkit", "Drawing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    var13 = point->var13;
    v24 = 134217984;
    v25 = var13;
    _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Resetting base roll value to: %g", &v24, 0xCu);
  }

  LOBYTE(self->_externalAttachments) = 0;
  v16 = point->var13;
  v17 = +[PKPencilDevice activePencil];
  [v17 setBaseRollAngle:v16];

LABEL_10:
  v18 = +[PKPencilDevice activePencil];
  [v18 baseRollAngle];
  v20 = v19;
  drawingController = [(PKTiledView *)self drawingController];
  inputController = [(PKController *)drawingController inputController];
  v23 = inputController;
  if (inputController)
  {
    os_unfair_lock_lock(inputController + 80);
    *&v23[94]._os_unfair_lock_opaque = v20;
    os_unfair_lock_unlock(v23 + 80);
  }
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  drawingCopy = drawing;
  delegate = [(PKTiledView *)self delegate];
  [delegate canvasViewDidBeginDrawing:self];

  activeDrawing = [drawingCopy activeDrawing];
  uuid = [activeDrawing uuid];
  v7 = [(PKTiledView *)self attachmentForUUID:uuid];
  [v7 didBeginDrawing];

  v8 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v8 logEndSelectionSessionIfNecessary];

  selectionController = [(PKTiledView *)self selectionController];
  v10 = selectionController;
  if (selectionController)
  {
    v11 = *(selectionController + 144);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v12 invalidateCachedStrokes];
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  v26 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  delegate = [(PKTiledView *)self delegate];
  [delegate canvasViewDidEndDrawing:self];

  activeDrawing = [drawingCopy activeDrawing];
  uuid = [activeDrawing uuid];
  v8 = [(PKTiledView *)self _attachmentForUUID:uuid];

  v9 = objc_opt_class();
  v10 = PKDynamicCast(v9, v8);
  v11 = v10;
  if (v10)
  {
    [v10 didEndDrawing];
  }

  v12 = *(MEMORY[0x1E695EFD0] + 16);
  src = *MEMORY[0x1E695EFD0];
  v23 = v12;
  v24 = *(MEMORY[0x1E695EFD0] + 32);
  if (self)
  {
    objc_copyStruct(&self->_strokeTransformAdjustment.b, &src, 48, 1, 0);
    if (self->_shouldBeginHoverPreview)
    {
      v23 = 0u;
      v24 = 0u;
      src = 0u;
      if (v8)
      {
        [v8 drawingTransform];
        v13 = *(&src + 1);
        v14 = *&src;
      }

      else
      {
        v13 = 0.0;
        v14 = 0.0;
      }

      v15 = sqrt(v13 * v13 + v14 * v14);
      if (v15 <= 0.0)
      {
        self->_shouldBeginHoverPreview = 0;
      }

      else
      {
        [(PKTiledView *)self getAttachment:v8 strokeTransform:v20 paperTransform:v19];
        v16 = self->_strokeTransformAdjustment.a - v21;
        v17 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.a) = 134218240;
          *(&buf.a + 4) = v16;
          WORD2(buf.b) = 2048;
          *(&buf.b + 6) = v15;
          _os_log_debug_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEBUG, "Adjusting stroke transform at end of stroke: %g, %g", &buf, 0x16u);
        }

        CGAffineTransformMakeTranslation(&v18, 0.0, v16 / v15);
        buf = v18;
        objc_copyStruct(&self->_strokeTransformAdjustment.b, &buf, 48, 1, 0);
      }
    }
  }

  [(PKTiledView *)self setLiveAttachment:?];
}

- (BOOL)canvasView:(id)view shouldDiscardEndedStroke:(id)stroke drawing:(id)drawing
{
  strokeCopy = stroke;
  uuid = [drawing uuid];
  v9 = [(PKTiledView *)self _attachmentForUUID:uuid];

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, v9);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 shouldDiscardEndedStroke:strokeCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canvasView:(id)view shouldDiscardTapStrokeAt:(CGPoint)at drawing:(id)drawing
{
  y = at.y;
  x = at.x;
  uuid = [drawing uuid];
  v9 = [(PKTiledView *)self _attachmentForUUID:uuid];

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, v9);
  if (v11)
  {
    drawing = [v9 drawing];
    [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:drawing];

    v13 = [v11 _handleSingleTapAtDrawingLocation:1 fromTapStroke:{y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canvasView:(id)view drawingIsShared:(id)shared
{
  uuid = [shared uuid];
  v6 = [(PKTiledView *)self _attachmentForUUID:uuid];

  v7 = objc_opt_class();
  v8 = PKDynamicCast(v7, v6);
  isSharedViaICloud = [v8 isSharedViaICloud];

  return isSharedViaICloud;
}

- (BOOL)canvasViewShouldCombineStrokes:(id)strokes
{
  if (!self->_isLayingOut)
  {
    return 0;
  }

  if ([(PKTiledView *)self _hasSelection])
  {
    return 0;
  }

  selectionController = [(PKTiledView *)self selectionController];
  v5 = [(PKSelectionController *)selectionController _hasExternalElementsSelectedInAttachment:?];

  if (v5)
  {
    return 0;
  }

  rulerController = [(PKTiledView *)self rulerController];
  rulerSelected = [(PKRulerController *)rulerController rulerSelected];

  return rulerSelected ^ 1;
}

- (id)canvasViewContentCoordinateSpace:(id)space
{
  contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];

  return contentCoordinateSpace;
}

- (void)canvasView:(id)view beganStroke:(id)stroke
{
  viewCopy = view;
  strokeCopy = stroke;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if ([(PKTiledView *)self toolShadowShouldBeActive])
  {
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    v9 = [PKPencilShadowView shadowViewForScene:windowScene];
    [v9 strokeBegan];
  }

  delegate = [(PKTiledView *)self delegate];
  [delegate canvasView:self beganStroke:strokeCopy];

  activeDrawing = [viewCopy activeDrawing];
  uuid = [activeDrawing uuid];
  v13 = [(PKTiledView *)self attachmentForUUID:uuid];
  [v13 beganStroke:strokeCopy];
}

- (void)replayCanvasViewDrawingMoved:(id)moved inputPoint:(id *)point inputType:(int64_t)type
{
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

  if (v10)
  {
    contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];
    if (contentCoordinateSpace)
    {
      v12 = contentCoordinateSpace;
      toolShadowShouldBeActive = [(PKTiledView *)self toolShadowShouldBeActive];

      v14 = !toolShadowShouldBeActive;
      if (type != 1)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        contentCoordinateSpace2 = [(PKTiledView *)self contentCoordinateSpace];
        [contentCoordinateSpace2 convertPoint:self toCoordinateSpace:{point->var0.var0.x, point->var0.var0.y}];
        v17 = v16;
        v19 = v18;

        point->var0.var0.x = v17;
        point->var0.var0.y = v19;
        v20 = *&point->var13;
        v24[6] = *&point->var11;
        v24[7] = v20;
        var15 = point->var15;
        v21 = *&point->var5;
        v24[2] = *&point->var3;
        v24[3] = v21;
        v22 = *&point->var9;
        v24[4] = *&point->var7;
        v24[5] = v22;
        v23 = *&point->var1;
        v24[0] = point->var0;
        v24[1] = v23;
        [(PKTiledView *)self _updatePencilShadowView:v24];
      }
    }
  }
}

- (void)changeStrokesUsingTransformations:(id)transformations strokeGroups:(id)groups drawing:(id)drawing originalStrokes:(id)strokes
{
  transformationsCopy = transformations;
  groupsCopy = groups;
  drawingCopy = drawing;
  strokesCopy = strokes;
  v14 = [PKRecognitionController undoCommandsToChangeStrokesUsingTransformations:transformationsCopy strokeGroups:groupsCopy drawing:drawingCopy originalStrokes:strokesCopy];
  shouldClearSelectionAfterStraightening = [drawingCopy shouldClearSelectionAfterStraightening];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PKTiledView_changeStrokesUsingTransformations_strokeGroups_drawing_originalStrokes___block_invoke;
  v18[3] = &unk_1E82D6DD0;
  v21 = shouldClearSelectionAfterStraightening;
  v18[4] = self;
  v19 = v14;
  v20 = drawingCopy;
  v16 = drawingCopy;
  v17 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

void __86__PKTiledView_changeStrokesUsingTransformations_strokeGroups_drawing_originalStrokes___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) selectionController];
    v3 = v2;
    if (v2)
    {
      [(PKSelectionController *)v2 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }
  }

  v4 = *(a1 + 32);
  v5 = [v4 canvasView];
  [v4 canvasView:v5 registerUndoCommands:*(a1 + 40)];

  v6 = *(a1 + 32);
  v7 = [v6 canvasView];
  [v6 canvasView:v7 drawingDidChange:*(a1 + 48)];

  v8 = *(a1 + 32);
  v10[0] = *(a1 + 48);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v8 _selectionRefreshWithChangeToDrawings:v9 completion:&__block_literal_global_417];
}

- (void)straightenStrokes:(id)strokes drawing:(id)drawing completionBlockWithStrokeTransformInfo:(id)info
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  infoCopy = info;
  v11 = [drawingCopy copy];

  uuid = [v11 uuid];
  v13 = [(PKTiledView *)self _attachmentForUUID:uuid];

  recognitionController = [v13 recognitionController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKTiledView_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke;
  v16[3] = &unk_1E82D6A38;
  v15 = infoCopy;
  v16[4] = self;
  v17 = v15;
  [recognitionController straightenStrokes:strokesCopy drawing:v11 completionBlockWithStrokeTransformInfo:v16];
}

void __80__PKTiledView_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKTiledView_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke_2;
  block[3] = &unk_1E82D6388;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKTiledView_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(a1 + 32) _beginAnalyticsSessionIfNecessary];
    v2 = *(v1 + 904);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [(PKAnalyticsSession *)v2 incrementTextLineStraighteningCount];
}

- (void)straighten:(id)straighten strokes:(id)strokes drawing:(id)drawing
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PKTiledView_straighten_strokes_drawing___block_invoke;
  v5[3] = &unk_1E82D6A60;
  v5[4] = self;
  [(PKTiledView *)self straightenStrokes:strokes drawing:drawing completionBlockWithStrokeTransformInfo:v5];
}

- (void)_straightenStrokes:(id)strokes drawing:(id)drawing completionBlock:(id)block
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PKTiledView__straightenStrokes_drawing_completionBlock___block_invoke;
  v14[3] = &unk_1E82D6A88;
  v14[4] = self;
  v15 = drawingCopy;
  v16 = strokesCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = strokesCopy;
  v13 = drawingCopy;
  [(PKTiledView *)self straightenStrokes:v12 drawing:v13 completionBlockWithStrokeTransformInfo:v14];
}

void __58__PKTiledView__straightenStrokes_drawing_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _newStrokesFromApplyingTransformations:a2 strokeGroups:a3 drawing:*(a1 + 40) originalStrokes:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (id)_createPKStrokesFromCHDrawing:(id)drawing inputScale:(double)scale sourceStroke:(id)stroke ink:(id)ink
{
  v19[1] = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  strokeCopy = stroke;
  inkCopy = ink;
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v12;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  if (strokeCopy)
  {
    v19[0] = strokeCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v16, v17, v18}];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = [PKStroke _createStrokesFromCHDrawing:drawingCopy transform:&v16 inputScale:v13 sourceStrokes:objc_opt_class() strokeClass:inkCopy newInk:1 suggestedHeight:scale shouldSetSynthesizedFlag:-1.0];
  if (strokeCopy)
  {
  }

  return v14;
}

- (id)_createPKStrokesFromCHDrawing:(id)drawing transform:(CGAffineTransform *)transform inputScale:(double)scale sourceStroke:(id)stroke
{
  v17[1] = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  strokeCopy = stroke;
  v11 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v11;
  v16 = *&transform->tx;
  v17[0] = strokeCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v15[0], v11, v16}];
  v13 = [PKStroke _createStrokesFromCHDrawing:drawingCopy transform:v15 inputScale:v12 sourceStrokes:objc_opt_class() strokeClass:0 newInk:1 suggestedHeight:scale shouldSetSynthesizedFlag:-1.0];

  return v13;
}

- (void)refine:(id)refine strokes:(id)strokes drawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  v9 = [drawingCopy copy];

  [(PKTiledView *)self inputScale];
  v11 = v10;
  selectionController = [(PKTiledView *)self selectionController];
  v13 = selectionController;
  if (selectionController)
  {
    v14 = *(selectionController + 128);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  selectionController2 = [(PKTiledView *)self selectionController];
  v17 = selectionController2;
  if (selectionController2)
  {
    selectionType = [*(selectionController2 + 152) selectionType];
  }

  else
  {
    selectionType = 0;
  }

  if (v15)
  {
    strokes = [v15 strokes];
    if ([strokes count])
    {
      drawing = [v15 drawing];
      uuid = [drawing uuid];
      uuid2 = [v9 uuid];
      v23 = [uuid isEqual:uuid2];

      if (v23)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v15 = 0;
  }

LABEL_11:
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v25 = v24;
  uuid3 = [v9 uuid];
  v27 = [(PKTiledView *)self _attachmentForUUID:uuid3];

  recognitionController = [v27 recognitionController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __38__PKTiledView_refine_strokes_drawing___block_invoke;
  v31[3] = &unk_1E82D6AD8;
  v29 = v9;
  v35 = v40;
  v36 = v39;
  v37 = v25;
  v32 = v29;
  selfCopy = self;
  v30 = v15;
  v34 = v30;
  v38 = selectionType;
  [recognitionController refineStrokes:strokesCopy drawing:v29 inputScale:v31 completion:v11];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
}

void __38__PKTiledView_refine_strokes_drawing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v6 count])
  {
    v7 = 0;
    v9 = 0;
LABEL_8:
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__PKTiledView_refine_strokes_drawing___block_invoke_4;
    v22[3] = &unk_1E82D6400;
    v22[4] = *(a1 + 40);
    v23 = v5;
    v24 = v6;
    v20 = v5;
    v21 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v22);

    v19 = v23;
    goto LABEL_9;
  }

  v7 = [*(a1 + 32) undoableDeleteStrokes:v5];
  v8 = [*(a1 + 32) undoableAddNewStrokes:v6];
  v9 = v8;
  if (!v7 || !v8)
  {
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = *(*(*(a1 + 64) + 8) + 24);
  v12 = *(*(a1 + 56) + 8);
  v13 = 0.0;
  if (v11 > 0.0)
  {
    v13 = *(v12 + 24) / v11;
  }

  *(v12 + 24) = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PKTiledView_refine_strokes_drawing___block_invoke_2;
  block[3] = &unk_1E82D6AB0;
  v26 = v6;
  v27 = v5;
  v14 = *(a1 + 72);
  v34 = v10;
  v35 = v14;
  v36 = 0;
  v33 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v28 = *(a1 + 40);
  v9 = v9;
  v29 = v9;
  v7 = v7;
  v30 = v7;
  v31 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  v32 = v15;
  v37 = v16;
  v17 = v5;
  v18 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v19 = v26;
LABEL_9:
}

void __38__PKTiledView_refine_strokes_drawing___block_invoke_2(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v2 = [PKAutoRefineLogEntry alloc];
  v3 = [(PKAutoRefineLogEntry *)v2 initWithRefinedStrokes:*(a1 + 32) originalStrokes:*(a1 + 40) unchangedStrokes:MEMORY[0x1E695E0F0] locale:0 refinedWordCount:*(*(*(a1 + 88) + 8) + 24) duration:0 isAutoRefined:*(a1 + 104) - *(a1 + 112) debugInfo:MEMORY[0x1E695E0F8]];
  [(PKAutoRefineLogEntry *)v3 estimateMetricsWithTokenDeviation:*(a1 + 120) tokenHeight:*(*(*(a1 + 96) + 8) + 24)];
  v4 = *(a1 + 48);
  v5 = [v4 canvasView];
  [v4 _canvasView:v5 didCompleteRefinementEntry:v3];

  v6 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
  [(PKHandwritingSynthesisLogger *)v6 addLogEntry:v3];

  v7 = *(a1 + 48);
  v8 = [v7 canvasView];
  v9 = *(a1 + 64);
  v20[0] = *(a1 + 56);
  v20[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v7 canvasView:v8 registerUndoCommands:v10];

  [*(a1 + 48) didChangeDrawing:*(a1 + 72)];
  v11 = *(a1 + 48);
  if (*(a1 + 80))
  {
    v12 = [v11 selectionController];
    v13 = [MEMORY[0x1E695DFB8] orderedSetWithArray:*(a1 + 32)];
    [(PKSelectionController *)v12 selectStrokes:v13 forSelectionType:*(a1 + 128) inDrawing:*(a1 + 72)];
  }

  else
  {
    v14 = [v11 selectionController];
    v12 = v14;
    if (v14)
    {
      [(PKSelectionController *)v14 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }
  }

  v15 = *(a1 + 48);
  v19 = *(a1 + 72);
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v15 _selectionRefreshWithChangeToDrawings:v16 completion:&__block_literal_global_423];

  v17 = *(a1 + 48);
  if ((*(v17 + 440) & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v17 + 584));
    [WeakRetained canvasView:*(a1 + 48) didRefineStrokes:*(a1 + 40) withNewStrokes:*(a1 + 32)];
  }
}

void __38__PKTiledView_refine_strokes_drawing___block_invoke_4(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 440) & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 584));
    [WeakRetained canvasView:a1[4] didRefineStrokes:a1[5] withNewStrokes:a1[6]];
  }
}

- (void)canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes
{
  viewCopy = view;
  strokeCopy = stroke;
  strokesCopy = strokes;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  WeakRetained = objc_loadWeakRetained(&self->_editMenuInteraction);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_editMenuInteraction);
    if (v12)
    {
      v13 = v12[4];

      if (v13 > 0.0)
      {
        [(PKTiledView *)self _trimRecentStrokes];
        [*&self->_drawingEnabled addObject:strokeCopy];
      }
    }

    else
    {
    }
  }

  tiledViewFlags = self->_tiledViewFlags;
  if ((tiledViewFlags & 2) != 0)
  {
    delegate = [(PKTiledView *)self delegate];
    [delegate canvasView:self endedStroke:strokeCopy shapeStrokes:strokesCopy];
  }

  else
  {
    if ((tiledViewFlags & 1) == 0)
    {
      goto LABEL_10;
    }

    delegate = [(PKTiledView *)self delegate];
    [delegate canvasView:self endedStroke:strokeCopy];
  }

LABEL_10:
  activeDrawing = [viewCopy activeDrawing];
  uuid = [activeDrawing uuid];
  v18 = [(PKTiledView *)self attachmentForUUID:uuid];

  if (strokeCopy)
  {
    [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator indexRefinableStroke:strokeCopy];
    recognitionManager = [v18 recognitionManager];
    [(PKRecognitionSessionManager *)recognitionManager updateWithRefinableStroke:strokeCopy];
  }

  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v20 = self->_aggd_cachedVisibleStrokeCount;
  [(PKAnalyticsSession *)v20 incrementStrokeCount];

  [v18 endedStroke:strokeCopy];
}

- (void)canvasView:(id)view cancelledStroke:(id)stroke
{
  viewCopy = view;
  strokeCopy = stroke;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if (strokeCopy)
  {
    delegate = [(PKTiledView *)self delegate];
    [delegate canvasView:self cancelledStroke:strokeCopy];

    activeDrawing = [viewCopy activeDrawing];
    uuid = [activeDrawing uuid];
    v10 = [(PKTiledView *)self attachmentForUUID:uuid];
    [v10 cancelledStroke:strokeCopy];
  }

  canvasView = [(PKTiledView *)self canvasView];
  [canvasView _finishCombiningStrokesIfNecessary];

  canvasView2 = [(PKTiledView *)self canvasView];
  wantsCanvasVisible = [canvasView2 wantsCanvasVisible];

  if ((wantsCanvasVisible & 1) == 0)
  {
    rulerHostingDelegate = self->_rulerHostingDelegate;
    self->_rulerHostingDelegate = 0;

    [(PKTiledView *)self _hideCanvas];
    [(PKTiledView *)self updateTilesForVisibleRect];
  }
}

- (void)_canvasViewDidEraseStrokes:(id)strokes
{
  strokesCopy = strokes;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  canvasView = [(PKTiledView *)self canvasView];
  drawing = [canvasView drawing];

  if (drawing)
  {
    canvasView2 = [(PKTiledView *)self canvasView];
    drawing2 = [canvasView2 drawing];
    uuid = [drawing2 uuid];
    v9 = [(PKTiledView *)self _attachmentForUUID:uuid];

    v10 = objc_opt_class();
    v11 = PKDynamicCast(v10, v9);
    v12 = v11;
    if (v11)
    {
      [v11 drawingDidEraseStrokes:strokesCopy];
    }
  }

  delegate = [(PKTiledView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(PKTiledView *)self delegate];
    [delegate2 canvasViewDidEraseStrokes:strokesCopy];
  }
}

- (void)_cancelHideCanvasIfNecessary
{
  undoManagersRegisteredWith = self->_undoManagersRegisteredWith;
  if (undoManagersRegisteredWith)
  {
    dispatch_block_cancel(undoManagersRegisteredWith);
    v4 = self->_undoManagersRegisteredWith;
    self->_undoManagersRegisteredWith = 0;
  }
}

- (void)_canvasView:(id)view didFinishRenderingNewStrokes:(id)strokes inDrawing:(id)drawing forPreview:(BOOL)preview
{
  viewCopy = view;
  strokesCopy = strokes;
  drawingCopy = drawing;
  kdebug_trace();
  uuid = [drawingCopy uuid];
  v12 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = PKDynamicCast(v13, v12);
    v15 = v14;
    if (v14 && [v14 updateHeightAfterDrawing] && (objc_msgSend(drawingCopy, "_isEmpty") & 1) == 0)
    {
      [(PKTiledView *)self _updateHeightOfAttachmentIfNecessary:v15];
      [(PKTiledView *)self updateTilesForVisibleRectRendering:0 offscreen:0 overrideAdditionalStrokes:0];
    }

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:0];
    wantsCanvasVisible = [viewCopy wantsCanvasVisible];
    if ((wantsCanvasVisible & 1) == 0)
    {
      [strokesCopy count];
    }

    canvasView = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self _copyFromCanvas:canvasView intoAttachment:v12 hideCanvas:wantsCanvasVisible ^ 1u strokes:strokesCopy];
  }

  else if (([viewCopy wantsCanvasVisible] & 1) == 0)
  {
    [(PKTiledView *)self _hideCanvas];
  }
}

- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  selectionController = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)selectionController updateCurrentSelectionWithNewDrawingIfNecessary:necessaryCopy];
}

- (void)_handleDrawingDidChangeForAttachment:(id)attachment didChangeVisibleStrokes:(BOOL)strokes
{
  strokesCopy = strokes;
  attachmentCopy = attachment;
  drawing = [attachmentCopy drawing];

  if (drawing && ![(PKTiledView *)self p_shouldSkipStrokeCacheInvalidationForAttachment:attachmentCopy])
  {
    objc_initWeak(&location, self);
    drawing2 = [attachmentCopy drawing];
    [(PKTiledView *)self visibleOnscreenBoundsForDrawing:drawing2];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = objc_opt_class();
    v18 = PKDynamicCast(v17, attachmentCopy);
    v19 = v18;
    if (v18)
    {
      [v18 drawingDidChangeVisibleStrokes:strokesCopy];
    }

    v20 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKTiledView__handleDrawingDidChangeForAttachment_didChangeVisibleStrokes___block_invoke;
    block[3] = &unk_1E82D6B00;
    objc_copyWeak(v23, &location);
    v22 = attachmentCopy;
    v23[1] = v10;
    v23[2] = v12;
    v23[3] = v14;
    v23[4] = v16;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

void __76__PKTiledView__handleDrawingDidChangeForAttachment_didChangeVisibleStrokes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) drawing];

    if (v2)
    {
      v3 = [*(a1 + 32) drawing];
      [WeakRetained visibleOnscreenBoundsForDrawing:v3];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v14.origin.x = v5;
      v14.origin.y = v7;
      v14.size.width = v9;
      v14.size.height = v11;
      if (!CGRectEqualToRect(v14, *(a1 + 48)))
      {
        [*(a1 + 32) visibleOnscreenBoundsDidChange:{v5, v7, v9, v11}];
      }
    }
  }
}

- (void)canvasView:(id)view drawingDidChange:(id)change
{
  changeCopy = change;
  uuid = [changeCopy uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if (v7)
  {
    drawing = [v7 drawing];
    [drawing mergeWithDrawing:changeCopy];

    [(PKTiledView *)self _handleDrawingDidChangeForAttachment:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Drawing did change that is not in text.", v10, 2u);
    }
  }

  [(PKTiledView *)self updateCurrentSelectionWithNewDrawingIfNecessary:changeCopy];
}

- (BOOL)canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch
{
  touchCopy = touch;
  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  delegate = [(PKTiledView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PKTiledView *)self delegate];
    v9 = [delegate2 canvasView:self shouldBeginDrawingWithTouch:touchCopy];
  }

  else
  {
    v9 = 1;
  }

  if ([touchCopy type])
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  hoverController = [(PKTiledView *)self hoverController];
  if (!hoverController || !self || (hoverController[56] & 1) == 0)
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_6:
    drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
    drawingTouch = [drawingGestureRecognizer drawingTouch];

    if (drawingTouch)
    {
      drawingGestureRecognizer2 = [(PKTiledView *)self drawingGestureRecognizer];
      drawingTouch2 = [drawingGestureRecognizer2 drawingTouch];
      type = [drawingTouch2 type];

      type2 = [touchCopy type];
      if (type == 2 && type2 != 2)
      {
        v16 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_INFO, "Avoided started drawing since we were already drawing with a pencil.", v30, 2u);
        }

        goto LABEL_22;
      }
    }

    selectionController = [(PKTiledView *)self selectionController];
    if (!selectionController || (v19 = selectionController[16], selectionController, !v19) || ([touchCopy locationInView:self], v21 = v20, v23 = v22, -[PKTiledView selectionController](self, "selectionController"), v24 = objc_claimAutoreleasedReturnValue(), -[PKSelectionController selectionInteraction](v24), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "_selectionShouldReceiveTouchForPoint:", v21, v23), v25, v24, (v26 & 1) == 0))
    {
      [(PKTiledView *)self _cancelHideCanvasIfNecessary];
      v27 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  if (*(&self->_editMenuVisible + 2))
  {

    goto LABEL_22;
  }

  v29 = *(&self->_editMenuVisible + 3);

  v27 = 0;
  if ((v29 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:

  return v27;
}

- (void)canvasViewDrawingMoved:(id)moved withTouch:(id)touch
{
  touchCopy = touch;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if (-[PKTiledView toolShadowShouldBeActive](self, "toolShadowShouldBeActive") && [touchCopy type] == 2)
  {
    [(PKTiledView *)self _keepPencilShadowVisible];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  __s1 = 0u;
  v13 = 0u;
  canvasView = [(PKTiledView *)self canvasView];
  _drawingController = [canvasView _drawingController];
  inputController = [(PKController *)_drawingController inputController];
  v9 = inputController;
  if (inputController)
  {
    [inputController _latestStrokePoint];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    __s1 = 0u;
    v13 = 0u;
  }

  if (memcmp(&__s1, &_PKStrokePointZero, 0x60uLL))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    [(PKTiledView *)self _updateToolPreviewIndicatorInputPoint:v10];
  }
}

- (void)canvasViewInvalidateTiles:(id)tiles
{
  [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];

  [(PKTiledView *)self updateTilesForVisibleRect];
}

- (CGAffineTransform)canvasView:(SEL)view transformForStroke:(id)stroke
{
  if (self && (BYTE4(self[10].d) & 1) != 0)
  {
    objc_copyStruct(retstr, &self[21].d, 48, 1, 0);
  }

  else
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  return self;
}

- (void)_handleSingleTapAtLocation:(CGPoint)location forAttachment:(id)attachment
{
  y = location.y;
  x = location.x;
  attachmentCopy = attachment;
  v8 = objc_opt_class();
  v9 = PKDynamicCast(v8, attachmentCopy);
  if (v9)
  {
    drawing = [attachmentCopy drawing];

    if (!drawing || ([attachmentCopy drawing], v11 = objc_claimAutoreleasedReturnValue(), -[PKTiledView transformFromViewToStrokeSpaceInDrawing:](self, "transformFromViewToStrokeSpaceInDrawing:", v11), v11, (objc_msgSend(v9, "_handleSingleTapAtDrawingLocation:", y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0) & 1) == 0))
    {
      [(PKTiledView *)self _showEditMenuFromLocation:v9 forAttachment:x, y];
    }
  }
}

- (void)_showEditMenuFromLocation:(CGPoint)location forAttachment:(id)attachment
{
  y = location.y;
  x = location.x;
  attachmentCopy = attachment;
  [(PKTiledView *)self becomeFirstResponder];
  [attachmentCopy setAttachmentChromeVisible:1 animated:1 highlightBackground:0];
  v7 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"PKEditMenuConfigurationIdentifier" sourcePoint:{x, y}];
  selectionController = [(PKTiledView *)self selectionController];
  v9 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  editMenuInteraction = [WeakRetained editMenuInteraction];
  [editMenuInteraction presentEditMenuWithConfiguration:v7];
}

- (id)didChangeDrawing:(id)drawing undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  v8 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if ([v8 isExternalAttachment] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 externalAttachmentDidChangeDrawing:drawingCopy];
  }

  [v8 drawing];
  if (undoableCopy)
    v9 = {;
    v10 = [v9 undoableMergeWithDrawing:drawingCopy];
  }

  else
    v9 = {;
    [v9 mergeWithDrawing:drawingCopy];
    v10 = 0;
  }

  [(PKTiledView *)self _handleDrawingDidChangeForAttachment:v8];

  return v10;
}

- (void)registerUndoCommand:(id)command
{
  commandCopy = command;
  undoManager = [(PKTiledView *)self undoManager];

  if (undoManager)
  {
    undoManager2 = [(PKTiledView *)self undoManager];
    drawingUndoTarget = [(PKTiledView *)self drawingUndoTarget];
    [commandCopy registerWithUndoManager:undoManager2 target:drawingUndoTarget selector:{-[PKTiledView drawingUndoSelector](self, "drawingUndoSelector")}];

    drawingUndoTarget2 = [(PKTiledView *)self drawingUndoTarget];

    if (drawingUndoTarget2 == self)
    {
      hoverConvertToShapeBlock = self->_hoverConvertToShapeBlock;
      if (!hoverConvertToShapeBlock)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v10 = self->_hoverConvertToShapeBlock;
        self->_hoverConvertToShapeBlock = v9;

        hoverConvertToShapeBlock = self->_hoverConvertToShapeBlock;
      }

      undoManager3 = [(PKTiledView *)self undoManager];
      v12 = [hoverConvertToShapeBlock indexOfObjectIdenticalTo:undoManager3];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = self->_hoverConvertToShapeBlock;
        undoManager4 = [(PKTiledView *)self undoManager];
        [v13 addObject:undoManager4];
      }
    }
  }
}

- (void)registerUndoCommands:(id)commands
{
  v19 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  undoManager = [(PKTiledView *)self undoManager];

  if (undoManager)
  {
    undoManager2 = [(PKTiledView *)self undoManager];
    groupsByEvent = [undoManager2 groupsByEvent];

    if ((groupsByEvent & 1) == 0)
    {
      undoManager3 = [(PKTiledView *)self undoManager];
      [undoManager3 beginUndoGrouping];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = commandsCopy;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(PKTiledView *)self registerUndoCommand:*(*(&v14 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    if ((groupsByEvent & 1) == 0)
    {
      undoManager4 = [(PKTiledView *)self undoManager];
      [undoManager4 endUndoGrouping];
    }
  }
}

- (void)registerUndoCommands:(id)commands andChangeToDrawing:(id)drawing
{
  v11[1] = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  drawingCopy = drawing;
  [(PKTiledView *)self registerUndoCommands:commandsCopy];
  [(PKTiledView *)self didChangeDrawing:drawingCopy];
  selectionController = [(PKTiledView *)self selectionController];
  v9 = selectionController;
  if (selectionController)
  {
    [(PKSelectionController *)selectionController clearSelectionIfNecessaryAnimated:0 withCompletion:?];
  }

  [(PKTiledView *)self didChangeDrawing:drawingCopy];
  v11[0] = drawingCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(PKTiledView *)self _selectionRefreshWithChangeToDrawings:v10 completion:&__block_literal_global_433];
}

- (void)canvasView:(id)view registerMultiStepUndoCommands:(id)commands
{
  viewCopy = view;
  commandsCopy = commands;
  undoManager = [(PKTiledView *)self undoManager];
  if (undoManager)
  {
    v9 = [commandsCopy count];

    if (v9)
    {
      firstObject = [commandsCopy firstObject];
      [(PKTiledView *)self canvasView:viewCopy registerUndoCommands:firstObject];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__PKTiledView_canvasView_registerMultiStepUndoCommands___block_invoke;
      block[3] = &unk_1E82D6400;
      block[4] = self;
      v12 = viewCopy;
      v13 = commandsCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __56__PKTiledView_canvasView_registerMultiStepUndoCommands___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) subarrayWithRange:{1, objc_msgSend(*(a1 + 48), "count") - 1}];
  [v1 canvasView:v2 registerMultiStepUndoCommands:?];
}

- (void)canvasView:(id)view registerUndoCommands:(id)commands
{
  commandsCopy = commands;
  undoManager = [(PKTiledView *)self undoManager];

  if (undoManager)
  {
    [(PKTiledView *)self registerUndoCommands:commandsCopy];
  }
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v5 recordUndoIfNecessary];

  [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator clearRefinableStrokes];
  [(PKTiledView *)self _dismissInsertSpaceHandlesIfNecessary];
  canvasView = [(PKTiledView *)self canvasView];
  _isCombiningStrokes = [canvasView _isCombiningStrokes];

  if (_isCombiningStrokes)
  {
    canvasView2 = [(PKTiledView *)self canvasView];
    [canvasView2 _finishCombiningStrokesIfNecessary];
  }

  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  drawingUUID = [undoCopy drawingUUID];
  v10 = [(PKTiledView *)self _attachmentForUUID:drawingUUID];

  if (!v10)
  {
    [(PKTiledView *)self updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:0 withCallback:0];
    goto LABEL_20;
  }

  undoManager = [(PKTiledView *)self undoManager];
  actionName = [undoCopy actionName];
  [undoManager setActionName:actionName];

  drawing = [v10 drawing];
  v14 = [undoCopy applyToDrawingReturnInverted:drawing];

  v35 = v14;
  if (v14)
  {
    [(PKTiledView *)self registerUndoCommand:v14];
  }

  v15 = +[PKStatisticsManager sharedStatisticsManager];
  actionName2 = [undoCopy actionName];
  strokes = [undoCopy strokes];
  canvasView3 = [(PKTiledView *)self canvasView];
  v19 = [canvasView3 ink];
  identifier = [v19 identifier];
  [(PKStatisticsManager *)v15 recordUndo:actionName2 forStrokes:strokes fallbackInkIdentifier:identifier];

  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v21 = self->_aggd_cachedVisibleStrokeCount;
  [(PKAnalyticsSession *)v21 incrementUndoCount];

  if (_isCombiningStrokes)
  {
    canvasView4 = [(PKTiledView *)self canvasView];
    if ([canvasView4 isHidden])
    {
    }

    else
    {
      canvasView5 = [(PKTiledView *)self canvasView];
      wantsCanvasVisible = [canvasView5 wantsCanvasVisible];

      if (wantsCanvasVisible)
      {
        v25 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_INFO, "Skipping tile update since canvas is visible", buf, 2u);
        }

        goto LABEL_16;
      }
    }

    [(PKTiledView *)self updateTilesForVisibleRect];
  }

  else
  {
    [(PKTiledView *)self updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:0 withCallback:0];
  }

LABEL_16:
  -[PKTiledView _handleDrawingDidChangeForAttachment:didChangeVisibleStrokes:](self, "_handleDrawingDidChangeForAttachment:didChangeVisibleStrokes:", v10, [undoCopy changesVisibleStrokes]);
  v26 = dispatch_get_global_queue(0, 0);
  drawing2 = [v10 drawing];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __27__PKTiledView_performUndo___block_invoke;
  v41[3] = &unk_1E82D67C8;
  v28 = v10;
  v42 = v28;
  [drawing2 clipStrokesIfNeededOnQueue:v26 completion:v41];

  if ([v28 isAtEndOfDocument])
  {
    drawing3 = [v28 drawing];
    _isEmpty = [drawing3 _isEmpty];

    if ((_isEmpty & 1) == 0)
    {
      v31 = objc_opt_class();
      v32 = PKDynamicCast(v31, v28);
      drawing4 = [v28 drawing];
      [drawing4 bounds];
      MaxY = CGRectGetMaxY(v43);
      [v28 drawingTransform];
      [v32 updateDrawingHeight:MaxY * sqrt(v40 * v40 + *buf * *buf)];
    }
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__PKTiledView_performUndo___block_invoke_3;
  block[3] = &unk_1E82D6DA8;
  objc_copyWeak(&v38, buf);
  v37 = v28;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);

LABEL_20:
}

void __27__PKTiledView_performUndo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PKTiledView_performUndo___block_invoke_2;
  v5[3] = &unk_1E82D6890;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], v5);
}

void __27__PKTiledView_performUndo___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) drawing];
  [v3 mergeWithDrawing:*(a1 + 40)];

  v2 = objc_opt_class();
  v4 = PKDynamicCast(v2, *(a1 + 32));
  if (v4)
  {
    [v4 drawingDidChange];
  }
}

void __27__PKTiledView_performUndo___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) drawing];
  [WeakRetained updateCurrentSelectionWithNewDrawingIfNecessary:v2];
}

+ (id)newInlineDrawingOfClass:(Class)class
{
  v3 = objc_alloc_init(class);
  [v3 set_canvasBounds:{0.0, 0.0, 768.0, 120.0}];
  return v3;
}

- (void)setCurrentDrawingBeingCopiedToCanvas:(id *)canvas
{
  v3 = a2;
  if (canvas)
  {
    v5 = v3;
    objc_storeWeak(canvas + 93, v3);
    canvasView = [canvas canvasView];
    [canvasView setCurrentDrawingBeingCopiedToCanvas:v5];

    v3 = v5;
  }
}

- (BOOL)_isScrollViewSizeAnimating
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  scrollView = [(PKTiledView *)self scrollView];
  layer = [scrollView layer];
  animationKeys = [layer animationKeys];

  v5 = [animationKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(animationKeys);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasPrefix:@"bounds.size"])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [animationKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  if ([(PKTiledView *)self needToUpdateViewFrame])
  {
    [(PKTiledView *)self _endHoverToolPreview];
    [(PKTiledView *)self newViewFrame];
    v28 = v4;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PKTiledView *)self frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [screen nativeScale];
    v23 = v22;

    if ([(PKTiledView *)self isDrawing]&& (v8 != v16 || v10 != v18 || sqrt((v6 - v14) * (v6 - v14) + (v28 - v12) * (v28 - v12)) >= 1.0 / fmax(v23, 1.0)))
    {
      canvasView = [(PKTiledView *)self canvasView];
      drawingGestureRecognizer = [canvasView drawingGestureRecognizer];
      [drawingGestureRecognizer cancel];
    }

    canvasView2 = [(PKTiledView *)self canvasView];
    [canvasView2 _finishCombiningStrokesIfNecessary];

    [(PKTiledView *)self _layoutSubviews];
    tileController = self->_tileController;

    [(PKSelectionController *)&tileController->super.isa _layoutViewsIfNecessary];
  }
}

- (void)_didAddDrawingAttachmentView
{
  if (self->_rulerHostingDelegate)
  {
    canvasView = [(PKTiledView *)self canvasView];
    isDrawing = [canvasView isDrawing];

    canvasView2 = [(PKTiledView *)self canvasView];
    drawingTouchThatHitNothing = [(PKTiledView *)self drawingTouchThatHitNothing];
    [(PKTiledView *)self canvasViewWillBeginNewStroke:canvasView2 withTouch:drawingTouchThatHitNothing location:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    rulerHostingDelegate = self->_rulerHostingDelegate;
    if (rulerHostingDelegate)
    {
      v8 = 1;
    }

    else
    {
      v8 = isDrawing;
    }

    if ((v8 & 1) == 0)
    {
      v9 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "Stroke already ended in _didAddDrawingAttachmentView", v12, 2u);
      }

      canvasView3 = [(PKTiledView *)self canvasView];
      [(PKTiledView *)self canvasViewDidEndDrawing:canvasView3];

      rulerHostingDelegate = self->_rulerHostingDelegate;
    }

    self->_rulerHostingDelegate = 0;
  }

  selectionController = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)selectionController _didAddDrawingAttachmentView];
}

- (void)_updateAttachmentOnscreenBounds
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  attachments = [(PKTiledView *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(attachments);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (![(PKTiledView *)self p_shouldSkipStrokeCacheInvalidationForAttachment:v7])
        {
          drawing = [v7 drawing];
          [(PKTiledView *)self visibleOnscreenBoundsForDrawing:drawing];
          [v7 visibleOnscreenBoundsDidChange:?];
        }
      }

      v4 = [attachments countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_layoutSubviewsUpdateTilesForRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v114 = *MEMORY[0x1E69E9840];
  if (self && self->_hoverPreviewActive)
  {
    goto LABEL_3;
  }

  scrollView = [(PKTiledView *)self scrollView];
  if ([scrollView isZooming] && (!self ? (v12 = 0.0) : (v12 = *&self->_tileLevel + *&self->_tileLevel), -[PKTiledView canvasZoomScale](self, "canvasZoomScale"), v12 > v13))
  {
    scrollView2 = [(PKTiledView *)self scrollView];
    [scrollView2 zoomScale];
    v16 = v15;
    if (self)
    {
      v17 = *&self->_tileLevel * 0.5;
    }

    else
    {
      v17 = 0.0;
    }

    if (v16 > v17)
    {
LABEL_3:
      scrollView3 = [(PKTiledView *)self scrollView];
      [scrollView3 zoomScale];
      if (self)
      {
        v6 = *&self->_tileLevel;
      }

      else
      {
        v6 = 0.0;
      }

      if (v5 >= v6)
      {
      }

      else
      {
        updateVisibleTilesAfterZoomOutBlock = self->_updateVisibleTilesAfterZoomOutBlock;

        if (!updateVisibleTilesAfterZoomOutBlock)
        {
          objc_initWeak(location, self);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __54__PKTiledView__layoutSubviewsUpdateTilesForRendering___block_invoke;
          block[3] = &unk_1E82D6D80;
          objc_copyWeak(&v110, location);
          v8 = dispatch_block_create(0, block);
          v9 = self->_updateVisibleTilesAfterZoomOutBlock;
          self->_updateVisibleTilesAfterZoomOutBlock = v8;

          v10 = dispatch_time(0, 100000000);
          dispatch_after(v10, MEMORY[0x1E69E96A0], self->_updateVisibleTilesAfterZoomOutBlock);
          objc_destroyWeak(&v110);
          objc_destroyWeak(location);
        }
      }

      return;
    }
  }

  else
  {
  }

  if (!self)
  {
LABEL_25:
    [(PKTiledView *)self frame];
    v22 = v21;
    v24 = v23;
    [(PKTiledView *)self newViewFrame];
    [(PKTiledView *)self setFrame:?];
    [(PKTiledView *)self frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    canvasView = [(PKTiledView *)self canvasView];
    [canvasView setFrame:{v26, v28, v30, v32}];

    [(PKTiledView *)self bounds];
    if (self)
    {
      liveAttachment = self->_liveAttachment;
    }

    else
    {
      liveAttachment = 0;
    }

    [(PKAttachmentView *)liveAttachment setFrame:?];
    scrollView4 = [(PKTiledView *)self scrollView];
    [scrollView4 zoomScale];
    v37 = v36;

    if (self)
    {
      v38 = floor(log2(1.0 / *&v37)) + 1.0;
      self->_gestureView = v38;
      tileScale = self->_tileScale;
      v40 = *&self->_tileLevel;
      objc_opt_self();
      self->_tileScale = round(exp2(v38) * 256.0);
      self->_tileLevel = v37;
    }

    else
    {
      objc_opt_self();
      v40 = 0.0;
      tileScale = 0.0;
    }

    hideCanvasBlock = self->_hideCanvasBlock;
    if (hideCanvasBlock)
    {
      dispatch_block_cancel(hideCanvasBlock);
      v42 = self->_hideCanvasBlock;
      self->_hideCanvasBlock = 0;
    }

    if (![(PKTiledView *)self _scrollViewIsScrollingOrZoomingOrResizing])
    {
      objc_initWeak(location, self);
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __54__PKTiledView__layoutSubviewsUpdateTilesForRendering___block_invoke_2;
      v96[3] = &unk_1E82D6D80;
      objc_copyWeak(&v97, location);
      v43 = dispatch_block_create(0, v96);
      v44 = self->_hideCanvasBlock;
      self->_hideCanvasBlock = v43;

      v45 = dispatch_time(0, 100000000);
      dispatch_after(v45, MEMORY[0x1E69E96A0], self->_hideCanvasBlock);
      objc_destroyWeak(&v97);
      objc_destroyWeak(location);
    }

    [(PKTiledView *)self frame];
    if (v47 == v22 && v46 == v24 && self->_tileScale == tileScale && *&self->_tileLevel == v40)
    {
      [(PKTiledView *)self updateTilesForVisibleRectRendering:renderingCopy offscreen:0 overrideAdditionalStrokes:0];
LABEL_80:
      self->_hoverPreviewActive = 0;
      return;
    }

    tileController = self->_tileController;
    if (tileController)
    {
      if (*&tileController[2]._contentZoomScale)
      {
        v49 = tileController[2]._completionHandlers;
        isDragging = [(NSMutableArray *)v49 isDragging];

        if ((isDragging & 1) == 0)
        {
          v51 = self->_tileController;
          if (v51)
          {
            [(PKSelectionController *)v51 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
          }
        }
      }
    }

    [(PKTiledView *)self _dismissInsertSpaceHandlesIfNecessary];
    attachmentViews = [(PKTiledView *)self attachmentViews];
    [(PKTiledView *)self frame];
    v55 = v54 != v24 || v53 != v22;
    if (v55)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v56 = attachmentViews;
      v57 = [v56 countByEnumeratingWithState:&v92 objects:v112 count:16];
      if (v57)
      {
        v58 = *v93;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v93 != v58)
            {
              objc_enumerationMutation(v56);
            }

            [*(*(&v92 + 1) + 8 * i) updateFrameForTextContainer];
          }

          v57 = [v56 countByEnumeratingWithState:&v92 objects:v112 count:16];
        }

        while (v57);

        if (!self)
        {
          v60 = 0.0;
          v55 = 1;
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    v60 = *&self->_tileLevel;
LABEL_60:
    if (v60 != v40)
    {
      [(PKTiledView *)self _layerContentsScale];
      v62 = v61;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v63 = attachmentViews;
      v64 = [v63 countByEnumeratingWithState:&v88 objects:v111 count:16];
      if (v64)
      {
        v65 = *v89;
        do
        {
          for (j = 0; j != v64; ++j)
          {
            if (*v89 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v88 + 1) + 8 * j);
            scrollView5 = [(PKTiledView *)self scrollView];
            [v67 pixelAlignForContentScale:scrollView5 enclosingScrollView:v62];
          }

          v64 = [v63 countByEnumeratingWithState:&v88 objects:v111 count:16];
        }

        while (v64);
      }

      v55 = 1;
    }

    [(PKTiledView *)self _hideCanvas];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v71 = [bundleIdentifier isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

    if ((v71 & 1) == 0)
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      if ([bundleIdentifier2 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
      {
      }

      else
      {
        mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier3 = [mainBundle3 bundleIdentifier];
        v76 = [bundleIdentifier3 isEqualToString:@"com.apple.quicklook.UIExtension"];

        if ((v76 & 1) == 0 && !PKIsQuickNoteOnPhone())
        {
          goto LABEL_79;
        }
      }
    }

    if (PKIsPhoneDevice())
    {
      v77 = 1;
    }

    else
    {
      v77 = _os_feature_enabled_impl();
    }

    if ((v55 & v77) == 1)
    {
      [(PKTiledView *)self _cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:0];
    }

LABEL_79:
    canvasView2 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self frame];
    [canvasView2 _setFixedPointSize:v79 drawingScale:{v80, *&v37}];

    [(PKTiledView *)self resizeTiles:attachmentViews completion:0];
    [(PKTiledView *)self updateTilesForVisibleRectRendering:renderingCopy offscreen:0 overrideAdditionalStrokes:0];
    if (!self)
    {
      return;
    }

    goto LABEL_80;
  }

  if (self->_disableTileRendering || ([(PKTiledView *)self isSystemSnapshotting]& 1) != 0)
  {
    return;
  }

  if (!self->_symbolPreviewActive || (-[PKTiledView isHidden](self, "isHidden") & 1) != 0 || (-[PKTiledView superview](self, "superview"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (-[PKTiledView superview](self, "superview"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isHidden], v19, v18, (v20 & 1) != 0))
  {
    self->_hoverPreviewActive = 1;
    goto LABEL_25;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  attachmentViews2 = [(PKTiledView *)self attachmentViews];
  v82 = [attachmentViews2 countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v82)
  {
    v83 = *v106;
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*v106 != v83)
        {
          objc_enumerationMutation(attachmentViews2);
        }

        v85 = *(*(&v105 + 1) + 8 * k);
        v103 = 0u;
        v104 = 0u;
        *location = 0u;
        if (v85)
        {
          [v85 drawingTransform];
          v100 = 0u;
          v101 = 0u;
          v99 = 0u;
          [v85 preResizeDrawingTransform];
          v86 = *location / *&v99;
        }

        else
        {
          v100 = 0uLL;
          v101 = 0uLL;
          v99 = 0uLL;
          v86 = NAN;
        }

        CGAffineTransformMakeScale(&v98, v86, v86);
        [v85 setTileTransform:&v98];
      }

      v82 = [attachmentViews2 countByEnumeratingWithState:&v105 objects:v113 count:16];
    }

    while (v82);
  }
}

void __54__PKTiledView__layoutSubviewsUpdateTilesForRendering___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 54);
    WeakRetained[54] = 0.0;
    v7 = WeakRetained;

    v3 = [v7 scrollView];
    [v3 zoomScale];
    if (v4 >= v7[89])
    {

      WeakRetained = v7;
    }

    else
    {
      v5 = [v7 scrollView];
      v6 = [v5 isZooming];

      WeakRetained = v7;
      if (v6)
      {
        [v7 updateTilesForVisibleRectRendering:1 offscreen:0 overrideAdditionalStrokes:0];
        WeakRetained = v7;
      }
    }
  }
}

void __54__PKTiledView__layoutSubviewsUpdateTilesForRendering___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateAttachmentOnscreenBounds];
    v2 = v3[100];
    v3[100] = 0;

    WeakRetained = v3;
  }
}

- (void)getAttachment:(id)attachment strokeTransform:(CGAffineTransform *)transform paperTransform:(CGAffineTransform *)paperTransform
{
  attachmentCopy = attachment;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  [(PKTiledView *)self getAttachment:attachmentCopy strokeTransform:transform paperTransform:paperTransform scrollViewContentOffset:?];
}

- (CGAffineTransform)contentCoordinateSpaceTransform
{
  contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];

  if (contentCoordinateSpace)
  {
    contentCoordinateSpace2 = [(PKTiledView *)self contentCoordinateSpace];
    canvasView = [(PKTiledView *)self canvasView];
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(contentCoordinateSpace2, canvasView, &retstr->a);
  }

  else
  {
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v9;
    *&retstr->tx = *(v8 + 32);
  }

  return result;
}

- (void)getAttachment:(id)attachment strokeTransform:(CGAffineTransform *)transform paperTransform:(CGAffineTransform *)paperTransform scrollViewContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  attachmentCopy = attachment;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView zoomScale];
  v14 = v13;

  drawingTouchThatHitNothing = [(PKTiledView *)self drawingTouchThatHitNothing];

  if (drawingTouchThatHitNothing)
  {
    standInAttachmentView = [(PKTiledView *)self standInAttachmentView];

    attachmentCopy = standInAttachmentView;
  }

  memset(&v45[1], 0, sizeof(CGAffineTransform));
  if (attachmentCopy)
  {
    [attachmentCopy drawingTransform];
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  tileContainerView = [attachmentCopy tileContainerView];
  [tileContainerView bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  tileContainerView2 = [attachmentCopy tileContainerView];
  [WeakRetained convertRect:tileContainerView2 fromView:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;

  memset(v45, 0, 48);
  canvasView = [(PKTiledView *)self canvasView];
  v33 = canvasView;
  if (canvasView)
  {
    [canvasView _replayCoordinateSystemTransform];
  }

  else
  {
    memset(v45, 0, 48);
  }

  t1 = v45[0];
  if (!CGAffineTransformIsIdentity(&t1))
  {
    ty = v45[0].ty;
    tx = v45[0].tx;
    v29 = *MEMORY[0x1E695EFF8];
    v31 = *(MEMORY[0x1E695EFF8] + 8);
    b = v45[0].b;
    a = v45[0].a;
    goto LABEL_12;
  }

  contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];

  if (contentCoordinateSpace)
  {
    memset(&t1, 0, sizeof(t1));
    [(PKTiledView *)self contentCoordinateSpaceTransform];
    tx = t1.tx;
    ty = t1.ty;
    v29 = *MEMORY[0x1E695EFF8];
    v31 = *(MEMORY[0x1E695EFF8] + 8);
    a = t1.a;
    b = t1.b;
LABEL_12:
    v14 = sqrt(b * b + a * a);
    y = -ty;
    x = -tx;
  }

  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeTranslation(&v44, v29 - x, v31 - y);
  CGAffineTransformMakeScale(&v41, v14, v14);
  t1 = v45[1];
  t2 = v41;
  CGAffineTransformConcat(&v42, &t1, &t2);
  t1 = v42;
  t2 = v44;
  CGAffineTransformConcat(&v43, &t1, &t2);
  v39 = *&v43.c;
  *&transform->a = *&v43.a;
  *&transform->c = v39;
  *&transform->tx = *&v43.tx;
  CGAffineTransformMakeTranslation(&t1, -x / v14, -y / v14);
  v40 = *&t1.c;
  *&paperTransform->a = *&t1.a;
  *&paperTransform->c = v40;
  *&paperTransform->tx = *&t1.tx;
}

- (id)canvasViewTouchView:(id)view
{
  liveAttachment = [(PKTiledView *)self liveAttachment];

  if (liveAttachment)
  {
    [(PKTiledView *)self liveAttachment];
  }

  else
  {
    [(PKTiledView *)self standInAttachmentView];
  }
  v5 = ;

  return v5;
}

- (id)_hitAttachment:(CGPoint)attachment includeStandinAttachment:(BOOL)standinAttachment expandBottomAttachment:(BOOL)bottomAttachment
{
  bottomAttachmentCopy = bottomAttachment;
  standinAttachmentCopy = standinAttachment;
  y = attachment.y;
  x = attachment.x;
  v66 = *MEMORY[0x1E69E9840];
  contentCoordinateSpace = [(PKTiledView *)self contentCoordinateSpace];
  if (contentCoordinateSpace && [(PKTiledView *)self disableTileRendering])
  {
    _visibleAttachments = [(PKTiledView *)self _visibleAttachments];
    v12 = [_visibleAttachments count];

    if (v12 == 1)
    {
      _visibleAttachments2 = [(PKTiledView *)self _visibleAttachments];
      firstObject = [_visibleAttachments2 firstObject];

      goto LABEL_28;
    }
  }

  else
  {
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  _visibleAttachments3 = [(PKTiledView *)self _visibleAttachments];
  v16 = [_visibleAttachments3 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (!v16)
  {

    if (!standinAttachmentCopy)
    {
LABEL_27:
      firstObject = 0;
      goto LABEL_28;
    }

LABEL_23:
    standInAttachmentView = [(PKTiledView *)self standInAttachmentView];
    if (standInAttachmentView)
    {
      standInAttachmentView2 = [(PKTiledView *)self standInAttachmentView];
      attachmentContainerView = [standInAttachmentView2 attachmentContainerView];
      isHidden = [attachmentContainerView isHidden];

      if ((isHidden & 1) == 0)
      {
        standInAttachmentView3 = [(PKTiledView *)self standInAttachmentView];
        [standInAttachmentView3 bounds];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        scrollView = [(PKTiledView *)self scrollView];
        [scrollView bounds];
        v52 = v51;

        standInAttachmentView4 = [(PKTiledView *)self standInAttachmentView];
        [standInAttachmentView4 convertPoint:self fromView:{x, y}];
        v55 = v54;
        v57 = v56;

        standInAttachmentView5 = [(PKTiledView *)self standInAttachmentView];
        v59 = [standInAttachmentView5 hitByTouchLocation:v55 bounds:{v57, v43, v45, v47, v49 + v52}];

        if (v59)
        {
          firstObject = [(PKTiledView *)self standInAttachmentView];
          goto LABEL_28;
        }
      }
    }

    goto LABEL_27;
  }

  v17 = *v62;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v62 != v17)
      {
        objc_enumerationMutation(_visibleAttachments3);
      }

      v19 = *(*(&v61 + 1) + 8 * i);
      viewRep = [v19 viewRep];
      [viewRep bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      if (v19 && ([v19 isAtEndOfDocument] & bottomAttachmentCopy) == 1)
      {
        scrollView2 = [(PKTiledView *)self scrollView];
        [scrollView2 bounds];
        v31 = v30;

        v28 = v28 + v31;
      }

      viewRep2 = [v19 viewRep];
      [viewRep2 convertPoint:self fromView:{x, y}];
      v34 = v33;
      v36 = v35;

      if ([v19 hitByTouchLocation:v34 bounds:{v36, v22, v24, v26, v28}])
      {
        firstObject = v19;
        goto LABEL_19;
      }
    }

    v16 = [_visibleAttachments3 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  firstObject = 0;
LABEL_19:

  if (!firstObject && standinAttachmentCopy)
  {
    goto LABEL_23;
  }

LABEL_28:

  return firstObject;
}

- (id)hitAttachment:(CGPoint)attachment includeStandinAttachment:(BOOL)standinAttachment expandBottomAttachment:(BOOL)bottomAttachment
{
  v5 = [(PKTiledView *)self _hitAttachment:standinAttachment includeStandinAttachment:bottomAttachment expandBottomAttachment:attachment.x, attachment.y];
  v6 = objc_opt_class();
  v7 = PKDynamicCast(v6, v5);

  return v7;
}

- (BOOL)isInNotesTextView
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v5)
  {
    superview = [(PKTiledView *)self superview];
    if (superview)
    {
      v7 = superview;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview2 = [v7 superview];

        v7 = superview2;
        if (!superview2)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(superview) = 1;
    }
  }

  else
  {
LABEL_6:
    LOBYTE(superview) = 0;
  }

  return superview;
}

- (void)_setupPencilShadowViewIfNecessary
{
  toolShadowShouldBeActive = [(PKTiledView *)self toolShadowShouldBeActive];
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];
  if (toolShadowShouldBeActive)
  {
    [PKPencilShadowView createShadowViewForSceneIfNecessary:windowScene];
  }

  else
  {
    [PKPencilShadowView hideShadowViewForSceneIfNecessary:windowScene];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__441;
  v21 = __Block_byref_object_dispose__442;
  v22 = 0;
  subviews = [(PKTiledView *)self subviews];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__PKTiledView_hitTest_withEvent___block_invoke;
  v12[3] = &unk_1E82D6B28;
  v15 = x;
  v16 = y;
  v14 = &v17;
  v12[4] = self;
  v9 = eventCopy;
  v13 = v9;
  [subviews enumerateObjectsWithOptions:2 usingBlock:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __33__PKTiledView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 convertPoint:*(a1 + 32) fromView:{*(a1 + 56), *(a1 + 64)}];
  v7 = [a2 hitTest:*(a1 + 40) withEvent:?];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 48) + 8) + 40) || ((v10 = *(*(a1 + 32) + 728), v10 == a2) ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    *a4 = 1;
  }
}

- (id)_visibleTilesForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [(PKTiledView *)self bounds];
  v5 = [(PKTiledView *)self _tilesForAttachment:attachmentCopy bounds:0 invert:?];

  return v5;
}

- (id)_tilesForAttachment:(id)attachment bounds:(CGRect)bounds invert:(BOOL)invert
{
  invertCopy = invert;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  array = [MEMORY[0x1E695DF70] array];
  v12 = objc_opt_class();
  v13 = PKDynamicCast(v12, attachmentCopy);
  v46 = v13;
  if (v13)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    tiles = [v13 tiles];
    allValues = [tiles allValues];

    v16 = [allValues countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v16)
    {
      v17 = *v49;
      do
      {
        v18 = 0;
        do
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v19 = *(*(&v48 + 1) + 8 * v18);
          if (v19)
          {
            v21 = v19[27];
            v20 = v19[28];
            v22 = v19[29];
            v23 = v19[30];
          }

          else
          {
            v20 = 0.0;
            v22 = 0.0;
            v23 = 0.0;
            v21 = 0.0;
          }

          tileContainerView = [attachmentCopy tileContainerView];
          [(PKTiledView *)self convertRect:tileContainerView fromView:v21, v20, v22, v23];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v55.origin.x = v26;
          v55.origin.y = v28;
          v55.size.width = v30;
          v55.size.height = v32;
          v56.origin.x = x;
          v56.origin.y = y;
          v56.size.width = width;
          v56.size.height = height;
          if (CGRectIntersectsRect(v55, v56))
          {
            tileContainerView2 = [v46 tileContainerView];
            [tileContainerView2 bounds];
            if (v19)
            {
              v38 = *(v19 + 27);
              v39 = *(v19 + 28);
              v40 = *(v19 + 29);
              v41 = *(v19 + 30);
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v38 = 0;
            }

            v42 = CGRectIntersectsRect(*&v34, *&v38);
          }

          else
          {
            v42 = 0;
          }

          if (v42 != invertCopy)
          {
            [array addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v43 = [allValues countByEnumeratingWithState:&v48 objects:v52 count:16];
        v16 = v43;
      }

      while (v43);
    }

    v44 = array;
  }

  else
  {
    v44 = MEMORY[0x1E695E0F0];
  }

  return v44;
}

- (void)setSixChannelBlendingDisableSnapshotting:(BOOL)snapshotting
{
  self->_isDoingLayoutAfterLiveWindowResizing = snapshotting;
  [self->_drawingPolicy setSixChannelBlendingMode:{-[PKTiledView _activeSixChannelBlendingMode](self, "_activeSixChannelBlendingMode")}];

  [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
}

- (void)setSixChannelBlendingRendersTransparent:(BOOL)transparent
{
  self->_shouldHideCanvasAfterScroll = transparent;
  [(PKTileController *)self->_drawingTouchThatHitNothing setTransparentBlending:transparent];
  _activeSixChannelBlendingMode = [(PKTiledView *)self _activeSixChannelBlendingMode];
  drawingPolicy = self->_drawingPolicy;

  [drawingPolicy setSixChannelBlendingMode:_activeSixChannelBlendingMode];
}

- (BOOL)_snapshottingDisabled
{
  if ([(PKTiledView *)self sixChannelBlendingDisableSnapshotting])
  {
    return 1;
  }

  if ((*&self->_tiledViewFlags & 0x10) == 0)
  {
    return 0;
  }

  delegate = [(PKTiledView *)self delegate];
  v3 = [delegate _canvasViewSnapshottingDisabled:self];

  return v3;
}

- (void)_canvasViewWillCreateSnapshot
{
  if ((*&self->_tiledViewFlags & 8) != 0)
  {
    delegate = [(PKTiledView *)self delegate];
    [delegate _canvasViewWillCreateSnapshot:self];
  }
}

- (void)setDisableTileRendering:(BOOL)rendering
{
  v30 = *MEMORY[0x1E69E9840];
  BYTE1(self->_refineAnimationController) = rendering;
  if (rendering)
  {
    selfCopy = self;
    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(PKTiledView *)selfCopy attachmentViews];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v4)
    {
      v5 = *v25;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          [v7 setRenderingEnabled:0];
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          tiles = [v7 tiles];
          objectEnumerator = [tiles objectEnumerator];

          v10 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
          v11 = selfCopy;
          if (v10)
          {
            v12 = *v21;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                v14 = *(*(&v20 + 1) + 8 * j);
                if (v14)
                {
                  atomic_fetch_add((v14 + 16), 1uLL);
                }

                [(PKRendererTile *)v14 purgeTileLayers];
              }

              v10 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          selfCopy = v11;
          tiles2 = [v7 tiles];
          [tiles2 removeAllObjects];

          purgedTiles = [v7 purgedTiles];
          [purgedTiles removeAllObjects];
        }

        v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v4);
    }

    drawingTouchThatHitNothing = selfCopy->_drawingTouchThatHitNothing;
    if (drawingTouchThatHitNothing)
    {
      [(PKTileController *)drawingTouchThatHitNothing teardown];
      v18 = selfCopy->_drawingTouchThatHitNothing;
      selfCopy->_drawingTouchThatHitNothing = 0;
    }
  }
}

- (void)_finishCombiningStrokesIfNecessaryForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (attachmentCopy)
  {
    canvasView = [(PKTiledView *)self canvasView];
    if ([canvasView _isCombiningStrokes])
    {
      canvasView2 = [(PKTiledView *)self canvasView];
      _combineStrokesDrawingUUID = [canvasView2 _combineStrokesDrawingUUID];
      drawing = [attachmentCopy drawing];
      uuid = [drawing uuid];
      v9 = [_combineStrokesDrawingUUID isEqual:uuid];

      if (v9)
      {
        goto LABEL_6;
      }

      canvasView = [(PKTiledView *)self canvasView];
      [canvasView _finishCombiningStrokesIfNecessary];
    }
  }

LABEL_6:
}

- (void)renderAttachment:(id)attachment intoCanvas:(id)canvas showing:(BOOL)showing
{
  v176[9] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  canvasCopy = canvas;
  currentDrawingBeingCopiedToCanvas = [(PKTiledView *)&self->super.super.super.isa currentDrawingBeingCopiedToCanvas];
  drawing = [attachmentCopy drawing];

  if (currentDrawingBeingCopiedToCanvas != drawing)
  {
    [(PKTiledView *)self _finishCombiningStrokesIfNecessaryForAttachment:attachmentCopy];
    v132 = [(PKTiledView *)self _visibleTilesForAttachment:attachmentCopy];
    canvasView = [(PKTiledView *)self canvasView];
    tileMaskView = [attachmentCopy tileMaskView];
    [tileMaskView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    tileMaskView2 = [attachmentCopy tileMaskView];
    [canvasView convertRect:tileMaskView2 fromView:{v15, v17, v19, v21}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    if (attachmentCopy)
    {
      if (([attachmentCopy isAtEndOfDocument] & 1) != 0 || (-[PKTiledView standInAttachmentView](self, "standInAttachmentView"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31 == attachmentCopy))
      {
        scrollView = [(PKTiledView *)self scrollView];
        [scrollView bounds];
        v34 = v33;

        standInAttachmentView = [(PKTiledView *)self standInAttachmentView];
        v30 = v30 + v34;

        if (standInAttachmentView == attachmentCopy)
        {
          scrollView2 = [(PKTiledView *)self scrollView];
          [scrollView2 bounds];
          v28 = v37;
        }
      }
    }

    [(PKTiledView *)self bounds];
    v181.origin.x = v38;
    v181.origin.y = v39;
    v181.size.width = v40;
    v181.size.height = v41;
    v177.origin.x = v24;
    v177.origin.y = v26;
    v177.size.width = v28;
    v177.size.height = v30;
    v178 = CGRectIntersection(v177, v181);
    x = v178.origin.x;
    y = v178.origin.y;
    width = v178.size.width;
    height = v178.size.height;
    [(PKTiledView *)self bounds];
    v47 = v46;
    [(PKTiledView *)self _layerContentsScale];
    v49 = DKDMultiplyRectScalar(x, v47 - y - height, width, height, v48);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    [(PKTiledView *)self suspendWorkForDrawing];
    showingCopy = showing;
    objc_initWeak(&location, self);
    [(PKTiledView *)self getAttachment:attachmentCopy strokeTransform:v173 paperTransform:v172];
    if (self)
    {
      v56 = v173[1];
      *&self->_strokeTransformAtStartOfStroke.b = v173[0];
      *&self->_strokeTransformAtStartOfStroke.d = v56;
      *&self->_strokeTransformAtStartOfStroke.ty = v173[2];
    }

    drawing2 = [attachmentCopy drawing];
    [(PKTiledView *)&self->super.super.super.isa setCurrentDrawingBeingCopiedToCanvas:drawing2];

    v163 = 0;
    v164 = &v163;
    v165 = 0x6012000000;
    v166 = __Block_byref_object_copy__444;
    v167 = __Block_byref_object_dispose__445;
    v168 = "";
    v58 = *(MEMORY[0x1E695EFD0] + 16);
    v169 = *MEMORY[0x1E695EFD0];
    v170 = v58;
    v171 = *(MEMORY[0x1E695EFD0] + 32);
    v157 = 0;
    v158 = &v157;
    v159 = 0x3032000000;
    v160 = __Block_byref_object_copy__441;
    v161 = __Block_byref_object_dispose__442;
    v162 = 0;
    if ([(PKTiledView *)self _sixChannelBlendingIsActive])
    {
      if (![(PKTiledView *)self _snapshottingDisabled])
      {
        [(PKTiledView *)self _canvasViewWillCreateSnapshot];
        window = [(PKTiledView *)self window];
        contentSnapshottingView = [(PKTiledView *)self contentSnapshottingView];
        if (!contentSnapshottingView)
        {
          contentSnapshottingView = window;
        }

        v129 = contentSnapshottingView;
        canvasView2 = [(PKTiledView *)self canvasView];
        _rendererController = [canvasView2 _rendererController];
        if (_rendererController)
        {
          v62 = _rendererController[520];
        }

        else
        {
          v62 = 0;
        }

        +[PKMetalUtility layerContentsScale];
        v64 = v63;
        [v129 layer];
        v123 = v55;
        v65 = v53;
        v66 = v51;
        v128 = v67 = v49;
        [v128 bounds];
        v122 = v64;
        v72 = DKDMultiplyRectScalar(v68, v69, v70, v71, v64);
        v179.origin.x = DKDRoundedRectForScale(v72, v73, v74, v75, 1.0);
        v76 = v179.origin.x;
        v77 = v179.origin.y;
        v78 = v179.size.width;
        v79 = v179.size.height;
        v80 = CGRectGetWidth(v179);
        v180.origin.x = v76;
        v180.origin.y = v77;
        v180.size.width = v78;
        v180.size.height = v79;
        v81 = CGRectGetHeight(v180);
        canvasView3 = [(PKTiledView *)self canvasView];
        v83 = canvasView3;
        v84 = 1.0;
        if (v81 >= 1.0)
        {
          v85 = v81;
        }

        else
        {
          v85 = 1.0;
        }

        if (v80 >= 1.0)
        {
          v84 = v80;
        }

        v130 = [canvasView3 snapshotFramebufferWithSize:{v84, v85}];

        v51 = v66;
        v55 = v123;
        v49 = v67;
        v53 = v65;
        v86 = v130;
        if (v130 && *(v130 + 56))
        {
          v124 = *MEMORY[0x1E6979F68];
          window2 = [(PKTiledView *)self window];
          screen = [window2 screen];
          displayConfiguration = [screen displayConfiguration];
          name = [displayConfiguration name];

          if (!name)
          {
            mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
            name2 = [mainDisplay name];

            v92 = @"LCD";
            if (name2)
            {
              v92 = name2;
            }

            name = v92;
          }

          window3 = [(PKTiledView *)self window];
          windowScene = [window3 windowScene];

          v94 = v122;
          if (objc_opt_respondsToSelector())
          {
            renderingEnvironment = [windowScene renderingEnvironment];
            if (objc_opt_respondsToSelector())
            {
              systemDisplayIdentifier = [renderingEnvironment systemDisplayIdentifier];
              if (systemDisplayIdentifier)
              {

                v97 = systemDisplayIdentifier;
                v124 = @"systemIdentifier";
                name = v97;
              }
            }

            v94 = v122;
          }

          isExtendedDynamicRangeRenderingActive = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
          memset(&v156, 0, sizeof(v156));
          CGAffineTransformMakeScale(&v156, v94, v94);
          memset(&v155, 0, sizeof(v155));
          m = v156;
          CATransform3DMakeAffineTransform(&v155, &m);
          v99 = *MEMORY[0x1E6979FD0];
          v175[0] = *MEMORY[0x1E6979FB0];
          v175[1] = v124;
          v176[0] = v99;
          v176[1] = name;
          v100 = *MEMORY[0x1E6979F50];
          v176[2] = *(v130 + 56);
          v101 = *MEMORY[0x1E697A000];
          v175[2] = v100;
          v175[3] = v101;
          v151 = *&v155.m31;
          v152 = *&v155.m33;
          v153 = *&v155.m41;
          v154 = *&v155.m43;
          *&m.a = *&v155.m11;
          *&m.c = *&v155.m13;
          *&m.tx = *&v155.m21;
          v150 = *&v155.m23;
          v102 = [MEMORY[0x1E696B098] valueWithCATransform3D:&m];
          v176[3] = v102;
          v175[4] = *MEMORY[0x1E6979F40];
          v103 = MEMORY[0x1E696AD98];
          context = [v128 context];
          v105 = [v103 numberWithUnsignedInt:{objc_msgSend(context, "contextId")}];
          v176[4] = v105;
          v175[5] = *MEMORY[0x1E6979FA8];
          v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v128];
          v176[5] = v106;
          v175[6] = *MEMORY[0x1E6979F88];
          v107 = [MEMORY[0x1E696AD98] numberWithBool:!isExtendedDynamicRangeRenderingActive & v62];
          v176[6] = v107;
          v175[7] = *MEMORY[0x1E697A008];
          v108 = [MEMORY[0x1E696AD98] numberWithBool:isExtendedDynamicRangeRenderingActive];
          v175[8] = *MEMORY[0x1E6979F80];
          v176[7] = v108;
          v176[8] = MEMORY[0x1E695E118];
          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:9];

          defaultDrawingClass = self->_defaultDrawingClass;
          v142[0] = MEMORY[0x1E69E9820];
          v142[1] = 3221225472;
          v142[2] = __51__PKTiledView_renderAttachment_intoCanvas_showing___block_invoke;
          v142[3] = &unk_1E82D6B50;
          v143 = v109;
          v144 = v129;
          selfCopy = self;
          v147 = &v163;
          v148 = &v157;
          v146 = v130;
          v111 = v109;
          [(objc_class *)defaultDrawingClass avoidSnapshot:v142];

          v86 = v130;
        }
      }

      v112 = v132;
      v113 = [(PKTiledView *)self ink];
      if ([v113 _isEraserInk])
      {
      }

      else
      {
        v121 = v158[5] == 0;

        if (!v121)
        {

          v114 = 0;
          v112 = MEMORY[0x1E695E0F0];
          goto LABEL_38;
        }
      }
    }

    else
    {
      v112 = v132;
    }

    v114 = 1;
LABEL_38:
    canvasView4 = [(PKTiledView *)self canvasView];
    drawing3 = [attachmentCopy drawing];
    [(PKTiledView *)self _layerContentsScale];
    v118 = v117;
    v119 = v158[5];
    v120 = *(v164 + 4);
    *&v155.m11 = *(v164 + 3);
    *&v155.m13 = v120;
    *&v155.m21 = *(v164 + 5);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __51__PKTiledView_renderAttachment_intoCanvas_showing___block_invoke_462;
    v133[3] = &unk_1E82D6B78;
    v134 = canvasCopy;
    v136[1] = *&v49;
    v136[2] = v51;
    v136[3] = v53;
    v136[4] = v55;
    v137 = v172[0];
    v138 = v172[1];
    v139 = v172[2];
    objc_copyWeak(v136, &location);
    v140 = showingCopy;
    v135 = attachmentCopy;
    v141 = v114;
    [canvasView4 _setDrawing:drawing3 tiles:v112 tileScale:v119 snapshotTexture:&v155 snapshotTextureTransform:v133 completionBlock:v118];

    objc_destroyWeak(v136);
    _Block_object_dispose(&v157, 8);

    _Block_object_dispose(&v163, 8);
    objc_destroyWeak(&location);
  }
}

- (id)currentDrawingBeingCopiedToCanvas
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 93);
    v1 = vars8;
  }

  return WeakRetained;
}

void __51__PKTiledView_renderAttachment_intoCanvas_showing___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.pencilkit", "Tiles");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Snapshot", buf, 2u);
  }

  if (CARenderServerSnapshot())
  {
    [*(a1 + 40) bounds];
    v4 = v3;
    [*(a1 + 40) bounds];
    [*(a1 + 48) convertRect:*(a1 + 40) fromView:{0.0, 0.0, v4}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [*(a1 + 48) bounds];
    DKDNormalizedSubrectInRect(v6, v8, v10, v12);
    [PKMetalUtility transformConvertingRect:"transformConvertingRect:toRect:percent:" toRect:0x3FF0000000000000 percent:?];
    v13 = *(*(a1 + 64) + 8);
    v14 = v18;
    v13[3] = *buf;
    v13[4] = v14;
    v13[5] = v19;
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = *(v15 + 24);
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v16);
  }
}

void __51__PKTiledView_renderAttachment_intoCanvas_showing___block_invoke_462(uint64_t a1)
{
  [*(a1 + 32) setViewScissor:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 104);
  *&v41.a = *(a1 + 88);
  *&v41.c = v2;
  *&v41.tx = *(a1 + 120);
  [*(a1 + 32) setPaperTransform:&v41];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 136) == 1)
  {
    if (WeakRetained)
    {
      v5 = [WeakRetained canvasView];
      v6 = [v5 wantsCanvasVisible];

      if (v6)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v7 = [*(a1 + 40) drawing];
        v8 = [v7 uuid];
        v9 = [v4 attachmentForUUID:v8];

        if (*(a1 + 137) == 1)
        {
          [v9 setContentHidden:1];
        }

        if ([v4 canvasViewZOrderPolicy] == 2)
        {
          v10 = *(a1 + 32);
          [v10 bounds];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v9 superview];
          [v10 convertRect:v19 toView:{v12, v14, v16, v18}];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          [*(a1 + 32) frame];
          [*(a1 + 32) bounds];
          MidX = CGRectGetMidX(v42);
          [*(a1 + 32) bounds];
          MidY = CGRectGetMidY(v43);
          CGAffineTransformMakeTranslation(&v39, MidX, MidY);
          DKDTransformInTransformSpace(&v41, &v39, &v40);
          v34 = *(a1 + 32);
          v41 = v40;
          [v34 setTransform:&v41];
          v35 = [v9 superview];
          [v35 insertSubview:*(a1 + 32) aboveSubview:v9];

          v36 = [v4 topZAttachment];
          [*(a1 + 32) setIsUnderBlendedContent:v9 != v36];
        }

        v37 = [*(a1 + 32) isHidden];
        [*(a1 + 32) setHidden:0];
        if (v37 && (v4[220] & 0x20) != 0)
        {
          v38 = [v4 delegate];
          [v38 canvasView:v4 didChangeHiddenState:0];
        }

        [MEMORY[0x1E6979518] commit];
        kdebug_trace();
      }
    }
  }

  [(PKTiledView *)v4 setCurrentDrawingBeingCopiedToCanvas:?];
}

- (void)_copyFromCanvas:(id)canvas intoAttachment:(id)attachment hideCanvas:(BOOL)hideCanvas strokes:(id)strokes
{
  hideCanvasCopy = hideCanvas;
  v131 = *MEMORY[0x1E69E9840];
  canvasCopy = canvas;
  attachmentCopy = attachment;
  strokesCopy = strokes;
  drawing = [attachmentCopy drawing];
  strokes = [drawing strokes];
  v10 = [strokes copy];

  v75 = v10;
  v82 = [(PKTiledView *)self _visibleTilesForAttachment:attachmentCopy];
  v11 = [v10 mutableCopy];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  reverseObjectEnumerator = [strokesCopy reverseObjectEnumerator];
  v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v119 objects:v130 count:16];
  if (v13)
  {
    v14 = *v120;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v120 != v14)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v16 = *(*(&v119 + 1) + 8 * i);
        lastObject = [v11 lastObject];
        LODWORD(v16) = [lastObject isEqual:v16];

        if (!v16)
        {
          v25 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Unexpected stroke in expectedTileStrokes", buf, 2u);
          }

          goto LABEL_23;
        }

        [v11 removeLastObject];
      }

      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v119 objects:v130 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  reverseObjectEnumerator = v82;
  v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v19)
  {
    v20 = *v115;
LABEL_11:
    v21 = 0;
    while (1)
    {
      if (*v115 != v20)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      Property = *(*(&v114 + 1) + 8 * v21);
      if (Property)
      {
        Property = objc_getProperty(Property, v18, 136, 1);
      }

      v23 = Property;
      v24 = v23 == 0;

      if (v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v114 objects:v129 count:16];
        if (v19)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_23:
    v76 = 1;
  }

  else
  {
LABEL_19:
    v76 = 0;
  }

  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  [(PKTiledView *)self getAttachment:attachmentCopy strokeTransform:v124 paperTransform:v123 scrollViewContentOffset:?];

  if (hideCanvasCopy)
  {
    [(PKTiledView *)self setLiveAttachment:?];
  }

  if ([strokesCopy count])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v31 = strokesCopy;
    v32 = [v31 countByEnumeratingWithState:&v110 objects:v128 count:16];
    if (v32)
    {
      v33 = *v111;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v111 != v33)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v110 + 1) + 8 * j) renderBounds];
          v134.origin.x = v35;
          v134.origin.y = v36;
          v134.size.width = v37;
          v134.size.height = v38;
          v132.origin.x = x;
          v132.origin.y = y;
          v132.size.width = width;
          v132.size.height = height;
          v133 = CGRectUnion(v132, v134);
          x = v133.origin.x;
          y = v133.origin.y;
          width = v133.size.width;
          height = v133.size.height;
        }

        v32 = [v31 countByEnumeratingWithState:&v110 objects:v128 count:16];
      }

      while (v32);
    }

    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v82, "count")}];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v40 = v82;
    v41 = [v40 countByEnumeratingWithState:&v106 objects:v127 count:16];
    if (v41)
    {
      v42 = *v107;
      do
      {
        v43 = 0;
        do
        {
          if (*v107 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = *(*(&v106 + 1) + 8 * v43);
          if (v44)
          {
            v45 = v44[23];
            v46 = v44[24];
            v47 = v44[25];
            v48 = v44[26];
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v45 = 0;
          }

          v135.origin.x = x;
          v135.origin.y = y;
          v135.size.width = width;
          v135.size.height = height;
          if (CGRectIntersectsRect(*&v45, v135))
          {
            [v39 addObject:v44];
          }

          ++v43;
        }

        while (v41 != v43);
        v49 = [v40 countByEnumeratingWithState:&v106 objects:v127 count:16];
        v41 = v49;
      }

      while (v49);
    }
  }

  else
  {
    v39 = 0;
    v76 = 1;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v50 = v39;
  v51 = [v50 countByEnumeratingWithState:&v102 objects:v126 count:16];
  if (v51)
  {
    v52 = *v103;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v103 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v102 + 1) + 8 * k);
        if (v54)
        {
          atomic_fetch_add((v54 + 16), 1uLL);
        }
      }

      v51 = [v50 countByEnumeratingWithState:&v102 objects:v126 count:16];
    }

    while (v51);
  }

  v55 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v82, "count")}];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v56 = v82;
  v57 = [v56 countByEnumeratingWithState:&v98 objects:v125 count:16];
  if (v57)
  {
    v58 = *v99;
    do
    {
      v59 = 0;
      do
      {
        if (*v99 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v60 = *(*(&v98 + 1) + 8 * v59);
        if (v60)
        {
          v61 = atomic_load((v60 + 16));
        }

        else
        {
          v61 = 0;
        }

        v62 = [MEMORY[0x1E696AD98] numberWithInteger:v61];
        if (v60)
        {
          v63 = *(v60 + 120);
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;
        [v55 setObject:v62 forKeyedSubscript:v64];

        ++v59;
      }

      while (v57 != v59);
      v65 = [v56 countByEnumeratingWithState:&v98 objects:v125 count:16];
      v57 = v65;
    }

    while (v65);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKTiledView__copyFromCanvas_intoAttachment_hideCanvas_strokes___block_invoke;
  aBlock[3] = &unk_1E82D6BA0;
  v73 = v11;
  v87 = v73;
  v66 = v50;
  v88 = v66;
  v67 = v55;
  v89 = v67;
  v68 = v56;
  v90 = v68;
  v96 = v76;
  v69 = v75;
  v97 = hideCanvasCopy;
  v91 = v69;
  selfCopy = self;
  v77 = canvasCopy;
  v93 = v77;
  v79 = attachmentCopy;
  v94 = v79;
  v70 = strokesCopy;
  v95 = v70;
  v71 = _Block_copy(aBlock);
  if ([v66 count] && !-[PKTiledView disableTileRendering](self, "disableTileRendering", v73))
  {
    tileController = [(PKTiledView *)self tileController];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __65__PKTiledView__copyFromCanvas_intoAttachment_hideCanvas_strokes___block_invoke_464;
    v84[3] = &unk_1E82D63B0;
    v85 = v71;
    if (tileController)
    {
      [(PKMetalRendererController *)tileController[3] updateTiles:v66 withNewStrokes:v70 completionBlock:v84];
    }
  }

  else
  {
    v71[2](v71);
  }
}

void __65__PKTiledView__copyFromCanvas_intoAttachment_hideCanvas_strokes___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) copy];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v7)
  {
    v8 = *v65;
    do
    {
      v9 = 0;
      do
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v64 + 1) + 8 * v9);
        if (v10)
        {
          v11 = atomic_load((v10 + 16));
          v12 = *(v10 + 120);
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = *(a1 + 48);
        v14 = v12;
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = v11 == [v15 unsignedIntegerValue];

        if (v16)
        {
          [(PKRendererTile *)v10 updateDisableTransactionActions:1 reloadContents:?];
        }

        ++v9;
      }

      while (v7 != v9);
      v17 = [v6 countByEnumeratingWithState:&v64 objects:v73 count:16];
      v7 = v17;
    }

    while (v17);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v18 = *(a1 + 56);
  v20 = [v18 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (!v20)
  {
    v57 = 0;
    goto LABEL_45;
  }

  v57 = 0;
  v21 = *v61;
  do
  {
    v22 = 0;
    do
    {
      if (*v61 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v60 + 1) + 8 * v22);
      if (*(a1 + 104) == 1)
      {
        if (v23)
        {
          objc_setProperty_atomic_copy(*(*(&v60 + 1) + 8 * v22), v19, 0, 136);
        }
      }

      else
      {
        if (v23)
        {
          v24 = atomic_load(v23 + 2);
          v25 = v23[15];
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        v26 = *(a1 + 48);
        v27 = v25;
        v28 = [v26 objectForKeyedSubscript:v27];
        v29 = v24 == [v28 unsignedIntegerValue];

        if (!v29)
        {
          goto LABEL_36;
        }

        if (v23)
        {
          Property = objc_getProperty(v23, v19, 136, 1);
        }

        else
        {
          Property = 0;
        }

        v31 = Property;
        v32 = [v31 isEqualToArray:v5];

        if ((v32 & 1) == 0)
        {
          v36 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7CCA000, v36, OS_LOG_TYPE_DEFAULT, "Detected a tile with unexpected strokes", buf, 2u);
          }

          if (v23)
          {
            objc_setProperty_atomic_copy(v23, v19, 0, 136);
          }

LABEL_36:
          v57 = 1;
          goto LABEL_37;
        }

        if (v23)
        {
          v34 = objc_getProperty(v23, v33, 136, 1);

          v5 = v34;
          objc_setProperty_atomic_copy(v23, v35, *(a1 + 64), 136);
        }

        else
        {

          v5 = 0;
        }
      }

LABEL_37:
      ++v22;
    }

    while (v20 != v22);
    v37 = [v18 countByEnumeratingWithState:&v60 objects:v72 count:16];
    v20 = v37;
  }

  while (v37);
LABEL_45:

  if (*(a1 + 105) == 1)
  {
    v38 = [*(a1 + 72) liveAttachment];
    v39 = v38 == 0;

    if (v39)
    {
      kdebug_trace();
      [*(a1 + 72) _hideCanvas];
      v45 = MEMORY[0x1E6979518];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __65__PKTiledView__copyFromCanvas_intoAttachment_hideCanvas_strokes___block_invoke_463;
      v58[3] = &unk_1E82D6388;
      v59 = *(a1 + 80);
      [v45 setCompletionBlock:v58];
      v40 = v59;
    }

    else
    {
      v40 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v40, OS_LOG_TYPE_DEBUG, "Skipped hiding canvas because a new stroke started", buf, 2u);
      }
    }

    goto LABEL_58;
  }

  v40 = [*(a1 + 80) drawing];
  v41 = [*(a1 + 88) drawing];
  v42 = v41;
  if (v40 == v41)
  {
    v46 = [(PKTiledView *)*(a1 + 72) currentDrawingBeingCopiedToCanvas];
    if (!v46)
    {

      goto LABEL_58;
    }

    v47 = v46;
    v48 = [(PKTiledView *)*(a1 + 72) currentDrawingBeingCopiedToCanvas];
    v49 = [*(a1 + 88) drawing];
    v50 = v48 == v49;

    if (!v50)
    {
      goto LABEL_51;
    }
  }

  else
  {

LABEL_51:
    v43 = objc_opt_class();
    v44 = PKDynamicCast(v43, *(a1 + 88));
    v40 = v44;
    if (v44)
    {
      [v44 setContentHidden:0];
    }

LABEL_58:
  }

  [MEMORY[0x1E6979518] commit];
  if ((*(a1 + 104) | v57))
  {
    v51 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 104);
      *buf = 67109376;
      v69 = v56;
      v70 = 1024;
      v71 = v57 & 1;
      _os_log_debug_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_DEBUG, "Updating tiles after copyFromCanvas: %d, %d", buf, 0xEu);
    }

    [*(a1 + 72) updateTilesForVisibleRect];
  }

  if ([*(a1 + 96) count])
  {
    v52 = [*(a1 + 72) selectionController];
    v53 = [(PKSelectionController *)v52 hasStrokesOrElementsSelection];

    if (v53)
    {
      v54 = [*(a1 + 72) selectionController];
      v55 = v54;
      if (v54)
      {
        [(PKSelectionController *)v54 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }
  }
}

- (void)resizeTiles:(id)tiles completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  tilesCopy = tiles;
  completionCopy = completion;
  v7 = completionCopy;
  drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
  if (!drawingTouchThatHitNothing)
  {
LABEL_6:
    if (v7)
    {
      (v7)[2](v7, drawingTouchThatHitNothing == 0);
    }

    goto LABEL_8;
  }

  v36 = completionCopy;
  if (self->_disableTileRendering || ([(PKTiledView *)self isSystemSnapshotting]& 1) != 0 || self->_symbolPreviewActive)
  {
    v7 = v36;
    goto LABEL_6;
  }

  v9 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    gestureView = self->_gestureView;
    *buf = 134217984;
    v49 = gestureView;
    _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "New tile level: %ld", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = tilesCopy;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        [v14 _cancelOffscreenTiles];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        tiles = [v14 tiles];
        objectEnumerator = [tiles objectEnumerator];

        v17 = [objectEnumerator countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v17)
        {
          v18 = *v39;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v20 = *(*(&v38 + 1) + 8 * j);
              if (v20)
              {
                *(v20 + 85) = 1;
              }
            }

            v17 = [objectEnumerator countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v17);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  if (self->_tileScale > 0.0)
  {
    [(PKTiledView *)self frame];
    if (v22 != 0.0 && v21 != 0.0)
    {
      [(PKTiledView *)self _layerContentsScale];
      if (v23 > 0.0)
      {
        scrollView = [(PKTiledView *)self scrollView];
        [scrollView zoomScale];
        v26 = v25 > 0.0;

        if (v26)
        {
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v29 = [bundleIdentifier isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

          v7 = v36;
          if ((v29 & 1) == 0)
          {
            mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
            bundleIdentifier2 = [mainBundle2 bundleIdentifier];
            if ([bundleIdentifier2 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
            {

              v7 = v36;
            }

            else
            {
              mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
              bundleIdentifier3 = [mainBundle3 bundleIdentifier];
              v35 = [bundleIdentifier3 isEqualToString:@"com.apple.quicklook.UIExtension"];

              v7 = v36;
              if ((v35 & 1) == 0 && !PKIsQuickNoteOnPhone())
              {
LABEL_42:
                [(PKTiledView *)self blitOldTilesIntoNewTiles:v10 completion:v7, v36];
                goto LABEL_8;
              }
            }
          }

          if (PKIsPhoneDevice() || _os_feature_enabled_impl())
          {
            [(PKTiledView *)self _cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:0, v36];
          }

          goto LABEL_42;
        }
      }
    }
  }

  v7 = v36;
  if (v36)
  {
    (*(v36 + 2))(v36, 0);
  }

LABEL_8:
}

- (BOOL)_updateHeightOfAttachmentIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(PKTiledView *)self _shouldUpdateHeightOfAttachments])
  {
    drawing = [necessaryCopy drawing];
    v6 = objc_opt_class();
    v7 = PKDynamicCast(v6, necessaryCopy);
    _isEmpty = [drawing _isEmpty];
    if (v7)
    {
      v9 = _isEmpty;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
LABEL_6:
      v10 = 0;
LABEL_10:

      goto LABEL_11;
    }

    drawing2 = [v7 drawing];
    [v7 heightFromDrawing:drawing2 delta:10.0];
    v13 = v12;

    [v7 bounds];
    if (v13 <= v14)
    {
      [drawing bounds];
      rect = v16;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [drawing _canvasBounds];
      v27 = v26;
      v28 = v23;
      v10 = 0;
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_10;
      }

      v29 = v24;
      v30 = v25;
      v10 = 0;
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_10;
      }

      v10 = 0;
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_10;
      }

      v10 = 0;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&rect & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_10;
      }

      v35.origin.x = v18;
      v35.origin.y = v20;
      v35.size.width = v22;
      v35.size.height = rect;
      MaxY = CGRectGetMaxY(v35);
      v36.origin.x = v27;
      v36.origin.y = v28;
      v36.size.width = v29;
      v36.size.height = v30;
      if (MaxY <= CGRectGetMaxY(v36))
      {
        goto LABEL_6;
      }

      v32 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEBUG, "Detected a drawing that will be clipped at the bottom", buf, 2u);
      }
    }

    [v7 updateDrawingHeight:v13];
    v10 = 1;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_transientlyUpdateHeightOfAttachment:(id)attachment delta:(double)delta
{
  attachmentCopy = attachment;
  drawing = [attachmentCopy drawing];
  if ([drawing _isEmpty])
  {
  }

  else
  {
    _shouldUpdateHeightOfAttachments = [(PKTiledView *)self _shouldUpdateHeightOfAttachments];

    if (_shouldUpdateHeightOfAttachments)
    {
      drawing2 = [attachmentCopy drawing];
      [attachmentCopy heightFromDrawing:drawing2 delta:delta + 10.0];
      v10 = v9;

      [attachmentCopy updateDrawingHeight:0 notifyDrawingDidChange:v10];
    }
  }
}

- (void)cancelTileGenerationInvalidateTiles:(BOOL)tiles
{
  tilesCopy = tiles;
  v29 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "Tiles");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "cancel tile generation", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PKTiledView *)self attachmentViews];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        tiles = [v9 tiles];
        objectEnumerator = [tiles objectEnumerator];

        v13 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v13)
        {
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v16 = *(*(&v18 + 1) + 8 * v15);
              if (v16)
              {
                atomic_fetch_add(v16 + 2, 1uLL);
                if (tilesCopy)
                {
                  objc_setProperty_atomic_copy(v16, v12, 0, 136);
                }
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v27 count:16];
          }

          while (v13);
        }

        [v9 _cancelOffscreenTiles];
        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)updateTilesForVisibleRectForceIfZooming:(BOOL)zooming
{
  if (zooming || ![(PKTiledView *)self _isZoomingOrResizing])
  {

    [(PKTiledView *)self updateTilesForVisibleRectRendering:1 offscreen:0 overrideAdditionalStrokes:0];
  }
}

- (void)swapOffscreenCallback:(id)callback
{
  v28 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PKTiledView *)self _pauseHoverPreviewForTimeInterval:0.1];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(PKTiledView *)self attachmentViews];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = os_log_create("com.apple.pencilkit", "Tiles");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          offscreenTiles = [v6 offscreenTiles];
          v11 = [offscreenTiles count];
          *buf = 134217984;
          v26 = v11;
          _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "swap offscreen tiles %ld", buf, 0xCu);
        }

        offscreenTiles2 = [v6 offscreenTiles];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __37__PKTiledView_swapOffscreenCallback___block_invoke;
        v16[3] = &unk_1E82D6BC8;
        v16[4] = v6;
        v16[5] = &v21;
        [offscreenTiles2 enumerateKeysAndObjectsUsingBlock:v16];

        offscreenTiles3 = [v6 offscreenTiles];
        [offscreenTiles3 removeAllObjects];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  if (callbackCopy)
  {
    callbackCopy[2]();
  }

  [MEMORY[0x1E6979518] commit];
  if (*(v22 + 24) == 1)
  {
    [v13 updateTilesForVisibleRectRendering:1 offscreen:0 overrideAdditionalStrokes:0];
  }

  _Block_object_dispose(&v21, 8);
}

void __37__PKTiledView_swapOffscreenCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 20) == 1.0)
    {
      *(v6 + 86) = 0;
      [*(v6 + 11) setHidden:0];
      [v7[12] setHidden:0];
      v8 = [*(a1 + 32) tiles];
      v9 = [v8 objectForKeyedSubscript:v5];

      if (v9)
      {
        [(PKRendererTile *)v9 purgeTileLayers];
      }

      v10 = [*(a1 + 32) tiles];
      [v10 setObject:v7 forKeyedSubscript:v5];

      v11 = os_log_create("com.apple.pencilkit", "Tiles");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "show tile %@", &v12, 0xCu);
      }

      goto LABEL_11;
    }

    atomic_fetch_add(v6 + 2, 1uLL);
  }

  [(PKRendererTile *)v6 purgeTileLayers];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v9 = os_log_create("com.apple.pencilkit", "Tiles");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "purge %@", &v12, 0xCu);
  }

LABEL_11:
}

- (void)updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:(id)strokes withCallback:(id)callback
{
  v23 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  callbackCopy = callback;
  if ([(PKTiledView *)self _isZoomingOrResizing])
  {
    if (strokesCopy && ([(PKTiledView *)self window], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = os_log_create("com.apple.pencilkit", "Tiles");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "zooming/resizing - requeuing tiles", buf, 2u);
      }

      v10 = dispatch_time(0, 50000000);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__PKTiledView_updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes_withCallback___block_invoke_466;
      v14[3] = &unk_1E82D6840;
      v14[4] = self;
      v15 = strokesCopy;
      v16 = callbackCopy;
      dispatch_after(v10, MEMORY[0x1E69E96A0], v14);
    }

    else
    {
      callbackCopy[2](callbackCopy);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      canvasView = [(PKTiledView *)self canvasView];
      *buf = 67109120;
      isHidden = [canvasView isHidden];
      _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "updateTilesForVisibleRectRendering canvasVisible:%d", buf, 8u);
    }

    [(PKTiledView *)self updateTilesForVisibleRectRendering:1 offscreen:1 overrideAdditionalStrokes:strokesCopy];
    tileController = [(PKTiledView *)self tileController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__PKTiledView_updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes_withCallback___block_invoke;
    v17[3] = &unk_1E82D6840;
    v18 = strokesCopy;
    selfCopy = self;
    v20 = callbackCopy;
    [(PKTileController *)tileController callbackAfterTileGeneration:v17];
  }
}

uint64_t __88__PKTiledView_updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes_withCallback___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return [*(a1 + 40) swapOffscreenCallback:{*(a1 + 48), v15}];
  }

  v2 = [*(a1 + 40) window];
  if (!v2 || ([*(a1 + 40) canvasView], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, !v3))
  {
    v6 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "View is going away, cancelling requeue.", buf, 2u);
    }

LABEL_16:

    return [*(a1 + 40) swapOffscreenCallback:{*(a1 + 48), v15}];
  }

  v4 = [*(a1 + 40) canvasView];
  v5 = [v4 isHidden];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(a1 + 40) attachmentForUUID:{*(*(&v15 + 1) + 8 * i), v15}];
          v11 = [v10 offscreenTiles];
          v12 = [v11 count] == 0;

          if (v12)
          {

            goto LABEL_19;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

LABEL_19:
  v14 = os_log_create("com.apple.pencilkit", "Tiles");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEBUG, "offscreen cancelled - requeuing tiles", buf, 2u);
  }

  return [*(a1 + 40) updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:*(a1 + 32) withCallback:*(a1 + 48)];
}

- (BOOL)tileIsVisibleForOffset:(CGPoint)offset inAttachment:(id)attachment distanceToMiddle:(double *)middle
{
  y = offset.y;
  x = offset.x;
  attachmentCopy = attachment;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (self)
  {
    gestureView = self->_gestureView;
  }

  else
  {
    gestureView = 0;
  }

  v20 = [(PKRendererTile *)x layerFrameForLevel:PKRendererTile offset:gestureView];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  tileContainerView = [attachmentCopy tileContainerView];
  viewRep = [attachmentCopy viewRep];
  [tileContainerView convertRect:viewRep toView:{v20, v22, v24, v26}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  tileContainerView2 = [attachmentCopy tileContainerView];
  [tileContainerView2 bounds];
  v60.origin.x = v30;
  v60.origin.y = v32;
  v60.size.width = v34;
  v60.size.height = v36;
  LOBYTE(viewRep) = CGRectIntersectsRect(v54, v60);

  if ((viewRep & 1) != 0 && ([attachmentCopy viewRep], v38 = objc_claimAutoreleasedReturnValue(), -[PKTiledView scrollView](self, "scrollView"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "convertRect:toView:", v39, v30, v32, v34, v36), v41 = v40, v43 = v42, v45 = v44, v47 = v46, v39, v38, v55.origin.x = v12, v55.origin.y = v14, v55.size.width = v16, v55.size.height = v18, v61.origin.x = v41, v61.origin.y = v43, v61.size.width = v45, v61.size.height = v47, CGRectIntersectsRect(v55, v61)))
  {
    if (middle)
    {
      v56.origin.x = v12;
      v56.origin.y = v14;
      v56.size.width = v16;
      v56.size.height = v18;
      MidX = CGRectGetMidX(v56);
      v57.origin.x = v12;
      v57.origin.y = v14;
      v57.size.width = v16;
      v57.size.height = v18;
      MidY = CGRectGetMidY(v57);
      v58.origin.x = v41;
      v58.origin.y = v43;
      v58.size.width = v45;
      v58.size.height = v47;
      v49 = CGRectGetMidX(v58);
      v59.origin.x = v41;
      v59.origin.y = v43;
      v59.size.width = v45;
      v59.size.height = v47;
      v50 = CGRectGetMidY(v59);
      *middle = (MidY - v50) * (MidY - v50) + (MidX - v49) * (MidX - v49);
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (vector<AttachmentTileInfo,)getVisibleTiles:(PKTiledView *)self
{
  v88 = *MEMORY[0x1E69E9840];
  v67 = a4;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView bounds];
  v70 = v8;
  v71 = v7;
  v68 = v10;
  v69 = v9;

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v67;
  v11 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v11)
  {
    v73 = *v78;
    do
    {
      v12 = 0;
      v74 = v11;
      do
      {
        if (*v78 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v77 + 1) + 8 * v12);
        viewRep = [v13 viewRep];
        [viewRep frame];
        v76 = v12;
        if (v15 <= 1.0)
        {
          goto LABEL_49;
        }

        viewRep2 = [v13 viewRep];
        [viewRep2 frame];
        if ((v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {

LABEL_49:
          goto LABEL_50;
        }

        v22 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v19 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;

        if (v22)
        {
          tileContainerView = [v13 tileContainerView];
          scrollView2 = [(PKTiledView *)self scrollView];
          [tileContainerView convertRect:scrollView2 fromView:{v71, v70, v69, v68}];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          if (self)
          {
            v33 = 0x1ED6A2000uLL;
            tileScale = self->_tileScale;
          }

          else
          {
            tileScale = 0.0;
            v33 = 0x1ED6A2000;
          }

          v89.origin.x = v26;
          v89.origin.y = v28;
          v89.size.width = v30;
          v89.size.height = v32;
          MaxX = CGRectGetMaxX(v89);
          v36 = self ? *(&self->super.super.super.isa + *(v33 + 1504)) : 0.0;
          v90.origin.x = v26;
          v90.origin.y = v28;
          v90.size.width = v30;
          v90.size.height = v32;
          MaxY = CGRectGetMaxY(v90);
          v38 = self ? *(&self->super.super.super.isa + *(v33 + 1504)) : 0.0;
          v39 = v26 / tileScale + -1.0;
          v40 = MaxX / v36 + 1.0;
          v41 = v39;
          if (v40 >= v41)
          {
            v42 = v39;
            v75 = (v28 / tileScale + -1.0);
            v43 = MaxY / v38 + 1.0;
            do
            {
              if (v43 >= v75)
              {
                v44 = v75;
                v45 = v75;
                do
                {
                  v81 = 0;
                  if ([(PKTiledView *)self tileIsVisibleForOffset:v13 inAttachment:&v81 distanceToMiddle:v41, v44])
                  {
                    v46 = v13;
                    v47 = v81;
                    var1 = retstr->var1;
                    var2 = retstr->var2;
                    if (var1 >= var2)
                    {
                      var0 = retstr->var0;
                      v52 = (var1 - retstr->var0) >> 5;
                      v53 = v52 + 1;
                      if ((v52 + 1) >> 59)
                      {
                        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
                      }

                      v54 = var2 - var0;
                      if (v54 >> 4 > v53)
                      {
                        v53 = v54 >> 4;
                      }

                      if (v54 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v55 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v55 = v53;
                      }

                      v86 = retstr;
                      if (v55)
                      {
                        if (!(v55 >> 59))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v56 = v52;
                      v57 = 32 * v52;
                      v82 = 0;
                      v83 = v57;
                      *v57 = v46;
                      v58 = 0;
                      *(v57 + 8) = v41;
                      *(v57 + 16) = v44;
                      *(v57 + 24) = v47;
                      v50 = (32 * v52 + 32);
                      v84 = (v57 + 32);
                      v85 = 0;
                      v59 = (v57 - 32 * v56);
                      if (var0 != var1)
                      {
                        v60 = var0;
                        v61 = v57 - 32 * v56;
                        do
                        {
                          v62 = *v60;
                          *v60 = 0;
                          *v61 = v62;
                          v63 = *(v60 + 1);
                          *(v61 + 24) = v60[3];
                          *(v61 + 8) = v63;
                          v60 += 4;
                          v61 += 32;
                        }

                        while (v60 != var1);
                        do
                        {

                          var0 += 4;
                        }

                        while (var0 != var1);
                        var0 = retstr->var0;
                        v50 = v84;
                        v58 = v85;
                      }

                      retstr->var0 = v59;
                      retstr->var1 = v50;
                      v64 = retstr->var2;
                      retstr->var2 = v58;
                      v84 = var0;
                      v85 = v64;
                      v82 = var0;
                      v83 = var0;
                      std::__split_buffer<AttachmentTileInfo>::~__split_buffer(&v82);
                    }

                    else
                    {
                      *var1 = v46;
                      *(var1 + 1) = v41;
                      *(var1 + 2) = v44;
                      v50 = (var1 + 32);
                      *(var1 + 3) = v47;
                    }

                    retstr->var1 = v50;
                  }

                  v44 = ++v45;
                }

                while (v43 >= v45);
              }

              v41 = ++v42;
            }

            while (v40 >= v42);
          }
        }

LABEL_50:
        v12 = v76 + 1;
      }

      while (v76 + 1 != v74);
      v65 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
      v11 = v65;
    }

    while (v65);
  }

  return result;
}

- (void)updateExistingTiles:(BOOL)tiles
{
  tilesCopy = tiles;
  v43 = *MEMORY[0x1E69E9840];
  [(PKTiledView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(PKTiledView *)self attachmentViews];
  v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v30 = *v38;
    do
    {
      v32 = 0;
      do
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v32);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        tiles = [v13 tiles];
        allValues = [tiles allValues];

        v16 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = *v34;
          do
          {
            v18 = 0;
            do
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(allValues);
              }

              v19 = *(*(&v33 + 1) + 8 * v18);
              if (!tilesCopy || (!v19 ? (b = 0.0, c = 0.0, d = 0.0, a = 0.0) : (a = v19[2]._drawingTransform.a, b = v19[2]._drawingTransform.b, c = v19[2]._drawingTransform.c, d = v19[2]._drawingTransform.d), [v13 tileContainerView], v24 = objc_claimAutoreleasedReturnValue(), -[PKTiledView convertRect:fromView:](self, "convertRect:fromView:", v24, a, b, c, d), v45.origin.x = v6, v45.origin.y = v8, v45.size.width = v10, v45.size.height = v12, v25 = CGRectIntersectsRect(v44, v45), v24, v25))
              {
                properties = [(PKRendererTile *)v19 properties];
                [properties offset];
                v27 = [(PKTiledView *)self generateTile:v13 inAttachment:1 rendering:0 offscreen:0 overrideAdditionalStrokes:?];
              }

              ++v18;
            }

            while (v16 != v18);
            v28 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
            v16 = v28;
          }

          while (v28);
        }

        ++v32;
      }

      while (v32 != v31);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }
}

- (void)updateTilesForVisibleRectRendering:(BOOL)rendering offscreen:(BOOL)offscreen overrideAdditionalStrokes:(id)strokes
{
  offscreenCopy = offscreen;
  renderingCopy = rendering;
  v47 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  updateVisibleTilesAfterZoomOutBlock = self->_updateVisibleTilesAfterZoomOutBlock;
  if (updateVisibleTilesAfterZoomOutBlock)
  {
    dispatch_block_cancel(updateVisibleTilesAfterZoomOutBlock);
    v10 = self->_updateVisibleTilesAfterZoomOutBlock;
    self->_updateVisibleTilesAfterZoomOutBlock = 0;
  }

  scrollView = [(PKTiledView *)self scrollView];
  [scrollView zoomScale];
  v13 = v12;

  if (self->_tileScale >= 1.0)
  {
    [(PKTiledView *)self frame];
    if (v15 != 0.0 && v14 != 0.0)
    {
      [(PKTiledView *)self frame];
      if ((v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        disableTileRendering = [(PKTiledView *)self disableTileRendering];
        v21 = v13 == 0.0 || disableTileRendering;
        if ((v21 & 1) == 0 && *&self->_tileLevel != 0.0)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          attachmentViews = [(PKTiledView *)self attachmentViews];
          v23 = [attachmentViews countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v23)
          {
            v24 = *v42;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v42 != v24)
                {
                  objc_enumerationMutation(attachmentViews);
                }

                [*(*(&v41 + 1) + 8 * i) _cancelOffscreenTiles];
              }

              v23 = [attachmentViews countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v23);
          }

          visibleAttachments = [(PKTiledView *)self visibleAttachments];
          [(PKTiledView *)self getVisibleTiles:visibleAttachments];

          v27 = 126 - 2 * __clz((v40 - v39) >> 5);
          if (v40 == v39)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27;
          }

          std::__introsort<std::_ClassicAlgPolicy,[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,false>(v39, v40, v28, 1);
          for (j = v39; j != v40; j += 4)
          {
            v30 = objc_opt_class();
            v31 = PKDynamicCast(v30, *j);
            v32 = v31;
            if (v31)
            {
              [v31 clearTileDrawingTransform];
            }

            drawing = [v32 drawing];
            uuid = [drawing uuid];
            v35 = [strokesCopy objectForKeyedSubscript:uuid];

            v36 = [(PKTiledView *)self generateTile:*j inAttachment:renderingCopy rendering:offscreenCopy offscreen:v35 overrideAdditionalStrokes:j[1], j[2]];
          }

          if (self->_didDisableScrollViewPanGestureRecognizer)
          {
            v37 = 0.1;
          }

          else
          {
            v37 = 0.0;
          }

          v38 = os_log_create("com.apple.pencilkit", "Tiles");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v37;
            _os_log_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_DEFAULT, "Cleanup tiles with delay: %g", buf, 0xCu);
          }

          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__cleanupTilesWithStaleTransform object:0];
          [(PKTiledView *)self performSelector:sel__cleanupTilesWithStaleTransform withObject:self afterDelay:v37];
          *buf = &v39;
          std::vector<AttachmentTileInfo>::__destroy_vector::operator()[abi:ne200100](buf);
        }
      }
    }
  }
}

- (void)_cleanupTilesWithStaleTransform
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(PKTiledView *)self attachmentViews];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        if (v4)
        {
          [v4 drawingTransform];
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        tiles = [v4 tiles];
        allKeys = [tiles allKeys];

        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v29 count:16];
        if (v7)
        {
          v8 = *v19;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v18 + 1) + 8 * j);
              v17[0] = v22;
              v17[1] = v23;
              v17[2] = v24;
              if (v10)
              {
                [v10 drawingTransform];
              }

              else
              {
                memset(v16, 0, sizeof(v16));
              }

              if (!DKDNearlyEqualTransforms(v17, v16))
              {
                tiles2 = [v4 tiles];
                v12 = [tiles2 objectForKeyedSubscript:v10];

                tiles3 = [v4 tiles];
                [tiles3 removeObjectForKey:v10];

                [(PKRendererTile *)v12 purgeTileLayers];
              }
            }

            v7 = [allKeys countByEnumeratingWithState:&v18 objects:v29 count:16];
          }

          while (v7);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v2);
  }
}

- (void)blitOldTilesIntoNewTiles:(id)tiles completion:(id)completion
{
  v108 = *MEMORY[0x1E69E9840];
  tilesCopy = tiles;
  completionCopy = completion;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = tilesCopy;
  v7 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
  selfCopy = self;
  if (v7)
  {
    v8 = *v102;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v102 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v101 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = PKDynamicCast(v11, v10);
        v13 = v12;
        if (v12)
        {
          [v12 drawingTransform];
          if (sqrt(*(&v98 + 1) * *(&v98 + 1) + *&v98 * *&v98) > 0.0)
          {
            tiles = [v13 tiles];
            v15 = [tiles copy];
            [strongToStrongObjectsMapTable setObject:v15 forKey:v10];

            tiles2 = [v13 tiles];
            [tiles2 removeAllObjects];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
    }

    while (v7);
  }

  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  [(PKTiledView *)self _layerContentsScale];
  v19 = v18;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView zoomScale];
  v22 = v21;

  selfCopy2 = self;
  [(PKTiledView *)self getVisibleTiles:obj];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = v96;
  v77 = v97;
  if (v96 != v97)
  {
    v25 = v19 * v22;
    do
    {
      if (*v24)
      {
        [*v24 drawingTransform];
        v26 = *(&v98 + 1);
        v27 = *&v98;
        if (!selfCopy2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v26 = 0.0;
        v27 = 0.0;
        if (!selfCopy2)
        {
LABEL_19:
          gestureView = 0;
          goto LABEL_16;
        }
      }

      gestureView = selfCopy2->_gestureView;
LABEL_16:
      v29 = [(PKRendererTile *)v24[1] layerFrameForLevel:PKRendererTile offset:gestureView];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      if (*v24)
      {
        [*v24 drawingTransform];
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
      }

      [(PKRendererTile *)v29 drawingFrameForLayerFrame:v31 drawingTransform:v33 contentScale:v35, v25 * sqrt(v26 * v26 + v27 * v27), PKRendererTile, &v98];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v44 = [strongToStrongObjectsMapTable objectForKey:*v24];
      objectEnumerator = [v44 objectEnumerator];

      v46 = 0;
      v47 = [objectEnumerator countByEnumeratingWithState:&v92 objects:v106 count:16];
      if (v47)
      {
        v48 = *v93;
        do
        {
          v49 = 0;
          do
          {
            if (*v93 != v48)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v50 = *(*(&v92 + 1) + 8 * v49);
            if (v50)
            {
              v51 = v50[23];
              v52 = v50[24];
              v53 = v50[25];
              v54 = v50[26];
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v51 = 0;
            }

            v109.origin.x = v37;
            v109.origin.y = v39;
            v109.size.width = v41;
            v109.size.height = v43;
            if (CGRectIntersectsRect(*&v51, v109))
            {
              if (!v46)
              {
                v55 = v24[1];
                v56 = v24[2];
                v57 = *v24;
                scrollView2 = [(PKTiledView *)selfCopy scrollView];
                [scrollView2 zoomScale];
                v46 = [(PKTiledView *)selfCopy tileForOffset:v57 inAttachment:0 offscreen:v55 tileZoomScale:v56, v59];

                if (v46)
                {
                  *(v46 + 86) = 1;
                  [*(v46 + 88) setHidden:1];
                  [*(v46 + 96) setHidden:1];
                }
              }

              array = [strongToStrongObjectsMapTable2 objectForKey:v46];
              if (!array)
              {
                array = [MEMORY[0x1E695DF70] array];
                [strongToStrongObjectsMapTable2 setObject:array forKey:v46];
              }

              [array addObject:v50];
            }

            ++v49;
          }

          while (v47 != v49);
          v61 = [objectEnumerator countByEnumeratingWithState:&v92 objects:v106 count:16];
          v47 = v61;
        }

        while (v61);
      }

      v24 += 4;
      selfCopy2 = selfCopy;
    }

    while (v24 != v77);
  }

  [MEMORY[0x1E6979518] commit];
  strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v63 = obj;
  v64 = [v63 countByEnumeratingWithState:&v88 objects:v105 count:16];
  if (v64)
  {
    v65 = *v89;
    do
    {
      for (j = 0; j != v64; ++j)
      {
        if (*v89 != v65)
        {
          objc_enumerationMutation(v63);
        }

        v67 = *(*(&v88 + 1) + 8 * j);
        v68 = MEMORY[0x1E696B098];
        if (v67)
        {
          [*(*(&v88 + 1) + 8 * j) drawingTransform];
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
        }

        v69 = [v68 valueWithCGAffineTransform:&v98];
        [strongToStrongObjectsMapTable3 setObject:v69 forKey:v67];
      }

      v64 = [v63 countByEnumeratingWithState:&v88 objects:v105 count:16];
    }

    while (v64);
  }

  drawingTouchThatHitNothing = selfCopy->_drawingTouchThatHitNothing;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __51__PKTiledView_blitOldTilesIntoNewTiles_completion___block_invoke;
  v81[3] = &unk_1E82D6BF0;
  v71 = v63;
  v82 = v71;
  v72 = strongToStrongObjectsMapTable3;
  v83 = v72;
  v73 = strongToStrongObjectsMapTable2;
  v84 = v73;
  v74 = strongToStrongObjectsMapTable;
  v85 = v74;
  v75 = completionCopy;
  v86 = selfCopy;
  v87 = v75;
  [(PKTileController *)drawingTouchThatHitNothing renderTilesIntoTiles:v73 completion:v81];

  *&v98 = &v96;
  std::vector<AttachmentTileInfo>::__destroy_vector::operator()[abi:ne200100](&v98);
}

void __51__PKTiledView_blitOldTilesIntoNewTiles_completion___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKTiledView_blitOldTilesIntoNewTiles_completion___block_invoke_2;
  v9[3] = &unk_1E82D6BF0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __51__PKTiledView_blitOldTilesIntoNewTiles_completion___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v3)
  {
    v4 = *v48;
    v5 = MEMORY[0x1E695EFD0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v48 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = PKDynamicCast(v8, v7);
        if (v9)
        {
          v10 = [*(a1 + 40) objectForKey:v7];
          v11 = v10;
          if (v10)
          {
            [v10 CGAffineTransformValue];
          }

          else
          {
            v45 = 0u;
            v46 = 0u;
            v44 = 0u;
          }

          v41 = v44;
          v42 = v45;
          v43 = v46;
          [v9 setTileDrawingTransform:&v41];
        }

        v12 = v5[1];
        v41 = *v5;
        v42 = v12;
        v43 = v5[2];
        [v9 setTileTransform:&v41];
      }

      v3 = [v2 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v3);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [*(a1 + 48) keyEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * j);
        [(PKRendererTile *)v17 updateDisableTransactionActions:1 reloadContents:?];
        if (v17)
        {
          *(v17 + 86) = 0;
          [*(v17 + 88) setHidden:0];
          [*(v17 + 96) setHidden:0];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v14);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [*(a1 + 56) objectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v52 count:16];
  if (v19)
  {
    v20 = *v34;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v33 + 1) + 8 * k);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v23 = [v22 objectEnumerator];
        v24 = [v23 countByEnumeratingWithState:&v29 objects:v51 count:16];
        if (v24)
        {
          v25 = *v30;
          do
          {
            for (m = 0; m != v24; ++m)
            {
              if (*v30 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [(PKRendererTile *)*(*(&v29 + 1) + 8 * m) purgeTileLayers];
            }

            v24 = [v23 countByEnumeratingWithState:&v29 objects:v51 count:16];
          }

          while (v24);
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v33 objects:v52 count:16];
    }

    while (v19);
  }

  v27 = *(a1 + 72);
  if (v27)
  {
    (*(v27 + 16))(v27, 1);
  }

  [MEMORY[0x1E6979518] commit];
  return [*(a1 + 64) updateTilesForVisibleRect];
}

- (id)tileForOffset:(CGPoint)offset inAttachment:(id)attachment offscreen:(BOOL)offscreen tileZoomScale:(double)scale
{
  offscreenCopy = offscreen;
  y = offset.y;
  x = offset.x;
  attachmentCopy = attachment;
  v12 = objc_opt_class();
  v13 = PKDynamicCast(v12, attachmentCopy);
  if (v13)
  {
    [v13 setSixChannelBlending:{-[PKTiledView _sixChannelBlendingIsActive](self, "_sixChannelBlendingIsActive")}];
  }

  [(PKTiledView *)self _layerContentsScale];
  v15 = v14;
  if (attachmentCopy)
  {
    [attachmentCopy drawingTransform];
    v16 = *(&v72 + 1);
    v17 = *&v72;
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
  }

  v18 = [PKRendererTileProperties alloc];
  if (!self)
  {
    gestureView = 0;
    if (attachmentCopy)
    {
      goto LABEL_8;
    }

LABEL_10:
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    goto LABEL_11;
  }

  gestureView = self->_gestureView;
  if (!attachmentCopy)
  {
    goto LABEL_10;
  }

LABEL_8:
  [attachmentCopy drawingTransform];
LABEL_11:
  v20 = [(PKRendererTileProperties *)v18 initWithLevel:gestureView offset:&v72 drawingTransform:[(PKTiledView *)self _sixChannelBlendingIsActive] sixChannelMode:[(PKTiledView *)self sixChannelBlendingRendersTransparent] transparentBlending:[(PKTiledView *)self isExtendedDynamicRangeRenderingActive] extendedDynamicRange:x, y];
  tiles = [v13 tiles];
  v71 = [tiles objectForKeyedSubscript:v20];

  offscreenTiles = [v13 offscreenTiles];
  v23 = [offscreenTiles objectForKeyedSubscript:v20];

  purgedTiles = [v13 purgedTiles];
  v25 = [purgedTiles objectForKeyedSubscript:v20];

  purgedTiles2 = [v13 purgedTiles];
  [purgedTiles2 removeObjectForKey:v20];
  v27 = v15 * scale * sqrt(v16 * v16 + v17 * v17);

  if (v25 && v25[19] != v27)
  {

    v25 = 0;
  }

  if (!v23)
  {
    goto LABEL_17;
  }

  if (v23[19] != v27)
  {

LABEL_17:
    v28 = 0;
    goto LABEL_19;
  }

  v28 = v23;
LABEL_19:
  if (v71)
  {
    if (v71[19] == v27)
    {
      goto LABEL_23;
    }
  }

  v71 = 0;
LABEL_23:
  if (offscreenCopy)
  {
    if (!v28)
    {
      v70 = v25;
      if (v71)
      {
        v29 = [v71 copy];
        v30 = v29;
        if (v29)
        {
          *(v29 + 86) = 1;
          [*(v29 + 88) setHidden:1];
          [*(v30 + 12) setHidden:1];
LABEL_38:
          offscreenTiles2 = [v13 offscreenTiles];
LABEL_46:
          v69 = offscreenTiles2;
          if (v30)
          {
            *(v30 + 19) = v27;
            atomic_store(*&v27, v30 + 1);
            [*(v30 + 11) setContentsScale:v27];
            [*(v30 + 12) setContentsScale:v27];
          }

          [offscreenTiles2 setObject:v30 forKeyedSubscript:v20];
          if (v30 && *(v30 + 82) == 1)
          {
            tileContainerView = [attachmentCopy tileContainerView];
            layer = [tileContainerView layer];
            tileMultiplyLayer = [(PKRendererTile *)v30 tileMultiplyLayer];
            [layer addSublayer:tileMultiplyLayer];
          }

          tileContainerView2 = [attachmentCopy tileContainerView];
          layer2 = [tileContainerView2 layer];
          tileLayer = [(PKRendererTile *)v30 tileLayer];
          [layer2 addSublayer:tileLayer];

          if ([(PKTiledView *)self showDebugOutlines])
          {
            v47 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:dbl_1C801C310[((x + y) & 1) == 0]];
            cGColor = [v47 CGColor];
            tileLayer2 = [(PKRendererTile *)v30 tileLayer];
            [tileLayer2 setBackgroundColor:cGColor];

            v50 = objc_alloc_init(MEMORY[0x1E6979508]);
            scrollView = [(PKTiledView *)self scrollView];
            [scrollView zoomScale];
            v53 = v52;
            scrollView2 = [(PKTiledView *)self scrollView];
            [scrollView2 zoomScale];
            [v50 setFrame:{0.0, 0.0, 100.0 / v53, 30.0 / v55}];

            if (v30)
            {
              v56 = *(v30 + 16);
              v57 = *(v30 + 21);
              v58 = *(v30 + 22);
            }

            else
            {
              v57 = 0;
              v56 = 0;
              v58 = 0;
            }

            v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld, (%d, %d)", v56, v57, v58];
            [v50 setString:v59];

            blackColor = [MEMORY[0x1E69DC888] blackColor];
            [v50 setForegroundColor:{objc_msgSend(blackColor, "CGColor")}];

            scrollView3 = [(PKTiledView *)self scrollView];
            [scrollView3 zoomScale];
            [v50 setFontSize:14.0 / v62];

            scrollView4 = [(PKTiledView *)self scrollView];
            [scrollView4 zoomScale];
            [v50 setContentsScale:v64 + v64];

            tileLayer3 = [(PKRendererTile *)v30 tileLayer];
            [tileLayer3 addSublayer:v50];
          }

          v32 = v30;

          v31 = v32;
          goto LABEL_56;
        }
      }

LABEL_32:
      v33 = v70;
      if (v70 && (v34 = [(PKRendererTile *)v70 recreatePurgedTileLayersIfPossible], v33 = v70, v34))
      {
        v35 = v70;
        v36 = v35;
        v37 = 1.0;
        if (offscreenCopy)
        {
          v37 = 0.0;
        }

        *(v35 + 20) = v37;
        v38 = v37;
        *&v37 = v38;
        [v35[11] setOpacity:v37];
        *&v39 = v38;
        [v36[12] setOpacity:v39];
        *(v36 + 86) = offscreenCopy;
        [v36[11] setHidden:offscreenCopy];
        [v36[12] setHidden:offscreenCopy];
        if (offscreenCopy)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v70 = v33;
        v68 = [PKRendererTile alloc];
        if (self)
        {
          v67 = self->_gestureView;
        }

        else
        {
          v67 = 0;
        }

        if (attachmentCopy)
        {
          [attachmentCopy drawingTransform];
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v72 = 0u;
        }

        v36 = [(PKRendererTile *)v68 initWithLevel:v67 offset:&v72 drawingTransform:[(PKTiledView *)self _sixChannelBlendingIsActive] contentsScale:[(PKTiledView *)self sixChannelBlendingRendersTransparent] sixChannelMode:[(PKTiledView *)self isExtendedDynamicRangeRenderingActive] transparentBlending:x wantsExtendedDynamicRangeContent:y, v27];
        if (offscreenCopy)
        {
LABEL_37:
          v30 = v36;
          goto LABEL_38;
        }
      }

      offscreenTiles2 = [v13 tiles];
      v30 = v36;
      goto LABEL_46;
    }

LABEL_29:
    v31 = v28;
    v32 = 0;
    goto LABEL_57;
  }

  if (v28)
  {
    goto LABEL_29;
  }

  v70 = v25;
  if (!v71)
  {
    goto LABEL_32;
  }

  v31 = v71;
  v32 = 0;
LABEL_56:
  v25 = v70;
LABEL_57:

  return v31;
}

- (id)generateTile:(CGPoint)tile inAttachment:(id)attachment rendering:(BOOL)rendering offscreen:(BOOL)offscreen overrideAdditionalStrokes:(id)strokes
{
  offscreenCopy = offscreen;
  y = tile.y;
  x = tile.x;
  attachmentCopy = attachment;
  strokesCopy = strokes;
  if (!self || *&self->_tileLevel == 0.0)
  {
    v15 = 0;
    goto LABEL_30;
  }

  v16 = [(PKTiledView *)self tileForOffset:attachmentCopy inAttachment:offscreenCopy offscreen:x tileZoomScale:y];
  v15 = 0;
  if (v16 && rendering)
  {
    drawing = [attachmentCopy drawing];
    strokes = [drawing strokes];

    v19 = objc_opt_class();
    v20 = PKDynamicCast(v19, attachmentCopy);
    v21 = v20;
    if (!v20)
    {
      v23 = v16;
LABEL_28:

      v15 = v16;
      goto LABEL_29;
    }

    v51 = strokes;
    v52 = v20;
    if (strokesCopy)
    {
      additionalStrokes = strokesCopy;
    }

    else
    {
      additionalStrokes = [v20 additionalStrokes];
    }

    v24 = additionalStrokes;
    uuid = [(PKDrawing *)self->_dirtyDrawing uuid];
    drawing2 = [attachmentCopy drawing];
    uuid2 = [drawing2 uuid];
    v28 = [uuid isEqual:uuid2];
    if (v24)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (strokesCopy || !v29 || ![v24 isEqualToArray:self->_cachedVisibleStrokesWithAdditionalStrokesForDirtyDrawing])
    {
LABEL_24:
      [(PKRendererTile *)v16 updateLastUsedTimestamp];
      if ([v52 wantsFullyRendered])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke;
        aBlock[3] = &unk_1E82D6400;
        v64 = v52;
        selfCopy = self;
        v66 = attachmentCopy;
        v36 = _Block_copy(aBlock);
      }

      else
      {
        v36 = 0;
      }

      uuid3 = [(PKDrawing *)self->_dirtyDrawing uuid];
      version = [(PKDrawing *)self->_dirtyDrawing version];
      v48 = [v24 copy];
      ++v16[18];
      tileController = [(PKTiledView *)self tileController];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke_2;
      v53[3] = &unk_1E82D6C40;
      v39 = v16;
      v54 = v39;
      v55 = v52;
      v40 = v36;
      v62 = v40;
      v41 = v24;
      v56 = v41;
      v57 = strokesCopy;
      selfCopy2 = self;
      v42 = v48;
      v59 = v42;
      v43 = uuid3;
      v60 = v43;
      v44 = version;
      v61 = v44;
      [(PKTileController *)tileController renderStrokes:v51 additionalStrokes:v41 intoTile:v39 completionBlock:v53];

      v45 = v39;
      strokes = v51;
      v21 = v52;
      goto LABEL_28;
    }

    cachedDrawingVersionForAdditionalStrokes = self->_cachedDrawingVersionForAdditionalStrokes;
    drawing3 = [attachmentCopy drawing];
    v47 = v24;
    uuid4 = [drawing3 uuid];
    if ([(PKDrawingVersion *)cachedDrawingVersionForAdditionalStrokes isEqual:uuid4])
    {
      didScrollBlock = self->_didScrollBlock;
      drawing4 = [attachmentCopy drawing];
      version2 = [drawing4 version];
      if ([didScrollBlock isEqual:version2])
      {
        cachedDrawingUUIDForAdditionalStrokes = self->_cachedDrawingUUIDForAdditionalStrokes;

        if (!cachedDrawingUUIDForAdditionalStrokes)
        {
          v24 = v47;
          goto LABEL_24;
        }

        uuid4 = v51;
        drawing3 = v47;
        v51 = self->_cachedDrawingUUIDForAdditionalStrokes;
        v24 = 0;
        goto LABEL_23;
      }
    }

    v24 = v47;
LABEL_23:

    goto LABEL_24;
  }

LABEL_29:

LABEL_30:

  return v15;
}

void __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) tiles];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (v7 && *(v7 + 144) >= 1 && ([*(a1 + 40) tileIsVisibleForOffset:*(a1 + 48) inAttachment:0 distanceToMiddle:{*(v7 + 168), *(v7 + 176)}] & 1) != 0)
        {

          return;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 32) fullyRendered];
}

void __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke_3;
  block[3] = &unk_1E82D6C18;
  v13 = *(a1 + 32);
  v21 = a2;
  v14 = *(a1 + 40);
  v20 = *(a1 + 96);
  v15 = *(a1 + 48);
  v16 = v5;
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *(a1 + 64);
  v11 = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v17 = v11;
  v18 = v9;
  v19 = *(a1 + 88);
  v10 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

void __87__PKTiledView_generateTile_inAttachment_rendering_offscreen_overrideAdditionalStrokes___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    --*(v3 + 144);
  }

  v4 = *(a1 + 112);
  switch(v4)
  {
    case 1:
      v5 = *(a1 + 32);
      if (!v5 || *(v5 + 160) < 1.0)
      {
LABEL_11:
        -[PKRendererTile updateDisableTransactionActions:reloadContents:](v5, [*(a1 + 40) disableTileAnimations], *(a1 + 112) == 3);
      }

      break;
    case 2:
      v6 = *(a1 + 32);
      if (v6)
      {
        objc_setProperty_atomic_copy(v6, a2, 0, 136);
      }

      break;
    case 3:
      v5 = *(a1 + 32);
      goto LABEL_11;
    default:
      break;
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    (*(v7 + 16))();
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      if (!*(a1 + 64))
      {
        v8 = *(a1 + 72);
        if (v8)
        {
          objc_setProperty_nonatomic_copy(v8, a2, *(a1 + 80), 760);
          v10 = *(a1 + 72);
          if (v10)
          {
            objc_setProperty_nonatomic_copy(v10, v9, *(a1 + 56), 768);
            v12 = *(a1 + 72);
            if (v12)
            {
              objc_setProperty_nonatomic_copy(v12, v11, *(a1 + 88), 776);
              v14 = *(a1 + 72);
              if (v14)
              {
                v15 = *(a1 + 96);

                objc_setProperty_nonatomic_copy(v14, v13, v15, 784);
              }
            }
          }
        }
      }
    }
  }
}

- (id)_adornmentViewsToHitTest
{
  array = [MEMORY[0x1E695DF70] array];
  selectionController = [(PKTiledView *)self selectionController];
  v5 = selectionController;
  if (selectionController)
  {
    v6 = *(selectionController + 160);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  selectionController2 = [(PKTiledView *)self selectionController];
  v9 = selectionController2;
  if (selectionController2)
  {
    v10 = *(selectionController2 + 152);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  rulerView = [(PKTiledView *)self rulerView];
  if (v11)
  {
    [array addObject:v11];
  }

  if (([v7 isHidden] & 1) == 0)
  {
    [array addObject:v7];
  }

  if (rulerView)
  {
    [array addObject:rulerView];
  }

  v13 = [array copy];

  return v13;
}

- (void)_willBeginInteractiveResize
{
  if (self)
  {
    self->_disableTileRendering = 1;
  }
}

- (void)_didEndInteractiveResize
{
  if (self)
  {
    self->_disableTileRendering = 0;
  }

  [(PKTiledView *)self updateTilesForVisibleRect];
}

- (void)selectionDidChange
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v4 = tileController;
  drawing = [(PKTileController *)v4 drawing];
  obj = [drawing uuid];

  v6 = *&self->_shouldResetBaseRollAngleOnNextStroke;
  if (!v6)
  {
LABEL_8:
    v8 = obj;
    if (!obj)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!obj)
  {
LABEL_7:
    v9 = [(PKTiledView *)self attachmentForUUID:v6];
    [v9 selectionDidChange];

    goto LABEL_8;
  }

  v7 = [*&self->_shouldResetBaseRollAngleOnNextStroke isEqual:obj];
  v8 = obj;
  if (v7)
  {
    v6 = *&self->_shouldResetBaseRollAngleOnNextStroke;
    goto LABEL_7;
  }

LABEL_9:
  v10 = [(PKTiledView *)self attachmentForUUID:v8];
  [v10 selectionDidChange];

  v8 = obj;
LABEL_10:
  objc_storeStrong(&self->_shouldResetBaseRollAngleOnNextStroke, v8);
  canvasView = [(PKTiledView *)self canvasView];
  _isCombiningStrokes = [canvasView _isCombiningStrokes];

  if (_isCombiningStrokes)
  {
    canvasView2 = [(PKTiledView *)self canvasView];
    [canvasView2 _finishCombiningStrokesIfNecessary];
  }

  [(PKTiledView *)self _updateRemoteEffect];
}

- (void)setSelectedStrokeIds:(id)ids selectionType:(int64_t)type forAttachment:(id)attachment
{
  v27 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  v9 = [(PKTiledView *)self _attachmentForUUID:attachment];
  if (v9)
  {
    typeCopy = type;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = idsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          drawing = [v9 drawing];
          v17 = [drawing _strokeForIdentifier:v15];

          if (v17)
          {
            [v10 addObject:v17];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = [v10 count];
    tileController = self->_tileController;
    if (v18)
    {
      drawing2 = [v9 drawing];
      [(PKSelectionController *)&tileController->super.isa selectStrokes:v10 forSelectionType:typeCopy inDrawing:drawing2];
    }

    else if (tileController)
    {
      [(PKSelectionController *)self->_tileController clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }
  }
}

- (id)selectedStrokeIdsForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v6 = tileController;
  drawing = [(PKTileController *)v6 drawing];
  uuid = [drawing uuid];
  v9 = [uuid isEqual:attachmentCopy];

  if (v9)
  {
    [(PKTileController *)v6 strokeIdentifiers];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v10 = ;

  return v10;
}

- (UIView)selectionView
{
  tileController = self->_tileController;
  if (tileController)
  {
    return tileController[2]._completionHandlers;
  }

  else
  {
    return 0;
  }
}

- (PKStrokeSelectionImage)selectionImage
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v3 = tileController;
  strokeImage = [(PKTileController *)v3 strokeImage];

  return strokeImage;
}

- (void)transformingSelectionBegan
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v4 = tileController;
  drawing = [(PKTileController *)v4 drawing];
  uuid = [drawing uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if (v7)
  {
    [(PKTiledView *)self getAttachment:v7 strokeTransform:&v15 paperTransform:v14];
    v12 = v15;
    CGAffineTransformInvert(&v13, &v12);
    completionHandlers = self->_tileController;
    if (completionHandlers)
    {
      completionHandlers = completionHandlers[2]._completionHandlers;
    }

    v9 = completionHandlers;
    v12 = v13;
    [(PKTileController *)v9 setSelectionDrawingStrokeTransform:&v12];
  }

  v10 = self->_tileController;
  if (v10)
  {
    v10 = v10[2]._completionHandlers;
  }

  v11 = v10;
  [(PKTileController *)v11 transformBegan];
}

- (void)transformingSelectionChanged:(CGAffineTransform *)changed
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  v6 = *&changed->c;
  v7[0] = *&changed->a;
  v7[1] = v6;
  v7[2] = *&changed->tx;
  [(PKTileController *)v5 transformChanged:v7];
}

- (void)transformingSelectionEnded
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v3 = tileController;
  [(PKTileController *)v3 transformEnded];
}

- (void)transformingSelectionCancelled
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v3 = tileController;
  [(PKTileController *)v3 transformCancelled];
}

- (void)setSelectionHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  [(PKTileController *)v5 setHidden:hiddenCopy];
}

- (BOOL)hitSelectionAt:(CGPoint)at
{
  tileController = self->_tileController;
  if (!tileController)
  {
    v8 = 0;
    goto LABEL_5;
  }

  y = at.y;
  x = at.x;
  v7 = tileController[2]._completionHandlers;
  v8 = v7;
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  [(NSMutableArray *)v7 convertPoint:self fromView:x, y];
  v9 = [(NSMutableArray *)v8 hitTest:0 withEvent:?];
  v10 = v9 != 0;

LABEL_6:
  return v10;
}

- (void)_selectionRefreshWithChangeToDrawings:(id)drawings overrideAdditionalStrokes:(id)strokes completion:(id)completion
{
  drawingsCopy = drawings;
  strokesCopy = strokes;
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __90__PKTiledView__selectionRefreshWithChangeToDrawings_overrideAdditionalStrokes_completion___block_invoke;
  v18 = &unk_1E82D67F0;
  v11 = drawingsCopy;
  v19 = v11;
  selfCopy = self;
  v12 = strokesCopy;
  v21 = v12;
  v13 = completionCopy;
  v22 = v13;
  v14 = _Block_copy(&v15);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v14);
  }
}

uint64_t __90__PKTiledView__selectionRefreshWithChangeToDrawings_overrideAdditionalStrokes_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 uuid];
        v9 = [v7 _attachmentForUUID:v8];

        if ([v9 isAtEndOfDocument])
        {
          [*(a1 + 40) _updateAttachmentHeightIfNecessaryForDrawing:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:*(a1 + 48) withCallback:*(a1 + 56)];
}

- (void)_updateAttachmentHeightIfNecessaryForDrawing:(id)drawing
{
  uuid = [drawing uuid];
  v5 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if (v5 && [(PKTiledView *)self _updateHeightOfAttachmentIfNecessary:v5])
  {
    [(PKTiledView *)self _handleDrawingDidChangeForAttachment:v5];
  }
}

- (void)commitSelectionIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  selectionController = [(PKTiledView *)self selectionController];
  v6 = selectionController;
  if (selectionController)
  {
    if (*(selectionController + 128))
    {

      goto LABEL_5;
    }

    isCurrentlyAddingSpace = [*(selectionController + 144) isCurrentlyAddingSpace];

    if (isCurrentlyAddingSpace)
    {
LABEL_5:
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        selectionController2 = [(PKTiledView *)self selectionController];
        [(PKSelectionController *)selectionController2 clearSelectionIfNecessaryWithCompletion:completionCopy];
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__PKTiledView_commitSelectionIfNecessaryWithCompletion___block_invoke;
        v9[3] = &unk_1E82D6D58;
        v9[4] = self;
        v10 = completionCopy;
        dispatch_sync(MEMORY[0x1E69E96A0], v9);
      }

      goto LABEL_10;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_10:
}

void __56__PKTiledView_commitSelectionIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  [(PKSelectionController *)v2 clearSelectionIfNecessaryWithCompletion:?];
}

- (CGPoint)pointInStrokeSpace:(CGPoint)space inDrawing:(id)drawing
{
  y = space.y;
  x = space.x;
  [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:drawing];
  v4 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)drawing
{
  uuid = [a4 uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:uuid];

  if (v7)
  {
    [(PKTiledView *)self transformFromStrokeSpaceToViewInAttachment:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "Attachment view not found from drawing", v12, 2u);
    }

    v9 = MEMORY[0x1E695EFD0];
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v10;
    *&retstr->tx = *(v9 + 32);
  }

  return result;
}

- (CGAffineTransform)transformFromStrokeSpaceToViewInAttachment:(SEL)attachment
{
  v9 = a4;
  canvasView = [(PKTiledView *)self canvasView];
  v7 = canvasView;
  if (canvasView)
  {
    [canvasView _strokeTransformForAttachment:v9];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGRect)attachmentBoundsForDrawing:(id)drawing
{
  uuid = [drawing uuid];
  v5 = [(PKTiledView *)self _attachmentForUUID:uuid];

  viewRep = [v5 viewRep];
  [viewRep bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)boundsForDrawing:(id)drawing
{
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  v6 = [(PKTiledView *)self _attachmentForUUID:uuid];

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  tileContainerView = [v6 tileContainerView];
  [tileContainerView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  tileContainerView2 = [v6 tileContainerView];
  [WeakRetained convertRect:tileContainerView2 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  scrollView = [(PKTiledView *)self scrollView];
  [scrollView contentOffset];
  v24 = v23;
  v26 = v25;

  [drawingCopy bounds];
  v28 = v27;
  v30 = v29;

  v31 = v19 - v24;
  v32 = v21 - v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)visibleOnscreenBoundsForDrawing:(id)drawing
{
  drawingCopy = drawing;
  [(PKTiledView *)self bounds];
  [(PKTiledView *)self visibleOnscreenBoundsForDrawing:drawingCopy slack:v5, v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)visibleOnscreenBoundsForDrawing:(id)drawing slack:(CGSize)slack
{
  height = slack.height;
  width = slack.width;
  drawingCopy = drawing;
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView bounds];
  v57 = CGRectInset(v56, -width, -height);
  x = v57.origin.x;
  y = v57.origin.y;
  v11 = v57.size.width;
  v12 = v57.size.height;

  uuid = [drawingCopy uuid];
  v14 = [(PKTiledView *)self _attachmentForUUID:uuid];

  scrollView2 = [(PKTiledView *)self scrollView];
  viewRep = [v14 viewRep];
  [viewRep bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  viewRep2 = [v14 viewRep];
  [scrollView2 convertRect:viewRep2 fromView:{v18, v20, v22, v24}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = v11;
  v58.size.height = v12;
  v64.origin.x = v27;
  v64.origin.y = v29;
  v64.size.width = v31;
  v64.size.height = v33;
  if (CGRectIntersectsRect(v58, v64))
  {
    v59.origin.x = v27;
    v59.origin.y = v29;
    v59.size.width = v31;
    v59.size.height = v33;
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v11;
    v65.size.height = v12;
    v60 = CGRectIntersection(v59, v65);
    v34 = v60.origin.x;
    v35 = v60.origin.y;
    v36 = v60.size.width;
    v37 = v60.size.height;
    scrollView3 = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self convertRect:scrollView3 fromView:v34, v35, v36, v37];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    memset(&v55[1], 0, sizeof(CGAffineTransform));
    [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:drawingCopy];
    v55[0] = v55[1];
    v61.origin.x = v40;
    v61.origin.y = v42;
    v61.size.width = v44;
    v61.size.height = v46;
    v62 = CGRectApplyAffineTransform(v61, v55);
    v47 = v62.origin.x;
    v48 = v62.origin.y;
    v49 = v62.size.width;
    v50 = v62.size.height;
  }

  else
  {
    v47 = *MEMORY[0x1E695F050];
    v48 = *(MEMORY[0x1E695F050] + 8);
    v49 = *(MEMORY[0x1E695F050] + 16);
    v50 = *(MEMORY[0x1E695F050] + 24);
  }

  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (BOOL)_isValidDropPointForStrokes:(CGPoint)strokes didInsertNewAttachment:(BOOL *)attachment
{
  y = strokes.y;
  x = strokes.x;
  *attachment = 0;
  v8 = [(PKTiledView *)self hitAttachment:?];

  if (v8)
  {
    return 1;
  }

  scrollView = [(PKTiledView *)self scrollView];
  [scrollView convertPoint:self fromView:{x, y}];
  v11 = [(PKTiledView *)self insertAttachmentIfInBlankSpace:?];

  if (!v11)
  {
    return 0;
  }

  result = 1;
  *attachment = 1;
  return result;
}

- (CGAffineTransform)strokeTransform
{
  canvasView = [(PKTiledView *)self canvasView];
  v6 = canvasView;
  if (canvasView)
  {
    [canvasView strokeTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)_setAdditionalStrokes:(id)strokes inDrawing:(id)drawing invalidateTiles:(BOOL)tiles forceOffscreen:(BOOL)offscreen completion:(id)completion
{
  offscreenCopy = offscreen;
  tilesCopy = tiles;
  v44 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  drawingCopy = drawing;
  completionCopy = completion;
  v15 = _PKSignpostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = _PKSignpostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Set Additional Strokes", "", buf, 2u);
  }

  v19 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_INFO, "BEGIN Set Additional Strokes", buf, 2u);
  }

  v20 = os_log_create("com.apple.pencilkit", "Tiles");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v27 = [strokesCopy count];
    *buf = 134218240;
    v41 = v27;
    v42 = 1024;
    v43 = offscreenCopy;
    _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "setAdditionalStrokes %ld forceOffscreen:%d", buf, 0x12u);
  }

  if (offscreenCopy)
  {
    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:tilesCopy];
    v39 = drawingCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    uuid = [drawingCopy uuid];
    v37 = uuid;
    v38 = strokesCopy;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke;
    v31[3] = &unk_1E82D6C68;
    v31[4] = self;
    v32 = drawingCopy;
    v33 = strokesCopy;
    v35 = v16;
    v34 = completionCopy;
    [(PKTiledView *)self _selectionRefreshWithChangeToDrawings:v21 overrideAdditionalStrokes:v23 completion:v31];
  }

  else
  {
    objc_storeStrong(&self->_dirtyDrawing, drawing);
    uuid2 = [drawingCopy uuid];
    v25 = [(PKTiledView *)self attachmentForUUID:uuid2];
    [v25 setAdditionalStrokes:strokesCopy];

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:tilesCopy];
    v36 = drawingCopy;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke_482;
    v28[3] = &unk_1E82D6CE0;
    v30 = v16;
    v29 = completionCopy;
    [(PKTiledView *)self _selectionRefreshWithChangeToDrawings:v26 completion:v28];
  }
}

uint64_t __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) uuid];
  v5 = [v2 attachmentForUUID:v4];
  [v5 setAdditionalStrokes:v3];

  v6 = _PKSignpostLog();
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v7, OS_SIGNPOST_INTERVAL_END, v8, "Set Additional Strokes", "", buf, 2u);
  }

  v9 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, "END Set Additional Strokes", v11, 2u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke_482(uint64_t a1)
{
  v2 = _PKSignpostLog();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Set Additional Strokes", "", buf, 2u);
  }

  v5 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "END Set Additional Strokes", v7, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_resetSelectedStrokeStateForRenderer
{
  v18 = *MEMORY[0x1E69E9840];
  dirtyDrawing = self->_dirtyDrawing;
  self->_dirtyDrawing = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v5 = [attachmentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(attachmentViews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        additionalStrokes = [v9 additionalStrokes];
        v11 = additionalStrokes == 0;

        if (!v11)
        {
          [v9 setAdditionalStrokes:0];
          v6 = 1;
        }
      }

      v5 = [attachmentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);

    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PKTiledView__resetSelectedStrokeStateForRenderer__block_invoke;
      block[3] = &unk_1E82D6388;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
  }
}

- (void)_clearSelectionIfNecessary
{
  if ([(PKSelectionController *)self->_tileController _hasStrokesOrExternalElementsSelectedInAttachment:?])
  {
    tileController = self->_tileController;
    if (tileController)
    {

      [(PKSelectionController *)tileController clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }
  }
}

- (void)setInsertSpaceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selectionController = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)selectionController setInsertSpaceEnabled:enabledCopy];
}

- (BOOL)insertSpaceEnabled
{
  selectionController = [(PKTiledView *)self selectionController];
  if (selectionController)
  {
    v3 = selectionController[114];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)isGenerationModelAvailable
{
  v2 = +[PKGenerationModelAvailabilityController sharedInstance];
  isGenerationModelAvailable = [v2 isGenerationModelAvailable];

  return isGenerationModelAvailable;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v75[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  array = [MEMORY[0x1E695DF70] array];
  selectionController = [(PKTiledView *)self selectionController];
  if (selectionController && (v9 = selectionController[16], selectionController, v9))
  {
    selectionController2 = [(PKTiledView *)self selectionController];
    v11 = [(PKSelectionController *)selectionController2 editMenuActionsForConfiguration:configurationCopy];
    [array addObjectsFromArray:v11];
  }

  else
  {
    v12 = [(PKSelectionController *)self->_tileController _hasExternalElementsSelectedInAttachment:?];
    v13 = MEMORY[0x1E69DC628];
    v14 = _PencilKitBundle();
    v15 = [v14 localizedStringForKey:@"Select All" value:@"Select All" table:@"Localizable"];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.dashed"];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __73__PKTiledView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
    v73[3] = &unk_1E82D6D30;
    v73[4] = self;
    v17 = configurationCopy;
    v74 = v17;
    v63 = [v13 actionWithTitle:v15 image:v16 identifier:0 handler:v73];

    v18 = MEMORY[0x1E69DC628];
    v19 = _PencilKitBundle();
    v20 = [v19 localizedStringForKey:@"Paste" value:@"Paste" table:@"Localizable"];
    v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __73__PKTiledView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2;
    v71[3] = &unk_1E82D6D30;
    v71[4] = self;
    v22 = v17;
    v72 = v22;
    v62 = [v18 actionWithTitle:v20 image:v21 identifier:0 handler:v71];

    v23 = MEMORY[0x1E69DC628];
    v24 = _PencilKitBundle();
    if (v12)
    {
      [v24 localizedStringForKey:@"Insert Space Above" value:@"Insert Space Above" table:@"Localizable"];
    }

    else
    {
      [v24 localizedStringForKey:@"Insert Space" value:@"Insert Space" table:@"Localizable"];
    }
    v25 = ;
    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.expand.vertical"];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __73__PKTiledView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_3;
    v69[3] = &unk_1E82D6D30;
    v69[4] = self;
    v27 = v22;
    v70 = v27;
    v61 = [v23 actionWithTitle:v25 image:v26 identifier:0 handler:v69];

    selectionController3 = [(PKTiledView *)self selectionController];
    [v27 sourcePoint];
    v64 = [(PKSelectionController *)selectionController3 _drawingForSelectionRect:v30 + -60.0, 120.0, 120.0];

    strokes = [v64 strokes];
    v32 = [strokes count];

    selectionController4 = [(PKTiledView *)self selectionController];
    LOBYTE(v26) = [(PKSelectionController *)selectionController4 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    if ((v32 != 0) | v26 & 1)
    {
      [array addObject:v63];
    }

    selectionController5 = [(PKTiledView *)self selectionController];
    v35 = [(PKSelectionController *)selectionController5 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v75[0] = @"com.apple.drawing";
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    v38 = [generalPasteboard containsPasteboardTypes:v37];

    if ((!v12 & (v38 | v35)) == 1)
    {
      [array addObject:v62];
    }

    selectionController6 = [(PKTiledView *)self selectionController];
    v40 = [(PKSelectionController *)selectionController6 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    if ((v32 != 0) | v40 & 1)
    {
      selectionController7 = [(PKTiledView *)self selectionController];
      if (selectionController7)
      {
        v42 = selectionController7[114];

        if (v42)
        {
          [array addObject:v61];
        }
      }
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v44 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.enableCopyAllHandwritingTranscription"];

    if (v44)
    {
      v45 = MEMORY[0x1E69DC628];
      v46 = _PencilKitBundle();
      v47 = [v46 localizedStringForKey:@"Copy All Transcription" value:@"Copy All Transcription" table:@"Localizable"];
      v48 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"character.textbox"];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __73__PKTiledView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_4;
      v67[3] = &unk_1E82D6D30;
      v67[4] = self;
      v68 = v27;
      v49 = [v45 actionWithTitle:v47 image:v48 identifier:0 handler:v67];

      selectionController8 = [(PKTiledView *)self selectionController];
      LOBYTE(v48) = [(PKSelectionController *)selectionController8 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

      if ((v32 != 0) | v48 & 1)
      {
        [array addObject:v49];
      }
    }

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v52 = [standardUserDefaults2 BOOLForKey:@"internalSettings.drawing.enableCopyAll"];

    if (v52)
    {
      v53 = MEMORY[0x1E69DC628];
      v54 = _PencilKitBundle();
      v55 = [v54 localizedStringForKey:@"Copy All" value:@"Copy All" table:@"Localizable"];
      v56 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"character.textbox"];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __73__PKTiledView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_5;
      v65[3] = &unk_1E82D6D30;
      v65[4] = self;
      v66 = v27;
      v57 = [v53 actionWithTitle:v55 image:v56 identifier:0 handler:v65];

      selectionController9 = [(PKTiledView *)self selectionController];
      LOBYTE(v56) = [(PKSelectionController *)selectionController9 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

      if ((v32 != 0) | v56 & 1)
      {
        [array addObject:v57];
      }
    }
  }

  v59 = [MEMORY[0x1E69DCC60] menuWithChildren:array];

  return v59;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selectionController = [(PKTiledView *)self selectionController];
  if (selectionController && (v7 = selectionController[16], selectionController, v7))
  {
    selectionController2 = [(PKTiledView *)self selectionController];
    editMenuTargetRect = [(PKSelectionController *)selectionController2 editMenuTargetRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    selectionController3 = [(PKTiledView *)self selectionController];
    v17 = selectionController3;
    if (selectionController3)
    {
      v18 = *(selectionController3 + 152);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [(PKTiledView *)self convertRect:v19 fromView:editMenuTargetRect, v11, v13, v15];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    [configurationCopy sourcePoint];
    v21 = v28;
    [configurationCopy sourcePoint];
    v23 = v29;
    v25 = 5.0;
    v27 = 5.0;
  }

  v30 = v21;
  v31 = v23;
  v32 = v25;
  v33 = v27;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKTiledView_editMenuInteraction_willPresentMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D6388;
  v5[4] = self;
  [animator addCompletion:{v5, configuration}];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKTiledView_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D6388;
  v5[4] = self;
  [animator addCompletion:{v5, configuration}];
}

- (PKController)drawingController
{
  canvasView = [(PKTiledView *)self canvasView];
  _drawingController = [canvasView _drawingController];

  return _drawingController;
}

- (void)_createHoverControllerIfNecessary
{
  if (!*&self->_lastContentOffset.x && !self->_editMenuVisible)
  {
    v3 = [[PKHoverController alloc] initWithDelegate:self view:?];
    x = self->_lastContentOffset.x;
    *&self->_lastContentOffset.x = v3;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    maximumFramesPerSecond = [mainScreen maximumFramesPerSecond];

    if (maximumFramesPerSecond >= 101)
    {
      [(PKHoverController *)*&self->_lastContentOffset.x setShouldGenerate120HzEvents:?];
    }

    v7 = self->_lastContentOffset.x;
    if (v7 != 0.0)
    {
      *(*&v7 + 456) = 0x3FB999999999999ALL;
    }
  }
}

- (id)hoverGestureRecognizer
{
  [(PKTiledView *)self _createHoverControllerIfNecessary];
  hoverController = [(PKTiledView *)self hoverController];
  hoverGestureRecognizer = [(PKHoverController *)hoverController hoverGestureRecognizer];

  return hoverGestureRecognizer;
}

- (BOOL)rulerHostWantsSharedRuler
{
  rulerHostingDelegate = [(PKTiledView *)self rulerHostingDelegate];
  if (!rulerHostingDelegate)
  {
    return 0;
  }

  v4 = rulerHostingDelegate;
  rulerHostingDelegate2 = [(PKTiledView *)self rulerHostingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  rulerHostingDelegate3 = [(PKTiledView *)self rulerHostingDelegate];
  rulerHostWantsSharedRuler = [rulerHostingDelegate3 rulerHostWantsSharedRuler];

  return rulerHostWantsSharedRuler;
}

- (id)rulerView
{
  hoverController = self->_hoverController;
  if (hoverController)
  {
    return *&hoverController->_waitingForHoverHoldTimestamp;
  }

  else
  {
    return 0;
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [(PKTileController *)self->_tileController dropInteraction:interaction sessionDidUpdate:update];

  return v4;
}

- (void)replaceInkTexture:(id)texture image:(CGImage *)image
{
  textureCopy = texture;
  canvasView = [(PKTiledView *)self canvasView];
  _rendererController = [canvasView _rendererController];
  [(PKMetalRendererController *)_rendererController replaceInkTexture:textureCopy image:image];
}

- (double)_latestLatency
{
  canvasView = [(PKTiledView *)self canvasView];
  _rendererController = [canvasView _rendererController];
  _latestLatency = [(PKMetalRendererController *)_rendererController _latestLatency];

  return _latestLatency;
}

- (void)_pauseHoverPreviewForTimeInterval:(double)interval
{
  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  self->_hoverPreviewStartTimestamp = interval;
}

- (BOOL)toolShadowShouldBeActive
{
  if (!self->_sixChannelBlendingRendersTransparent || !*&self->_lastContentOffset.x)
  {
    return 0;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if ((v4 & 1) != 0 || (+[PKHoverSettings sharedSettings](PKHoverSettings, "sharedSettings"), mainBundle = objc_claimAutoreleasedReturnValue(), [mainBundle toolShadowActiveOutsideNotes]))
  {
    v5 = +[PKHoverSettings sharedSettings];
    if ([v5 toolShadowActive])
    {

      toolShadowActiveOnOldPencils = 1;
      if (v4)
      {
        return toolShadowActiveOnOldPencils;
      }
    }

    else
    {
      v7 = +[PKHoverSettings sharedSettings];
      toolShadowActiveOnOldPencils = [v7 toolShadowActiveOnOldPencils];

      if (v4)
      {
        return toolShadowActiveOnOldPencils;
      }
    }
  }

  else
  {
    toolShadowActiveOnOldPencils = 0;
  }

  return toolShadowActiveOnOldPencils;
}

- (id)paletteViewHoverView:(id)view
{
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];
  v6 = [PKPencilObserverInteraction interactionForScene:windowScene];

  if (v6)
  {
    v7 = v6[8];
    if (v7)
    {
      if (*(v7 + 56) == 1)
      {
        selfCopy = [v6 view];
LABEL_12:
        v17 = selfCopy;
        goto LABEL_13;
      }
    }
  }

  x = self->_lastContentOffset.x;
  if (x == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    if (*(*&x + 56))
    {
LABEL_11:
      selfCopy = self;
      goto LABEL_12;
    }

    v11 = *(*&x + 32);
    v10 = *(*&x + 40);
    v12 = (*&x + 160);
    if (v10 != v11)
    {
      v12 = (v11 + 64);
    }

    v13 = *v12;
  }

  v14 = [MEMORY[0x1E695DF00] now];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  if (v16 - v13 < 0.1)
  {
    goto LABEL_11;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (CGPoint)paletteViewHoverLocation:(id)location
{
  window = [(PKTiledView *)self window];
  windowScene = [window windowScene];
  v6 = [PKPencilObserverInteraction interactionForScene:windowScene];

  if (v6 && (v7 = *(v6 + 8)) != 0 && *(v7 + 56) == 1)
  {
    v8 = v6 + 15;
    v9 = v6 + 16;
  }

  else
  {
    x = self->_lastContentOffset.x;
    if (x == 0.0)
    {
      v11 = 0.0;
      v12 = 0.0;
      goto LABEL_10;
    }

    v8 = *(*&x + 32);
    if (*(*&x + 40) == v8)
    {
      v8 = (*&x + 96);
      v9 = (*&x + 104);
    }

    else
    {
      v9 = v8 + 1;
    }
  }

  v11 = *v8;
  v12 = *v9;
LABEL_10:

  v13 = v11;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)paletteViewPencilDidTap:(id)tap
{
  canvasView = [(PKTiledView *)self canvasView];
  [canvasView _finishCombiningStrokesIfNecessary];
}

- ($FF38E1E694A259ECA75E65D4243A6BF6)convertInputPoint:(SEL)point toAttachment:(id *)attachment
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:a5];
  attachment->var0 = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, attachment->var0.var0.y), v12, attachment->var0.var0.x));
  attachment->var9 = -1;
  attachment->var1 = 1.0;
  v8 = *&attachment->var13;
  *&retstr->var11 = *&attachment->var11;
  *&retstr->var13 = v8;
  retstr->var15 = attachment->var15;
  v9 = *&attachment->var5;
  *&retstr->var3 = *&attachment->var3;
  *&retstr->var5 = v9;
  v10 = *&attachment->var9;
  *&retstr->var7 = *&attachment->var7;
  *&retstr->var9 = v10;
  v11 = *&attachment->var1;
  retstr->var0 = attachment->var0;
  *&retstr->var1 = v11;
  return result;
}

- (id)attachmentForHoverPreviewAt:(id *)at
{
  v5 = [(PKTiledView *)self ink];
  _isHandwritingInk = [v5 _isHandwritingInk];

  v7 = [(PKTiledView *)self hitAttachment:_isHandwritingInk ^ 1u includeStandinAttachment:_isHandwritingInk ^ 1u expandBottomAttachment:at->var0.var0.x, at->var0.var0.y];
  v8 = +[PKDrawing drawingClassForPaper];
  if (v7)
  {
    v9 = _isHandwritingInk ^ 1;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if (!v8 || ([v7 drawing], v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hoverController:(id)controller shouldBeActiveAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  if ([(PKTiledView *)self rulerEnabled])
  {
    rulerController = [(PKTiledView *)self rulerController];
    v8 = rulerController;
    v9 = rulerController ? *(rulerController + 56) : 0;
    v10 = v9;
    [v10 convertPoint:self fromView:{x, y}];
    v12 = v11;
    v14 = v13;

    rulerController2 = [(PKTiledView *)self rulerController];
    v16 = rulerController2;
    v17 = rulerController2 ? *(rulerController2 + 56) : 0;
    v18 = v17;
    v19 = [v18 hitTest:0 withEvent:{v12, v14}];

    if (v19)
    {
      return 0;
    }
  }

  drawingGestureRecognizer = [(PKTiledView *)self drawingGestureRecognizer];
  isEnabled = [drawingGestureRecognizer isEnabled];

  if ((isEnabled & 1) == 0)
  {
    return 0;
  }

  if ((*&self->_tiledViewFlags & 0x40) == 0)
  {
    return 1;
  }

  delegate = [(PKTiledView *)self delegate];
  v22 = [delegate canvasView:self hoverShouldBeActiveAt:{x, y}];

  return v22;
}

- (void)hoverController:(id)controller intentionalHoverWithDuration:(double)duration
{
  controllerCopy = controller;
  if (self && *(&self->_editMenuVisible + 2))
  {
    [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
    WeakRetained = objc_loadWeakRetained(&self->_analyticsSession);
    if (WeakRetained)
    {
      WeakRetained[12] = WeakRetained[12] + duration;
    }
  }
}

- (void)hoverController:(id)controller didBegin:(id *)begin
{
  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  window = [(PKTiledView *)self window];
  v7 = [PKToolPicker existingPaletteViewForWindow:window];

  if (v7)
  {
    [v7 setHoverDelegate:self];
  }

  v8 = CACurrentMediaTime();
  canvasView = [(PKTiledView *)self canvasView];
  isHidden = [canvasView isHidden];
  if (self)
  {
    v11 = 0.1;
    if (!isHidden)
    {
      v11 = 0.0;
    }

    self->_extraHoverPreviewDelay = v8 + v11 + self->_hoverPreviewStartTimestamp;

    self->_hoverPreviewStartTimestamp = 0.0;
  }

  else
  {
  }

  canvasView2 = [(PKTiledView *)self canvasView];
  if ([canvasView2 isHidden])
  {
    canvasView3 = [(PKTiledView *)self canvasView];
    [canvasView3 latestRenderTimestamp];
    v15 = v14;
    v16 = +[PKHoverSettings sharedSettings];
    [v16 inactivityTimeInterval];
    v18 = v15 + v17;

    if (v8 <= v18)
    {
      goto LABEL_12;
    }

    canvasView2 = +[PKHoverSettings sharedSettings];
    [canvasView2 extraHoverPreviewDelay];
    if (self)
    {
      self->_extraHoverPreviewDelay = v19 + self->_extraHoverPreviewDelay;
    }
  }

LABEL_12:
  if ([(PKTiledView *)self shouldStartToolPreviewWhenHovering])
  {
    v20 = *&begin->var13;
    v30[6] = *&begin->var11;
    v30[7] = v20;
    var15 = begin->var15;
    v21 = *&begin->var5;
    v30[2] = *&begin->var3;
    v30[3] = v21;
    v22 = *&begin->var9;
    v30[4] = *&begin->var7;
    v30[5] = v22;
    v23 = *&begin->var1;
    v30[0] = begin->var0;
    v30[1] = v23;
    v24 = [(PKTiledView *)self attachmentForHoverPreviewAt:v30];
    [(PKTiledView *)self _finishCombiningStrokesIfNecessaryForAttachment:v24];
    if (v24)
    {
      standInAttachmentView = [(PKTiledView *)self standInAttachmentView];

      if (v24 != standInAttachmentView)
      {
        v26 = [(PKTiledView *)self viewToMakeFirstResponderWhenHoveringOverAttachment:v24];
        if (v26)
        {
          _activeToolPicker = [(PKTiledView *)self _activeToolPicker];
          if ([_activeToolPicker isVisible])
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __40__PKTiledView_hoverController_didBegin___block_invoke;
            v28[3] = &unk_1E82D6388;
            v29 = v26;
            [_activeToolPicker _performWithVisibilityUpdatesEnabled:0 block:v28];
          }

          else
          {
            [v26 becomeFirstResponder];
          }

          if (self)
          {
            self->_extraHoverPreviewDelay = self->_extraHoverPreviewDelay + 0.1;
          }
        }
      }
    }
  }
}

- (void)_keepPencilShadowVisible
{
  if ([(PKTiledView *)self toolShadowShouldBeActive])
  {
    [(PKTiledView *)self _setupPencilShadowViewIfNecessary];
    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    v4 = [PKPencilShadowView shadowViewForScene:windowScene];
    v5 = [(PKTiledView *)self ink];
    [v4 setInk:v5];

    window2 = [(PKTiledView *)self window];
    windowScene2 = [window2 windowScene];
    v7 = [PKPencilShadowView shadowViewForScene:windowScene2];
    [v7 keepVisibleInTiledView:self];
  }
}

- (void)_updatePencilShadowView:(id *)view
{
  if ([(PKTiledView *)self toolShadowShouldBeActive])
  {
    view->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
    [(PKTiledView *)self _keepPencilShadowVisible];
    v5 = +[PKHoverSettings sharedSettings];
    if ([v5 toolShadowLocationWorkaround])
    {
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v8 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    window = [(PKTiledView *)self window];
    windowScene = [window windowScene];
    v11 = [PKPencilObserverInteraction interactionForScene:windowScene];
    view = [v11 view];

    [(UIView *)self PK_convertPoint:view toCoordinateSpace:view->var0.var0.x, view->var0.var0.y];
    v14 = v13;
    v16 = v15;
    v17 = *&view->var11;
    v36 = *&view->var9;
    v37 = v17;
    v38 = *&view->var13;
    var15 = view->var15;
    v18 = *&view->var3;
    v32 = *&view->var1;
    v33 = v18;
    v19 = *&view->var7;
    v34 = *&view->var5;
    v35 = v19;
    window2 = [(PKTiledView *)self window];
    windowScene2 = [window2 windowScene];
    v22 = [PKPencilObserverInteraction interactionForScene:windowScene2];
    v23[0] = v14;
    v23[1] = v16;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v31 = var15;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    [(PKPencilObserverInteraction *)v22 _updatePencilShadowView:v23];
  }
}

- (void)hoverController:(id)controller didUpdate:(id *)update
{
  if (![(PKTiledView *)self _scrollViewIsScrollingOrZoomingOrResizing])
  {
    if (!self || !*(&self->_editMenuVisible + 2) || (-[PKTiledView canvasView](self, "canvasView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _hasStrokeTransformChanged], v8, !v9))
    {
      v10 = *&update->var13;
      v143 = *&update->var11;
      v144 = v10;
      var15 = update->var15;
      v11 = *&update->var5;
      v139 = *&update->var3;
      v140 = v11;
      v12 = *&update->var9;
      v141 = *&update->var7;
      v142 = v12;
      v13 = *&update->var1;
      var0 = update->var0;
      v138 = v13;
      v14 = [(PKTiledView *)self attachmentForHoverPreviewAt:&var0];
      [(PKTiledView *)self _finishCombiningStrokesIfNecessaryForAttachment:v14];
      if (self)
      {
        pencilStatisticsManager = self->_pencilStatisticsManager;
      }

      else
      {
        pencilStatisticsManager = 0;
      }

      v16 = pencilStatisticsManager;
      v17 = v16;
      if (v14 && v16)
      {
        if (self)
        {
          v18 = self->_pencilStatisticsManager;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        drawing = [v14 drawing];
        uuid = [drawing uuid];
        v22 = [(PKPencilStatisticsManager *)v19 isEqual:uuid];

        if ((v22 & 1) == 0)
        {
          hoverController = [(PKTiledView *)self hoverController];
          [(PKHoverController *)hoverController reset];

LABEL_72:
          return;
        }
      }

      else
      {

        if (!v14)
        {
          [(PKHoverController *)*&self->_lastContentOffset.x reset];
          goto LABEL_72;
        }
      }

      v24 = *&update->var13;
      v143 = *&update->var11;
      v144 = v24;
      var15 = update->var15;
      v25 = *&update->var5;
      v139 = *&update->var3;
      v140 = v25;
      v26 = *&update->var9;
      v141 = *&update->var7;
      v142 = v26;
      v27 = *&update->var1;
      var0 = update->var0;
      v138 = v27;
      [(PKTiledView *)self _updatePencilShadowView:&var0];
      kdebug_trace();
      v28 = +[PKHoverSettings sharedSettings];
      toolPreviewShouldWaitForHoverAndHold = [v28 toolPreviewShouldWaitForHoverAndHold];

      if ((toolPreviewShouldWaitForHoverAndHold & 1) == 0)
      {
        v30 = *&update->var13;
        v143 = *&update->var11;
        v144 = v30;
        var15 = update->var15;
        v31 = *&update->var5;
        v139 = *&update->var3;
        v140 = v31;
        v32 = *&update->var9;
        v141 = *&update->var7;
        v142 = v32;
        v33 = *&update->var1;
        var0 = update->var0;
        v138 = v33;
        [(PKTiledView *)self startToolPreviewIfPossibleForInputPoint:&var0];
      }

      hoverController2 = [(PKTiledView *)self hoverController];
      v35 = +[PKHoverSettings sharedSettings];
      [v35 toolPreviewMaxZDistance];
      v36 = *&update->var13;
      v143 = *&update->var11;
      v144 = v36;
      var15 = update->var15;
      v37 = *&update->var5;
      v139 = *&update->var3;
      v140 = v37;
      v38 = *&update->var9;
      v141 = *&update->var7;
      v142 = v38;
      v39 = *&update->var1;
      var0 = update->var0;
      v138 = v39;
      v41 = [(PKHoverController *)hoverController2 adjustedZLimitFromLimit:v40 inputPoint:?];

      v42 = +[PKHoverSettings sharedSettings];
      [v42 toolPreviewFadeOutDistance];
      v44 = v43;

      if (v41 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v41;
      }

      v46 = v41 - v45;
      var6 = update->var6;
      v48 = 1.0;
      if (var6 > v46)
      {
        if (v45 <= 0.0)
        {
          if (var6 >= v46)
          {
            v48 = 0.0;
          }

          else
          {
            v48 = 1.0;
          }
        }

        else
        {
          v49 = var6 - v46;
          if (v49 >= v45)
          {
            v49 = v45;
          }

          v48 = 1.0 - v49 / v45;
        }
      }

      v50 = +[PKHoverSettings sharedSettings];
      [v50 toolShadowFadeInDistance];

      v51 = *&self->_lastContentOffset.x;
      if (v51)
      {
        [*&self->_lastContentOffset.x currentMovementSpeed];
        [PKHoverController alphaFactorFromMovementSpeed:v51];
      }

      v52 = +[PKHoverSettings sharedSettings];
      [v52 toolShadowMaxOpacity];

      if (*(&self->_editMenuVisible + 2) || *(&self->_editMenuVisible + 3) || *(&self->_editMenuVisible + 1))
      {
        strokePreviewView = self->_strokePreviewView;
        v54 = (CACurrentMediaTime() - *&strokePreviewView) / (*&strokePreviewView + 0.3 - *&strokePreviewView);
        v55 = 0.0;
        if (v54 >= 0.0)
        {
          v55 = v54;
          if (v54 > 1.0)
          {
            v55 = 1.0;
          }
        }

        v48 = v48 * v55;
      }

      canvasView = [(PKTiledView *)self canvasView];
      _rendererController = [canvasView _rendererController];
      [(PKMetalRendererController *)_rendererController setPreviewStrokeAlpha:v48];

      var15 = 0;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      var0 = 0u;
      v138 = 0u;
      v58 = *&update->var13;
      v134 = *&update->var11;
      v135 = v58;
      v136 = update->var15;
      v59 = *&update->var5;
      v130 = *&update->var3;
      v131 = v59;
      v60 = *&update->var9;
      v132 = *&update->var7;
      v133 = v60;
      v61 = *&update->var1;
      *location = update->var0;
      v129 = v61;
      [(PKTiledView *)self convertInputPoint:location toAttachment:v14];
      if (!*(&self->_editMenuVisible + 1))
      {
        goto LABEL_44;
      }

      canvasView2 = [(PKTiledView *)self canvasView];
      if ([canvasView2 isDrawing])
      {

        goto LABEL_44;
      }

      canvasView3 = [(PKTiledView *)self canvasView];
      _isLiveAnimating = [canvasView3 _isLiveAnimating];

      if (_isLiveAnimating)
      {
LABEL_44:
        if (*(&self->_editMenuVisible + 2) || *(&self->_editMenuVisible + 3))
        {
          hoverController3 = [(PKTiledView *)self hoverController];
          v66 = +[PKHoverSettings sharedSettings];
          [v66 toolPreviewMaxZDistance];
          v68 = v67;
          v69 = +[PKHoverSettings sharedSettings];
          [v69 deactivateExtraDistance];
          v71 = *&update->var13;
          v134 = *&update->var11;
          v135 = v71;
          v136 = update->var15;
          v72 = *&update->var5;
          v130 = *&update->var3;
          v131 = v72;
          v73 = *&update->var9;
          v132 = *&update->var7;
          v133 = v73;
          v74 = *&update->var1;
          *location = update->var0;
          v129 = v74;
          v75 = [(PKHoverController *)hoverController3 adjustedZLimitFromLimit:v68 + v70 inputPoint:?];

          if (update->var6 > v75)
          {
            v76 = +[PKHoverSettings sharedSettings];
            toolPreviewShouldWaitForHoverAndHold2 = [v76 toolPreviewShouldWaitForHoverAndHold];

            if (toolPreviewShouldWaitForHoverAndHold2)
            {
              hoverController4 = [(PKTiledView *)self hoverController];
              [(PKHoverController *)hoverController4 resetHoverHold];
            }

            [(PKTiledView *)self _endHoverToolPreview];
            goto LABEL_71;
          }

          if (!*(&self->_editMenuVisible + 2))
          {
            if (*(&self->_editMenuVisible + 3))
            {
              v88 = *&update->var13;
              v134 = *&update->var11;
              v135 = v88;
              v136 = update->var15;
              v89 = *&update->var5;
              v130 = *&update->var3;
              v131 = v89;
              v90 = *&update->var9;
              v132 = *&update->var7;
              v133 = v90;
              v91 = *&update->var1;
              *location = update->var0;
              v129 = v91;
              [(PKTiledView *)self _updateSymbolPreviewViewForTouch:location attachment:v14 alpha:v48];
            }

            goto LABEL_71;
          }

          canvasView4 = [(PKTiledView *)self canvasView];
          v134 = v143;
          v135 = v144;
          v136 = var15;
          v130 = v139;
          v131 = v140;
          v132 = v141;
          v133 = v142;
          *location = var0;
          v129 = v138;
          [canvasView4 _previewDrawingMoved:location tiledViewLocation:{update->var0.var0.x, update->var0.var0.y}];

          v80 = [(PKTiledView *)self ink];
          identifier = [v80 identifier];
          LODWORD(canvasView4) = [identifier isEqual:@"com.apple.ink.pen"];

          v82 = [(PKTiledView *)self ink];
          identifier2 = [v82 identifier];
          LODWORD(identifier) = [identifier2 isEqual:@"com.apple.ink.marker"];

          v84 = [(PKTiledView *)self ink];
          identifier3 = [v84 identifier];
          v86 = [identifier3 isEqual:@"com.apple.ink.pencil"];

          if ((canvasView4 | identifier | v86))
          {
            v87 = +[PKHoverSettings sharedSettings];
            if ([v87 toolIndicatorActive])
            {

LABEL_64:
              v97 = +[PKHoverSettings sharedSettings];
              if ([v97 toolIndicatorActive])
              {
                currentPreviewDrawingUUID = self->_currentPreviewDrawingUUID;

                if (!currentPreviewDrawingUUID)
                {
                  v99 = objc_alloc_init(PKToolPreviewView);
                  v100 = self->_currentPreviewDrawingUUID;
                  self->_currentPreviewDrawingUUID = v99;

                  [(NSUUID *)self->_currentPreviewDrawingUUID setTranslatesAutoresizingMaskIntoConstraints:0];
                  [(NSUUID *)self->_currentPreviewDrawingUUID setHidden:1];
                  [(PKTiledView *)self addSubview:self->_currentPreviewDrawingUUID];
                }
              }

              else
              {
              }

              [(NSUUID *)self->_currentPreviewDrawingUUID setAlpha:v48];
              objc_initWeak(location, self);
              if (self->_currentPreviewDrawingUUID)
              {
                canvasView5 = [(PKTiledView *)self canvasView];
                _rendererController2 = [canvasView5 _rendererController];
                v117[0] = MEMORY[0x1E69E9820];
                v117[1] = 3221225472;
                v117[2] = __41__PKTiledView_hoverController_didUpdate___block_invoke;
                v117[3] = &unk_1E82D6C90;
                objc_copyWeak(&v118, location);
                v124 = v142;
                v125 = v143;
                v126 = v144;
                v120 = v138;
                v121 = v139;
                v122 = v140;
                v123 = v141;
                v127 = var15;
                v119 = var0;
                [(PKMetalRendererController *)_rendererController2 addBlockToCallAfterPresenting:v117];

                objc_destroyWeak(&v118);
              }

              objc_destroyWeak(location);
              goto LABEL_71;
            }

            toolShadowShouldBeActive = [(PKTiledView *)self toolShadowShouldBeActive];

            if (toolShadowShouldBeActive)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_71:
        kdebug_trace();
        goto LABEL_72;
      }

      v92 = [(PKTiledView *)self ink];
      identifier4 = [v92 identifier];
      if (([identifier4 isEqual:@"com.apple.ink.objectEraser"] & 1) == 0)
      {
        v94 = [(PKTiledView *)self ink];
        identifier5 = [v94 identifier];
        if (([identifier5 isEqualToString:@"com.apple.ink.lasso"] & 1) == 0)
        {
          v116 = [(PKTiledView *)self ink];
          if (([v116 _isHandwritingInk] & 1) == 0)
          {
            v115 = [(PKTiledView *)self ink];
            identifier6 = [v115 identifier];
            v113 = [identifier6 isEqual:@"com.apple.ink.generationtool"];

            if ((v113 & 1) == 0)
            {
              v103 = +[PKHoverSettings sharedSettings];
              if ([v103 toolPreviewActive])
              {
                v104 = 2;
              }

              else
              {
                v104 = 1;
              }

              canvasView6 = [(PKTiledView *)self canvasView];
              _rendererController3 = [canvasView6 _rendererController];
              [(PKMetalRendererController *)_rendererController3 setPreviewStrokeMaxPoints:v104];

              window = [(PKTiledView *)self window];
              v108 = [PKToolPicker existingPaletteViewForWindow:window];

              isPalettePresentingPopover = [v108 isPalettePresentingPopover];
              canvasView7 = [(PKTiledView *)self canvasView];
              v134 = v143;
              v135 = v144;
              v136 = var15;
              v130 = v139;
              v131 = v140;
              v132 = v141;
              v133 = v142;
              *location = var0;
              v129 = v138;
              [canvasView7 _previewDrawingBegan:location tiledViewLocation:isPalettePresentingPopover disableDetachedRendering:{update->var0.var0.x, update->var0.var0.y}];

              *(&self->_editMenuVisible + 2) = 1;
              drawing2 = [v14 drawing];
              uuid2 = [drawing2 uuid];
              [(PKTiledView *)self setCurrentPreviewDrawingUUID:uuid2];

              *(&self->_editMenuVisible + 1) = 0;
              goto LABEL_71;
            }

            goto LABEL_62;
          }
        }
      }

LABEL_62:
      *(&self->_editMenuVisible + 3) = 1;
      *(&self->_editMenuVisible + 1) = 0;
      goto LABEL_71;
    }
  }

  canvasView8 = [(PKTiledView *)self canvasView];
  [canvasView8 _finishCombiningStrokesIfNecessary];

  v7 = *&self->_lastContentOffset.x;

  [(PKHoverController *)v7 reset];
}

- (void)setCurrentPreviewDrawingUUID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 888), a2);
  }
}

void __41__PKTiledView_hoverController_didUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 120);
  v4 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v4;
  v8 = *(a1 + 168);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v6;
  v7[4] = *(a1 + 104);
  v7[5] = v3;
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  [WeakRetained _updateToolPreviewIndicatorInputPoint:v7];
}

- (void)_updateSymbolPreviewViewForTouch:(id *)touch attachment:(id)attachment alpha:(double)alpha
{
  v81 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  selfCopy = self;
  v8 = [(PKTiledView *)self ink];
  _isEraserInk = [v8 _isEraserInk];

  if (_isEraserInk)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(PKTiledView *)self ink];
    _isHandwritingInk = [v11 _isHandwritingInk];

    if (_isHandwritingInk)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  if (self->_currentPreviewDrawingUUID)
  {
    [(PKTiledView *)self bringSubviewToFront:?];
  }

  else
  {
    v13 = objc_alloc_init(PKToolPreviewView);
    currentPreviewDrawingUUID = self->_currentPreviewDrawingUUID;
    self->_currentPreviewDrawingUUID = v13;

    [(NSUUID *)self->_currentPreviewDrawingUUID setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKTiledView *)self addSubview:self->_currentPreviewDrawingUUID];
  }

  objc_opt_self();
  if (v10 == 3)
  {
    v15 = 4.0;
  }

  else
  {
    v15 = 12.0;
  }

  [(PKToolPreviewView *)&self->_currentPreviewDrawingUUID->super.isa prepareWithFrame:v10 mode:touch->var0.var0.x - v15 * 0.5, touch->var0.var0.y - v15 * 0.5, v15, v15];
  [(NSUUID *)self->_currentPreviewDrawingUUID setAlpha:alpha];
  v16 = [(PKTiledView *)self ink];
  _isEraserInk2 = [v16 _isEraserInk];

  if (_isEraserInk2)
  {
    x = touch->var0.var0.x;
    y = touch->var0.var0.y;
    memset(&v78, 0, sizeof(v78));
    [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:attachmentCopy];
    strokeSpatialCache = [attachmentCopy strokeSpatialCache];
    v21 = strokeSpatialCache;
    if (strokeSpatialCache && *(strokeSpatialCache + 8) == 1)
    {
      strokeSpatialCache2 = [attachmentCopy strokeSpatialCache];
      v23 = strokeSpatialCache2;
      if (strokeSpatialCache2)
      {
        v24 = *(strokeSpatialCache2 + 24);
      }

      else
      {
        v24 = 0;
      }

      v63 = v24;
    }

    else
    {
      v63 = 0;
    }

    drawing = [attachmentCopy drawing];
    newValue = [drawing strokesIntersectedByPoint:v63 prevPoint:y * 0.0 + 0.0 * x + 0.0 onscreenVisibleStrokes:{y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0}];

    if (([(PKDrawing *)self->_erasePreviewDrawing isEqualToOrderedSet:newValue]& 1) == 0)
    {
      objc_setProperty_nonatomic_copy(self, v26, newValue, 864);
      v27 = +[PKHoverSettings sharedSettings];
      [v27 erasePreviewAlphaFactor];
      v29 = v28;

      if (v29 <= 0.0 || v29 >= 1.0)
      {
        v43 = *MEMORY[0x1E695F050];
        v44 = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v47 = newValue;
        v48 = [v47 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v48)
        {
          v49 = *v71;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v71 != v49)
              {
                objc_enumerationMutation(v47);
              }

              [*(*(&v70 + 1) + 8 * i) renderBounds];
              v88.origin.x = v51;
              v88.origin.y = v52;
              v88.size.width = v53;
              v88.size.height = v54;
              v82.origin.x = v43;
              v82.origin.y = v44;
              v82.size.width = width;
              v82.size.height = height;
              v83 = CGRectUnion(v82, v88);
              v43 = v83.origin.x;
              v44 = v83.origin.y;
              width = v83.size.width;
              height = v83.size.height;
            }

            v48 = [v47 countByEnumeratingWithState:&v70 objects:v79 count:16];
          }

          while (v48);
        }

        v84.origin.x = v43;
        v84.origin.y = v44;
        v84.size.width = width;
        v84.size.height = height;
        p_isa = &selfCopy->super.super.super.isa;
        if (CGRectIsNull(v84))
        {
          [(NSOrderedSet *)selfCopy->_eraseOrLassoPreviewStrokes removeFromSuperview];
          objc_storeStrong(&selfCopy->_eraseOrLassoPreviewStrokes, 0);
        }

        else
        {
          if (!selfCopy->_eraseOrLassoPreviewStrokes)
          {
            v56 = objc_alloc_init(PKStrokePreviewView);
            objc_storeStrong(&selfCopy->_eraseOrLassoPreviewStrokes, v56);

            p_isa = &selfCopy->super.super.super.isa;
            [(NSOrderedSet *)selfCopy->_eraseOrLassoPreviewStrokes setTranslatesAutoresizingMaskIntoConstraints:0];
            [p_isa addSubview:p_isa[107]];
            [(NSOrderedSet *)selfCopy->_eraseOrLassoPreviewStrokes setOpaque:0];
            [(NSOrderedSet *)selfCopy->_eraseOrLassoPreviewStrokes setAlpha:1.0];
          }

          v68 = v78;
          memset(&v69, 0, sizeof(v69));
          CGAffineTransformInvert(&v69, &v68);
          v68 = v69;
          v85.origin.x = v43;
          v85.origin.y = v44;
          v85.size.width = width;
          v85.size.height = height;
          v86 = CGRectApplyAffineTransform(v85, &v68);
          v87 = CGRectIntegral(v86);
          v57 = v87.origin.x;
          v58 = v87.origin.y;
          v59 = v87.size.width;
          v60 = v87.size.height;
          v61 = p_isa[107];
          array = [v47 array];
          [(PKStrokePreviewView *)v61 prepareWithFrame:array strokeBounds:v57 strokes:v58, v59, v60, v43, v44, width, height];
        }
      }

      else
      {
        drawing2 = [attachmentCopy drawing];
        objc_storeStrong(&self->_toolPreviewView, drawing2);

        v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(newValue, "count")}];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = newValue;
        v32 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
        if (v32)
        {
          v33 = *v75;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v75 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v74 + 1) + 8 * j);
              v36 = [v35 ink];
              color = [v36 color];
              [color alphaComponent];
              v39 = [color colorWithAlphaComponent:v29 * v38];
              v40 = [PKInk inkFromInk:v36 color:v39];

              v41 = [v35 mutableCopy];
              [v41 setInk:v40];
              [v41 _setRenderGroupID:0];
              [v31 addObject:v41];
            }

            v32 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
          }

          while (v32);
        }

        drawing3 = [attachmentCopy drawing];
        [(PKTiledView *)selfCopy _setAdditionalStrokes:v31 inDrawing:drawing3 invalidateTiles:1];
      }
    }
  }
}

- (void)_updateToolPreviewIndicatorInputPoint:(id *)point
{
  if (self->_currentPreviewDrawingUUID)
  {
    v5 = [(PKTiledView *)self ink];
    identifier = [v5 identifier];
    v7 = [identifier isEqual:@"com.apple.ink.pen"];

    v8 = [(PKTiledView *)self ink];
    identifier2 = [v8 identifier];
    v10 = [identifier2 isEqual:@"com.apple.ink.marker"];

    v11 = [(PKTiledView *)self ink];
    identifier3 = [v11 identifier];
    v13 = [identifier3 isEqual:@"com.apple.ink.pencil"];

    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(&__s1, 0, sizeof(__s1));
    canvasView = [(PKTiledView *)self canvasView];
    _drawingController = [canvasView _drawingController];
    inputController = [(PKController *)_drawingController inputController];
    v17 = inputController;
    if (inputController)
    {
      [inputController _latestStrokePoint];
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(&__s1, 0, sizeof(__s1));
    }

    if (!memcmp(&__s1, &_PKStrokePointZero, 0x60uLL))
    {
      canvasView2 = [(PKTiledView *)self canvasView];
      _drawingController2 = [canvasView2 _drawingController];
      inputController2 = [(PKController *)_drawingController2 inputController];
      v21 = inputController2;
      v22 = *&point->var9;
      v23 = *&point->var13;
      v60 = *&point->var11;
      v61 = v23;
      v24 = *&point->var1;
      v25 = *&point->var5;
      v56 = *&point->var3;
      v57 = v25;
      v26 = *&point->var5;
      v27 = *&point->var9;
      v58 = *&point->var7;
      v59 = v27;
      v28 = *&point->var1;
      v55[0] = point->var0;
      v55[1] = v28;
      v29 = *&point->var13;
      v53[6] = v60;
      v53[7] = v29;
      v53[2] = v56;
      v53[3] = v26;
      v53[4] = v58;
      v53[5] = v22;
      var15 = point->var15;
      v54 = point->var15;
      v53[0] = v55[0];
      v53[1] = v24;
      if (inputController2)
      {
        [inputController2 outputCurrentStrokePoint:v55 lastPoint:v53];
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        memset(&v63, 0, sizeof(v63));
      }

      __s1 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    memset(&v63, 0, sizeof(v63));
    canvasView3 = [(PKTiledView *)self canvasView];
    v31 = canvasView3;
    if (canvasView3)
    {
      [canvasView3 strokeTransform];
    }

    else
    {
      memset(&v63, 0, sizeof(v63));
    }

    v51 = v63;
    CGAffineTransformInvert(&v52, &v51);
    if (!self->_currentPreviewDrawingUUID)
    {
      goto LABEL_22;
    }

    v32 = __s1.d / sqrt(v52.b * v52.b + v52.a * v52.a);
    v33 = v63.tx + __s1.c * v63.c + v63.a * __s1.b;
    v34 = v63.ty + __s1.c * v63.d + v63.b * __s1.b;
    if (v7)
    {
      v35 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v33 - (v32 + 1.0) * 0.5, v34 - (v32 + 1.0) * 0.5, v32 + 1.0, v32 + 1.0}];
      if (!v35)
      {
        goto LABEL_23;
      }

LABEL_19:
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] setLowLatency:1];
      [v35 bounds];
      v72 = CGRectInset(v71, -50.0, -50.0);
      x = v72.origin.x;
      y = v72.origin.y;
      [(PKToolPreviewView *)&self->_currentPreviewDrawingUUID->super.isa prepareWithFrame:v72.origin.x mode:v72.origin.y, v72.size.width, v72.size.height];
      CGAffineTransformMakeTranslation(&v52, -x, -y);
      [v35 applyTransform:&v52];
      cGPath = [v35 CGPath];
      currentPreviewDrawingUUID = self->_currentPreviewDrawingUUID;
      if (currentPreviewDrawingUUID)
      {
        [(objc_class *)currentPreviewDrawingUUID[52].super.isa setPath:cGPath];
        v47 = self->_currentPreviewDrawingUUID;
      }

      else
      {
        v47 = 0;
      }

      [(NSUUID *)v47 setHidden:0];
      [MEMORY[0x1E6979518] commit];
      goto LABEL_23;
    }

    if ((v10 | v13))
    {
      tx = __s1.tx;
      v37 = *(&v68 + 1);
      v38 = [(PKTiledView *)self ink];
      behavior = [v38 behavior];
      particleDescriptor = [behavior particleDescriptor];

      [particleDescriptor particleSize];
      v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] - tx * (v32 + v32) * v41 * 0.5 cornerRadius:{*(MEMORY[0x1E695EFF8] + 8) - (v32 + v32) * v42 * 0.5, tx * (v32 + v32) * v41, (v32 + v32) * v42, 2.0}];
      memset(&v52, 0, sizeof(v52));
      CGAffineTransformMakeRotation(&v52, v37);
      memset(&v51, 0, sizeof(v51));
      CGAffineTransformMakeTranslation(&v51, v33, v34);
      t1 = v52;
      v48 = v51;
      CGAffineTransformConcat(&v50, &t1, &v48);
      [v35 applyTransform:&v50];

      if (v35)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_22:
      v35 = 0;
    }

LABEL_23:
  }
}

- (void)hoverControllerDidEnd:(id)end
{
  [(PKTiledView *)self _reenableScrollViewPanGestureIfNecessary];
  [(PKTiledView *)self _endHoverToolPreview];
  v4 = +[PKHoverSettings sharedSettings];
  toolShadowLocationWorkaround = [v4 toolShadowLocationWorkaround];

  if (toolShadowLocationWorkaround)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PKTiledView_hoverControllerDidEnd___block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __37__PKTiledView_hoverControllerDidEnd___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) window];
  v1 = [v3 windowScene];
  v2 = [PKPencilObserverInteraction interactionForScene:v1];
  [(PKPencilObserverInteraction *)v2 workaroundShadowUpdateEnded];
}

- (void)hoverController:(id)controller holdGestureMeanTouch:(id *)touch latestTouch:(id *)latestTouch
{
  controllerCopy = controller;
  if (!self || !*(&self->_editMenuVisible + 2) && !*(&self->_editMenuVisible + 1) && !*(&self->_editMenuVisible + 3))
  {
    [(PKTiledView *)self convertToShapeAtLocation:latestTouch->var0.var0.x, latestTouch->var0.var0.y];
    v8 = +[PKHoverSettings sharedSettings];
    toolPreviewShouldWaitForHoverAndHold = [v8 toolPreviewShouldWaitForHoverAndHold];

    if (toolPreviewShouldWaitForHoverAndHold)
    {
      v10 = *&latestTouch->var13;
      v14[6] = *&latestTouch->var11;
      v14[7] = v10;
      var15 = latestTouch->var15;
      v11 = *&latestTouch->var5;
      v14[2] = *&latestTouch->var3;
      v14[3] = v11;
      v12 = *&latestTouch->var9;
      v14[4] = *&latestTouch->var7;
      v14[5] = v12;
      v13 = *&latestTouch->var1;
      v14[0] = latestTouch->var0;
      v14[1] = v13;
      [(PKTiledView *)self startToolPreviewIfPossibleForInputPoint:v14];
    }
  }
}

- (void)hoverControllerHoldGestureEnded:(id)ended
{
  if (self)
  {
    delayHoverPreviewUntil = self->_delayHoverPreviewUntil;
    if (delayHoverPreviewUntil != 0.0)
    {
      dispatch_block_cancel(*&delayHoverPreviewUntil);
      objc_setProperty_nonatomic_copy(self, v5, 0, 824);
    }
  }

  hoverController = [(PKTiledView *)self hoverController];
  [hoverController hideLabel];
}

- (BOOL)shouldStartToolPreviewWhenHovering
{
  if (!self->_sixChannelBlendingRendersTransparent)
  {
    return 0;
  }

  v2 = *&self->_delayHoverPreviewUntil;
  if (v2)
  {
    toolIndicatorActive = 0;
  }

  else
  {
    v4 = +[PKHoverSettings sharedSettings];
    if ([v4 toolPreviewActive])
    {
      toolIndicatorActive = 1;
    }

    else
    {
      v5 = +[PKHoverSettings sharedSettings];
      toolIndicatorActive = [v5 toolIndicatorActive];
    }
  }

  return toolIndicatorActive;
}

- (void)startToolPreviewIfPossibleForInputPoint:(id *)point
{
  if (!self || !*(&self->_editMenuVisible + 1) && !*(&self->_editMenuVisible + 2) && !*(&self->_editMenuVisible + 3))
  {
    canvasView = [(PKTiledView *)self canvasView];
    if ([canvasView _isCombiningStrokes])
    {
    }

    else
    {
      canvasView2 = [(PKTiledView *)self canvasView];
      isHidden = [canvasView2 isHidden];

      if ((isHidden & 1) == 0)
      {
        return;
      }
    }

    v8 = CACurrentMediaTime();
    if (self)
    {
      extraHoverPreviewDelay = self->_extraHoverPreviewDelay;
    }

    else
    {
      extraHoverPreviewDelay = 0.0;
    }

    if (v8 >= extraHoverPreviewDelay && ![(PKTiledView *)self _scrollViewIsScrollingOrZoomingOrResizing]&& ![(PKTiledView *)self _isScrollViewSizeAnimating]&& [(PKTiledView *)self shouldStartToolPreviewWhenHovering])
    {
      hoverController = [(PKTiledView *)self hoverController];
      v11 = +[PKHoverSettings sharedSettings];
      [v11 toolPreviewMaxZDistance];
      v12 = *&point->var13;
      v21[6] = *&point->var11;
      v21[7] = v12;
      var15 = point->var15;
      v13 = *&point->var5;
      v21[2] = *&point->var3;
      v21[3] = v13;
      v14 = *&point->var9;
      v21[4] = *&point->var7;
      v21[5] = v14;
      v15 = *&point->var1;
      v21[0] = point->var0;
      v21[1] = v15;
      v17 = [(PKHoverController *)hoverController adjustedZLimitFromLimit:v21 inputPoint:v16];

      if (point->var6 <= v17)
      {
        if (self)
        {
          *(&self->_editMenuVisible + 1) = 1;
          *&self->_strokePreviewView = CACurrentMediaTime();
        }

        else
        {
          CACurrentMediaTime();
        }

        [(PKTiledView *)self _disableScrollViewPanGestureIfNecessary];
      }

      else
      {
        if (self)
        {
          *(&self->_editMenuVisible + 1) = 0;
        }

        v18 = +[PKHoverSettings sharedSettings];
        toolPreviewShouldWaitForHoverAndHold = [v18 toolPreviewShouldWaitForHoverAndHold];

        if (toolPreviewShouldWaitForHoverAndHold)
        {
          hoverController2 = [(PKTiledView *)self hoverController];
          [(PKHoverController *)hoverController2 resetHoverHold];
        }
      }
    }
  }
}

- (void)convertToShapeAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = +[PKHoverSettings sharedSettings];
  if ([v6 snapToShapeActive])
  {
  }

  else
  {
    v7 = [(PKTiledView *)self ink];
    _isStrokeGeneratingInk = [v7 _isStrokeGeneratingInk];

    if (_isStrokeGeneratingInk)
    {
      return;
    }
  }

  v9 = [(PKTiledView *)self _hitAttachment:0 includeStandinAttachment:0 expandBottomAttachment:x, y];
  v10 = v9;
  if (v9)
  {
    drawing = [v9 drawing];
    [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:v10];
    strokeSpatialCache = [v10 strokeSpatialCache];
    v13 = strokeSpatialCache;
    if (strokeSpatialCache && *(strokeSpatialCache + 8) == 1)
    {
      strokeSpatialCache2 = [v10 strokeSpatialCache];
      v15 = strokeSpatialCache2;
      if (strokeSpatialCache2)
      {
        v16 = *(strokeSpatialCache2 + 24);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [drawing strokesIntersectedByPoint:v17 prevPoint:*&v43 + y * *&v42 + *location * x onscreenVisibleStrokes:{*(&v43 + 1) + y * *(&v42 + 1) + *&location[1] * x, *&v43 + y * *&v42 + *location * x + 1.0, *(&v43 + 1) + y * *(&v42 + 1) + *&location[1] * x + 1.0}];
    if ([v18 count] != 1)
    {
      goto LABEL_28;
    }

    firstObject = [v18 firstObject];
    if (![firstObject _shapeType])
    {
      _strokeData = [firstObject _strokeData];
      if (![_strokeData hasValidPointTimestampData])
      {
LABEL_26:

        goto LABEL_27;
      }

      _strokeMask = [firstObject _strokeMask];

      if (!_strokeMask)
      {
        v22 = objc_alloc_init(PKShapeDrawingController);
        _strokeData = v22;
        if (v22)
        {
          v22->_shapeRecognitionOn = 1;
        }

        [(PKTiledView *)self inputScale];
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *location = 0u;
        v42 = 0u;
        v24 = [(PKShapeDrawingController *)_strokeData shapeFromStroke:firstObject inputScale:location averageInputPoint:0 allowedShapeTypes:v23];
        v25 = v24;
        if (v24 && [v24 type] != 6 && objc_msgSend(v25, "type") != 7)
        {
          objc_initWeak(location, self);
          v33 = MEMORY[0x1E69E9820];
          v34 = 3221225472;
          v35 = __40__PKTiledView_convertToShapeAtLocation___block_invoke;
          v36 = &unk_1E82D6CB8;
          objc_copyWeak(&v40, location);
          v37 = drawing;
          v38 = firstObject;
          v39 = v25;
          v27 = dispatch_block_create(0, &v33);
          if (self)
          {
            objc_setProperty_nonatomic_copy(self, v26, v27, 824);
          }

          v28 = [(PKTiledView *)self hoverController:v33];
          [(PKHoverController *)v28 showLabel:x atLocation:y];

          v29 = +[PKHoverSettings sharedSettings];
          [v29 hoverAndHoldActionTimeInterval];
          v31 = dispatch_time(0, (v30 * 1000000000.0));
          if (self)
          {
            delayHoverPreviewUntil = self->_delayHoverPreviewUntil;
          }

          else
          {
            delayHoverPreviewUntil = 0.0;
          }

          dispatch_after(v31, MEMORY[0x1E69E96A0], *&delayHoverPreviewUntil);

          objc_destroyWeak(&v40);
          objc_destroyWeak(location);
        }

        goto LABEL_26;
      }
    }

LABEL_27:

LABEL_28:
  }
}

void __40__PKTiledView_convertToShapeAtLocation___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v15[0] = *(a1 + 40);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v5 = [v3 undoableDeleteStrokes:v4];

    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) strokes];
    v8 = [v6 undoableAddNewStrokes:v7];

    v9 = [WeakRetained canvasView];
    v14[0] = v8;
    v14[1] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [WeakRetained canvasView:v9 registerUndoCommands:v10];

    [WeakRetained didChangeDrawing:*(a1 + 32)];
    v13 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [WeakRetained _selectionRefreshWithChangeToDrawings:v11 completion:&__block_literal_global_545];

    v12 = [WeakRetained hoverController];
    [v12 hideLabel];
  }
}

- (void)_findSelectionTranscriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  selectionController = [(PKTiledView *)self selectionController];
  v5 = selectionController;
  if (selectionController)
  {
    v6 = *(selectionController + 152);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 _findTranscriptionWithCompletion:completionCopy];
}

- (id)_accessibilityUserTestingChildren
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = PKTiledView;
  _accessibilityUserTestingChildren = [(PKTiledView *)&v16 _accessibilityUserTestingChildren];
  v5 = [v3 arrayWithArray:_accessibilityUserTestingChildren];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v7 = [attachmentViews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(attachmentViews);
        }

        _accessibilityUserTestingChildren2 = [*(*(&v12 + 1) + 8 * i) _accessibilityUserTestingChildren];
        [v5 addObjectsFromArray:_accessibilityUserTestingChildren2];
      }

      v7 = [attachmentViews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_getAllHandwritingTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  selectionController = [(PKTiledView *)self selectionController];
  [PKSelectionController getAllHandwritingTranscription:selectionController];
}

- (void)_copyAll:(id)all
{
  allCopy = all;
  selectionController = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)selectionController copyAll:allCopy];
}

- (PKTiledViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasViewZOrderPolicy);

  return WeakRetained;
}

- (UIView)contentSnapshottingView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentCoordinateSpace);

  return WeakRetained;
}

- (id)drawingUndoTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingUndoSelector);

  return WeakRetained;
}

- (PKAutoRefineTaskCoordinator)externalAutoRefineTaskCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_editMenuInteraction);

  return WeakRetained;
}

- (void)updateTilesForVisibleRectRendering:(uint64_t)rendering offscreen:(char)offscreen overrideAdditionalStrokes:
{
  while (2)
  {
    selfCopy = self;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          self = selfCopy;
          v9 = (a2 - selfCopy) >> 5;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3uLL:
                v70 = selfCopy[7];
                v71 = *(a2 - 1);
                if (v70 >= selfCopy[3])
                {
                  if (v71 >= v70)
                  {
                    return;
                  }

                  v68 = (selfCopy + 4);
                  v69 = (a2 - 4);
                  goto LABEL_174;
                }

                if (v71 < v70)
                {
                  goto LABEL_113;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy, (selfCopy + 4));
                if (*(a2 - 1) >= selfCopy[7])
                {
                  return;
                }

                v72 = (selfCopy + 4);
LABEL_114:
                v73 = (a2 - 4);
LABEL_115:

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v72, v73);
                return;
              case 4uLL:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(selfCopy, (selfCopy + 4), (selfCopy + 8), (a2 - 4));
                return;
              case 5uLL:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(selfCopy, (selfCopy + 4), (selfCopy + 8), (selfCopy + 12));
                if (*(a2 - 1) >= selfCopy[15])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((selfCopy + 12), (a2 - 4));
                if (selfCopy[15] >= selfCopy[11])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((selfCopy + 8), (selfCopy + 12));
                if (selfCopy[11] >= selfCopy[7])
                {
                  return;
                }

                v68 = (selfCopy + 4);
                v69 = (selfCopy + 8);
LABEL_174:
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v68, v69);
                if (selfCopy[7] >= selfCopy[3])
                {
                  return;
                }

                v73 = (selfCopy + 4);
                v72 = selfCopy;
                goto LABEL_115;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 1) >= selfCopy[3])
              {
                return;
              }

LABEL_113:
              v72 = selfCopy;
              goto LABEL_114;
            }
          }

          if (v9 <= 23)
          {
            v74 = selfCopy + 4;
            v76 = selfCopy == a2 || v74 == a2;
            if (offscreen)
            {
              if (!v76)
              {
                v77 = 0;
                v78 = selfCopy;
                do
                {
                  v79 = v74;
                  if (v78[7] < v78[3])
                  {
                    v80 = *v74;
                    *v74 = 0.0;
                    v145 = *(v78 + 5);
                    v81 = v78[7];
                    v82 = v77;
                    while (1)
                    {
                      v83 = selfCopy + v82;
                      v84 = *(selfCopy + v82);
                      *v83 = 0;
                      v85 = *(selfCopy + v82 + 32);
                      *(v83 + 4) = v84;

                      *(v83 + 40) = *(v83 + 8);
                      *(v83 + 7) = *(v83 + 3);
                      if (!v82)
                      {
                        break;
                      }

                      v82 -= 32;
                      if (v81 >= *(v83 - 1))
                      {
                        v86 = selfCopy + v82 + 32;
                        goto LABEL_136;
                      }
                    }

                    v86 = selfCopy;
LABEL_136:
                    v87 = *v86;
                    *v86 = v80;

                    *(v83 + 8) = v145;
                    *(v86 + 24) = v81;
                  }

                  v74 = v79 + 4;
                  v77 += 32;
                  v78 = v79;
                }

                while (v79 + 4 != a2);
              }
            }

            else if (!v76)
            {
              do
              {
                v132 = v74;
                if (*(self + 56) < *(self + 24))
                {
                  v133 = *v74;
                  *v74 = 0.0;
                  v148 = *(self + 40);
                  v134 = *(self + 56);
                  v135 = v74;
                  v136 = v74;
                  do
                  {
                    v137 = *(v136 - 4);
                    v136 -= 4;
                    *v136 = 0.0;
                    v138 = *v135;
                    *v135 = v137;

                    *(v135 + 1) = *(v135 - 3);
                    v135[3] = *(v135 - 1);
                    v139 = *(v135 - 5);
                    v135 = v136;
                  }

                  while (v134 < v139);
                  v140 = *v136;
                  *v136 = v133;

                  *(v136 + 1) = v148;
                  v136[3] = v134;
                }

                v74 = v132 + 4;
                self = v132;
              }

              while (v132 + 4 != a2);
            }

            return;
          }

          if (!rendering)
          {
            if (selfCopy != a2)
            {
              v88 = v10 >> 1;
              v89 = v10 >> 1;
              do
              {
                v90 = v89;
                if (v88 >= v89)
                {
                  v91 = (2 * v89) | 1;
                  v92 = self + 32 * v91;
                  if (2 * v90 + 2 < v9 && *(v92 + 24) < *(v92 + 56))
                  {
                    v92 += 32;
                    v91 = 2 * v90 + 2;
                  }

                  v93 = self + 32 * v90;
                  v94 = *(v93 + 24);
                  if (*(v92 + 24) >= v94)
                  {
                    v95 = *v93;
                    *v93 = 0;
                    v146 = *(v93 + 8);
                    do
                    {
                      v96 = v93;
                      v93 = v92;
                      v97 = *v92;
                      *v93 = 0;
                      v98 = *v96;
                      *v96 = v97;

                      v99 = *(v93 + 8);
                      *(v96 + 24) = *(v93 + 24);
                      *(v96 + 8) = v99;
                      if (v88 < v91)
                      {
                        break;
                      }

                      v100 = 2 * v91;
                      v91 = (2 * v91) | 1;
                      v92 = self + 32 * v91;
                      v101 = v100 + 2;
                      if (v101 < v9 && *(v92 + 24) < *(v92 + 56))
                      {
                        v92 += 32;
                        v91 = v101;
                      }
                    }

                    while (*(v92 + 24) >= v94);
                    v102 = *v93;
                    *v93 = v95;

                    *(v93 + 8) = v146;
                    *(v93 + 24) = v94;
                  }
                }

                v89 = v90 - 1;
              }

              while (v90);
              do
              {
                v103 = 0;
                v104 = *self;
                *self = 0;
                v147 = *(self + 8);
                v150 = *(self + 24);
                selfCopy2 = self;
                do
                {
                  v106 = selfCopy2 + 32 * v103;
                  v107 = v106 + 32;
                  if (2 * v103 + 2 >= v9)
                  {
                    v103 = (2 * v103) | 1;
                  }

                  else
                  {
                    v108 = *(v106 + 56);
                    v109 = *(v106 + 88);
                    v110 = v106 + 64;
                    if (v108 >= v109)
                    {
                      v103 = (2 * v103) | 1;
                    }

                    else
                    {
                      v107 = v110;
                      v103 = 2 * v103 + 2;
                    }
                  }

                  v111 = *v107;
                  *v107 = 0;
                  v112 = *selfCopy2;
                  *selfCopy2 = v111;

                  v113 = *(v107 + 8);
                  *(selfCopy2 + 24) = *(v107 + 24);
                  *(selfCopy2 + 8) = v113;
                  selfCopy2 = v107;
                }

                while (v103 <= ((v9 - 2) >> 1));
                v114 = a2 - 4;
                if (v107 == a2 - 4)
                {
                  v131 = *v107;
                  *v107 = v104;

                  *(v107 + 24) = v150;
                  *(v107 + 8) = v147;
                }

                else
                {
                  v115 = *(a2 - 4);
                  *(a2 - 4) = 0.0;
                  v116 = *v107;
                  *v107 = v115;

                  v117 = *(a2 - 3);
                  *(v107 + 24) = *(a2 - 1);
                  *(v107 + 8) = v117;
                  v118 = *(a2 - 4);
                  *(a2 - 4) = v104;

                  *(a2 - 1) = v150;
                  *(a2 - 3) = v147;
                  v119 = (v107 - self + 32) >> 5;
                  v120 = v119 < 2;
                  v121 = v119 - 2;
                  if (!v120)
                  {
                    v122 = v121 >> 1;
                    v123 = self + 32 * (v121 >> 1);
                    v124 = *(v107 + 24);
                    if (*(v123 + 24) < v124)
                    {
                      v125 = *v107;
                      *v107 = 0;
                      v141 = *(v107 + 8);
                      do
                      {
                        v126 = v107;
                        v107 = v123;
                        v127 = *v123;
                        *v107 = 0;
                        v128 = *v126;
                        *v126 = v127;

                        v129 = *(v107 + 8);
                        *(v126 + 24) = *(v107 + 24);
                        *(v126 + 8) = v129;
                        if (!v122)
                        {
                          break;
                        }

                        v122 = (v122 - 1) >> 1;
                        v123 = self + 32 * v122;
                      }

                      while (*(v123 + 24) < v124);
                      v130 = *v107;
                      *v107 = v125;

                      *(v107 + 8) = v141;
                      *(v107 + 24) = v124;
                    }
                  }
                }

                a2 = v114;
                v120 = v9-- <= 2;
              }

              while (!v120);
            }

            return;
          }

          v11 = &selfCopy[4 * (v9 >> 1)];
          v12 = *(a2 - 1);
          if (v9 >= 0x81)
          {
            v13 = *(v11 + 24);
            if (v13 >= *(self + 24))
            {
              if (v12 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(self + 32 * (v9 >> 1), (a2 - 4)), *(v11 + 24) >= *(self + 24)))
              {
LABEL_26:
                v19 = *(v11 - 8);
                v20 = *(a2 - 5);
                if (v19 >= *(self + 56))
                {
                  if (v20 >= v19 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11 - 32, (a2 - 8)), *(v11 - 8) >= *(self + 56)))
                  {
LABEL_39:
                    v23 = *(v11 + 56);
                    v24 = *(a2 - 9);
                    if (v23 >= *(self + 88))
                    {
                      if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11 + 32, (a2 - 12)), *(v11 + 56) >= *(self + 88)))
                      {
LABEL_48:
                        v27 = *(v11 + 24);
                        v28 = *(v11 + 56);
                        if (v27 >= *(v11 - 8))
                        {
                          if (v28 >= v27)
                          {
                            goto LABEL_57;
                          }

                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11, v11 + 32);
                          if (*(v11 + 24) >= *(v11 - 8))
                          {
                            goto LABEL_57;
                          }

                          v30 = v11 - 32;
                          v29 = v11;
                        }

                        else if (v28 >= v27)
                        {
                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11 - 32, v11);
                          if (*(v11 + 56) >= *(v11 + 24))
                          {
LABEL_57:
                            v31 = *self;
                            *self = 0;
                            v142 = *(self + 8);
                            v149 = *(self + 24);
                            v32 = *v11;
                            *v11 = 0;
                            v33 = *self;
                            *self = v32;

                            v34 = *(v11 + 8);
                            *(self + 24) = *(v11 + 24);
                            *(self + 8) = v34;
                            v35 = *v11;
                            *v11 = v31;

                            *(v11 + 24) = v149;
                            *(v11 + 8) = v142;
                            goto LABEL_58;
                          }

                          v29 = v11 + 32;
                          v30 = v11;
                        }

                        else
                        {
                          v29 = v11 + 32;
                          v30 = v11 - 32;
                        }

                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v30, v29);
                        goto LABEL_57;
                      }

                      v25 = self + 64;
                      v26 = v11 + 32;
                    }

                    else
                    {
                      v25 = self + 64;
                      if (v24 >= v23)
                      {
                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v25, v11 + 32);
                        if (*(a2 - 9) >= *(v11 + 56))
                        {
                          goto LABEL_48;
                        }

                        v25 = v11 + 32;
                      }

                      v26 = (a2 - 12);
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v25, v26);
                    goto LABEL_48;
                  }

                  v21 = self + 32;
                  v22 = v11 - 32;
                }

                else
                {
                  v21 = self + 32;
                  if (v20 >= v19)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v21, v11 - 32);
                    if (*(a2 - 5) >= *(v11 - 8))
                    {
                      goto LABEL_39;
                    }

                    v21 = v11 - 32;
                  }

                  v22 = (a2 - 8);
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v21, v22);
                goto LABEL_39;
              }

              selfCopy4 = self;
              v15 = self + 32 * (v9 >> 1);
            }

            else
            {
              selfCopy4 = self;
              if (v12 >= v13)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(self, self + 32 * (v9 >> 1));
                if (*(a2 - 1) >= *(v11 + 24))
                {
                  goto LABEL_26;
                }

                selfCopy4 = self + 32 * (v9 >> 1);
              }

              v15 = (a2 - 4);
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy4, v15);
            goto LABEL_26;
          }

          v16 = *(self + 24);
          if (v16 < *(v11 + 24))
          {
            selfCopy5 = self + 32 * (v9 >> 1);
            if (v12 >= v16)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy5, self);
              if (*(a2 - 1) >= *(self + 24))
              {
                goto LABEL_58;
              }

              selfCopy5 = self;
            }

            selfCopy6 = (a2 - 4);
            goto LABEL_34;
          }

          if (v12 < v16)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(self, (a2 - 4));
            if (*(self + 24) < *(v11 + 24))
            {
              selfCopy5 = self + 32 * (v9 >> 1);
              selfCopy6 = self;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy5, selfCopy6);
            }
          }

LABEL_58:
          --rendering;
          if (offscreen)
          {
            break;
          }

          v36 = *(self + 24);
          if (*(self - 8) < v36)
          {
            goto LABEL_61;
          }

          v54 = *self;
          *self = 0;
          v144 = *(self + 8);
          if (v36 >= *(a2 - 1))
          {
            v57 = (self + 32);
            do
            {
              selfCopy = v57;
              if (v57 >= a2)
              {
                break;
              }

              v58 = v57[3];
              v57 += 4;
            }

            while (v36 >= v58);
          }

          else
          {
            selfCopy7 = self;
            do
            {
              selfCopy = (selfCopy7 + 32);
              v56 = *(selfCopy7 + 56);
              selfCopy7 += 32;
            }

            while (v36 >= v56);
          }

          v59 = a2;
          if (selfCopy < a2)
          {
            v60 = a2;
            do
            {
              v59 = (v60 - 4);
              v61 = *(v60 - 1);
              v60 -= 4;
            }

            while (v36 < v61);
          }

          while (selfCopy < v59)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy, v59);
            do
            {
              v62 = selfCopy[7];
              selfCopy += 4;
            }

            while (v36 >= v62);
            do
            {
              v63 = *(v59 - 8);
              v59 -= 32;
            }

            while (v36 < v63);
          }

          if (selfCopy - 4 != self)
          {
            v64 = *(selfCopy - 4);
            *(selfCopy - 4) = 0.0;
            v65 = *self;
            *self = v64;

            v66 = *(selfCopy - 3);
            *(self + 24) = *(selfCopy - 1);
            *(self + 8) = v66;
          }

          v67 = *(selfCopy - 4);
          *(selfCopy - 4) = v54;

          offscreen = 0;
          *(selfCopy - 3) = v144;
          *(selfCopy - 1) = v36;
        }

        v36 = *(self + 24);
LABEL_61:
        v37 = 0;
        v38 = *self;
        *self = 0;
        v143 = *(self + 8);
        do
        {
          v39 = *(self + v37 + 56);
          v37 += 32;
        }

        while (v39 < v36);
        v40 = (self + v37);
        v41 = a2;
        if (v37 == 32)
        {
          v44 = a2;
          while (v40 < v44)
          {
            v42 = (v44 - 4);
            v45 = *(v44 - 1);
            v44 -= 4;
            if (v45 < v36)
            {
              goto LABEL_71;
            }
          }

          v42 = v44;
        }

        else
        {
          do
          {
            v42 = (v41 - 4);
            v43 = *(v41 - 1);
            v41 -= 4;
          }

          while (v43 >= v36);
        }

LABEL_71:
        if (v40 >= v42)
        {
          selfCopy = v40;
        }

        else
        {
          v46 = v42;
          selfCopy = v40;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(selfCopy, v46);
            do
            {
              v47 = selfCopy[7];
              selfCopy += 4;
            }

            while (v47 < v36);
            do
            {
              v48 = *(v46 - 8);
              v46 -= 32;
            }

            while (v48 >= v36);
          }

          while (selfCopy < v46);
        }

        if (selfCopy - 4 != self)
        {
          v49 = *(selfCopy - 4);
          *(selfCopy - 4) = 0.0;
          v50 = *self;
          *self = v49;

          v51 = *(selfCopy - 3);
          *(self + 24) = *(selfCopy - 1);
          *(self + 8) = v51;
        }

        v52 = *(selfCopy - 4);
        *(selfCopy - 4) = v38;

        *(selfCopy - 3) = v143;
        *(selfCopy - 1) = v36;
        if (v40 >= v42)
        {
          break;
        }

LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,false>(self, selfCopy - 4, rendering, offscreen & 1);
        offscreen = 0;
      }

      v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *>(self, selfCopy - 4);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *>(selfCopy, a2))
      {
        break;
      }

      if (!v53)
      {
        goto LABEL_84;
      }
    }

    a2 = selfCopy - 4;
    if (!v53)
    {
      continue;
    }

    break;
  }
}

- (void)setupRefineAnimationFrom:(id)from to:(id)to inDrawing:(id)drawing completionHandler:(id)handler
{
  handlerCopy = handler;
  drawingCopy = drawing;
  toCopy = to;
  fromCopy = from;
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  [refineAnimationController setupRefineAnimationFrom:fromCopy to:toCopy in:drawingCopy completionHandler:handlerCopy];
}

- (void)setupRefineAnimationFrom:(id)from to:(id)to inDrawing:(id)drawing alternateContainerView:(id)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  drawingCopy = drawing;
  toCopy = to;
  fromCopy = from;
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  v20 = *&transform->c;
  v21[0] = *&transform->a;
  v21[1] = v20;
  v21[2] = *&transform->tx;
  [refineAnimationController setupRefineAnimationFrom:fromCopy to:toCopy in:drawingCopy alternateContainerView:viewCopy alternateDrawingTransform:v21 completionHandler:handlerCopy];
}

- (void)setupStrokeInAnimationTo:(id)to inDrawing:(id)drawing completionHandler:(id)handler
{
  handlerCopy = handler;
  drawingCopy = drawing;
  toCopy = to;
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  [refineAnimationController setupStrokeInAnimationTo:toCopy in:drawingCopy completionHandler:handlerCopy];
}

- (void)setupStrokeInAnimationTo:(id)to inDrawing:(id)drawing alternateContainerView:(id)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  drawingCopy = drawing;
  toCopy = to;
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  v17 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v17;
  v18[2] = *&transform->tx;
  [refineAnimationController setupStrokeInAnimationTo:toCopy in:drawingCopy alternateContainerView:viewCopy alternateDrawingTransform:v18 completionHandler:handlerCopy];
}

- (void)startRefineAnimationWithDuration:(double)duration
{
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  [refineAnimationController startRefineAnimationWithDuration:duration];
}

- (void)stopRefineAnimation
{
  refineAnimationController = [(PKTiledView *)self refineAnimationController];
  [refineAnimationController stopRefineAnimation];
}

@end