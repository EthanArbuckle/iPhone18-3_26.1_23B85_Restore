@interface PKTiledView
+ (BOOL)showDebugOutlines;
+ (id)newInlineDrawingOfClass:(Class)a3;
- ($FF38E1E694A259ECA75E65D4243A6BF6)convertInputPoint:(SEL)a3 toAttachment:(id *)a4;
- (BOOL)_isScrollViewSizeAnimating;
- (BOOL)_isValidDropPointForStrokes:(CGPoint)a3 didInsertNewAttachment:(BOOL *)a4;
- (BOOL)_isZoomingOrResizing;
- (BOOL)_scrollViewIsScrollingOrZoomingOrResizing;
- (BOOL)_sixChannelBlendingIsActive;
- (BOOL)_snapshottingDisabled;
- (BOOL)_toolPickerIsOrWillBeVisible;
- (BOOL)_transparentBlendingIsActive;
- (BOOL)_updateHeightOfAttachmentIfNecessary:(id)a3;
- (BOOL)allowsFingerDrawing;
- (BOOL)canvasView:(id)a3 drawingIsShared:(id)a4;
- (BOOL)canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4;
- (BOOL)canvasView:(id)a3 shouldDiscardEndedStroke:(id)a4 drawing:(id)a5;
- (BOOL)canvasView:(id)a3 shouldDiscardTapStrokeAt:(CGPoint)a4 drawing:(id)a5;
- (BOOL)canvasViewShouldCombineStrokes:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hitSelectionAt:(CGPoint)a3;
- (BOOL)hoverController:(id)a3 shouldBeActiveAt:(CGPoint)a4;
- (BOOL)insertSpaceEnabled;
- (BOOL)invertColors;
- (BOOL)isAutoRefineEnabled;
- (BOOL)isDrawing;
- (BOOL)isExtendedDynamicRangeRenderingActive;
- (BOOL)isGenerationModelAvailable;
- (BOOL)isInNotesTextView;
- (BOOL)needToUpdateViewFrame;
- (BOOL)p_shouldSkipStrokeCacheInvalidationForAttachment:(id)a3;
- (BOOL)rulerHostWantsSharedRuler;
- (BOOL)selectionSupportsSnapToShape;
- (BOOL)selectionSupportsTranslate;
- (BOOL)shouldStartToolPreviewWhenHovering;
- (BOOL)tileIsVisibleForOffset:(CGPoint)a3 inAttachment:(id)a4 distanceToMiddle:(double *)a5;
- (BOOL)toolShadowShouldBeActive;
- (CGAffineTransform)canvasView:(SEL)a3 transformForStroke:(id)a4;
- (CGAffineTransform)contentCoordinateSpaceTransform;
- (CGAffineTransform)strokeTransform;
- (CGAffineTransform)transformFromStrokeSpaceToViewInAttachment:(SEL)a3;
- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)a3;
- (CGPoint)paletteViewHoverLocation:(id)a3;
- (CGPoint)pointInStrokeSpace:(CGPoint)a3 inDrawing:(id)a4;
- (CGRect)attachmentBoundsForDrawing:(id)a3;
- (CGRect)boundsForDrawing:(id)a3;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGRect)newViewFrame;
- (CGRect)visibleOnscreenBoundsForDrawing:(id)a3;
- (CGRect)visibleOnscreenBoundsForDrawing:(id)a3 slack:(CGSize)a4;
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
- (id)_attachmentForUUID:(id)a3;
- (id)_createPKStrokesFromCHDrawing:(id)a3 inputScale:(double)a4 sourceStroke:(id)a5 ink:(id)a6;
- (id)_createPKStrokesFromCHDrawing:(id)a3 transform:(CGAffineTransform *)a4 inputScale:(double)a5 sourceStroke:(id)a6;
- (id)_hitAttachment:(CGPoint)a3 includeStandinAttachment:(BOOL)a4 expandBottomAttachment:(BOOL)a5;
- (id)_recentStrokesForAutoRefine;
- (id)_tilesForAttachment:(id)a3 bounds:(CGRect)a4 invert:(BOOL)a5;
- (id)_visibleAttachments;
- (id)_visibleTilesForAttachment:(id)a3;
- (id)attachmentForHoverPreviewAt:(id *)a3;
- (id)attachmentForUUID:(id)a3;
- (id)attachmentViews;
- (id)attachments;
- (id)canvasView:(id)a3 attachmentViewForDrawing:(id)a4;
- (id)canvasViewContentCoordinateSpace:(id)a3;
- (id)canvasViewTouchView:(id)a3;
- (id)currentDrawingBeingCopiedToCanvas;
- (id)didChangeDrawing:(id)a3 undoable:(BOOL)a4;
- (id)drawingGestureRecognizer;
- (id)drawingUndoTarget;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)generateTile:(CGPoint)a3 inAttachment:(id)a4 rendering:(BOOL)a5 offscreen:(BOOL)a6 overrideAdditionalStrokes:(id)a7;
- (id)hitAttachment:(CGPoint)a3 includeStandinAttachment:(BOOL)a4 expandBottomAttachment:(BOOL)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hoverGestureRecognizer;
- (id)initInScrollView:(id)a3;
- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6;
- (id)paletteViewHoverView:(id)a3;
- (id)rulerHostingView;
- (id)rulerView;
- (id)selectedStrokeIdsForAttachment:(id)a3;
- (id)smoothedHullForStroke:(id)a3;
- (id)tileForOffset:(CGPoint)a3 inAttachment:(id)a4 offscreen:(BOOL)a5 tileZoomScale:(double)a6;
- (id)topZAttachment;
- (id)undoManager;
- (id)visibleAttachments;
- (id)visibleOnScreenStrokesForDrawing:(id)a3;
- (int64_t)_activeSixChannelBlendingMode;
- (int64_t)_totalVisibleStrokes;
- (int64_t)effectiveMaximumSupportedContentVersion;
- (uint64_t)isSystemSnapshotting;
- (vector<AttachmentTileInfo,)getVisibleTiles:(PKTiledView *)self;
- (void)_addAttachmentsUnderView:(id)a3 toArray:(id)a4;
- (void)_beginAnalyticsSessionIfNecessary;
- (void)_cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:(BOOL)a3;
- (void)_cancelHideCanvasIfNecessary;
- (void)_canvasView:(id)a3 didFinishRenderingNewStrokes:(id)a4 inDrawing:(id)a5 forPreview:(BOOL)a6;
- (void)_canvasViewDidEraseStrokes:(id)a3;
- (void)_canvasViewWillBeginDrawing:(id)a3 startPoint:(id *)a4 forPreview:(BOOL)a5;
- (void)_canvasViewWillCreateSnapshot;
- (void)_cleanupTilesWithStaleTransform;
- (void)_clearSelectionIfNecessary;
- (void)_copyAll:(id)a3;
- (void)_copyFromCanvas:(id)a3 intoAttachment:(id)a4 hideCanvas:(BOOL)a5 strokes:(id)a6;
- (void)_createHoverControllerIfNecessary;
- (void)_didAddDrawingAttachmentView;
- (void)_didEndInteractiveResize;
- (void)_disableScrollViewPanGestureIfNecessary;
- (void)_dismissInsertSpaceHandlesIfNecessary;
- (void)_endAnalyticsSessionsIfNecessary;
- (void)_endHoverToolPreview;
- (void)_findSelectionTranscriptionWithCompletion:(id)a3;
- (void)_finishCombiningStrokesIfNecessaryForAttachment:(id)a3;
- (void)_flushCaches;
- (void)_getAllHandwritingTranscription:(id)a3;
- (void)_handleDrawingDidChangeForAttachment:(id)a3 didChangeVisibleStrokes:(BOOL)a4;
- (void)_handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3;
- (void)_handleSingleTapAtLocation:(CGPoint)a3 forAttachment:(id)a4;
- (void)_hideCanvas;
- (void)_keepPencilShadowVisible;
- (void)_layoutSubviewsUpdateTilesForRendering:(BOOL)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_pauseHoverPreviewForTimeInterval:(double)a3;
- (void)_reenableScrollViewPanGestureIfNecessary;
- (void)_resetDrawingState;
- (void)_resetSelectedStrokeStateForRenderer;
- (void)_sceneDidActivate:(id)a3;
- (void)_scrollViewDidLayoutSubviews:(id)a3;
- (void)_scrollViewDidScroll;
- (void)_selectionRefreshWithChangeToDrawings:(id)a3 overrideAdditionalStrokes:(id)a4 completion:(id)a5;
- (void)_setAdditionalStrokes:(id)a3 inDrawing:(id)a4 invalidateTiles:(BOOL)a5 forceOffscreen:(BOOL)a6 completion:(id)a7;
- (void)_setDrawingEnabled:(BOOL)a3;
- (void)_setExternalAttachments:(id)a3;
- (void)_setHasSeenAnyExtendedDynamicRangeInks;
- (void)_setupPencilShadowViewIfNecessary;
- (void)_showEditMenuFromLocation:(CGPoint)a3 forAttachment:(id)a4;
- (void)_straightenStrokes:(id)a3 drawing:(id)a4 completionBlock:(id)a5;
- (void)_transientlyUpdateHeightOfAttachment:(id)a3 delta:(double)a4;
- (void)_trimRecentStrokes;
- (void)_updateAttachmentHeightIfNecessaryForDrawing:(id)a3;
- (void)_updateAttachmentOnscreenBounds;
- (void)_updateDrawingGestureEnablement;
- (void)_updateDrawingGestureEnablementWithInk:(id)a3;
- (void)_updateForToolPickerVisibilityChange:(id)a3;
- (void)_updatePencilShadowView:(id *)a3;
- (void)_updateSymbolPreviewViewForTouch:(id *)a3 attachment:(id)a4 alpha:(double)a5;
- (void)_updateToolPreviewIndicatorInputPoint:(id *)a3;
- (void)_updateWantsExtendedDynamicRangeContent;
- (void)_willBeginInteractiveResize;
- (void)blitOldTilesIntoNewTiles:(id)a3 completion:(id)a4;
- (void)cancelTileGenerationInvalidateTiles:(BOOL)a3;
- (void)canvasView:(id)a3 beganStroke:(id)a4;
- (void)canvasView:(id)a3 cancelledStroke:(id)a4;
- (void)canvasView:(id)a3 drawingDidChange:(id)a4;
- (void)canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5;
- (void)canvasView:(id)a3 registerMultiStepUndoCommands:(id)a4;
- (void)canvasView:(id)a3 registerUndoCommands:(id)a4;
- (void)canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5;
- (void)canvasView:(id)a3 textStrokesCoveredByStroke:(id)a4 drawing:(id)a5 completion:(id)a6;
- (void)canvasViewDidBeginDrawing:(id)a3;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)canvasViewDrawingMoved:(id)a3 withTouch:(id)a4;
- (void)canvasViewInvalidateTiles:(id)a3;
- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5;
- (void)changeStrokesUsingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6;
- (void)commitSelectionIfNecessaryWithCompletion:(id)a3;
- (void)convertToShapeAtLocation:(CGPoint)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)endLiveResize;
- (void)getAttachment:(id)a3 strokeTransform:(CGAffineTransform *)a4 paperTransform:(CGAffineTransform *)a5;
- (void)getAttachment:(id)a3 strokeTransform:(CGAffineTransform *)a4 paperTransform:(CGAffineTransform *)a5 scrollViewContentOffset:(CGPoint)a6;
- (void)hoverController:(id)a3 didBegin:(id *)a4;
- (void)hoverController:(id)a3 didUpdate:(id *)a4;
- (void)hoverController:(id)a3 holdGestureMeanTouch:(id *)a4 latestTouch:(id *)a5;
- (void)hoverController:(id)a3 intentionalHoverWithDuration:(double)a4;
- (void)hoverControllerDidEnd:(id)a3;
- (void)hoverControllerHoldGestureEnded:(id)a3;
- (void)insertCanvasView:(id)a3 intoScrollView:(id)a4;
- (void)insertSpace:(id)a3;
- (void)insertSpaceAtLocation:(CGPoint)a3;
- (void)layoutSubviews;
- (void)newCanvasView;
- (void)paletteViewPencilDidTap:(id)a3;
- (void)performUndo:(id)a3;
- (void)purgeNonVisibleTiles;
- (void)refine:(id)a3 strokes:(id)a4 drawing:(id)a5;
- (void)registerUndoCommand:(id)a3;
- (void)registerUndoCommands:(id)a3;
- (void)registerUndoCommands:(id)a3 andChangeToDrawing:(id)a4;
- (void)renderAttachment:(id)a3 intoCanvas:(id)a4 showing:(BOOL)a5;
- (void)replaceInkTexture:(id)a3 image:(CGImage *)a4;
- (void)replayCanvasViewDrawingMoved:(id)a3 inputPoint:(id *)a4 inputType:(int64_t)a5;
- (void)resizeTiles:(id)a3 completion:(id)a4;
- (void)resumeWorkAfterDrawing;
- (void)selectionDidChange;
- (void)selectionSupportsRefinement:(id)a3;
- (void)setCanvasViewZOrderPolicy:(int64_t)a3;
- (void)setCurrentDrawingBeingCopiedToCanvas:(id *)a1;
- (void)setCurrentPreviewDrawingUUID:(uint64_t)a1;
- (void)setDefaultDrawingClass:(Class)a3;
- (void)setDelegate:(id)a3;
- (void)setDisableTileRendering:(BOOL)a3;
- (void)setDrawBitmapEraserMask:(BOOL)a3;
- (void)setDrawingPolicy:(unint64_t)a3;
- (void)setInk:(id)a3;
- (void)setInsertSpaceEnabled:(BOOL)a3;
- (void)setIsAutoRefineEnabled:(BOOL)a3;
- (void)setLinedPaper:(id)a3;
- (void)setLiveAttachment:(uint64_t)a1;
- (void)setPaperTexture:(id)a3;
- (void)setRulerEnabled:(BOOL)a3;
- (void)setRulerHostingDelegate:(id)a3;
- (void)setSelectedStrokeIds:(id)a3 selectionType:(int64_t)a4 forAttachment:(id)a5;
- (void)setSelectedStrokesColor:(id)a3;
- (void)setSelectionHidden:(BOOL)a3;
- (void)setSixChannelBlending:(BOOL)a3;
- (void)setSixChannelBlendingDisableSnapshotting:(BOOL)a3;
- (void)setSixChannelBlendingRendersTransparent:(BOOL)a3;
- (void)setWantsExtendedDynamicRangeContent:(BOOL)a3;
- (void)setupGestures;
- (void)setupRefineAnimationFrom:(id)a3 to:(id)a4 inDrawing:(id)a5 alternateContainerView:(id)a6 alternateDrawingTransform:(CGAffineTransform *)a7 completionHandler:(id)a8;
- (void)setupRefineAnimationFrom:(id)a3 to:(id)a4 inDrawing:(id)a5 completionHandler:(id)a6;
- (void)setupStrokeInAnimationTo:(id)a3 inDrawing:(id)a4 alternateContainerView:(id)a5 alternateDrawingTransform:(CGAffineTransform *)a6 completionHandler:(id)a7;
- (void)setupStrokeInAnimationTo:(id)a3 inDrawing:(id)a4 completionHandler:(id)a5;
- (void)showImageWandTipWithController:(id)a3 toolPicker:(id)a4;
- (void)snapToShapeSelection;
- (void)startLiveResize;
- (void)startRefineAnimationWithDuration:(double)a3;
- (void)startToolPreviewIfPossibleForInputPoint:(id *)a3;
- (void)startedDrawingInBlankSpaceWithTouch:(id)a3 location:(CGPoint)a4;
- (void)stopRefineAnimation;
- (void)straighten:(id)a3 strokes:(id)a4 drawing:(id)a5;
- (void)straightenStrokes:(id)a3 drawing:(id)a4 completionBlockWithStrokeTransformInfo:(id)a5;
- (void)swapOffscreenCallback:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transformingSelectionBegan;
- (void)transformingSelectionCancelled;
- (void)transformingSelectionChanged:(CGAffineTransform *)a3;
- (void)transformingSelectionEnded;
- (void)updateAfterTraitCollectionChange;
- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(id)a3;
- (void)updateExistingTiles:(BOOL)a3;
- (void)updateForAllowedDrawingInput;
- (void)updateTilesForVisibleRect;
- (void)updateTilesForVisibleRectForceIfZooming:(BOOL)a3;
- (void)updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:(id)a3 withCallback:(id)a4;
- (void)updateTilesForVisibleRectRendering:(BOOL)a3 offscreen:(BOOL)a4 overrideAdditionalStrokes:(id)a5;
- (void)updateTilesForVisibleRectRendering:(uint64_t)a3 offscreen:(char)a4 overrideAdditionalStrokes:;
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
    v12 = [(PKTiledView *)self delegate];
    v13 = [v12 tiledViewAttachmentViews];

    v11 = [v13 copy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(PKTiledView *)self attachmentContainerView];
    [(PKTiledView *)self _addAttachmentsUnderView:v4 toArray:v3];

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
              [v3 addObject:v10];
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }

    v11 = [v3 copy];
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
  v3 = [(PKTiledView *)self contentCoordinateSpace];

  if (v3)
  {
    [(PKTiledView *)self contentCoordinateSpaceTransform];
    return sqrt(v10 * v10 + v9 * v9);
  }

  else
  {
    v5 = [(PKTiledView *)self scrollView];

    if (v5)
    {
      v6 = [(PKTiledView *)self scrollView];
      [v6 zoomScale];
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
  v3 = [(PKTiledView *)self sixChannelBlending];
  if (v3)
  {
    LOBYTE(v3) = ![(PKTiledView *)self invertColors];
  }

  return v3;
}

- (id)rulerHostingView
{
  v3 = [(PKTiledView *)self rulerHostingDelegate];
  if (!v3 || (v4 = v3, -[PKTiledView rulerHostingDelegate](self, "rulerHostingDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0) || (-[PKTiledView rulerHostingDelegate](self, "rulerHostingDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rulerHostingView], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = self;
  }

  return v8;
}

- (BOOL)invertColors
{
  v2 = [(PKTiledView *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

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
  v21 = [(PKTiledView *)self scrollView];
  [v21 bounds];
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
    v14 = [(PKTiledView *)self scrollView];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(PKTiledCanvasView *)v22 setIsPDFCanvasForAnalytics:1];
    }
  }

  if ([(PKTiledView *)self showDebugOutlines])
  {
    v16 = [(PKTiledCanvasView *)v22 layer];
    [v16 setBorderWidth:2.0];

    v17 = [MEMORY[0x1E69DC888] purpleColor];
    v18 = [v17 CGColor];
    v19 = [(PKTiledCanvasView *)v22 layer];
    [v19 setBorderColor:v18];
  }

  [(PKTiledView *)self setDrawingUndoTarget:self];
  [(PKTiledView *)self setDrawingUndoSelector:sel_performUndo_];
  [(PKTiledCanvasView *)v22 setDelegate:self];
  [(PKTiledCanvasView *)v22 setUserInteractionEnabled:0];
  [(PKTiledView *)self setCanvasView:v22];
  [(PKTiledView *)self setupGestures];
  v20 = [(PKTiledView *)self scrollView];
  [(PKTiledView *)self insertCanvasView:v22 intoScrollView:v20];
}

- (BOOL)isExtendedDynamicRangeRenderingActive
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"internalSettings.drawing.disableHDRMetalRenderer"];

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
  v3 = [(PKTiledView *)self allowsFingerDrawing];
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
    if (v3)
    {
      v4 = &unk_1F47C18E0;
    }

    else
    {
      v4 = &unk_1F47C18F8;
    }

    v5 = [(PKTiledView *)self drawingGestureRecognizer];
    [v5 setAllowedTouchTypes:v4];

    v6 = [(PKTiledView *)self scrollView];
    v7 = [v6 panGestureRecognizer];
    v8 = v7;
    if (v3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [v7 setMinimumNumberOfTouches:v9];
    goto LABEL_12;
  }

  [(PKTiledView *)self _updateRemoteEffect];
  if (![(PKTiledView *)self _isVirtualDevice])
  {
    v25 = [(PKTiledView *)self drawingGestureRecognizer];
    [v25 setAllowedTouchTypes:&unk_1F47C18B0];

    v26 = [(PKTiledView *)self scrollView];
    v27 = [v26 panGestureRecognizer];
    [v27 setMinimumNumberOfTouches:1];

    v6 = [(PKTiledView *)self scrollView];
    v8 = [v6 panGestureRecognizer];
    [v8 setAllowedTouchTypes:&unk_1F47C18C8];
LABEL_12:
  }

  v10 = [(PKTiledView *)self drawingGestureRecognizer];
  v11 = [v10 allowedTouchTypes];
  v12 = [(PKTiledView *)self generationToolGestureRecognizer];
  [v12 setAllowedTouchTypes:v11];

  v13 = [(PKTiledView *)self drawingGestureRecognizer];
  v14 = [v13 allowedTouchTypes];
  v15 = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
  [v15 setAllowedTouchTypes:v14];

  v16 = [(PKTiledView *)self selectionController];
  v17 = [(PKSelectionController *)v16 selectionInteraction];
  v18 = [(PKTiledView *)self ink];
  [v17 _updateAllowedTouchTypesForSelectedInk:v18];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [(PKTiledView *)self attachmentViews];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v20)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v28 + 1) + 8 * i) fingerDrawingEnabledDidChange];
      }

      v20 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [(PKTiledView *)self allowsFingerDrawing];
    *buf = 67109120;
    v33 = v24;
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
  v6 = [(PKTiledView *)self window];
  if ([PKToolPicker isActiveToolPickerVisibleForWindow:v6])
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
  v13 = [(PKTiledView *)self canvasView];
  v14 = [v13 drawingGestureRecognizer];
  [(PKAttachmentView *)v12 addGestureRecognizer:v14];

  v15 = self->_simultaneousDrawingGestureRecognizer;
  v16 = [(PKTiledView *)self canvasView];
  [v16 setAllowSimultaneousGR:v15];

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
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 drawingGestureRecognizer];

  return v3;
}

- (PKInk)ink
{
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 ink];

  return v3;
}

- (id)attachmentViews
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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
          [v3 addObject:{v10, v13}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v3 copy];

  return v11;
}

