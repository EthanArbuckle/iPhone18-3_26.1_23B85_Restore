@interface CRLInteractiveCanvasController
+ (BOOL)selectorIsActionMethod:(SEL)a3;
+ (double)smallRepOutsetForHitTestingWithPrecision:(BOOL)a3;
+ (double)zoomAnimationDefaultDuration;
- ($114667933B9B2D05530DD42EBD1EDB26)p_scrollingInformationForSelectionPath:(SEL)a3 allowZoom:(id)a4;
- ($BCFEF2EB514CD33A670EC6D7ECA04AF1)p_collaboratorHUDPositionForSelectionPath:(SEL)a3 collaboratorPresence:(id)a4 allowScroll:(id)a5 hudSize:(BOOL)a6;
- (BOOL)anyConnectorKnobVisible;
- (BOOL)canInsertFromImagePlayground;
- (BOOL)canPerformInteractiveAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canZoomToCurrentSelection;
- (BOOL)currentSelectionPathContainsInfo:(id)a3;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)handleMultipleTapAtPoint:(CGPoint)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4 inputType:(int64_t)a5;
- (BOOL)hasMediaReplacer;
- (BOOL)hasSelectedInfosInMultipleContainers;
- (BOOL)hasSelection;
- (BOOL)i_areLayersInvalidForDecorator:(id)a3;
- (BOOL)i_currentlySuppressingLayerUpdates;
- (BOOL)i_isRepContentPlatformView:(id)a3;
- (BOOL)i_shouldAttemptToPreserveContentOffsetAfterFixFrame;
- (BOOL)i_shouldShowCollaboratorCursorForLayout:(id)a3;
- (BOOL)isCanvasBackgroundAlignmentSnappingEnabled;
- (BOOL)isInDynamicOperation;
- (BOOL)p_areAnyCollaboratorsPresent;
- (BOOL)p_collaboratorOverlaysNeedUpdateForScroll;
- (BOOL)p_currentSelectionIsOnscreen;
- (BOOL)p_setNeedsDisplayIfNeededForAncestorRepOf:(id)a3 inRect:(CGRect)a4;
- (BOOL)p_shouldSuppressMultiselectResizeInfo;
- (BOOL)p_shouldTransformCurrentSelectionAsSingleEntity;
- (BOOL)respondsToSelector:(SEL)a3 withSender:(id)a4;
- (BOOL)scrollViewShouldOptOutOfUIScrollViewContentOffsetAnimationForScrollView:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)sendViewportRequestMessageTo:(id)a3;
- (BOOL)shouldAllowKeyCommands;
- (BOOL)shouldEnableToolbarDoneButton;
- (BOOL)shouldLayoutTilingLayer:(id)a3;
- (BOOL)shouldResizeCanvasToScrollView;
- (BOOL)shouldShowInstructionalTextForLayout:(id)a3;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldSupportedDynamicOperationsEnqueueCommandsInRealTime;
- (BOOL)shouldSuppressSelectionKnobsForRep:(id)a3;
- (BOOL)shouldZoomOnSelectionChange;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)wantsToSuppressMultiselectionForPenTool;
- (CALayer)overlayLayer;
- (CALayer)repContainerLayer;
- (CGColor)canvasEdgeBackgroundColor;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4;
- (CGPoint)contentOffset;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3;
- (CGPoint)p_computeClampedUnscaledContentOffsetWithTargetRect:(CGRect)a3 selectionContextRectWhenZooming:(CGRect)a4 viewScale:(double)a5 unscaledOutset:(double)dy;
- (CGPoint)p_contentOffsetToScrollRectToVisible:(CGRect)a3 shouldCenterVertically:(BOOL)a4 forceCenteringVertically:(BOOL)a5 forceCenteringHorizontally:(BOOL)a6;
- (CGPoint)smartZoomCenterForNoSelection;
- (CGRect)boundingRectForActiveGuidesForPoint:(CGPoint)a3;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3;
- (CGRect)growUnscaledCanvasLayerRect:(CGRect)a3 withViewScale:(double)a4;
- (CGRect)i_visibleBoundsRectForHitTestingCanvasView;
- (CGRect)outsetSelectionRect:(CGRect)a3;
- (CGRect)p_calculateVisibleBoundsRectForTiling;
- (CGRect)p_calculateVisibleUnscaledRect;
- (CGRect)p_convertNeedsDisplayRect:(CGRect)a3 fromRep:(id)a4 toRepForDrawing:(id)a5;
- (CGRect)p_safeAreaLayoutGuideLayoutFrame;
- (CGRect)p_scaledRectToScrollToForSelectionPath:(id)a3 shouldCenterVertically:(BOOL)a4;
- (CGRect)p_unobscuredScrollViewFrameIgnoringObscuringRectangles;
- (CGRect)p_unosbcuredFrameOfView:(id)a3 includingObscuringRectangles:(BOOL)a4;
- (CGRect)p_visibleBoundsRectForTiling;
- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)a3 respectObscuredFrame:(BOOL)a4 respectSafeArea:(BOOL)a5 respectObscuringRects:(BOOL)a6 respectAreaPastScollViewLimit:(BOOL)a7;
- (CGRect)p_visibleUnscaledRect;
- (CGRect)rectInRootForScrollingToSelectionPath:(id)a3 onLayout:(id)a4 allowingZooming:(BOOL)a5;
- (CGRect)unobscuredFrameOfView:(id)a3;
- (CGRect)unobscuredScrollViewFrame;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (CGRect)visibleBoundsRect;
- (CGRect)visibleBoundsRectForTiling;
- (CGRect)visibleBoundsRectIgnoringLimit;
- (CGRect)visibleBoundsRectUsingSizeOfEnclosingScrollView;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3;
- (CGRect)visibleScaledRectForCanvasUI;
- (CGRect)visibleUnscaledRect;
- (CGRect)visibleUnscaledRectIgnoringLimit;
- (CGSize)canvasScrollingOutset;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3;
- (CGSize)defaultMinimumUnscaledCanvasSize;
- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)a3 originalViewScale:(double)a4;
- (CGSize)p_calculatedSizeOfScrollViewEnclosingCanvas;
- (CGSize)p_sizeOfScrollViewEnclosingCanvasForVisibleCanvasCalculations;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (CRLCanvasContainerRep)topLevelContainerRepForEditing;
- (CRLCanvasEditor)canvasEditor;
- (CRLCanvasGuideController)guideController;
- (CRLCanvasLayer)canvasLayer;
- (CRLCanvasLayerHosting)layerHost;
- (CRLCanvasRep)repForTextEditingInspecting;
- (CRLCanvasView)canvasView;
- (CRLChangeNotifier)changeNotifier;
- (CRLCollaboratorCursorRendererDelegate)collaboratorCursorDelegate;
- (CRLConnectionLineAbstractLayout)highestZOrderConnectionLineLayoutAcrossBoard;
- (CRLContainerInfo)topLevelContainerInfoForEditing;
- (CRLDynamicOperationController)dynamicOperationController;
- (CRLEditorController)editorController;
- (CRLGestureDispatcher)gestureDispatcher;
- (CRLInteractiveCanvasController)init;
- (CRLInteractiveCanvasControllerDelegate)delegate;
- (CRLInteractiveCanvasLayerHelper)i_interactiveCanvasLayerHelper;
- (CRLMediaReplacer)mediaReplacer;
- (CRLSelectionModelTranslator)selectionModelTranslator;
- (CRLTrackerManipulatorCoordinator)tmCoordinator;
- (NSArray)i_decorators;
- (NSArray)topLevelRepsForHitTesting;
- (NSSet)containersForSelection;
- (NSSet)infosForCurrentSelectionPath;
- (UITraitCollection)currentTraitCollection;
- (_TtC8Freeform16CRLContainerItem)containerForTopLevelInsertion;
- (_TtC8Freeform20CRLCommandController)commandController;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController;
- (_TtC8Freeform8CRLBoard)board;
- (double)contentsScale;
- (double)currentViewScale;
- (double)defaultTargetPointSize;
- (double)fitWidthViewScale;
- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)a3 greater:(BOOL)a4 isFastPinch:(BOOL)a5;
- (double)i_viewScaleForProposedViewScale:(double)a3 originalViewScale:(double)a4 isFastPinch:(BOOL)a5;
- (double)p_safeAreaMargin;
- (double)p_targetViewScaleForUnscaledRect:(CGRect)a3;
- (double)targetPointSize;
- (double)viewScale;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)additionalChildInfosForLayout:(id)a3;
- (id)additionalDependentLayoutsForBoardItem:(id)a3;
- (id)additionalVisibleInfosForCanvas:(id)a3;
- (id)adjustReceivedCollaboratorCursorSelectionPath:(id)a3;
- (id)adjustedSelectionPathForRenderingCursorPath:(id)a3;
- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4;
- (id)containerRenderablesForRep:(id)a3;
- (id)customRotateTrackerForCurrentSelection;
- (id)hitKnobAtPoint:(CGPoint)a3 inputType:(int64_t)a4 returningRep:(id *)a5;
- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5;
- (id)hitRepIgnoringClickThrough:(CGPoint)a3;
- (id)hitRepsAtPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)i_collaboratorPresenceSelectingLayout:(id)a3;
- (id)i_descriptionForViewScale:(double)a3 zoomMethod:(int64_t)a4;
- (id)infoForSelectionPath:(id)a3;
- (id)infosForSelectionPath:(id)a3;
- (id)layoutForInfo:(id)a3;
- (id)layoutForInfoNearestVisibleRect:(id)a3;
- (id)layoutForInfoNearestVisibleRect:(id)a3 intersectingSelectionPath:(id)a4;
- (id)layoutForSelectionPath:(id)a3;
- (id)layoutsForInfo:(id)a3;
- (id)layoutsForInfo:(id)a3 intersectingSelectionPath:(id)a4;
- (id)layoutsForSelectionPath:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)mostVisibleParentForFreehandDrawingLayouts;
- (id)newCanvasEditor;
- (id)numberFormatter;
- (id)p_infosByAddingAllAncestors:(id)a3;
- (id)p_layoutForShowingCollaboratorCursorHUDAtSelectionPath:(id)a3;
- (id)p_repForLayout:(id)a3 createIfNeeded:(BOOL)a4;
- (id)p_repsForCollaboratorCursorSelectionPath:(id)a3;
- (id)p_repsForStorage:(id)a3;
- (id)p_sourceInteractionSourceForNotficiationUserInfo;
- (id)p_topCollaboratorPresenceOfPresences:(id)a3;
- (id)parentForFreehandDrawingLayoutsAtPoint:(CGPoint)a3;
- (id)renderableForRep:(id)a3;
- (id)repDragTrackerDelegateForRep:(id)a3;
- (id)repForInfo:(id)a3 createIfNeeded:(BOOL)a4;
- (id)repsForInfo:(id)a3;
- (id)repsToHide;
- (id)selectionPathForSearchReference:(id)a3;
- (id)topLevelZOrderedSiblingsOfInfos:(id)a3;
- (id)unitFormatter;
- (id)unitStringForAngle:(double)a3;
- (id)unitStringForAngle:(double)a3 andLength:(double)a4;
- (id)unitStringForAngle:(double)a3 shouldNormalize:(BOOL)a4;
- (id)unitStringForNumber:(double)a3;
- (id)unitStringForPoint:(CGPoint)a3;
- (id)unitStringForSize:(CGSize)a3 forAccessibility:(BOOL)a4;
- (id)validatedLayoutForInfo:(id)a3;
- (int64_t)mathHintsMode;
- (void)addBackgroundRenderingObject:(id)a3;
- (void)addCollaboratorHUDController:(id)a3;
- (void)addCommonObservers;
- (void)addDecorator:(id)a3;
- (void)animateIntoConnectorMode;
- (void)animateToViewScale:(double)a3 contentOffset:(CGPoint)a4 duration:(double)a5 orientation:(int64_t)a6 completionHandler:(id)a7;
- (void)beginAnimations:(id)a3;
- (void)beginDynamicOperation;
- (void)beginFollowing:(id)a3 forHUDController:(id)a4;
- (void)beginPossiblyParallelInspectorDynamicOperation;
- (void)beginScrollingOperation;
- (void)canvas:(id)a3 createdRep:(id)a4;
- (void)canvasDidLayout:(id)a3;
- (void)canvasDidValidateLayouts:(id)a3;
- (void)canvasDidValidateLayoutsWithDependencies:(id)a3;
- (void)canvasLayoutInvalidated:(id)a3;
- (void)canvasWillUpdateRepsFromLayouts:(id)a3;
- (void)canvasWillValidateLayouts:(id)a3;
- (void)clearLayoutsForTopLevelContainerChange;
- (void)clipGuideToContainer:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (void)closeOverlays;
- (void)collaboratorCursorSelectionPathChangedFromSelectionPath:(id)a3 toSelectionPath:(id)a4 collaboratorPresence:(id)a5;
- (void)collapseAllExpandedCollaboratorHUDs;
- (void)commitAnimations;
- (void)contentInsetsDidChangeForScrollView:(id)a3;
- (void)copyEditabilityPropertiesFromInteractiveCanvasController:(id)a3;
- (void)dealloc;
- (void)didExitPreviewMode;
- (void)didProcessAllChanges;
- (void)discardRepForClassChange:(id)a3;
- (void)documentEditabilityDidChange;
- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)endDynamicOperation;
- (void)endEditingDiscardingEdits;
- (void)endEditingWithFlags:(unint64_t)a3;
- (void)endFollowing:(id)a3 forHUDController:(id)a4;
- (void)endPossiblyParallelInspectorDynamicOperation;
- (void)endScrollingOperation;
- (void)forLayoutNearestVisibleRectForInfosForSelectionPath:(id)a3 performBlock:(id)a4;
- (void)forwardInvocation:(id)a3;
- (void)growCanvasAsNeededToRestoreContentOffset:(CGPoint)a3;
- (void)growCanvasAsNeededToSetContentOffset:(CGPoint)a3 scrollOptions:(unint64_t)a4;
- (void)hideCollaboratorHUDForCollaborator:(id)a3;
- (void)i_acquireLockAndPerformAction:(id)a3;
- (void)i_beginSuppressingLayerUpdatesExceptForReps:(id)a3;
- (void)i_canvasContentsScaleDidChange;
- (void)i_canvasDidUpdateVisibleBounds;
- (void)i_canvasWideGamutValueDidChange;
- (void)i_canvasWillLayout:(id)a3;
- (void)i_drawRepWithReadLock:(id)a3 inContext:(CGContext *)a4 forLayer:(id)a5;
- (void)i_endSuppressingLayerUpdates;
- (void)i_invalidateSelectionHighlightLayers;
- (void)i_layout;
- (void)i_recordUserViewScale;
- (void)i_repNeedsDisplay:(id)a3;
- (void)i_repNeedsDisplay:(id)a3 inRect:(CGRect)a4;
- (void)i_selectionDidChange;
- (void)i_setNeedsDisplayIfNeededForAncestorRepOf:(id)a3;
- (void)i_textDidChange;
- (void)i_viewDidEndZoomingWithUserInfo:(id)a3;
- (void)i_viewDidZoomToViewScale:(double)a3 notify:(BOOL)a4;
- (void)i_viewScaleDidChange;
- (void)i_viewScrollDidChange;
- (void)i_viewScrollingEndedWithUserInfo:(id)a3;
- (void)i_viewWillBeginZooming;
- (void)invalidateCollaboratorHUDControllers;
- (void)invalidateLayersForDecorator:(id)a3;
- (void)layoutIfNeeded;
- (void)makeEditorPerformAction:(SEL)a3 withSender:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_beginCachingLayoutsForCollaboratorCursors;
- (void)p_beginObservingDocumentRoot;
- (void)p_beginZoomingOperation;
- (void)p_clearSelectionScrollingState;
- (void)p_collabParticipantsDidChange:(id)a3;
- (void)p_commonInit;
- (void)p_consumeRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry;
- (void)p_editorControllerDidChangeTextInputEditor:(id)a3;
- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)a3;
- (void)p_editorControllerSelectionPathDidChange:(id)a3;
- (void)p_endCachingLayoutsForCollaboratorCursors;
- (void)p_endObservingDocumentRootIfNeeded;
- (void)p_endZoomingOperation;
- (void)p_fadeInForZoomOperation;
- (void)p_fadeOutForZoomOperation;
- (void)p_notifyRepsForChangeFromSelectionPath:(id)a3 toSelectionPath:(id)a4;
- (void)p_notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4;
- (void)p_performBlockWithCachedLayoutsForCollaboratorCursors:(id)a3;
- (void)p_realTimeSessionNewParticipantDidJoin:(id)a3;
- (void)p_realTimeStateDidChange:(id)a3;
- (void)p_recursiveHitKnobAtPoint:(CGPoint)a3 inputType:(int64_t)a4 inRep:(id)a5 minDistance:(double *)a6 hitKnob:(id *)a7 hitRep:(id *)a8;
- (void)p_recursivelyAddRep:(id)a3 forStorage:(id)a4 toSet:(id)a5;
- (void)p_scrollToSelectionPath:(id)a3 scrollOptions:(unint64_t)a4;
- (void)p_scrollViewDidEndScrollingAnimation:(id)a3;
- (void)p_selectionDoneChangingWithFlags:(unint64_t)a3;
- (void)p_selectionPathDidChangeFromSelectionPath:(id)a3 toSelectionPath:(id)a4;
- (void)p_setCurrentlyScrolling:(BOOL)a3;
- (void)p_setTargetPointSize:(double)a3;
- (void)p_showCollaboratorHUDForCollaborator:(id)a3 withSelectionPath:(id)a4 allowScroll:(BOOL)a5 hudSize:(unint64_t)a6;
- (void)p_spellCheckerWordsDidChangeNotification:(id)a3;
- (void)p_spellCheckingStateChangedNotification:(id)a3;
- (void)p_teardownCanvasEditor;
- (void)p_textGesturesDidEndNotification:(id)a3;
- (void)p_textGesturesWillBeginNotification:(id)a3;
- (void)p_updateCanvasSizeFromLayouts;
- (void)p_updateInfosToDisplayIfNeeded;
- (void)p_updateUnobscuredFrame;
- (void)p_validateLayerSuppressionAPIAccess;
- (void)p_viewScrollingEnded;
- (void)performBlockOnMainThreadAfterLayoutIfNecessary:(id)a3;
- (void)performDiscreteFrameChangingOperationOnDrawables:(id)a3 withBlock:(id)a4;
- (void)positionDidUpdateForCollaboratorHUDController:(id)a3;
- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4;
- (void)presentError:(id)a3 completionHandler:(id)a4;
- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)recreateAllLayoutsAndReps;
- (void)removeAllCollaboratorHUDControllers;
- (void)removeBackgroundRenderingObject:(id)a3;
- (void)removeCollaboratorHUDController:(id)a3;
- (void)removeCommonObservers;
- (void)removeDecorator:(id)a3;
- (void)resumeEditing;
- (void)scrollCenteredOrZoomToUnscaledRect:(CGRect)a3 shouldAnimateScroll:(BOOL)a4;
- (void)scrollCurrentSelectionToVisibleWithOptions:(unint64_t)a3;
- (void)scrollRectToVisible:(CGRect)a3 scrollOptions:(unint64_t)a4;
- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)a3 scrollOptions:(unint64_t)a4;
- (void)scrollSearchReferenceToVisible:(id)a3 scrollOptions:(unint64_t)a4;
- (void)scrollToCollaborator:(id)a3 withSelectionPath:(id)a4;
- (void)scrollToCurrentSelectionPathAfterLayoutWithOptions:(unint64_t)a3;
- (void)scrollToSelectionPath:(id)a3 scrollOptions:(unint64_t)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)sendRealTimeEnterToPeersIfNecessary;
- (void)sendSelectionPathToPeersIfNecessary;
- (void)setContentOffset:(CGPoint)a3 scrollOptions:(unint64_t)a4;
- (void)setContentOffset:(CGPoint)a3 source:(id)a4 scrollOptions:(unint64_t)a5;
- (void)setDelegate:(id)a3;
- (void)setDocumentIsSharedReadOnly:(BOOL)a3;
- (void)setFreehandDrawingToolkit:(id)a3;
- (void)setInfosToDisplay:(id)a3;
- (void)setLayerHost:(id)a3;
- (void)setMathHintsMode:(int64_t)a3;
- (void)setOverlayLayerSuppressed:(BOOL)a3;
- (void)setPrimaryFindResultSearchReference:(id)a3;
- (void)setSearchReferencesToHighlight:(id)a3;
- (void)setSelectionHighlightColor:(id)a3;
- (void)setSelectionPath:(id)a3 withSelectionFlags:(unint64_t)a4;
- (void)setShouldSuppressFreehandContent:(BOOL)a3;
- (void)setShouldSuppressRendering:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldSuppressesCollaboratorHUD:(BOOL)a3;
- (void)setShowGrayOverlay:(BOOL)a3;
- (void)setShowInvisibleObjects:(BOOL)a3;
- (void)setTemporaryAdditionalBoardItemsToDisplay:(id)a3;
- (void)setTextInputResponder:(id)a3;
- (void)setTextResponderEditorTo:(id)a3 withFlags:(unint64_t)a4;
- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)a3;
- (void)setViewScale:(double)a3;
- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 animated:(BOOL)a5;
- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 source:(id)a6;
- (void)setupTextInputResponder;
- (void)tappedCanvasBackgroundAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (void)teardown;
- (void)teardownBackgroundRendering;
- (void)teardownCollaboratorCursorInfrastructureInvalidatingLayers:(BOOL)a3;
- (void)teardownTextInputResponder;
- (void)toggleSizeForCollaboratorHUDController:(id)a3;
- (void)translateGuide:(id)a3 toContainerRect:(CGRect)a4;
- (void)translateGuides:(id)a3 toContainerRect:(CGRect)a4;
- (void)unobscuredFrameDidChange;
- (void)updateCanvasDotGridVisibilityIfNeeded;
- (void)updateCanvasViewSubviewFrames;
- (void)updateCollaboratorHUDForBeginFollowingCollaborator:(id)a3;
- (void)updateCollaboratorHUDForStopFollowingCollaborator:(id)a3;
- (void)updateConnectorKnobVisibilityIfNeeded;
- (void)updateLayerTreeForInteractiveCanvas:(id)a3;
- (void)updateMultiselectResizeInfoIfNeeded;
- (void)updatePositionForCollaboratorHUDController:(id)a3;
- (void)updateRenderableForRep:(id)a3 usingBlock:(id)a4;
- (void)updateSelectionForInteractionWithRep:(id)a3 extendingSelection:(BOOL)a4;
- (void)updateSelectionForTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4;
- (void)updateTipsWithConnectorKnobsEnabled:(BOOL)a3;
- (void)willEndDynamicOperation;
- (void)withLayoutForSelectionPath:(id)a3 flags:(unint64_t)a4 performBlock:(id)a5;
- (void)withLayoutNearestPoint:(CGPoint)a3 forStorage:(id)a4 performBlock:(id)a5;
- (void)zoomToCurrentSelection;
- (void)zoomToFitAllContent;
- (void)zoomToSelectionPath:(id)a3;
- (void)zoomWithAnimation:(id)a3 toUnscaledRect:(CGRect)a4 layoutOffscreenContent:(BOOL)a5 completionBlock:(id)a6;
- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3;
- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3 withDuration:(double)a4;
@end

@implementation CRLInteractiveCanvasController

- (void)withLayoutNearestPoint:(CGPoint)a3 forStorage:(id)a4 performBlock:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  [(CRLInteractiveCanvasController *)self layoutIfNeeded];
  v12 = [(CRLInteractiveCanvasController *)self closestRepToPoint:v10 forStorage:x, y];

  v11 = [v12 layout];
  v9[2](v9, v11);
}

- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(CRLInteractiveCanvasController *)self p_repsForStorage:v7];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v28;
    v13 = INFINITY;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v15 frameInUnscaledCanvas];
        v16 = v34.origin.x;
        v17 = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        v33.x = x;
        v33.y = y;
        if (CGRectContainsPoint(v34, v33))
        {
          v25 = v15;

          v11 = v25;
          goto LABEL_14;
        }

        v35.origin.x = v16;
        v35.origin.y = v17;
        v35.size.width = width;
        v35.size.height = height;
        MidX = CGRectGetMidX(v35);
        v36.origin.x = v16;
        v36.origin.y = v17;
        v36.size.width = width;
        v36.size.height = height;
        MidY = CGRectGetMidY(v36);
        v22 = sub_100120090(x, y, MidX, MidY);
        if (v22 < v13)
        {
          v23 = v22;
          v24 = v15;

          v13 = v23;
          v11 = v24;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)p_repsForStorage:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CRLInteractiveCanvasController *)self canvas];
  v7 = [v6 topLevelReps];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CRLInteractiveCanvasController *)self p_recursivelyAddRep:*(*(&v13 + 1) + 8 * i) forStorage:v4 toSet:v5];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)p_recursivelyAddRep:(id)a3 forStorage:(id)a4 toSet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v8);
  v13 = v12;
  if (v12 && ([v12 storage], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v9))
  {
    [v10 addObject:v13];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [v8 childReps];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(CRLInteractiveCanvasController *)self p_recursivelyAddRep:*(*(&v20 + 1) + 8 * v19) forStorage:v9 toSet:v10];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (CRLInteractiveCanvasController)init
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasController;
  v2 = [(CRLInteractiveCanvasController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLInteractiveCanvasController *)v2 p_commonInit];
  }

  __dmb(0xBu);
  return v3;
}

- (void)addCommonObservers
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"p_textGesturesWillBeginNotification:" name:@"CRLTextGesturesWillBeginNotification" object:0];
  [v4 addObserver:self selector:"p_textGesturesDidEndNotification:" name:@"CRLTextGesturesDidEndNotification" object:0];
  [v4 addObserver:self selector:"p_spellCheckingStateChangedNotification:" name:@"CRLWPSpellCheckingStateChangedNotification" object:0];
  [v4 addObserver:self selector:"p_spellCheckerWordsDidChangeNotification:" name:@"CRLWPSpellCheckingIgnoranceChangedNotification" object:0];
  [v4 addObserver:self selector:"p_spellCheckerWordsDidChangeNotification:" name:@"CRLWPSpellCheckingLearnedWordsChangedNotification" object:0];
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  [v3 addCommonObservers];
}

- (void)removeCommonObservers
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"CRLTextGesturesWillBeginNotification" object:0];
  [v5 removeObserver:self name:@"CRLTextGesturesDidEndNotification" object:0];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"CRLScenesDebugView" context:@"CRLScenesDebugView"];

  v4 = [(CRLInteractiveCanvasController *)self layerHost];
  [v4 removeCommonObservers];
}

- (void)p_commonInit
{
  v3 = [[CRLCanvas alloc] initWithLayoutControllerClass:objc_opt_class() delegate:self];
  mCanvas = self->mCanvas;
  self->mCanvas = v3;

  [(CRLCanvas *)self->mCanvas i_setCanvasController:self];
  v5 = [[CRLInteractiveCanvasLayerHelper alloc] initWithInteractiveCanvasController:self];
  mLayerUpdater = self->mLayerUpdater;
  self->mLayerUpdater = v5;

  self->mResizeCanvasOnLayout = 0;
  [(CRLInteractiveCanvasController *)self addCommonObservers];
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  [(CRLInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:CGRectNull.origin.x, y, width, height];
  [(CRLInteractiveCanvasController *)self setP_visibleUnscaledRect:CGRectNull.origin.x, y, width, height];
  v10 = objc_alloc_init(NSMutableSet);
  mNotificationsToPostWithValidLayouts = self->mNotificationsToPostWithValidLayouts;
  self->mNotificationsToPostWithValidLayouts = v10;

  v12 = objc_alloc_init(NSMutableArray);
  mBlocksToPerformOnMainThreadWithValidLayouts = self->mBlocksToPerformOnMainThreadWithValidLayouts;
  self->mBlocksToPerformOnMainThreadWithValidLayouts = v12;

  v14 = objc_alloc_init(NSMutableSet);
  mRepsToSetNeedsDisplay = self->mRepsToSetNeedsDisplay;
  self->mRepsToSetNeedsDisplay = v14;

  v16 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
  mRepsToRectsToInvalidate = self->mRepsToRectsToInvalidate;
  self->mRepsToRectsToInvalidate = v16;

  v18 = objc_alloc_init(NSMutableSet);
  mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry = self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry;
  self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry = v18;

  v20 = objc_alloc_init(NSMutableArray);
  mDecorators = self->mDecorators;
  self->mDecorators = v20;

  v22 = objc_alloc_init(NSMutableSet);
  mDecoratorsWithInvalidLayers = self->mDecoratorsWithInvalidLayers;
  self->mDecoratorsWithInvalidLayers = v22;

  v24 = +[NSUserDefaults standardUserDefaults];
  -[CRLInteractiveCanvasController setDisplaysMultiselectionWithSingleBounds:](self, "setDisplaysMultiselectionWithSingleBounds:", [v24 BOOLForKey:@"CRLMultiSelectionShouldDisplaySingleBoundsUserDefault"]);

  self->mVersionFidelityAlertWasShownIsValid = 0;
  self->mVersionFidelityAlertWasShown = 0;
  v25 = +[NSUserDefaults standardUserDefaults];
  [v25 addObserver:self forKeyPath:@"CRLScenesDebugView" options:0 context:@"CRLScenesDebugView"];

  v26 = [[_TtC8Freeform26CRLCanvasDotGridBackground alloc] initWithICC:self];
  mCanvasBackground = self->mCanvasBackground;
  self->mCanvasBackground = v26;

  v28 = objc_alloc_init(CRLWPRenderingAttributeOverrideController);
  renderingOverrideController = self->_renderingOverrideController;
  self->_renderingOverrideController = v28;
}

- (void)dealloc
{
  if (!self->mHasBeenTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374968();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137497C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374A04();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:463 isFatal:0 description:"Must call -teardown on ICC before it is deallocated"];
  }

  if (self->mHadLayerHost && !self->mLayerHostHasBeenTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374A2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374A54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374ADC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController dealloc]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:464 isFatal:0 description:"Must call -teardown on CVC before ICC is deallocated"];
  }

  WeakRetained = objc_loadWeakRetained(&self->mLayerHost);

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374B04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374B2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374BB4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController dealloc]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:465 isFatal:0 description:"Layer host must be cleared out of ICC before it is deallocated, to avoid a zombie crash."];
  }

  objc_storeWeak(&self->mLayerHost, 0);
  [(CRLInteractiveCanvasController *)self removeCommonObservers];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self];

  mTextInputResponderSource = self->mTextInputResponderSource;
  if (mTextInputResponderSource)
  {
    --mTextInputResponderSource->mTextInputResponderShareCount;
  }

  v15.receiver = self;
  v15.super_class = CRLInteractiveCanvasController;
  [(CRLInteractiveCanvasController *)&v15 dealloc];
}

- (BOOL)isCanvasBackgroundAlignmentSnappingEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->mDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    v8 = [v7 wantsToShowCanvasDotGridOnInteractiveCanvasController:self];
  }

  else
  {
    v8 = 0;
  }

  return +[CRLCanvasGuideController shouldSnapToGrid]& v8;
}

- (int64_t)mathHintsMode
{
  v2 = [(CRLInteractiveCanvasController *)self mathCalculationController];
  v3 = [v2 mathHintsMode];

  return v3;
}

- (void)setMathHintsMode:(int64_t)a3
{
  v4 = [(CRLInteractiveCanvasController *)self mathCalculationController];
  [v4 setMathHintsMode:a3];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v14.receiver = self;
  v14.super_class = CRLInteractiveCanvasController;
  if ([(CRLInteractiveCanvasController *)&v14 respondsToSelector:?])
  {
    v13.receiver = self;
    v13.super_class = CRLInteractiveCanvasController;
    v5 = [(CRLInteractiveCanvasController *)&v13 methodSignatureForSelector:a3];
  }

  else
  {
    v6 = qword_101A34FC8;
    if (!qword_101A34FC8)
    {
      if (snprintf(__str, 0x20uLL, "%s%s%s%s", "v", "@", ":", "@") >= 0x20)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101374BDC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101374C04();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101374C8C();
        }

        v7 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v7);
        }

        v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController methodSignatureForSelector:]"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
        [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:514 isFatal:0 description:"ObjCTypes string overflowed"];
      }

      v10 = [NSMethodSignature signatureWithObjCTypes:__str];
      v11 = qword_101A34FC8;
      qword_101A34FC8 = v10;

      v6 = qword_101A34FC8;
    }

    v5 = v6;
  }

  return v5;
}

+ (BOOL)selectorIsActionMethod:(SEL)a3
{
  Name = sel_getName(a3);
  v4 = &Name[strlen(Name) - 1];
  return *v4 == 58 && strchr(Name, 58) == v4;
}

- (BOOL)respondsToSelector:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CRLInteractiveCanvasController;
  if ([(CRLInteractiveCanvasController *)&v11 respondsToSelector:a3])
  {
    v7 = 1;
  }

  else if ([CRLInteractiveCanvasController selectorIsActionMethod:a3])
  {
    v8 = [(CRLInteractiveCanvasController *)self editorController];
    v9 = [v8 editorForEditAction:a3 withSender:v6];
    v7 = v9 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [v4 selector];
  v16 = 0;
  [v4 getArgument:&v16 atIndex:2];
  v6 = [(CRLInteractiveCanvasController *)self editorController];
  v7 = [v6 editorForEditAction:v5 withSender:v16];

  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:v7];
    goto LABEL_25;
  }

  v8 = v16;
  v9 = [(CRLInteractiveCanvasController *)self layerHost];
  if (v8 == v9 || [@"UIEditingInteraction" isEqual:v16])
  {
    if (v5 == "cut:" || v5 == "copy:")
    {

LABEL_10:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101374CB4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101374CDC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101374D64();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController forwardInvocation:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:570 isFatal:0 description:"The OS undo gestures should not be sending us selectors we can't respond to!"];

      goto LABEL_25;
    }

    if (v5 == "paste:")
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (v5 != "bringToFront:" && v5 != "sendToBack:" || (objc_opt_self(), v13 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15.receiver = self;
      v15.super_class = CRLInteractiveCanvasController;
      [(CRLInteractiveCanvasController *)&v15 doesNotRecognizeSelector:v5];
    }
  }

LABEL_25:
}

- (void)p_teardownCanvasEditor
{
  if (self->mCanvasEditor)
  {
    v3 = [(CRLEditorController *)self->mEditorController currentEditors];
    v4 = [v3 indexOfObjectIdenticalTo:self->mCanvasEditor];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      mEditorController = self->mEditorController;
      v6 = objc_alloc_init(CRLCanvasSelection);
      [(CRLEditorController *)mEditorController setSelection:v6 forEditor:self->mCanvasEditor];

      [(CRLEditorController *)self->mEditorController setSelectionPathToPopEditor:self->mCanvasEditor];
    }

    [(CRLCanvasEditor *)self->mCanvasEditor teardown];
    mCanvasEditor = self->mCanvasEditor;
    self->mCanvasEditor = 0;
  }

  v8 = self->mEditorController;
  self->mEditorController = 0;
}

- (void)teardownCollaboratorCursorInfrastructureInvalidatingLayers:(BOOL)a3
{
  v3 = a3;
  self->mCollaboratorCursorsInvalidated = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 teardown];
        if (v3)
        {
          [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->mCurrentCollaboratorPresences removeAllObjects];
  [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary removeAllObjects];
  [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing removeAllObjects];
}