- (UIImage)paperTexture
{
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 paperTexture];

  return v3;
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = PKTiledView;
  [(PKTiledView *)&v11 didMoveToWindow];
  [(PKTiledView *)self updateForAllowedDrawingInput];
  v3 = [(PKTiledView *)self window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x1E69DE338] object:v4];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x1E69DE358] object:v4];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel_startLiveResize name:*MEMORY[0x1E69DEB20] object:v4];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel_endLiveResize name:*MEMORY[0x1E69DEB28] object:v4];

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_2);
  }

  else
  {
    [(PKTiledView *)self _endAnalyticsSessionsIfNecessary];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:self name:*MEMORY[0x1E69DE358] object:0];
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
  v3 = [(PKTiledView *)self scrollView];
  if (([v3 isZooming] & 1) != 0 || self && self->_disableTileRendering)
  {
    symbolPreviewActive = 1;
  }

  else
  {
    v6 = [(PKTiledView *)self isSystemSnapshotting];
    symbolPreviewActive = v6;
    if (self)
    {
      v7 = v6;
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
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 window];
  v2 = [v1 windowScene];
  v3 = [v2 _isPerformingSystemSnapshot];

  return v3;
}

- (BOOL)_scrollViewIsScrollingOrZoomingOrResizing
{
  if ([(PKTiledView *)self _isZoomingOrResizing])
  {
    return 1;
  }

  v4 = [(PKTiledView *)self scrollView];
  if ([v4 isDragging])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(PKTiledView *)self scrollView];
    if ([v5 isDecelerating])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(PKTiledView *)self scrollView];
      if ([v6 isScrollAnimating])
      {
        v3 = 1;
      }

      else
      {
        v7 = [(PKTiledView *)self scrollView];
        v3 = [v7 isZoomAnimating];
      }
    }
  }

  return v3;
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
  v3 = [(PKTiledView *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [(PKTiledView *)self scrollView];
  [v8 bounds];
  v10 = v9;
  v11 = [(PKTiledView *)self scrollView];
  [v11 bounds];
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
      v3 = [(PKTiledView *)self canvasView];
      [v3 _previewDrawingEnded];
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
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 isDrawing];

  return v3;
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
  v3 = [(PKTiledView *)self canvasView];
  if (v3)
  {
    v4 = [(PKTiledView *)self canvasView];
    [v4 layerContentsScale];
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
  v3 = [(PKTiledView *)self canvasView];
  [v3 _finishCombiningStrokesIfNecessary];

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
  v6 = [(PKTiledView *)self attachmentViews];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v22 + 1) + 8 * v9++) setContentHidden:0];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [(PKTiledView *)self canvasView];
  v11 = [v10 isHidden];

  v12 = [(PKTiledView *)self canvasView];
  [v12 setHidden:1];

  [(PKTiledView *)&self->super.super.super.isa setCurrentDrawingBeingCopiedToCanvas:?];
  if ((v11 & 1) == 0 && (*&self->_tiledViewFlags & 0x20) != 0)
  {
    v13 = [(PKTiledView *)self delegate];
    [v13 canvasView:self didChangeHiddenState:1];
  }

  if ([(PKTiledView *)self canvasViewZOrderPolicy]== 2)
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v19 = *MEMORY[0x1E695EFD0];
    v20 = v14;
    v21 = *(MEMORY[0x1E695EFD0] + 32);
    v15 = [(PKTiledView *)self canvasView];
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    [v15 setTransform:v18];

    v16 = [(PKTiledView *)self canvasView];
    v17 = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self insertCanvasView:v16 intoScrollView:v17];
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
  v3 = [(PKTiledView *)self scrollView];
  [v3 contentOffset];
  [v4 logScrollEventWithContentOffset:?];
}

- (void)purgeNonVisibleTiles
{
  v72 = *MEMORY[0x1E69E9840];
  if ((!self || !self->_hoverPreviewActive) && ![(PKTiledView *)self _isZoomingOrResizing])
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    [v2 systemUptime];
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
        v8 = [v7 viewRep];
        v9 = [v8 isHidden];

        if (!v9)
        {
          [(PKTiledView *)self bounds];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v31 = [MEMORY[0x1E696AAE8] mainBundle];
          v32 = [v31 bundleIdentifier];
          v33 = [v32 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

          if (v33)
          {
            goto LABEL_29;
          }

          v34 = [MEMORY[0x1E696AAE8] mainBundle];
          v35 = [v34 bundleIdentifier];
          if ([v35 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
          {

            goto LABEL_29;
          }

          v36 = [MEMORY[0x1E696AAE8] mainBundle];
          v37 = [v36 bundleIdentifier];
          v38 = [v37 isEqualToString:@"com.apple.quicklook.UIExtension"];

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
          v11 = v42;
          v43 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
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
              objc_enumerationMutation(v11);
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
                  v49 = [v7 purgedTiles];
                  v50 = [(PKRendererTile *)v46 properties];
                  [v49 setObject:v46 forKeyedSubscript:v50];

                  v51 = [v7 tiles];
                  v52 = [(PKRendererTile *)v46 properties];
                  [v51 removeObjectForKey:v52];
                }
              }

              if (v43 == ++v45)
              {
                v53 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
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
        v10 = [v7 tiles];
        v11 = [v10 allValues];

        v12 = [v11 countByEnumeratingWithState:&v61 objects:v70 count:16];
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
                objc_enumerationMutation(v11);
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
                v18 = [v7 purgedTiles];
                v19 = [(PKRendererTile *)v15 properties];
                [v18 setObject:v15 forKeyedSubscript:v19];

                v20 = [v7 tiles];
                v21 = [(PKRendererTile *)v15 properties];
                [v20 removeObjectForKey:v21];
              }

              ++v14;
            }

            while (v12 != v14);
            v22 = [v11 countByEnumeratingWithState:&v61 objects:v70 count:16];
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
  v3 = [MEMORY[0x1E695DF70] array];
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
          [v3 addObject:{v10, v12}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)_visibleAttachments
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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
        v9 = [v8 viewRep];
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
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
    v3 = [(PKTiledView *)self invertColors];
    drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
    if (drawingTouchThatHitNothing)
    {
      LOBYTE(drawingTouchThatHitNothing[1].super.isa) = v3;
      [(PKMetalRendererController *)drawingTouchThatHitNothing[3].super.isa setInvertColors:v3];
    }

    v5 = [(PKTiledView *)self _activeSixChannelBlendingMode];
    v6 = [(PKTiledView *)self canvasView];
    [v6 setSixChannelBlendingMode:v5];

    v7 = [(PKTiledView *)self drawBitmapEraserMask];
    v8 = [(PKTiledView *)self canvasView];
    [v8 setDrawBitmapEraserMask:v7];
  }
}

- (id)initInScrollView:(id)a3
{
  v4 = a3;
  v5 = [(PKTiledView *)self initInScrollView:v4 defaultDrawingClass:objc_opt_class()];

  return v5;
}

- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6
{
  v8 = a4;
  v10 = a3;
  [v10 bounds];
  v54.receiver = self;
  v54.super_class = PKTiledView;
  v11 = [(PKTiledView *)&v54 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    v13 = +[PKGenerationModelAvailabilityController sharedInstance];
    [v13 queryGenerationModelAvailabilityStatus];

    *(v11 + 77) = 4;
    *(v11 + 448) = !v8;
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKTiledView_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly___block_invoke;
      block[3] = &unk_1E82D6388;
      v53 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v14 = [MEMORY[0x1E695DF70] array];
    v15 = *(v11 + 61);
    *(v11 + 61) = v14;

    objc_storeStrong(v11 + 67, a5);
    *(v11 + 499) = v8;
    v16 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    v17 = [MEMORY[0x1E696AAE8] mainBundle];
    v18 = [v17 bundleIdentifier];
    v19 = [v18 isEqualToString:@"com.apple.freeform"];

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
    v22 = objc_storeWeak(v11 + 69, v10);
    [v10 _addScrollViewScrollObserver:v11];

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
    if (!a6)
    {
      [v11 newCanvasView];
    }

    [v10 addSubview:v11];
    [v11 set_maxFileFormatVersion:{+[PKDrawing _currentSerializationVersion](PKDrawingConcrete, "_currentSerializationVersion")}];
    *(v11 + 496) = 1;
    *(v11 + 72) = dyld_program_sdk_at_least() ^ 1;
    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerWillShowNotification" object:0];

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerDidShowNotification" object:0];

    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 addObserver:v12 selector:sel__updateForToolPickerVisibilityChange_ name:@"PKToolPickerDidHideNotification" object:0];

    [objc_opt_class() addObserver:v12 forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:0];
    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v12 selector:sel__handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification_ name:@"PKPencilSqueezeInteractionDidChangePaletteViewVisibilityNotification" object:0];

    [v12 updateForAllowedDrawingInput];
    [v12 setAccessibilityIdentifier:@"com.apple.pencilkit.tiledView"];
    v40 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v12];
    v41 = *(v12 + 51);
    *(v12 + 51) = v40;

    [v10 addInteraction:*(v12 + 51)];
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

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 removeObserver:self];

  [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing"];
  [(PKTileController *)self->_drawingTouchThatHitNothing teardown];
  v13 = [(UIDropInteraction *)self->_dropInteraction view];
  [v13 removeInteraction:self->_dropInteraction];

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
  v3 = [(PKTiledView *)self maximumSupportedContentVersion];
  v4 = [(PKTiledView *)self _activeToolPicker];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 maximumSupportedContentVersion];
  }

  else
  {
    v6 = 4;
  }

  if (v3 >= v6)
  {
    v3 = v6;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v12 = a3;
  objc_storeWeak(&self->_canvasViewZOrderPolicy, v12);
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
    v8 = [(PKTiledView *)self scrollView];
    v3 = [v8 panGestureRecognizer];
    if ([v3 isEnabled])
    {
      v4 = [(PKTiledView *)self _shouldPreventScrollViewPanGestureWhilePreviewing];

      if (v4)
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

        v6 = [(PKTiledView *)self scrollView];
        v7 = [v6 panGestureRecognizer];
        [v7 setEnabled:0];
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

    v4 = [(PKTiledView *)self scrollView];
    v5 = [v4 panGestureRecognizer];
    [v5 setEnabled:1];

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
      v4 = [(PKTiledView *)self attachmentViews];
      v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        v6 = *v27;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v27 != v6)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v26 + 1) + 8 * i) hasSeenAnyExtendedDynamicRangeStrokes])
            {
              BYTE1(self->_previouslySelectedDrawingUUID) = 1;
              goto LABEL_14;
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      v8 = [(PKTiledView *)self canvasView];
      v9 = [v8 metalConfig];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
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
      v16 = [(PKTiledView *)self _sixChannelBlendingIsActive];
      v17 = [(PKTiledView *)self _transparentBlendingIsActive];
      v18 = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
      v19 = ceil(v14 * 512.0);
      v20 = [(PKTileController *)v15 initWithPixelSize:v16 actualSize:v17 pixelFormat:v18 sixChannelBlending:v12 transparentBlending:v19 wantsExtendedDynamicRangeContent:v19 metalConfig:v19, v19];
      drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
      self->_drawingTouchThatHitNothing = v20;

      v22 = [(PKTiledView *)self invertColors];
      v23 = self->_drawingTouchThatHitNothing;
      if (v23)
      {
        LOBYTE(v23[1].super.isa) = v22;
        [(PKMetalRendererController *)v23[3].super.isa setInvertColors:v22];
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
  v3 = [(PKTiledView *)self canvasView];
  if (([v3 isDrawing] & 1) == 0)
  {

    return *&self->_recentStrokesForAutoRefine;
  }

  v4 = [(PKTiledView *)self canvasView];
  v5 = [v4 isPreviewing];

  if (v5)
  {
    return *&self->_recentStrokesForAutoRefine;
  }

  return CACurrentMediaTime();
}

- (void)_cancelCurrentStrokeAndReduceMemoryFootprintFlushCaches:(BOOL)a3
{
  v3 = a3;
  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  [(PKTiledView *)self _resetDrawingState];
  if (v3)
  {
    [(PKTiledView *)self _flushCaches];
  }

  v5 = [(PKTiledView *)self canvasView];
  [v5 _reduceMemoryFootprint];
}

- (void)_flushCaches
{
  v3 = [self->_drawingPolicy _rendererController];
  [(PKMetalRendererController *)v3 flushMemoryIfPossible];

  drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
  if (drawingTouchThatHitNothing)
  {
    isa = drawingTouchThatHitNothing[3].super.isa;

    [(PKMetalRendererController *)isa flushMemoryIfPossible];
  }
}

- (void)_resetDrawingState
{
  v3 = [(PKTiledView *)self drawingGestureRecognizer];
  [v3 cancel];

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
    v6 = [(PKTiledView *)self window];
    v7 = [v6 windowScene];
    v8 = [PKPencilObserverInteraction interactionForScene:v7];
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
    v15 = [v13 identifier];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v14, v15, 40);
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
  v3 = [(PKTiledView *)self attachmentViews];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
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
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setWantsExtendedDynamicRangeContent:(BOOL)a3
{
  if (self->_isDoingInteractiveResize != a3)
  {
    self->_isDoingInteractiveResize = a3;
    [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
  }
}

- (void)_updateWantsExtendedDynamicRangeContent
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
  [self->_drawingPolicy setWantsExtendedDynamicRangeContent:v3];
  drawingTouchThatHitNothing = self->_drawingTouchThatHitNothing;
  if (drawingTouchThatHitNothing && (isa = drawingTouchThatHitNothing[3].super.isa) != 0)
  {
    v6 = v3;
    if (v3 == *(isa + 524))
    {
      return;
    }
  }

  else
  {
    if (!v3)
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

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [(PKTiledView *)self attachmentViews];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 tiles];
        [v8 addEntriesFromDictionary:v14];

        v15 = [v13 tiles];
        [v15 removeAllObjects];

        v16 = [v13 purgedTiles];
        [v16 removeAllObjects];
      }

      v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [v8 allValues];
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = *v31;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if (([(PKRendererTile *)*(*(&v30 + 1) + 8 * j) hasContents]& 1) != 0)
        {
          v21 = 1;
          goto LABEL_23;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
  v22 = v8;
  v29 = v22;
  v23 = _Block_copy(aBlock);
  [(PKTileController *)self->_drawingTouchThatHitNothing setWantsExtendedDynamicRangeContent:v3];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_generationToolGestureRecognizer != a3 && self->_simultaneousDrawingGestureRecognizer != a3)
  {
    return 1;
  }

  v4 = [(PKTiledView *)self drawingGestureRecognizer];
  v3 = [v4 isEnabled];

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  generationToolGestureRecognizer = self->_generationToolGestureRecognizer;
  v11 = generationToolGestureRecognizer == v6 || generationToolGestureRecognizer == v7;
  v12 = [(PKTiledView *)self canvasView];
  v13 = [v12 drawingGestureRecognizer];

  if (v11)
  {
    v14 = 1;
  }

  else
  {
    simultaneousDrawingGestureRecognizer = self->_simultaneousDrawingGestureRecognizer;
    v17 = simultaneousDrawingGestureRecognizer == v6 || simultaneousDrawingGestureRecognizer == v8;
    v19 = v13 == v6 || v13 == v8;
    v14 = v19 && v17;
  }

  return v14;
}

- (void)insertCanvasView:(id)a3 intoScrollView:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(PKTiledView *)self canvasViewZOrderPolicy])
  {
    [v6 addSubview:v7];
  }

  else
  {
    [v6 insertSubview:v7 atIndex:0];
  }
}

- (void)setDefaultDrawingClass:(Class)a3
{
  if (self->_linedPaper != a3)
  {
    objc_storeStrong(&self->_linedPaper, a3);
    v5 = objc_alloc_init(a3);
    [self->_drawingPolicy setDrawing:?];
  }
}

- (void)setCanvasViewZOrderPolicy:(int64_t)a3
{
  self->_contentSnapshottingView = a3;
  drawingPolicy = self->_drawingPolicy;
  if (drawingPolicy)
  {
    [drawingPolicy removeFromSuperview];
    v5 = self->_drawingPolicy;
    v6 = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self insertCanvasView:v5 intoScrollView:?];
  }
}

- (void)setInk:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(PKTiledView *)self canvasView];
  v7 = [v6 ink];
  v8 = [v7 identifier];
  v9 = [v5 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(PKTiledView *)self window];
    v11 = [v10 windowScene];
    v12 = [PKPencilShadowView shadowViewForScene:v11];
    [v12 setInk:v4];

    if ([v4 _isEraserInk] & 1) != 0 || (-[PKTiledView canvasView](self, "canvasView"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "ink"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "_isEraserInk"), v14, v13, (v15))
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
      v16 = [(PKTiledView *)self hoverController];
      [(PKHoverController *)v16 reset];

      [(PKTiledView *)self _resetDrawingState];
    }

    goto LABEL_10;
  }

LABEL_11:
  [(PKTiledView *)self _updateDrawingGestureEnablementWithInk:v4];
  v18 = [(PKTiledView *)self canvasView];
  v19 = [v18 ink];
  v20 = [v19 identifier];
  if (![v20 isEqual:@"com.apple.ink.objectEraser"])
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = [(PKTiledView *)self canvasView];
  v45 = v4;
  v22 = [v21 ink];
  v23 = [v22 identifier];
  v24 = [v4 identifier];
  if (([v23 isEqual:v24] & 1) != 0 || (maxFileFormatVersion = self->__maxFileFormatVersion, maxFileFormatVersion != -[PKTiledView _totalVisibleStrokes](self, "_totalVisibleStrokes")))
  {

    v4 = v45;
    goto LABEL_17;
  }

  v44 = [(PKTiledView *)self aggd_didMergeWithCollaborator];

  v4 = v45;
  if (!v44)
  {
    v26 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v26 recordInkPickerNoOp:?];

    goto LABEL_22;
  }

LABEL_18:
  v27 = [v4 identifier];
  v28 = [v27 isEqual:@"com.apple.ink.objectEraser"];

  if (v28)
  {
    self->__maxFileFormatVersion = [(PKTiledView *)self _totalVisibleStrokes];
    [(PKTiledView *)self setAggd_didMergeWithCollaborator:0];
  }

  else if ([v4 _isHandwritingInk])
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
  v31 = [(PKTileController *)v30 isDragging];

  if ((v31 & 1) == 0)
  {
    v32 = self->_tileController;
    if ((v32 && *&v32[2]._contentZoomScale || -[PKSelectionController _hasExternalElementsSelectedInAttachment:](v32, 0)) && ([v4 inkType], v33 = objc_claimAutoreleasedReturnValue(), -[PKTiledView ink](self, "ink"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "inkType"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v33, "isEqual:", v35), v35, v34, v33, (v36 & 1) == 0))
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

  v39 = [(PKTiledView *)self canvasView];
  [v39 setInk:v4];

  [v4 hdrHeadroom];
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

  v42 = [(PKTiledView *)self selectionController];
  v43 = [(PKSelectionController *)v42 selectionInteraction];
  [v43 _updateAllowedTouchTypesForSelectedInk:v4];

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

- (void)setSelectedStrokesColor:(id)a3
{
  v8 = a3;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  v6 = [(PKTileController *)v5 isDragging];

  if ((v6 & 1) == 0)
  {
    v7 = self->_tileController;
    if (v7)
    {
      if (*&v7[2]._contentZoomScale)
      {
        [(PKSelectionController *)v7 changeColorOfSelection:v8];
      }
    }
  }
}

- (void)setPaperTexture:(id)a3
{
  v5 = a3;
  v4 = [(PKTiledView *)self canvasView];
  [v4 setPaperTexture:v5];
}

- (int64_t)_totalVisibleStrokes
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(PKTiledView *)self attachments];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) drawing];
        v8 = [v7 strokes];
        v9 = [v8 count];

        v3 += v9;
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v3;
}

- (BOOL)_toolPickerIsOrWillBeVisible
{
  v2 = [(PKTiledView *)self _activeToolPicker];
  v3 = v2;
  if (v2)
  {
    if ([v2 isVisible])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 _isAnimatingToVisible];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setDrawingEnabled:(BOOL)a3
{
  if (self->_sixChannelBlendingRendersTransparent != a3)
  {
    self->_sixChannelBlendingRendersTransparent = a3;
    [(PKTiledView *)self _updateDrawingGestureEnablement];
  }
}

- (void)setDrawingPolicy:(unint64_t)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    [(PKTiledView *)self updateForAllowedDrawingInput];
  }
}

- (void)showImageWandTipWithController:(id)a3 toolPicker:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isVisible])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [(PKTiledView *)self visibleAttachments];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = *v33;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          [v12 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [(PKTiledView *)self scrollView];
          [v21 visibleBounds];
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
            v27 = [v12 drawing];
            [v27 bounds];
            v29 = v28;
            v31 = v30;

            if (v29 > 0.0 && v31 > 0.0)
            {
              [v7 _showImageWandTipWithController:v6];
              goto LABEL_14;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
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

- (void)_updateForToolPickerVisibilityChange:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PKToolPickerNotificationWindowSceneUserInfoKey"];
  v6 = [(PKTiledView *)self window];
  v7 = [v6 windowScene];

  if (v5 == v7)
  {
    [(PKTiledView *)self _toolPickerVisibilityDidChange];
  }
}

- (id)_activeToolPicker
{
  v3 = [(PKTiledView *)self window];

  if (v3)
  {
    v4 = [(PKTiledView *)self window];
    v3 = [PKToolPicker activeToolPickerForWindow:v4];
  }

  return v3;
}

- (void)_handlePencilSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3
{
  v4 = [(PKTiledView *)self window];
  v5 = [v4 windowScene];
  v6 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v5];
  v7 = [v6 _paletteViewVisible];

  if (v7)
  {

    [(PKTiledView *)self updateForAllowedDrawingInput];
  }
}

- (void)_updateDrawingGestureEnablement
{
  v4 = [(PKTiledView *)self canvasView];
  v3 = [v4 ink];
  [(PKTiledView *)self _updateDrawingGestureEnablementWithInk:v3];
}

- (void)_updateDrawingGestureEnablementWithInk:(id)a3
{
  v12 = a3;
  if ([(PKTiledView *)self _isDrawingEnabled])
  {
    v4 = [v12 _isLassoInk];
    v5 = [v12 _isGenerationTool];
    v6 = [(PKTiledView *)self drawingGestureRecognizer];
    v7 = (v4 | v5) ^ 1;
    [v6 setEnabled:v7 & 1];

    v8 = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
    [v8 setEnabled:v7 & 1];

    v9 = [(PKTiledView *)self generationToolGestureRecognizer];
    [v9 setEnabled:v5];
  }

  else
  {
    v10 = [(PKTiledView *)self drawingGestureRecognizer];
    [v10 setEnabled:0];

    v11 = [(PKTiledView *)self simultaneousDrawingGestureRecognizer];
    [v11 setEnabled:0];

    v9 = [(PKTiledView *)self generationToolGestureRecognizer];
    [v9 setEnabled:0];
  }
}

- (void)setLinedPaper:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = [(PKTiledView *)self canvasView];
  [v7 setLinedPaper:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [(PKTiledView *)self attachmentViews];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) setNeedsLayout];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setRulerEnabled:(BOOL)a3
{
  v3 = a3;
  if (!PKIsVisionDevice())
  {
    self->_rulerEnabled = v3;
    hoverController = self->_hoverController;
    if (v3)
    {
      [(PKRulerController *)hoverController showRuler];
    }

    else if (hoverController)
    {
      [(PKRulerController *)hoverController hideRulerAnimated:?];
    }

    v6 = [(PKTiledView *)self _activeToolPicker];
    if ([v6 isRulerActive] != v3)
    {
      [v6 setRulerActive:v3];
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

- (void)setRulerHostingDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_tileSize, v5);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = self;
  }

  [(PKRulerController *)self->_hoverController setRulerHostingDelegate:v4];
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

- (void)selectionSupportsRefinement:(id)a3
{
  v4 = a3;
  if (([(PKSelectionController *)self->_tileController refinementEnabled]& 1) != 0)
  {
    [(PKSelectionController *)&self->_tileController->super.isa supportsRefinement:v4];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
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
  v4 = [(PKTileController *)v3 supportsSnapToShape];

  return v4;
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

- (void)insertSpace:(id)a3
{
  v5 = a3;
  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v4 recordInsertSpaceWithType:?];

  [(PKSelectionController *)&self->_tileController->super.isa insertSpace:v5];
}

- (void)insertSpaceAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
          v11 = [v10 path];
          if ([v11 _pointsCount] && (objc_msgSend(v10, "timestamp"), v13 = v12, objc_msgSend(v11, "timestampAtIndex:", objc_msgSend(v11, "_pointsCount") - 1), v13 + v14 < v9))
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
  v3 = [(PKTiledView *)self sixChannelBlendingRendersTransparent];
  if (v3)
  {

    LOBYTE(v3) = [(PKTiledView *)self _sixChannelBlendingIsActive];
  }

  return v3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKTiledView;
  [(PKTiledView *)&v8 traitCollectionDidChange:v4];
  if (self->_drawingTouchThatHitNothing)
  {
    v5 = [(PKTiledView *)self window];
    v6 = [v5 windowScene];
    v7 = [v6 activationState];

    if (v7 == 2)
    {
      self->_disableUndoManager = 1;
    }

    else
    {
      [(PKTiledView *)self updateAfterTraitCollectionChange];
    }
  }
}

- (void)setSixChannelBlending:(BOOL)a3
{
  if (self->_supportsCopyAsText != a3)
  {
    self->_supportsCopyAsText = a3;
    v4 = [(PKTiledView *)self _activeSixChannelBlendingMode];
    v5 = [(PKTiledView *)self canvasView];
    [v5 setSixChannelBlendingMode:v4];

    [(PKTiledView *)self updateAfterTraitCollectionChange];

    [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
  }
}

- (void)setDrawBitmapEraserMask:(BOOL)a3
{
  if (self->_shouldAdjustStrokeTransformAtEndOfStroke != a3)
  {
    self->_shouldAdjustStrokeTransformAtEndOfStroke = a3;
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

- (void)setIsAutoRefineEnabled:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator setIsAutoRefineOn:a3];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(PKTiledView *)self attachmentViews];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) _handleAutoRefineSettingsDidChange];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateAfterTraitCollectionChange
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(PKTiledView *)self invertColors];
  v4 = [(PKTiledView *)self _sixChannelBlendingIsActive];
  v5 = [(PKTiledView *)self tileController];
  if (v5)
  {
    v6 = v5[9];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PKTiledView *)self tileController];
  v8 = v4 ^ v6;
  if (v7)
  {
    v9 = v7[8];
  }

  else
  {
    v9 = 0;
  }

  v10 = v3 ^ v9 | v8;

  if (v10)
  {
    v11 = [(PKTiledView *)self tileController];
    v12 = v11;
    if (v11)
    {
      *(v11 + 8) = v3;
      [(PKMetalRendererController *)*(v11 + 24) setInvertColors:v3];
    }

    v13 = [(PKTiledView *)self tileController];
    [(PKTileController *)v13 setSixChannelBlending:v4];

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];
    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = [(PKTiledView *)self attachmentViews];
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v20 + 1) + 8 * i) setSixChannelBlending:v4];
          }

          v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v15);
      }

      v18 = [(PKTiledView *)self _activeSixChannelBlendingMode];
      v19 = [(PKTiledView *)self canvasView];
      [v19 setSixChannelBlendingMode:v18];
    }

    [(PKTiledView *)self _layoutSubviews];
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v4 = a3;
  if (self && self->_disableUndoManager)
  {
    self->_disableUndoManager = 0;
    [(PKTiledView *)self updateAfterTraitCollectionChange];
    [(PKTiledView *)self updateTilesForVisibleRect];
  }
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  tileController = self->_tileController;
  y = self->_lastContentOffset.y;
  a = self->_strokeTransformAtStartOfStroke.a;
  v7 = [(PKTiledView *)self scrollView];
  [v7 contentOffset];
  [(PKSelectionController *)&tileController->super.isa didScroll:a - v9];

  [(PKTiledView *)self setNeedsLayout];
  v10 = [(PKTiledView *)self scrollView];
  [v10 contentOffset];
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
    v22 = [(PKTiledView *)self scrollView];
    [v22 contentOffset];
    self->_lastContentOffset.y = v23;
    self->_strokeTransformAtStartOfStroke.a = v24;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  cachedAdditionalStrokes = self->_cachedAdditionalStrokes;
  v26 = [(PKTiledView *)self scrollView];
  [v26 zoomScale];
  v28 = vabdd_f64(*&cachedAdditionalStrokes, v27) < 0.00999999978;

  if (!v28)
  {
    v29 = [(PKTiledView *)self scrollView];
    [v29 zoomScale];
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
  v31 = [(PKTiledView *)self attachmentViews];
  v32 = [v31 countByEnumeratingWithState:&v35 objects:v42 count:16];
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
          objc_enumerationMutation(v31);
        }

        [*(*(&v35 + 1) + 8 * v34++) containingScrollViewDidScroll];
      }

      while (v32 != v34);
      v32 = [v31 countByEnumeratingWithState:&v35 objects:v42 count:16];
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

- (void)_addAttachmentsUnderView:(id)a3 toArray:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 subviews];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 tiledViewAttachmentViews];
          [v5 addObjectsFromArray:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v10];
          }

          else
          {
            v12 = [v10 subviews];
            v13 = [v12 count] == 0;

            if (!v13)
            {
              [(PKTiledView *)self _addAttachmentsUnderView:v10 toArray:v5];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)visibleOnScreenStrokesForDrawing:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(PKTiledView *)self attachmentForUUID:v4];

  v6 = [v5 strokeSpatialCache];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)smoothedHullForStroke:(id)a3
{
  v3 = a3;
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
  [v3 interpolatePointDataWithStep:v11 usingBlock:1.0];
  [PKPathUtility smoothedHullForPoints:v13 + 6];
  v4 = [PKPathUtility bezierPathFromPoints:__p];
  v5 = [PKStroke alloc];
  v6 = [v4 CGPath];
  v7 = [v3 ink];
  v8 = [(PKStroke *)v5 _initWithPath:v6 ink:v7 inputScale:1.0];

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

- (id)canvasView:(id)a3 attachmentViewForDrawing:(id)a4
{
  v5 = [a4 uuid];
  v6 = [(PKTiledView *)self attachmentForUUID:v5];

  return v6;
}

- (void)canvasView:(id)a3 textStrokesCoveredByStroke:(id)a4 drawing:(id)a5 completion:(id)a6
{
  v16 = a4;
  v9 = a6;
  v10 = [a5 uuid];
  v11 = [(PKTiledView *)self _attachmentForUUID:v10];

  v12 = [v11 recognitionController];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 48);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [(PKRecognitionSessionManager *)v15 textStrokesCoveredByStroke:v16 completion:v9];
}

- (id)_attachmentForUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 drawing];
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

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

- (void)canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5
{
  v9 = a4;
  v7 = a5;
  if ((*&self->_tiledViewFlags & 0x100) != 0)
  {
    v8 = [(PKTiledView *)self delegate];
    [v8 canvasView:self scratchOutStrokes:v9 drawing:v7];
  }
}

- (id)attachmentForUUID:(id)a3
{
  v3 = [(PKTiledView *)self _attachmentForUUID:a3];
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

- (void)_setExternalAttachments:(id)a3
{
  v6 = a3;
  v4 = COERCE_DOUBLE([v6 copy]);
  timestampForLatestUserInteraction = self->_timestampForLatestUserInteraction;
  self->_timestampForLatestUserInteraction = v4;
}

- (BOOL)p_shouldSkipStrokeCacheInvalidationForAttachment:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = PKDynamicCast(v5, v4);
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
  v2 = [(PKTiledView *)self _visibleAttachments];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (v3)
        {
          v8 = [v3 viewRep];
          v9 = [v7 viewRep];
          v10 = [v8 PK_isBelowViewInDepth:v9];

          if (!v10)
          {
            continue;
          }
        }

        v11 = v7;

        v3 = v11;
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)undoManager
{
  if ([(PKTiledView *)self disableUndoManager])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKTiledView;
    v3 = [(PKTiledView *)&v5 undoManager];
  }

  return v3;
}

- (void)startedDrawingInBlankSpaceWithTouch:(id)a3 location:(CGPoint)a4
{
  v12 = a3;
  objc_storeStrong(&self->_rulerHostingDelegate, a3);
  if (v12)
  {
    v6 = [(PKTiledView *)self viewForAttachmentAtBlankSpace];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 drawing];
  if (!v7)
  {
    v7 = [PKTiledView newInlineDrawingOfClass:[(PKTiledView *)self defaultDrawingClass]];
  }

  v8 = [(PKTiledView *)self canvasView];
  [v8 setDrawing:v7];

  [(PKTiledView *)self defaultDrawingClass];
  if (objc_opt_isKindOfClass())
  {
    v9 = [(PKTiledView *)self standInAttachmentView];
    [v9 setDrawing:v7];

    v10 = [(PKTiledView *)self standInAttachmentView];
    v11 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self renderAttachment:v10 intoCanvas:v11 showing:1];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v10 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self renderAttachment:v6 intoCanvas:v10 showing:1];
  }

LABEL_11:
}

- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = [(PKTiledView *)self hoverController];
    [(PKHoverController *)v11 didReceiveNormalTouch:v10];

    [(PKTiledView *)self canvasZoomScale];
    v13 = v12;
    v14 = [(PKTiledView *)self drawingController];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 64);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [(PKMetalRendererController *)v17 setContentZoomScale:v13];

    [v10 locationInView:self];
    x = v18;
    y = v19;
  }

  v20 = [(PKTiledView *)self tileController];
  if (v10)
  {
    [(PKHoverController *)*&self->_lastContentOffset.x reset];
    v21 = [(PKTiledView *)self selectionController];
    if (v21)
    {
      v22 = v21[16];

      if (!v22)
      {
        goto LABEL_11;
      }

      v23 = [(PKTiledView *)self selectionController];
      v24 = v23;
      if (v23)
      {
        [(PKSelectionController *)v23 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
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
    if (v10)
    {
      v26 = [(PKTiledView *)self drawingTouchThatHitNothing];

      if (self)
      {
        if (v26 == v10)
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

    if ([v9 isErasingObjects])
    {
      v30 = [v25 drawing];
      [v9 setDrawing:v30];
LABEL_26:

      goto LABEL_27;
    }

    v31 = [v9 drawing];
    v32 = [(PKTiledView *)self liveAttachment];
    v33 = [v32 drawing];
    v34 = v33;
    if (v31 != v33)
    {

LABEL_25:
      [(PKTiledView *)self _layoutSubviewsUpdateTilesForRendering:0];
      v30 = [(PKTiledView *)self liveAttachment];
      [(PKTiledView *)self renderAttachment:v30 intoCanvas:v9 showing:1];
      goto LABEL_26;
    }

    v35 = [(PKTiledView *)self canvasView];
    v36 = [v35 isHidden];

    if (v36)
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

  else if (([v9 isErasingObjects] & 1) == 0)
  {
    [(PKTiledView *)self startedDrawingInBlankSpaceWithTouch:v10 location:x, y];
  }

LABEL_27:
}

- (void)setLiveAttachment:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 736), a2);
  }
}

- (void)_canvasViewWillBeginDrawing:(id)a3 startPoint:(id *)a4 forPreview:(BOOL)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5)
  {
    [(PKTiledView *)self _setupPencilShadowViewIfNecessary];
  }

  else
  {
    v9 = [(PKTiledView *)self hoverController];
    [(PKHoverController *)v9 didReceiveNormalTouch:?];

    v10 = [(PKTiledView *)self delegate];
    [v10 _canvasViewWillBeginDrawing:self];

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
    var13 = a4->var13;
    v24 = 134217984;
    v25 = var13;
    _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Resetting base roll value to: %g", &v24, 0xCu);
  }

  LOBYTE(self->_externalAttachments) = 0;
  v16 = a4->var13;
  v17 = +[PKPencilDevice activePencil];
  [v17 setBaseRollAngle:v16];

LABEL_10:
  v18 = +[PKPencilDevice activePencil];
  [v18 baseRollAngle];
  v20 = v19;
  v21 = [(PKTiledView *)self drawingController];
  v22 = [(PKController *)v21 inputController];
  v23 = v22;
  if (v22)
  {
    os_unfair_lock_lock(v22 + 80);
    *&v23[94]._os_unfair_lock_opaque = v20;
    os_unfair_lock_unlock(v23 + 80);
  }
}

- (void)canvasViewDidBeginDrawing:(id)a3
{
  v13 = a3;
  v4 = [(PKTiledView *)self delegate];
  [v4 canvasViewDidBeginDrawing:self];

  v5 = [v13 activeDrawing];
  v6 = [v5 uuid];
  v7 = [(PKTiledView *)self attachmentForUUID:v6];
  [v7 didBeginDrawing];

  v8 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v8 logEndSelectionSessionIfNecessary];

  v9 = [(PKTiledView *)self selectionController];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 144);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v12 invalidateCachedStrokes];
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKTiledView *)self delegate];
  [v5 canvasViewDidEndDrawing:self];

  v6 = [v4 activeDrawing];
  v7 = [v6 uuid];
  v8 = [(PKTiledView *)self _attachmentForUUID:v7];

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

- (BOOL)canvasView:(id)a3 shouldDiscardEndedStroke:(id)a4 drawing:(id)a5
{
  v7 = a4;
  v8 = [a5 uuid];
  v9 = [(PKTiledView *)self _attachmentForUUID:v8];

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, v9);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 shouldDiscardEndedStroke:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canvasView:(id)a3 shouldDiscardTapStrokeAt:(CGPoint)a4 drawing:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = [a5 uuid];
  v9 = [(PKTiledView *)self _attachmentForUUID:v8];

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, v9);
  if (v11)
  {
    v12 = [v9 drawing];
    [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:v12];

    v13 = [v11 _handleSingleTapAtDrawingLocation:1 fromTapStroke:{y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canvasView:(id)a3 drawingIsShared:(id)a4
{
  v5 = [a4 uuid];
  v6 = [(PKTiledView *)self _attachmentForUUID:v5];

  v7 = objc_opt_class();
  v8 = PKDynamicCast(v7, v6);
  v9 = [v8 isSharedViaICloud];

  return v9;
}

- (BOOL)canvasViewShouldCombineStrokes:(id)a3
{
  if (!self->_isLayingOut)
  {
    return 0;
  }

  if ([(PKTiledView *)self _hasSelection])
  {
    return 0;
  }

  v4 = [(PKTiledView *)self selectionController];
  v5 = [(PKSelectionController *)v4 _hasExternalElementsSelectedInAttachment:?];

  if (v5)
  {
    return 0;
  }

  v7 = [(PKTiledView *)self rulerController];
  v8 = [(PKRulerController *)v7 rulerSelected];

  return v8 ^ 1;
}

- (id)canvasViewContentCoordinateSpace:(id)a3
{
  v3 = [(PKTiledView *)self contentCoordinateSpace];

  return v3;
}

- (void)canvasView:(id)a3 beganStroke:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if ([(PKTiledView *)self toolShadowShouldBeActive])
  {
    v7 = [(PKTiledView *)self window];
    v8 = [v7 windowScene];
    v9 = [PKPencilShadowView shadowViewForScene:v8];
    [v9 strokeBegan];
  }

  v10 = [(PKTiledView *)self delegate];
  [v10 canvasView:self beganStroke:v6];

  v11 = [v14 activeDrawing];
  v12 = [v11 uuid];
  v13 = [(PKTiledView *)self attachmentForUUID:v12];
  [v13 beganStroke:v6];
}

- (void)replayCanvasViewDrawingMoved:(id)a3 inputPoint:(id *)a4 inputType:(int64_t)a5
{
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.freeform"];

  if (v10)
  {
    v11 = [(PKTiledView *)self contentCoordinateSpace];
    if (v11)
    {
      v12 = v11;
      v13 = [(PKTiledView *)self toolShadowShouldBeActive];

      v14 = !v13;
      if (a5 != 1)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        v15 = [(PKTiledView *)self contentCoordinateSpace];
        [v15 convertPoint:self toCoordinateSpace:{a4->var0.var0.x, a4->var0.var0.y}];
        v17 = v16;
        v19 = v18;

        a4->var0.var0.x = v17;
        a4->var0.var0.y = v19;
        v20 = *&a4->var13;
        v24[6] = *&a4->var11;
        v24[7] = v20;
        var15 = a4->var15;
        v21 = *&a4->var5;
        v24[2] = *&a4->var3;
        v24[3] = v21;
        v22 = *&a4->var9;
        v24[4] = *&a4->var7;
        v24[5] = v22;
        v23 = *&a4->var1;
        v24[0] = a4->var0;
        v24[1] = v23;
        [(PKTiledView *)self _updatePencilShadowView:v24];
      }
    }
  }
}

- (void)changeStrokesUsingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [PKRecognitionController undoCommandsToChangeStrokesUsingTransformations:v10 strokeGroups:v11 drawing:v12 originalStrokes:v13];
  v15 = [v12 shouldClearSelectionAfterStraightening];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PKTiledView_changeStrokesUsingTransformations_strokeGroups_drawing_originalStrokes___block_invoke;
  v18[3] = &unk_1E82D6DD0;
  v21 = v15;
  v18[4] = self;
  v19 = v14;
  v20 = v12;
  v16 = v12;
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

- (void)straightenStrokes:(id)a3 drawing:(id)a4 completionBlockWithStrokeTransformInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 copy];

  v12 = [v11 uuid];
  v13 = [(PKTiledView *)self _attachmentForUUID:v12];

  v14 = [v13 recognitionController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKTiledView_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke;
  v16[3] = &unk_1E82D6A38;
  v15 = v10;
  v16[4] = self;
  v17 = v15;
  [v14 straightenStrokes:v8 drawing:v11 completionBlockWithStrokeTransformInfo:v16];
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

- (void)straighten:(id)a3 strokes:(id)a4 drawing:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PKTiledView_straighten_strokes_drawing___block_invoke;
  v5[3] = &unk_1E82D6A60;
  v5[4] = self;
  [(PKTiledView *)self straightenStrokes:a4 drawing:a5 completionBlockWithStrokeTransformInfo:v5];
}

- (void)_straightenStrokes:(id)a3 drawing:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PKTiledView__straightenStrokes_drawing_completionBlock___block_invoke;
  v14[3] = &unk_1E82D6A88;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(PKTiledView *)self straightenStrokes:v12 drawing:v13 completionBlockWithStrokeTransformInfo:v14];
}

void __58__PKTiledView__straightenStrokes_drawing_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _newStrokesFromApplyingTransformations:a2 strokeGroups:a3 drawing:*(a1 + 40) originalStrokes:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (id)_createPKStrokesFromCHDrawing:(id)a3 inputScale:(double)a4 sourceStroke:(id)a5 ink:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v12;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  if (v10)
  {
    v19[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v16, v17, v18}];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = [PKStroke _createStrokesFromCHDrawing:v9 transform:&v16 inputScale:v13 sourceStrokes:objc_opt_class() strokeClass:v11 newInk:1 suggestedHeight:a4 shouldSetSynthesizedFlag:-1.0];
  if (v10)
  {
  }

  return v14;
}

- (id)_createPKStrokesFromCHDrawing:(id)a3 transform:(CGAffineTransform *)a4 inputScale:(double)a5 sourceStroke:(id)a6
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = *&a4->c;
  v15[0] = *&a4->a;
  v15[1] = v11;
  v16 = *&a4->tx;
  v17[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v15[0], v11, v16}];
  v13 = [PKStroke _createStrokesFromCHDrawing:v9 transform:v15 inputScale:v12 sourceStrokes:objc_opt_class() strokeClass:0 newInk:1 suggestedHeight:a5 shouldSetSynthesizedFlag:-1.0];

  return v13;
}