- (void)teardown
{
  self->mIsTearingDown = 1;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:0];
  [(CRLInteractiveCanvasController *)self cancelScrollToCurrentSelectionPathAfterLayout];
  [(CRLInteractiveCanvasController *)self teardownCollaboratorCursorInfrastructureInvalidatingLayers:0];
  [(CRLInteractiveCanvasController *)self teardownBackgroundRendering];
  if (self->mEditorController)
  {
    [(CRLInteractiveCanvasController *)self endEditing];
  }

  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  self->mMultiselectResizeInfo = 0;

  [(CRLInteractiveCanvasController *)self teardownTextInputResponder];
  v4 = [(CRLInteractiveCanvasController *)self gestureDispatcher];
  [v4 teardown];

  [(CRLCanvas *)self->mCanvas teardown];
  if (self->mCanvasEditor)
  {
    [(CRLInteractiveCanvasController *)self p_teardownCanvasEditor];
  }

  [(CRLInteractiveCanvasLayerUpdater *)self->mLayerUpdater teardown];
  v5 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
  [v5 willTeardownRenderer:self];

  [(CRLInteractiveCanvasController *)self setCollaboratorCursorDelegate:0];
  mInfosPreviouslyShowingCollabCursors = self->mInfosPreviouslyShowingCollabCursors;
  self->mInfosPreviouslyShowingCollabCursors = 0;

  [(CRLInteractiveCanvasController *)self setFreehandDrawingToolkit:0];
  [(CRLInteractiveCanvasController *)self setDelegate:0];
  [(CRLInteractiveCanvasController *)self p_endObservingDocumentRootIfNeeded];
  [(NSMutableSet *)self->mNotificationsToPostWithValidLayouts removeAllObjects];
  [(NSMutableArray *)self->mBlocksToPerformOnMainThreadWithValidLayouts removeAllObjects];
  [(NSMutableSet *)self->mRepsToSetNeedsDisplay removeAllObjects];
  [(NSMapTable *)self->mRepsToRectsToInvalidate removeAllObjects];
  [(NSMutableSet *)self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry removeAllObjects];
  [(NSMutableArray *)self->mDecorators removeAllObjects];
  [(NSMutableSet *)self->mDecoratorsWithInvalidLayers removeAllObjects];
  *&self->mIsTearingDown = 256;
  if (self->mEditorController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374D8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374DA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374E3C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController teardown]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:697 isFatal:0 description:"expected nil value for '%{public}s'", "mEditorController"];
  }
}

- (void)setShowGrayOverlay:(BOOL)a3
{
  self->mShowGrayOverlay = a3;
  v3 = [(CRLInteractiveCanvasController *)self canvas];
  [v3 i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

- (void)setLayerHost:(id)a3
{
  if (a3)
  {
    self->mHadLayerHost = 1;
  }

  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mLayerHost);
  [WeakRetained removeCommonObservers];

  v5 = objc_storeWeak(&self->mLayerHost, obj);
  [obj addCommonObservers];

  [(CRLInteractiveCanvasController *)self updateCanvasDotGridVisibilityIfNeeded];
}

- (id)p_sourceInteractionSourceForNotficiationUserInfo
{
  if (self->mCurrentInteractionSource)
  {
    return self->mCurrentInteractionSource;
  }

  else
  {
    return &stru_1018BCA28;
  }
}

- (CRLInteractiveCanvasLayerHelper)i_interactiveCanvasLayerHelper
{
  v3 = objc_opt_class();
  mLayerUpdater = self->mLayerUpdater;

  return sub_100014370(v3, mLayerUpdater);
}

- (void)teardownBackgroundRendering
{
  v3 = self->mBackgroundRenderingObjects;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->mBackgroundRenderingObjects copy];
  objc_sync_exit(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) teardownBackgroundRendering];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addBackgroundRenderingObject:(id)a3
{
  v8 = a3;
  v4 = self->mBackgroundRenderingObjects;
  objc_sync_enter(v4);
  mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  if (!mBackgroundRenderingObjects)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->mBackgroundRenderingObjects;
    self->mBackgroundRenderingObjects = v6;

    mBackgroundRenderingObjects = self->mBackgroundRenderingObjects;
  }

  [(NSMutableArray *)mBackgroundRenderingObjects addObject:v8];
  objc_sync_exit(v4);
}

- (void)removeBackgroundRenderingObject:(id)a3
{
  v4 = a3;
  v5 = self->mBackgroundRenderingObjects;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)self->mBackgroundRenderingObjects indexOfObject:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374E64();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101374E78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374F00();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v9, &v12, v7);
    }

    v10 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController removeBackgroundRenderingObject:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:768 isFatal:0 description:"removeBackgroundRenderingObject called on an object that is not in the array"];
  }

  [(NSMutableArray *)self->mBackgroundRenderingObjects removeObjectAtIndex:v6];
  objc_sync_exit(v5);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);

    if (v6)
    {
      [(CRLInteractiveCanvasController *)self p_endObservingDocumentRootIfNeeded];
      if (v4)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101374F28();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101374F3C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101374FC4();
        }

        v7 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v7);
        }

        v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController setDelegate:]"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
        [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:805 isFatal:0 description:"Unexpected re-use of ICC with a different delegate"];
      }
    }

    v10 = objc_storeWeak(&self->mDelegate, v4);

    if (v4)
    {
      [(CRLInteractiveCanvasController *)self p_beginObservingDocumentRoot];
      [(CRLInteractiveCanvasController *)self updateCanvasDotGridVisibilityIfNeeded];
      if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
      {
        [(CRLInteractiveCanvasController *)self updateConnectorKnobVisibilityIfNeeded];
      }
    }
  }
}

- (void)p_beginObservingDocumentRoot
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(CRLInteractiveCanvasController *)self editingCoordinator];

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374FEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375000();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137509C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_beginObservingDocumentRoot]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:823 isFatal:0 description:"invalid nil value for '%{public}s'", "self.editingCoordinator"];
  }

  v8 = [CRLCanvasLayoutChangeObserver alloc];
  v9 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v10 = [v9 changeNotifier];
  v11 = [(CRLCanvas *)self->mCanvas layoutController];
  v12 = [(CRLCanvasLayoutChangeObserver *)v8 initWithChangeNotifier:v10 layoutController:v11];

  v13 = [(CRLCanvas *)self->mCanvas layoutController];
  [v13 setI_layoutRegistrationObserver:v12];

  [(CRLCanvasLayoutChangeObserver *)v12 setInteractiveCanvasController:self];
  if ([(CRLInteractiveCanvasController *)self shouldAddObservers])
  {
    v14 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v15 = [v14 changeNotifier];
    v16 = [(CRLInteractiveCanvasController *)self board];
    [v15 addObserver:self forChangeSource:v16];

    v17 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v18 = [v17 changeNotifier];
    v19 = [(CRLInteractiveCanvasController *)self board];
    v20 = [v19 rootContainer];
    [v18 addObserver:self forChangeSource:v20];

    v21 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v22 = [v21 collaboratorCursorCoordinator];
    [v22 registerCursorRenderer:self];

    v23 = +[NSNotification CRLBoardRealTimeStateDidChange];
    v24 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v25 = [v24 mainBoard];
    [v3 addObserver:self selector:"p_realTimeStateDidChange:" name:v23 object:v25];

    v26 = +[NSNotification CRLBoardRealTimeNewParticipantDidJoinSession];
    [v3 addObserver:self selector:"p_realTimeSessionNewParticipantDidJoin:" name:v26 object:0];
  }

  v27 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  -[CRLInteractiveCanvasController setDocumentIsSharedReadOnly:](self, "setDocumentIsSharedReadOnly:", [v27 canPerformUserAction] ^ 1);

  if (self->mPKDrawingProvider)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013750C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013750EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375188();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v28);
    }

    v29 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_beginObservingDocumentRoot]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:844 isFatal:0 description:"expected nil value for '%{public}s'", "mPKDrawingProvider"];
  }

  v31 = [[CRLPKDrawingProvider alloc] initWithICC:self];
  mPKDrawingProvider = self->mPKDrawingProvider;
  self->mPKDrawingProvider = v31;

  if (self->mDrawingIntelligenceProvider)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013751B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013751D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375274();
    }

    v33 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v33);
    }

    v34 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_beginObservingDocumentRoot]"];
    v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:846 isFatal:0 description:"expected nil value for '%{public}s'", "mDrawingIntelligenceProvider"];
  }

  v36 = [[_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider alloc] initWithInteractiveCanvasController:self];
  mDrawingIntelligenceProvider = self->mDrawingIntelligenceProvider;
  self->mDrawingIntelligenceProvider = v36;
}

- (void)p_realTimeSessionNewParticipantDidJoin:(id)a3
{
  [(CRLInteractiveCanvasController *)self sendRealTimeEnterToPeersIfNecessary];

  [(CRLInteractiveCanvasController *)self sendSelectionPathToPeersIfNecessary];
}

- (void)p_realTimeStateDidChange:(id)a3
{
  v4 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v5 = [v4 isInRealTimeSyncSession];

  if (v5)
  {
    if ([(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:*(*(&v11 + 1) + 8 * i)];
          }

          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }

    else
    {
      [(CRLCanvas *)self->mCanvas i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
    }

    [(CRLInteractiveCanvasController *)self sendSelectionPathToPeersIfNecessary];
  }

  else
  {

    [(CRLInteractiveCanvasController *)self teardownCollaboratorCursorInfrastructureInvalidatingLayers:1];
  }
}

- (void)p_endObservingDocumentRootIfNeeded
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [(CRLCanvas *)self->mCanvas layoutController];
    [v5 setI_layoutRegistrationObserver:0];

    v6 = [(CRLInteractiveCanvasController *)self editingCoordinator];

    if (!v6)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137529C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013752B0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137534C();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_endObservingDocumentRootIfNeeded]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:879 isFatal:0 description:"invalid nil value for '%{public}s'", "self.editingCoordinator"];
    }

    v10 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v11 = [v10 changeNotifier];
    v12 = [(CRLInteractiveCanvasController *)self board];
    v13 = [v12 rootContainer];
    [v11 removeObserver:self forChangeSource:v13];

    v14 = +[NSNotification CRLBoardRealTimeStateDidChange];
    v15 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v16 = [v15 mainBoard];
    [v4 removeObserver:self name:v14 object:v16];

    v17 = +[NSNotification CRLBoardRealTimeNewParticipantDidJoinSession];
    [v4 removeObserver:self name:v17 object:0];

    mDrawingIntelligenceProvider = self->mDrawingIntelligenceProvider;
    if (mDrawingIntelligenceProvider)
    {
      [(CRLFreehandDrawingIntelligenceProvider *)mDrawingIntelligenceProvider tearDown];
      v19 = self->mDrawingIntelligenceProvider;
      self->mDrawingIntelligenceProvider = 0;
    }

    mPKDrawingProvider = self->mPKDrawingProvider;
    if (mPKDrawingProvider)
    {
      [(CRLPKDrawingProvider *)mPKDrawingProvider teardown];
      v21 = self->mPKDrawingProvider;
      self->mPKDrawingProvider = 0;
    }
  }
}

- (_TtC8Freeform8CRLBoard)board
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375374();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375388();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375410();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController board]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:899 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v7 = [v6 mainBoard];

  return v7;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = [v3 editingCoordinatorForInteractiveCanvasController:self];

  return v4;
}

- (_TtC8Freeform20CRLCommandController)commandController
{
  v2 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v3 = [v2 commandController];

  return v3;
}

- (CRLChangeNotifier)changeNotifier
{
  v2 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v3 = [v2 changeNotifier];

  return v3;
}

- (CGSize)defaultMinimumUnscaledCanvasSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)canvasLayoutInvalidated:(id)a3
{
  if (+[NSThread isMainThread])
  {
    v5 = [(CRLInteractiveCanvasController *)self layerHost];
    v4 = [v5 canvasLayer];
    [v4 setNeedsLayout];
  }
}

- (void)i_canvasDidUpdateVisibleBounds
{
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (!self->mDynamicallyZooming)
  {
    [(CRLInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }

  [(CRLInteractiveCanvasController *)self setP_visibleUnscaledRect:CGRectNull.origin.x, y, width, height];
}

- (void)canvasWillValidateLayouts:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    [v6 interactiveCanvasControllerWillValidateLayouts:self];
  }
}

- (void)canvasDidValidateLayouts:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    [v6 interactiveCanvasControllerDidValidateLayouts:self];
  }
}

- (void)canvasDidLayout:(id)a3
{
  v4 = a3;
  if (!self->mHasCanvasEverLaidOut)
  {
    v5 = [(CRLInteractiveCanvasController *)self infosToDisplay];
    self->mHasCanvasEverLaidOut = [v5 count] != 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->mDelegate);
    [v8 interactiveCanvasControllerDidLayout:self];
  }

  [(CRLInteractiveCanvasController *)self p_consumeRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry];
  if (+[NSThread isMainThread]&& ![(CRLInteractiveCanvasController *)self textMagnifierIsUp])
  {
    if (self->mNotifyTIRTextChangedAfterLayout)
    {
      self->mNotifyTIRTextChangedAfterLayout = 0;
    }

    if (self->mNotifyTIRSelectionChangedAfterLayout >= 1)
    {
      self->mNotifyTIRSelectionChangedAfterLayout = 0;
    }
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"CRLInteractiveCanvasControllerDidLayoutNotification" object:self];

  if ([(CRLInteractiveCanvasController *)self p_areAnyCollaboratorsPresent])
  {
    v10 = [(CRLInteractiveCanvasController *)self editorController];
    v11 = [v10 isChangingSelection];

    if (v11)
    {
      v12 = [(CRLInteractiveCanvasController *)self canvas];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100444040;
      v15[3] = &unk_10183AB38;
      v15[4] = self;
      [v12 performBlockAfterLayoutIfNecessary:v15];
    }

    else
    {
      v13 = [(CRLInteractiveCanvasController *)self p_currentSelectionIsOnscreen];
      v14 = v13;
      if (self->mSelectionIsCurrentlyOnscreen && self->mDidTransform && !self->mCurrentlyScrolling && (v13 & 1) == 0)
      {
        [(CRLInteractiveCanvasController *)self scrollCurrentSelectionToVisibleWithOptions:0];
      }

      self->mDidTransform = 0;
      self->mSelectionIsCurrentlyOnscreen = v14;
    }
  }
}

- (void)p_collabParticipantsDidChange:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CRLCanvas *)self->mCanvas topLevelReps:a3];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:"collaborationParticipantsDidChange"];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)p_currentSelectionIsOnscreen
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(CRLInteractiveCanvasController *)self editorController];
  v6 = [v5 selectionPath];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CRLInteractiveCanvasController *)self editorController];
  v8 = [v7 selectionPath];

  v9 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:v8];
  [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v42 = CGRectInset(v41, 4.0, 4.0);
  y = v42.origin.y;
  x = v42.origin.x;
  height = v42.size.height;
  width = v42.size.width;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {
    v21 = 0;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = 0;
  v14 = CGRectNull.origin.x;
  v15 = CGRectNull.origin.y;
  v16 = CGRectNull.size.width;
  v17 = CGRectNull.size.height;
  v18 = *v37;
  v19 = 1;
  while (2)
  {
    v20 = 0;
    v21 = v13;
    do
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(v10);
      }

      v22 = *(*(&v36 + 1) + 8 * v20);
      [(CRLInteractiveCanvasController *)self rectInRootForScrollingToSelectionPath:v8 onLayout:v22 allowingZooming:0, *&height, *&width, *&y, *&x, v36];
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      if (v19)
      {
        v17 = v26;
        v16 = v25;
        v15 = v24;
        v14 = v23;
        if ([v22 selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:v8])
        {
          goto LABEL_13;
        }
      }

      else
      {
        v43.origin.x = v14;
        v43.origin.y = v15;
        v43.size.width = v16;
        v43.size.height = v17;
        v47.origin.x = v27;
        v47.origin.y = v28;
        v47.size.width = v29;
        v47.size.height = v30;
        v44 = CGRectUnion(v43, v47);
        v14 = v44.origin.x;
        v15 = v44.origin.y;
        v16 = v44.size.width;
        v17 = v44.size.height;
        if (v21 || [v22 selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:v8])
        {
LABEL_13:
          [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
          v48.origin.x = v14;
          v48.origin.y = v15;
          v48.size.width = v16;
          v48.size.height = v17;
          v21 = 1;
          if (CGRectContainsRect(v45, v48))
          {
            goto LABEL_23;
          }

          goto LABEL_17;
        }
      }

      v46.origin.x = v14;
      v46.origin.y = v15;
      v46.size.width = v16;
      v46.size.height = v17;
      v49.origin.y = y;
      v49.origin.x = x;
      v49.size.height = height;
      v49.size.width = width;
      if (CGRectIntersectsRect(v46, v49))
      {
        v21 = 1;
        goto LABEL_23;
      }

      v21 = 0;
LABEL_17:
      v19 = 0;
      v20 = v20 + 1;
    }

    while (v12 != v20);
    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    v19 = 0;
    v13 = v21;
    v21 = 0;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_23:

  return v21;
}

- (void)canvasWillUpdateRepsFromLayouts:(id)a3
{
  v4 = [(CRLInteractiveCanvasController *)self tmCoordinator];
  v5 = [v4 controllingTM];
  v10 = [v5 tracker];

  if (!v10 || (objc_opt_respondsToSelector() & 1) == 0 || ([v10 disallowCanvasGrowingWhileTracking] & 1) == 0)
  {
    if ([(CRLInteractiveCanvasController *)self resizeCanvasOnLayout])
    {
      [(CRLInteractiveCanvasController *)self p_updateCanvasSizeFromLayouts];
    }

    else if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
    {
      v6 = [(CRLInteractiveCanvasController *)self layerHost];
      v7 = [v6 canvasLayer];

      [v7 fixFrameAndScrollView];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v10 repsToHide];
  }

  else
  {
    v8 = 0;
  }

  mRepsToHideForCurrentTracker = self->mRepsToHideForCurrentTracker;
  self->mRepsToHideForCurrentTracker = v8;

  [(CRLInteractiveCanvasController *)self i_canvasDidUpdateVisibleBounds];
}

- (BOOL)i_currentlySuppressingLayerUpdates
{
  v2 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v3 = [v2 currentlySuppressingLayerUpdates];

  return v3;
}

- (void)i_beginSuppressingLayerUpdatesExceptForReps:(id)a3
{
  v4 = a3;
  [(CRLInteractiveCanvasController *)self p_validateLayerSuppressionAPIAccess];
  v5 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137544C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013754E8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_beginSuppressingLayerUpdatesExceptForReps:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1143 isFatal:0 description:"invalid nil value for '%{public}s'", "self.i_interactiveCanvasLayerHelper"];
  }

  v9 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  [v9 beginSuppressingLayerUpdatesExceptForReps:v4];
}

- (void)i_endSuppressingLayerUpdates
{
  [(CRLInteractiveCanvasController *)self p_validateLayerSuppressionAPIAccess];
  v3 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375510();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375524();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013755C0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_endSuppressingLayerUpdates]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1149 isFatal:0 description:"invalid nil value for '%{public}s'", "self.i_interactiveCanvasLayerHelper"];
  }

  v7 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  [v7 endSuppressingLayerUpdates];
}

- (void)p_validateLayerSuppressionAPIAccess
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013755E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013755FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375684();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_validateLayerSuppressionAPIAccess]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1154 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  if (([v6 areIncomingCollaborativeChangesSuspended] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013756AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013756D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137575C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_validateLayerSuppressionAPIAccess]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1161 isFatal:0 description:"Should not suppress layer updates unless collab is suspended!"];
  }
}

- (void)updateLayerTreeForInteractiveCanvas:(id)a3
{
  v3 = self;
  v4 = [(CRLInteractiveCanvasController *)self layerHost];
  [v4 willUpdateLayerTree];

  v5 = [CRLRealTimeSyncDecorator shouldShowForICC:v3];
  mLiveSyncDecorator = v3->mLiveSyncDecorator;
  if (v5)
  {
    if (!mLiveSyncDecorator)
    {
      v7 = [[CRLRealTimeSyncDecorator alloc] initWithInteractiveCanvasController:v3];
      v8 = v3->mLiveSyncDecorator;
      v3->mLiveSyncDecorator = v7;

      [(CRLInteractiveCanvasController *)v3 addDecorator:v3->mLiveSyncDecorator];
    }
  }

  else if (mLiveSyncDecorator)
  {
    [(CRLInteractiveCanvasController *)v3 removeDecorator:?];
    v9 = v3->mLiveSyncDecorator;
    v3->mLiveSyncDecorator = 0;
  }

  v10 = [(CRLInteractiveCanvasController *)v3 editingCoordinator];
  if ([v10 isInSandboxiCloudEnvironment])
  {
    v11 = v3->mLiveSyncDecorator;

    if (!v11)
    {
      if (!v3->mCKSandboxDecorator)
      {
        v12 = [[CRLCKSandboxDecorator alloc] initWithInteractiveCanvasController:v3];
        mCKSandboxDecorator = v3->mCKSandboxDecorator;
        v3->mCKSandboxDecorator = v12;

        [(CRLInteractiveCanvasController *)v3 addDecorator:v3->mCKSandboxDecorator];
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (v3->mCKSandboxDecorator)
  {
    [(CRLInteractiveCanvasController *)v3 removeDecorator:?];
    v14 = v3->mCKSandboxDecorator;
    v3->mCKSandboxDecorator = 0;
  }

LABEL_13:
  v77 = v3;
  if (v3->mCollaboratorCursorsInvalidated)
  {
    v15 = +[NSMutableSet set];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v3->mCurrentCollaboratorPresences;
    v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v120 objects:v133 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v121;
      do
      {
        v19 = 0;
        do
        {
          if (*v121 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v120 + 1) + 8 * v19);
          v21 = [(CRLInteractiveCanvasController *)v3 collaboratorCursorDelegate];
          v22 = [v21 collaboratorCursorSelectionPathForRenderer:v3 collaboratorPresence:v20];

          v23 = [(CRLInteractiveCanvasController *)v3 p_repsForCollaboratorCursorSelectionPath:v22];
          if (qword_101AD5B90 != -1)
          {
            sub_101375784();
          }

          v24 = off_1019EDBE8;
          if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Collaborator Cursors: Calling the following reps to invalidate: %{public}@", &buf, 0xCu);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v116 objects:v132 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v117;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v117 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [*(*(&v116 + 1) + 8 * i) collaboratorCursorChangedToSelectionPath:v22];
              }

              v27 = [v25 countByEnumeratingWithState:&v116 objects:v132 count:16];
            }

            while (v27);
          }

          [v15 unionSet:v25];
          v19 = v19 + 1;
          v3 = v77;
        }

        while (v19 != v17);
        v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v120 objects:v133 count:16];
      }

      while (v17);
    }

    v30 = objc_alloc_init(NSMutableSet);
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v31 = v3->mInfosPreviouslyShowingCollabCursors;
    v32 = [(NSSet *)v31 countByEnumeratingWithState:&v112 objects:v131 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v113;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v113 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [(CRLInteractiveCanvasController *)v3 repForInfo:*(*(&v112 + 1) + 8 * j), v77];
          if (v36)
          {
            [v30 addObject:v36];
          }
        }

        v33 = [(NSSet *)v31 countByEnumeratingWithState:&v112 objects:v131 count:16];
      }

      while (v33);
    }

    v37 = objc_alloc_init(NSMutableSet);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v38 = v15;
    v39 = [v38 countByEnumeratingWithState:&v108 objects:v130 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v109;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v109 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v108 + 1) + 8 * k) info];
          if (v43)
          {
            [v37 addObject:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v108 objects:v130 count:16];
      }

      while (v40);
    }

    v44 = [v37 copy];
    mInfosPreviouslyShowingCollabCursors = v3->mInfosPreviouslyShowingCollabCursors;
    v3->mInfosPreviouslyShowingCollabCursors = v44;

    [v30 minusSet:v38];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v46 = v30;
    v47 = [v46 countByEnumeratingWithState:&v104 objects:v129 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v105;
      do
      {
        for (m = 0; m != v48; m = m + 1)
        {
          if (*v105 != v49)
          {
            objc_enumerationMutation(v46);
          }

          [*(*(&v104 + 1) + 8 * m) hideCollaboratorCursors];
        }

        v48 = [v46 countByEnumeratingWithState:&v104 objects:v129 count:16];
      }

      while (v48);
    }

    v3->mCollaboratorCursorsInvalidated = 0;
  }

  v78 = objc_alloc_init(NSMutableSet);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v51 = v3->mCurrentCollaboratorPresences;
  v52 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v100 objects:v128 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v101;
    do
    {
      for (n = 0; n != v53; n = n + 1)
      {
        if (*v101 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v100 + 1) + 8 * n);
        v57 = [(CRLInteractiveCanvasController *)v3 collaboratorCursorDelegate];
        v58 = [v57 collaboratorCursorSelectionPathForRenderer:v3 collaboratorPresence:v56];

        buf = 0u;
        v127 = 0u;
        [(CRLInteractiveCanvasController *)v3 p_collaboratorHUDPositionForSelectionPath:v58 collaboratorPresence:v56 allowScroll:0 hudSize:1];
        if (BYTE8(v127) == 1 && v127 != 0)
        {
          [v78 addObject:v56];
        }
      }

      v53 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v100 objects:v128 count:16];
    }

    while (v53);
  }

  v81 = [v78 mutableCopy];
  [v81 minusSet:v3->mVisibleCollaboratorPresences];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v79 = v3->mVisibleCollaboratorPresences;
  obja = [(NSMutableSet *)v79 countByEnumeratingWithState:&v96 objects:v125 count:16];
  if (obja)
  {
    v80 = *v97;
    do
    {
      for (ii = 0; ii != obja; ii = ii + 1)
      {
        if (*v97 != v80)
        {
          objc_enumerationMutation(v79);
        }

        v61 = *(*(&v96 + 1) + 8 * ii);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v62 = v81;
        v63 = [v62 countByEnumeratingWithState:&v92 objects:v124 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v93;
          while (2)
          {
            for (jj = 0; jj != v64; jj = jj + 1)
            {
              if (*v93 != v65)
              {
                objc_enumerationMutation(v62);
              }

              v67 = *(*(&v92 + 1) + 8 * jj);
              v68 = [v67 presenceUUID];
              v69 = [v61 presenceUUID];
              v70 = [v68 isEqual:v69];

              if (v70)
              {
                [v62 removeObject:v67];
                goto LABEL_85;
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v92 objects:v124 count:16];
            if (v64)
            {
              continue;
            }

            break;
          }
        }

LABEL_85:
      }

      obja = [(NSMutableSet *)v79 countByEnumeratingWithState:&v96 objects:v125 count:16];
    }

    while (obja);
  }

  v71 = [(NSMutableSet *)v77->mVisibleCollaboratorPresences copy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v86 = sub_1004456B4;
  v87 = &unk_10185B8A8;
  v88 = v81;
  v89 = v77;
  v90 = v71;
  v72 = v78;
  v91 = v72;
  v73 = v71;
  v74 = v81;
  if (+[NSThread isMainThread])
  {
    v86(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  mVisibleCollaboratorPresences = v77->mVisibleCollaboratorPresences;
  v77->mVisibleCollaboratorPresences = v72;
  v76 = v72;

  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1004458B0;
  v84[3] = &unk_10183AB38;
  v84[4] = v77;
  [(CRLInteractiveCanvasController *)v77 p_performBlockWithCachedLayoutsForCollaboratorCursors:v84];
  v77->mAllDecoratorLayersAreInvalid = 0;
  [(NSMutableSet *)v77->mDecoratorsWithInvalidLayers removeAllObjects];
}

- (void)canvasDidValidateLayoutsWithDependencies:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLInteractiveCanvasControllerDidValidateLayoutsWithDependenciesNotification" object:self];
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3
{
  if (self->mCreateRepsForOffscreenLayouts)
  {
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
  }

  else
  {
    [(CRLInteractiveCanvasController *)self visibleBoundsRectForTiling:a3];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)additionalVisibleInfosForCanvas:(id)a3
{
  if (self->mCreateRepsForOffscreenLayouts)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
    v6 = [(CRLInteractiveCanvasController *)self editorController];
    v7 = [v6 selectionPath];
    v8 = [v5 boardItemsForSelectionPath:v7];

    v9 = [(CRLInteractiveCanvasController *)self dynamicOperationController];
    v10 = [v9 allTransformedReps];

    if (v10)
    {
      v3 = [NSMutableSet setWithSet:v8];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v18 + 1) + 8 * i) info];
            [v3 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v3 = v8;
    }
  }

  return v3;
}

- (void)canvas:(id)a3 createdRep:(id)a4
{
  v5 = a4;
  v6 = [(CRLInteractiveCanvasController *)self canvasEditor];
  [v6 repWasCreated:v5];
}

- (void)presentError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLInteractiveCanvasController *)self layerHost];
  [v8 presentError:v7 completionHandler:v6];
}

- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CRLInteractiveCanvasController *)self layerHost];
  [v11 presentErrors:v10 withLocalizedDescription:v9 completionHandler:v8];
}

- (CRLEditorController)editorController
{
  p_mEditorController = &self->mEditorController;
  mEditorController = self->mEditorController;
  if (!mEditorController)
  {
    v5 = [(CRLInteractiveCanvasController *)self delegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      mIsFetchingEditorController = self->mIsFetchingEditorController;
      if (mIsFetchingEditorController < 1)
      {
        self->mIsFetchingEditorController = mIsFetchingEditorController + 1;
        v9 = [v5 editorControllerForInteractiveCanvasController:self];
        v10 = v9;
        v11 = self->mEditorController;
        if (!v11 || v9 == v11)
        {
          objc_storeStrong(p_mEditorController, v9);
        }

        else
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013757AC();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013757C0();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101375848();
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v12);
          }

          v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController editorController]"];
          v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
          [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1365 isFatal:0 description:"editor controller mismatch"];

          v15 = *p_mEditorController;
          *p_mEditorController = 0;
        }

        v16 = self->mIsFetchingEditorController;
        if (v16 <= 0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101375870();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101375898();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101375920();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v17);
          }

          v18 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController editorController]"];
          v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
          [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1368 isFatal:0 description:"Negative reentrancy counter"];

          v16 = self->mIsFetchingEditorController;
        }

        self->mIsFetchingEditorController = v16 - 1;
      }

      else
      {
        v7 = [v5 editorControllerForInteractiveCanvasController:self];
        v8 = self->mEditorController;
        self->mEditorController = v7;
      }
    }

    if (*p_mEditorController)
    {
      goto LABEL_39;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375948();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375970();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013759F8();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController editorController]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1373 isFatal:0 description:"ICC delegate must provide the editor controller! (You probably need to give it a document selection through canvas selection, too.)"];

    if (*p_mEditorController)
    {
LABEL_39:
      [(CRLEditorController *)self->mEditorController setEditingDisabledReasons:[(CRLInteractiveCanvasController *)self p_editingDisabledReasons]];
      v23 = +[NSNotificationCenter defaultCenter];
      [v23 addObserver:self selector:"p_editorControllerDidChangeTextInputEditor:" name:@"CRLEditorControllerDidChangeTextInputEditor" object:self->mEditorController];
      if ([(CRLInteractiveCanvasController *)self shouldAddObservers])
      {
        [v23 addObserver:self selector:"p_editorControllerSelectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:self->mEditorController];
      }

      [v23 addObserver:self selector:"p_editorControllerSelectionDidChangeAndWantsKeyboard:" name:@"CRLEditorControllerSelectionDidChangeAndWantsKeyboard" object:self->mEditorController];
    }

    mEditorController = *p_mEditorController;
  }

  return mEditorController;
}

- (void)setTextInputResponder:(id)a3
{
  v5 = a3;
  if (self->mTextInputResponder != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->mTextInputResponder, a3);
    v6 = [(CRLInteractiveCanvasController *)self layerHost];
    v7 = [v6 asiOSCVC];

    [v7 textInputResponderDidChange];
    v5 = v8;
  }
}

- (id)newCanvasEditor
{
  v3 = [CRLCanvasEditor alloc];

  return [(CRLCanvasEditor *)v3 initWithInteractiveCanvasController:self];
}

- (CRLCanvasEditor)canvasEditor
{
  mCanvasEditor = self->mCanvasEditor;
  if (!mCanvasEditor)
  {
    v4 = [(CRLInteractiveCanvasController *)self newCanvasEditor];
    v5 = self->mCanvasEditor;
    self->mCanvasEditor = v4;

    mCanvasEditor = self->mCanvasEditor;
  }

  return mCanvasEditor;
}

- (void)endEditingWithFlags:(unint64_t)a3
{
  v14 = [(CRLInteractiveCanvasController *)self editorController];
  v5 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v6 = [v14 selectionPath];
  v7 = [v6 mostSpecificSelectionOfClass:objc_opt_class()];

  if (v7)
  {
    v8 = [v14 selectionPath];
    v9 = [v8 indexForSelection:v7];

    v10 = [v14 selectionPath];
    v11 = [v10 orderedSelections];
    v12 = [v11 subarrayWithRange:{0, v9 + 1}];

    v13 = [CRLSelectionPath selectionPathWithSelectionArray:v12];
    [v14 setSelectionPath:v13 withFlags:a3];
  }

  else
  {
    v12 = [v5 selectionPathForInfos:0];
    [v14 setSelectionPath:v12 withFlags:a3];
  }
}

- (void)endEditingDiscardingEdits
{
  self->mDiscardingEdits = 1;
  [(CRLInteractiveCanvasController *)self endEditing];
  self->mDiscardingEdits = 0;
}

- (BOOL)canZoomToCurrentSelection
{
  v3 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v4 = [(CRLInteractiveCanvasController *)self editorController];
  v5 = [v4 selectionPath];
  v6 = [v3 boardItemsForSelectionPath:v5];
  v7 = [v6 count] != 0;

  return v7;
}

- (CGPoint)smartZoomCenterForNoSelection
{
  v2 = [(CRLInteractiveCanvasController *)self canvas];
  [v2 unscaledSize];
  v3 = sub_10011ECB4();
  v7 = sub_100120414(v3, v4, v5, v6);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)zoomToCurrentSelection
{
  v4 = [(CRLInteractiveCanvasController *)self editorController];
  v3 = [v4 selectionPath];
  [(CRLInteractiveCanvasController *)self zoomToSelectionPath:v3];
}

- (void)zoomToFitAllContent
{
  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [(CRLCanvas *)self->mCanvas unscaledRectOfLayouts];
    v7 = self;
  }

  else
  {
    [(CRLInteractiveCanvasController *)self defaultMinimumUnscaledCanvasSize];
    [(CRLCanvas *)self->mCanvas unscaledRectOfLayouts];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_10011ECB4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v49.origin.x = v9;
    v49.origin.y = v11;
    v49.size.width = v13;
    v49.size.height = v15;
    v57.origin.x = v16;
    v57.origin.y = v18;
    v57.size.width = v20;
    v57.size.height = v22;
    v50 = CGRectUnion(v49, v57);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    v58.origin.x = v16;
    v58.origin.y = v18;
    v58.size.width = v20;
    v58.size.height = v22;
    if (!CGRectEqualToRect(v50, v58))
    {
      v27 = [(CRLInteractiveCanvasController *)self layerHost];
      v28 = [v27 canvasLayer];
      if ([v28 horizontallyCenteredInScrollView])
      {
        v29 = [(CRLInteractiveCanvasController *)self layerHost];
        v30 = [v29 canvasLayer];
        v31 = [v30 verticallyCenteredInScrollView];

        if (v31)
        {
          v32 = sub_100120414(v16, v18, v20, v22);
          v34 = v33;
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          v35 = v32 - CGRectGetMinX(v51);
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          v36 = CGRectGetMaxX(v52) - v32;
          if (v35 < v36)
          {
            v35 = v36;
          }

          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = height;
          v37 = v34 - CGRectGetMinY(v53);
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          v38 = CGRectGetMaxY(v54) - v34;
          if (v37 >= v38)
          {
            v39 = v37;
          }

          else
          {
            v39 = v38;
          }

          v40 = sub_10011F340(v35, v39, 2.0);
          x = sub_10011EC70(v32, v34, v40);
          y = v41;
          width = v42;
          height = v43;
        }
      }

      else
      {
      }

      [(CRLInteractiveCanvasController *)self p_targetViewScaleForUnscaledRect:x, y, width, height];
      v45 = sub_10011F340(-20.0, -20.0, 1.0 / v44);
      v47 = v46;
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      v56 = CGRectInset(v55, v45, v47);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
    }

    v7 = self;
    v3 = x;
    v4 = y;
    v5 = width;
    v6 = height;
  }

  [(CRLInteractiveCanvasController *)v7 zoomWithAnimationToUnscaledRect:v3, v4, v5, v6];
}