- (void)refine:(id)a3 strokes:(id)a4 drawing:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 copy];

  [(PKTiledView *)self inputScale];
  v11 = v10;
  v12 = [(PKTiledView *)self selectionController];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 128);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [(PKTiledView *)self selectionController];
  v17 = v16;
  if (v16)
  {
    v18 = [*(v16 + 152) selectionType];
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = [v15 strokes];
    if ([v19 count])
    {
      v20 = [v15 drawing];
      v21 = [v20 uuid];
      v22 = [v9 uuid];
      v23 = [v21 isEqual:v22];

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
  v26 = [v9 uuid];
  v27 = [(PKTiledView *)self _attachmentForUUID:v26];

  v28 = [v27 recognitionController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __38__PKTiledView_refine_strokes_drawing___block_invoke;
  v31[3] = &unk_1E82D6AD8;
  v29 = v9;
  v35 = v40;
  v36 = v39;
  v37 = v25;
  v32 = v29;
  v33 = self;
  v30 = v15;
  v34 = v30;
  v38 = v18;
  [v28 refineStrokes:v7 drawing:v29 inputScale:v31 completion:v11];

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

- (void)canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
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
        [*&self->_drawingEnabled addObject:v8];
      }
    }

    else
    {
    }
  }

  tiledViewFlags = self->_tiledViewFlags;
  if ((tiledViewFlags & 2) != 0)
  {
    v15 = [(PKTiledView *)self delegate];
    [v15 canvasView:self endedStroke:v8 shapeStrokes:v9];
  }

  else
  {
    if ((tiledViewFlags & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = [(PKTiledView *)self delegate];
    [v15 canvasView:self endedStroke:v8];
  }

LABEL_10:
  v16 = [v21 activeDrawing];
  v17 = [v16 uuid];
  v18 = [(PKTiledView *)self attachmentForUUID:v17];

  if (v8)
  {
    [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator indexRefinableStroke:v8];
    v19 = [v18 recognitionManager];
    [(PKRecognitionSessionManager *)v19 updateWithRefinableStroke:v8];
  }

  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v20 = self->_aggd_cachedVisibleStrokeCount;
  [(PKAnalyticsSession *)v20 incrementStrokeCount];

  [v18 endedStroke:v8];
}

- (void)canvasView:(id)a3 cancelledStroke:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if (v6)
  {
    v7 = [(PKTiledView *)self delegate];
    [v7 canvasView:self cancelledStroke:v6];

    v8 = [v15 activeDrawing];
    v9 = [v8 uuid];
    v10 = [(PKTiledView *)self attachmentForUUID:v9];
    [v10 cancelledStroke:v6];
  }

  v11 = [(PKTiledView *)self canvasView];
  [v11 _finishCombiningStrokesIfNecessary];

  v12 = [(PKTiledView *)self canvasView];
  v13 = [v12 wantsCanvasVisible];

  if ((v13 & 1) == 0)
  {
    rulerHostingDelegate = self->_rulerHostingDelegate;
    self->_rulerHostingDelegate = 0;

    [(PKTiledView *)self _hideCanvas];
    [(PKTiledView *)self updateTilesForVisibleRect];
  }
}

- (void)_canvasViewDidEraseStrokes:(id)a3
{
  v16 = a3;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  v4 = [(PKTiledView *)self canvasView];
  v5 = [v4 drawing];

  if (v5)
  {
    v6 = [(PKTiledView *)self canvasView];
    v7 = [v6 drawing];
    v8 = [v7 uuid];
    v9 = [(PKTiledView *)self _attachmentForUUID:v8];

    v10 = objc_opt_class();
    v11 = PKDynamicCast(v10, v9);
    v12 = v11;
    if (v11)
    {
      [v11 drawingDidEraseStrokes:v16];
    }
  }

  v13 = [(PKTiledView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(PKTiledView *)self delegate];
    [v15 canvasViewDidEraseStrokes:v16];
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

- (void)_canvasView:(id)a3 didFinishRenderingNewStrokes:(id)a4 inDrawing:(id)a5 forPreview:(BOOL)a6
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = [v10 uuid];
  v12 = [(PKTiledView *)self _attachmentForUUID:v11];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = PKDynamicCast(v13, v12);
    v15 = v14;
    if (v14 && [v14 updateHeightAfterDrawing] && (objc_msgSend(v10, "_isEmpty") & 1) == 0)
    {
      [(PKTiledView *)self _updateHeightOfAttachmentIfNecessary:v15];
      [(PKTiledView *)self updateTilesForVisibleRectRendering:0 offscreen:0 overrideAdditionalStrokes:0];
    }

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:0];
    v16 = [v18 wantsCanvasVisible];
    if ((v16 & 1) == 0)
    {
      [v9 count];
    }

    v17 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self _copyFromCanvas:v17 intoAttachment:v12 hideCanvas:v16 ^ 1u strokes:v9];
  }

  else if (([v18 wantsCanvasVisible] & 1) == 0)
  {
    [(PKTiledView *)self _hideCanvas];
  }
}

- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(id)a3
{
  v5 = a3;
  v4 = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)v4 updateCurrentSelectionWithNewDrawingIfNecessary:v5];
}

- (void)_handleDrawingDidChangeForAttachment:(id)a3 didChangeVisibleStrokes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 drawing];

  if (v7 && ![(PKTiledView *)self p_shouldSkipStrokeCacheInvalidationForAttachment:v6])
  {
    objc_initWeak(&location, self);
    v8 = [v6 drawing];
    [(PKTiledView *)self visibleOnscreenBoundsForDrawing:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = objc_opt_class();
    v18 = PKDynamicCast(v17, v6);
    v19 = v18;
    if (v18)
    {
      [v18 drawingDidChangeVisibleStrokes:v4];
    }

    v20 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKTiledView__handleDrawingDidChangeForAttachment_didChangeVisibleStrokes___block_invoke;
    block[3] = &unk_1E82D6B00;
    objc_copyWeak(v23, &location);
    v22 = v6;
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

- (void)canvasView:(id)a3 drawingDidChange:(id)a4
{
  v5 = a4;
  v6 = [v5 uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:v6];

  if (v7)
  {
    v8 = [v7 drawing];
    [v8 mergeWithDrawing:v5];

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

  [(PKTiledView *)self updateCurrentSelectionWithNewDrawingIfNecessary:v5];
}

- (BOOL)canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4
{
  v5 = a4;
  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v6 = [(PKTiledView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PKTiledView *)self delegate];
    v9 = [v8 canvasView:self shouldBeginDrawingWithTouch:v5];
  }

  else
  {
    v9 = 1;
  }

  if ([v5 type])
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  v17 = [(PKTiledView *)self hoverController];
  if (!v17 || !self || (v17[56] & 1) == 0)
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_6:
    v10 = [(PKTiledView *)self drawingGestureRecognizer];
    v11 = [v10 drawingTouch];

    if (v11)
    {
      v12 = [(PKTiledView *)self drawingGestureRecognizer];
      v13 = [v12 drawingTouch];
      v14 = [v13 type];

      v15 = [v5 type];
      if (v14 == 2 && v15 != 2)
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

    v18 = [(PKTiledView *)self selectionController];
    if (!v18 || (v19 = v18[16], v18, !v19) || ([v5 locationInView:self], v21 = v20, v23 = v22, -[PKTiledView selectionController](self, "selectionController"), v24 = objc_claimAutoreleasedReturnValue(), -[PKSelectionController selectionInteraction](v24), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "_selectionShouldReceiveTouchForPoint:", v21, v23), v25, v24, (v26 & 1) == 0))
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

- (void)canvasViewDrawingMoved:(id)a3 withTouch:(id)a4
{
  v5 = a4;
  [(PKTiledView *)self _updateTimestampForLatestUserInteraction];
  if (-[PKTiledView toolShadowShouldBeActive](self, "toolShadowShouldBeActive") && [v5 type] == 2)
  {
    [(PKTiledView *)self _keepPencilShadowVisible];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  __s1 = 0u;
  v13 = 0u;
  v6 = [(PKTiledView *)self canvasView];
  v7 = [v6 _drawingController];
  v8 = [(PKController *)v7 inputController];
  v9 = v8;
  if (v8)
  {
    [v8 _latestStrokePoint];
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

- (void)canvasViewInvalidateTiles:(id)a3
{
  [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];

  [(PKTiledView *)self updateTilesForVisibleRect];
}

- (CGAffineTransform)canvasView:(SEL)a3 transformForStroke:(id)a4
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

- (void)_handleSingleTapAtLocation:(CGPoint)a3 forAttachment:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = PKDynamicCast(v8, v7);
  if (v9)
  {
    v10 = [v7 drawing];

    if (!v10 || ([v7 drawing], v11 = objc_claimAutoreleasedReturnValue(), -[PKTiledView transformFromViewToStrokeSpaceInDrawing:](self, "transformFromViewToStrokeSpaceInDrawing:", v11), v11, (objc_msgSend(v9, "_handleSingleTapAtDrawingLocation:", y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0) & 1) == 0))
    {
      [(PKTiledView *)self _showEditMenuFromLocation:v9 forAttachment:x, y];
    }
  }
}

- (void)_showEditMenuFromLocation:(CGPoint)a3 forAttachment:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12 = a4;
  [(PKTiledView *)self becomeFirstResponder];
  [v12 setAttachmentChromeVisible:1 animated:1 highlightBackground:0];
  v7 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"PKEditMenuConfigurationIdentifier" sourcePoint:{x, y}];
  v8 = [(PKTiledView *)self selectionController];
  v9 = v8;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((v8 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained editMenuInteraction];
  [v11 presentEditMenuWithConfiguration:v7];
}

- (id)didChangeDrawing:(id)a3 undoable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uuid];
  v8 = [(PKTiledView *)self _attachmentForUUID:v7];

  if ([v8 isExternalAttachment] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 externalAttachmentDidChangeDrawing:v6];
  }

  [v8 drawing];
  if (v4)
    v9 = {;
    v10 = [v9 undoableMergeWithDrawing:v6];
  }

  else
    v9 = {;
    [v9 mergeWithDrawing:v6];
    v10 = 0;
  }

  [(PKTiledView *)self _handleDrawingDidChangeForAttachment:v8];

  return v10;
}

- (void)registerUndoCommand:(id)a3
{
  v15 = a3;
  v4 = [(PKTiledView *)self undoManager];

  if (v4)
  {
    v5 = [(PKTiledView *)self undoManager];
    v6 = [(PKTiledView *)self drawingUndoTarget];
    [v15 registerWithUndoManager:v5 target:v6 selector:{-[PKTiledView drawingUndoSelector](self, "drawingUndoSelector")}];

    v7 = [(PKTiledView *)self drawingUndoTarget];

    if (v7 == self)
    {
      hoverConvertToShapeBlock = self->_hoverConvertToShapeBlock;
      if (!hoverConvertToShapeBlock)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v10 = self->_hoverConvertToShapeBlock;
        self->_hoverConvertToShapeBlock = v9;

        hoverConvertToShapeBlock = self->_hoverConvertToShapeBlock;
      }

      v11 = [(PKTiledView *)self undoManager];
      v12 = [hoverConvertToShapeBlock indexOfObjectIdenticalTo:v11];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = self->_hoverConvertToShapeBlock;
        v14 = [(PKTiledView *)self undoManager];
        [v13 addObject:v14];
      }
    }
  }
}

- (void)registerUndoCommands:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKTiledView *)self undoManager];

  if (v5)
  {
    v6 = [(PKTiledView *)self undoManager];
    v7 = [v6 groupsByEvent];

    if ((v7 & 1) == 0)
    {
      v8 = [(PKTiledView *)self undoManager];
      [v8 beginUndoGrouping];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v4;
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

    if ((v7 & 1) == 0)
    {
      v13 = [(PKTiledView *)self undoManager];
      [v13 endUndoGrouping];
    }
  }
}

- (void)registerUndoCommands:(id)a3 andChangeToDrawing:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PKTiledView *)self registerUndoCommands:v6];
  [(PKTiledView *)self didChangeDrawing:v7];
  v8 = [(PKTiledView *)self selectionController];
  v9 = v8;
  if (v8)
  {
    [(PKSelectionController *)v8 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
  }

  [(PKTiledView *)self didChangeDrawing:v7];
  v11[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(PKTiledView *)self _selectionRefreshWithChangeToDrawings:v10 completion:&__block_literal_global_433];
}

- (void)canvasView:(id)a3 registerMultiStepUndoCommands:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKTiledView *)self undoManager];
  if (v8)
  {
    v9 = [v7 count];

    if (v9)
    {
      v10 = [v7 firstObject];
      [(PKTiledView *)self canvasView:v6 registerUndoCommands:v10];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__PKTiledView_canvasView_registerMultiStepUndoCommands___block_invoke;
      block[3] = &unk_1E82D6400;
      block[4] = self;
      v12 = v6;
      v13 = v7;
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

- (void)canvasView:(id)a3 registerUndoCommands:(id)a4
{
  v6 = a4;
  v5 = [(PKTiledView *)self undoManager];

  if (v5)
  {
    [(PKTiledView *)self registerUndoCommands:v6];
  }
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v5 recordUndoIfNecessary];

  [(PKAutoRefineController *)self->_externalAutoRefineTaskCoordinator clearRefinableStrokes];
  [(PKTiledView *)self _dismissInsertSpaceHandlesIfNecessary];
  v6 = [(PKTiledView *)self canvasView];
  v7 = [v6 _isCombiningStrokes];

  if (v7)
  {
    v8 = [(PKTiledView *)self canvasView];
    [v8 _finishCombiningStrokesIfNecessary];
  }

  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  v9 = [v4 drawingUUID];
  v10 = [(PKTiledView *)self _attachmentForUUID:v9];

  if (!v10)
  {
    [(PKTiledView *)self updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:0 withCallback:0];
    goto LABEL_20;
  }

  v11 = [(PKTiledView *)self undoManager];
  v12 = [v4 actionName];
  [v11 setActionName:v12];

  v13 = [v10 drawing];
  v14 = [v4 applyToDrawingReturnInverted:v13];

  v35 = v14;
  if (v14)
  {
    [(PKTiledView *)self registerUndoCommand:v14];
  }

  v15 = +[PKStatisticsManager sharedStatisticsManager];
  v16 = [v4 actionName];
  v17 = [v4 strokes];
  v18 = [(PKTiledView *)self canvasView];
  v19 = [v18 ink];
  v20 = [v19 identifier];
  [(PKStatisticsManager *)v15 recordUndo:v16 forStrokes:v17 fallbackInkIdentifier:v20];

  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v21 = self->_aggd_cachedVisibleStrokeCount;
  [(PKAnalyticsSession *)v21 incrementUndoCount];

  if (v7)
  {
    v22 = [(PKTiledView *)self canvasView];
    if ([v22 isHidden])
    {
    }

    else
    {
      v23 = [(PKTiledView *)self canvasView];
      v24 = [v23 wantsCanvasVisible];

      if (v24)
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
  -[PKTiledView _handleDrawingDidChangeForAttachment:didChangeVisibleStrokes:](self, "_handleDrawingDidChangeForAttachment:didChangeVisibleStrokes:", v10, [v4 changesVisibleStrokes]);
  v26 = dispatch_get_global_queue(0, 0);
  v27 = [v10 drawing];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __27__PKTiledView_performUndo___block_invoke;
  v41[3] = &unk_1E82D67C8;
  v28 = v10;
  v42 = v28;
  [v27 clipStrokesIfNeededOnQueue:v26 completion:v41];

  if ([v28 isAtEndOfDocument])
  {
    v29 = [v28 drawing];
    v30 = [v29 _isEmpty];

    if ((v30 & 1) == 0)
    {
      v31 = objc_opt_class();
      v32 = PKDynamicCast(v31, v28);
      v33 = [v28 drawing];
      [v33 bounds];
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

+ (id)newInlineDrawingOfClass:(Class)a3
{
  v3 = objc_alloc_init(a3);
  [v3 set_canvasBounds:{0.0, 0.0, 768.0, 120.0}];
  return v3;
}

- (void)setCurrentDrawingBeingCopiedToCanvas:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    objc_storeWeak(a1 + 93, v3);
    v4 = [a1 canvasView];
    [v4 setCurrentDrawingBeingCopiedToCanvas:v5];

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
  v2 = [(PKTiledView *)self scrollView];
  v3 = [v2 layer];
  v4 = [v3 animationKeys];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasPrefix:@"bounds.size"])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_scrollViewDidLayoutSubviews:(id)a3
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
    v19 = [(PKTiledView *)self window];
    v20 = [v19 windowScene];
    v21 = [v20 screen];
    [v21 nativeScale];
    v23 = v22;

    if ([(PKTiledView *)self isDrawing]&& (v8 != v16 || v10 != v18 || sqrt((v6 - v14) * (v6 - v14) + (v28 - v12) * (v28 - v12)) >= 1.0 / fmax(v23, 1.0)))
    {
      v24 = [(PKTiledView *)self canvasView];
      v25 = [v24 drawingGestureRecognizer];
      [v25 cancel];
    }

    v26 = [(PKTiledView *)self canvasView];
    [v26 _finishCombiningStrokesIfNecessary];

    [(PKTiledView *)self _layoutSubviews];
    tileController = self->_tileController;

    [(PKSelectionController *)&tileController->super.isa _layoutViewsIfNecessary];
  }
}

- (void)_didAddDrawingAttachmentView
{
  if (self->_rulerHostingDelegate)
  {
    v3 = [(PKTiledView *)self canvasView];
    v4 = [v3 isDrawing];

    v5 = [(PKTiledView *)self canvasView];
    v6 = [(PKTiledView *)self drawingTouchThatHitNothing];
    [(PKTiledView *)self canvasViewWillBeginNewStroke:v5 withTouch:v6 location:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    rulerHostingDelegate = self->_rulerHostingDelegate;
    if (rulerHostingDelegate)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    if ((v8 & 1) == 0)
    {
      v9 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "Stroke already ended in _didAddDrawingAttachmentView", v12, 2u);
      }

      v10 = [(PKTiledView *)self canvasView];
      [(PKTiledView *)self canvasViewDidEndDrawing:v10];

      rulerHostingDelegate = self->_rulerHostingDelegate;
    }

    self->_rulerHostingDelegate = 0;
  }

  v11 = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)v11 _didAddDrawingAttachmentView];
}

- (void)_updateAttachmentOnscreenBounds
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PKTiledView *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (![(PKTiledView *)self p_shouldSkipStrokeCacheInvalidationForAttachment:v7])
        {
          v8 = [v7 drawing];
          [(PKTiledView *)self visibleOnscreenBoundsForDrawing:v8];
          [v7 visibleOnscreenBoundsDidChange:?];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_layoutSubviewsUpdateTilesForRendering:(BOOL)a3
{
  v3 = a3;
  v114 = *MEMORY[0x1E69E9840];
  if (self && self->_hoverPreviewActive)
  {
    goto LABEL_3;
  }

  v11 = [(PKTiledView *)self scrollView];
  if ([v11 isZooming] && (!self ? (v12 = 0.0) : (v12 = *&self->_tileLevel + *&self->_tileLevel), -[PKTiledView canvasZoomScale](self, "canvasZoomScale"), v12 > v13))
  {
    v14 = [(PKTiledView *)self scrollView];
    [v14 zoomScale];
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
      v87 = [(PKTiledView *)self scrollView];
      [v87 zoomScale];
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
    v33 = [(PKTiledView *)self canvasView];
    [v33 setFrame:{v26, v28, v30, v32}];

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
    v35 = [(PKTiledView *)self scrollView];
    [v35 zoomScale];
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
      [(PKTiledView *)self updateTilesForVisibleRectRendering:v3 offscreen:0 overrideAdditionalStrokes:0];
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
        v50 = [(NSMutableArray *)v49 isDragging];

        if ((v50 & 1) == 0)
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
    v52 = [(PKTiledView *)self attachmentViews];
    [(PKTiledView *)self frame];
    v55 = v54 != v24 || v53 != v22;
    if (v55)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v56 = v52;
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
      v63 = v52;
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
            v68 = [(PKTiledView *)self scrollView];
            [v67 pixelAlignForContentScale:v68 enclosingScrollView:v62];
          }

          v64 = [v63 countByEnumeratingWithState:&v88 objects:v111 count:16];
        }

        while (v64);
      }

      v55 = 1;
    }

    [(PKTiledView *)self _hideCanvas];
    v69 = [MEMORY[0x1E696AAE8] mainBundle];
    v70 = [v69 bundleIdentifier];
    v71 = [v70 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

    if ((v71 & 1) == 0)
    {
      v72 = [MEMORY[0x1E696AAE8] mainBundle];
      v73 = [v72 bundleIdentifier];
      if ([v73 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
      {
      }

      else
      {
        v74 = [MEMORY[0x1E696AAE8] mainBundle];
        v75 = [v74 bundleIdentifier];
        v76 = [v75 isEqualToString:@"com.apple.quicklook.UIExtension"];

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
    v78 = [(PKTiledView *)self canvasView];
    [(PKTiledView *)self frame];
    [v78 _setFixedPointSize:v79 drawingScale:{v80, *&v37}];

    [(PKTiledView *)self resizeTiles:v52 completion:0];
    [(PKTiledView *)self updateTilesForVisibleRectRendering:v3 offscreen:0 overrideAdditionalStrokes:0];
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
  v81 = [(PKTiledView *)self attachmentViews];
  v82 = [v81 countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v82)
  {
    v83 = *v106;
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*v106 != v83)
        {
          objc_enumerationMutation(v81);
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

      v82 = [v81 countByEnumeratingWithState:&v105 objects:v113 count:16];
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

- (void)getAttachment:(id)a3 strokeTransform:(CGAffineTransform *)a4 paperTransform:(CGAffineTransform *)a5
{
  v9 = a3;
  v8 = [(PKTiledView *)self scrollView];
  [v8 contentOffset];
  [(PKTiledView *)self getAttachment:v9 strokeTransform:a4 paperTransform:a5 scrollViewContentOffset:?];
}

- (CGAffineTransform)contentCoordinateSpaceTransform
{
  v5 = [(PKTiledView *)self contentCoordinateSpace];

  if (v5)
  {
    v10 = [(PKTiledView *)self contentCoordinateSpace];
    v7 = [(PKTiledView *)self canvasView];
    PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v10, v7, &retstr->a);
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

- (void)getAttachment:(id)a3 strokeTransform:(CGAffineTransform *)a4 paperTransform:(CGAffineTransform *)a5 scrollViewContentOffset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v11 = a3;
  v12 = [(PKTiledView *)self scrollView];
  [v12 zoomScale];
  v14 = v13;

  v15 = [(PKTiledView *)self drawingTouchThatHitNothing];

  if (v15)
  {
    v16 = [(PKTiledView *)self standInAttachmentView];

    v11 = v16;
  }

  memset(&v45[1], 0, sizeof(CGAffineTransform));
  if (v11)
  {
    [v11 drawingTransform];
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  v18 = [v11 tileContainerView];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [v11 tileContainerView];
  [WeakRetained convertRect:v27 fromView:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;

  memset(v45, 0, 48);
  v32 = [(PKTiledView *)self canvasView];
  v33 = v32;
  if (v32)
  {
    [v32 _replayCoordinateSystemTransform];
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

  v34 = [(PKTiledView *)self contentCoordinateSpace];

  if (v34)
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
  *&a4->a = *&v43.a;
  *&a4->c = v39;
  *&a4->tx = *&v43.tx;
  CGAffineTransformMakeTranslation(&t1, -x / v14, -y / v14);
  v40 = *&t1.c;
  *&a5->a = *&t1.a;
  *&a5->c = v40;
  *&a5->tx = *&t1.tx;
}

- (id)canvasViewTouchView:(id)a3
{
  v4 = [(PKTiledView *)self liveAttachment];

  if (v4)
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

- (id)_hitAttachment:(CGPoint)a3 includeStandinAttachment:(BOOL)a4 expandBottomAttachment:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v66 = *MEMORY[0x1E69E9840];
  v10 = [(PKTiledView *)self contentCoordinateSpace];
  if (v10 && [(PKTiledView *)self disableTileRendering])
  {
    v11 = [(PKTiledView *)self _visibleAttachments];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = [(PKTiledView *)self _visibleAttachments];
      v14 = [v13 firstObject];

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
  v15 = [(PKTiledView *)self _visibleAttachments];
  v16 = [v15 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (!v16)
  {

    if (!v6)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

LABEL_23:
    v37 = [(PKTiledView *)self standInAttachmentView];
    if (v37)
    {
      v38 = [(PKTiledView *)self standInAttachmentView];
      v39 = [v38 attachmentContainerView];
      v40 = [v39 isHidden];

      if ((v40 & 1) == 0)
      {
        v41 = [(PKTiledView *)self standInAttachmentView];
        [v41 bounds];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v50 = [(PKTiledView *)self scrollView];
        [v50 bounds];
        v52 = v51;

        v53 = [(PKTiledView *)self standInAttachmentView];
        [v53 convertPoint:self fromView:{x, y}];
        v55 = v54;
        v57 = v56;

        v58 = [(PKTiledView *)self standInAttachmentView];
        v59 = [v58 hitByTouchLocation:v55 bounds:{v57, v43, v45, v47, v49 + v52}];

        if (v59)
        {
          v14 = [(PKTiledView *)self standInAttachmentView];
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
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v61 + 1) + 8 * i);
      v20 = [v19 viewRep];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      if (v19 && ([v19 isAtEndOfDocument] & v5) == 1)
      {
        v29 = [(PKTiledView *)self scrollView];
        [v29 bounds];
        v31 = v30;

        v28 = v28 + v31;
      }

      v32 = [v19 viewRep];
      [v32 convertPoint:self fromView:{x, y}];
      v34 = v33;
      v36 = v35;

      if ([v19 hitByTouchLocation:v34 bounds:{v36, v22, v24, v26, v28}])
      {
        v14 = v19;
        goto LABEL_19;
      }
    }

    v16 = [v15 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v14 = 0;
LABEL_19:

  if (!v14 && v6)
  {
    goto LABEL_23;
  }

LABEL_28:

  return v14;
}

- (id)hitAttachment:(CGPoint)a3 includeStandinAttachment:(BOOL)a4 expandBottomAttachment:(BOOL)a5
{
  v5 = [(PKTiledView *)self _hitAttachment:a4 includeStandinAttachment:a5 expandBottomAttachment:a3.x, a3.y];
  v6 = objc_opt_class();
  v7 = PKDynamicCast(v6, v5);

  return v7;
}

- (BOOL)isInNotesTextView
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.mobilenotes"];

  if (v5)
  {
    v6 = [(PKTiledView *)self superview];
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v8 = [v7 superview];

        v7 = v8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
LABEL_6:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_setupPencilShadowViewIfNecessary
{
  v3 = [(PKTiledView *)self toolShadowShouldBeActive];
  v5 = [(PKTiledView *)self window];
  v4 = [v5 windowScene];
  if (v3)
  {
    [PKPencilShadowView createShadowViewForSceneIfNecessary:v4];
  }

  else
  {
    [PKPencilShadowView hideShadowViewForSceneIfNecessary:v4];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__441;
  v21 = __Block_byref_object_dispose__442;
  v22 = 0;
  v8 = [(PKTiledView *)self subviews];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__PKTiledView_hitTest_withEvent___block_invoke;
  v12[3] = &unk_1E82D6B28;
  v15 = x;
  v16 = y;
  v14 = &v17;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v12];

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

- (id)_visibleTilesForAttachment:(id)a3
{
  v4 = a3;
  [(PKTiledView *)self bounds];
  v5 = [(PKTiledView *)self _tilesForAttachment:v4 bounds:0 invert:?];

  return v5;
}

- (id)_tilesForAttachment:(id)a3 bounds:(CGRect)a4 invert:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v47 = [MEMORY[0x1E695DF70] array];
  v12 = objc_opt_class();
  v13 = PKDynamicCast(v12, v11);
  v46 = v13;
  if (v13)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = [v13 tiles];
    v15 = [v14 allValues];

    v16 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
            objc_enumerationMutation(v15);
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

          v24 = [v11 tileContainerView];
          [(PKTiledView *)self convertRect:v24 fromView:v21, v20, v22, v23];
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
            v33 = [v46 tileContainerView];
            [v33 bounds];
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

          if (v42 != v5)
          {
            [v47 addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v43 = [v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
        v16 = v43;
      }

      while (v43);
    }

    v44 = v47;
  }

  else
  {
    v44 = MEMORY[0x1E695E0F0];
  }

  return v44;
}

- (void)setSixChannelBlendingDisableSnapshotting:(BOOL)a3
{
  self->_isDoingLayoutAfterLiveWindowResizing = a3;
  [self->_drawingPolicy setSixChannelBlendingMode:{-[PKTiledView _activeSixChannelBlendingMode](self, "_activeSixChannelBlendingMode")}];

  [(PKTiledView *)self _updateWantsExtendedDynamicRangeContent];
}

- (void)setSixChannelBlendingRendersTransparent:(BOOL)a3
{
  self->_shouldHideCanvasAfterScroll = a3;
  [(PKTileController *)self->_drawingTouchThatHitNothing setTransparentBlending:a3];
  v4 = [(PKTiledView *)self _activeSixChannelBlendingMode];
  drawingPolicy = self->_drawingPolicy;

  [drawingPolicy setSixChannelBlendingMode:v4];
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

  v4 = [(PKTiledView *)self delegate];
  v3 = [v4 _canvasViewSnapshottingDisabled:self];

  return v3;
}

- (void)_canvasViewWillCreateSnapshot
{
  if ((*&self->_tiledViewFlags & 8) != 0)
  {
    v3 = [(PKTiledView *)self delegate];
    [v3 _canvasViewWillCreateSnapshot:self];
  }
}

- (void)setDisableTileRendering:(BOOL)a3
{
  v30 = *MEMORY[0x1E69E9840];
  BYTE1(self->_refineAnimationController) = a3;
  if (a3)
  {
    v3 = self;
    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:1];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(PKTiledView *)v3 attachmentViews];
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
          v8 = [v7 tiles];
          v9 = [v8 objectEnumerator];

          v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          v11 = v3;
          if (v10)
          {
            v12 = *v21;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v20 + 1) + 8 * j);
                if (v14)
                {
                  atomic_fetch_add((v14 + 16), 1uLL);
                }

                [(PKRendererTile *)v14 purgeTileLayers];
              }

              v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          v3 = v11;
          v15 = [v7 tiles];
          [v15 removeAllObjects];

          v16 = [v7 purgedTiles];
          [v16 removeAllObjects];
        }

        v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v4);
    }

    drawingTouchThatHitNothing = v3->_drawingTouchThatHitNothing;
    if (drawingTouchThatHitNothing)
    {
      [(PKTileController *)drawingTouchThatHitNothing teardown];
      v18 = v3->_drawingTouchThatHitNothing;
      v3->_drawingTouchThatHitNothing = 0;
    }
  }
}

- (void)_finishCombiningStrokesIfNecessaryForAttachment:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(PKTiledView *)self canvasView];
    if ([v4 _isCombiningStrokes])
    {
      v5 = [(PKTiledView *)self canvasView];
      v6 = [v5 _combineStrokesDrawingUUID];
      v7 = [v10 drawing];
      v8 = [v7 uuid];
      v9 = [v6 isEqual:v8];

      if (v9)
      {
        goto LABEL_6;
      }

      v4 = [(PKTiledView *)self canvasView];
      [v4 _finishCombiningStrokesIfNecessary];
    }
  }

LABEL_6:
}

- (void)renderAttachment:(id)a3 intoCanvas:(id)a4 showing:(BOOL)a5
{
  v176[9] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PKTiledView *)&self->super.super.super.isa currentDrawingBeingCopiedToCanvas];
  v11 = [v8 drawing];

  if (v10 != v11)
  {
    [(PKTiledView *)self _finishCombiningStrokesIfNecessaryForAttachment:v8];
    v132 = [(PKTiledView *)self _visibleTilesForAttachment:v8];
    v12 = [(PKTiledView *)self canvasView];
    v13 = [v8 tileMaskView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v8 tileMaskView];
    [v12 convertRect:v22 fromView:{v15, v17, v19, v21}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    if (v8)
    {
      if (([v8 isAtEndOfDocument] & 1) != 0 || (-[PKTiledView standInAttachmentView](self, "standInAttachmentView"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31 == v8))
      {
        v32 = [(PKTiledView *)self scrollView];
        [v32 bounds];
        v34 = v33;

        v35 = [(PKTiledView *)self standInAttachmentView];
        v30 = v30 + v34;

        if (v35 == v8)
        {
          v36 = [(PKTiledView *)self scrollView];
          [v36 bounds];
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
    v131 = a5;
    objc_initWeak(&location, self);
    [(PKTiledView *)self getAttachment:v8 strokeTransform:v173 paperTransform:v172];
    if (self)
    {
      v56 = v173[1];
      *&self->_strokeTransformAtStartOfStroke.b = v173[0];
      *&self->_strokeTransformAtStartOfStroke.d = v56;
      *&self->_strokeTransformAtStartOfStroke.ty = v173[2];
    }

    v57 = [v8 drawing];
    [(PKTiledView *)&self->super.super.super.isa setCurrentDrawingBeingCopiedToCanvas:v57];

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
        v126 = [(PKTiledView *)self window];
        v59 = [(PKTiledView *)self contentSnapshottingView];
        if (!v59)
        {
          v59 = v126;
        }

        v129 = v59;
        v60 = [(PKTiledView *)self canvasView];
        v61 = [v60 _rendererController];
        if (v61)
        {
          v62 = v61[520];
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
        v82 = [(PKTiledView *)self canvasView];
        v83 = v82;
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

        v130 = [v82 snapshotFramebufferWithSize:{v84, v85}];

        v51 = v66;
        v55 = v123;
        v49 = v67;
        v53 = v65;
        v86 = v130;
        if (v130 && *(v130 + 56))
        {
          v124 = *MEMORY[0x1E6979F68];
          v87 = [(PKTiledView *)self window];
          v88 = [v87 screen];
          v89 = [v88 displayConfiguration];
          v127 = [v89 name];

          if (!v127)
          {
            v90 = [MEMORY[0x1E6979328] mainDisplay];
            v91 = [v90 name];

            v92 = @"LCD";
            if (v91)
            {
              v92 = v91;
            }

            v127 = v92;
          }

          v93 = [(PKTiledView *)self window];
          v125 = [v93 windowScene];

          v94 = v122;
          if (objc_opt_respondsToSelector())
          {
            v95 = [v125 renderingEnvironment];
            if (objc_opt_respondsToSelector())
            {
              v96 = [v95 systemDisplayIdentifier];
              if (v96)
              {

                v97 = v96;
                v124 = @"systemIdentifier";
                v127 = v97;
              }
            }

            v94 = v122;
          }

          v98 = [(PKTiledView *)self isExtendedDynamicRangeRenderingActive];
          memset(&v156, 0, sizeof(v156));
          CGAffineTransformMakeScale(&v156, v94, v94);
          memset(&v155, 0, sizeof(v155));
          m = v156;
          CATransform3DMakeAffineTransform(&v155, &m);
          v99 = *MEMORY[0x1E6979FD0];
          v175[0] = *MEMORY[0x1E6979FB0];
          v175[1] = v124;
          v176[0] = v99;
          v176[1] = v127;
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
          v104 = [v128 context];
          v105 = [v103 numberWithUnsignedInt:{objc_msgSend(v104, "contextId")}];
          v176[4] = v105;
          v175[5] = *MEMORY[0x1E6979FA8];
          v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v128];
          v176[5] = v106;
          v175[6] = *MEMORY[0x1E6979F88];
          v107 = [MEMORY[0x1E696AD98] numberWithBool:!v98 & v62];
          v176[6] = v107;
          v175[7] = *MEMORY[0x1E697A008];
          v108 = [MEMORY[0x1E696AD98] numberWithBool:v98];
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
          v145 = self;
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
    v115 = [(PKTiledView *)self canvasView];
    v116 = [v8 drawing];
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
    v134 = v9;
    v136[1] = *&v49;
    v136[2] = v51;
    v136[3] = v53;
    v136[4] = v55;
    v137 = v172[0];
    v138 = v172[1];
    v139 = v172[2];
    objc_copyWeak(v136, &location);
    v140 = v131;
    v135 = v8;
    v141 = v114;
    [v115 _setDrawing:v116 tiles:v112 tileScale:v119 snapshotTexture:&v155 snapshotTextureTransform:v133 completionBlock:v118];

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

- (void)_copyFromCanvas:(id)a3 intoAttachment:(id)a4 hideCanvas:(BOOL)a5 strokes:(id)a6
{
  v78 = a5;
  v131 = *MEMORY[0x1E69E9840];
  v74 = a3;
  v80 = a4;
  v81 = a6;
  v8 = [v80 drawing];
  v9 = [v8 strokes];
  v10 = [v9 copy];

  v75 = v10;
  v82 = [(PKTiledView *)self _visibleTilesForAttachment:v80];
  v11 = [v10 mutableCopy];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v12 = [v81 reverseObjectEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v119 objects:v130 count:16];
  if (v13)
  {
    v14 = *v120;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v120 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v119 + 1) + 8 * i);
        v17 = [v11 lastObject];
        LODWORD(v16) = [v17 isEqual:v16];

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

      v13 = [v12 countByEnumeratingWithState:&v119 objects:v130 count:16];
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
  v12 = v82;
  v19 = [v12 countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v19)
  {
    v20 = *v115;
LABEL_11:
    v21 = 0;
    while (1)
    {
      if (*v115 != v20)
      {
        objc_enumerationMutation(v12);
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
        v19 = [v12 countByEnumeratingWithState:&v114 objects:v129 count:16];
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

  v26 = [(PKTiledView *)self scrollView];
  [v26 contentOffset];
  [(PKTiledView *)self getAttachment:v80 strokeTransform:v124 paperTransform:v123 scrollViewContentOffset:?];

  if (v78)
  {
    [(PKTiledView *)self setLiveAttachment:?];
  }

  if ([v81 count])
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v31 = v81;
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
  v97 = v78;
  v91 = v69;
  v92 = self;
  v77 = v74;
  v93 = v77;
  v79 = v80;
  v94 = v79;
  v70 = v81;
  v95 = v70;
  v71 = _Block_copy(aBlock);
  if ([v66 count] && !-[PKTiledView disableTileRendering](self, "disableTileRendering", v73))
  {
    v72 = [(PKTiledView *)self tileController];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __65__PKTiledView__copyFromCanvas_intoAttachment_hideCanvas_strokes___block_invoke_464;
    v84[3] = &unk_1E82D63B0;
    v85 = v71;
    if (v72)
    {
      [(PKMetalRendererController *)v72[3] updateTiles:v66 withNewStrokes:v70 completionBlock:v84];
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

- (void)resizeTiles:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v6 = a4;
  v7 = v6;
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

  v36 = v6;
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
  v10 = v37;
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
        v15 = [v14 tiles];
        v16 = [v15 objectEnumerator];

        v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v17)
        {
          v18 = *v39;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v38 + 1) + 8 * j);
              if (v20)
              {
                *(v20 + 85) = 1;
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
        v24 = [(PKTiledView *)self scrollView];
        [v24 zoomScale];
        v26 = v25 > 0.0;

        if (v26)
        {
          v27 = [MEMORY[0x1E696AAE8] mainBundle];
          v28 = [v27 bundleIdentifier];
          v29 = [v28 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

          v7 = v36;
          if ((v29 & 1) == 0)
          {
            v30 = [MEMORY[0x1E696AAE8] mainBundle];
            v31 = [v30 bundleIdentifier];
            if ([v31 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
            {

              v7 = v36;
            }

            else
            {
              v33 = [MEMORY[0x1E696AAE8] mainBundle];
              v34 = [v33 bundleIdentifier];
              v35 = [v34 isEqualToString:@"com.apple.quicklook.UIExtension"];

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

- (BOOL)_updateHeightOfAttachmentIfNecessary:(id)a3
{
  v4 = a3;
  if ([(PKTiledView *)self _shouldUpdateHeightOfAttachments])
  {
    v5 = [v4 drawing];
    v6 = objc_opt_class();
    v7 = PKDynamicCast(v6, v4);
    v8 = [v5 _isEmpty];
    if (v7)
    {
      v9 = v8;
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

    v11 = [v7 drawing];
    [v7 heightFromDrawing:v11 delta:10.0];
    v13 = v12;

    [v7 bounds];
    if (v13 <= v14)
    {
      [v5 bounds];
      rect = v16;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v5 _canvasBounds];
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

- (void)_transientlyUpdateHeightOfAttachment:(id)a3 delta:(double)a4
{
  v11 = a3;
  v6 = [v11 drawing];
  if ([v6 _isEmpty])
  {
  }

  else
  {
    v7 = [(PKTiledView *)self _shouldUpdateHeightOfAttachments];

    if (v7)
    {
      v8 = [v11 drawing];
      [v11 heightFromDrawing:v8 delta:a4 + 10.0];
      v10 = v9;

      [v11 updateDrawingHeight:0 notifyDrawingDidChange:v10];
    }
  }
}

- (void)cancelTileGenerationInvalidateTiles:(BOOL)a3
{
  v3 = a3;
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
        v10 = [v9 tiles];
        v11 = [v10 objectEnumerator];

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v18 + 1) + 8 * v15);
              if (v16)
              {
                atomic_fetch_add(v16 + 2, 1uLL);
                if (v3)
                {
                  objc_setProperty_atomic_copy(v16, v12, 0, 136);
                }
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
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

- (void)updateTilesForVisibleRectForceIfZooming:(BOOL)a3
{
  if (a3 || ![(PKTiledView *)self _isZoomingOrResizing])
  {

    [(PKTiledView *)self updateTilesForVisibleRectRendering:1 offscreen:0 overrideAdditionalStrokes:0];
  }
}

- (void)swapOffscreenCallback:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = a3;
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
          v10 = [v6 offscreenTiles];
          v11 = [v10 count];
          *buf = 134217984;
          v26 = v11;
          _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "swap offscreen tiles %ld", buf, 0xCu);
        }

        v8 = [v6 offscreenTiles];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __37__PKTiledView_swapOffscreenCallback___block_invoke;
        v16[3] = &unk_1E82D6BC8;
        v16[4] = v6;
        v16[5] = &v21;
        [v8 enumerateKeysAndObjectsUsingBlock:v16];

        v9 = [v6 offscreenTiles];
        [v9 removeAllObjects];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  if (v14)
  {
    v14[2]();
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

- (void)updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes:(id)a3 withCallback:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PKTiledView *)self _isZoomingOrResizing])
  {
    if (v6 && ([(PKTiledView *)self window], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
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
      v15 = v6;
      v16 = v7;
      dispatch_after(v10, MEMORY[0x1E69E96A0], v14);
    }

    else
    {
      v7[2](v7);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(PKTiledView *)self canvasView];
      *buf = 67109120;
      v22 = [v13 isHidden];
      _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "updateTilesForVisibleRectRendering canvasVisible:%d", buf, 8u);
    }

    [(PKTiledView *)self updateTilesForVisibleRectRendering:1 offscreen:1 overrideAdditionalStrokes:v6];
    v12 = [(PKTiledView *)self tileController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__PKTiledView_updateTilesForVisibleRectOffscreenOverrideAdditionalStrokes_withCallback___block_invoke;
    v17[3] = &unk_1E82D6840;
    v18 = v6;
    v19 = self;
    v20 = v7;
    [(PKTileController *)v12 callbackAfterTileGeneration:v17];
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

- (BOOL)tileIsVisibleForOffset:(CGPoint)a3 inAttachment:(id)a4 distanceToMiddle:(double *)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(PKTiledView *)self scrollView];
  [v10 bounds];
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
  v27 = [v9 tileContainerView];
  v28 = [v9 viewRep];
  [v27 convertRect:v28 toView:{v20, v22, v24, v26}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = [v9 tileContainerView];
  [v37 bounds];
  v60.origin.x = v30;
  v60.origin.y = v32;
  v60.size.width = v34;
  v60.size.height = v36;
  LOBYTE(v28) = CGRectIntersectsRect(v54, v60);

  if ((v28 & 1) != 0 && ([v9 viewRep], v38 = objc_claimAutoreleasedReturnValue(), -[PKTiledView scrollView](self, "scrollView"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "convertRect:toView:", v39, v30, v32, v34, v36), v41 = v40, v43 = v42, v45 = v44, v47 = v46, v39, v38, v55.origin.x = v12, v55.origin.y = v14, v55.size.width = v16, v55.size.height = v18, v61.origin.x = v41, v61.origin.y = v43, v61.size.width = v45, v61.size.height = v47, CGRectIntersectsRect(v55, v61)))
  {
    if (a5)
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
      *a5 = (MidY - v50) * (MidY - v50) + (MidX - v49) * (MidX - v49);
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
  v6 = [(PKTiledView *)self scrollView];
  [v6 bounds];
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
        v14 = [v13 viewRep];
        [v14 frame];
        v76 = v12;
        if (v15 <= 1.0)
        {
          goto LABEL_49;
        }

        v16 = [v13 viewRep];
        [v16 frame];
        if ((v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {

LABEL_49:
          goto LABEL_50;
        }

        v22 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v19 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;

        if (v22)
        {
          v23 = [v13 tileContainerView];
          v24 = [(PKTiledView *)self scrollView];
          [v23 convertRect:v24 fromView:{v71, v70, v69, v68}];
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

- (void)updateExistingTiles:(BOOL)a3
{
  v3 = a3;
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
        v14 = [v13 tiles];
        v15 = [v14 allValues];

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v33 + 1) + 8 * v18);
              if (!v3 || (!v19 ? (b = 0.0, c = 0.0, d = 0.0, a = 0.0) : (a = v19[2]._drawingTransform.a, b = v19[2]._drawingTransform.b, c = v19[2]._drawingTransform.c, d = v19[2]._drawingTransform.d), [v13 tileContainerView], v24 = objc_claimAutoreleasedReturnValue(), -[PKTiledView convertRect:fromView:](self, "convertRect:fromView:", v24, a, b, c, d), v45.origin.x = v6, v45.origin.y = v8, v45.size.width = v10, v45.size.height = v12, v25 = CGRectIntersectsRect(v44, v45), v24, v25))
              {
                v26 = [(PKRendererTile *)v19 properties];
                [v26 offset];
                v27 = [(PKTiledView *)self generateTile:v13 inAttachment:1 rendering:0 offscreen:0 overrideAdditionalStrokes:?];
              }

              ++v18;
            }

            while (v16 != v18);
            v28 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (void)updateTilesForVisibleRectRendering:(BOOL)a3 offscreen:(BOOL)a4 overrideAdditionalStrokes:(id)a5
{
  v5 = a4;
  v6 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v8 = a5;
  updateVisibleTilesAfterZoomOutBlock = self->_updateVisibleTilesAfterZoomOutBlock;
  if (updateVisibleTilesAfterZoomOutBlock)
  {
    dispatch_block_cancel(updateVisibleTilesAfterZoomOutBlock);
    v10 = self->_updateVisibleTilesAfterZoomOutBlock;
    self->_updateVisibleTilesAfterZoomOutBlock = 0;
  }

  v11 = [(PKTiledView *)self scrollView];
  [v11 zoomScale];
  v13 = v12;

  if (self->_tileScale >= 1.0)
  {
    [(PKTiledView *)self frame];
    if (v15 != 0.0 && v14 != 0.0)
    {
      [(PKTiledView *)self frame];
      if ((v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v20 = [(PKTiledView *)self disableTileRendering];
        v21 = v13 == 0.0 || v20;
        if ((v21 & 1) == 0 && *&self->_tileLevel != 0.0)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v22 = [(PKTiledView *)self attachmentViews];
          v23 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v23)
          {
            v24 = *v42;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v42 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v41 + 1) + 8 * i) _cancelOffscreenTiles];
              }

              v23 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v23);
          }

          v26 = [(PKTiledView *)self visibleAttachments];
          [(PKTiledView *)self getVisibleTiles:v26];

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

            v33 = [v32 drawing];
            v34 = [v33 uuid];
            v35 = [v8 objectForKeyedSubscript:v34];

            v36 = [(PKTiledView *)self generateTile:*j inAttachment:v6 rendering:v5 offscreen:v35 overrideAdditionalStrokes:j[1], j[2]];
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
        v5 = [v4 tiles];
        v6 = [v5 allKeys];

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v29 count:16];
        if (v7)
        {
          v8 = *v19;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(v6);
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
                v11 = [v4 tiles];
                v12 = [v11 objectForKeyedSubscript:v10];

                v13 = [v4 tiles];
                [v13 removeObjectForKey:v10];

                [(PKRendererTile *)v12 purgeTileLayers];
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v18 objects:v29 count:16];
          }

          while (v7);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v2);
  }
}

- (void)blitOldTilesIntoNewTiles:(id)a3 completion:(id)a4
{
  v108 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v76 = a4;
  v78 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
  v80 = self;
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
            v14 = [v13 tiles];
            v15 = [v14 copy];
            [v78 setObject:v15 forKey:v10];

            v16 = [v13 tiles];
            [v16 removeAllObjects];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
    }

    while (v7);
  }

  v17 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  [(PKTiledView *)self _layerContentsScale];
  v19 = v18;
  v20 = [(PKTiledView *)self scrollView];
  [v20 zoomScale];
  v22 = v21;

  v23 = self;
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
        if (!v23)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v26 = 0.0;
        v27 = 0.0;
        if (!v23)
        {
LABEL_19:
          gestureView = 0;
          goto LABEL_16;
        }
      }

      gestureView = v23->_gestureView;
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
      v44 = [v78 objectForKey:*v24];
      v45 = [v44 objectEnumerator];

      v46 = 0;
      v47 = [v45 countByEnumeratingWithState:&v92 objects:v106 count:16];
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
              objc_enumerationMutation(v45);
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
                v58 = [(PKTiledView *)v80 scrollView];
                [v58 zoomScale];
                v46 = [(PKTiledView *)v80 tileForOffset:v57 inAttachment:0 offscreen:v55 tileZoomScale:v56, v59];

                if (v46)
                {
                  *(v46 + 86) = 1;
                  [*(v46 + 88) setHidden:1];
                  [*(v46 + 96) setHidden:1];
                }
              }

              v60 = [v17 objectForKey:v46];
              if (!v60)
              {
                v60 = [MEMORY[0x1E695DF70] array];
                [v17 setObject:v60 forKey:v46];
              }

              [v60 addObject:v50];
            }

            ++v49;
          }

          while (v47 != v49);
          v61 = [v45 countByEnumeratingWithState:&v92 objects:v106 count:16];
          v47 = v61;
        }

        while (v61);
      }

      v24 += 4;
      v23 = v80;
    }

    while (v24 != v77);
  }

  [MEMORY[0x1E6979518] commit];
  v62 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
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
        [v62 setObject:v69 forKey:v67];
      }

      v64 = [v63 countByEnumeratingWithState:&v88 objects:v105 count:16];
    }

    while (v64);
  }

  drawingTouchThatHitNothing = v80->_drawingTouchThatHitNothing;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __51__PKTiledView_blitOldTilesIntoNewTiles_completion___block_invoke;
  v81[3] = &unk_1E82D6BF0;
  v71 = v63;
  v82 = v71;
  v72 = v62;
  v83 = v72;
  v73 = v17;
  v84 = v73;
  v74 = v78;
  v85 = v74;
  v75 = v76;
  v86 = v80;
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

- (id)tileForOffset:(CGPoint)a3 inAttachment:(id)a4 offscreen:(BOOL)a5 tileZoomScale:(double)a6
{
  v7 = a5;
  y = a3.y;
  x = a3.x;
  v11 = a4;
  v12 = objc_opt_class();
  v13 = PKDynamicCast(v12, v11);
  if (v13)
  {
    [v13 setSixChannelBlending:{-[PKTiledView _sixChannelBlendingIsActive](self, "_sixChannelBlendingIsActive")}];
  }

  [(PKTiledView *)self _layerContentsScale];
  v15 = v14;
  if (v11)
  {
    [v11 drawingTransform];
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
    if (v11)
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
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  [v11 drawingTransform];
LABEL_11:
  v20 = [(PKRendererTileProperties *)v18 initWithLevel:gestureView offset:&v72 drawingTransform:[(PKTiledView *)self _sixChannelBlendingIsActive] sixChannelMode:[(PKTiledView *)self sixChannelBlendingRendersTransparent] transparentBlending:[(PKTiledView *)self isExtendedDynamicRangeRenderingActive] extendedDynamicRange:x, y];
  v21 = [v13 tiles];
  v71 = [v21 objectForKeyedSubscript:v20];

  v22 = [v13 offscreenTiles];
  v23 = [v22 objectForKeyedSubscript:v20];

  v24 = [v13 purgedTiles];
  v25 = [v24 objectForKeyedSubscript:v20];

  v26 = [v13 purgedTiles];
  [v26 removeObjectForKey:v20];
  v27 = v15 * a6 * sqrt(v16 * v16 + v17 * v17);

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
  if (v7)
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
          v40 = [v13 offscreenTiles];
LABEL_46:
          v69 = v40;
          if (v30)
          {
            *(v30 + 19) = v27;
            atomic_store(*&v27, v30 + 1);
            [*(v30 + 11) setContentsScale:v27];
            [*(v30 + 12) setContentsScale:v27];
          }

          [v40 setObject:v30 forKeyedSubscript:v20];
          if (v30 && *(v30 + 82) == 1)
          {
            v41 = [v11 tileContainerView];
            v42 = [v41 layer];
            v43 = [(PKRendererTile *)v30 tileMultiplyLayer];
            [v42 addSublayer:v43];
          }

          v44 = [v11 tileContainerView];
          v45 = [v44 layer];
          v46 = [(PKRendererTile *)v30 tileLayer];
          [v45 addSublayer:v46];

          if ([(PKTiledView *)self showDebugOutlines])
          {
            v47 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:dbl_1C801C310[((x + y) & 1) == 0]];
            v48 = [v47 CGColor];
            v49 = [(PKRendererTile *)v30 tileLayer];
            [v49 setBackgroundColor:v48];

            v50 = objc_alloc_init(MEMORY[0x1E6979508]);
            v51 = [(PKTiledView *)self scrollView];
            [v51 zoomScale];
            v53 = v52;
            v54 = [(PKTiledView *)self scrollView];
            [v54 zoomScale];
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

            v60 = [MEMORY[0x1E69DC888] blackColor];
            [v50 setForegroundColor:{objc_msgSend(v60, "CGColor")}];

            v61 = [(PKTiledView *)self scrollView];
            [v61 zoomScale];
            [v50 setFontSize:14.0 / v62];

            v63 = [(PKTiledView *)self scrollView];
            [v63 zoomScale];
            [v50 setContentsScale:v64 + v64];

            v65 = [(PKRendererTile *)v30 tileLayer];
            [v65 addSublayer:v50];
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
        if (v7)
        {
          v37 = 0.0;
        }

        *(v35 + 20) = v37;
        v38 = v37;
        *&v37 = v38;
        [v35[11] setOpacity:v37];
        *&v39 = v38;
        [v36[12] setOpacity:v39];
        *(v36 + 86) = v7;
        [v36[11] setHidden:v7];
        [v36[12] setHidden:v7];
        if (v7)
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

        if (v11)
        {
          [v11 drawingTransform];
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v72 = 0u;
        }

        v36 = [(PKRendererTile *)v68 initWithLevel:v67 offset:&v72 drawingTransform:[(PKTiledView *)self _sixChannelBlendingIsActive] contentsScale:[(PKTiledView *)self sixChannelBlendingRendersTransparent] sixChannelMode:[(PKTiledView *)self isExtendedDynamicRangeRenderingActive] transparentBlending:x wantsExtendedDynamicRangeContent:y, v27];
        if (v7)
        {
LABEL_37:
          v30 = v36;
          goto LABEL_38;
        }
      }

      v40 = [v13 tiles];
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

- (id)generateTile:(CGPoint)a3 inAttachment:(id)a4 rendering:(BOOL)a5 offscreen:(BOOL)a6 overrideAdditionalStrokes:(id)a7
{
  v8 = a6;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v14 = a7;
  if (!self || *&self->_tileLevel == 0.0)
  {
    v15 = 0;
    goto LABEL_30;
  }

  v16 = [(PKTiledView *)self tileForOffset:v13 inAttachment:v8 offscreen:x tileZoomScale:y];
  v15 = 0;
  if (v16 && a5)
  {
    v17 = [v13 drawing];
    v18 = [v17 strokes];

    v19 = objc_opt_class();
    v20 = PKDynamicCast(v19, v13);
    v21 = v20;
    if (!v20)
    {
      v23 = v16;
LABEL_28:

      v15 = v16;
      goto LABEL_29;
    }

    v51 = v18;
    v52 = v20;
    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = [v20 additionalStrokes];
    }

    v24 = v22;
    v25 = [(PKDrawing *)self->_dirtyDrawing uuid];
    v26 = [v13 drawing];
    v27 = [v26 uuid];
    v28 = [v25 isEqual:v27];
    if (v24)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v14 || !v29 || ![v24 isEqualToArray:self->_cachedVisibleStrokesWithAdditionalStrokesForDirtyDrawing])
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
        v65 = self;
        v66 = v13;
        v36 = _Block_copy(aBlock);
      }

      else
      {
        v36 = 0;
      }

      v50 = [(PKDrawing *)self->_dirtyDrawing uuid];
      v37 = [(PKDrawing *)self->_dirtyDrawing version];
      v48 = [v24 copy];
      ++v16[18];
      v38 = [(PKTiledView *)self tileController];
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
      v57 = v14;
      v58 = self;
      v42 = v48;
      v59 = v42;
      v43 = v50;
      v60 = v43;
      v44 = v37;
      v61 = v44;
      [(PKTileController *)v38 renderStrokes:v51 additionalStrokes:v41 intoTile:v39 completionBlock:v53];

      v45 = v39;
      v18 = v51;
      v21 = v52;
      goto LABEL_28;
    }

    cachedDrawingVersionForAdditionalStrokes = self->_cachedDrawingVersionForAdditionalStrokes;
    v31 = [v13 drawing];
    v47 = v24;
    v32 = [v31 uuid];
    if ([(PKDrawingVersion *)cachedDrawingVersionForAdditionalStrokes isEqual:v32])
    {
      didScrollBlock = self->_didScrollBlock;
      v34 = [v13 drawing];
      v35 = [v34 version];
      if ([didScrollBlock isEqual:v35])
      {
        cachedDrawingUUIDForAdditionalStrokes = self->_cachedDrawingUUIDForAdditionalStrokes;

        if (!cachedDrawingUUIDForAdditionalStrokes)
        {
          v24 = v47;
          goto LABEL_24;
        }

        v32 = v51;
        v31 = v47;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKTiledView *)self selectionController];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 160);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(PKTiledView *)self selectionController];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 152);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(PKTiledView *)self rulerView];
  if (v11)
  {
    [v3 addObject:v11];
  }

  if (([v7 isHidden] & 1) == 0)
  {
    [v3 addObject:v7];
  }

  if (v12)
  {
    [v3 addObject:v12];
  }

  v13 = [v3 copy];

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
  v5 = [(PKTileController *)v4 drawing];
  obj = [v5 uuid];

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
  v11 = [(PKTiledView *)self canvasView];
  v12 = [v11 _isCombiningStrokes];

  if (v12)
  {
    v13 = [(PKTiledView *)self canvasView];
    [v13 _finishCombiningStrokesIfNecessary];
  }

  [(PKTiledView *)self _updateRemoteEffect];
}