- (void)zoomToSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:v4];
  if ([v5 count])
  {
    v6 = &CGRectZero;
  }

  else
  {
    v6 = &CGRectNull;
  }

  x = v6->origin.x;
  y = v6->origin.y;
  width = v6->size.width;
  height = v6->size.height;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    v15 = 1;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(CRLInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:*(*(&v26 + 1) + 8 * v16), v26];
        [v17 rectInRootForSelectionPath:v4];
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        if ((v15 & 1) == 0)
        {
          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          *&v18 = CGRectUnion(v31, *&v22);
        }

        x = v18;
        y = v19;
        width = v20;
        height = v21;

        v15 = 0;
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v15 = 0;
    }

    while (v13);
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectInset(v32, -10.0, -10.0);
  [(CRLInteractiveCanvasController *)self zoomWithAnimationToUnscaledRect:v33.origin.x, v33.origin.y, v33.size.width, v33.size.height];
}

- (double)p_targetViewScaleForUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375A20();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375A34(v9, v8, x, y, width, height);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375B44();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_targetViewScaleForUnscaledRect:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = NSStringFromCGRect(v19);
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1559 isFatal:0 description:"Don't know how to handle desired zoom rect %{public}@!", v13];

    return 1.0;
  }

  else
  {
    [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
    if (v15 / width >= v16 / height)
    {
      v17 = v16 / height;
    }

    else
    {
      v17 = v15 / width;
    }

    [(CRLInteractiveCanvasController *)self viewScale];
    return v18 * v17;
  }
}

- (void)scrollCenteredOrZoomToUnscaledRect:(CGRect)a3 shouldAnimateScroll:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    [(CRLInteractiveCanvasController *)self p_targetViewScaleForUnscaledRect:x, y, width, height];
    v11 = v10;
    v12 = [(CRLInteractiveCanvasController *)self layerHost];
    v15 = [v12 canvasLayer];

    [v15 viewScale];
    if (v13 == v11 || vabdd_f64(v13, v11) < 0.00999999978 || v11 < 0.1 && v13 == 0.1)
    {
      if (v4)
      {
        v14 = 97;
      }

      else
      {
        v14 = 96;
      }

      [(CRLInteractiveCanvasController *)self scrollRectToVisible:v14 scrollOptions:x, y, width, height];
    }

    else
    {
      [(CRLInteractiveCanvasController *)self zoomWithAnimationToUnscaledRect:x, y, width, height];
    }
  }
}

+ (double)zoomAnimationDefaultDuration
{
  v2 = +[CRLCanvasLayer zoomAnimationDefaultCAAnimation];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CRLCanvasLayer zoomAnimationDefaultCAAnimation];
  [(CRLInteractiveCanvasController *)self zoomWithAnimation:v8 toUnscaledRect:x, y, width, height];
}

- (void)zoomWithAnimationToUnscaledRect:(CGRect)a3 withDuration:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = +[CRLCanvasLayer zoomAnimationDefaultCAAnimation];
  [v10 setDuration:a4];
  [(CRLInteractiveCanvasController *)self zoomWithAnimation:v10 toUnscaledRect:x, y, width, height];
}

- (void)zoomWithAnimation:(id)a3 toUnscaledRect:(CGRect)a4 layoutOffscreenContent:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a6;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  if (!CGRectIsNull(v56))
  {
    if (v7)
    {
      self->mPreviewVisibleUnscaledRectForTiling.origin.x = x;
      self->mPreviewVisibleUnscaledRectForTiling.origin.y = y;
      self->mPreviewVisibleUnscaledRectForTiling.size.width = width;
      self->mPreviewVisibleUnscaledRectForTiling.size.height = height;
      self->mShouldLayoutOffscreenContentForZoomAnimation = 1;
      [(CRLInteractiveCanvasController *)self invalidateVisibleBounds];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v15 = [(CRLInteractiveCanvasController *)self canvas];
      v16 = [v15 allReps];

      v17 = [v16 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v17)
      {
        v18 = *v52;
        do
        {
          v19 = 0;
          do
          {
            if (*v52 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v51 + 1) + 8 * v19) frameInUnscaledCanvas];
            self->mPreviewVisibleUnscaledRectForTiling.origin.x = sub_10011FC04(v20, v21, v22, v23, self->mPreviewVisibleUnscaledRectForTiling.origin.x, self->mPreviewVisibleUnscaledRectForTiling.origin.y, self->mPreviewVisibleUnscaledRectForTiling.size.width, self->mPreviewVisibleUnscaledRectForTiling.size.height);
            self->mPreviewVisibleUnscaledRectForTiling.origin.y = v24;
            self->mPreviewVisibleUnscaledRectForTiling.size.width = v25;
            self->mPreviewVisibleUnscaledRectForTiling.size.height = v26;
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v17);
      }

      [(CRLInteractiveCanvasController *)self invalidateVisibleBounds];
    }

    [(CRLInteractiveCanvasController *)self p_targetViewScaleForUnscaledRect:x, y, width, height];
    v28 = v27;
    v29 = [(CRLInteractiveCanvasController *)self layerHost];
    v30 = [v29 canvasLayer];

    [v30 minimumPinchViewScale];
    v32 = v31;
    [v30 maximumPinchViewScale];
    v45 = sub_1004C3240(v28, v32, v33);
    self->mRectToIncludeWhenGrowingCanvasToFitContent.origin.x = x;
    self->mRectToIncludeWhenGrowingCanvasToFitContent.origin.y = y;
    self->mRectToIncludeWhenGrowingCanvasToFitContent.size.width = width;
    self->mRectToIncludeWhenGrowingCanvasToFitContent.size.height = height;
    objc_initWeak(&location, self);
    [v30 contentInset];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = sub_100120414(x, y, width, height);
    v44 = v43;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10044739C;
    v46[3] = &unk_101863940;
    objc_copyWeak(&v48, &location);
    v49 = v7;
    v47 = v14;
    [v30 animateToViewScale:v13 contentCenter:v46 contentInset:v45 animation:v42 completionBlock:{v44, v35, v37, v39, v41}];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }
}

- (BOOL)shouldZoomOnSelectionChange
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CRLInteractiveCanvasController *)self delegate];
  v6 = [v5 zoomOnSelectionChange:self];

  return v6;
}

- (id)infoForSelectionPath:(id)a3
{
  v3 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:a3];
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CRLSelectionModelTranslator)selectionModelTranslator
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLInteractiveCanvasController *)self delegate];
    v6 = [v5 selectionModelTranslatorForInteractiveCanvasController:self];

    if (v6)
    {
      goto LABEL_22;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375B6C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375B80(v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375C50();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController selectionModelTranslator]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    v11 = [(CRLInteractiveCanvasController *)self delegate];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1682 isFatal:0 description:"ICC delegate %@ must respond to selectionModelTranslatorForInteractiveCanvasController", v11];
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101375C78();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101375CA0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101375D3C();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130F3A8(v12);
  }

  v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController selectionModelTranslator]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1684 isFatal:0 description:"invalid nil value for '%{public}s'", "selectionModelTranslator"];

  v6 = 0;
LABEL_22:

  return v6;
}

- (_TtC8Freeform16CRLContainerItem)containerForTopLevelInsertion
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLInteractiveCanvasController *)self delegate];
    v6 = [v5 containerForTopLevelInsertionForInteractiveCanvasController:self];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375D64();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375D78(v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375E48();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController containerForTopLevelInsertion]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    v11 = [(CRLInteractiveCanvasController *)self delegate];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1693 isFatal:0 description:"ICC delegate %@ does not respond to containerForTopLevelInsertion", v11];

    v5 = [(CRLInteractiveCanvasController *)self board];
    v6 = [v5 rootContainer];
  }

  v12 = v6;

  return v12;
}

- (id)infosForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v6 = [v5 infosForSelectionPath:v4];

  return v6;
}

- (NSSet)infosForCurrentSelectionPath
{
  v3 = [(CRLInteractiveCanvasController *)self editorController];
  v4 = [v3 selectionPath];
  v5 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:v4];

  return v5;
}

- (BOOL)currentSelectionPathContainsInfo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11 = sub_100303920(v4, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLCanvasElementInfo);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v11)
  {
    v12 = [(CRLInteractiveCanvasController *)self editorController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100447D00;
    v15[3] = &unk_10183ECE0;
    v15[4] = v11;
    v15[5] = &v16;
    [v12 enumerateEditorsOnStackUsingBlock:v15];

    v13 = *(v17 + 24);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13 & 1;
}

- (BOOL)hasSelection
{
  v3 = [(CRLInteractiveCanvasController *)self editorController];
  v4 = [v3 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v5 = objc_opt_class();
  v6 = [(CRLInteractiveCanvasController *)self editorController];
  v7 = [v6 selectionPath];
  v8 = [v7 mostSpecificSelectionOfClass:0];
  v9 = sub_100014370(v5, v8);

  v10 = [(CRLInteractiveCanvasController *)self infosForCurrentSelectionPath];
  v11 = [v10 count];

  if (!v11)
  {
    return 0;
  }

  return !v4 || v9 == 0;
}

- (BOOL)hasSelectedInfosInMultipleContainers
{
  v2 = [(CRLInteractiveCanvasController *)self editorController];
  v3 = [v2 selectionPath];
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 isCrossContainerSelection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)containersForSelection
{
  v2 = [(CRLInteractiveCanvasController *)self editorController];
  v3 = [v2 selectionPath];
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 containerGroups];
    v6 = [NSSet setWithArray:v5];
  }

  else
  {
    v6 = +[NSSet set];
  }

  return v6;
}

- (void)scrollCurrentSelectionToVisibleWithOptions:(unint64_t)a3
{
  v6 = [(CRLInteractiveCanvasController *)self editorController];
  v5 = [v6 selectionPath];
  [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v5 scrollOptions:a3];
}

- (id)selectionPathForSearchReference:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100013F00(v5, v4);

  v7 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v8 = [v6 selection];
  v9 = [v6 storage];
  v10 = [v7 selectionPathForSelection:v8 onStorage:v9];

  return v10;
}

- (void)scrollSearchReferenceToVisible:(id)a3 scrollOptions:(unint64_t)a4
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->mDelegate);
    [v8 willScrollSearchReferenceToVisible:v10];
  }

  v9 = [v10 selectionPath];
  [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v9 scrollOptions:a4];
}

- (void)setSelectionPath:(id)a3 withSelectionFlags:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x4000) != 0)
  {
    if ((a4 & 4) != 0)
    {
      if ((a4 & 0x200) != 0)
      {
        v9 = 9;
      }

      else
      {
        v9 = 1;
      }

      v11 = v6;
      goto LABEL_21;
    }

    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375E70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375E84(v7, v12);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375F18();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController setSelectionPath:withSelectionFlags:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1800 isFatal:0 description:"Caller set a selection path that does not want to set selection or scroll: %@", v7];
  }

  else
  {
    v8 = [(CRLInteractiveCanvasController *)self editorController];
    [v8 setSelectionPath:v7 withFlags:a4 & 0xFFFFFFFFFFFFBFFBLL];

    if ((a4 & 4) != 0)
    {
      if ((a4 & 0x200) != 0)
      {
        v9 = 9;
      }

      else
      {
        v9 = 1;
      }

      v10 = [(CRLInteractiveCanvasController *)self editorController];
      v11 = [v10 selectionPath];

LABEL_21:
      [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v11 scrollOptions:v9];
    }
  }
}

- (CGRect)rectInRootForScrollingToSelectionPath:(id)a3 onLayout:(id)a4 allowingZooming:(BOOL)a5
{
  if (a5)
  {
    [a4 rectInRootForZoomingToSelectionPath:a3];
  }

  else
  {
    [a4 rectInRootForSelectionPath:a3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- ($114667933B9B2D05530DD42EBD1EDB26)p_scrollingInformationForSelectionPath:(SEL)a3 allowZoom:(id)a4
{
  v8 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4010000000;
  v49 = &unk_1016A8115;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v51 = size;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  [(CRLInteractiveCanvasController *)self targetPointSize];
  v41[3] = v10;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_1016A8115;
  v17 = CGRectZero.size;
  v18 = CGRectZero.origin;
  v39 = CGRectZero.origin;
  v40 = v17;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1004486BC;
  v19[3] = &unk_101863A68;
  v22 = &v29;
  v11 = v8;
  v23 = v33;
  v24 = &v46;
  v20 = v11;
  v21 = self;
  v28 = a5;
  v25 = &v35;
  v26 = &v42;
  v27 = v41;
  [(CRLInteractiveCanvasController *)self forLayoutNearestVisibleRectForInfosForSelectionPath:v11 performBlock:v19];
  IsNull = CGRectIsNull(v47[1]);
  v13 = v47;
  if (IsNull)
  {
    v47[1].origin = v18;
    v13[1].size = v17;
  }

  v14 = v13[1].size;
  retstr->var0.origin = v13[1].origin;
  retstr->var0.size = v14;
  v15 = *(v36 + 3);
  retstr->var2.origin = *(v36 + 2);
  *&retstr->var3 = 0;
  retstr->var3 = *(v30 + 24);
  retstr->var2.size = v15;
  *&retstr->var1 = v43[3];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return result;
}

- (void)withLayoutForSelectionPath:(id)a3 flags:(unint64_t)a4 performBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(CRLInteractiveCanvasController *)self layoutIfNeeded];
  v9 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:v7];
  if ([v9 count] < 2)
  {
    v22 = [v9 anyObject];
  }

  else
  {
    v10 = [(CRLInteractiveCanvasController *)self canvas];
    [(CRLInteractiveCanvasController *)self visibleBoundsRect];
    [v10 convertBoundsToUnscaledRect:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v35;
      v24 = INFINITY;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v34 + 1) + 8 * i);
          [v26 rectInRootForSelectionPath:{v7, v34}];
          v31 = sub_1001202D8(v27, v28, v29, v30, v12, v14, v16, v18);
          if (v31 < v24)
          {
            v32 = v31;
            v33 = v26;

            v24 = v32;
            v22 = v33;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }
  }

  v8[2](v8, v22);
}

- (void)forLayoutNearestVisibleRectForInfosForSelectionPath:(id)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(CRLInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:*(*(&v13 + 1) + 8 * v11)];
        if (v12)
        {
          v6[2](v6, v12);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (CGRect)p_scaledRectToScrollToForSelectionPath:(id)a3 shouldCenterVertically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CRLInteractiveCanvasController *)self layoutIfNeeded];
  [(CRLInteractiveCanvasController *)self p_scrollingInformationForSelectionPath:v6 allowZoom:0];

  [(CRLInteractiveCanvasController *)self outsetSelectionRect:0, 0];
  [(CRLInteractiveCanvasController *)self p_contentOffsetToScrollRectToVisible:v4 shouldCenterVertically:0 forceCenteringVertically:0 forceCenteringHorizontally:?];
  [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CRLInteractiveCanvasController *)self layerHost];
  v16 = [v15 canvasView];

  v17 = [v16 enclosingScrollView];
  v18 = [v17 contentView];
  v19 = [v17 superview];
  [v18 convertRect:v19 fromView:{v8, v10, v12, v14}];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)scrollToCurrentSelectionPathAfterLayoutWithOptions:(unint64_t)a3
{
  if (!self->mIsFetchingEditorController)
  {
    [(CRLCanvas *)self->mCanvas i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
    v7 = [(CRLInteractiveCanvasController *)self editorController];
    v6 = [v7 selectionPath];
    [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v6 scrollOptions:a3];
  }
}

- (void)scrollToSelectionPath:(id)a3 scrollOptions:(unint64_t)a4
{
  v6 = ~a4;
  v7 = a3;
  if ((v6 & 0x180) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101375F40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101375F54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101375FDC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController scrollToSelectionPath:scrollOptions:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1945 isFatal:0 description:"Scroll options CRLCanvasScrollOptionWaitForViewLayoutIfNeeded and CRLCanvasScrollOptionScrollForcingLayoutIfNeeded are mutually exclusive"];
  }

  v11 = [(CRLInteractiveCanvasController *)self layerHost];
  v12 = [v11 canvasLayer];
  v13 = [v12 isLayoutDisabled];

  if ((v13 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->mDelegate);
      [v16 willScrollToSelectionPath:v7 onInteractiveCanvasController:self];
    }

    if (v7)
    {
      mSelectionPathToScrollTo = self->mSelectionPathToScrollTo;
      v18 = [v7 copy];
      v19 = self->mSelectionPathToScrollTo;
      self->mSelectionPathToScrollTo = v18;

      self->mOptionsForScrollingToSelection = a4;
      self->mSelectionShouldBeClearedInDidProcessAllChanges = 0;
      if (!mSelectionPathToScrollTo)
      {
        v20 = [(CRLInteractiveCanvasController *)self canvas];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100449060;
        v21[3] = &unk_10183AB38;
        v21[4] = self;
        [v20 performBlockAfterLayoutIfNecessary:v21];
      }
    }

    if ((a4 & 0x80) != 0)
    {
      [(CRLInteractiveCanvasController *)self layoutIfNeeded];
    }
  }
}

- (void)p_clearSelectionScrollingState
{
  mSelectionPathToScrollTo = self->mSelectionPathToScrollTo;
  self->mSelectionPathToScrollTo = 0;

  self->mOptionsForScrollingToSelection = 0;
}

- (double)p_safeAreaMargin
{
  v2 = [(CRLInteractiveCanvasController *)self canvasView];
  v3 = [v2 enclosingScrollView];

  [v3 safeAreaInsets];
  v5 = v4;
  [v3 safeAreaInsets];
  if (v5 < v6)
  {
    v5 = v6;
  }

  return v5;
}

- (CGPoint)p_computeClampedUnscaledContentOffsetWithTargetRect:(CGRect)a3 selectionContextRectWhenZooming:(CGRect)a4 viewScale:(double)a5 unscaledOutset:(double)dy
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  [(CRLInteractiveCanvasController *)self p_safeAreaMargin];
  v13 = -v12 / a5;
  v95.origin.x = v10;
  v95.origin.y = v9;
  v95.size.width = v8;
  v95.size.height = v7;
  v88 = v13;
  v96 = CGRectInset(v95, v13, 0.0);
  v14 = v96.origin.x;
  v15 = v96.origin.y;
  v16 = v96.size.width;
  v17 = v96.size.height;
  [(CRLInteractiveCanvasController *)self visibleBoundsRect];
  v19 = v18 / a5;
  v21 = v20 / a5;
  v22.super.isa = [(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent];
  v93 = v21;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v22, v23);
  v28 = sub_100120B08(v24, v25, v26, v27, v14, v15, v16, v17);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v97.origin.x = CGRectZero.origin.x;
  v97.origin.y = CGRectZero.origin.y;
  v97.size.width = CGRectZero.size.width;
  v97.size.height = CGRectZero.size.height;
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  if (CGRectEqualToRect(v97, v102))
  {
    v35 = v28;
  }

  else
  {
    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = width;
    v98.size.height = height;
    v99 = CGRectInset(v98, v88 + dy, dy);
    v35 = sub_100120B08(v28, v30, v32, v34, v99.origin.x, v99.origin.y, v99.size.width, v99.size.height);
    v30 = v36;
  }

  v92 = v30;
  v37 = [(CRLInteractiveCanvasController *)self layerHost];
  v38 = [v37 canvasLayer];

  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(CRLInteractiveCanvasController *)self viewScale];
    v48 = sub_10011FFD8(v40, v42, v44, v46, 1.0 / v47);
    v50 = v49;
    v52 = v51;
    v54 = v53;
  }

  else
  {
    v55 = [(CRLInteractiveCanvasController *)self canvas];
    [v55 unscaledSize];
    v48 = sub_10011ECB4();
    v50 = v56;
    v52 = v57;
    v54 = v58;

    v59 = [(CRLInteractiveCanvasController *)self canvas];
    v60 = [v59 isAnchoredAtRight];

    if (v60)
    {
      v48 = v48 - v52;
    }
  }

  v61 = [(CRLInteractiveCanvasController *)self canvas];
  [v61 contentInset];
  v63 = v48 + v62;
  v65 = v50 + v64;
  v67 = v52 - (v62 + v66);
  v69 = v54 - (v64 + v68);

  v100.origin.x = v63;
  v100.origin.y = v65;
  v100.size.width = v67;
  v100.size.height = v69;
  v70 = CGRectGetMaxX(v100) - v19;
  [v38 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  [(CRLInteractiveCanvasController *)self viewScale];
  v101.origin.x = sub_10011FFD8(v72, v74, v76, v78, 1.0 / v79);
  v80 = CGRectGetMaxY(v101) - v93;
  v81 = sub_1004C3240(v35, v63, v70);
  [(CRLInteractiveCanvasController *)self clampedUnscaledContentOffset:v81 forViewScale:sub_1004C3240(v92, v65, v80), a5];
  v83 = v82;
  v85 = v84;

  v86 = v83;
  v87 = v85;
  result.y = v87;
  result.x = v86;
  return result;
}

- (void)p_scrollToSelectionPath:(id)a3 scrollOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = a4 & 1;
  v8 = (a4 & 6) != 0;
  if ([(CRLInteractiveCanvasController *)self animatingViewScale])
  {
LABEL_2:
    if ([(CRLInteractiveCanvasController *)self textGesturesInFlight])
    {
      self->mDidSuppressScrollToSelectionDuringTextGestures = 1;
      self->mShouldAnimateScrollAfterTextGestures = v7;
    }

    goto LABEL_33;
  }

  if ([(CRLInteractiveCanvasController *)self textGesturesInFlight])
  {
    if (!v6 || (a4 & 0x10) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (!v6)
  {
    goto LABEL_2;
  }

  [(CRLInteractiveCanvasController *)self p_scrollingInformationForSelectionPath:v6 allowZoom:(a4 & 6) != 0];
  v9 = 0.0;
  v10 = (a4 >> 1) & 1;
  if ((a4 & 4) != 0)
  {
    [(CRLInteractiveCanvasController *)self viewScale];
    v9 = v11;
    LODWORD(v10) = 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v8)
    {
      [(CRLInteractiveCanvasController *)self p_safeAreaMargin];
      v53 = v12;
      v13 = [(CRLInteractiveCanvasController *)self layerHost];
      v14 = [v13 canvasLayer];

      [(CRLInteractiveCanvasController *)self fitWidthViewScale];
      v16 = v15;
      [v14 maximumPinchViewScale];
      v18 = sub_1004C3240(v9, v16, v17);
      if (!(v10 | (v18 < v9) & (a4 >> 2)))
      {
        v18 = v9;
      }

      v54 = v18;
      [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(CRLInteractiveCanvasController *)self visibleUnscaledRectForAutoscroll];
      v59.origin.x = v27;
      v59.origin.y = v28;
      v59.size.width = v29;
      v59.size.height = v30;
      v56.origin.x = v20;
      width = 0.0;
      v56.origin.y = v22;
      v56.size.width = v24;
      y = 0.0;
      v56.size.height = v26;
      height = 0.0;
      if (!CGRectEqualToRect(v56, v59))
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101376004();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137602C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013760B4();
        }

        v34 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v34);
        }

        v35 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_scrollToSelectionPath:scrollOptions:]"];
        v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
        [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:2207 isFatal:0 description:"Scrolling automatically in an unsupported configuration!"];
      }

      [(CRLInteractiveCanvasController *)self visibleBoundsRect];
      v38 = v54;
      v39 = v37 + -30.0 + v53 * -2.0;
      x = 0.0;
      if (0.0 * v54 > v39)
      {
        v41 = v39 / 0.0;
        [(CRLInteractiveCanvasController *)self fitWidthViewScale];
        v43 = v42;
        [v14 maximumPinchViewScale];
        v38 = sub_1004C3240(v41, v43, v44);
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
      }

      v55 = height;
      v45 = x;
      v57.origin.x = 0.0;
      v57.origin.y = 0.0;
      v57.size.width = 0.0;
      v57.size.height = 0.0;
      v58 = CGRectInset(v57, -15.0 / v38, -15.0 / v38);
      v46 = v58.origin.x;
      v47 = v58.origin.y;
      v48 = v58.size.width;
      v49 = v58.size.height;
      [(CRLInteractiveCanvasController *)self viewScale];
      if (v38 == v50 || vabdd_f64(v38, v50) < fabs(v50 * 0.000000999999997))
      {
        [(CRLInteractiveCanvasController *)self scrollRectToVisible:a4 & 0xFFFFFFFFFFFFFFF9 scrollOptions:v46, v47, v48, v49];
      }

      else
      {
        [(CRLInteractiveCanvasController *)self p_computeClampedUnscaledContentOffsetWithTargetRect:v46 selectionContextRectWhenZooming:v47 viewScale:v48 unscaledOutset:v49, v45, y, width, v55, *&v38, -15.0 / v38];
        [(CRLInteractiveCanvasController *)self setViewScale:v7 contentOffset:0 animated:v38 completionHandler:v51, v52];
      }
    }

    else
    {
      [(CRLInteractiveCanvasController *)self outsetSelectionRect:0.0, 0.0, 0.0, 0.0];
      [(CRLInteractiveCanvasController *)self scrollRectToVisible:a4 & 0xFFFFFFFFFFFFFFFDLL scrollOptions:?];
    }
  }

LABEL_33:
}

- (void)invalidateLayersForDecorator:(id)a3
{
  [(NSMutableSet *)self->mDecoratorsWithInvalidLayers addObject:a3];
  mCanvas = self->mCanvas;

  [(CRLCanvas *)mCanvas i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

- (BOOL)i_areLayersInvalidForDecorator:(id)a3
{
  if (self->mAllDecoratorLayersAreInvalid)
  {
    return 1;
  }

  else
  {
    return [(NSMutableSet *)self->mDecoratorsWithInvalidLayers containsObject:a3];
  }
}

- (void)invalidateCollaboratorHUDControllers
{
  if ([(CRLInteractiveCanvasController *)self p_areAnyCollaboratorsPresent])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:*(*(&v8 + 1) + 8 * v7)];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)setShouldSuppressRendering:(BOOL)a3 animated:(BOOL)a4
{
  if (self->mShouldSuppressRendering != a3)
  {
    self->mShouldSuppressRendering = a3;
    if (!a3)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(CRLCanvas *)self->mCanvas topLevelReps];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"setNeedsDisplay"];
          }

          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }

    [(CRLInteractiveCanvasController *)self invalidateAllLayers];
  }
}

- (void)updateRenderableForRep:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013760DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013760F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376178();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController updateRenderableForRep:usingBlock:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:2317 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v11 = [(CRLInteractiveCanvasController *)self renderableForRep:v6];
  if (v11)
  {
    v7[2](v7, v11);
  }
}

- (void)didExitPreviewMode
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"didExitPreviewMode"];
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setupTextInputResponder
{
  v3 = [(CRLInteractiveCanvasController *)self textInputResponder];

  if (!v3)
  {
    v4 = objc_alloc([(CRLInteractiveCanvasController *)self textInputResponderClass]);
    v5 = [(CRLInteractiveCanvasController *)self layerHost];
    v6 = [v5 canvasView];
    v7 = [v4 initWithNextResponder:v6 icc:self];
    [(CRLInteractiveCanvasController *)self setTextInputResponder:v7];

    v8 = [(CRLInteractiveCanvasController *)self editorController];
    v11 = [v8 textInputEditor];

    v9 = [(CRLInteractiveCanvasController *)self textInputResponder];
    [v9 setEditor:v11 withFlags:0];

    v10 = [(CRLInteractiveCanvasController *)self textInputResponder];
    [v10 reloadInputViews];
  }
}

- (void)teardownTextInputResponder
{
  mTextInputResponder = self->mTextInputResponder;
  if (mTextInputResponder)
  {
    self->mTextInputResponder = 0;
  }
}

- (void)resumeEditing
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863B48);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLInteractiveCanvasController resumeEditing]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m";
    v25 = 1024;
    v26 = 2598;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101863B68);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController resumeEditing]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2598 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLInteractiveCanvasController resumeEditing]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (@"CRLScenesDebugView" == a6)
  {
    [(CRLInteractiveCanvasController *)self p_updateInfosToDisplayIfNeeded];
  }

  else if (off_1019F04D8 == a6)
  {
    [(CRLInteractiveCanvasController *)self recreateAllLayoutsAndReps];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLInteractiveCanvasController;
    [(CRLInteractiveCanvasController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)p_editorControllerDidChangeTextInputEditor:(id)a3
{
  v16 = a3;
  v4 = [v16 object];
  v5 = [v4 textInputEditor];
  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL____TtP8Freeform18CRLTextInputEditor_);

  if (v12)
  {
    [(CRLInteractiveCanvasController *)self setupTextInputResponder];
  }

  v13 = [v16 userInfo];
  v14 = [v13 objectForKey:@"CRLEditorControllerSelectionFlagsKey"];
  v15 = [v14 unsignedIntegerValue];

  [(CRLInteractiveCanvasController *)self setTextResponderEditorTo:v12 withFlags:v15];
}

- (void)p_editorControllerSelectionPathDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    [v7 selectionDidChange];
  }

  v8 = [v4 userInfo];
  v18 = [v8 objectForKeyedSubscript:@"CRLEditorControllerOldSelectionPathKey"];

  v9 = [(CRLInteractiveCanvasController *)self editorController];
  v10 = [v9 selectionPath];

  [(CRLInteractiveCanvasController *)self p_selectionPathDidChangeFromSelectionPath:v18 toSelectionPath:v10];
  [(CRLInteractiveCanvasController *)self p_notifyRepsForChangeFromSelectionPath:v18 toSelectionPath:v10];
  v11 = objc_loadWeakRetained(&self->mLayerHost);
  [v11 selectionPathDidChangeFromSelectionPath:v18 toSelectionPath:v10];

  [(CRLInteractiveCanvasController *)self updateMultiselectResizeInfoIfNeeded];
  v12 = [v4 userInfo];

  v13 = [v12 objectForKey:@"CRLEditorControllerSelectionFlagsKey"];
  v14 = [v13 unsignedIntegerValue];

  v15 = (v14 >> 1) & 1;
  if (self->mTextGesturesInFlight)
  {
    if ((v14 & 4) != 0)
    {
      self->mDidSuppressScrollToSelectionDuringTextGestures = 1;
      self->mShouldAnimateScrollAfterTextGestures = (v14 & 2) != 0;
    }
  }

  else
  {
    [(CRLInteractiveCanvasController *)self p_selectionDoneChangingWithFlags:v14];
    if ((v14 & 4) != 0)
    {
      v16 = [(CRLInteractiveCanvasController *)self editorController];
      v17 = [v16 selectionPath];
      [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v17 scrollOptions:v15];
    }
  }

  [(CRLInteractiveCanvasController *)self updateTipsBasedOnSelection:v10];
}

- (void)updateMultiselectResizeInfoIfNeeded
{
  v3 = [(CRLInteractiveCanvasController *)self p_shouldSuppressMultiselectResizeInfo];
  v4 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v5 = [(CRLInteractiveCanvasController *)self editorController];
  v6 = [v5 selectionPath];
  v7 = [v4 unlockedBoardItemsForSelectionPath:v6];

  v8 = [v7 objectsPassingTest:&stru_101863B88];
  if (!-[CRLInteractiveCanvasController displaysMultiselectionWithSingleBounds](self, "displaysMultiselectionWithSingleBounds") || (v3 & 1) != 0 || [v8 count] < 2)
  {
    mMultiselectResizeInfo = self->mMultiselectResizeInfo;
    if (!mMultiselectResizeInfo)
    {
      v11 = 0;
      goto LABEL_30;
    }

    v11 = [(CRLMultiselectResizeInfo *)mMultiselectResizeInfo parentInfo];
    v14 = self->mMultiselectResizeInfo;
    self->mMultiselectResizeInfo = 0;

    goto LABEL_8;
  }

  v9 = [(CRLInteractiveCanvasController *)self topLevelContainerInfoForEditing];
  v10 = [(CRLMultiselectResizeInfo *)self->mMultiselectResizeInfo parentInfo];

  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(CRLMultiselectResizeInfo *)self->mMultiselectResizeInfo parentInfo];
    v12 = self->mMultiselectResizeInfo;
    self->mMultiselectResizeInfo = 0;
  }

  v35 = self->mMultiselectResizeInfo;
  v36 = v35;
  if (!v35)
  {
    v37 = [[_TtC8Freeform24CRLMultiselectResizeInfo alloc] initWithParentInfo:v9];
    v38 = self->mMultiselectResizeInfo;
    self->mMultiselectResizeInfo = v37;

    v36 = self->mMultiselectResizeInfo;
  }

  v39 = [(CRLInteractiveCanvasController *)self canvas];
  v40 = [v39 layoutController];
  [(CRLMultiselectResizeInfo *)v36 setRepresentedSelectedBoardItems:v8 currentlyLaidOutWith:v40];

  v41 = objc_opt_class();
  v42 = [(CRLInteractiveCanvasController *)self repForInfo:self->mMultiselectResizeInfo];
  v43 = sub_100013F00(v41, v42);

  [v43 selectionDidChange];
  if (!v35)
  {
LABEL_8:
    v45 = v8;
    v46 = v7;
    v15 = [(CRLInteractiveCanvasController *)self topLevelContainerRepForEditing];
    v16 = [v15 layout];
    [v16 invalidateChildren];

    v17 = objc_opt_class();
    v23 = sub_100303920(v11, v17, 1, v18, v19, v20, v21, v22, &OBJC_PROTOCOL___CRLCanvasElementInfo);
    if (v23)
    {
      v24 = [(CRLInteractiveCanvasController *)self layoutsForInfo:v23];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v52;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v52 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v51 + 1) + 8 * i) invalidateChildren];
          }

          v26 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v26);
      }
    }

    v44 = v23;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = [(CRLCanvas *)self->mCanvas topLevelReps];
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v47 + 1) + 8 * j);
          [v34 recursivelyPerformSelectorIfImplemented:"i_invalidateSelectionHighlightRenderable"];
          [v34 recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v31);
    }

    [(CRLInteractiveCanvasController *)self p_updateInfosToDisplayIfNeeded];
    v8 = v45;
    v7 = v46;
  }

LABEL_30:
}

- (BOOL)p_shouldSuppressMultiselectResizeInfo
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    v5 = [v4 wantsToSuppressMultiselectionWithSingleBoundsForInteractiveCanvasController:self];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(CRLInteractiveCanvasController *)self wantsToSuppressMultiselectionForPenTool];
}

- (void)p_notifyRepsForChangeFromSelectionPath:(id)a3 toSelectionPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
    v8 = [v7 boardItemsForSelectionPath:v11];

    if (v6)
    {
LABEL_3:
      v9 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
      v10 = [v9 boardItemsForSelectionPath:v6];

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  [(CRLInteractiveCanvasController *)self p_notifyRepsForSelectionChangeFrom:v8 to:v10];
}