- (void)setSelectedStrokeIds:(id)a3 selectionType:(int64_t)a4 forAttachment:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(PKTiledView *)self _attachmentForUUID:a5];
  if (v9)
  {
    v21 = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v8;
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
          v16 = [v9 drawing];
          v17 = [v16 _strokeForIdentifier:v15];

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
      v20 = [v9 drawing];
      [(PKSelectionController *)&tileController->super.isa selectStrokes:v10 forSelectionType:v21 inDrawing:v20];
    }

    else if (tileController)
    {
      [(PKSelectionController *)self->_tileController clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }
  }
}

- (id)selectedStrokeIdsForAttachment:(id)a3
{
  v4 = a3;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v6 = tileController;
  v7 = [(PKTileController *)v6 drawing];
  v8 = [v7 uuid];
  v9 = [v8 isEqual:v4];

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
  v4 = [(PKTileController *)v3 strokeImage];

  return v4;
}

- (void)transformingSelectionBegan
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = *&tileController[2]._contentZoomScale;
  }

  v4 = tileController;
  v5 = [(PKTileController *)v4 drawing];
  v6 = [v5 uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:v6];

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

- (void)transformingSelectionChanged:(CGAffineTransform *)a3
{
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  v6 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v6;
  v7[2] = *&a3->tx;
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

- (void)setSelectionHidden:(BOOL)a3
{
  v3 = a3;
  tileController = self->_tileController;
  if (tileController)
  {
    tileController = tileController[2]._completionHandlers;
  }

  v5 = tileController;
  [(PKTileController *)v5 setHidden:v3];
}

- (BOOL)hitSelectionAt:(CGPoint)a3
{
  tileController = self->_tileController;
  if (!tileController)
  {
    v8 = 0;
    goto LABEL_5;
  }

  y = a3.y;
  x = a3.x;
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

- (void)_selectionRefreshWithChangeToDrawings:(id)a3 overrideAdditionalStrokes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __90__PKTiledView__selectionRefreshWithChangeToDrawings_overrideAdditionalStrokes_completion___block_invoke;
  v18 = &unk_1E82D67F0;
  v11 = v8;
  v19 = v11;
  v20 = self;
  v12 = v9;
  v21 = v12;
  v13 = v10;
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

- (void)_updateAttachmentHeightIfNecessaryForDrawing:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(PKTiledView *)self _attachmentForUUID:v4];

  if (v5 && [(PKTiledView *)self _updateHeightOfAttachmentIfNecessary:v5])
  {
    [(PKTiledView *)self _handleDrawingDidChangeForAttachment:v5];
  }
}

- (void)commitSelectionIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKTiledView *)self selectionController];
  v6 = v5;
  if (v5)
  {
    if (*(v5 + 128))
    {

      goto LABEL_5;
    }

    v7 = [*(v5 + 144) isCurrentlyAddingSpace];

    if (v7)
    {
LABEL_5:
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v8 = [(PKTiledView *)self selectionController];
        [(PKSelectionController *)v8 clearSelectionIfNecessaryWithCompletion:v4];
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__PKTiledView_commitSelectionIfNecessaryWithCompletion___block_invoke;
        v9[3] = &unk_1E82D6D58;
        v9[4] = self;
        v10 = v4;
        dispatch_sync(MEMORY[0x1E69E96A0], v9);
      }

      goto LABEL_10;
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_10:
}

void __56__PKTiledView_commitSelectionIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  [(PKSelectionController *)v2 clearSelectionIfNecessaryWithCompletion:?];
}

- (CGPoint)pointInStrokeSpace:(CGPoint)a3 inDrawing:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:a4];
  v4 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)a3
{
  v6 = [a4 uuid];
  v7 = [(PKTiledView *)self _attachmentForUUID:v6];

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

- (CGAffineTransform)transformFromStrokeSpaceToViewInAttachment:(SEL)a3
{
  v9 = a4;
  v6 = [(PKTiledView *)self canvasView];
  v7 = v6;
  if (v6)
  {
    [v6 _strokeTransformForAttachment:v9];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGRect)attachmentBoundsForDrawing:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(PKTiledView *)self _attachmentForUUID:v4];

  v6 = [v5 viewRep];
  [v6 bounds];
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

- (CGRect)boundsForDrawing:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(PKTiledView *)self _attachmentForUUID:v5];

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  v8 = [v6 tileContainerView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 tileContainerView];
  [WeakRetained convertRect:v17 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  v22 = [(PKTiledView *)self scrollView];
  [v22 contentOffset];
  v24 = v23;
  v26 = v25;

  [v4 bounds];
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

- (CGRect)visibleOnscreenBoundsForDrawing:(id)a3
{
  v4 = a3;
  [(PKTiledView *)self bounds];
  [(PKTiledView *)self visibleOnscreenBoundsForDrawing:v4 slack:v5, v6];
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

- (CGRect)visibleOnscreenBoundsForDrawing:(id)a3 slack:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(PKTiledView *)self scrollView];
  [v8 bounds];
  v57 = CGRectInset(v56, -width, -height);
  x = v57.origin.x;
  y = v57.origin.y;
  v11 = v57.size.width;
  v12 = v57.size.height;

  v13 = [v7 uuid];
  v14 = [(PKTiledView *)self _attachmentForUUID:v13];

  v15 = [(PKTiledView *)self scrollView];
  v16 = [v14 viewRep];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v14 viewRep];
  [v15 convertRect:v25 fromView:{v18, v20, v22, v24}];
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
    v38 = [(PKTiledView *)self scrollView];
    [(PKTiledView *)self convertRect:v38 fromView:v34, v35, v36, v37];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    memset(&v55[1], 0, sizeof(CGAffineTransform));
    [(PKTiledView *)self transformFromViewToStrokeSpaceInDrawing:v7];
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

- (BOOL)_isValidDropPointForStrokes:(CGPoint)a3 didInsertNewAttachment:(BOOL *)a4
{
  y = a3.y;
  x = a3.x;
  *a4 = 0;
  v8 = [(PKTiledView *)self hitAttachment:?];

  if (v8)
  {
    return 1;
  }

  v10 = [(PKTiledView *)self scrollView];
  [v10 convertPoint:self fromView:{x, y}];
  v11 = [(PKTiledView *)self insertAttachmentIfInBlankSpace:?];

  if (!v11)
  {
    return 0;
  }

  result = 1;
  *a4 = 1;
  return result;
}

- (CGAffineTransform)strokeTransform
{
  v4 = [(PKTiledView *)self canvasView];
  v6 = v4;
  if (v4)
  {
    [v4 strokeTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)_setAdditionalStrokes:(id)a3 inDrawing:(id)a4 invalidateTiles:(BOOL)a5 forceOffscreen:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
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
    v27 = [v12 count];
    *buf = 134218240;
    v41 = v27;
    v42 = 1024;
    v43 = v8;
    _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "setAdditionalStrokes %ld forceOffscreen:%d", buf, 0x12u);
  }

  if (v8)
  {
    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:v9];
    v39 = v13;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v22 = [v13 uuid];
    v37 = v22;
    v38 = v12;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke;
    v31[3] = &unk_1E82D6C68;
    v31[4] = self;
    v32 = v13;
    v33 = v12;
    v35 = v16;
    v34 = v14;
    [(PKTiledView *)self _selectionRefreshWithChangeToDrawings:v21 overrideAdditionalStrokes:v23 completion:v31];
  }

  else
  {
    objc_storeStrong(&self->_dirtyDrawing, a4);
    v24 = [v13 uuid];
    v25 = [(PKTiledView *)self attachmentForUUID:v24];
    [v25 setAdditionalStrokes:v12];

    [(PKTiledView *)self cancelTileGenerationInvalidateTiles:v9];
    v36 = v13;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __89__PKTiledView__setAdditionalStrokes_inDrawing_invalidateTiles_forceOffscreen_completion___block_invoke_482;
    v28[3] = &unk_1E82D6CE0;
    v30 = v16;
    v29 = v14;
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
  v4 = [(PKTiledView *)self attachmentViews];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 additionalStrokes];
        v11 = v10 == 0;

        if (!v11)
        {
          [v9 setAdditionalStrokes:0];
          v6 = 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setInsertSpaceEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)v4 setInsertSpaceEnabled:v3];
}