- (void)p_notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v34 = v6;
    v8 = [v6 mutableCopy];
    v9 = v8;
    if (v7)
    {
      [v8 minusSet:v7];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v49;
      do
      {
        v14 = 0;
        do
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v48 + 1) + 8 * v14);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v16 = [(CRLInteractiveCanvasController *)self repsForInfo:v15];
          v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v45;
            do
            {
              v20 = 0;
              do
              {
                if (*v45 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v44 + 1) + 8 * v20) becameNotSelected];
                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v18);
          }

          v14 = v14 + 1;
        }

        while (v14 != v12);
        v12 = [v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v12);
    }

    v6 = v34;
  }

  if (v7 && [v7 count])
  {
    v21 = [v7 mutableCopy];
    v22 = v21;
    if (v6)
    {
      [v21 minusSet:v6];
    }

    v35 = v6;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        v27 = 0;
        do
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v40 + 1) + 8 * v27);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v29 = [(CRLInteractiveCanvasController *)self repsForInfo:v28];
          v30 = [v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v37;
            do
            {
              v33 = 0;
              do
              {
                if (*v37 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [*(*(&v36 + 1) + 8 * v33) becameSelected];
                v33 = v33 + 1;
              }

              while (v31 != v33);
              v31 = [v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
            }

            while (v31);
          }

          v27 = v27 + 1;
        }

        while (v27 != v25);
        v25 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v25);
    }

    v6 = v35;
  }
}

- (void)p_editorControllerSelectionDidChangeAndWantsKeyboard:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"CRLEditorControllerOldSelectionPathKey"];

  v5 = [(CRLInteractiveCanvasController *)self editorController];
  v6 = [v5 selectionPath];

  [(CRLInteractiveCanvasController *)self p_selectionPathDidChangeFromSelectionPath:v7 toSelectionPath:v6];
  [(CRLInteractiveCanvasController *)self p_selectionDoneChangingWithFlags:0];
}

- (CRLCanvasView)canvasView
{
  v2 = [(CRLInteractiveCanvasController *)self layerHost];
  v3 = [v2 canvasView];

  return v3;
}

- (CRLCanvasLayer)canvasLayer
{
  v2 = [(CRLInteractiveCanvasController *)self layerHost];
  v3 = [v2 canvasLayer];

  return v3;
}

- (CGColor)canvasEdgeBackgroundColor
{
  if (self->mDynamicallyZooming)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor secondarySystemBackgroundColor];
  }
  v2 = ;
  v3 = [v2 CGColor];

  return v3;
}

- (double)viewScale
{
  v2 = [(CRLInteractiveCanvasController *)self layerHost];
  v3 = [v2 canvasLayer];
  [v3 viewScale];
  v5 = v4;

  return v5;
}

- (void)setViewScale:(double)a3
{
  v5 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v5 canvasLayer];
  [v4 setViewScale:a3];
}

- (double)currentViewScale
{
  if (self->mDynamicallyZooming)
  {
    return self->mDynamicViewScale;
  }

  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasLayer];
  [v4 viewScale];
  v6 = v5;

  return v6;
}

- (double)fitWidthViewScale
{
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasLayer];

  [(CRLInteractiveCanvasController *)self visibleBoundsRect];
  v6 = v5;
  [(CRLCanvas *)self->mCanvas unscaledSize];
  v8 = v6 / v7;
  [v4 minimumPinchViewScale];
  v10 = v9;
  [v4 maximumPinchViewScale];
  v12 = sub_1004C3240(v8, v10, v11);

  return v12;
}

- (CGSize)canvasScrollingOutset
{
  v2 = 600.0;
  v3 = 600.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldResizeCanvasToScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      v6 = [v5 shouldResizeCanvasToScrollView];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 source:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v11 = [a6 copy];
  mCurrentInteractionSource = self->mCurrentInteractionSource;
  self->mCurrentInteractionSource = v11;

  [(CRLInteractiveCanvasController *)self setViewScale:v6 contentOffset:0 animated:a3 completionHandler:x, y];
  v13 = self->mCurrentInteractionSource;
  self->mCurrentInteractionSource = 0;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v28 = a6;
  v11 = 0.0;
  if (v6)
  {
    [objc_opt_class() defaultAutoZoomAnimationDuration];
    v11 = v12;
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      [v15 viewScaleZoomAnimationDurationForInteractiveCanvasController:self];
      v11 = v16;
    }
  }

  [(CRLInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y, a3];
  v18 = v17;
  v20 = v19;
  v21 = [(CRLInteractiveCanvasController *)self canvasView];
  v22 = [v21 window];
  [v22 bounds];
  v24 = v23;
  v26 = v25;

  if (v24 <= v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  [(CRLInteractiveCanvasController *)self animateToViewScale:v27 contentOffset:v28 duration:a3 orientation:v18 completionHandler:v20, v11];
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 forViewScale:(double)a4
{
  v6 = [(CRLInteractiveCanvasController *)self layerHost];
  v7 = [v6 canvasLayer];

  [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
  v8 = 1.0 / a4;
  v11 = sub_10011F340(v9, v10, v8);
  v64 = v12;
  [v7 contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v8 * v17;
  v20 = v8 * v19;
  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [v7 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(CRLInteractiveCanvasController *)self viewScale];
    v30 = sub_10011FFD8(v22, v24, v26, v28, 1.0 / v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {
    v63 = v8 * v16;
    v37 = v11;
    v38 = v8 * v14;
    [v7 unscaledSize];
    v39 = sub_10011ECB4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(CRLInteractiveCanvasController *)self canvas];
    v47 = [v46 isAnchoredAtRight];

    if (v47)
    {
      v39 = v39 - v43;
    }

    [(CRLInteractiveCanvasController *)self viewScale];
    v49 = 1.0 / v48;
    v50 = v38 * v49;
    v11 = v37;
    v30 = v39 + v20 * v49;
    v32 = v41 + v18 * v49;
    v34 = v43 - (v20 * v49 + v63 * v49);
    v36 = v45 - (v18 * v49 + v50);
  }

  v67.origin.x = v30;
  v67.origin.y = v32;
  v67.size.width = v34;
  v67.size.height = v36;
  MaxY = CGRectGetMaxY(v67);
  v52 = [(CRLInteractiveCanvasController *)self canvas];
  v53 = [v52 isAnchoredAtRight];

  if (v53)
  {
    v54 = -(v11 + v20);
    if (v30 > v54)
    {
      v30 = -(v11 + v20);
    }
  }

  else
  {
    v68.origin.x = v30;
    v68.origin.y = v32;
    v68.size.width = v34;
    v68.size.height = v36;
    v55 = CGRectGetMaxX(v68) - v11;
    v56 = [(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent];
    if (v55 >= v20)
    {
      v57 = v55;
    }

    else
    {
      v57 = v20;
    }

    if (v56)
    {
      v54 = v55;
    }

    else
    {
      v54 = v57;
    }
  }

  if (MaxY - v64 >= v18)
  {
    v58 = MaxY - v64;
  }

  else
  {
    v58 = v18;
  }

  v59 = sub_1004C3240(a3.x, v30, v54);
  v60 = sub_1004C3240(a3.y, v32, v58);

  v61 = v59;
  v62 = v60;
  result.y = v62;
  result.x = v61;
  return result;
}

- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 maintainPosition:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = [(CRLInteractiveCanvasController *)self layerHost];
  v13 = [v14 canvasLayer];
  [v13 setViewScale:v7 andScrollViewFrame:v6 maintainPosition:a3 animated:{x, y, width, height}];
}

- (void)setViewScale:(double)a3 andScrollViewFrame:(CGRect)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = [(CRLInteractiveCanvasController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CRLInteractiveCanvasController *)self delegate];
    v15 = [v14 interactiveCanvasControllerShouldMaintainPositionOnSetViewScale:self];
  }

  else
  {
    v15 = 1;
  }

  v17 = [(CRLInteractiveCanvasController *)self layerHost];
  v16 = [v17 canvasLayer];
  [v16 setViewScale:v15 andScrollViewFrame:v5 maintainPosition:a3 animated:{x, y, width, height}];
}

- (CGRect)unobscuredFrameOfView:(id)a3
{
  [(CRLInteractiveCanvasController *)self p_unosbcuredFrameOfView:a3 includingObscuringRectangles:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_unosbcuredFrameOfView:(id)a3 includingObscuringRectangles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013761A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013761B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137623C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_unosbcuredFrameOfView:includingObscuringRectangles:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2997 isFatal:0 description:"Cannot calculate unobscured frame without view"];
  }

  [v6 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CRLInteractiveCanvasController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(CRLInteractiveCanvasController *)self delegate];
    [v20 safeAreaLayoutFrameForInteractiveCanvasController:self];
    v11 = v21;
    v13 = v22;
    v15 = v23;
    v17 = v24;
  }

  if (v4)
  {
    v25 = [(CRLInteractiveCanvasController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = [(CRLInteractiveCanvasController *)self delegate];
      v28 = [v27 rectanglesObscuringView:v6];
    }

    else
    {
      v28 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v45 + 1) + 8 * i) CGRectValue];
          v11 = sub_1001218BC(v11, v13, v15, v17, v34, v35, v36, v37);
          v13 = v38;
          v15 = v39;
          v17 = v40;
        }

        v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v31);
    }
  }

  v41 = v11;
  v42 = v13;
  v43 = v15;
  v44 = v17;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)p_updateUnobscuredFrame
{
  v3 = [(CRLInteractiveCanvasController *)self canvasView];
  v4 = [v3 enclosingScrollView];

  v5 = [v4 superview];

  if (v5)
  {
    [(CRLInteractiveCanvasController *)self unobscuredFrameOfView:v4];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    if (CGRectGetHeight(v29) == 0.0 || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectGetWidth(v30) == 0.0))
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
    v32.origin.x = v10;
    v32.origin.y = v11;
    v32.size.width = v12;
    v32.size.height = v13;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectEqualToRect(v31, v32))
    {
      [(CRLInteractiveCanvasController *)self invalidateReps];
    }

    [(CRLInteractiveCanvasController *)self setUnobscuredScrollViewFrame:x, y, width, height];
    [(CRLInteractiveCanvasController *)self p_unosbcuredFrameOfView:v4 includingObscuringRectangles:0];
    self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.origin.x = v14;
    self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.origin.y = v15;
    self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.size.width = v16;
    self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.size.height = v17;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [(CRLInteractiveCanvasController *)self i_decorators];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (objc_opt_respondsToSelector())
          {
            [v23 unobscuredFrameDidChange];
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v20);
    }
  }
}

- (void)unobscuredFrameDidChange
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[CRLInteractiveCanvasController unobscuredScrollViewFrame](self, "unobscuredScrollViewFrame"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, -[CRLInteractiveCanvasController delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [v13 interactiveCanvasControllerWillChangeUnobscuredFrame:self], v13, -[CRLInteractiveCanvasController unobscuredScrollViewFrame](self, "unobscuredScrollViewFrame"), v16.origin.x = v6, v16.origin.y = v8, v16.size.width = v10, v16.size.height = v12, CGRectEqualToRect(v15, v16)))
  {

    [(CRLInteractiveCanvasController *)self p_updateUnobscuredFrame];
  }
}

- (CGRect)unobscuredScrollViewFrame
{
  v18.origin.x = CGRectZero.origin.x;
  v18.origin.y = CGRectZero.origin.y;
  v18.size.width = CGRectZero.size.width;
  v18.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(self->mUnobscuredScrollViewFrame, v18))
  {
    v3 = [(CRLInteractiveCanvasController *)self canvasView];
    v4 = [v3 enclosingScrollView];
    [v4 frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = self->mUnobscuredScrollViewFrame.origin.x;
    y = self->mUnobscuredScrollViewFrame.origin.y;
    width = self->mUnobscuredScrollViewFrame.size.width;
    height = self->mUnobscuredScrollViewFrame.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)p_unobscuredScrollViewFrameIgnoringObscuringRectangles
{
  v18.origin.x = CGRectZero.origin.x;
  v18.origin.y = CGRectZero.origin.y;
  v18.size.width = CGRectZero.size.width;
  v18.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles, v18))
  {
    v3 = [(CRLInteractiveCanvasController *)self canvasView];
    v4 = [v3 enclosingScrollView];
    [v4 frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.origin.x;
    y = self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.origin.y;
    width = self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.size.width;
    height = self->mUnobscuredScrollViewFrameIgnoringObscuringRectangles.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)p_contentOffsetToScrollRectToVisible:(CGRect)a3 shouldCenterVertically:(BOOL)a4 forceCenteringVertically:(BOOL)a5 forceCenteringHorizontally:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = [(CRLInteractiveCanvasController *)self layerHost];
  v15 = [v14 canvasLayer];

  [v15 contentInset];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [v15 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(CRLInteractiveCanvasController *)self viewScale];
    v33 = sub_10011FFD8(v25, v27, v29, v31, 1.0 / v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;
  }

  else
  {
    [v15 unscaledSize];
    rect = x;
    rect_8 = y;
    v40 = height;
    v41 = sub_10011ECB4();
    rect_16 = width;
    v43 = v42;
    v45 = v44;
    r2 = v46;
    v47 = [(CRLInteractiveCanvasController *)self canvas];
    v48 = [v47 isAnchoredAtRight];

    if (v48)
    {
      v41 = v41 - v45;
    }

    [(CRLInteractiveCanvasController *)self viewScale];
    v50 = 1.0 / v49;
    v33 = v41 + v19 * v50;
    height = v40;
    v35 = v43 + v17 * v50;
    width = rect_16;
    v37 = v45 - (v19 * v50 + v23 * v50);
    x = rect;
    y = rect_8;
    v39 = r2 - (v17 * v50 + v21 * v50);
  }

  v197.origin.x = x;
  v197.origin.y = y;
  v197.size.width = width;
  v197.size.height = height;
  v198 = CGRectIntersection(v197, *&v33);
  v51 = v198.origin.x;
  v52 = v198.origin.y;
  v53 = v198.size.width;
  v54 = v198.size.height;
  v55 = [(CRLInteractiveCanvasController *)self layerHost];
  v56 = [v55 canvasView];

  v57 = [v56 enclosingScrollView];
  [(CRLInteractiveCanvasController *)self contentOffset];
  [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsPoint:?];
  v59 = v58;
  v61 = v60;
  v199.origin.x = v51;
  v199.origin.y = v52;
  v199.size.width = v53;
  v199.size.height = v54;
  if (!CGRectIsEmpty(v199))
  {
    [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsRect:v51, v52, v53, v54];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = [(CRLInteractiveCanvasController *)self canvas];
    [v70 contentsScale];
    v72 = sub_1001221E8(v63, v65, v67, v69, v71);
    v74 = v73;
    v76 = v75;
    r2a = v77;

    v78 = [v57 superview];

    if (!v78)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101376264();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101376278();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101376300();
      }

      v79 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v79);
      }

      v80 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_contentOffsetToScrollRectToVisible:shouldCenterVertically:forceCenteringVertically:forceCenteringHorizontally:]"];
      v81 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v80 file:v81 lineNumber:3127 isFatal:0 description:"We expect a superview for bounds calculation"];
    }

    recta = v72;
    v176 = v76;
    v178 = v74;
    rect_16a = v61;
    v175 = v59;
    [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = [v57 superview];
    [v56 convertRect:v90 fromView:{v83, v85, v87, v89}];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;

    [(CRLInteractiveCanvasController *)self p_safeAreaLayoutGuideLayoutFrame];
    [v56 convertRect:v57 fromView:?];
    v99 = v200.origin.x;
    v100 = v200.origin.y;
    v101 = v200.size.width;
    v102 = v200.size.height;
    if (CGRectIsEmpty(v200) || (v201.origin.x = v99, v201.origin.y = v100, v201.size.width = v101, v201.size.height = v102, v240.origin.x = v92, v240.origin.y = v94, v240.size.width = v96, v240.size.height = v98, !CGRectIntersectsRect(v201, v240)))
    {
      v61 = rect_16a;
      v105 = v176;
      v106 = recta;
      v103 = v96;
      v104 = v98;
    }

    else
    {
      v202.origin.x = v99;
      v202.origin.y = v100;
      v202.size.width = v101;
      v202.size.height = v102;
      v241.origin.x = v92;
      v241.origin.y = v94;
      v241.size.width = v96;
      v241.size.height = v98;
      v203 = CGRectIntersection(v202, v241);
      v92 = v203.origin.x;
      v94 = v203.origin.y;
      v103 = v203.size.width;
      v104 = v203.size.height;
      v61 = rect_16a;
      v105 = v176;
      v106 = recta;
    }

    v107 = v178;
    v173 = v92;
    v174 = v94;
    rect_8a = v104;
    if (a4 || v7)
    {
      v212.origin.x = v92;
      v212.origin.y = v94;
      v212.size.width = v103;
      v212.size.height = v104;
      v242.origin.x = v106;
      v242.origin.y = v178;
      v242.size.width = v105;
      v112 = r2a;
      v242.size.height = r2a;
      if (!CGRectContainsRect(v212, v242) || v7)
      {
        sub_100120414(v106, v178, v105, r2a);
        v107 = v118 + v104 * -0.5;
        if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
        {
          v112 = v104;
          v61 = v107;
        }

        else
        {
          v179 = v103;
          [v15 unscaledSize];
          [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsRect:sub_10011ECB4()];
          v156 = v155;
          v158 = v157;
          v160 = v159;
          v162 = v161;
          [v15 contentInset];
          v164 = v158 + v163;
          v172 = v156;
          rect_16c = v160;
          r2c = v162;
          if (sub_10011EF14(v156, v164, v160, v162, v106, v107, v105, v104))
          {
            v112 = v104;
            v61 = v107;
            v103 = v179;
          }

          else
          {
            v165 = sub_100120B08(v106, v107, v105, v104, v156, v164, v160, v162);
            v61 = v166;
            v168 = v167;
            v170 = v169;
            v171 = v165;
            if (!sub_10011EF14(v172, v164, rect_16c, r2c, v165, v166, v169, v167))
            {
              v238.origin.x = v171;
              v238.origin.y = v61;
              v238.size.width = v170;
              v238.size.height = v168;
              v244.origin.x = v172;
              v244.origin.y = v164;
              v244.size.width = rect_16c;
              v244.size.height = r2c;
              v239 = CGRectIntersection(v238, v244);
              v61 = v239.origin.y;
            }

            v112 = v104;
            v105 = v176;
            v103 = v179;
            v106 = recta;
          }
        }
      }
    }

    else
    {
      v204.origin.x = v92;
      v204.origin.y = v94;
      v204.size.width = v103;
      v204.size.height = v104;
      MaxY = CGRectGetMaxY(v204);
      v205.size.width = v105;
      v205.origin.y = v178;
      v109 = v103;
      v110 = MaxY;
      v205.origin.x = v106;
      v111 = v94;
      v112 = r2a;
      v205.size.height = r2a;
      if (v110 <= CGRectGetMaxY(v205) || (v206.origin.x = v92, v206.origin.y = v111, v206.size.width = v109, v206.size.height = rect_8a, v113 = CGRectGetMinY(v206), v207.origin.x = v106, v207.origin.y = v178, v207.size.width = v105, v207.size.height = r2a, v113 <= CGRectGetMinY(v207)))
      {
        v213.origin.x = v92;
        v213.origin.y = v111;
        v213.size.width = v109;
        v213.size.height = rect_8a;
        MinY = CGRectGetMinY(v213);
        v214.origin.x = v106;
        v214.origin.y = v178;
        v214.size.width = v105;
        v214.size.height = r2a;
        if (MinY >= CGRectGetMinY(v214) || (v215.origin.x = v92, v215.origin.y = v111, v215.size.width = v109, v215.size.height = rect_8a, v120 = CGRectGetMaxY(v215), v216.origin.x = v106, v216.origin.y = v178, v216.size.width = v105, v216.size.height = r2a, v120 >= CGRectGetMaxY(v216)))
        {
          v103 = v109;
          v104 = rect_8a;
          v61 = rect_16a;
        }

        else
        {
          v217.origin.x = v106;
          v217.origin.y = v178;
          v217.size.width = v105;
          v217.size.height = r2a;
          v121 = CGRectGetMinY(v217);
          v218.origin.x = v92;
          v218.origin.y = v111;
          v122 = v109;
          v218.size.width = v109;
          v104 = rect_8a;
          v218.size.height = rect_8a;
          v123 = v121 - CGRectGetMinY(v218);
          v219.origin.x = recta;
          v219.origin.y = v178;
          v219.size.width = v105;
          v219.size.height = r2a;
          v124 = CGRectGetMaxY(v219);
          v220.origin.x = v92;
          v220.origin.y = v111;
          v220.size.width = v122;
          v220.size.height = rect_8a;
          v125 = v124 - CGRectGetMaxY(v220);
          if (v123 < v125)
          {
            v125 = v123;
          }

          v106 = recta;
          v61 = rect_16a + v125;
          v103 = v122;
          v107 = v178;
        }
      }

      else
      {
        v208.origin.x = v92;
        v208.origin.y = v111;
        v103 = v109;
        v208.size.width = v109;
        v104 = rect_8a;
        v208.size.height = rect_8a;
        v177 = CGRectGetMaxY(v208);
        v209.origin.x = v106;
        v209.origin.y = v178;
        v209.size.width = v105;
        v209.size.height = r2a;
        v114 = v177 - CGRectGetMaxY(v209);
        v210.origin.x = v92;
        v210.origin.y = v111;
        v210.size.width = v103;
        v210.size.height = rect_8a;
        v115 = CGRectGetMinY(v210);
        v211.origin.x = recta;
        v211.origin.y = v178;
        v211.size.width = v105;
        v211.size.height = r2a;
        v116 = v115 - CGRectGetMinY(v211);
        if (v114 < v116)
        {
          v116 = v114;
        }

        v106 = recta;
        v61 = rect_16a - v116;
      }
    }

    if (!v6)
    {
      rect_16b = v61;
      v222.origin.x = v173;
      v222.origin.y = v174;
      v222.size.width = v103;
      v222.size.height = v104;
      v141 = v103;
      MaxX = CGRectGetMaxX(v222);
      v223.origin.x = v106;
      v223.origin.y = v107;
      v223.size.width = v105;
      v223.size.height = v112;
      if (MaxX <= CGRectGetMaxX(v223) || (v224.origin.x = v173, v224.origin.y = v174, v224.size.width = v141, v224.size.height = rect_8a, v143 = CGRectGetMinX(v224), v225.origin.x = v106, v225.origin.y = v107, v225.size.width = v105, v225.size.height = v112, v143 <= CGRectGetMinX(v225)))
      {
        v230.origin.x = v173;
        v230.origin.y = v174;
        v230.size.width = v141;
        v230.size.height = rect_8a;
        MinX = CGRectGetMinX(v230);
        v231.origin.x = v106;
        v231.origin.y = v107;
        v231.size.width = v105;
        v231.size.height = v112;
        if (MinX >= CGRectGetMinX(v231) || (v232.origin.x = v173, v232.origin.y = v174, v232.size.width = v141, v232.size.height = rect_8a, v147 = CGRectGetMaxX(v232), v233.origin.x = v106, v233.origin.y = v107, v233.size.width = v105, v233.size.height = v112, v147 >= CGRectGetMaxX(v233)))
        {
          v59 = v175;
        }

        else
        {
          v234.origin.x = v106;
          v234.origin.y = v107;
          v234.size.width = v105;
          v234.size.height = v112;
          rectd = CGRectGetMinX(v234);
          v235.origin.x = v173;
          v235.origin.y = v174;
          v235.size.width = v141;
          v235.size.height = rect_8a;
          v148 = CGRectGetMinX(v235);
          v149 = v106;
          v150 = rectd - v148;
          v236.origin.x = v149;
          v236.origin.y = v107;
          v236.size.width = v105;
          v236.size.height = v112;
          v151 = CGRectGetMaxX(v236);
          v237.origin.x = v173;
          v237.origin.y = v174;
          v237.size.width = v141;
          v237.size.height = rect_8a;
          v152 = v151 - CGRectGetMaxX(v237);
          if (v150 < v152)
          {
            v152 = v150;
          }

          v59 = v175 + v152;
        }
      }

      else
      {
        v226.origin.x = v173;
        v226.origin.y = v174;
        v226.size.width = v141;
        v226.size.height = rect_8a;
        rectc = CGRectGetMaxX(v226);
        v227.origin.x = v106;
        v227.origin.y = v107;
        v227.size.width = v105;
        v227.size.height = v112;
        rectb = rectc - CGRectGetMaxX(v227);
        v228.origin.x = v173;
        v228.origin.y = v174;
        v228.size.width = v141;
        v228.size.height = rect_8a;
        v144 = CGRectGetMinX(v228);
        v229.origin.x = v106;
        v229.origin.y = v107;
        v229.size.width = v105;
        v229.size.height = v112;
        v145 = v144 - CGRectGetMinX(v229);
        if (rectb < v145)
        {
          v145 = rectb;
        }

        v59 = v175 - v145;
      }

      goto LABEL_56;
    }

    v59 = sub_100120414(v106, v107, v105, v112) + v103 * -0.5;
    if (![(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
    {
      [v15 unscaledSize];
      [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsRect:sub_10011ECB4()];
      r2b = v112;
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v133 = v132;
      [v15 contentInset];
      rect_8b = v127 + v134;
      if (!sub_10011EF14(v127 + v134, v129, v131, v133, v59, v107, v103, r2b))
      {
        rect_16b = v61;
        v59 = sub_100120B08(v59, v107, v103, r2b, rect_8b, v129, v131, v133);
        v136 = v135;
        v138 = v137;
        v140 = v139;
        if (!sub_10011EF14(rect_8b, v129, v131, v133, v59, v135, v137, v139))
        {
          v221.origin.x = v59;
          v221.origin.y = v136;
          v221.size.width = v138;
          v221.size.height = v140;
          v243.origin.x = rect_8b;
          v243.origin.y = v129;
          v243.size.width = v131;
          v243.size.height = v133;
          *&v59 = CGRectIntersection(v221, v243);
        }

LABEL_56:
        v61 = rect_16b;
      }
    }
  }

  v153 = v59;
  v154 = v61;
  result.y = v154;
  result.x = v153;
  return result;
}

- (void)scrollRectToVisible:(CGRect)a3 scrollOptions:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLInteractiveCanvasController *)self cancelScrollToCurrentSelectionPathAfterLayout];
  if ((a4 & 2) == 0)
  {
    if ((a4 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013763EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376414();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137649C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController scrollRectToVisible:scrollOptions:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:3228 isFatal:0 description:"Cannot tell scrollRectToVisible to zoom!"];

    if ((a4 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->mDelegate);
      v20 = [v19 shouldAllowAnimatedScrollForInteractiveCanvasController:self];

      v10 = v20;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_26;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101376328();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137633C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013763C4();
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130F3A8(v11);
  }

  v12 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController scrollRectToVisible:scrollOptions:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:3227 isFatal:0 description:"Cannot tell scrollRectToVisible to zoom!"];

  if ((a4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_23;
  }

LABEL_4:
  v10 = 0;
LABEL_26:
  [(CRLInteractiveCanvasController *)self p_contentOffsetToScrollRectToVisible:(a4 >> 3) & 1 shouldCenterVertically:(a4 >> 5) & 1 forceCenteringVertically:(a4 >> 6) & 1 forceCenteringHorizontally:x, y, width, height];
  [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledPoint:?];
  v22 = v21;
  v24 = v23;
  [(CRLInteractiveCanvasController *)self contentOffset];
  if (!sub_10011ECC8(v22, v24, v25, v26))
  {
    [(CRLInteractiveCanvasController *)self growCanvasAsNeededToSetContentOffset:v10 scrollOptions:v22, v24];
  }
}

- (void)scrollRectToVisibleWithSelectionOutset:(CGRect)a3 scrollOptions:(unint64_t)a4
{
  [(CRLInteractiveCanvasController *)self outsetSelectionRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(CRLInteractiveCanvasController *)self scrollRectToVisible:a4 scrollOptions:?];
}

- (void)growCanvasAsNeededToRestoreContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013764C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013764D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376560();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController growCanvasAsNeededToRestoreContentOffset:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:3249 isFatal:0 description:"You shouldn't ask to grow the canvas if the canvas doesn't grow in general"];
  }

  [(CRLInteractiveCanvasController *)self growCanvasAsNeededToSetContentOffset:0 scrollOptions:x, y];
}

- (void)growCanvasAsNeededToSetContentOffset:(CGPoint)a3 scrollOptions:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v18 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v8, v9);
  self->mRectToIncludeWhenGrowingCanvasToFitContent.origin.x = v10;
  self->mRectToIncludeWhenGrowingCanvasToFitContent.origin.y = v11;
  self->mRectToIncludeWhenGrowingCanvasToFitContent.size.width = v12;
  self->mRectToIncludeWhenGrowingCanvasToFitContent.size.height = v13;
  v14 = [(CRLInteractiveCanvasController *)self layerHost];
  v15 = [v14 canvasLayer];
  [v15 fixFrameAndScrollView];

  size = CGRectZero.size;
  self->mRectToIncludeWhenGrowingCanvasToFitContent.origin = CGRectZero.origin;
  self->mRectToIncludeWhenGrowingCanvasToFitContent.size = size;

  [(CRLInteractiveCanvasController *)self setContentOffset:a4 scrollOptions:x, y];
}

- (void)setContentOffset:(CGPoint)a3 source:(id)a4 scrollOptions:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [a4 copy];
  mCurrentInteractionSource = self->mCurrentInteractionSource;
  self->mCurrentInteractionSource = v9;

  [(CRLInteractiveCanvasController *)self setContentOffset:a5 scrollOptions:x, y];
  v11 = self->mCurrentInteractionSource;
  self->mCurrentInteractionSource = 0;
}

- (void)setContentOffset:(CGPoint)a3 scrollOptions:(unint64_t)a4
{
  v4 = a4;
  [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsPoint:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  v10 = [(CRLInteractiveCanvasController *)self layerHost];
  v17 = [v10 canvasView];

  v11 = [v17 enclosingScrollView];
  [v17 convertPoint:v11 toView:{v7, v9}];
  v13 = v12;
  v15 = v14;
  [v11 scrollableAreaContentInsets];
  [v11 setContentOffset:v4 & 1 animated:{sub_10011F31C(v13, v15, v16)}];
}

- (CGPoint)contentOffset
{
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasView];

  v5 = [v4 enclosingScrollView];
  v6 = v5;
  if (v5)
  {
    [v5 contentOffset];
    [v6 convertPoint:v4 toView:?];
    v8 = v7;
    v10 = v9;
    [v6 scrollableAreaContentInsets];
    [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledPoint:sub_10011F334(v8, v10, v11)];
    x = v12;
    y = v14;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGSize)sizeOfScrollViewEnclosingCanvas
{
  [(CRLInteractiveCanvasController *)self p_calculatedSizeOfScrollViewEnclosingCanvas];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)p_calculatedSizeOfScrollViewEnclosingCanvas
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376588();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137659C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376624();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_calculatedSizeOfScrollViewEnclosingCanvas]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3328 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [(CRLInteractiveCanvasController *)self layerHost];
  v7 = [v6 canvasView];
  v8 = [v7 enclosingScrollView];
  [v8 scrollableAreaBounds];
  v10 = v9;
  v12 = v11;

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v14 = objc_loadWeakRetained(&self->mDelegate);
    [v14 sizeOfScrollViewEnclosingCanvas];
    v10 = v15;
    v12 = v16;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)p_sizeOfScrollViewEnclosingCanvasForVisibleCanvasCalculations
{
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasView];
  v5 = [v4 enclosingScrollView];
  [v5 scrollableAreaBounds];
  v7 = v6;
  v9 = v8;

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v11 = objc_loadWeakRetained(&self->mDelegate);
    [v11 sizeOfScrollViewEnclosingCanvasForVisibleCanvasCalculations];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)updateCanvasViewSubviewFrames
{
  v2 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  [v2 updateLayerContainerFrames];
}

- (void)setSelectionHighlightColor:(id)a3
{
  v4 = [a3 copy];
  mSelectionHighlightColor = self->mSelectionHighlightColor;
  self->mSelectionHighlightColor = v4;

  [(CRLInteractiveCanvasController *)self i_invalidateSelectionHighlightLayers];
}

- (void)setPrimaryFindResultSearchReference:(id)a3
{
  v5 = a3;
  if (self->_primaryFindResultSearchReference != v5)
  {
    objc_storeStrong(&self->_primaryFindResultSearchReference, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(CRLInteractiveCanvasController *)self canvas];
    v7 = [v6 topLevelReps];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"i_primaryFindResultChanged:" withObject:v5];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setSearchReferencesToHighlight:(id)a3
{
  v5 = a3;
  if (self->_searchReferencesToHighlight != v5)
  {
    objc_storeStrong(&self->_searchReferencesToHighlight, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(CRLInteractiveCanvasController *)self canvas];
    v7 = [v6 topLevelReps];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"i_setSearchReferencesToHighlight:" withObject:v5];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)hasMediaReplacer
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = [(CRLInteractiveCanvasController *)self delegate];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 hasMediaReplacerForInteractiveCanvasController:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

- (CRLMediaReplacer)mediaReplacer
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLInteractiveCanvasController *)self delegate];
    v6 = [v5 mediaReplacerForInteractiveCanvasController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)visibleScaledRectForCanvasUI
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:0 respectObscuredFrame:1 respectSafeArea:1 respectObscuringRects:1 respectAreaPastScollViewLimit:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)spellCheckingSupported
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    v5 = [v4 spellCheckingSupported];
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (BOOL)spellCheckingSuppressed
{
  v3 = [(CRLInteractiveCanvasController *)self spellCheckingSupported];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      v6 = [v5 spellCheckingSuppressed];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 | v3 ^ 1;
}

- (void)p_spellCheckerWordsDidChangeNotification:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CRLInteractiveCanvasController *)self canvas:a3];
  v4 = [v3 topLevelReps];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"i_spellCheckerWordsDidChange"];
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)p_spellCheckingStateChangedNotification:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CRLInteractiveCanvasController *)self canvas:a3];
  v4 = [v3 topLevelReps];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"spellCheckingStateChanged"];
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  v8 = [v7 shouldShowTextOverflowGlyphs];

  return v8;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->mDelegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = objc_loadWeakRetained(&self->mDelegate);
    v10 = [v9 shouldShowInstructionalTextForLayout:v4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)shouldEnableToolbarDoneButton
{
  v3 = [(CRLInteractiveCanvasController *)self editorController];
  v4 = [v3 textInputEditor];
  v11 = sub_1003035DC(v4, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL____TtP8Freeform18CRLTextInputEditor_);

  v12 = [(CRLInteractiveCanvasController *)self editorController];
  v13 = [v12 selectionPath];
  v14 = [(CRLInteractiveCanvasController *)self modelsForSelectionPath:v13];

  v15 = [v14 count];
  v16 = [v11 wantsDoneButtonWhenEditing];
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (void)updateCanvasDotGridVisibilityIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->mDelegate);
      WeakRetained = [v6 wantsToShowCanvasDotGridOnInteractiveCanvasController:self];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  v7 = [(CRLInteractiveCanvasController *)self layerHost];
  v11 = [v7 canvasLayer];

  v8 = [v11 associatedBackgroundLayer];
  v9 = [v8 enabled];

  if (WeakRetained != v9)
  {
    v10 = [v11 associatedBackgroundLayer];
    [v10 setEnabled:WeakRetained];
  }
}

- (void)updateConnectorKnobVisibilityIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->mDelegate);
      WeakRetained = [v6 wantsToShowConnectorKnobsOnInteractiveCanvasController:self];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  if (self->mConnectorKnobsEnabled != WeakRetained)
  {
    self->mConnectorKnobsEnabled = WeakRetained;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(CRLCanvas *)self->mCanvas topLevelReps];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(CRLInteractiveCanvasController *)self updateTipsWithConnectorKnobsEnabled:WeakRetained];
    if (WeakRetained)
    {
      [(CRLInteractiveCanvasController *)self animateIntoConnectorMode];
    }
  }
}