- (BOOL)insertSpaceEnabled
{
  v2 = [(PKTiledView *)self selectionController];
  if (v2)
  {
    v3 = v2[114];
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
  v3 = [v2 isGenerationModelAvailable];

  return v3;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(PKTiledView *)self selectionController];
  if (v8 && (v9 = v8[16], v8, v9))
  {
    v10 = [(PKTiledView *)self selectionController];
    v11 = [(PKSelectionController *)v10 editMenuActionsForConfiguration:v6];
    [v7 addObjectsFromArray:v11];
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
    v17 = v6;
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

    v28 = [(PKTiledView *)self selectionController];
    [v27 sourcePoint];
    v64 = [(PKSelectionController *)v28 _drawingForSelectionRect:v30 + -60.0, 120.0, 120.0];

    v31 = [v64 strokes];
    v32 = [v31 count];

    v33 = [(PKTiledView *)self selectionController];
    LOBYTE(v26) = [(PKSelectionController *)v33 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    if ((v32 != 0) | v26 & 1)
    {
      [v7 addObject:v63];
    }

    v34 = [(PKTiledView *)self selectionController];
    v35 = [(PKSelectionController *)v34 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    v36 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v75[0] = @"com.apple.drawing";
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    v38 = [v36 containsPasteboardTypes:v37];

    if ((!v12 & (v38 | v35)) == 1)
    {
      [v7 addObject:v62];
    }

    v39 = [(PKTiledView *)self selectionController];
    v40 = [(PKSelectionController *)v39 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

    if ((v32 != 0) | v40 & 1)
    {
      v41 = [(PKTiledView *)self selectionController];
      if (v41)
      {
        v42 = v41[114];

        if (v42)
        {
          [v7 addObject:v61];
        }
      }
    }

    v43 = [MEMORY[0x1E695E000] standardUserDefaults];
    v44 = [v43 BOOLForKey:@"internalSettings.drawing.enableCopyAllHandwritingTranscription"];

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

      v50 = [(PKTiledView *)self selectionController];
      LOBYTE(v48) = [(PKSelectionController *)v50 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

      if ((v32 != 0) | v48 & 1)
      {
        [v7 addObject:v49];
      }
    }

    v51 = [MEMORY[0x1E695E000] standardUserDefaults];
    v52 = [v51 BOOLForKey:@"internalSettings.drawing.enableCopyAll"];

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

      v58 = [(PKTiledView *)self selectionController];
      LOBYTE(v56) = [(PKSelectionController *)v58 _selectionInteractionCanPerformAction:self withSender:0 inAttachment:?];

      if ((v32 != 0) | v56 & 1)
      {
        [v7 addObject:v57];
      }
    }
  }

  v59 = [MEMORY[0x1E69DCC60] menuWithChildren:v7];

  return v59;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(PKTiledView *)self selectionController];
  if (v6 && (v7 = v6[16], v6, v7))
  {
    v8 = [(PKTiledView *)self selectionController];
    v9 = [(PKSelectionController *)v8 editMenuTargetRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(PKTiledView *)self selectionController];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 152);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [(PKTiledView *)self convertRect:v19 fromView:v9, v11, v13, v15];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    [v5 sourcePoint];
    v21 = v28;
    [v5 sourcePoint];
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

- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKTiledView_editMenuInteraction_willPresentMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D6388;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKTiledView_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D6388;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (PKController)drawingController
{
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 _drawingController];

  return v3;
}

- (void)_createHoverControllerIfNecessary
{
  if (!*&self->_lastContentOffset.x && !self->_editMenuVisible)
  {
    v3 = [[PKHoverController alloc] initWithDelegate:self view:?];
    x = self->_lastContentOffset.x;
    *&self->_lastContentOffset.x = v3;

    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    v6 = [v5 maximumFramesPerSecond];

    if (v6 >= 101)
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
  v3 = [(PKTiledView *)self hoverController];
  v4 = [(PKHoverController *)v3 hoverGestureRecognizer];

  return v4;
}

- (BOOL)rulerHostWantsSharedRuler
{
  v3 = [(PKTiledView *)self rulerHostingDelegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PKTiledView *)self rulerHostingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(PKTiledView *)self rulerHostingDelegate];
  v8 = [v7 rulerHostWantsSharedRuler];

  return v8;
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

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [(PKTileController *)self->_tileController dropInteraction:a3 sessionDidUpdate:a4];

  return v4;
}

- (void)replaceInkTexture:(id)a3 image:(CGImage *)a4
{
  v8 = a3;
  v6 = [(PKTiledView *)self canvasView];
  v7 = [v6 _rendererController];
  [(PKMetalRendererController *)v7 replaceInkTexture:v8 image:a4];
}

- (double)_latestLatency
{
  v2 = [(PKTiledView *)self canvasView];
  v3 = [v2 _rendererController];
  v4 = [(PKMetalRendererController *)v3 _latestLatency];

  return v4;
}

- (void)_pauseHoverPreviewForTimeInterval:(double)a3
{
  [(PKTiledView *)self _endHoverToolPreview];
  [(PKHoverController *)*&self->_lastContentOffset.x reset];
  self->_hoverPreviewStartTimestamp = a3;
}

- (BOOL)toolShadowShouldBeActive
{
  if (!self->_sixChannelBlendingRendersTransparent || !*&self->_lastContentOffset.x)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilenotes"];

  if ((v4 & 1) != 0 || (+[PKHoverSettings sharedSettings](PKHoverSettings, "sharedSettings"), v2 = objc_claimAutoreleasedReturnValue(), [v2 toolShadowActiveOutsideNotes]))
  {
    v5 = +[PKHoverSettings sharedSettings];
    if ([v5 toolShadowActive])
    {

      v6 = 1;
      if (v4)
      {
        return v6;
      }
    }

    else
    {
      v7 = +[PKHoverSettings sharedSettings];
      v6 = [v7 toolShadowActiveOnOldPencils];

      if (v4)
      {
        return v6;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)paletteViewHoverView:(id)a3
{
  v4 = [(PKTiledView *)self window];
  v5 = [v4 windowScene];
  v6 = [PKPencilObserverInteraction interactionForScene:v5];

  if (v6)
  {
    v7 = v6[8];
    if (v7)
    {
      if (*(v7 + 56) == 1)
      {
        v8 = [v6 view];
LABEL_12:
        v17 = v8;
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
      v8 = self;
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

- (CGPoint)paletteViewHoverLocation:(id)a3
{
  v4 = [(PKTiledView *)self window];
  v5 = [v4 windowScene];
  v6 = [PKPencilObserverInteraction interactionForScene:v5];

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

- (void)paletteViewPencilDidTap:(id)a3
{
  v3 = [(PKTiledView *)self canvasView];
  [v3 _finishCombiningStrokesIfNecessary];
}

- ($FF38E1E694A259ECA75E65D4243A6BF6)convertInputPoint:(SEL)a3 toAttachment:(id *)a4
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:a5];
  a4->var0 = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, a4->var0.var0.y), v12, a4->var0.var0.x));
  a4->var9 = -1;
  a4->var1 = 1.0;
  v8 = *&a4->var13;
  *&retstr->var11 = *&a4->var11;
  *&retstr->var13 = v8;
  retstr->var15 = a4->var15;
  v9 = *&a4->var5;
  *&retstr->var3 = *&a4->var3;
  *&retstr->var5 = v9;
  v10 = *&a4->var9;
  *&retstr->var7 = *&a4->var7;
  *&retstr->var9 = v10;
  v11 = *&a4->var1;
  retstr->var0 = a4->var0;
  *&retstr->var1 = v11;
  return result;
}

- (id)attachmentForHoverPreviewAt:(id *)a3
{
  v5 = [(PKTiledView *)self ink];
  v6 = [v5 _isHandwritingInk];

  v7 = [(PKTiledView *)self hitAttachment:v6 ^ 1u includeStandinAttachment:v6 ^ 1u expandBottomAttachment:a3->var0.var0.x, a3->var0.var0.y];
  v8 = +[PKDrawing drawingClassForPaper];
  if (v7)
  {
    v9 = v6 ^ 1;
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

- (BOOL)hoverController:(id)a3 shouldBeActiveAt:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(PKTiledView *)self rulerEnabled])
  {
    v7 = [(PKTiledView *)self rulerController];
    v8 = v7;
    v9 = v7 ? *(v7 + 56) : 0;
    v10 = v9;
    [v10 convertPoint:self fromView:{x, y}];
    v12 = v11;
    v14 = v13;

    v15 = [(PKTiledView *)self rulerController];
    v16 = v15;
    v17 = v15 ? *(v15 + 56) : 0;
    v18 = v17;
    v19 = [v18 hitTest:0 withEvent:{v12, v14}];

    if (v19)
    {
      return 0;
    }
  }

  v20 = [(PKTiledView *)self drawingGestureRecognizer];
  v21 = [v20 isEnabled];

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if ((*&self->_tiledViewFlags & 0x40) == 0)
  {
    return 1;
  }

  v23 = [(PKTiledView *)self delegate];
  v22 = [v23 canvasView:self hoverShouldBeActiveAt:{x, y}];

  return v22;
}

- (void)hoverController:(id)a3 intentionalHoverWithDuration:(double)a4
{
  v7 = a3;
  if (self && *(&self->_editMenuVisible + 2))
  {
    [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
    WeakRetained = objc_loadWeakRetained(&self->_analyticsSession);
    if (WeakRetained)
    {
      WeakRetained[12] = WeakRetained[12] + a4;
    }
  }
}

- (void)hoverController:(id)a3 didBegin:(id *)a4
{
  [(PKTiledView *)self _beginAnalyticsSessionIfNecessary];
  v6 = [(PKTiledView *)self window];
  v7 = [PKToolPicker existingPaletteViewForWindow:v6];

  if (v7)
  {
    [v7 setHoverDelegate:self];
  }

  v8 = CACurrentMediaTime();
  v9 = [(PKTiledView *)self canvasView];
  v10 = [v9 isHidden];
  if (self)
  {
    v11 = 0.1;
    if (!v10)
    {
      v11 = 0.0;
    }

    self->_extraHoverPreviewDelay = v8 + v11 + self->_hoverPreviewStartTimestamp;

    self->_hoverPreviewStartTimestamp = 0.0;
  }

  else
  {
  }

  v12 = [(PKTiledView *)self canvasView];
  if ([v12 isHidden])
  {
    v13 = [(PKTiledView *)self canvasView];
    [v13 latestRenderTimestamp];
    v15 = v14;
    v16 = +[PKHoverSettings sharedSettings];
    [v16 inactivityTimeInterval];
    v18 = v15 + v17;

    if (v8 <= v18)
    {
      goto LABEL_12;
    }

    v12 = +[PKHoverSettings sharedSettings];
    [v12 extraHoverPreviewDelay];
    if (self)
    {
      self->_extraHoverPreviewDelay = v19 + self->_extraHoverPreviewDelay;
    }
  }

LABEL_12:
  if ([(PKTiledView *)self shouldStartToolPreviewWhenHovering])
  {
    v20 = *&a4->var13;
    v30[6] = *&a4->var11;
    v30[7] = v20;
    var15 = a4->var15;
    v21 = *&a4->var5;
    v30[2] = *&a4->var3;
    v30[3] = v21;
    v22 = *&a4->var9;
    v30[4] = *&a4->var7;
    v30[5] = v22;
    v23 = *&a4->var1;
    v30[0] = a4->var0;
    v30[1] = v23;
    v24 = [(PKTiledView *)self attachmentForHoverPreviewAt:v30];
    [(PKTiledView *)self _finishCombiningStrokesIfNecessaryForAttachment:v24];
    if (v24)
    {
      v25 = [(PKTiledView *)self standInAttachmentView];

      if (v24 != v25)
      {
        v26 = [(PKTiledView *)self viewToMakeFirstResponderWhenHoveringOverAttachment:v24];
        if (v26)
        {
          v27 = [(PKTiledView *)self _activeToolPicker];
          if ([v27 isVisible])
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __40__PKTiledView_hoverController_didBegin___block_invoke;
            v28[3] = &unk_1E82D6388;
            v29 = v26;
            [v27 _performWithVisibilityUpdatesEnabled:0 block:v28];
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
    v8 = [(PKTiledView *)self window];
    v3 = [v8 windowScene];
    v4 = [PKPencilShadowView shadowViewForScene:v3];
    v5 = [(PKTiledView *)self ink];
    [v4 setInk:v5];

    v9 = [(PKTiledView *)self window];
    v6 = [v9 windowScene];
    v7 = [PKPencilShadowView shadowViewForScene:v6];
    [v7 keepVisibleInTiledView:self];
  }
}

- (void)_updatePencilShadowView:(id *)a3
{
  if ([(PKTiledView *)self toolShadowShouldBeActive])
  {
    a3->var7 = [PKInputPointUtility correctedTimestampFromOldTimestampIfNecessary:?];
    [(PKTiledView *)self _keepPencilShadowVisible];
    v5 = +[PKHoverSettings sharedSettings];
    if ([v5 toolShadowLocationWorkaround])
    {
    }

    else
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 bundleIdentifier];
      v8 = [v7 isEqualToString:@"com.apple.freeform"];

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    v9 = [(PKTiledView *)self window];
    v10 = [v9 windowScene];
    v11 = [PKPencilObserverInteraction interactionForScene:v10];
    v12 = [v11 view];

    [(UIView *)self PK_convertPoint:v12 toCoordinateSpace:a3->var0.var0.x, a3->var0.var0.y];
    v14 = v13;
    v16 = v15;
    v17 = *&a3->var11;
    v36 = *&a3->var9;
    v37 = v17;
    v38 = *&a3->var13;
    var15 = a3->var15;
    v18 = *&a3->var3;
    v32 = *&a3->var1;
    v33 = v18;
    v19 = *&a3->var7;
    v34 = *&a3->var5;
    v35 = v19;
    v20 = [(PKTiledView *)self window];
    v21 = [v20 windowScene];
    v22 = [PKPencilObserverInteraction interactionForScene:v21];
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

- (void)hoverController:(id)a3 didUpdate:(id *)a4
{
  if (![(PKTiledView *)self _scrollViewIsScrollingOrZoomingOrResizing])
  {
    if (!self || !*(&self->_editMenuVisible + 2) || (-[PKTiledView canvasView](self, "canvasView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _hasStrokeTransformChanged], v8, !v9))
    {
      v10 = *&a4->var13;
      v143 = *&a4->var11;
      v144 = v10;
      var15 = a4->var15;
      v11 = *&a4->var5;
      v139 = *&a4->var3;
      v140 = v11;
      v12 = *&a4->var9;
      v141 = *&a4->var7;
      v142 = v12;
      v13 = *&a4->var1;
      var0 = a4->var0;
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
        v20 = [v14 drawing];
        v21 = [v20 uuid];
        v22 = [(PKPencilStatisticsManager *)v19 isEqual:v21];

        if ((v22 & 1) == 0)
        {
          v23 = [(PKTiledView *)self hoverController];
          [(PKHoverController *)v23 reset];

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

      v24 = *&a4->var13;
      v143 = *&a4->var11;
      v144 = v24;
      var15 = a4->var15;
      v25 = *&a4->var5;
      v139 = *&a4->var3;
      v140 = v25;
      v26 = *&a4->var9;
      v141 = *&a4->var7;
      v142 = v26;
      v27 = *&a4->var1;
      var0 = a4->var0;
      v138 = v27;
      [(PKTiledView *)self _updatePencilShadowView:&var0];
      kdebug_trace();
      v28 = +[PKHoverSettings sharedSettings];
      v29 = [v28 toolPreviewShouldWaitForHoverAndHold];

      if ((v29 & 1) == 0)
      {
        v30 = *&a4->var13;
        v143 = *&a4->var11;
        v144 = v30;
        var15 = a4->var15;
        v31 = *&a4->var5;
        v139 = *&a4->var3;
        v140 = v31;
        v32 = *&a4->var9;
        v141 = *&a4->var7;
        v142 = v32;
        v33 = *&a4->var1;
        var0 = a4->var0;
        v138 = v33;
        [(PKTiledView *)self startToolPreviewIfPossibleForInputPoint:&var0];
      }

      v34 = [(PKTiledView *)self hoverController];
      v35 = +[PKHoverSettings sharedSettings];
      [v35 toolPreviewMaxZDistance];
      v36 = *&a4->var13;
      v143 = *&a4->var11;
      v144 = v36;
      var15 = a4->var15;
      v37 = *&a4->var5;
      v139 = *&a4->var3;
      v140 = v37;
      v38 = *&a4->var9;
      v141 = *&a4->var7;
      v142 = v38;
      v39 = *&a4->var1;
      var0 = a4->var0;
      v138 = v39;
      v41 = [(PKHoverController *)v34 adjustedZLimitFromLimit:v40 inputPoint:?];

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
      var6 = a4->var6;
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

      v56 = [(PKTiledView *)self canvasView];
      v57 = [v56 _rendererController];
      [(PKMetalRendererController *)v57 setPreviewStrokeAlpha:v48];

      var15 = 0;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      var0 = 0u;
      v138 = 0u;
      v58 = *&a4->var13;
      v134 = *&a4->var11;
      v135 = v58;
      v136 = a4->var15;
      v59 = *&a4->var5;
      v130 = *&a4->var3;
      v131 = v59;
      v60 = *&a4->var9;
      v132 = *&a4->var7;
      v133 = v60;
      v61 = *&a4->var1;
      *location = a4->var0;
      v129 = v61;
      [(PKTiledView *)self convertInputPoint:location toAttachment:v14];
      if (!*(&self->_editMenuVisible + 1))
      {
        goto LABEL_44;
      }

      v62 = [(PKTiledView *)self canvasView];
      if ([v62 isDrawing])
      {

        goto LABEL_44;
      }

      v63 = [(PKTiledView *)self canvasView];
      v64 = [v63 _isLiveAnimating];

      if (v64)
      {
LABEL_44:
        if (*(&self->_editMenuVisible + 2) || *(&self->_editMenuVisible + 3))
        {
          v65 = [(PKTiledView *)self hoverController];
          v66 = +[PKHoverSettings sharedSettings];
          [v66 toolPreviewMaxZDistance];
          v68 = v67;
          v69 = +[PKHoverSettings sharedSettings];
          [v69 deactivateExtraDistance];
          v71 = *&a4->var13;
          v134 = *&a4->var11;
          v135 = v71;
          v136 = a4->var15;
          v72 = *&a4->var5;
          v130 = *&a4->var3;
          v131 = v72;
          v73 = *&a4->var9;
          v132 = *&a4->var7;
          v133 = v73;
          v74 = *&a4->var1;
          *location = a4->var0;
          v129 = v74;
          v75 = [(PKHoverController *)v65 adjustedZLimitFromLimit:v68 + v70 inputPoint:?];

          if (a4->var6 > v75)
          {
            v76 = +[PKHoverSettings sharedSettings];
            v77 = [v76 toolPreviewShouldWaitForHoverAndHold];

            if (v77)
            {
              v78 = [(PKTiledView *)self hoverController];
              [(PKHoverController *)v78 resetHoverHold];
            }

            [(PKTiledView *)self _endHoverToolPreview];
            goto LABEL_71;
          }

          if (!*(&self->_editMenuVisible + 2))
          {
            if (*(&self->_editMenuVisible + 3))
            {
              v88 = *&a4->var13;
              v134 = *&a4->var11;
              v135 = v88;
              v136 = a4->var15;
              v89 = *&a4->var5;
              v130 = *&a4->var3;
              v131 = v89;
              v90 = *&a4->var9;
              v132 = *&a4->var7;
              v133 = v90;
              v91 = *&a4->var1;
              *location = a4->var0;
              v129 = v91;
              [(PKTiledView *)self _updateSymbolPreviewViewForTouch:location attachment:v14 alpha:v48];
            }

            goto LABEL_71;
          }

          v79 = [(PKTiledView *)self canvasView];
          v134 = v143;
          v135 = v144;
          v136 = var15;
          v130 = v139;
          v131 = v140;
          v132 = v141;
          v133 = v142;
          *location = var0;
          v129 = v138;
          [v79 _previewDrawingMoved:location tiledViewLocation:{a4->var0.var0.x, a4->var0.var0.y}];

          v80 = [(PKTiledView *)self ink];
          v81 = [v80 identifier];
          LODWORD(v79) = [v81 isEqual:@"com.apple.ink.pen"];

          v82 = [(PKTiledView *)self ink];
          v83 = [v82 identifier];
          LODWORD(v81) = [v83 isEqual:@"com.apple.ink.marker"];

          v84 = [(PKTiledView *)self ink];
          v85 = [v84 identifier];
          v86 = [v85 isEqual:@"com.apple.ink.pencil"];

          if ((v79 | v81 | v86))
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
                v101 = [(PKTiledView *)self canvasView];
                v102 = [v101 _rendererController];
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
                [(PKMetalRendererController *)v102 addBlockToCallAfterPresenting:v117];

                objc_destroyWeak(&v118);
              }

              objc_destroyWeak(location);
              goto LABEL_71;
            }

            v96 = [(PKTiledView *)self toolShadowShouldBeActive];

            if (v96)
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
      v93 = [v92 identifier];
      if (([v93 isEqual:@"com.apple.ink.objectEraser"] & 1) == 0)
      {
        v94 = [(PKTiledView *)self ink];
        v95 = [v94 identifier];
        if (([v95 isEqualToString:@"com.apple.ink.lasso"] & 1) == 0)
        {
          v116 = [(PKTiledView *)self ink];
          if (([v116 _isHandwritingInk] & 1) == 0)
          {
            v115 = [(PKTiledView *)self ink];
            v114 = [v115 identifier];
            v113 = [v114 isEqual:@"com.apple.ink.generationtool"];

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

              v105 = [(PKTiledView *)self canvasView];
              v106 = [v105 _rendererController];
              [(PKMetalRendererController *)v106 setPreviewStrokeMaxPoints:v104];

              v107 = [(PKTiledView *)self window];
              v108 = [PKToolPicker existingPaletteViewForWindow:v107];

              v109 = [v108 isPalettePresentingPopover];
              v110 = [(PKTiledView *)self canvasView];
              v134 = v143;
              v135 = v144;
              v136 = var15;
              v130 = v139;
              v131 = v140;
              v132 = v141;
              v133 = v142;
              *location = var0;
              v129 = v138;
              [v110 _previewDrawingBegan:location tiledViewLocation:v109 disableDetachedRendering:{a4->var0.var0.x, a4->var0.var0.y}];

              *(&self->_editMenuVisible + 2) = 1;
              v111 = [v14 drawing];
              v112 = [v111 uuid];
              [(PKTiledView *)self setCurrentPreviewDrawingUUID:v112];

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

  v6 = [(PKTiledView *)self canvasView];
  [v6 _finishCombiningStrokesIfNecessary];

  v7 = *&self->_lastContentOffset.x;

  [(PKHoverController *)v7 reset];
}

- (void)setCurrentPreviewDrawingUUID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 888), a2);
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

- (void)_updateSymbolPreviewViewForTouch:(id *)a3 attachment:(id)a4 alpha:(double)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v65 = a4;
  v66 = self;
  v8 = [(PKTiledView *)self ink];
  v9 = [v8 _isEraserInk];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(PKTiledView *)self ink];
    v12 = [v11 _isHandwritingInk];

    if (v12)
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

  [(PKToolPreviewView *)&self->_currentPreviewDrawingUUID->super.isa prepareWithFrame:v10 mode:a3->var0.var0.x - v15 * 0.5, a3->var0.var0.y - v15 * 0.5, v15, v15];
  [(NSUUID *)self->_currentPreviewDrawingUUID setAlpha:a5];
  v16 = [(PKTiledView *)self ink];
  v17 = [v16 _isEraserInk];

  if (v17)
  {
    x = a3->var0.var0.x;
    y = a3->var0.var0.y;
    memset(&v78, 0, sizeof(v78));
    [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:v65];
    v20 = [v65 strokeSpatialCache];
    v21 = v20;
    if (v20 && *(v20 + 8) == 1)
    {
      v22 = [v65 strokeSpatialCache];
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 24);
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

    v25 = [v65 drawing];
    newValue = [v25 strokesIntersectedByPoint:v63 prevPoint:y * 0.0 + 0.0 * x + 0.0 onscreenVisibleStrokes:{y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0, y * 0.0 + 0.0 * x + 0.0}];

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
        p_isa = &v66->super.super.super.isa;
        if (CGRectIsNull(v84))
        {
          [(NSOrderedSet *)v66->_eraseOrLassoPreviewStrokes removeFromSuperview];
          objc_storeStrong(&v66->_eraseOrLassoPreviewStrokes, 0);
        }

        else
        {
          if (!v66->_eraseOrLassoPreviewStrokes)
          {
            v56 = objc_alloc_init(PKStrokePreviewView);
            objc_storeStrong(&v66->_eraseOrLassoPreviewStrokes, v56);

            p_isa = &v66->super.super.super.isa;
            [(NSOrderedSet *)v66->_eraseOrLassoPreviewStrokes setTranslatesAutoresizingMaskIntoConstraints:0];
            [p_isa addSubview:p_isa[107]];
            [(NSOrderedSet *)v66->_eraseOrLassoPreviewStrokes setOpaque:0];
            [(NSOrderedSet *)v66->_eraseOrLassoPreviewStrokes setAlpha:1.0];
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
          v62 = [v47 array];
          [(PKStrokePreviewView *)v61 prepareWithFrame:v62 strokeBounds:v57 strokes:v58, v59, v60, v43, v44, width, height];
        }
      }

      else
      {
        v30 = [v65 drawing];
        objc_storeStrong(&self->_toolPreviewView, v30);

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
              v37 = [v36 color];
              [v37 alphaComponent];
              v39 = [v37 colorWithAlphaComponent:v29 * v38];
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

        v42 = [v65 drawing];
        [(PKTiledView *)v66 _setAdditionalStrokes:v31 inDrawing:v42 invalidateTiles:1];
      }
    }
  }
}

- (void)_updateToolPreviewIndicatorInputPoint:(id *)a3
{
  if (self->_currentPreviewDrawingUUID)
  {
    v5 = [(PKTiledView *)self ink];
    v6 = [v5 identifier];
    v7 = [v6 isEqual:@"com.apple.ink.pen"];

    v8 = [(PKTiledView *)self ink];
    v9 = [v8 identifier];
    v10 = [v9 isEqual:@"com.apple.ink.marker"];

    v11 = [(PKTiledView *)self ink];
    v12 = [v11 identifier];
    v13 = [v12 isEqual:@"com.apple.ink.pencil"];

    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(&__s1, 0, sizeof(__s1));
    v14 = [(PKTiledView *)self canvasView];
    v15 = [v14 _drawingController];
    v16 = [(PKController *)v15 inputController];
    v17 = v16;
    if (v16)
    {
      [v16 _latestStrokePoint];
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
      v18 = [(PKTiledView *)self canvasView];
      v19 = [v18 _drawingController];
      v20 = [(PKController *)v19 inputController];
      v21 = v20;
      v22 = *&a3->var9;
      v23 = *&a3->var13;
      v60 = *&a3->var11;
      v61 = v23;
      v24 = *&a3->var1;
      v25 = *&a3->var5;
      v56 = *&a3->var3;
      v57 = v25;
      v26 = *&a3->var5;
      v27 = *&a3->var9;
      v58 = *&a3->var7;
      v59 = v27;
      v28 = *&a3->var1;
      v55[0] = a3->var0;
      v55[1] = v28;
      v29 = *&a3->var13;
      v53[6] = v60;
      v53[7] = v29;
      v53[2] = v56;
      v53[3] = v26;
      v53[4] = v58;
      v53[5] = v22;
      var15 = a3->var15;
      v54 = a3->var15;
      v53[0] = v55[0];
      v53[1] = v24;
      if (v20)
      {
        [v20 outputCurrentStrokePoint:v55 lastPoint:v53];
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
    v30 = [(PKTiledView *)self canvasView];
    v31 = v30;
    if (v30)
    {
      [v30 strokeTransform];
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
      v45 = [v35 CGPath];
      currentPreviewDrawingUUID = self->_currentPreviewDrawingUUID;
      if (currentPreviewDrawingUUID)
      {
        [(objc_class *)currentPreviewDrawingUUID[52].super.isa setPath:v45];
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
      v39 = [v38 behavior];
      v40 = [v39 particleDescriptor];

      [v40 particleSize];
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

- (void)hoverControllerDidEnd:(id)a3
{
  [(PKTiledView *)self _reenableScrollViewPanGestureIfNecessary];
  [(PKTiledView *)self _endHoverToolPreview];
  v4 = +[PKHoverSettings sharedSettings];
  v5 = [v4 toolShadowLocationWorkaround];

  if (v5)
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

- (void)hoverController:(id)a3 holdGestureMeanTouch:(id *)a4 latestTouch:(id *)a5
{
  v7 = a3;
  if (!self || !*(&self->_editMenuVisible + 2) && !*(&self->_editMenuVisible + 1) && !*(&self->_editMenuVisible + 3))
  {
    [(PKTiledView *)self convertToShapeAtLocation:a5->var0.var0.x, a5->var0.var0.y];
    v8 = +[PKHoverSettings sharedSettings];
    v9 = [v8 toolPreviewShouldWaitForHoverAndHold];

    if (v9)
    {
      v10 = *&a5->var13;
      v14[6] = *&a5->var11;
      v14[7] = v10;
      var15 = a5->var15;
      v11 = *&a5->var5;
      v14[2] = *&a5->var3;
      v14[3] = v11;
      v12 = *&a5->var9;
      v14[4] = *&a5->var7;
      v14[5] = v12;
      v13 = *&a5->var1;
      v14[0] = a5->var0;
      v14[1] = v13;
      [(PKTiledView *)self startToolPreviewIfPossibleForInputPoint:v14];
    }
  }
}

- (void)hoverControllerHoldGestureEnded:(id)a3
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

  v6 = [(PKTiledView *)self hoverController];
  [v6 hideLabel];
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
    v3 = 0;
  }

  else
  {
    v4 = +[PKHoverSettings sharedSettings];
    if ([v4 toolPreviewActive])
    {
      v3 = 1;
    }

    else
    {
      v5 = +[PKHoverSettings sharedSettings];
      v3 = [v5 toolIndicatorActive];
    }
  }

  return v3;
}

- (void)startToolPreviewIfPossibleForInputPoint:(id *)a3
{
  if (!self || !*(&self->_editMenuVisible + 1) && !*(&self->_editMenuVisible + 2) && !*(&self->_editMenuVisible + 3))
  {
    v5 = [(PKTiledView *)self canvasView];
    if ([v5 _isCombiningStrokes])
    {
    }

    else
    {
      v6 = [(PKTiledView *)self canvasView];
      v7 = [v6 isHidden];

      if ((v7 & 1) == 0)
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
      v10 = [(PKTiledView *)self hoverController];
      v11 = +[PKHoverSettings sharedSettings];
      [v11 toolPreviewMaxZDistance];
      v12 = *&a3->var13;
      v21[6] = *&a3->var11;
      v21[7] = v12;
      var15 = a3->var15;
      v13 = *&a3->var5;
      v21[2] = *&a3->var3;
      v21[3] = v13;
      v14 = *&a3->var9;
      v21[4] = *&a3->var7;
      v21[5] = v14;
      v15 = *&a3->var1;
      v21[0] = a3->var0;
      v21[1] = v15;
      v17 = [(PKHoverController *)v10 adjustedZLimitFromLimit:v21 inputPoint:v16];

      if (a3->var6 <= v17)
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
        v19 = [v18 toolPreviewShouldWaitForHoverAndHold];

        if (v19)
        {
          v20 = [(PKTiledView *)self hoverController];
          [(PKHoverController *)v20 resetHoverHold];
        }
      }
    }
  }
}

- (void)convertToShapeAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[PKHoverSettings sharedSettings];
  if ([v6 snapToShapeActive])
  {
  }

  else
  {
    v7 = [(PKTiledView *)self ink];
    v8 = [v7 _isStrokeGeneratingInk];

    if (v8)
    {
      return;
    }
  }

  v9 = [(PKTiledView *)self _hitAttachment:0 includeStandinAttachment:0 expandBottomAttachment:x, y];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 drawing];
    [(PKTiledView *)self transformFromViewToStrokeSpaceInAttachment:v10];
    v12 = [v10 strokeSpatialCache];
    v13 = v12;
    if (v12 && *(v12 + 8) == 1)
    {
      v14 = [v10 strokeSpatialCache];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 24);
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

    v18 = [v11 strokesIntersectedByPoint:v17 prevPoint:*&v43 + y * *&v42 + *location * x onscreenVisibleStrokes:{*(&v43 + 1) + y * *(&v42 + 1) + *&location[1] * x, *&v43 + y * *&v42 + *location * x + 1.0, *(&v43 + 1) + y * *(&v42 + 1) + *&location[1] * x + 1.0}];
    if ([v18 count] != 1)
    {
      goto LABEL_28;
    }

    v19 = [v18 firstObject];
    if (![v19 _shapeType])
    {
      v20 = [v19 _strokeData];
      if (![v20 hasValidPointTimestampData])
      {
LABEL_26:

        goto LABEL_27;
      }

      v21 = [v19 _strokeMask];

      if (!v21)
      {
        v22 = objc_alloc_init(PKShapeDrawingController);
        v20 = v22;
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
        v24 = [(PKShapeDrawingController *)v20 shapeFromStroke:v19 inputScale:location averageInputPoint:0 allowedShapeTypes:v23];
        v25 = v24;
        if (v24 && [v24 type] != 6 && objc_msgSend(v25, "type") != 7)
        {
          objc_initWeak(location, self);
          v33 = MEMORY[0x1E69E9820];
          v34 = 3221225472;
          v35 = __40__PKTiledView_convertToShapeAtLocation___block_invoke;
          v36 = &unk_1E82D6CB8;
          objc_copyWeak(&v40, location);
          v37 = v11;
          v38 = v19;
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

- (void)_findSelectionTranscriptionWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(PKTiledView *)self selectionController];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 152);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 _findTranscriptionWithCompletion:v8];
}

- (id)_accessibilityUserTestingChildren
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v16.receiver = self;
  v16.super_class = PKTiledView;
  v4 = [(PKTiledView *)&v16 _accessibilityUserTestingChildren];
  v5 = [v3 arrayWithArray:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(PKTiledView *)self attachmentViews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) _accessibilityUserTestingChildren];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_getAllHandwritingTranscription:(id)a3
{
  v5 = a3;
  v4 = [(PKTiledView *)self selectionController];
  [PKSelectionController getAllHandwritingTranscription:v4];
}

- (void)_copyAll:(id)a3
{
  v5 = a3;
  v4 = [(PKTiledView *)self selectionController];
  [(PKSelectionController *)v4 copyAll:v5];
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

- (void)updateTilesForVisibleRectRendering:(uint64_t)a3 offscreen:(char)a4 overrideAdditionalStrokes:
{
  while (2)
  {
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 5;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3uLL:
                v70 = v8[7];
                v71 = *(a2 - 1);
                if (v70 >= v8[3])
                {
                  if (v71 >= v70)
                  {
                    return;
                  }

                  v68 = (v8 + 4);
                  v69 = (a2 - 4);
                  goto LABEL_174;
                }

                if (v71 < v70)
                {
                  goto LABEL_113;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v8, (v8 + 4));
                if (*(a2 - 1) >= v8[7])
                {
                  return;
                }

                v72 = (v8 + 4);
LABEL_114:
                v73 = (a2 - 4);
LABEL_115:

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v72, v73);
                return;
              case 4uLL:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(v8, (v8 + 4), (v8 + 8), (a2 - 4));
                return;
              case 5uLL:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(v8, (v8 + 4), (v8 + 8), (v8 + 12));
                if (*(a2 - 1) >= v8[15])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((v8 + 12), (a2 - 4));
                if (v8[15] >= v8[11])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((v8 + 8), (v8 + 12));
                if (v8[11] >= v8[7])
                {
                  return;
                }

                v68 = (v8 + 4);
                v69 = (v8 + 8);
LABEL_174:
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v68, v69);
                if (v8[7] >= v8[3])
                {
                  return;
                }

                v73 = (v8 + 4);
                v72 = v8;
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
              if (*(a2 - 1) >= v8[3])
              {
                return;
              }

LABEL_113:
              v72 = v8;
              goto LABEL_114;
            }
          }

          if (v9 <= 23)
          {
            v74 = v8 + 4;
            v76 = v8 == a2 || v74 == a2;
            if (a4)
            {
              if (!v76)
              {
                v77 = 0;
                v78 = v8;
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
                      v83 = v8 + v82;
                      v84 = *(v8 + v82);
                      *v83 = 0;
                      v85 = *(v8 + v82 + 32);
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
                        v86 = v8 + v82 + 32;
                        goto LABEL_136;
                      }
                    }

                    v86 = v8;
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
                if (*(a1 + 56) < *(a1 + 24))
                {
                  v133 = *v74;
                  *v74 = 0.0;
                  v148 = *(a1 + 40);
                  v134 = *(a1 + 56);
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
                a1 = v132;
              }

              while (v132 + 4 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v88 = v10 >> 1;
              v89 = v10 >> 1;
              do
              {
                v90 = v89;
                if (v88 >= v89)
                {
                  v91 = (2 * v89) | 1;
                  v92 = a1 + 32 * v91;
                  if (2 * v90 + 2 < v9 && *(v92 + 24) < *(v92 + 56))
                  {
                    v92 += 32;
                    v91 = 2 * v90 + 2;
                  }

                  v93 = a1 + 32 * v90;
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
                      v92 = a1 + 32 * v91;
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
                v104 = *a1;
                *a1 = 0;
                v147 = *(a1 + 8);
                v150 = *(a1 + 24);
                v105 = a1;
                do
                {
                  v106 = v105 + 32 * v103;
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
                  v112 = *v105;
                  *v105 = v111;

                  v113 = *(v107 + 8);
                  *(v105 + 24) = *(v107 + 24);
                  *(v105 + 8) = v113;
                  v105 = v107;
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
                  v119 = (v107 - a1 + 32) >> 5;
                  v120 = v119 < 2;
                  v121 = v119 - 2;
                  if (!v120)
                  {
                    v122 = v121 >> 1;
                    v123 = a1 + 32 * (v121 >> 1);
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
                        v123 = a1 + 32 * v122;
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

          v11 = &v8[4 * (v9 >> 1)];
          v12 = *(a2 - 1);
          if (v9 >= 0x81)
          {
            v13 = *(v11 + 24);
            if (v13 >= *(a1 + 24))
            {
              if (v12 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1 + 32 * (v9 >> 1), (a2 - 4)), *(v11 + 24) >= *(a1 + 24)))
              {
LABEL_26:
                v19 = *(v11 - 8);
                v20 = *(a2 - 5);
                if (v19 >= *(a1 + 56))
                {
                  if (v20 >= v19 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11 - 32, (a2 - 8)), *(v11 - 8) >= *(a1 + 56)))
                  {
LABEL_39:
                    v23 = *(v11 + 56);
                    v24 = *(a2 - 9);
                    if (v23 >= *(a1 + 88))
                    {
                      if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v11 + 32, (a2 - 12)), *(v11 + 56) >= *(a1 + 88)))
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
                            v31 = *a1;
                            *a1 = 0;
                            v142 = *(a1 + 8);
                            v149 = *(a1 + 24);
                            v32 = *v11;
                            *v11 = 0;
                            v33 = *a1;
                            *a1 = v32;

                            v34 = *(v11 + 8);
                            *(a1 + 24) = *(v11 + 24);
                            *(a1 + 8) = v34;
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

                      v25 = a1 + 64;
                      v26 = v11 + 32;
                    }

                    else
                    {
                      v25 = a1 + 64;
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

                  v21 = a1 + 32;
                  v22 = v11 - 32;
                }

                else
                {
                  v21 = a1 + 32;
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

              v14 = a1;
              v15 = a1 + 32 * (v9 >> 1);
            }

            else
            {
              v14 = a1;
              if (v12 >= v13)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, a1 + 32 * (v9 >> 1));
                if (*(a2 - 1) >= *(v11 + 24))
                {
                  goto LABEL_26;
                }

                v14 = a1 + 32 * (v9 >> 1);
              }

              v15 = (a2 - 4);
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v14, v15);
            goto LABEL_26;
          }

          v16 = *(a1 + 24);
          if (v16 < *(v11 + 24))
          {
            v17 = a1 + 32 * (v9 >> 1);
            if (v12 >= v16)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v17, a1);
              if (*(a2 - 1) >= *(a1 + 24))
              {
                goto LABEL_58;
              }

              v17 = a1;
            }

            v18 = (a2 - 4);
            goto LABEL_34;
          }

          if (v12 < v16)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, (a2 - 4));
            if (*(a1 + 24) < *(v11 + 24))
            {
              v17 = a1 + 32 * (v9 >> 1);
              v18 = a1;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v17, v18);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v36 = *(a1 + 24);
          if (*(a1 - 8) < v36)
          {
            goto LABEL_61;
          }

          v54 = *a1;
          *a1 = 0;
          v144 = *(a1 + 8);
          if (v36 >= *(a2 - 1))
          {
            v57 = (a1 + 32);
            do
            {
              v8 = v57;
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
            v55 = a1;
            do
            {
              v8 = (v55 + 32);
              v56 = *(v55 + 56);
              v55 += 32;
            }

            while (v36 >= v56);
          }

          v59 = a2;
          if (v8 < a2)
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

          while (v8 < v59)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v8, v59);
            do
            {
              v62 = v8[7];
              v8 += 4;
            }

            while (v36 >= v62);
            do
            {
              v63 = *(v59 - 8);
              v59 -= 32;
            }

            while (v36 < v63);
          }

          if (v8 - 4 != a1)
          {
            v64 = *(v8 - 4);
            *(v8 - 4) = 0.0;
            v65 = *a1;
            *a1 = v64;

            v66 = *(v8 - 3);
            *(a1 + 24) = *(v8 - 1);
            *(a1 + 8) = v66;
          }

          v67 = *(v8 - 4);
          *(v8 - 4) = v54;

          a4 = 0;
          *(v8 - 3) = v144;
          *(v8 - 1) = v36;
        }

        v36 = *(a1 + 24);
LABEL_61:
        v37 = 0;
        v38 = *a1;
        *a1 = 0;
        v143 = *(a1 + 8);
        do
        {
          v39 = *(a1 + v37 + 56);
          v37 += 32;
        }

        while (v39 < v36);
        v40 = (a1 + v37);
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
          v8 = v40;
        }

        else
        {
          v46 = v42;
          v8 = v40;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v8, v46);
            do
            {
              v47 = v8[7];
              v8 += 4;
            }

            while (v47 < v36);
            do
            {
              v48 = *(v46 - 8);
              v46 -= 32;
            }

            while (v48 >= v36);
          }

          while (v8 < v46);
        }

        if (v8 - 4 != a1)
        {
          v49 = *(v8 - 4);
          *(v8 - 4) = 0.0;
          v50 = *a1;
          *a1 = v49;

          v51 = *(v8 - 3);
          *(a1 + 24) = *(v8 - 1);
          *(a1 + 8) = v51;
        }

        v52 = *(v8 - 4);
        *(v8 - 4) = v38;

        *(v8 - 3) = v143;
        *(v8 - 1) = v36;
        if (v40 >= v42)
        {
          break;
        }

LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,false>(a1, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }

      v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *>(a1, v8 - 4);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *>(v8, a2))
      {
        break;
      }

      if (!v53)
      {
        goto LABEL_84;
      }
    }

    a2 = v8 - 4;
    if (!v53)
    {
      continue;
    }

    break;
  }
}

- (void)setupRefineAnimationFrom:(id)a3 to:(id)a4 inDrawing:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PKTiledView *)self refineAnimationController];
  [v14 setupRefineAnimationFrom:v13 to:v12 in:v11 completionHandler:v10];
}