- (BOOL)canInsertFromImagePlayground
{
  if ([(CRLInteractiveCanvasController *)self editingDisabled])
  {
    return 0;
  }

  else
  {
    return ![(CRLInteractiveCanvasController *)self isInDynamicOperation];
  }
}

- (void)setFreehandDrawingToolkit:(id)a3
{
  objc_storeStrong(&self->mFreehandDrawingToolkit, a3);
  v5 = [(CRLInteractiveCanvasController *)self layerHost];
  v6 = [v5 asiOSCVC];
  [v6 i_startObservingFreehandDrawingToolkit];

  v7 = [(CRLInteractiveCanvasController *)self layerHost];
  v8 = [v7 asUIKitHost];
  v9 = [v8 freehandDrawingGestureRecognizer];

  [v9 setEnabled:a3 != 0];
}

- (BOOL)p_shouldTransformCurrentSelectionAsSingleEntity
{
  if (self->mMultiselectResizeInfo)
  {
    return 1;
  }

  else
  {
    return [(CRLFreehandDrawingToolkit *)self->mFreehandDrawingToolkit isInDrawingMode];
  }
}

- (CRLCanvasGuideController)guideController
{
  mGuideController = self->mGuideController;
  if (!mGuideController)
  {
    v4 = [[CRLCanvasGuideController alloc] initWithInteractiveCanvasController:self];
    v5 = self->mGuideController;
    self->mGuideController = v4;

    mGuideController = self->mGuideController;
  }

  return mGuideController;
}

- (void)translateGuide:(id)a3 toContainerRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  [v18 setInfinite:0];
  v8 = [v18 guideType];
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  if (v8)
  {
    MinX = CGRectGetMinX(*&v9);
    [v18 offset];
    [v18 setOffset:MinX + v14];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    [v18 setStart:CGRectGetMinY(v20)];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
  }

  else
  {
    MinY = CGRectGetMinY(*&v9);
    [v18 offset];
    [v18 setOffset:MinY + v17];
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    [v18 setStart:CGRectGetMinX(v22)];
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    MaxY = CGRectGetMaxX(v23);
  }

  [v18 setEnd:MaxY];
}

- (void)clipGuideToContainer:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  v19 = a3;
  [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v19 setInfinite:0];
  v13 = [v19 guideType];
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  if (v13)
  {
    [v19 setStart:CGRectGetMinY(*&v14)];
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    MaxY = CGRectGetMaxY(v21);
  }

  else
  {
    [v19 setStart:CGRectGetMinX(*&v14)];
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    MaxY = CGRectGetMaxX(v22);
  }

  [v19 setEnd:MaxY];
}

- (void)translateGuides:(id)a3 toContainerRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CRLInteractiveCanvasController *)self translateGuide:*(*(&v14 + 1) + 8 * v13) toContainerRect:x, y, width, height];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (CGRect)boundingRectForActiveGuidesForPoint:(CGPoint)a3
{
  x = CGRectInfinite.origin.x;
  y = CGRectInfinite.origin.y;
  width = CGRectInfinite.size.width;
  height = CGRectInfinite.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setInfosToDisplay:(id)a3
{
  [(CRLCanvas *)self->mCanvas i_setInfosToDisplay:a3 updatingLayoutController:0];
  [(CRLCanvasEditor *)self->mCanvasEditor canvasInfosDidChange];
  mCanvas = self->mCanvas;

  [(CRLCanvas *)mCanvas i_updateInfosInLayoutController];
}

- (void)setTemporaryAdditionalBoardItemsToDisplay:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 | self->_temporaryAdditionalBoardItemsToDisplay)
  {
    v9 = v4;
    v6 = [v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [v9 copy];
      temporaryAdditionalBoardItemsToDisplay = self->_temporaryAdditionalBoardItemsToDisplay;
      self->_temporaryAdditionalBoardItemsToDisplay = v7;

      [(CRLInteractiveCanvasController *)self p_updateInfosToDisplayIfNeeded];
      v5 = v9;
    }
  }
}

- (CGRect)p_safeAreaLayoutGuideLayoutFrame
{
  v3 = objc_opt_class();
  v4 = [(CRLInteractiveCanvasController *)self layerHost];
  v5 = [v4 canvasView];
  v6 = [v5 enclosingScrollView];
  v7 = sub_100014370(v3, v6);

  v8 = [v7 safeAreaLayoutGuide];
  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)clearLayoutsForTopLevelContainerChange
{
  v2 = [(CRLInteractiveCanvasController *)self layoutController];
  [v2 i_removeAllLayouts];
}

- (id)topLevelZOrderedSiblingsOfInfos:(id)a3
{
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v5)
  {
    v6 = v5;
    v61 = self;
    v63 = 0;
    v7 = 0;
    v8 = *v74;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v74 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v73 + 1) + 8 * v9);
      v11 = [v10 parentInfo];
      v12 = v11 == 0;

      v13 = [v10 parentInfo];
      v14 = v13;
      if (v63)
      {

        if (v63 != v14)
        {

          goto LABEL_23;
        }
      }

      else
      {
        v15 = objc_opt_class();
        v63 = sub_1003038E0(v14, v15, 1, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLContainerInfo);
      }

      v7 |= v12;
      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        if ((v7 & 1) == 0)
        {
          v56 = v63;
          goto LABEL_45;
        }

        if (!v63)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10137664C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101376674();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013766FC();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v21);
          }

          v22 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController topLevelZOrderedSiblingsOfInfos:]"];
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:3867 isFatal:0 description:"If we're given any info without a parent, we should have been given at least one info with a parent, too."];

          v24 = [v4 allObjects];
          goto LABEL_49;
        }

LABEL_23:
        v64 = +[NSMutableSet set];
        v25 = +[NSMutableSet set];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v60 = v4;
        v26 = v4;
        v27 = [v26 countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v70;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v70 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v69 + 1) + 8 * i);
              v32 = [v31 parentInfo];
              if (v32 && (v33 = v32, [v31 parentInfo], v34 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v34, v33, (isKindOfClass & 1) == 0))
              {
                v36 = [v31 parentInfo];
                v37 = objc_opt_class();
                v43 = sub_1003038E0(v36, v37, 1, v38, v39, v40, v41, v42, &OBJC_PROTOCOL___CRLContainerInfo);

                [v64 crl_addNonNilObject:v43];
              }

              else
              {
                [v25 addObject:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v69 objects:v78 count:16];
          }

          while (v28);
        }

        [v25 unionSet:v64];
        v44 = v61;
        v62 = v25;
        v59 = [(CRLInteractiveCanvasController *)v44 topLevelZOrderedSiblingsOfInfos:v25];
        v24 = [v59 mutableCopy];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v45 = v64;
        v46 = [v45 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v66;
          do
          {
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v66 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v65 + 1) + 8 * j);
              v51 = [v24 indexOfObject:v50];
              if (v51 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v52 = v51;
                v53 = objc_opt_class();
                v54 = [v50 childInfos];
                v55 = sub_100014370(v53, v54);

                [v24 replaceObjectsInRange:v52 withObjectsFromArray:1 range:{v55, 0, objc_msgSend(v55, "count")}];
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v65 objects:v77 count:16];
          }

          while (v47);
        }

        v4 = v60;
        v56 = v63;
        goto LABEL_46;
      }
    }
  }

  v56 = 0;
LABEL_45:
  v57 = objc_opt_class();
  v45 = [v56 childInfos];
  v24 = sub_100014370(v57, v45);
LABEL_46:

  if (!v24)
  {
    v24 = &__NSArray0__struct;
  }

LABEL_49:

  return v24;
}

- (id)repsForInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [(CRLInteractiveCanvasController *)self layoutsForInfo:v4];
  v7 = v6;
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(CRLInteractiveCanvasController *)self repForLayout:*(*(&v14 + 1) + 8 * i)];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)repForInfo:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLInteractiveCanvasController *)self layoutForInfo:v6];
  v8 = v7;
  if (!v7)
  {
    v8 = 0;
    if (v4)
    {
      [(CRLInteractiveCanvasController *)self layoutIfNeeded];
      v8 = [(CRLInteractiveCanvasController *)self layoutForInfo:v6];
    }
  }

  v9 = !v4;
  if (v8)
  {
    v10 = [(CRLInteractiveCanvasController *)self repForLayout:v8];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (v7 && (v11 & 1) == 0)
  {
    [(CRLInteractiveCanvasController *)self layoutIfNeeded];
    v10 = [(CRLInteractiveCanvasController *)self repForLayout:v8];
  }

  if (!v10)
  {
    v12 = [(CRLInteractiveCanvasController *)self layoutsForInfo:v6];
    v13 = [v12 allObjects];
    v14 = [NSMutableArray arrayWithArray:v13];

    [v14 sortUsingSelector:"orderedBefore:"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [v14 reverseObjectEnumerator];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(CRLInteractiveCanvasController *)self repForLayout:*(*(&v22 + 1) + 8 * i)];
          if (v20)
          {
            v10 = v20;
            goto LABEL_24;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_24:
  }

  return v10;
}

- (id)p_repForLayout:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(CRLCanvas *)self->mCanvas repForLayout:v6];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !v4;
    }

    if (!v8)
    {
      [(CRLInteractiveCanvasController *)self layoutIfNeeded];
      v7 = [(CRLCanvas *)self->mCanvas repForLayout:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)renderableForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v6 = [v5 renderableForRep:v4];

  return v6;
}

- (id)containerRenderablesForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376724();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376738();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013767D4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController containerRenderablesForRep:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4011 isFatal:0 description:"invalid nil value for '%{public}s'", "self.i_interactiveCanvasLayerHelper"];
  }

  v9 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v10 = [v9 containerRenderablesForRep:v4];

  return v10;
}

- (void)recreateAllLayoutsAndReps
{
  [(CRLInteractiveCanvasController *)self endEditing];
  v3 = [(CRLCanvasEditor *)self->mCanvasEditor selectionPathWithInfos:0];
  v4 = [(CRLInteractiveCanvasController *)self editorController];
  [v4 setSelectionPath:v3];

  mCanvas = self->mCanvas;

  [(CRLCanvas *)mCanvas recreateAllLayoutsAndReps];
}

- (void)discardRepForClassChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 parentRep];
    v7 = v6;
    if (v6)
    {
      if ([v6 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasMutableContainerRep])
      {
        [v7 removeChildRep:v5];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013767FC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101376810();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101376898();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v10);
        }

        v11 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController discardRepForClassChange:]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
        [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:4052 isFatal:0 description:"couldn't remove rep from parent"];
      }
    }

    v13 = [(CRLInteractiveCanvasController *)self canvas];
    [v13 i_unregisterRep:v5];

    [(CRLInteractiveCanvasController *)self layoutInvalidated];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013768C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013768D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376970();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController discardRepForClassChange:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v9 lineNumber:4042 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }
}

- (id)repsToHide
{
  v3 = objc_opt_new();
  if ([(NSSet *)self->mRepsToHideForCurrentTracker count])
  {
    [v3 unionSet:self->mRepsToHideForCurrentTracker];
  }

  return v3;
}

- (CGRect)visibleBoundsRect
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:0 respectObscuredFrame:1 respectSafeArea:0 respectObscuringRects:1 respectAreaPastScollViewLimit:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleBoundsRectUsingSizeOfEnclosingScrollView
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:1 respectObscuredFrame:1 respectSafeArea:0 respectObscuringRects:0 respectAreaPastScollViewLimit:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleBoundsRectIgnoringLimit
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:0 respectObscuredFrame:1 respectSafeArea:0 respectObscuringRects:1 respectAreaPastScollViewLimit:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_visibleBoundsRectUsingSizeOfEnclosingScrollView:(BOOL)a3 respectObscuredFrame:(BOOL)a4 respectSafeArea:(BOOL)a5 respectObscuringRects:(BOOL)a6 respectAreaPastScollViewLimit:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v11 = objc_opt_class();
  v12 = [(CRLInteractiveCanvasController *)self layerHost];
  v13 = [v12 canvasView];
  v14 = [v13 enclosingScrollView];
  v15 = sub_100014370(v11, v14);

  v16 = [(CRLInteractiveCanvasController *)self layerHost];
  v17 = [v16 canvasLayer];

  if (!v17)
  {
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    goto LABEL_15;
  }

  v18 = [(CRLInteractiveCanvasController *)self layerHost];
  v19 = [v18 canvasView];
  v20 = [v19 window];
  v21 = [v20 layer];

  [v17 bounds];
  x = v22;
  y = v24;
  width = v26;
  height = v28;
  v30 = [v15 layer];
  if (a3 || ([v15 window], v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
  {
    [v30 bounds];
    v37 = [(CRLInteractiveCanvasController *)self p_sizeOfScrollViewEnclosingCanvasForVisibleCanvasCalculations];
    v85 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v37, v38);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v32 = [v15 contentView];
  if (v7)
  {
    [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
  }

  else
  {
    [(CRLInteractiveCanvasController *)self p_unobscuredScrollViewFrameIgnoringObscuringRectangles];
  }

  v76 = v33;
  v77 = v34;
  v78 = v35;
  v79 = v36;
  v80 = [v15 superview];
  [v32 convertRect:v80 fromView:{v76, v77, v78, v79}];
  v40 = v81;
  v42 = v82;
  v44 = v83;
  v46 = v84;

  if (v8)
  {
LABEL_7:
    [(CRLInteractiveCanvasController *)self p_safeAreaLayoutGuideLayoutFrame];
    v92.origin.x = v47;
    v92.origin.y = v48;
    v92.size.width = v49;
    v92.size.height = v50;
    v86.origin.x = v40;
    v86.origin.y = v42;
    v86.size.width = v44;
    v86.size.height = v46;
    v87 = CGRectIntersection(v86, v92);
    v40 = v87.origin.x;
    v42 = v87.origin.y;
    v44 = v87.size.width;
    v46 = v87.size.height;
  }

LABEL_8:
  if (v30)
  {
    [v30 convertRect:v17 fromLayer:{x, y, width, height}];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v30;
LABEL_13:
    v88.origin.x = v52;
    v88.origin.y = v54;
    v88.size.width = v56;
    v88.size.height = v58;
    v93.origin.x = v40;
    v93.origin.y = v42;
    v93.size.width = v44;
    v93.size.height = v46;
    v89 = CGRectIntersection(v88, v93);
    [v59 convertRect:v17 toLayer:{v89.origin.x, v89.origin.y, v89.size.width, v89.size.height}];
    x = v68;
    y = v69;
    width = v70;
    height = v71;
    goto LABEL_14;
  }

  if (v21)
  {
    [v21 convertRect:v17 fromLayer:{x, y, width, height}];
    v52 = v60;
    v54 = v61;
    v56 = v62;
    v58 = v63;
    [v21 bounds];
    v40 = v64;
    v42 = v65;
    v44 = v66;
    v46 = v67;
    v59 = v21;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  if (CGRectIsNull(v90))
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v72 = x;
  v73 = y;
  v74 = width;
  v75 = height;
  result.size.height = v75;
  result.size.width = v74;
  result.origin.y = v73;
  result.origin.x = v72;
  return result;
}

- (CGRect)visibleBoundsRectForTiling
{
  if (self->mShouldLayoutOffscreenContentForZoomAnimation)
  {
    [(CRLInteractiveCanvasController *)self convertUnscaledToBoundsRect:self->mPreviewVisibleUnscaledRectForTiling.origin.x, self->mPreviewVisibleUnscaledRectForTiling.origin.y, self->mPreviewVisibleUnscaledRectForTiling.size.width, self->mPreviewVisibleUnscaledRectForTiling.size.height];
  }

  else
  {
    [(CRLInteractiveCanvasController *)self p_visibleBoundsRectForTiling];
    if (CGRectIsNull(v7))
    {
      [(CRLInteractiveCanvasController *)self p_calculateVisibleBoundsRectForTiling];
      [(CRLInteractiveCanvasController *)self setP_visibleBoundsRectForTiling:?];
    }

    [(CRLInteractiveCanvasController *)self p_visibleBoundsRectForTiling];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_visibleBoundsRectForHitTestingCanvasView
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:0 respectObscuredFrame:1 respectSafeArea:0 respectObscuringRects:0 respectAreaPastScollViewLimit:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_calculateVisibleBoundsRectForTiling
{
  [(CRLInteractiveCanvasController *)self p_visibleBoundsRectUsingSizeOfEnclosingScrollView:1 respectObscuredFrame:0 respectSafeArea:0 respectObscuringRects:0 respectAreaPastScollViewLimit:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleUnscaledRect
{
  [(CRLInteractiveCanvasController *)self p_visibleUnscaledRect];
  if (CGRectIsNull(v8))
  {
    [(CRLInteractiveCanvasController *)self p_calculateVisibleUnscaledRect];
    [(CRLInteractiveCanvasController *)self setP_visibleUnscaledRect:?];
  }

  [(CRLInteractiveCanvasController *)self p_visibleUnscaledRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)visibleUnscaledRectIgnoringLimit
{
  [(CRLInteractiveCanvasController *)self visibleBoundsRectIgnoringLimit];

  [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_calculateVisibleUnscaledRect
{
  [(CRLInteractiveCanvasController *)self visibleBoundsRect];

  [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLInteractiveCanvasController *)self canvas];
  [v7 convertUnscaledToBoundsRect:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)convertBoundsToUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLInteractiveCanvasController *)self canvas];
  [v7 convertBoundsToUnscaledRect:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLInteractiveCanvasController *)self canvas];
  [v5 convertUnscaledToBoundsPoint:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLInteractiveCanvasController *)self canvas];
  [v5 convertBoundsToUnscaledPoint:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CRLInteractiveCanvasController *)self canvas];
  [v5 convertUnscaledToBoundsSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CRLInteractiveCanvasController *)self canvas];
  [v5 convertBoundsToUnscaledSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)growUnscaledCanvasLayerRect:(CGRect)a3 withViewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent:a3.origin.x])
  {
    if (!self->mHasCanvasEverLaidOut)
    {
      [(CRLInteractiveCanvasController *)self layoutIfNeeded];
    }

    [(CRLCanvas *)self->mCanvas unscaledRectOfLayouts:*&x];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CRLInteractiveCanvasController *)self board];
    v18 = [v17 sceneInfos];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v90 objects:v94 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v91;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v91 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v90 + 1) + 8 * i) savedUnscaledRect];
          v25 = v24;
          v27 = v26;
          v30 = sub_100120414(v28, v29, v24, v26);
          v32 = v31;
          [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
          v35 = sub_100121C3C(v25, v27, v33, v34);
          v36 = sub_10011EC70(v30, v32, v35);
          v10 = sub_10011FC04(v10, v12, v14, v16, v36, v37, v38, v39);
          v12 = v40;
          v14 = v41;
          v16 = v42;
        }

        v21 = [v19 countByEnumeratingWithState:&v90 objects:v94 count:16];
      }

      while (v21);
    }

    v95.origin.x = v10;
    v95.origin.y = v12;
    v95.size.width = v14;
    v95.size.height = v16;
    v108 = CGRectInset(v95, -1194.0, -1194.0);
    v96 = CGRectUnion(v89, v108);
    v43 = v96.origin.x;
    v44 = v96.origin.y;
    v45 = v96.size.width;
    v46 = v96.size.height;
    if ([(CRLInteractiveCanvasController *)self isInDynamicOperation])
    {
      v97.origin.x = v43;
      v97.origin.y = v44;
      v97.size.width = v45;
      v97.size.height = v46;
      v98 = CGRectUnion(v97, self->mUnscaledRectToGrowCanvasDuringDynamicOperation);
      v43 = v98.origin.x;
      v44 = v98.origin.y;
      v45 = v98.size.width;
      v46 = v98.size.height;
    }

    [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
    v109.origin.x = v47;
    v109.origin.y = v48;
    v109.size.width = v49;
    v109.size.height = v50;
    v99.origin.x = v43;
    v99.origin.y = v44;
    v99.size.width = v45;
    v99.size.height = v46;
    v100 = CGRectUnion(v99, v109);
    v51 = v100.origin.x;
    v52 = v100.origin.y;
    v53 = v100.size.width;
    v54 = v100.size.height;
    v55 = [(CRLInteractiveCanvasController *)self layerHost];
    [v55 rectToIncludeWhenGrowingCanvasToFitContent];
    v110.origin.x = v56;
    v110.origin.y = v57;
    v110.size.width = v58;
    v110.size.height = v59;
    v101.origin.x = v51;
    v101.origin.y = v52;
    v101.size.width = v53;
    v101.size.height = v54;
    v102 = CGRectUnion(v101, v110);
    v60 = v102.origin.x;
    v61 = v102.origin.y;
    v62 = v102.size.width;
    v63 = v102.size.height;

    v103.origin.x = v60;
    v103.origin.y = v61;
    v103.size.width = v62;
    v103.size.height = v63;
    v104 = CGRectUnion(v103, self->mRectToIncludeWhenGrowingCanvasToFitContent);
    x = v104.origin.x;
    y = v104.origin.y;
    width = v104.size.width;
    height = v104.size.height;
    if ([(CRLInteractiveCanvasController *)self isInDynamicOperation])
    {
      self->mUnscaledRectToGrowCanvasDuringDynamicOperation.origin.x = x;
      self->mUnscaledRectToGrowCanvasDuringDynamicOperation.origin.y = y;
      self->mUnscaledRectToGrowCanvasDuringDynamicOperation.size.width = width;
      self->mUnscaledRectToGrowCanvasDuringDynamicOperation.size.height = height;
    }

    goto LABEL_25;
  }

  v19 = [(CRLInteractiveCanvasController *)self canvas];
  if ([v19 isAnchoredAtRight])
  {
  }

  else
  {
    if (![(CRLInteractiveCanvasController *)self resizeCanvasOnLayout])
    {
LABEL_25:

      goto LABEL_26;
    }

    v80 = sub_1004A48FC();

    if ((v80 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (!self->mDynamicallyZooming)
  {
    [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = [(CRLInteractiveCanvasController *)self canvas];
    v73 = [v72 isAnchoredAtRight];

    v74 = v65;
    v75 = v67;
    v76 = v69;
    v77 = v71;
    if (v73)
    {
      MaxX = CGRectGetMaxX(*&v74);
      if (MaxX <= 0.0)
      {
        v79 = v69;
      }

      else
      {
        v79 = v69 - MaxX;
      }
    }

    else
    {
      MinX = CGRectGetMinX(*&v74);
      if (MinX >= 0.0)
      {
        v79 = v69;
      }

      else
      {
        v65 = 0.0;
        v79 = v69 + MinX;
      }
    }

    v86 = 0;
    v87 = 1.0;
    v105.origin.x = x;
    v105.origin.y = y;
    v105.size.width = width;
    v105.size.height = height;
    v88 = v65;
    v106 = CGRectUnion(v105, *(&v79 - 2));
    x = v106.origin.x;
    y = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
  }

LABEL_26:
  v81 = x;
  v82 = y;
  v83 = width;
  v84 = height;
  result.size.height = v84;
  result.size.width = v83;
  result.origin.y = v82;
  result.origin.x = v81;
  return result;
}

- (BOOL)i_shouldAttemptToPreserveContentOffsetAfterFixFrame
{
  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    return !self->mDynamicallyZooming;
  }

  if (![(CRLInteractiveCanvasController *)self resizeCanvasOnLayout])
  {
    return 0;
  }

  if (sub_1004A48FC())
  {
    return 1;
  }

  v5 = [(CRLInteractiveCanvasController *)self canvas];
  v6 = [v5 isAnchoredAtRight];

  return v6;
}

- (id)unitFormatter
{
  mUnitFormatter = self->mUnitFormatter;
  if (!mUnitFormatter)
  {
    v4 = +[CRLRulerUnits instance];
    v5 = [v4 formatter:0 lenient:0];
    v6 = self->mUnitFormatter;
    self->mUnitFormatter = v5;

    mUnitFormatter = self->mUnitFormatter;
  }

  return mUnitFormatter;
}

- (id)numberFormatter
{
  mNumberFormatter = self->mNumberFormatter;
  if (!mNumberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->mNumberFormatter;
    self->mNumberFormatter = v4;

    mNumberFormatter = self->mNumberFormatter;
  }

  return mNumberFormatter;
}

- (id)unitStringForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[CRLRulerUnits instance];
  v7 = [(CRLInteractiveCanvasController *)self unitFormatter];
  [v6 convertPointsToRulerUnits:x];
  v9 = v8;
  [v6 convertPointsToRulerUnits:y];
  v11 = v10;
  v12 = [NSNumber alloc];
  *&v13 = v9;
  v14 = [v12 initWithFloat:v13];
  v15 = [NSNumber alloc];
  *&v16 = v11;
  v17 = [v15 initWithFloat:v16];
  v18 = [v7 stringForObjectValue:v14];
  v19 = [v7 stringForObjectValue:v17];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"x: %@  y: %@" value:0 table:0];
  v22 = [NSString localizedStringWithFormat:v21, v18, v19];

  return v22;
}

- (id)unitStringForSize:(CGSize)a3 forAccessibility:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = +[CRLRulerUnits instance];
  v9 = [(CRLInteractiveCanvasController *)self unitFormatter];
  v10 = [NSNumber alloc];
  [v8 convertPointsToRulerUnits:width];
  *&v11 = v11;
  v12 = [v10 initWithFloat:v11];
  v13 = [NSNumber alloc];
  [v8 convertPointsToRulerUnits:height];
  *&v14 = v14;
  v15 = [v13 initWithFloat:v14];
  v16 = [v9 stringForObjectValue:v12];
  v17 = [v9 stringForObjectValue:v15];
  v18 = +[NSBundle mainBundle];
  v19 = v18;
  if (v4)
  {
    v20 = @"width %@, height %@";
  }

  else
  {
    v20 = @"w: %@  h: %@";
  }

  v21 = [v18 localizedStringForKey:v20 value:0 table:0];
  v22 = [NSString localizedStringWithFormat:v21, v16, v17];

  return v22;
}

- (id)unitStringForNumber:(double)a3
{
  v5 = +[CRLRulerUnits instance];
  v6 = [(CRLInteractiveCanvasController *)self unitFormatter];
  v7 = [NSNumber alloc];
  [v5 convertPointsToRulerUnits:a3];
  *&v8 = v8;
  v9 = [v7 initWithFloat:v8];
  v10 = [v6 stringForObjectValue:v9];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"%@" value:0 table:0];
  v13 = [NSString localizedStringWithFormat:v12, v10];

  return v13;
}

- (id)unitStringForAngle:(double)a3
{
  v4 = [(CRLInteractiveCanvasController *)self numberFormatter];
  [v4 setMaximumFractionDigits:1];
  [v4 setPositiveFormat:@"##0.#"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"%@°" value:0 table:0];
  sub_1001208E0(a3);
  v7 = [NSNumber numberWithDouble:?];
  v8 = [v4 stringFromNumber:v7];
  v9 = [NSString localizedStringWithFormat:v6, v8];

  return v9;
}

- (id)unitStringForAngle:(double)a3 shouldNormalize:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CRLInteractiveCanvasController *)self unitStringForAngle:a3];
  }

  else
  {
    v6 = [(CRLInteractiveCanvasController *)self numberFormatter];
    [v6 setMaximumFractionDigits:1];
    [v6 setPositiveFormat:@"##0.#"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%@°" value:0 table:0];
    v9 = [NSNumber numberWithDouble:a3];
    v10 = [v6 stringFromNumber:v9];
    v5 = [NSString localizedStringWithFormat:v8, v10];
  }

  return v5;
}

- (id)unitStringForAngle:(double)a3 andLength:(double)a4
{
  v7 = +[CRLRulerUnits instance];
  v8 = [(CRLInteractiveCanvasController *)self unitFormatter];
  v9 = [NSNumber alloc];
  [v7 convertPointsToRulerUnits:a4];
  *&v10 = v10;
  v11 = [v9 initWithFloat:v10];
  v12 = [v8 stringForObjectValue:v11];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"%@  l: %@" value:0 table:0];
  v15 = [(CRLInteractiveCanvasController *)self unitStringForAngle:a3];
  v16 = [NSString localizedStringWithFormat:v14, v15, v12];

  return v16;
}

- (CRLCanvasContainerRep)topLevelContainerRepForEditing
{
  v3 = [(CRLInteractiveCanvasController *)self topLevelContainerInfoForEditing];
  v4 = objc_opt_class();
  v10 = sub_100303920(v3, v4, 1, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  if (v10)
  {
    v11 = [(CRLInteractiveCanvasController *)self repForInfo:v10];
    v12 = objc_opt_class();
    v18 = sub_1003038E0(v11, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLCanvasContainerRep);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (CRLContainerInfo)topLevelContainerInfoForEditing
{
  v3 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v4 = [(CRLInteractiveCanvasController *)self editorController];
  v5 = [v4 selectionPath];
  v6 = [v3 containerToInsertIntoForSelectionPath:v5];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)topLevelRepsForHitTesting
{
  v3 = [(CRLInteractiveCanvasController *)self hasSelectedInfosInMultipleContainers];
  v4 = [(CRLInteractiveCanvasController *)self freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if ((v5 & 1) != 0 || v3)
  {
    v16 = [(CRLCanvas *)self->mCanvas allRepsOrdered];
    v7 = [v16 crl_arrayOfObjectsPassingTest:&stru_101863E28];
  }

  else
  {
    v6 = [(CRLInteractiveCanvasController *)self topLevelContainerRepForEditing];
    if (v6)
    {
      v7 = +[NSMutableArray array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v6 childReps];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v18 + 1) + 8 * i) info];
            v14 = [(CRLInteractiveCanvasController *)self repsForInfo:v13];
            v15 = [v14 allObjects];
            [v7 addObjectsFromArray:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = [(CRLCanvas *)self->mCanvas topLevelReps];
    }
  }

  return v7;
}

+ (double)smallRepOutsetForHitTestingWithPrecision:(BOOL)a3
{
  result = 20.0;
  if (a3)
  {
    return 2.0;
  }

  return result;
}

- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = [(CRLInteractiveCanvasController *)self canvas];
  v11 = [(CRLInteractiveCanvasController *)self topLevelRepsForHitTesting];
  [objc_opt_class() smallRepOutsetForHitTestingWithPrecision:v5];
  v13 = [v10 hitRep:v5 withPrecision:v11 inTopLevelReps:0 smallRepOutset:v9 unscaledPointTransformForRep:x passingTest:{y, v12}];

  return v13;
}

- (id)hitRepIgnoringClickThrough:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100451AD0;
  v14 = sub_100451AE0;
  v15 = 0;
  v6 = [(CRLInteractiveCanvasController *)self canvas];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100451AE8;
  v9[3] = &unk_1018427D8;
  v9[4] = self;
  v9[5] = &v10;
  *&v9[6] = x;
  *&v9[7] = y;
  [v6 i_performBlockWhileIgnoringClickThrough:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)hitRepsAtPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  y = a3.y;
  x = a3.x;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v14 = [v13 hitReps:? withSlop:?];
        if (v14)
        {
          [v7 addObjectsFromArray:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)p_recursiveHitKnobAtPoint:(CGPoint)a3 inputType:(int64_t)a4 inRep:(id)a5 minDistance:(double *)a6 hitKnob:(id *)a7 hitRep:(id *)a8
{
  y = a3.y;
  x = a3.x;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = a5;
  v13 = [v32 knobs];
  v14 = [v13 reverseObjectEnumerator];

  v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        v38 = 0.0;
        if (!*a7 || ![v19 overlapsWithKnob:?])
        {
          if (([v19 isHitByUnscaledPoint:a4 inputType:&v38 returningDistance:{x, y}] & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_12:
          v22 = v38;
          if (v38 >= *a6)
          {
            goto LABEL_14;
          }

LABEL_13:
          *a6 = v22;
          v23 = v19;
          *a7 = v19;
          *a8 = [v23 rep];
          goto LABEL_14;
        }

        v20 = [*a7 obscuresKnob:v19];
        v21 = [v19 obscuresKnob:*a7];
        if (([v19 isHitByUnscaledPoint:a4 inputType:&v38 returningDistance:{x, y}] & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v21)
        {
          v22 = v38;
          goto LABEL_13;
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_14:
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v24 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:{16, v22}];
      v16 = v24;
    }

    while (v24);
  }

  v25 = v32;
  if ([v32 shouldHitTestChildKnobs])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = [v32 childReps];
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(CRLInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:a4 inputType:*(*(&v34 + 1) + 8 * i) inRep:a6 minDistance:a7 hitKnob:a8 hitRep:x, y];
        }

        v28 = [v26 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v28);
    }

    v25 = v32;
  }
}

- (id)hitKnobAtPoint:(CGPoint)a3 inputType:(int64_t)a4 returningRep:(id *)a5
{
  y = a3.y;
  x = a3.x;
  v28 = 0x47EFFFFFE0000000;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v25;
    do
    {
      v15 = 0;
      v16 = v12;
      v17 = v13;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v24 + 1) + 8 * v15);
        v22 = v16;
        v23 = v17;
        [(CRLInteractiveCanvasController *)self p_recursiveHitKnobAtPoint:a4 inputType:v18 inRep:&v28 minDistance:&v23 hitKnob:&v22 hitRep:x, y];
        v13 = v23;

        v12 = v22;
        v15 = v15 + 1;
        v16 = v12;
        v17 = v13;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (a5)
  {
    v19 = v12;
    *a5 = v12;
  }

  return v13;
}

- (id)validatedLayoutForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self layoutController];
  v6 = [v5 validatedLayoutForInfo:v4];

  return v6;
}

- (id)layoutsForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self layoutController];
  v6 = [v5 layoutsForInfo:v4];

  return v6;
}

- (id)layoutsForSelectionPath:(id)a3
{
  v4 = a3;
  v26 = self;
  v5 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:v4];
  if ([v5 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v25 = *v32;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [(CRLInteractiveCanvasController *)v26 layoutsForInfo:*(*(&v31 + 1) + 8 * i), v23];
          v11 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v10 count]);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v27 + 1) + 8 * j) layoutForSelectionPath:v4];
                if (v17)
                {
                  [v11 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }

          if ([v11 count])
          {
            if (!v8)
            {
              v8 = +[NSMutableSet set];
            }

            [v8 unionSet:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v5 = v23;
  }

  else
  {
    v8 = 0;
  }

  v18 = [v8 copy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[NSSet set];
  }

  v21 = v20;

  return v21;
}

- (id)layoutForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self layoutController];
  v6 = [v5 layoutForInfo:v4];

  return v6;
}

- (id)layoutForSelectionPath:(id)a3
{
  v3 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:a3];
  v4 = [v3 anyObject];

  return v4;
}

- (id)layoutsForInfo:(id)a3 intersectingSelectionPath:(id)a4
{
  v6 = a4;
  v7 = [(CRLInteractiveCanvasController *)self layoutsForInfo:a3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100452644;
  v11[3] = &unk_101863E50;
  v12 = v6;
  v8 = v6;
  v9 = [v7 objectsPassingTest:v11];

  return v9;
}

- (id)layoutForInfoNearestVisibleRect:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self layoutsForInfo:v4];
  [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v34 = v11;
    v35 = v9;
    v17 = 0;
    v18 = *v39;
    v37 = INFINITY;
    v36 = v7;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        [v20 frameInRoot];
        [(CRLInteractiveCanvasController *)self outsetSelectionRect:?];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = sub_1001202D8(v21, v23, v25, v27, v7, v35, v34, v13);
        if (v29 == 0.0)
        {
          sub_100120474(v22, v24, v26, v28, v7, v35, v34, v13);
          v31 = -v30;
        }

        else
        {
          v31 = v29;
        }

        if (v31 < v37)
        {
          v32 = v20;

          v17 = v32;
          v37 = v31;
        }

        v7 = v36;
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)layoutForInfoNearestVisibleRect:(id)a3 intersectingSelectionPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLInteractiveCanvasController *)self layoutsForInfo:v6 intersectingSelectionPath:v7];
  [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v38 = v12;
    v39 = v10;
    v20 = 0;
    v21 = *v41;
    v22 = INFINITY;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v40 + 1) + 8 * i);
        [v24 rectInRootForSelectionPath:v7];
        [(CRLInteractiveCanvasController *)self outsetSelectionRect:?];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = sub_1001202D8(v25, v27, v29, v31, v10, v38, v14, v16);
        if (v33 == 0.0)
        {
          sub_100120474(v26, v28, v30, v32, v10, v38, v14, v16);
          v35 = -v34;
        }

        else
        {
          v35 = v33;
        }

        v46.origin.x = v26;
        v46.origin.y = v28;
        v46.size.width = v30;
        v46.size.height = v32;
        if (!CGRectIsNull(v46) && v35 < v22)
        {
          v36 = v24;

          v20 = v36;
          v22 = v35;
        }

        v10 = v39;
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)parentForFreehandDrawingLayoutsAtPoint:(CGPoint)a3
{
  v3 = [(CRLInteractiveCanvasController *)self layoutController:a3.x];
  v4 = [v3 rootLayout];

  return v4;
}

- (id)mostVisibleParentForFreehandDrawingLayouts
{
  [(CRLInteractiveCanvasController *)self visibleUnscaledRect];
  v7 = sub_100120414(v3, v4, v5, v6);

  return [(CRLInteractiveCanvasController *)self parentForFreehandDrawingLayoutsAtPoint:v7];
}

- (void)setShouldSuppressFreehandContent:(BOOL)a3
{
  self->_shouldSuppressFreehandContent = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"suppressionOfFreehandContentDidChange"];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)layoutIfNeeded
{
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasLayer];
  v5 = [v4 isLayoutDisabled];

  if ((v5 & 1) == 0)
  {
    mCanvas = self->mCanvas;

    [(CRLCanvas *)mCanvas i_layoutIfNeeded];
  }
}

- (void)performBlockOnMainThreadAfterLayoutIfNecessary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = sub_100452E0C;
    v9 = &unk_10183FC10;
    v10 = self;
    v11 = v4;
    if ([NSThread isMainThread:_NSConcreteStackBlock])
    {
      v8(&v7);
    }

    else
    {
      Main = CFRunLoopGetMain();
      CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, &v7);
      CFRunLoopWakeUp(Main);
    }
  }
}

- (CALayer)repContainerLayer
{
  v2 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v3 = [v2 repContainerLayer];

  return v3;
}

- (CALayer)overlayLayer
{
  v2 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v3 = [v2 overlayLayer];

  return v3;
}

- (void)setOverlayLayerSuppressed:(BOOL)a3
{
  if (self->mOverlayLayerSuppressed != a3)
  {
    self->mOverlayLayerSuppressed = a3;
    if (a3)
    {
      WeakRetained = objc_loadWeakRetained(&self->mLayerHost);
      v6 = [WeakRetained imageHUDController];
      [v6 closeHUDWithAnimation:0];
    }

    [(CRLInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (void)closeOverlays
{
  WeakRetained = objc_loadWeakRetained(&self->mLayerHost);
  v4 = [WeakRetained imageHUDController];
  [v4 closeHUDWithAnimation:1];

  [(CRLInteractiveCanvasController *)self layoutInvalidated];
}

- (void)addDecorator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([(NSMutableArray *)self->mDecorators containsObject:v4]& 1) == 0)
    {
      [(NSMutableArray *)self->mDecorators addObject:v4];
      [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:v4];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376998();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013769AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376A48();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController addDecorator:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:4858 isFatal:0 description:"invalid nil value for '%{public}s'", "decorator"];
  }
}

- (void)removeDecorator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(NSMutableArray *)self->mDecorators containsObject:v4])
    {
      [(NSMutableArray *)self->mDecorators removeObject:v4];
      [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:v4];
      v5 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
      [v5 decoratorWasRemoved:v4];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376A70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376A84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376B20();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController removeDecorator:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4869 isFatal:0 description:"invalid nil value for '%{public}s'", "decorator"];
  }
}

- (NSArray)i_decorators
{
  v2 = [(NSMutableArray *)self->mDecorators copy];

  return v2;
}

- (id)p_repsForCollaboratorCursorSelectionPath:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  if (v4)
  {
    v6 = [v4 mostSpecificSelectionOfClass:objc_opt_class()];
    if ([v6 itemCount] < 2)
    {
      v7 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:v4];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v7);
            }

            v17 = [(CRLInteractiveCanvasController *)self repForLayout:*(*(&v20 + 1) + 8 * i)];
            if (v17)
            {
              [v5 addObject:v17];
            }
          }

          v14 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [v6 boardItems];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (j = 0; j != v9; j = j + 1)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(CRLInteractiveCanvasController *)self repsForInfo:*(*(&v24 + 1) + 8 * j)];
            [v5 unionSet:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v9);
      }
    }
  }

  v18 = [v5 copy];

  return v18;
}

- (id)i_collaboratorPresenceSelectingLayout:(id)a3
{
  v23 = a3;
  v4 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
  v21 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CRLInteractiveCanvasController *)self currentCollaboratorPresences];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [v4 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:v7];
        v9 = [v8 mostSpecificSelectionOfClass:objc_opt_class()];
        v10 = v9;
        if (v8)
        {
          if ([v9 itemCount] < 2)
          {
            v17 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:v8];
            v18 = [v17 containsObject:v23];

            if (!v18)
            {
              goto LABEL_12;
            }

LABEL_11:
            [v21 addObject:v7];
            goto LABEL_12;
          }

          [v10 boardItems];
          v11 = v5;
          v12 = self;
          v14 = v13 = v4;
          v15 = [v23 info];
          v16 = [v14 containsObject:v15];

          v4 = v13;
          self = v12;
          v5 = v11;
          if (v16)
          {
            goto LABEL_11;
          }
        }

LABEL_12:
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  v19 = [(CRLInteractiveCanvasController *)self p_topCollaboratorPresenceOfPresences:v21];

  return v19;
}

- (id)p_topCollaboratorPresenceOfPresences:(id)a3
{
  v4 = a3;
  if ([v4 count] > 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(CRLInteractiveCanvasController *)self i_decorators];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = objc_opt_class();
          v14 = sub_100014370(v13, v12);
          v15 = v14;
          if (v14)
          {
            v16 = [v14 collaboratorPresence];
            v17 = [v4 containsObject:v16];

            if (v17)
            {
              v5 = [v15 collaboratorPresence];

              goto LABEL_14;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = [v4 anyObject];
  }

LABEL_14:

  return v5;
}

- (BOOL)i_shouldShowCollaboratorCursorForLayout:(id)a3
{
  if (self->mLayoutsShowingCollabCursorsDuringLayerUpdate)
  {
    mLayoutsShowingCollabCursorsDuringLayerUpdate = self->mLayoutsShowingCollabCursorsDuringLayerUpdate;

    return [(NSSet *)mLayoutsShowingCollabCursorsDuringLayerUpdate containsObject:a3];
  }

  else
  {
    v6 = [(CRLInteractiveCanvasController *)self i_collaboratorPresenceSelectingLayout:a3];
    v7 = v6 != 0;

    return v7;
  }
}

- (void)p_performBlockWithCachedLayoutsForCollaboratorCursors:(id)a3
{
  v4 = a3;
  [(CRLInteractiveCanvasController *)self p_beginCachingLayoutsForCollaboratorCursors];
  if (v4)
  {
    v4[2]();
  }

  [(CRLInteractiveCanvasController *)self p_endCachingLayoutsForCollaboratorCursors];
}

- (void)p_beginCachingLayoutsForCollaboratorCursors
{
  v3 = +[NSMutableSet set];
  v4 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [(CRLInteractiveCanvasController *)self currentCollaboratorPresences];
    v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v6 = *v28;
      v20 = v5;
      v21 = v4;
      v19 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [v4 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:{*(*(&v27 + 1) + 8 * i), v19, v20, v21}];
          v9 = [v8 mostSpecificSelectionOfClass:objc_opt_class()];
          v10 = v9;
          if (v8)
          {
            if ([v9 itemCount] < 2)
            {
              v11 = [(CRLInteractiveCanvasController *)self layoutsForSelectionPath:v8];
              [v3 unionSet:v11];
            }

            else
            {
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              v11 = [v10 boardItems];
              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v24;
                do
                {
                  for (j = 0; j != v13; j = j + 1)
                  {
                    if (*v24 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = [(CRLInteractiveCanvasController *)self layoutsForInfo:*(*(&v23 + 1) + 8 * j)];
                    [v3 unionSet:v16];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
                }

                while (v13);
                v5 = v20;
                v4 = v21;
                v6 = v19;
              }
            }
          }
        }

        v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }
  }

  v17 = [v3 copy];
  mLayoutsShowingCollabCursorsDuringLayerUpdate = self->mLayoutsShowingCollabCursorsDuringLayerUpdate;
  self->mLayoutsShowingCollabCursorsDuringLayerUpdate = v17;
}

- (void)p_endCachingLayoutsForCollaboratorCursors
{
  mLayoutsShowingCollabCursorsDuringLayerUpdate = self->mLayoutsShowingCollabCursorsDuringLayerUpdate;
  self->mLayoutsShowingCollabCursorsDuringLayerUpdate = 0;
}

- (void)collaboratorCursorSelectionPathChangedFromSelectionPath:(id)a3 toSelectionPath:(id)a4 collaboratorPresence:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->mCurrentCollaboratorPresences)
  {
    v11 = objc_alloc_init(NSMutableSet);
    mCurrentCollaboratorPresences = self->mCurrentCollaboratorPresences;
    self->mCurrentCollaboratorPresences = v11;
  }

  v13 = self->mCurrentCollaboratorPresences;
  if (v9)
  {
    [(NSMutableSet *)v13 addObject:v10];
    v14 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];

    if (!v14)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101376B48();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101376B5C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101376BF8();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController collaboratorCursorSelectionPathChangedFromSelectionPath:toSelectionPath:collaboratorPresence:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:5006 isFatal:0 description:"invalid nil value for '%{public}s'", "self.collaboratorCursorDelegate"];
    }
  }

  else
  {
    [(NSMutableSet *)v13 removeObject:v10];
  }

  self->mCollaboratorCursorsInvalidated = 1;
  v18 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v10];
  if (v18)
  {
    [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:v18];
  }

  else
  {
    [(CRLCanvas *)self->mCanvas i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
  }

  v19 = [(CRLInteractiveCanvasController *)self canvas];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100454134;
  v23[3] = &unk_10185B8A8;
  v23[4] = self;
  v24 = v10;
  v25 = v8;
  v26 = v9;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  [v19 performBlockAfterLayoutIfNecessary:v23];
}

- (void)scrollToCollaborator:(id)a3 withSelectionPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376D04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376D18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376DA0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController scrollToCollaborator:withSelectionPath:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:5089 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(CRLInteractiveCanvasController *)self p_followEnabled])
  {
    goto LABEL_23;
  }

  v11 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v12 = [v11 followCoordinator];
  v13 = [v12 followingParticipant];
  v14 = [v13 presences];
  v15 = [v14 containsObject:v6];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v17 = [v16 followCoordinator];
  v18 = [v17 participantsFollowingLocalParticipant];

  v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v35 + 1) + 8 * i) presences];
        v24 = [v23 containsObject:v6];

        if (v24)
        {

          goto LABEL_25;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if ((v15 & 1) == 0)
  {
    v25 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v26 = [v25 followCoordinator];
    [v26 endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

    v27 = [v6 presenceUUID];
    LODWORD(v26) = [(CRLInteractiveCanvasController *)self sendViewportRequestMessageTo:v27];

    if (v26)
    {
      v28 = [(CRLInteractiveCanvasController *)self editingCoordinator];
      v29 = [v28 followCoordinator];
      v30 = [v6 presenceUUID];
      [v29 setExpectingViewportForOneTimeScrollFrom:v30];

      v31 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100454B6C;
      block[3] = &unk_10183AE00;
      block[4] = self;
      v33 = v6;
      v34 = v7;
      dispatch_after(v31, &_dispatch_main_q, block);

      goto LABEL_25;
    }

LABEL_23:
    [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v7 scrollOptions:9];
    [(CRLInteractiveCanvasController *)self showCollaboratorHUDForCollaborator:v6 withSelectionPath:v7 allowScroll:1];
  }

LABEL_25:
}

- (id)adjustedSelectionPathForRenderingCursorPath:(id)a3
{
  if (a3)
  {
    v4 = [(CRLInteractiveCanvasController *)self adjustReceivedCollaboratorCursorSelectionPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)collapseAllExpandedCollaboratorHUDs
{
  v3 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v4 = [v3 enableCollaboratorCursors];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = v4 ^ 1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 shouldAutoHide];
        v13 = [v11 hudSize];
        if ((v12 | v9))
        {
          [v11 teardown];
        }

        else if (!v13)
        {
          [(CRLInteractiveCanvasController *)self toggleSizeForCollaboratorHUDController:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)updateCollaboratorHUDForBeginFollowingCollaborator:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376DC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376DDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376E64();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController updateCollaboratorHUDForBeginFollowingCollaborator:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5160 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(CRLInteractiveCanvasController *)self suppressesCollaboratorHUD])
  {
    v8 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
    v9 = [v8 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:v4];

    v10 = [v9 orderedSelections];
    v11 = [v10 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v13 = [(CRLInteractiveCanvasController *)self editingCoordinator];
    v14 = [v13 enableCollaboratorCursors];

    v15 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v4];
    v16 = v15;
    if (v15 && (isKindOfClass & 1) == 0 && v14)
    {
      if (![v15 hudSize])
      {
        [(CRLInteractiveCanvasController *)self toggleSizeForCollaboratorHUDController:v16];
      }
    }

    else
    {
      [v15 teardown];
    }
  }
}

- (void)updateCollaboratorHUDForStopFollowingCollaborator:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376E8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376EA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376F28();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController updateCollaboratorHUDForStopFollowingCollaborator:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5183 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(CRLInteractiveCanvasController *)self suppressesCollaboratorHUD])
  {
    v8 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v4];
    v9 = v8;
    if (v8 && ![v8 hudSize])
    {
      [(CRLInteractiveCanvasController *)self toggleSizeForCollaboratorHUDController:v9];
    }
  }
}

- (void)p_showCollaboratorHUDForCollaborator:(id)a3 withSelectionPath:(id)a4 allowScroll:(BOOL)a5 hudSize:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101376F50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101376F64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101376FEC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_showCollaboratorHUDForCollaborator:withSelectionPath:allowScroll:hudSize:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:5201 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(CRLInteractiveCanvasController *)self suppressesCollaboratorHUD])
  {
    if (!v11)
    {
      v15 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
      v11 = [v15 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:v10];
    }

    v16 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v10];
    if (!v16)
    {
      goto LABEL_37;
    }

    v17 = [v11 orderedSelections];
    v18 = [v17 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (![(CRLInteractiveCanvasController *)self p_followEnabled])
    {
      [v16 setShouldFadeOutUnconditionally:isKindOfClass & 1];
    }

    if ([v16 hudSize] == a6)
    {
      if (![(CRLInteractiveCanvasController *)self p_followEnabled])
      {
        [v16 resetFadeOutTimer];
        goto LABEL_37;
      }

      if (isKindOfClass)
      {
        if ([v16 shouldAutoHide])
        {
          [v16 resetAutoHideTimer];
LABEL_37:
          if ([(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary count])
          {
            v32 = v7;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v23 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary copy];
            v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v34;
              do
              {
                v27 = 0;
                do
                {
                  if (*v34 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  if (*(*(&v33 + 1) + 8 * v27) != v10)
                  {
                    v28 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:?];
                    if (!([v28 hudSize] | a6))
                    {
                      if (-[CRLInteractiveCanvasController p_followEnabled](self, "p_followEnabled") && ![v28 shouldAutoHide])
                      {
                        if ([v28 shouldAutoShrink])
                        {
                          [(CRLInteractiveCanvasController *)self toggleSizeForCollaboratorHUDController:v28];
                        }
                      }

                      else
                      {
                        [v28 teardown];
                      }
                    }
                  }

                  v27 = v27 + 1;
                }

                while (v25 != v27);
                v29 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
                v25 = v29;
              }

              while (v29);
            }

            v7 = v32;
          }

          [(CRLInteractiveCanvasController *)self p_collaboratorHUDPositionForSelectionPath:v11 collaboratorPresence:v10 allowScroll:v7 hudSize:a6];
          if (!v16)
          {
            v30 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v10];

            if (v30)
            {
              v31 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v10];
              [v31 teardown];
            }

            v16 = 0;
          }

          goto LABEL_60;
        }
      }

      else if ([v16 shouldAutoShrink])
      {
        [v16 resetAutoShrinkTimer];
        goto LABEL_37;
      }

      [v16 teardown];
    }

    else
    {
      [v16 teardown];

      v16 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v10];

      if (!v16)
      {
        goto LABEL_37;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101377014();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137703C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013770D8();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v20);
      }

      v21 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_showCollaboratorHUDForCollaborator:withSelectionPath:allowScroll:hudSize:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:5247 isFatal:0 description:"expected nil value for '%{public}s'", "mCollaboratorPresenceToCollaboratorHUDControllerDictionary[collaboratorPresence]"];
    }

    v16 = 0;
    goto LABEL_37;
  }

LABEL_60:
}

- (void)hideCollaboratorHUDForCollaborator:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377100();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377114();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137719C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController hideCollaboratorHUDForCollaborator:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5305 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (v4)
  {
    v8 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v4];
    v9 = v8;
    if (v8)
    {
      [v8 hideHUD];
    }
  }
}

- ($BCFEF2EB514CD33A670EC6D7ECA04AF1)p_collaboratorHUDPositionForSelectionPath:(SEL)a3 collaboratorPresence:(id)a4 allowScroll:(id)a5 hudSize:(BOOL)a6
{
  v8 = a6;
  v11 = a4;
  v12 = a5;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013771C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013771D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377260();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:5321 isFatal:0 description:"Should only update HUD on the layout thread."];
  }

  v16 = [(CRLInteractiveCanvasController *)self p_layoutForShowingCollaboratorCursorHUDAtSelectionPath:v11];
  if (!v16)
  {
    v17 = [v11 mostSpecificSelectionOfClass:objc_opt_class()];
    v18 = v17;
    if (v17)
    {
      obj = a7;
      v179 = v12;
      v182 = v11;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v19 = [v17 boardItems];
      v20 = [v19 countByEnumeratingWithState:&v197 objects:v215 count:16];
      if (v20)
      {
        v21 = v20;
        v16 = 0;
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        v24 = *v198;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v198 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = [(CRLInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:*(*(&v197 + 1) + 8 * i)];
            v27 = v26;
            if (v16)
            {
              [v26 frameInRoot];
              v30 = v28;
              v31 = v29;
              if (v29 < y || (v29 == y ? (v32 = v28 < x) : (v32 = 0), v32))
              {
                v33 = v27;

                y = v31;
                x = v30;
                v16 = v33;
              }
            }

            else
            {
              v16 = v26;
              [v16 frameInRoot];
              x = v34;
              y = v35;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v197 objects:v215 count:16];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }

      v11 = v182;
      v12 = v179;
      a7 = obj;
    }

    else
    {
      v16 = 0;
    }
  }

  v36 = [(CRLInteractiveCanvasController *)self canvasView];
  v37 = [v36 enclosingScrollView];
  if (v8)
  {
    [(CRLInteractiveCanvasController *)self p_scaledRectToScrollToForSelectionPath:v11 shouldCenterVertically:1];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
  }

  else
  {
    [(CRLInteractiveCanvasController *)self unobscuredScrollViewFrame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = [v37 superview];
    [v36 convertRect:v54 fromView:{v47, v49, v51, v53}];
    v39 = v55;
    v41 = v56;
    v43 = v57;
    v45 = v58;
  }

  [v37 safeAreaInsets];
  [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:v39 + v62, v41 + v59, v43 - (v62 + v60), v45 - (v59 + v61)];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  if (v16)
  {
    v177 = v37;
    mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing;
    if (!mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing)
    {
      v72 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
      v73 = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing;
      self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing = v72;

      mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing;
    }

    v74 = [(NSMapTable *)mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing objectForKeyedSubscript:v12];
    v75 = v74;
    v178 = v36;
    v180 = v12;
    if (!v74 || -[CRLCollaboratorCursorHUDController hudSize](v74, "hudSize") != a7 || (-[CRLCollaboratorCursorHUDController string](v75, "string"), v76 = objc_claimAutoreleasedReturnValue(), [v12 displayName], v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v76, "isEqualToString:", v77), v77, v76, (v78 & 1) == 0))
    {
      if ([(CRLInteractiveCanvasController *)self p_followEnabled])
      {
        v79 = [(CRLInteractiveCanvasController *)self editingCoordinator];
        v80 = [v79 followCoordinator];
        [v80 followingParticipant];
        objb = a7;
        v81 = v75;
        v83 = v82 = v11;
        v84 = [v12 owner];
        v85 = v83 == v84;

        v86 = [(CRLInteractiveCanvasController *)self editingCoordinator];
        v87 = [v86 followCoordinator];
        v88 = [v87 localParticipant];
        v89 = [v12 owner];
        v90 = v88 == v89;

        v11 = v82;
        v91 = v81;

        LOBYTE(v176) = v90;
        v92 = [[CRLCollaboratorCursorHUDController alloc] initWithCollaboratorPresence:v12 delegate:self hudSize:objb shouldAutoShrink:0 shouldAutoHide:0 isFollowing:v85 isLocalParticipant:v176];
      }

      else
      {
        v93 = [CRLCollaboratorCursorHUDController alloc];
        v94 = [v12 displayName];
        v92 = [(CRLCollaboratorCursorHUDController *)v93 initWithCollaboratorPresence:v12 delegate:self string:v94 hudSize:a7 shouldAutoTimeout:[(CRLInteractiveCanvasController *)self p_shouldTimeoutCollabCursor]];

        v91 = v94;
      }

      [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionaryForFastSizing setObject:v92 forKey:v12];
      v75 = v92;
    }

    v95 = [(CRLInteractiveCanvasController *)self layerHost];
    v96 = [v95 miniFormatterPresenter];
    v97 = [v96 isPresentingMiniFormatter];

    v98 = [(CRLInteractiveCanvasController *)self layerHost];
    v99 = [v98 miniFormatterPresenter];
    v184 = [v99 isPinnedToTopOfRep];

    v183 = v11;
    [v16 unscaledPositionsForCollaboratorHUDForSelectionPath:v11];
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v100 = v196 = 0u;
    v101 = [v100 countByEnumeratingWithState:&v193 objects:v214 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v194;
      while (2)
      {
        for (j = 0; j != v102; j = j + 1)
        {
          if (*v194 != v103)
          {
            objc_enumerationMutation(v100);
          }

          v105 = *(*(&v193 + 1) + 8 * j);
          [v105 position];
          v107 = v106;
          v109 = v108;
          [(CRLInteractiveCanvasController *)self viewScale];
          v111 = sub_10011F340(v107, v109, v110);
          v113 = v112;
          if (sub_1001228B4())
          {
            v125 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101377288();
            }

            v126 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110402;
              v203 = v125;
              v204 = 2082;
              v205 = "[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:]";
              v206 = 2082;
              v207 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m";
              v208 = 1024;
              v209 = 5398;
              v210 = 2112;
              v211 = v16;
              v212 = 2112;
              v213 = v183;
              _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Position provided by %@ for selection %@ has NaN components!", buf, 0x36u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013772B0();
            }

            v127 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130F3A8(v127);
            }

            v128 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:]"];
            v129 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
            [CRLAssertionHandler handleFailureInFunction:v128 file:v129 lineNumber:5398 isFatal:0 description:"Position provided by %@ for selection %@ has NaN components!", v16, v183];

            goto LABEL_72;
          }

          -[CRLCollaboratorCursorHUDController scaledFrameForHUDAtPoint:withDirection:](v75, "scaledFrameForHUDAtPoint:withDirection:", [v105 direction], v111, v113);
          [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
          v115 = v114;
          v117 = v116;
          v119 = v118;
          v121 = v120;
          if (v97)
          {
            v122 = [v105 direction];
            v123 = [v105 direction] == 1;
            if (v184)
            {
              v124 = v122 == 2;
            }

            else
            {
              v124 = v123;
            }
          }

          else
          {
            v124 = 0;
          }

          v216.origin.x = v64;
          v216.origin.y = v66;
          v216.size.width = v68;
          v216.size.height = v70;
          v218.origin.x = v115;
          v218.origin.y = v117;
          v218.size.width = v119;
          v218.size.height = v121;
          if (CGRectContainsRect(v216, v218) && !v124)
          {
            [v105 position];
            v155 = v154;
            v157 = v156;
            v144 = [v105 direction];

LABEL_102:
            v11 = v183;
            v36 = v178;
            v12 = v180;
            v37 = v177;
            goto LABEL_103;
          }
        }

        v102 = [v100 countByEnumeratingWithState:&v193 objects:v214 count:16];
        if (v102)
        {
          continue;
        }

        break;
      }
    }

LABEL_72:
    v185 = v75;

    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    obja = v100;
    v130 = [obja countByEnumeratingWithState:&v189 objects:v201 count:16];
    if (v130)
    {
      v131 = v130;
      v132 = *v190;
      if (v184)
      {
        v133 = 2;
      }

      else
      {
        v133 = 1;
      }

      while (2)
      {
        for (k = 0; k != v131; k = k + 1)
        {
          if (*v190 != v132)
          {
            objc_enumerationMutation(obja);
          }

          v135 = *(*(&v189 + 1) + 8 * k);
          if ([v135 allowedToFlip])
          {
            [v135 position];
            v137 = v136;
            v139 = v138;
            [(CRLInteractiveCanvasController *)self viewScale];
            v141 = sub_10011F340(v137, v139, v140);
            v143 = v142;
            if (sub_1001228B4())
            {
              v158 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_1013772D8();
              }

              v159 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110402;
                v203 = v158;
                v204 = 2082;
                v205 = "[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:]";
                v206 = 2082;
                v207 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m";
                v208 = 1024;
                v209 = 5431;
                v210 = 2112;
                v211 = v16;
                v212 = 2112;
                v213 = v183;
                _os_log_error_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Position provided by %@ for selection %@ has NaN components!", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101377300();
              }

              v160 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10130F3A8(v160);
              }

              v161 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:]"];
              v162 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
              [CRLAssertionHandler handleFailureInFunction:v161 file:v162 lineNumber:5431 isFatal:0 description:"Position provided by %@ for selection %@ has NaN components!", v16, v183];

              goto LABEL_99;
            }

            v144 = sub_10050D01C([v135 direction]);
            [(CRLCollaboratorCursorHUDController *)v185 scaledFrameForHUDAtPoint:v144 withDirection:v141, v143];
            [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
            v146 = v145;
            v148 = v147;
            v150 = v149;
            v152 = v151;
            if (v144 == v133)
            {
              v153 = v97;
            }

            else
            {
              v153 = 0;
            }

            v217.origin.x = v64;
            v217.origin.y = v66;
            v217.size.width = v68;
            v217.size.height = v70;
            if (CGRectContainsRect(v217, *&v146) && (v153 & 1) == 0)
            {
              [v135 position];
              v155 = v164;
              v157 = v165;

              goto LABEL_102;
            }
          }
        }

        v131 = [obja countByEnumeratingWithState:&v189 objects:v201 count:16];
        if (v131)
        {
          continue;
        }

        break;
      }
    }

LABEL_99:

    v11 = v183;
    v36 = v178;
    v12 = v180;
    v37 = v177;
  }

  v155 = sub_100120414(v64, v66, v68, v70);
  v157 = v163;
  v144 = 0;
LABEL_103:
  [(CRLInteractiveCanvasController *)self viewScale];
  v167 = sub_10011F340(v155, v157, v166);
  v169 = v168;
  v170 = [(CRLInteractiveCanvasController *)self canvas];
  [v170 contentsScale];
  v172 = sub_10012218C(v167, v169, v171);
  v174 = v173;

  retstr->var0.x = v172;
  retstr->var0.y = v174;
  retstr->var1 = v144;
  *&retstr->var2 = 0;
  retstr->var2 = 1;

  return result;
}

- (id)p_layoutForShowingCollaboratorCursorHUDAtSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self modelsForSelectionPath:v4];
  v6 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(CRLInteractiveCanvasController *)self layoutForInfoNearestVisibleRect:*(*(&v15 + 1) + 8 * i) intersectingSelectionPath:v4, v15];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 anyObject];

  return v13;
}

- (void)removeAllCollaboratorHUDControllers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (![v7 hudSize])
        {
          [v7 teardown];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setShouldSuppressesCollaboratorHUD:(BOOL)a3
{
  if (self->mSuppressesCollaboratorHUD != a3)
  {
    self->mSuppressesCollaboratorHUD = a3;
    if (a3)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v8 + 1) + 8 * v7) teardown];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

- (void)addCollaboratorHUDController:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377328();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137733C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013773C4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController addCollaboratorHUDController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5531 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  mCollaboratorPresenceToCollaboratorHUDControllerDictionary = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary;
  if (!mCollaboratorPresenceToCollaboratorHUDControllerDictionary)
  {
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    v10 = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary;
    self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary = v9;

    mCollaboratorPresenceToCollaboratorHUDControllerDictionary = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary;
  }

  v11 = [v4 collaboratorPresence];
  v12 = [(NSMapTable *)mCollaboratorPresenceToCollaboratorHUDControllerDictionary objectForKeyedSubscript:v11];

  if (v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013773EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377414();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137749C();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController addCollaboratorHUDController:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:5536 isFatal:0 description:"Showing two huds for the same lobby session"];
  }

  v16 = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary;
  v17 = [v4 collaboratorPresence];
  [(NSMapTable *)v16 setObject:v4 forKey:v17];

  [(CRLInteractiveCanvasController *)self addDecorator:v4];
}

- (void)removeCollaboratorHUDController:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013774C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013774D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377560();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController removeCollaboratorHUDController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5542 isFatal:0 description:"Should only update HUD on the layout thread."];
  }

  mCollaboratorPresenceToCollaboratorHUDControllerDictionary = self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary;
  v9 = [v4 collaboratorPresence];
  [(NSMapTable *)mCollaboratorPresenceToCollaboratorHUDControllerDictionary removeObjectForKey:v9];

  [(CRLInteractiveCanvasController *)self removeDecorator:v4];
}

- (void)updatePositionForCollaboratorHUDController:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377588();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137759C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377624();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController updatePositionForCollaboratorHUDController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5549 isFatal:0 description:"Should only update HUD on the layout thread."];
  }

  v8 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
  v9 = [v4 collaboratorPresence];
  v10 = [v8 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:v9];

  v11 = [v4 collaboratorPresence];
  if ([v4 hudSize])
  {
    mCurrentlyScrolling = 0;
  }

  else
  {
    mCurrentlyScrolling = self->mCurrentlyScrolling;
  }

  -[CRLInteractiveCanvasController p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:](self, "p_collaboratorHUDPositionForSelectionPath:collaboratorPresence:allowScroll:hudSize:", v10, v11, mCurrentlyScrolling, [v4 hudSize]);

  [v4 hideHUD];
}

- (void)positionDidUpdateForCollaboratorHUDController:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137764C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377660();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013776E8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController positionDidUpdateForCollaboratorHUDController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:5562 isFatal:0 description:"Should only update HUD on the layout thread."];
  }

  [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:v4];
}

- (void)beginFollowing:(id)a3 forHUDController:(id)a4
{
  v5 = a3;
  v6 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v7 = [v6 followCoordinator];
  v8 = [v5 owner];

  [v7 localParticipantWantsToStartFollowingCollaborator:v8];

  [(CRLInteractiveCanvasController *)self donateTipEventParticipantFollowed];
}

- (void)endFollowing:(id)a3 forHUDController:(id)a4
{
  v5 = [(CRLInteractiveCanvasController *)self editingCoordinator:a3];
  v4 = [v5 followCoordinator];
  [v4 endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:0];
}

- (void)toggleSizeForCollaboratorHUDController:(id)a3
{
  v4 = a3;
  v6 = [v4 collaboratorPresence];
  v5 = [v4 hudSize];

  [(CRLInteractiveCanvasController *)self p_showCollaboratorHUDForCollaborator:v6 withSelectionPath:0 allowScroll:0 hudSize:v5 == 0];
}

- (double)contentsScale
{
  v2 = [(CRLInteractiveCanvasController *)self canvas];
  [v2 contentsScale];
  v4 = v3;

  return v4;
}

- (UITraitCollection)currentTraitCollection
{
  v2 = [(CRLInteractiveCanvasController *)self canvasView];
  v3 = [v2 window];
  v4 = [v3 traitCollection];

  return v4;
}

- (void)beginDynamicOperation
{
  if (self->mDynamicOperationState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377710();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377724();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013777AC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController beginDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:5651 isFatal:0 description:"didn't end previous dynamic operation before starting a new one"];
  }

  if (atomic_load(&self->mDynamicOperationCounter))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013777D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013777FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377884();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController beginDynamicOperation]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:5652 isFatal:0 description:"Inspector-driven dynamic operation in process when beginning separate dynamic operation"];
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->mDelegate);
    [v12 dynamicOperationWillBegin];
  }

  v13 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v13 suspendCollaborationWithReason:@"CRLDynamicOperation"];

  self->mDynamicOperationState = 1;
  v14 = [(CRLInteractiveCanvasController *)self layerHost];
  v15 = [v14 canvasLayer];
  [v15 bounds];
  [(CRLInteractiveCanvasController *)self convertBoundsToUnscaledRect:?];
  self->mUnscaledRectToGrowCanvasDuringDynamicOperation.origin.x = v16;
  self->mUnscaledRectToGrowCanvasDuringDynamicOperation.origin.y = v17;
  self->mUnscaledRectToGrowCanvasDuringDynamicOperation.size.width = v18;
  self->mUnscaledRectToGrowCanvasDuringDynamicOperation.size.height = v19;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [(CRLInteractiveCanvasController *)self i_decorators];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v25 willBeginDynamicOperation];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v22);
  }

  v26 = [(CRLInteractiveCanvasController *)self tmCoordinator];
  v27 = [v26 controllingTM];
  v28 = [v27 tracker];

  if (!v28)
  {
    goto LABEL_42;
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v28 shouldAllowScroll] ^ 1;
  }

  else
  {
    v29 = 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v28 allowPopoverToRemainOpenDuringDynamicOperation] & 1) == 0)
  {
    v30 = [(CRLInteractiveCanvasController *)self layerHost];
    v31 = [v30 asiOSCVC];

    v32 = [v31 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v32 dismissPresentedViewController];
    }
  }

  if (v29)
  {
LABEL_42:
    v33 = [(CRLInteractiveCanvasController *)self layerHost];
    v34 = [v33 canvasView];
    v35 = [v34 enclosingScrollView];
    [v35 setScrollEnabled:0];
  }
}

- (void)willEndDynamicOperation
{
  if (self->mDynamicOperationState != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013778AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013778C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377948();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController willEndDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:5706 isFatal:0 description:"didn't begin or already ending dynamic operation"];
  }

  self->mDynamicOperationState = 2;
}