- (void)setupRefineAnimationFrom:(id)a3 to:(id)a4 inDrawing:(id)a5 alternateContainerView:(id)a6 alternateDrawingTransform:(CGAffineTransform *)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(PKTiledView *)self refineAnimationController];
  v20 = *&a7->c;
  v21[0] = *&a7->a;
  v21[1] = v20;
  v21[2] = *&a7->tx;
  [v19 setupRefineAnimationFrom:v18 to:v17 in:v16 alternateContainerView:v15 alternateDrawingTransform:v21 completionHandler:v14];
}

- (void)setupStrokeInAnimationTo:(id)a3 inDrawing:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKTiledView *)self refineAnimationController];
  [v11 setupStrokeInAnimationTo:v10 in:v9 completionHandler:v8];
}

- (void)setupStrokeInAnimationTo:(id)a3 inDrawing:(id)a4 alternateContainerView:(id)a5 alternateDrawingTransform:(CGAffineTransform *)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKTiledView *)self refineAnimationController];
  v17 = *&a6->c;
  v18[0] = *&a6->a;
  v18[1] = v17;
  v18[2] = *&a6->tx;
  [v16 setupStrokeInAnimationTo:v15 in:v14 alternateContainerView:v13 alternateDrawingTransform:v18 completionHandler:v12];
}

- (void)startRefineAnimationWithDuration:(double)a3
{
  v4 = [(PKTiledView *)self refineAnimationController];
  [v4 startRefineAnimationWithDuration:a3];
}

- (void)stopRefineAnimation
{
  v2 = [(PKTiledView *)self refineAnimationController];
  [v2 stopRefineAnimation];
}

@end