- (void)endDynamicOperation
{
  if (self->mDynamicOperationState != 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377970();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377984();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377A0C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController endDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:5711 isFatal:0 description:"ending dynamic operation without starting a new one or calling willEnd"];
  }

  if (atomic_load(&self->mDynamicOperationCounter))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377A34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377A5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377AE4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController endDynamicOperation]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:5712 isFatal:0 description:"Cannot begin inspector dynamic operation while in non-inspector dynamic operation"];
  }

  self->mDynamicOperationState = 0;
  v10 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v10 resumeCollaborationWithReason:@"CRLDynamicOperation"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(CRLInteractiveCanvasController *)self i_decorators];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 didEndDynamicOperation];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->mDelegate);
    [v19 dynamicOperationDidEnd];
  }

  [(CRLCanvas *)self->mCanvas layoutInvalidated];
  v20 = [(CRLInteractiveCanvasController *)self layerHost];
  v21 = [v20 canvasView];
  v22 = [v21 enclosingScrollView];
  [v22 setScrollEnabled:1];
}

- (BOOL)isInDynamicOperation
{
  if (self->mDynamicOperationState)
  {
    return 1;
  }

  v3 = atomic_load(&self->mDynamicOperationCounter);
  return v3 > 0;
}

- (BOOL)shouldSupportedDynamicOperationsEnqueueCommandsInRealTime
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 thermalState];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CRLForceEnableRealTimeCommands"];

  if (v6)
  {
    return 1;
  }

  if (v4 > 1)
  {
    return 0;
  }

  v8 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  v9 = [v8 isInRealTimeSyncSession];

  return v9;
}

- (void)beginPossiblyParallelInspectorDynamicOperation
{
  atomic_fetch_add(&self->mDynamicOperationCounter, 1u);
  v2 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v2 suspendCollaborationWithReason:@"CRLPossiblyParallelInspectorDynamicOperation"];
}

- (void)endPossiblyParallelInspectorDynamicOperation
{
  if (atomic_fetch_add(&self->mDynamicOperationCounter, 0xFFFFFFFF) <= 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377B0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377B20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377BA8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController endPossiblyParallelInspectorDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:5782 isFatal:0 description:"Ended more dynamic operations than you began!"];
  }

  v6 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v6 resumeCollaborationWithReason:@"CRLPossiblyParallelInspectorDynamicOperation"];
}

- (BOOL)shouldAllowKeyCommands
{
  v3 = [(CRLInteractiveCanvasController *)self textInputResponder];
  v4 = [v3 isIgnoringKeyboardInput];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(CRLInteractiveCanvasController *)self layerHost];
    v7 = [v6 asiOSCVC];
    if ([v7 shouldIgnoreKeyboardInput])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = ![(CRLInteractiveCanvasController *)self isInDynamicOperation];
    }
  }

  return v5;
}

- (BOOL)p_areAnyCollaboratorsPresent
{
  v2 = [(CRLInteractiveCanvasController *)self currentCollaboratorPresences];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)copyEditabilityPropertiesFromInteractiveCanvasController:(id)a3
{
  v4 = [a3 documentIsSharedReadOnly];

  [(CRLInteractiveCanvasController *)self setDocumentIsSharedReadOnly:v4];
}

- (void)setDocumentIsSharedReadOnly:(BOOL)a3
{
  if (self->mDocumentIsSharedReadOnly != a3)
  {
    v15[5] = v6;
    v15[6] = v5;
    v15[11] = v3;
    v15[12] = v4;
    v7 = a3;
    self->mDocumentIsSharedReadOnly = a3;
    [(CRLInteractiveCanvasController *)self documentEditabilityDidChange];
    if (v7)
    {
      v9 = [(CRLInteractiveCanvasController *)self layerHost];
      v10 = [v9 miniFormatterPresenter];
      [v10 dismissMiniFormatter];

      v11 = [(CRLInteractiveCanvasController *)self layerHost];
      v12 = [v11 asiOSCVC];
      [v12 resetGesturesForContextSwitch];

      v13 = [(CRLInteractiveCanvasController *)self editorController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100458DDC;
      v15[3] = &unk_1018644A0;
      v15[4] = self;
      [v13 enumerateEditorsOnStackLeastToMostSpecificUsingBlock:v15];

      if (+[UIKeyboard isInHardwareKeyboardMode])
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100458E64;
        v14[3] = &unk_10183AB38;
        v14[4] = self;
        dispatch_async(&_dispatch_main_q, v14);
      }
    }
  }
}

- (void)documentEditabilityDidChange
{
  v3 = [(CRLInteractiveCanvasController *)self p_editingDisabledReasons];
  v4 = [(CRLInteractiveCanvasController *)self editorController];
  [v4 setEditingDisabledReasons:v3];

  v5 = [(CRLInteractiveCanvasController *)self editorController];
  [v5 enumerateEditorsOnStackUsingBlock:&stru_1018644E0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"documentEditabilityDidChange"];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setUsesAlternateDrawableSelectionHighlight:(BOOL)a3
{
  if (self->mUsesAlternateDrawableSelectionHighlight != a3)
  {
    self->mUsesAlternateDrawableSelectionHighlight = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(CRLCanvas *)self->mCanvas topLevelReps];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 recursivelyPerformSelectorIfImplemented:"i_invalidateSelectionHighlightRenderable"];
          [v9 recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(CRLInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (BOOL)shouldSuppressSelectionKnobsForRep:(id)a3
{
  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  v4 = a3;
  v5 = [(CRLMultiselectResizeInfo *)mMultiselectResizeInfo representedSelectedBoardItems];
  v6 = [v4 info];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (id)additionalDependentLayoutsForBoardItem:(id)a3
{
  v4 = a3;
  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  if (mMultiselectResizeInfo && (-[CRLMultiselectResizeInfo representedSelectedBoardItems](mMultiselectResizeInfo, "representedSelectedBoardItems"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v4], v6, v7))
  {
    v8 = [(CRLInteractiveCanvasController *)self layoutForInfo:self->mMultiselectResizeInfo];
    if (v8)
    {
      v9 = [NSSet setWithObject:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)additionalChildInfosForLayout:(id)a3
{
  v4 = a3;
  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  if (mMultiselectResizeInfo && (-[CRLMultiselectResizeInfo parentInfo](mMultiselectResizeInfo, "parentInfo"), v6 = objc_claimAutoreleasedReturnValue(), [v4 info], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7))
  {
    v10 = self->mMultiselectResizeInfo;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)i_invalidateSelectionHighlightLayers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"i_invalidateSelectionHighlightRenderable"];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CRLInteractiveCanvasController *)self layoutInvalidated];
}

- (void)beginScrollingOperation
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CRLInteractiveCanvasController *)self i_decorators];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 willBeginScrollingOperation];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)endScrollingOperation
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CRLInteractiveCanvasController *)self i_decorators];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didEndScrollingOperation];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)p_beginZoomingOperation
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CRLInteractiveCanvasController *)self i_decorators];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 willBeginZoomingOperation];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CRLInteractiveCanvasController *)self p_fadeOutForZoomOperation];
}

- (void)p_endZoomingOperation
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CRLInteractiveCanvasController *)self i_decorators];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didEndZoomingOperation];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [(CRLInteractiveCanvasController *)self layerHost];
  v10 = [v9 canvasLayer];
  [v10 layoutIfNeededIgnoringDisabledLayout];

  [(CRLInteractiveCanvasController *)self p_fadeInForZoomOperation];
}

- (void)p_fadeOutForZoomOperation
{
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v3 setDuration:0.15];
  v4 = [NSNumber numberWithFloat:0.0];
  [v3 setToValue:v4];

  [v3 setRemovedOnCompletion:0];
  [v3 setFillMode:kCAFillModeForwards];
  v5 = [NSMutableArray alloc];
  v6 = [(CRLInteractiveCanvasController *)self overlayLayer];
  v7 = [v6 sublayers];
  v8 = [v5 initWithCapacity:{objc_msgSend(v7, "count")}];
  mLayersWithZoomFadeAnimation = self->mLayersWithZoomFadeAnimation;
  self->mLayersWithZoomFadeAnimation = v8;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = [(CRLInteractiveCanvasController *)self overlayLayer];
  v11 = [v10 sublayers];

  v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if ([v16 crl_hideOverlayLayerDuringZoomOperations])
        {
          [v16 addAnimation:v3 forKey:@"CRLInteractiveCanvasControllerBeginZoomingOperation"];
          [(NSMutableArray *)self->mLayersWithZoomFadeAnimation addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(CRLCanvas *)self->mCanvas allReps];
  v17 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v28 = *v34;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        [v20 handleFadeOutForZoom];
        v21 = [v20 additionalRenderablesToFadeDuringZoom];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v30;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v29 + 1) + 8 * k) layer];
              [v26 addAnimation:v3 forKey:@"CRLInteractiveCanvasControllerBeginZoomingOperation"];
              [(NSMutableArray *)self->mLayersWithZoomFadeAnimation addObject:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v23);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v18);
  }
}

- (void)p_fadeInForZoomOperation
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(CRLCanvas *)self->mCanvas allReps];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * i) handleFadeInForZoom];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v8 setDuration:0.15];
  v9 = [NSNumber numberWithFloat:0.0];
  [v8 setFromValue:v9];

  [v8 setRemovedOnCompletion:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->mLayersWithZoomFadeAnimation;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        [v15 opacity];
        v16 = [NSNumber numberWithFloat:?];
        [v8 setToValue:v16];

        [v15 addAnimation:v8 forKey:@"CRLInteractiveCanvasControllerEndZoomingOperation"];
        [v15 removeAnimationForKey:@"CRLInteractiveCanvasControllerBeginZoomingOperation"];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  mLayersWithZoomFadeAnimation = self->mLayersWithZoomFadeAnimation;
  self->mLayersWithZoomFadeAnimation = 0;
}

- (void)setShowInvisibleObjects:(BOOL)a3
{
  if (self->mShowInvisibleObjects != a3)
  {
    self->mShowInvisibleObjects = a3;
    [(CRLInteractiveCanvasController *)self layoutInvalidated];
  }
}

- (CRLDynamicOperationController)dynamicOperationController
{
  mDynOpController = self->mDynOpController;
  if (!mDynOpController)
  {
    v4 = [[CRLDynamicOperationController alloc] initWithInteractiveCanvasController:self];
    v5 = self->mDynOpController;
    self->mDynOpController = v4;

    mDynOpController = self->mDynOpController;
  }

  return mDynOpController;
}

- (CRLTrackerManipulatorCoordinator)tmCoordinator
{
  mTMCoordinator = self->mTMCoordinator;
  if (!mTMCoordinator)
  {
    v4 = objc_alloc_init(CRLTrackerManipulatorCoordinator);
    v5 = self->mTMCoordinator;
    self->mTMCoordinator = v4;

    mTMCoordinator = self->mTMCoordinator;
  }

  return mTMCoordinator;
}

- (id)customRotateTrackerForCurrentSelection
{
  if ([(CRLInteractiveCanvasController *)self p_shouldTransformCurrentSelectionAsSingleEntity])
  {
    v3 = +[NSMutableSet set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(CRLInteractiveCanvasController *)self infosForCurrentSelectionPath];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(CRLInteractiveCanvasController *)self repForInfo:*(*(&v14 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 repForRotating];

            if (v11 == v10)
            {
              [v3 addObject:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [[CRLMultiRepRotateTracker alloc] initWithReps:v3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)repDragTrackerDelegateForRep:(id)a3
{
  mRepDragTrackerDelegateWrapper = self->mRepDragTrackerDelegateWrapper;
  if (!mRepDragTrackerDelegateWrapper)
  {
    v5 = [[CRLCanvasRepDragTrackerDelegateWrapper alloc] initWithInteractiveCanvasController:self];
    v6 = self->mRepDragTrackerDelegateWrapper;
    self->mRepDragTrackerDelegateWrapper = v5;

    mRepDragTrackerDelegateWrapper = self->mRepDragTrackerDelegateWrapper;
  }

  return mRepDragTrackerDelegateWrapper;
}

- (CRLGestureDispatcher)gestureDispatcher
{
  mGestureDispatcher = self->mGestureDispatcher;
  if (!mGestureDispatcher)
  {
    v4 = [[CRLGestureDispatcher alloc] initWithInteractiveCanvasController:self];
    v5 = self->mGestureDispatcher;
    self->mGestureDispatcher = v4;

    mGestureDispatcher = self->mGestureDispatcher;
  }

  return mGestureDispatcher;
}

- (void)updateSelectionForTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4
{
  v4 = a4;
  v6 = [(CRLInteractiveCanvasController *)self hitRep:a3.x, a3.y];
  [(CRLInteractiveCanvasController *)self updateSelectionForInteractionWithRep:v6 extendingSelection:v4];
}

- (void)updateSelectionForInteractionWithRep:(id)a3 extendingSelection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v19 = [(CRLInteractiveCanvasController *)self canvasEditor];
  v7 = [v6 repForSelecting];

  if (v7)
  {
    v8 = [v7 parentRepToPerformSelecting];
    if (v8)
    {
      [(CRLInteractiveCanvasController *)self endEditing];
      [v8 selectChildRep:v7 extendingSelection:v4];
    }

    else if (v4)
    {
      [(CRLInteractiveCanvasController *)self endEditing];
      v10 = [v7 info];
      v11 = [v7 isSelectedIgnoringLocking];
      v12 = [v19 canvasEditorHelper];
      v13 = v12;
      if (v11)
      {
        [v12 canvasSelectionPathExcludingInfo:v10];
      }

      else
      {
        [v12 canvasSelectionPathIncludingInfo:v10];
      }
      v14 = ;
      v15 = [(CRLInteractiveCanvasController *)self editorController];
      [v15 setSelectionPath:v14];
    }

    else if ([v7 isSelectedIgnoringLocking])
    {
      [(CRLInteractiveCanvasController *)self updateSelectionForTapOnSelectedRep:v7];
    }

    else
    {
      [(CRLInteractiveCanvasController *)self endEditing];
      v16 = [v7 info];
      v17 = [v19 selectionPathWithInfo:v16];

      v18 = [(CRLInteractiveCanvasController *)self editorController];
      [v18 setSelectionPath:v17];
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    [(CRLInteractiveCanvasController *)self endEditing];
    v8 = [v19 selectionPathWithInfos:0];
    v9 = [(CRLInteractiveCanvasController *)self editorController];
    [v9 setSelectionPath:v8];
  }

LABEL_15:
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 extendingSelection:(BOOL)a4 inputType:(int64_t)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = [(CRLInteractiveCanvasController *)self hitRep:?];
  v11 = [v10 repForHandleSingleTap];
  v12 = v11;
  if (!v6)
  {
    if (!v11)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (![v10 isLocked] || objc_msgSend(v10, "wantsToHandleTapsWhenLocked")) && (objc_msgSend(v12, "handleSingleTapAtPoint:inputType:", a5, x, y))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = [v11 handleSingleTapsWhileExtendingSelectionAtPoint:a5 inputType:{x, y}];
  v14 = (v12 != 0) | v13;
  if (v12 && (v13 & 1) == 0)
  {
LABEL_9:
    [(CRLInteractiveCanvasController *)self updateSelectionForTapAtPoint:v6 extendingSelection:x, y];
LABEL_10:
    v14 = 1;
  }

LABEL_12:

  return v14 & 1;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLInteractiveCanvasController *)self hitRep:?];
  v9 = [v8 repForSelecting];

  if (v9)
  {
    v10 = [v9 info];

    if (v10)
    {
      v11 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
      v12 = [(CRLInteractiveCanvasController *)self editorController];
      v13 = [v12 selectionPath];
      v14 = [v11 boardItemsForSelectionPath:v13];

      if ([v14 count] != 1 || (objc_msgSend(v9, "info"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "containsObject:", v15), v15, (v16 & 1) == 0))
      {
        v17 = [(CRLInteractiveCanvasController *)self canvasEditor];
        v18 = [v9 info];
        v19 = [v17 selectionPathWithInfo:v18];
        v20 = [(CRLInteractiveCanvasController *)self editorController];
        [v20 setSelectionPath:v19];
      }
    }

    if (![v9 isLocked] || objc_msgSend(v9, "wantsToHandleDoubleTapsWhenLocked"))
    {
      [v9 handleDoubleTapAtPoint:a4 inputType:{x, y}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(CRLInteractiveCanvasController *)self canvasView];
      v22 = [v21 layerHost];
      v23 = [v22 miniFormatterPresenter];
      v24 = [(CRLInteractiveCanvasController *)self editorController];
      v25 = [v24 selectionPath];
      [v23 presentMiniFormatterForSelectionPath:v25];
    }
  }

  else
  {
    v26 = [(CRLInteractiveCanvasController *)self layerHost];
    v27 = [v26 asUIKitHost];
    v28 = [v27 isCurrentlyInQuickSelectMode];

    if (v28)
    {
      [(CRLInteractiveCanvasController *)self updateSelectionForTapAtPoint:0 extendingSelection:x, y];
    }
  }

  return v9 != 0;
}

- (BOOL)handleMultipleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLInteractiveCanvasController *)self hitRep:?];
  v7 = [v6 repForSelecting];

  if (v7)
  {
    v8 = [v7 info];

    if (v8)
    {
      v9 = [(CRLInteractiveCanvasController *)self canvasEditor];
      v10 = [v7 info];
      v11 = [v9 selectionPathWithInfo:v10];
      v12 = [(CRLInteractiveCanvasController *)self editorController];
      [v12 setSelectionPath:v11];
    }

    if (([v7 isLocked] & 1) == 0)
    {
      [v7 handleMultipleTapAtPoint:{x, y}];
    }
  }

  return v7 != 0;
}

- (void)tappedCanvasBackgroundAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(CRLInteractiveCanvasController *)self layerHost];
  v30 = [v7 asUIKitHost];

  v8 = [v30 isCurrentlyInQuickSelectMode];
  v9 = [(CRLInteractiveCanvasController *)self editorController];
  v10 = [v9 selectionPath];
  v11 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:v10];
  v12 = [v11 count];

  if ((v8 & 1) == 0)
  {
    v13 = [(CRLInteractiveCanvasController *)self canvasEditor];
    v14 = [v13 selectionPathWithInfos:0];

    v15 = [(CRLInteractiveCanvasController *)self editorController];
    [v15 setSelectionPath:v14 withFlags:0x2000];
  }

  v16 = [(CRLInteractiveCanvasController *)self layerHost];
  v17 = [v16 asiOSCVC];

  [v17 becomeFirstResponderIfAppropriate];
  v18 = [v17 delegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0 || ([v17 delegate], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "currentDocumentMode"), v21 = objc_claimAutoreleasedReturnValue(), v20, LOBYTE(v20) = objc_msgSend(v21, "handleTapOnCanvasBackgroundAtUnscaledPoint:", x, y), v21, (v20 & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = objc_loadWeakRetained(&self->mDelegate);
      v25 = [v24 tappedCanvasBackgroundAtPoint:{x, y}];

      if ((v25 | v8))
      {
        goto LABEL_15;
      }
    }

    else if (v8)
    {
      goto LABEL_15;
    }

    v26 = [(CRLInteractiveCanvasController *)self editorController];
    v27 = [v26 selectionPath];
    v28 = [(CRLInteractiveCanvasController *)self infosForSelectionPath:v27];
    v29 = [v28 count];

    if (!v29)
    {
      if (([v30 contextMenuMightBeDisplayed] & 1) != 0 || v12)
      {
        [v30 hideEditMenu];
      }

      else if (![(CRLInteractiveCanvasController *)self editingDisabled])
      {
        [v30 showDefaultEditUIForCurrentSelection];
      }
    }
  }

LABEL_15:
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  mCurrentAnimation = self->mCurrentAnimation;
  if (mCurrentAnimation)
  {
    v6 = [(CRLCanvasAnimation *)mCurrentAnimation actionForLayer:a3 forKey:a4];
  }

  else if ([(CRLInteractiveCanvasLayerUpdater *)self->mLayerUpdater isCanvasContentLayer:a3, a4])
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->mShouldSuppressRendering)
  {
    goto LABEL_36;
  }

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377BD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377BE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377C80();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController drawLayer:inContext:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:6391 isFatal:0 description:"invalid nil value for '%{public}s'", "layer"];

    if (a4)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
LABEL_14:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377CA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377CD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377D6C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController drawLayer:inContext:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:6392 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];
  }

LABEL_23:
  v14 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377D94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377DBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377E58();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController drawLayer:inContext:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:6394 isFatal:0 description:"invalid nil value for '%{public}s'", "self.i_interactiveCanvasLayerHelper"];
  }

  v18 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v19 = [v18 repForLayer:v7];

  if (v19)
  {
    [(CRLInteractiveCanvasController *)self i_drawRepWithReadLock:v19 inContext:a4 forLayer:v7];
  }

LABEL_36:
}

- (BOOL)shouldLayoutTilingLayer:(id)a3
{
  v4 = [(CRLInteractiveCanvasController *)self layerHost];
  v5 = [v4 canvasLayer];
  v6 = ([v5 isLayoutDisabled] & 1) == 0 && !self->mAnimatingViewScale;

  return v6;
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377E80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377E94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101377F30();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController visibleBoundsForTilingLayer:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:6408 isFatal:0 description:"invalid nil value for '%{public}s'", "layer"];
  }

  v8 = [(CRLInteractiveCanvasController *)self layerHost];
  v9 = [v8 canvasLayer];

  v10 = v4;
  v11 = [v10 superlayer];

  v12 = v10;
  if (v11)
  {
    v12 = v10;
    if (v9 != v10)
    {
      v12 = v10;
      do
      {
        v13 = v12;
        v12 = [v12 superlayer];

        v14 = [v12 superlayer];
      }

      while (v14 && v12 != v9);
    }
  }

  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v18 = [v12 superlayer];
  if (v18)
  {
    v19 = v18;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 bounds];
    [v12 convertRect:v10 fromLayer:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = objc_opt_class();
    v48 = [v12 delegate];
    v20 = sub_100013F00(v47, v48);

    if (v20)
    {
      v19 = [(CRLInteractiveCanvasController *)self canvasView];
      [v20 convertRect:v19 toView:{v40, v42, v44, v46}];
      x = v49;
      v23 = v50;
      v22 = v51;
      v21 = v52;
      goto LABEL_19;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101377F58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101377F80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137801C();
    }

    v65 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v65);
    }

    v19 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController visibleBoundsForTilingLayer:]"];
    v66 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v66 lineNumber:6431 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasSubview"];

LABEL_18:
    v20 = 0;
    v21 = height;
    v22 = width;
    v23 = y;
    x = CGRectNull.origin.x;
LABEL_19:

    goto LABEL_20;
  }

  v20 = 0;
  v21 = height;
  v22 = width;
  v23 = y;
  x = CGRectNull.origin.x;
LABEL_20:
  v67.origin.x = x;
  v67.origin.y = v23;
  v67.size.width = v22;
  v67.size.height = v21;
  v71.origin.x = CGRectNull.origin.x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  if (CGRectEqualToRect(v67, v71))
  {
    [v10 bounds];
    [v9 convertRect:v10 fromLayer:?];
    x = v25;
    v23 = v26;
    v22 = v27;
    v21 = v28;
  }

  [(CRLInteractiveCanvasController *)self visibleBoundsRectForTiling];
  v72.origin.x = x;
  v72.origin.y = v23;
  v72.size.width = v22;
  v72.size.height = v21;
  v69 = CGRectIntersection(v68, v72);
  v29 = v69.origin.x;
  v30 = v69.origin.y;
  v31 = v69.size.width;
  v32 = v69.size.height;
  if (v20)
  {
    v33 = [(CRLInteractiveCanvasController *)self canvasView];
    [v20 convertRect:v33 fromView:{v29, v30, v31, v32}];
    v29 = v34;
    v30 = v35;
    v31 = v36;
    v32 = v37;

    v38 = v12;
  }

  else
  {
    v38 = v9;
  }

  [v38 convertRect:v10 toLayer:{v29, v30, v31, v32}];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v61 = v54;
  v62 = v56;
  v63 = v58;
  v64 = v60;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (BOOL)scrollViewShouldOptOutOfUIScrollViewContentOffsetAnimationForScrollView:(id)a3
{
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 asiOSCVC];
  v5 = [v4 shouldOptOutOfUIScrollViewContentOffsetAnimation];

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(CRLInteractiveCanvasController *)self i_canvasDidUpdateVisibleBounds];
  v5 = ([v4 isDragging] & 1) != 0 || (objc_msgSend(v4, "isDecelerating") & 1) != 0 || self->mAnimatingScroll;
  [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:v5];
  v6 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v7 = [v6 popoutLayer];

  if (v7)
  {
    v8 = [(CRLInteractiveCanvasController *)self layerHost];
    v9 = [v8 canvasLayer];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    v14 = [(CRLInteractiveCanvasController *)self layerHost];
    v15 = [v14 canvasView];
    v16 = [v15 canvasLayer];
    [v16 contentInset];
    v18 = v17;
    v20 = v19;

    [v4 frame];
    v22 = v21;
    [v4 contentOffset];
    v24 = v11 + v22 - v23 - v20;
    [v4 frame];
    v26 = v25;
    [v4 contentOffset];
    v28 = v13 + v26 - v27 - v18;
    [v7 position];
    if (v30 != v24 || v29 != v28)
    {
      [v7 setPosition:{v24, v28}];
    }

    [(CRLInteractiveCanvasController *)self visibleBoundsRect];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = [v7 sublayers];
    v41 = [v40 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v66;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v66 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v65 + 1) + 8 * i);
          [v45 frame];
          v74.origin.x = v33;
          v74.origin.y = v35;
          v74.size.width = v37;
          v74.size.height = v39;
          [v45 setHidden:{!CGRectIntersectsRect(v73, v74)}];
        }

        v42 = [v40 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v42);
    }
  }

  v46 = [(CRLInteractiveCanvasController *)self delegate];
  v47 = objc_opt_respondsToSelector();

  if (v47)
  {
    v48 = [(CRLInteractiveCanvasController *)self delegate];
    [v48 interactiveCanvasControllerDidScroll:self];
  }

  v49 = +[NSNotificationCenter defaultCenter];
  v70 = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v50 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
  v71 = v50;
  v51 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  [v49 postNotificationName:@"CRLCanvasUpdateScrollNotification" object:self userInfo:v51];

  v52 = [(CRLInteractiveCanvasController *)self layerHost];
  v53 = [v52 asUIKitHost];
  [v53 scrollViewDidScroll];

  [(CRLInteractiveCanvasController *)self i_viewScrollDidChange];
  if ([(CRLInteractiveCanvasController *)self p_collaboratorOverlaysNeedUpdateForScroll])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v54 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
    v55 = [v54 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v62;
      do
      {
        for (j = 0; j != v56; j = j + 1)
        {
          if (*v62 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:*(*(&v61 + 1) + 8 * j)];
        }

        v56 = [v54 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v56);
    }
  }

  if ([(CRLInteractiveCanvasController *)self p_followEnabled])
  {
    [(CRLInteractiveCanvasController *)self collapseAllExpandedCollaboratorHUDs];
  }

  if (self->mCreateRepsForOffscreenLayouts)
  {
    v59 = [(CRLInteractiveCanvasController *)self layerHost];
    v60 = [v59 canvasLayer];
    [v60 crl_setNeedsLayoutForTilingLayers];
  }

  else
  {
    [(CRLInteractiveCanvasController *)self invalidateVisibleBounds];
  }

  if (!self->mCurrentlyScrolling)
  {
    [(CRLInteractiveCanvasController *)self p_viewScrollingEnded];
  }
}

- (BOOL)p_collaboratorOverlaysNeedUpdateForScroll
{
  if ([(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary count])
  {
    return 1;
  }

  v4 = [(CRLInteractiveCanvasController *)self collaboratorCursorDelegate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->mCurrentCollaboratorPresences;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 collaboratorCursorSelectionPathForRenderer:self collaboratorPresence:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v10)
        {
          v11 = v10;
          v12 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
          v13 = [v12 boardItemsForSelectionPath:v11];
          v14 = [v13 count];

          if (v14)
          {
            v3 = 1;
            goto LABEL_14;
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v3 = 0;
LABEL_14:

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:1];
  [(CRLInteractiveCanvasController *)self beginScrollingOperation];
  v4 = +[NSNotificationCenter defaultCenter];
  v7 = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v5 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"CRLCanvasWillScrollNotification" object:self userInfo:v6];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:0];
    [(CRLInteractiveCanvasController *)self p_viewScrollingEnded];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CRLCanvasWillEndDraggingNotification" object:self];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if ([(CRLInteractiveCanvasController *)self currentlyScrolling])
  {
    [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:0];

    [(CRLInteractiveCanvasController *)self p_viewScrollingEnded];
  }
}

- (void)contentInsetsDidChangeForScrollView:(id)a3
{
  v4 = [(CRLInteractiveCanvasController *)self layerHost];
  v3 = [v4 canvasLayer];
  [v3 fixFrameAndScrollView];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  self->mAnimatingScroll = 0;
  [(CRLInteractiveCanvasController *)self performSelector:"p_scrollViewDidEndScrollingAnimation:" withObject:v4 afterDelay:0.0];
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  if (v6 && [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary count]&& ![(CRLInteractiveCanvasController *)self scrollViewShouldOptOutOfUIScrollViewContentOffsetAnimationForScrollView:v6])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSMapTable *)self->mCollaboratorPresenceToCollaboratorHUDControllerDictionary crl_allObjects];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CRLInteractiveCanvasController *)self invalidateLayersForDecorator:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLiOSScrollViewWillScrollToTopNotification" object:v3];

  return 1;
}

- (void)p_scrollViewDidEndScrollingAnimation:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRLInteractiveCanvasController *)self scrollViewDidScroll:v5];
  }

  v4 = ([v5 isDragging] & 1) != 0 || (objc_msgSend(v5, "isDecelerating") & 1) != 0 || self->mAnimatingScroll;
  [(CRLInteractiveCanvasController *)self p_setCurrentlyScrolling:v4];
  if (!self->mCurrentlyScrolling)
  {
    [(CRLInteractiveCanvasController *)self p_viewScrollingEnded];
  }
}

- (void)p_setCurrentlyScrolling:(BOOL)a3
{
  v3 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101378044();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378058();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013780E0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_setCurrentlyScrolling:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:6668 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (self->mCurrentlyScrolling != v3)
  {
    self->mCurrentlyScrolling = v3;
    if (v3)
    {
      v8 = [(CRLInteractiveCanvasController *)self editingCoordinator];
      [v8 suspendCollaborationWithReason:@"CRLCanvasScrolling"];
    }

    else
    {
      if ([(CRLInteractiveCanvasController *)self p_areAnyCollaboratorsPresent])
      {
        self->mSelectionIsCurrentlyOnscreen = [(CRLInteractiveCanvasController *)self p_currentSelectionIsOnscreen];
      }

      v8 = [(CRLInteractiveCanvasController *)self editingCoordinator];
      [v8 resumeCollaborationWithReason:@"CRLCanvasScrolling"];
    }
  }
}

- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4
{
  v8 = a3;
  v6 = a4;
  mSelectionPathToScrollTo = self->mSelectionPathToScrollTo;
  if (mSelectionPathToScrollTo && [(CRLInteractiveCanvasController *)self shouldCancelScrollingToSelectionPath:mSelectionPathToScrollTo forChanges:v8 withChangeSource:v6])
  {
    self->mSelectionShouldBeClearedInDidProcessAllChanges = 1;
  }
}

- (void)didProcessAllChanges
{
  if (self->mSelectionShouldBeClearedInDidProcessAllChanges)
  {
    if (self->mSelectionPathToScrollTo)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101378108();
      }

      v3 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
      {
        mSelectionPathToScrollTo = self->mSelectionPathToScrollTo;
        v5 = 138412290;
        v6 = mSelectionPathToScrollTo;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling scroll to %@.", &v5, 0xCu);
      }
    }

    [(CRLInteractiveCanvasController *)self cancelScrollToCurrentSelectionPathAfterLayout];
    self->mSelectionShouldBeClearedInDidProcessAllChanges = 0;
  }
}

- (void)p_updateInfosToDisplayIfNeeded
{
  v3 = [(CRLInteractiveCanvasController *)self delegate];
  v4 = [v3 infosToDisplayForInteractiveCanvasController:self];
  v5 = [v4 mutableCopy];

  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  if (mMultiselectResizeInfo)
  {
    v7 = [(CRLMultiselectResizeInfo *)mMultiselectResizeInfo parentInfo];

    if (!v7)
    {
      [v5 addObject:self->mMultiselectResizeInfo];
    }
  }

  v8 = [(CRLInteractiveCanvasController *)self temporaryAdditionalBoardItemsToDisplay];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(CRLInteractiveCanvasController *)self temporaryAdditionalBoardItemsToDisplay];
    v11 = [v5 crl_intersectionWithArray:v10];
    v12 = [v11 count];

    if (v12)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137811C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101378130();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013781B8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController p_updateInfosToDisplayIfNeeded]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:6753 isFatal:0 description:"Temporary additional board items should not already be in our model!"];
    }

    v16 = [(CRLInteractiveCanvasController *)self temporaryAdditionalBoardItemsToDisplay];
    [v5 addObjectsFromArray:v16];
  }

  v17 = [(CRLInteractiveCanvasController *)self infosToDisplay];
  v18 = [v17 isEqual:v5];

  if ((v18 & 1) == 0)
  {
    [(CRLInteractiveCanvasController *)self setInfosToDisplay:v5];
  }
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013781E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013781F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137827C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController processChanges:forChangeSource:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:6763 isFatal:0 description:"change notifications should only come in on the main thread"];
  }

  [(CRLInteractiveCanvasController *)self p_updateInfosToDisplayIfNeeded];
  if ([v6 crl_containsObjectPassingTest:&stru_101864740])
  {
    [(CRLInteractiveCanvasController *)self recreateAllLayoutsAndReps];
  }

  mMultiselectResizeInfo = self->mMultiselectResizeInfo;
  if (mMultiselectResizeInfo)
  {
    v12 = [(CRLMultiselectResizeInfo *)mMultiselectResizeInfo representedSelectedBoardItems];
    if ([v12 containsObject:v7])
    {
      v13 = [v6 crl_containsObjectPassingTest:&stru_101864760];

      if (!v13)
      {
        goto LABEL_18;
      }

      v12 = [(CRLInteractiveCanvasController *)self repForInfo:self->mMultiselectResizeInfo];
      [v12 invalidateKnobs];
    }
  }

LABEL_18:
  if ([(CRLCanvas *)self->mCanvas i_needsLayout])
  {
    v14 = [(CRLInteractiveCanvasController *)self layerHost];
    v15 = [v14 canvasLayer];
    [v15 setNeedsLayout];
  }

  v16 = objc_opt_class();
  v22 = sub_1003038E0(v7, v16, 1, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLCanvasElementInfo);
  if (v22)
  {
    v23 = [(CRLInteractiveCanvasController *)self repsForInfo:v22];
    [v23 makeObjectsPerformSelector:"processChanges:" withObject:v6];
  }
}

- (void)i_acquireLockAndPerformAction:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10045CEF8;
  v10[3] = &unk_101864788;
  v10[4] = self;
  v3 = a3;
  v11 = v3;
  v12 = &v13;
  v4 = objc_retainBlock(v10);
  (v4[2])();
  if ((v14[3] & 1) == 0)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013782A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013782CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378354();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v7, v17, v5);
    }

    v8 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_acquireLockAndPerformAction:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:6811 isFatal:0 description:"failed to perform locked action"];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)makeEditorPerformAction:(SEL)a3 withSender:(id)a4
{
  v8 = a4;
  v6 = [(CRLInteractiveCanvasController *)self editorController];
  v7 = [v6 editorForEditAction:a3 withSender:v8];

  if (v7)
  {
    [v7 performSelector:a3 withObject:v8];
  }
}

- (BOOL)canPerformInteractiveAction:(SEL)a3 withSender:(id)a4
{
  v10 = 0;
  v6 = a4;
  v7 = [(CRLInteractiveCanvasController *)self editorController];
  v8 = [v7 editorForEditAction:a3 withSender:v6 response:&v10];

  return v8 != 0;
}

- (void)performDiscreteFrameChangingOperationOnDrawables:(id)a3 withBlock:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)setTextResponderEditorTo:(id)a3 withFlags:(unint64_t)a4
{
  v6 = a3;
  if (v6 || !self->mPreventSettingNilEditorOnTextResponder && (!self->mTextInputResponderShareCount || ([(CRLTextInputResponder *)self->mTextInputResponder editor], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 = 0, !v7)))
  {
    v8 = v6;
    [(CRLTextInputResponder *)self->mTextInputResponder setEditor:v6 withFlags:a4];
    v6 = v8;
  }
}

- (void)i_textDidChange
{
  if ([(CRLCanvas *)self->mCanvas i_needsLayout])
  {
    if (!+[NSThread isMainThread])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137837C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101378390();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101378418();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v3);
      }

      v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_textDidChange]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:6900 isFatal:0 description:"Don't expect to have changed text on background thread"];
    }

    self->mNotifyTIRTextChangedAfterLayout = 1;
  }
}

- (void)i_selectionDidChange
{
  if ([(CRLCanvas *)self->mCanvas i_needsLayout])
  {
    if (!+[NSThread isMainThread])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101378440();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101378454();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013784DC();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v3);
      }

      v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_selectionDidChange]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:6913 isFatal:0 description:"Don't expect to have changed selection on background thread"];
    }

    ++self->mNotifyTIRSelectionChangedAfterLayout;
  }
}

- (void)beginAnimations:(id)a3
{
  v4 = a3;
  if (self->mCurrentAnimation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101378504();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378518();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013785A0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController beginAnimations:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:6929 isFatal:0 description:"animation nesting not yet supported"];
  }

  +[CATransaction flush];
  +[CATransaction begin];
  v8 = [[CRLCanvasAnimation alloc] initWithAnimationID:v4];
  mCurrentAnimation = self->mCurrentAnimation;
  self->mCurrentAnimation = v8;
}

- (void)commitAnimations
{
  mCurrentAnimation = self->mCurrentAnimation;
  if (!mCurrentAnimation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013785C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013785DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378664();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController commitAnimations]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:6938 isFatal:0 description:"can't commit if we don't have an animation open"];

    mCurrentAnimation = self->mCurrentAnimation;
  }

  self->mCurrentAnimation = 0;

  +[CATransaction commit];
}

- (_TtC8Freeform28CRLMathCalculationController)mathCalculationController
{
  mMathCalculationController = self->mMathCalculationController;
  if (!mMathCalculationController)
  {
    v4 = objc_alloc_init(_TtC8Freeform28CRLMathCalculationController);
    v5 = self->mMathCalculationController;
    self->mMathCalculationController = v4;

    mMathCalculationController = self->mMathCalculationController;
  }

  return mMathCalculationController;
}

- (void)i_canvasWillLayout:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLInteractiveCanvasController *)self freehandDrawingToolkit];
  v6 = [v5 currentTool];
  v7 = sub_100014370(v4, v6);

  if ([v7 isCurrentlyTracking])
  {
    [v7 doWorkBeforeCanvasLayout];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = self->mRepsToSetNeedsDisplay;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [(CRLInteractiveCanvasController *)self renderableForRep:v13];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 layer];
          [(CRLInteractiveCanvasController *)self setNeedsDisplayOnLayer:v16];
        }

        [(NSMapTable *)self->mRepsToRectsToInvalidate removeObjectForKey:v13];
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->mRepsToSetNeedsDisplay removeAllObjects];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->mRepsToRectsToInvalidate;
  v18 = [(NSMapTable *)v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        v23 = [(CRLInteractiveCanvasController *)self renderableForRep:v22];
        if (v23)
        {
          memset(&v31[1], 0, sizeof(CGAffineTransform));
          if (v22)
          {
            [v22 transformToConvertNaturalToLayerRelative];
          }

          v24 = [(NSMapTable *)self->mRepsToRectsToInvalidate objectForKey:v22];
          if ([v24 count])
          {
            v25 = 0;
            do
            {
              [v24 rectAtIndex:v25];
              v31[0] = v31[1];
              v43 = CGRectApplyAffineTransform(v42, v31);
              x = v43.origin.x;
              y = v43.origin.y;
              width = v43.size.width;
              height = v43.size.height;
              v30 = [v23 layer];
              [(CRLInteractiveCanvasController *)self setNeedsDisplayInRect:v30 onLayer:x, y, width, height];

              ++v25;
            }

            while (v25 < [v24 count]);
          }
        }
      }

      v19 = [(NSMapTable *)v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  [(NSMapTable *)self->mRepsToRectsToInvalidate removeAllObjects];
}

- (void)i_layout
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137868C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013786A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378728();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_layout]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:6992 isFatal:0 description:"i_layout should only be called by our CV, from the main thread"];
  }

  [(CRLCanvas *)self->mCanvas i_layoutIfNeededUpdatingLayerTree];
  sub_1002637E0();
}

- (void)i_viewWillBeginZooming
{
  [(CRLInteractiveCanvasController *)self viewScale];
  self->mDynamicViewScale = v3;
  self->mDynamicallyZooming = 1;
  [(CRLInteractiveCanvasController *)self p_beginZoomingOperation];
  v4 = [(CRLInteractiveCanvasController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRLInteractiveCanvasController *)self delegate];
    [v6 interactiveCanvasControllerWillZoom:self];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v25 = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v8 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
  v26 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v7 postNotificationName:@"CRLCanvasWillZoomNotification" object:self userInfo:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v20 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"willBeginZooming"];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v15 suspendCollaborationWithReason:@"CRLCanvasZooming"];

  v16 = [(CRLInteractiveCanvasController *)self layerHost];
  v17 = [v16 canvasLayer];
  [v17 layoutIfNeeded];

  v18 = [(CRLInteractiveCanvasController *)self layerHost];
  v19 = [v18 canvasLayer];
  [v19 updateCanvasEdgeLayersIfNecessary];
}

- (void)i_viewDidZoomToViewScale:(double)a3 notify:(BOOL)a4
{
  v4 = a4;
  v7 = [(CRLInteractiveCanvasController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRLInteractiveCanvasController *)self delegate];
    [v9 interactiveCanvasControllerIsZooming:self];
  }

  if (v4)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v14[0] = @"CRLInteractiveCanvasControllerInteractionSourceKey";
    v11 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
    v14[1] = @"CRLInteractiveCanvasControllerViewScaleKey";
    v15[0] = v11;
    v12 = [NSNumber numberWithDouble:a3];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v10 postNotificationName:@"CRLCanvasUpdateZoomNotification" object:self userInfo:v13];
  }

  [(CRLInteractiveCanvasController *)self willChangeValueForKey:@"currentViewScale"];
  self->mDynamicViewScale = a3;
  [(CRLInteractiveCanvasController *)self didChangeValueForKey:@"currentViewScale"];
}

- (void)i_viewDidEndZoomingWithUserInfo:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"didEndZooming"];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v10 = [(CRLInteractiveCanvasController *)self editingCoordinator];
  [v10 resumeCollaborationWithReason:@"CRLCanvasZooming"];

  if ([(CRLInteractiveCanvasController *)self shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    v11 = [(CRLInteractiveCanvasController *)self layerHost];
    v12 = [v11 canvasLayer];
    [v12 fixFrameAndScrollView];
  }

  self->mDynamicallyZooming = 0;
  [(CRLInteractiveCanvasController *)self invalidateVisibleBounds];
  [(CRLInteractiveCanvasController *)self p_endZoomingOperation];
  v13 = [(CRLInteractiveCanvasController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CRLInteractiveCanvasController *)self delegate];
    [v15 interactiveCanvasControllerDidZoom:self];
  }

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 postNotificationName:@"CRLCanvasDidZoomNotification" object:self userInfo:v4];

  v17 = [(CRLInteractiveCanvasController *)self layerHost];
  v18 = [v17 canvasLayer];
  [v18 updateCanvasEdgeLayersIfNecessary];
}

- (void)i_canvasContentsScaleDidChange
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(CRLInteractiveCanvasController *)self i_decorators];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 screenScaleDidChange];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) recursivelyPerformSelector:"screenScaleDidChange"];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)i_canvasWideGamutValueDidChange
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * i) recursivelyPerformSelector:"wideGamutValueDidChange"];
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)i_viewScaleDidChange
{
  [(CRLInteractiveCanvasController *)self i_canvasDidUpdateVisibleBounds];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:"viewScaleDidChange"];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CRLInteractiveCanvasController *)self layoutInvalidated];
  [(CRLInteractiveCanvasController *)self invalidateAllLayers];
}

- (double)i_viewScaleForProposedViewScale:(double)a3 originalViewScale:(double)a4 isFastPinch:(BOOL)a5
{
  v5 = a5;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v10 = objc_opt_respondsToSelector();

  v11 = objc_loadWeakRetained(&self->mDelegate);
  v12 = v11;
  if (v10)
  {
    [v11 canvasViewScaleForProposedViewScale:a3 originalViewScale:a4];
    a3 = v13;
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      v16 = [v15 canvasViewScaleDetentsForInteractiveCanvasController:self isFastPinch:v5];
      v17 = [v16 sortedArrayUsingSelector:"compare:"];

      if ([v17 count] < 2)
      {
        v20 = 0.04;
      }

      else
      {
        v18 = [v17 count];
        v19 = +[NSMutableIndexSet indexSet];
        v20 = 0.04;
        if (v18 != 1)
        {
          for (i = 1; i != v18; ++i)
          {
            v22 = [v17 objectAtIndexedSubscript:i - 1];
            [v22 crl_CGFloatValue];
            v24 = v23;

            v25 = [v17 objectAtIndexedSubscript:i];
            [v25 crl_CGFloatValue];
            v27 = v26;

            v28 = (v27 - v24) * 0.5;
            if (v28 <= 0.02)
            {
              if (vabdd_f64(a3, v24) >= vabdd_f64(a3, v27))
              {
                v29 = i - 1;
              }

              else
              {
                v29 = i;
              }

              [v19 addIndex:v29];
            }

            else if (v20 > v28)
            {
              v20 = (v27 - v24) * 0.5;
            }
          }
        }

        if ([v19 count])
        {
          v30 = [v17 mutableCopy];
          [v30 removeObjectsAtIndexes:v19];

          v17 = v30;
        }
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v17;
      v32 = [v31 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v39;
        while (2)
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v39 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v38 + 1) + 8 * j) crl_CGFloatValue];
            if (vabdd_f64(a3, v36) < v20)
            {
              a3 = v36;
              goto LABEL_29;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:
    }
  }

  return a3;
}

- (CGSize)i_canvasCenterOffsetForProposedViewScale:(double)a3 originalViewScale:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->mDelegate);
    [v9 canvasCenterOffsetForProposedViewScale:a3 originalViewScale:a4];
    width = v10;
    height = v12;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)i_nextCanvasViewScaleDetentForProposedViewScale:(double)a3 greater:(BOOL)a4 isFastPinch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v10 = objc_opt_respondsToSelector();

  v11 = objc_loadWeakRetained(&self->mDelegate);
  v12 = v11;
  if (v10)
  {
    [v11 nextCanvasViewScaleDetentForProposedViewScale:v6 greater:a3];
    v14 = v13;

    return v14;
  }

  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) == 0)
  {
    v37 = [(CRLInteractiveCanvasController *)self layerHost];
    v38 = [v37 canvasLayer];
    v39 = v38;
    if (v6)
    {
      [v38 maximumPinchViewScale];
    }

    else
    {
      [v38 minimumPinchViewScale];
    }

    v14 = v40;

    return v14;
  }

  v16 = objc_loadWeakRetained(&self->mDelegate);
  v17 = [v16 canvasViewScaleDetentsForInteractiveCanvasController:self isFastPinch:v5];

  v18 = [(CRLInteractiveCanvasController *)self layerHost];
  v19 = [v18 canvasLayer];
  [v19 minimumPinchViewScale];
  v20 = [NSNumber numberWithDouble:?];
  v47[0] = v20;
  v21 = [(CRLInteractiveCanvasController *)self layerHost];
  v22 = [v21 canvasLayer];
  [v22 maximumPinchViewScale];
  v23 = [NSNumber numberWithDouble:?];
  v47[1] = v23;
  v24 = [NSArray arrayWithObjects:v47 count:2];
  v25 = [v17 crl_arrayByAddingNonContainedObjectsFromArray:v24];

  v26 = [v25 sortedArrayUsingSelector:"compare:"];

  v27 = [v26 objectAtIndexedSubscript:0];
  [v27 crl_CGFloatValue];
  v29 = v28;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v26;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      v34 = 0;
      v35 = v29;
      do
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v42 + 1) + 8 * v34) crl_CGFloatValue];
        v29 = v36;
        if (v6)
        {
          if (v36 > a3)
          {
            goto LABEL_18;
          }
        }

        else if (v36 >= a3)
        {
          goto LABEL_19;
        }

        v34 = v34 + 1;
        v35 = v36;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v35 = v29;
    }

    while (v32);
  }

  else
  {
LABEL_18:
    v35 = v29;
  }

LABEL_19:

  return v35;
}

- (void)i_viewScrollDidChange
{
  [(CRLInteractiveCanvasController *)self i_canvasDidUpdateVisibleBounds];
  v3 = [(CRLInteractiveCanvasController *)self layerHost];
  v4 = [v3 canvasLayer];
  v5 = [v4 associatedBackgroundLayer];
  [v5 setNeedsLayout];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) recursivelyPerformSelector:"viewScrollDidChange"];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)i_viewScrollingEndedWithUserInfo:(id)a3
{
  v4 = a3;
  [(CRLInteractiveCanvasController *)self endScrollingOperation];
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    [v7 interactiveCanvasControllerDidStopScrolling:self];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(CRLCanvas *)self->mCanvas topLevelReps];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) recursivelyPerformSelector:"viewScrollingEnded"];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"CRLCanvasDidScrollNotification" object:self userInfo:v4];
}

- (void)i_recordUserViewScale
{
  v11 = [(CRLEditorController *)self->mEditorController textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CRLInteractiveCanvasController *)self canvas];
    [v3 viewScale];
    v5 = v4;

    [v11 targetPointSizeForSelectionWithViewScale:v5];
    if (v6 >= 12.0 && v6 <= 72.0)
    {
      [(CRLInteractiveCanvasController *)self p_setTargetPointSize:?];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->mDelegate);
    [v10 interactiveCanvasControllerDidZoomWithUserGesture:self];
  }
}

- (void)i_repNeedsDisplay:(id)a3
{
  v8 = a3;
  v4 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (v4)
  {
    v5 = [(CRLInteractiveCanvasController *)self renderableForRep:v8];
    if (v5 && ([v8 directlyManagesLayerContent] & 1) == 0)
    {
      [(NSMutableSet *)self->mRepsToSetNeedsDisplay addObject:v8];
      v6 = [(CRLInteractiveCanvasController *)self layerHost];
      v7 = [v6 canvasLayer];
      [v7 setNeedsLayout];
    }

    else
    {
      [(CRLInteractiveCanvasController *)self i_setNeedsDisplayIfNeededForAncestorRepOf:v8];
    }
  }
}

- (void)i_repNeedsDisplay:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v9 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (v9)
  {
    v10 = [(CRLInteractiveCanvasController *)self renderableForRep:v14];
    if (v10 && ([v14 directlyManagesLayerContent] & 1) == 0)
    {
      v11 = [(NSMapTable *)self->mRepsToRectsToInvalidate objectForKey:v14];
      if (!v11)
      {
        v11 = objc_alloc_init(CRLMutableRectList);
        [(NSMapTable *)self->mRepsToRectsToInvalidate setObject:v11 forKey:v14];
      }

      [(CRLMutableRectList *)v11 addRect:x, y, width, height];
      v12 = [(CRLInteractiveCanvasController *)self layerHost];
      v13 = [v12 canvasLayer];
      [v13 setNeedsLayout];
    }

    else
    {
      [(CRLInteractiveCanvasController *)self p_setNeedsDisplayIfNeededForAncestorRepOf:v14 inRect:x, y, width, height];
    }
  }

  _objc_release_x2();
}

- (id)i_descriptionForViewScale:(double)a3 zoomMethod:(int64_t)a4
{
  v7 = [(CRLInteractiveCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->mDelegate), [WeakRetained descriptionForCanvasViewScale:a4 zoomMethod:a3], v9 = objc_claimAutoreleasedReturnValue(), WeakRetained, !v9))
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 viewScaleToDisplayForCanvasViewScale:a3];
      a3 = v10;
    }

    v11 = [NSNumber numberWithDouble:a3];
    v9 = [NSNumberFormatter localizedStringFromNumber:v11 numberStyle:3];
  }

  return v9;
}

- (void)p_updateCanvasSizeFromLayouts
{
  [(CRLInteractiveCanvasController *)self defaultMinimumUnscaledCanvasSize];
  v3 = sub_10011ECB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(CRLInteractiveCanvasController *)self canvas];
  v11 = [v10 isAnchoredAtRight];

  if (v11)
  {
    v3 = v3 - v7;
    v12 = -1.79769313e308;
  }

  else
  {
    v12 = 1.79769313e308;
  }

  [(CRLCanvas *)self->mCanvas unscaledRectOfLayouts];
  v37.origin.x = v13;
  v37.origin.y = v14;
  v37.size.width = v15;
  v37.size.height = v16;
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  v35 = CGRectUnion(v34, v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v12;
  v38.size.height = 1.79769313e308;
  v36 = CGRectIntersection(v35, v38);
  width = v36.size.width;
  height = v36.size.height;
  [(CRLInteractiveCanvasController *)self canvasScrollingOutset:v36.origin.x];
  v20 = sub_10011F334(width, height, v19);
  v22 = v21;
  if ([(CRLInteractiveCanvasController *)self isInDynamicOperation])
  {
    v23 = [(CRLInteractiveCanvasController *)self layerHost];
    v24 = [v23 canvasLayer];
    [v24 unscaledSize];
    v26 = v25;

    if (v26 >= v20)
    {
      v20 = v26;
    }

    v27 = [(CRLInteractiveCanvasController *)self layerHost];
    v28 = [v27 canvasLayer];
    [v28 unscaledSize];
    v30 = v29;

    if (v30 >= v22)
    {
      v22 = v30;
    }
  }

  v32 = [(CRLInteractiveCanvasController *)self layerHost];
  v31 = [v32 canvasLayer];
  [v31 setUnscaledSize:{v20, v22}];
}

- (BOOL)i_isRepContentPlatformView:(id)a3
{
  v4 = a3;
  v5 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101378750();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378764();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378800();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_isRepContentPlatformView:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:7352 isFatal:0 description:"invalid nil value for '%{public}s'", "self.i_interactiveCanvasLayerHelper"];
  }

  v9 = [(CRLInteractiveCanvasController *)self i_interactiveCanvasLayerHelper];
  v10 = [v9 isRepContentPlatformView:v4];

  return v10;
}

- (void)i_drawRepWithReadLock:(id)a3 inContext:(CGContext *)a4 forLayer:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101378828();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137883C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013788D8();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130F3A8(v9);
  }

  v10 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:7357 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

  if (!a4)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101378900();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378928();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013789C4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController i_drawRepWithReadLock:inContext:forLayer:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:7358 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];
  }

LABEL_22:
  CGContextSaveGState(a4);
  [v7 setupForDrawingInLayer:v8 context:a4];
  if ([v7 drawsDescendantsIntoLayer])
  {
    CGContextSaveGState(a4);
    v15 = [v7 layout];
    v16 = [v15 geometry];
    v17 = v16;
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    CGAffineTransformInvert(&transform, &v20);
    CGContextConcatCTM(a4, &transform);

    v18 = [v7 childrenToExcludeWhenDrawingDescendantsIntoLayer];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10045FE1C;
    v19[3] = &unk_10183F5F8;
    v19[4] = v18;
    [v7 recursivelyDrawInContext:a4 keepingChildrenPassingTest:v19];
    CGContextRestoreGState(a4);
  }

  else
  {
    [v7 drawInLayerContext:a4];
  }

  [v7 didDrawInLayer:v8 context:a4];
  CGContextRestoreGState(a4);
}

- (void)p_viewScrollingEnded
{
  v5 = @"CRLInteractiveCanvasControllerInteractionSourceKey";
  v3 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(CRLInteractiveCanvasController *)self performSelector:"i_viewScrollingEndedWithUserInfo:" withObject:v4 afterDelay:0.0];
}

- (void)p_textGesturesWillBeginNotification:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"CRLTextGesturesICC"];
  v8 = sub_100014370(v5, v7);

  if (v8 == self)
  {
    *&self->mTextGesturesInFlight = 1;
  }
}

- (void)p_textGesturesDidEndNotification:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"CRLTextGesturesICC"];
  v8 = sub_100014370(v5, v7);

  if (v8 == self)
  {
    self->mTextGesturesInFlight = 0;
    if (self->mSelectionDidChangeDuringTextGestures)
    {
      self->mSelectionDidChangeDuringTextGestures = 0;
      WeakRetained = objc_loadWeakRetained(&self->mDelegate);
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0 || (v11 = objc_loadWeakRetained(&self->mDelegate), v12 = [v11 allowTextEditingToBegin], v11, v12))
      {
        v13 = [(CRLInteractiveCanvasController *)self layerHost];
        v14 = [v13 asiOSCVC];

        if ([v14 preserveEditorSelection])
        {
          v15 = 128;
        }

        else
        {
          v15 = 0;
        }

        [(CRLInteractiveCanvasController *)self p_selectionDoneChangingWithFlags:v15];
      }

      if (self->mDidSuppressScrollToSelectionDuringTextGestures)
      {
        mSelectionPathToScrollTo = self->mSelectionPathToScrollTo;
        v17 = [(CRLInteractiveCanvasController *)self editorController];
        v18 = [v17 selectionPath];
        LODWORD(mSelectionPathToScrollTo) = [(CRLSelectionPath *)mSelectionPathToScrollTo isEqual:v18];

        if (mSelectionPathToScrollTo)
        {
          v19 = self->mOptionsForScrollingToSelection | 0x100;
        }

        else
        {
          if (self->mShouldAnimateScrollAfterTextGestures)
          {
            v19 = 257;
          }

          else
          {
            v19 = 256;
          }

          if ([(CRLInteractiveCanvasController *)self shouldZoomOnSelectionChange])
          {
            v19 |= 2uLL;
          }
        }

        [(CRLInteractiveCanvasController *)self layoutInvalidated];
        v20 = [(CRLInteractiveCanvasController *)self editorController];
        v21 = [v20 selectionPath];
        [(CRLInteractiveCanvasController *)self scrollToSelectionPath:v21 scrollOptions:v19];
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = [(CRLCanvas *)self->mCanvas topLevelReps];
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v27 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"gesturesDidEnd:" withObject:v4];
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }
}

- (void)p_selectionPathDidChangeFromSelectionPath:(id)a3 toSelectionPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLInteractiveCanvasController *)self selectionModelTranslator];
  v9 = v8;
  if (v6)
  {
    [v8 infosForSelectionPath:v6];
  }

  else
  {
    +[NSSet set];
  }
  v10 = ;
  v28 = v7;
  v29 = v6;
  v27 = v9;
  if (v7)
  {
    [v9 infosForSelectionPath:v7];
  }

  else
  {
    +[NSSet set];
  }
  v11 = ;
  v12 = [v11 crl_setBySubtractingSet:v10];
  v26 = v10;
  v24 = [v10 crl_setBySubtractingSet:v11];
  v25 = v12;
  v23 = [v12 setByAddingObjectsFromSet:?];
  v13 = [(CRLInteractiveCanvasController *)self p_infosByAddingAllAncestors:?];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(CRLInteractiveCanvasController *)self repsForInfo:*(*(&v34 + 1) + 8 * i)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [(CRLInteractiveCanvasController *)self invalidateOverlayLayersForRep:*(*(&v30 + 1) + 8 * j)];
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v20);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v15);
  }

  if (self->mTextGesturesInFlight)
  {
    self->mSelectionDidChangeDuringTextGestures = 1;
  }

  [(CRLInteractiveCanvasController *)self sendRealTimeEnterToPeersIfNecessary];
  [(CRLInteractiveCanvasController *)self sendSelectionPathToPeersIfNecessary];
}

- (id)p_infosByAddingAllAncestors:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) parentInfo];
        v11 = objc_opt_class();
        v17 = sub_100303920(v10, v11, 1, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLCanvasElementInfo);

        if (v17)
        {
          do
          {
            [v4 addObject:v17];
            v18 = [v17 parentInfo];
            v19 = objc_opt_class();
            v25 = sub_100303920(v18, v19, 1, v20, v21, v22, v23, v24, &OBJC_PROTOCOL___CRLCanvasElementInfo);

            v17 = v25;
          }

          while (v25);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v26 = [v5 setByAddingObjectsFromSet:v4];

  return v26;
}

- (void)p_selectionDoneChangingWithFlags:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    [v7 selectionPathDidChangeWithFlags:a3];
  }
}

- (double)defaultTargetPointSize
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (double)targetPointSize
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 floatForKey:@"TSDTargetPointSize"];
  v5 = v4;

  if (v5 != 0.0)
  {
    return v5;
  }

  [(CRLInteractiveCanvasController *)self defaultTargetPointSize];
  return result;
}

- (void)p_setTargetPointSize:(double)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"TSDTargetPointSize" forKey:v4];
}

- (CGRect)outsetSelectionRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    v15.origin.x = CGRectZero.origin.x;
    v15.origin.y = CGRectZero.origin.y;
    v15.size.width = CGRectZero.size.width;
    v15.size.height = CGRectZero.size.height;
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectEqualToRect(v11, v15))
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      v13 = CGRectInset(v12, -15.0, -15.0);
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
    }
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)i_setNeedsDisplayIfNeededForAncestorRepOf:(id)a3
{
  v4 = a3;
  [v4 clipRect];
  if ([(CRLInteractiveCanvasController *)self p_setNeedsDisplayIfNeededForAncestorRepOf:v4 inRect:?])
  {
    [(NSMutableSet *)self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry addObject:v4];
  }
}

- (BOOL)p_setNeedsDisplayIfNeededForAncestorRepOf:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [v9 ancestorRepForDrawingIntoLayer];
  if (v10)
  {
    [(CRLInteractiveCanvasController *)self p_convertNeedsDisplayRect:v9 fromRep:v10 toRepForDrawing:x, y, width, height];
    [(CRLInteractiveCanvasController *)self i_repNeedsDisplay:v10 inRect:?];
  }

  return v10 != 0;
}

- (CGRect)p_convertNeedsDisplayRect:(CGRect)a3 fromRep:(id)a4 toRepForDrawing:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v33, 0, sizeof(v33));
  v10 = a5;
  v11 = a4;
  v12 = [v11 layout];
  v13 = v12;
  if (v12)
  {
    [v12 transform];
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  v14 = [v11 parentRep];

  if (v14)
  {
    v15 = [v14 layout];
    v16 = [v15 geometryInRoot];
    v17 = v16;
    if (v16)
    {
      v31 = v33;
      [v16 transformByConcatenatingTransformTo:&v31];
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
    }

    v33 = v32;
  }

  v32 = v33;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectApplyAffineTransform(v34, &v32);
  v18 = v35.origin.x;
  v19 = v35.origin.y;
  v20 = v35.size.width;
  v21 = v35.size.height;
  v22 = [v10 layout];

  if (v22)
  {
    [v22 transformInRoot];
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  CGAffineTransformInvert(&v32, &v31);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v20;
  v36.size.height = v21;
  v37 = CGRectApplyAffineTransform(v36, &v32);
  v23 = v37.origin.x;
  v24 = v37.origin.y;
  v25 = v37.size.width;
  v26 = v37.size.height;

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)p_consumeRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry
{
  v3 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 ancestorRepForDrawingIntoLayer];
        if (v10)
        {
          [v9 clipRect];
          [(CRLInteractiveCanvasController *)self p_convertNeedsDisplayRect:v9 fromRep:v10 toRepForDrawing:?];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v3 objectForKey:v10];
          if (!v19)
          {
            v19 = objc_alloc_init(CRLMutableRectList);
            [v3 setObject:v19 forKey:v10];
          }

          [(CRLMutableRectList *)v19 addRect:v12, v14, v16, v18];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v3;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = [(CRLInteractiveCanvasController *)self renderableForRep:v25];
        if (v26)
        {
          memset(&v34[1], 0, sizeof(CGAffineTransform));
          if (v25)
          {
            [v25 transformToConvertNaturalToLayerRelative];
          }

          v27 = [v20 objectForKey:v25];
          if ([v27 count])
          {
            v28 = 0;
            do
            {
              [v27 rectAtIndex:v28];
              v34[0] = v34[1];
              v46 = CGRectApplyAffineTransform(v45, v34);
              x = v46.origin.x;
              y = v46.origin.y;
              width = v46.size.width;
              height = v46.size.height;
              v33 = [v26 layer];
              [(CRLInteractiveCanvasController *)self setNeedsDisplayInRect:v33 onLayer:x, y, width, height];

              ++v28;
            }

            while (v28 < [v27 count]);
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  [(NSMutableSet *)self->mRepsDrawnIntoAncestorToSetNeedsDisplayOnUpdatedGeometry removeAllObjects];
}

- (void)animateToViewScale:(double)a3 contentOffset:(CGPoint)a4 duration:(double)a5 orientation:(int64_t)a6 completionHandler:(id)a7
{
  y = a4.y;
  x = a4.x;
  v12 = a7;
  v13 = [(CRLInteractiveCanvasController *)self layerHost];
  v14 = [v13 canvasLayer];
  [v14 viewScale];
  if (v15 == a3)
  {
    [(CRLInteractiveCanvasController *)self contentOffset];
    v17 = v16;
    v19 = v18;

    if (x == v17 && y == v19)
    {
      if (v12)
      {
        v12[2](v12, 1);
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  [(CRLInteractiveCanvasController *)self clampedUnscaledContentOffset:x forViewScale:y, a3];
  v22 = v21;
  v23 = v20;
  if (v21 == x && v20 == y)
  {
    v22 = x;
    v23 = y;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013789EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378A00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378A88();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v24);
    }

    v25 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasController animateToViewScale:contentOffset:duration:orientation:completionHandler:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasController.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:7680 isFatal:0 description:"Content offset was outside the expected range! Clamping to a possibly sane value."];
  }

  if (self->mAnimatingViewScale)
  {
    if (v12)
    {
      v12[2](v12, 0);
    }
  }

  else
  {
    v57 = a5;
    self->mAnimatingViewScale = 1;
    v27 = [(CRLInteractiveCanvasController *)self layerHost];
    v28 = [v27 canvasView];

    v29 = [v28 canvasLayer];
    v30 = [v28 enclosingScrollView];
    [(CRLInteractiveCanvasController *)self i_viewWillBeginZooming];
    v31 = [v29 beginAnimatingViewScaleExternally];
    [v29 bounds];
    v33 = v32;
    v35 = v34;
    [v29 contentInset];
    v37 = v36;
    v39 = v38;
    v55 = v41;
    v56 = v40;
    v42 = [(CRLInteractiveCanvasController *)self canvas];
    v43 = [v42 isAnchoredAtRight];

    if ((v43 & 1) == 0)
    {
      memset(&v84, 0, sizeof(v84));
      CGAffineTransformMakeTranslation(&v84, -v33, -v35);
      v82 = v84;
      CGAffineTransformTranslate(&v83, &v82, v39, v37);
      v84 = v83;
      [v28 setTransform:&v83];
      [v29 bounds];
      v45 = v44;
      [v29 bounds];
      [v29 setBounds:{v39, v37, v45}];
    }

    v46 = [(CRLInteractiveCanvasController *)self p_sourceInteractionSourceForNotficiationUserInfo];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100461534;
    v67[3] = &unk_101864A30;
    v67[4] = self;
    v72 = a3;
    v47 = v30;
    v68 = v47;
    v48 = v28;
    v69 = v48;
    v73 = v33;
    v74 = v35;
    v49 = v29;
    v70 = v49;
    v75 = v22;
    v76 = v23;
    v77 = v37;
    v78 = v39;
    v79 = v56;
    v80 = v55;
    v81 = v57;
    v50 = v46;
    v71 = v50;
    v51 = objc_retainBlock(v67);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1004618F0;
    v58[3] = &unk_101864A58;
    v52 = v48;
    v59 = v52;
    v53 = v49;
    v60 = v53;
    v61 = self;
    v62 = v31;
    v64 = a3;
    v65 = v22;
    v66 = v23;
    v63 = v12;
    v54 = objc_retainBlock(v58);
    if (v57 <= 0.0)
    {
      (v51[2])(v51);
      (v54[2])(v54, 1);
    }

    else
    {
      [UIView animateWithDuration:v51 animations:v54 completion:v57];
    }
  }

LABEL_28:
}

- (void)doubleTappedCanvasBackgroundAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->mDelegate);
    [v8 doubleTappedCanvasBackgroundAtPoint:{x, y}];
  }
}

- (CRLCanvasLayerHosting)layerHost
{
  WeakRetained = objc_loadWeakRetained(&self->mLayerHost);

  return WeakRetained;
}

- (CRLInteractiveCanvasControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (CRLCollaboratorCursorRendererDelegate)collaboratorCursorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->mCollaboratorCursorDelegate);

  return WeakRetained;
}

- (CGRect)p_visibleBoundsRectForTiling
{
  objc_copyStruct(v6, &self->mVisibleBoundsRectForTiling, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_visibleUnscaledRect
{
  objc_copyStruct(v6, &self->mVisibleUnscaledRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CRLCanvasRep)repForTextEditingInspecting
{
  v2 = self;
  v3 = sub_100F22C98();

  return v3;
}

- (BOOL)anyConnectorKnobVisible
{
  v2 = self;
  CRLInteractiveCanvasController.anyConnectorKnobVisible.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)animateIntoConnectorMode
{
  v2 = self;
  sub_1010671C0();
}

- (CRLConnectionLineAbstractLayout)highestZOrderConnectionLineLayoutAcrossBoard
{
  v2 = self;
  v3 = sub_101067810();

  return v3;
}

- (void)sendSelectionPathToPeersIfNecessary
{
  v2 = self;
  sub_101067B38();
}

- (void)sendRealTimeEnterToPeersIfNecessary
{
  v2 = self;
  sub_101069418();
}

- (id)adjustReceivedCollaboratorCursorSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101069BB4(v4);
  v7 = v6;

  return v7;
}

- (BOOL)wantsToSuppressMultiselectionForPenTool
{
  v2 = self;
  v3 = [(CRLInteractiveCanvasController *)v2 editorController];
  if (v3)
  {
    v4 = v3;
    sub_100006370(0, &qword_101A28AC0);
    v5 = [(CRLEditorController *)v4 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

    if (v5)
    {
      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)sendViewportRequestMessageTo:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_10106A06C(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)updateTipsWithConnectorKnobsEnabled:(BOOL)a3
{
  if (a3)
  {
    if (qword_1019F1DB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1005B981C(&unk_101A287C0);
    sub_1005EB3DC(v3, qword_101AD75F0);
    Tips.Event.sendDonation<>(_:)();
  }

  if (qword_1019F1BE0 != -1)
  {
    swift_once();
  }

  v4 = sub_1005B981C(&unk_1019F6CF0);
  sub_1005EB3DC(v4, qword_101AD7210);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
}

@end