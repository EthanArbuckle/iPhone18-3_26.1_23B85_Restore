@interface CRLCanvasRep
- (BOOL)allowDragAcrossPageBoundaries;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (BOOL)containsUnknownContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)everAllowedToBeSelectedAsADrawable;
- (BOOL)forcesPlacementOnBottom;
- (BOOL)forcesPlacementOnTop;
- (BOOL)handleContextMenuClickAtPoint:(CGPoint)a3 withPlatformObject:(id)a4 onKnob:(id)a5;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)i_shouldCountAsClosestSmallRepForSizeLimit:(double)a3;
- (BOOL)inFreeTransformRotateResizeMode;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isBeingDragged;
- (BOOL)isBeingFreeTransformDragged;
- (BOOL)isBeingFreeTransformResized;
- (BOOL)isBeingFreeTransformRotated;
- (BOOL)isBeingFreeTransformed;
- (BOOL)isBeingResized;
- (BOOL)isBeingRotated;
- (BOOL)isDrawingInFlippedContext;
- (BOOL)isInDynamicOperation;
- (BOOL)isLocked;
- (BOOL)isSelected;
- (BOOL)isSelectedIgnoringLocking;
- (BOOL)occludesSelectedRep;
- (BOOL)p_isBeingDraggedRecursive;
- (BOOL)p_isNotSelectableDueToUnknownContent;
- (BOOL)p_shouldShowSelectionHighlight;
- (BOOL)shouldCreateConnectionLineKnobs;
- (BOOL)shouldCreateLockedKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldLayoutTilingLayer:(id)a3;
- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)a3 withTouchType:(int64_t)a4;
- (BOOL)shouldShowCollaboratorCursorHighlight;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldSuppressFontSmoothing;
- (CGAffineTransform)i_layerTransform;
- (CGAffineTransform)knobPositionTransformForInspectorResize;
- (CGAffineTransform)layerTransformInRootForZeroAnchor;
- (CGAffineTransform)p_layerTransformForRotationFromPureTransformInRoot:(SEL)a3 toPureTransformInRoot:(CGAffineTransform *)a4;
- (CGAffineTransform)parentLayerInverseTransformInRootForZeroAnchor;
- (CGAffineTransform)transformForCollaboratorCursorRenderable;
- (CGAffineTransform)transformForHighlightLayer;
- (CGAffineTransform)transformToConvertNaturalToLayerRelative;
- (CGImage)newShadowImageWithSize:(CGSize)a3 shadow:(id)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (CGImage)newShadowImageWithSize:(CGSize)a3 unflipped:(BOOL)a4 withChildren:(BOOL)a5;
- (CGPath)newHighlightPathInScaledSpace;
- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)a3;
- (CGPoint)centerForRotation;
- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)a3;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)a3;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)i_dragOffset;
- (CGPoint)layerOffsetForDragging;
- (CGPoint)p_centerForPreviewFrame:(CGRect)a3;
- (CGPoint)p_transformNaturalPoint:(CGPoint)a3 inUnscaledSpaceWithTransformFromBlock:(id)a4;
- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4;
- (CGPoint)unscaledGuidePosition;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)a3;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3;
- (CGRect)convertNaturalRectToLayerRelative:(CGRect)a3;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3;
- (CGRect)frameInScreenSpace;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)i_clipRectRecursive;
- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging;
- (CGRect)i_originalLayerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)naturalBounds;
- (CGRect)rectToClipChildRepRenderables;
- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)a3;
- (CGRect)targetRectForEditMenu;
- (CGRect)trackingBoundsForStandardKnobs;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (CRLCanvas)canvas;
- (CRLCanvasElementInfo)info;
- (CRLCanvasKnob)knobForInspectorResize;
- (CRLCanvasKnobTracker)currentKnobTracker;
- (CRLCanvasRenderable)collaboratorCursorRenderable;
- (CRLCanvasRenderable)dragAndDropHighlightRenderable;
- (CRLCanvasRenderable)selectionHighlightRenderable;
- (CRLCanvasRep)ancestorRepForDrawingIntoLayer;
- (CRLCanvasRep)initWithLayout:(id)a3 canvas:(id)a4;
- (CRLCanvasRep)parentRep;
- (CRLCanvasRep)parentRepToPerformSelecting;
- (CRLCanvasRep)repForFreeTransforming;
- (CRLCanvasRep)repForHandleSingleTap;
- (CRLCanvasRep)repForPreviewing;
- (CRLCanvasRep)repForRotating;
- (CRLColor)currentCollaboratorCursorColor;
- (CRLColor)selectionHighlightColor;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLShadow)shadow;
- (NSArray)additionalRenderablesToFadeDuringZoom;
- (NSArray)additionalRenderablesUnderRenderable;
- (NSArray)allPlatformViews;
- (NSArray)allRenderables;
- (NSArray)childReps;
- (NSArray)hyperlinkRegions;
- (NSArray)knobs;
- (NSArray)layoutsForChildReps;
- (NSArray)overlayRenderables;
- (NSSet)childRepsToInformForSelectabilityChanges;
- (NSString)actionStringForDrag;
- (NSString)actionStringForFreeTransform;
- (NSString)actionStringForResize;
- (NSString)actionStringForRotate;
- (_TtC8Freeform20CRLCommandController)commandController;
- (double)additionalRotationForKnobOrientation;
- (double)angleForRotation;
- (double)contentsScale;
- (id)additionalRepsForDraggingConnectionLine:(id)a3;
- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5;
- (id)description;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3;
- (id)dragItemsForBeginningDragWithItemProvider:(id)a3 deepCopiedBoardItems:(id)a4 withUnscaledTracedPaths:(id)a5 previewBackgroundColor:(id)a6 localObjectProvider:(id)a7;
- (id)dynamicResizeDidBegin;
- (id)getConnectionLineLayoutToCopyStyleForNewConnectionLine;
- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5;
- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4;
- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4;
- (id)i_additionalRenderablesOverRenderableIncludingKnobs;
- (id)i_smallHitRepNearPoint:(CGPoint)a3 smallRepOutset:(double)a4 forShortestDistance:(double *)a5 unscaledPointTransformForRep:(id)a6 passingTest:(id)a7;
- (id)knobForTag:(unint64_t)a3;
- (id)makeSelectionHighlightRenderable;
- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4;
- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4;
- (id)newTrackerForKnob:(id)a3;
- (id)p_addRenderablesForKnobsToArray:(id)a3 withDelegate:(id)a4 isOverlay:(BOOL)a5;
- (id)p_connectedReps;
- (id)p_currentCollaboratorPresence;
- (id)p_highlightRenderable;
- (id)p_newImagerToGenerateSystemPreviewOfBoardItems:(id)a3;
- (id)p_repForDraggingIgnoringTopLevelEditing:(BOOL)a3;
- (id)p_repForSelectingIgnoringTopLevelEditing:(BOOL)a3 ignoringInlineEditing:(BOOL)a4;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)a3;
- (void)addLockedKnobsToArray:(id)a3;
- (void)addSelectionKnobsToArray:(id)a3;
- (void)antiAliasDefeatLayerFrame:(CGRect *)a3 forTransform:(CGAffineTransform *)a4;
- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)a3 forFrame:(CGRect)a4;
- (void)becameNotSelectable;
- (void)becameNotSelected;
- (void)becameSelectable;
- (void)becameSelected;
- (void)collaboratorCursorChangedToSelectionPath:(id)a3;
- (void)commitTableAnchoringChangesAt:(CGPoint)a3 dueToResizing:(BOOL)a4;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnLayoutGeometry:(id)a5;
- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnTransform:(CGAffineTransform *)a5 andSize:(CGSize)a6;
- (void)dealloc;
- (void)didAddChildRep:(id)a3;
- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4;
- (void)dynamicDragDidBegin;
- (void)dynamicDragDidEndAt:(CGPoint)a3;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicRotateDidBegin;
- (void)dynamicRotateDidEndWithTracker:(id)a3;
- (void)dynamicallyFreeTransformingWithTracker:(id)a3;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)dynamicallyRotatingWithTracker:(id)a3;
- (void)fadeKnobsIn;
- (void)fadeKnobsOut;
- (void)hideCollaboratorCursors;
- (void)hideDragAndDropUI;
- (void)i_dynamicDragDidEnd;
- (void)i_invalidateSelectionHighlightRenderable;
- (void)i_willBeRemoved;
- (void)invalidateCollaboratorCursorRenderable;
- (void)invalidateDragAndDropHighlightLayer;
- (void)invalidateKnobPositions;
- (void)invalidateKnobs;
- (void)invalidateSelectionHighlightRenderable;
- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5;
- (void)p_didUpdateEffectRenderablesForRenderable:(id)a3;
- (void)p_dynamicDragDidBegin;
- (void)p_dynamicOperationDidBeginWithRealTimeCommands:(id)a3;
- (void)p_dynamicOperationDidEnd;
- (void)p_dynamicRotateDidBegin;
- (void)p_dynamicRotateDidEnd;
- (void)p_invalidateChildKnobPositionsForEndingDynamicOperation;
- (void)p_invalidateContentLayers;
- (void)p_positionShadowRenderable:(id)a3 forShadow:(id)a4 withNaturalBounds:(CGRect)a5;
- (void)p_setChildReps:(id)a3;
- (void)p_setNeedsDisplayForParentChangeIfNeeded;
- (void)p_showAlertForGroupWithUnknownContent;
- (void)p_toggleHyperlinkUIVisibility;
- (void)p_willUpdateEffectRenderablesForRenderable:(id)a3;
- (void)prepareForPrintingWithCompletionHandler:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)processChanges:(id)a3;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)recursivelyPerformSelector:(SEL)a3;
- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4;
- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)releaseFromAnchoringTableIfNeededAt:(CGPoint)a3;
- (void)removeChildRep:(id)a3;
- (void)screenScaleDidChange;
- (void)selectChildRep:(id)a3 extendingSelection:(BOOL)a4;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setParentRep:(id)a3;
- (void)setupForDrawingInLayer:(id)a3 context:(CGContext *)a4;
- (void)turnKnobsOn;
- (void)updateChildrenFromLayout;
- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)updateSelectionHighlightRenderable:(id)a3;
- (void)viewScaleDidChange;
@end

@implementation CRLCanvasRep

- (CRLCanvasRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013523E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013523FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352498();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvasRep initWithLayout:canvas:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:145 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
  }

  v18.receiver = self;
  v18.super_class = CRLCanvasRep;
  v12 = [(CRLCanvasRep *)&v18 init];
  v13 = v12;
  if (v12)
  {
    if (v7)
    {
      objc_storeStrong(&v12->mLayout, a3);
      v14 = objc_storeWeak(&v13->mCanvas, v8);
      [v8 i_registerRep:v13];

      v13->mShowKnobsWhenManipulated = 0;
      v15 = dispatch_queue_create("com.apple.freeform.CRLCanvasRep.knobsQueue", 0);
      mKnobsAccessQueue = v13->mKnobsAccessQueue;
      v13->mKnobsAccessQueue = v15;

      v13->mShadowCurrentViewScale = 0.0;
    }

    else
    {

      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  objc_storeWeak(&self->mCanvas, 0);
  v3.receiver = self;
  v3.super_class = CRLCanvasRep;
  [(CRLCanvasRep *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLCanvasRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CRLCanvasRep *)self info];
  v9 = [(CRLCanvasRep *)self layout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(CRLCanvasRep *)self layout];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  v13 = NSStringFromCGRect(v17);
  v14 = [NSString stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v4, self, v7, v8, v11, v12, v13];

  return v14;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  v4 = [WeakRetained canvasController];

  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013524C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013524D4(self, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352564();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasRep interactiveCanvasController]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:183 isFatal:0 description:"no ICC for this rep (%@); consider asking self.canvas instead", self];
  }

  return v4;
}

- (CRLCanvasElementInfo)info
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 info];

  return v3;
}

- (_TtC8Freeform20CRLCommandController)commandController
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 commandController];

  return v3;
}

- (id)p_connectedReps
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 connectedLayouts];

  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(CRLCanvasRep *)self canvas];
        v13 = [v12 repForLayout:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)p_setNeedsDisplayForParentChangeIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = [(CRLCanvasRep *)self canvas];
    v6 = [v5 isCanvasInteractive];

    if (v6)
    {
      v7 = [(CRLCanvasRep *)self ancestorRepForDrawingIntoLayer];
      if (v7)
      {
        v8 = v7;
        [(CRLCanvasRep *)self setNeedsDisplay];
        v7 = v8;
      }
    }
  }
}

- (void)setParentRep:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);

  if (WeakRetained != obj)
  {
    [(CRLCanvasRep *)self p_setNeedsDisplayForParentChangeIfNeeded];
    objc_storeWeak(&self->mParentRep, obj);
    [(CRLCanvasRep *)self p_setNeedsDisplayForParentChangeIfNeeded];
  }
}

- (NSArray)childReps
{
  if (self->mChildReps)
  {
    return self->mChildReps;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:a3];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CRLCanvasRep *)self childReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelectorIfImplemented:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:a3 withObject:v6];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(CRLCanvasRep *)self childReps];
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

        [*(*(&v12 + 1) + 8 * v11) recursivelyPerformSelectorIfImplemented:a3 withObject:v6];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:a3 withObject:v8 withObject:v9];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(CRLCanvasRep *)self childReps];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) recursivelyPerformSelectorIfImplemented:a3 withObject:v8 withObject:v9];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)recursivelyPerformSelector:(SEL)a3
{
  [(CRLCanvasRep *)self performSelector:?];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CRLCanvasRep *)self childReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelector:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4
{
  v6 = a4;
  [(CRLCanvasRep *)self performSelector:a3 withObject:v6];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CRLCanvasRep *)self childReps];
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

        [*(*(&v12 + 1) + 8 * v11) recursivelyPerformSelector:a3 withObject:v6];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)recursivelyPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(CRLCanvasRep *)self performSelector:a3 withObject:v8 withObject:v9];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(CRLCanvasRep *)self childReps];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) recursivelyPerformSelector:a3 withObject:v8 withObject:v9];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)i_willBeRemoved
{
  [(CRLCanvasRep *)self willBeRemoved];
  mKnobsAccessQueue = self->mKnobsAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100314784;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(mKnobsAccessQueue, block);
  [(CRLCanvasRenderable *)self->mSelectionHighlightRenderable setDelegate:0];
  mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
  self->mSelectionHighlightRenderable = 0;

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained i_unregisterRep:self];

  v6 = [(CRLCanvasRep *)self canvas];
  v7 = [v6 isCanvasInteractive];

  if (v7)
  {
    [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    v9 = [v8 i_interactiveCanvasLayerHelper];
    [v9 repWasRemoved:self];
  }

  [NSRunLoop cancelPreviousPerformRequestsWithTarget:self];
  self->mHasBeenRemoved = 1;
}

- (CRLCanvasRep)parentRepToPerformSelecting
{
  v3 = [(CRLCanvasRep *)self parentRep];
  if (v3)
  {
    do
    {
      if ([v3 canSelectChildRep:self])
      {
        break;
      }

      v4 = [v3 parentRep];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

- (void)selectChildRep:(id)a3 extendingSelection:(BOOL)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_10135258C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013525A0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101352628();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLCanvasRep selectChildRep:extendingSelection:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:363 isFatal:0 description:"subclass should override this method"];
}

- (BOOL)occludesSelectedRep
{
  v4 = [(CRLCanvasRep *)self repForSelecting];
  v5 = [v4 isSelected];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    v8 = [WeakRetained allRepsOrdered];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v2 = v14 != self;
          if (v14 == self)
          {
LABEL_17:
            v17 = 0;
            goto LABEL_18;
          }

          v15 = [*(*(&v19 + 1) + 8 * i) repForSelecting];
          if ([v15 isSelected])
          {
            v16 = [(CRLCanvasRep *)v14 canBeOccluded];

            if (v16)
            {
              [(CRLCanvasRep *)v14 frameInUnscaledCanvas];
              if ([(CRLCanvasRep *)self intersectsUnscaledRect:?])
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_18:

    v6 = v17 | v2;
  }

  return v6 & 1;
}

- (CRLCanvasRep)ancestorRepForDrawingIntoLayer
{
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);
  if (WeakRetained)
  {
    do
    {
      if ([WeakRetained drawsDescendantsIntoLayer])
      {
        break;
      }

      v3 = [WeakRetained parentRep];

      WeakRetained = v3;
    }

    while (v3);
  }

  return WeakRetained;
}

- (CGRect)naturalBounds
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 geometry];
  [v3 size];
  v4 = sub_10011ECB4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRep *)self layout];
  [v7 convertNaturalRectToUnscaledCanvas:{x, y, width, height}];
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

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRep *)self layout];
  [v7 convertNaturalRectFromUnscaledCanvas:{x, y, width, height}];
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

- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v9 = [(CRLCanvasRep *)self layout];
  v10 = v9;
  if (v9)
  {
    [v9 transformInRoot];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v13 = v12;

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MinY = CGRectGetMinY(v35);
  v29 = *(&v33 + 1) + MinY * *(&v32 + 1) + *(&v31 + 1) * MinX;
  v30 = *&v33 + MinY * *&v32 + *&v31 * MinX;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v17 = CGRectGetMinY(v37);
  v27 = *(&v33 + 1) + v17 * *(&v32 + 1) + *(&v31 + 1) * MaxX;
  v28 = *&v33 + v17 * *&v32 + *&v31 * MaxX;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v18 = CGRectGetMaxX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MaxY = CGRectGetMaxY(v39);
  v20 = *&v33 + MaxY * *&v32 + *&v31 * v18;
  v21 = *(&v33 + 1) + MaxY * *(&v32 + 1) + *(&v31 + 1) * v18;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v22 = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v23 = CGRectGetMaxY(v41);
  v24 = *&v33 + v23 * *&v32 + *&v31 * v22;
  v25 = *(&v33 + 1) + v23 * *(&v32 + 1) + *(&v31 + 1) * v22;
  CGPathMoveToPoint(Mutable, 0, v13 * v30, v13 * v29);
  CGPathAddLineToPoint(Mutable, 0, v13 * v28, v13 * v27);
  CGPathAddLineToPoint(Mutable, 0, v13 * v20, v13 * v21);
  CGPathAddLineToPoint(Mutable, 0, v13 * v24, v13 * v25);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRep *)self layout];
  [v5 convertNaturalPointToUnscaledCanvas:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRep *)self layout];
  [v5 convertNaturalPointFromUnscaledCanvas:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)frameInUnscaledCanvas
{
  v2 = [(CRLCanvasRep *)self layout];
  [v2 frameInRoot];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameInScreenSpace
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  [v3 convertUnscaledToBoundsRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 canvasView];
  [v12 convertRect:0 toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v12 window];
  [v21 convertRect:0 toWindow:{v14, v16, v18, v20}];
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

- (CGRect)layerFrameInScaledCanvas
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 parentAutosizes];

  if ([(CRLCanvasRep *)self isBeingRotated])
  {
    if (v4 && (-[CRLCanvasRep parentRep](self, "parentRep"), v3 = objc_claimAutoreleasedReturnValue(), ([v3 isBeingRotated] & 1) == 0))
    {
    }

    else
    {
      v5 = [(CRLCanvasRep *)self layout];
      v6 = [v5 wantsNormalLayoutDuringDynamicRotation];

      if (v4)
      {
      }

      if ((v6 & 1) == 0)
      {
        x = self->mOriginalLayerFrameInScaledCanvas.origin.x;
        y = self->mOriginalLayerFrameInScaledCanvas.origin.y;
        width = self->mOriginalLayerFrameInScaledCanvas.size.width;
        height = self->mOriginalLayerFrameInScaledCanvas.size.height;
        goto LABEL_14;
      }
    }
  }

  if ([(CRLCanvasRep *)self directlyManagesLayerContent])
  {
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    [(CRLCanvasRep *)self i_baseFrameInUnscaledCanvasForPositioningLayer];
    [WeakRetained convertUnscaledToBoundsRect:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(CRLCanvasRep *)self canvas];
    [v20 contentsScale];
    x = sub_1001221E8(v13, v15, v17, v19, v21);
    y = v22;
    width = v23;
    height = v24;
  }

  else if ([(CRLCanvasRep *)self isBeingDragged])
  {
    v25 = self->mOriginalLayerFrameInScaledCanvas.origin.x;
    v26 = self->mOriginalLayerFrameInScaledCanvas.origin.y;
    width = self->mOriginalLayerFrameInScaledCanvas.size.width;
    height = self->mOriginalLayerFrameInScaledCanvas.size.height;
    [(CRLCanvasRep *)self layerOffsetForDragging];
    v28 = v27;
    v30 = v29;
    v31 = [(CRLCanvasRep *)self canvas];
    [v31 contentsScale];
    v33 = sub_10012218C(v28, v30, v32);
    x = sub_10011F334(v25, v26, v33);
    y = v34;
  }

  else
  {
    [(CRLCanvasRep *)self i_layerFrameInScaledCanvasIgnoringDragging];
    x = v35;
    y = v36;
    width = v37;
    height = v38;
  }

LABEL_14:
  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 parentAutosizes];

  if ((v4 & 1) == 0)
  {
    if ([(CRLCanvasRep *)self isBeingRotated])
    {
      v5 = [(CRLCanvasRep *)self layout];
      v6 = [v5 wantsNormalLayoutDuringDynamicRotation];

      if ((v6 & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101352650();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101352664();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013526EC();
        }

        v7 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v7);
        }

        v8 = [NSString stringWithUTF8String:"[CRLCanvasRep i_layerFrameInScaledCanvasIgnoringDragging]"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:539 isFatal:0 description:"i_layerFrameInScaledCanvasIgnoringDragging is invalid in this state"];
      }
    }
  }

  v10 = [(CRLCanvasRep *)self directlyManagesLayerContent];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [(CRLCanvasRep *)self i_baseFrameInUnscaledCanvasForPositioningLayer];
  [WeakRetained convertUnscaledToBoundsRect:?];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (v10)
  {
    v20 = [(CRLCanvasRep *)self canvas];
    [v20 contentsScale];
    v22 = sub_1001221E8(v16, v17, v18, v19, v21);
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = sub_1001227EC(v12, v13, v14, v15);
    v24 = v29;
    v26 = v30;
    v28 = v31;
  }

  v32 = v22;
  v33 = v24;
  v34 = v26;
  v35 = v28;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)layerFrameInScaledCanvasRelativeToParent
{
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLCanvasRep *)self parentRep];

  if (v11)
  {
    v12 = [(CRLCanvasRep *)self parentRep];
    [v12 layerFrameInScaledCanvas];
    v4 = sub_10011F31C(v4, v6, v13);
    v6 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGPoint)layerOffsetForDragging
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v4 parent];
  v6 = sub_100014370(v3, v5);

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [v7 repForLayout:v6];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isBeingDragged])
  {
    v9 = v8;
    [(CRLCanvasRep *)v9 layerFrameInScaledCanvas];
  }

  else
  {
    v9 = self;
    [(CRLCanvasRep *)v9 i_layerFrameInScaledCanvasIgnoringDragging];
  }

  v12 = v10;
  v13 = v11;
  [(CRLCanvasRep *)v9 i_originalLayerFrameInScaledCanvas];
  v15 = sub_10011F31C(v12, v13, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGAffineTransform)transformToConvertNaturalToLayerRelative
{
  memset(&v17, 0, sizeof(v17));
  v5 = [(CRLCanvasRep *)self layout];
  v6 = v5;
  if (v5)
  {
    [v5 transformInRoot];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v9 = v8;

  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&t2, v9, v9);
  t1 = v17;
  CGAffineTransformConcat(&v16, &t1, &t2);
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeTranslation(&t2, -v10, -v11);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v16;
  v13 = t2;
  return CGAffineTransformConcat(retstr, &t1, &v13);
}

- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasRep *)self transformToConvertNaturalFromLayerRelative];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)convertNaturalRectToLayerRelative:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasRep *)self transformToConvertNaturalFromLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasRep *)self naturalBounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  v5 = sub_10011EC70(a3.x, a3.y, a4.width + a4.width);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CRLCanvasRep *)self naturalBounds];
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;

  return CGRectIntersectsRect(*&v12, *&v16);
}

- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v7 = a5;
  if ([(CRLCanvasRep *)self shouldHitTestChildrenLikeTopLevelReps])
  {
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    v9 = v8;
    v11 = v10;
    v12 = [(CRLCanvasRep *)self canvas];
    v13 = [(CRLCanvasRep *)self childRepsForHitTesting];
    [CRLInteractiveCanvasController smallRepOutsetForHitTestingWithPrecision:v5];
    v15 = [v12 hitRep:v5 withPrecision:v13 inTopLevelReps:0 smallRepOutset:v7 unscaledPointTransformForRep:v9 passingTest:{v11, v14}];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = [(CRLCanvasRep *)self childRepsForHitTesting];
    v12 = [v16 reverseObjectEnumerator];

    v17 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      v34 = vdupq_lane_s64(*&x, 0);
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v12);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = [v21 layout];
          v23 = [v22 geometry];
          v24 = v23;
          if (v23)
          {
            [v23 inverseTransform];
            v25 = v37;
            v26 = v38;
            v27 = v39;
          }

          else
          {
            v27 = 0uLL;
            v25 = 0uLL;
            v26 = 0uLL;
          }

          v36 = vaddq_f64(v27, vmlaq_f64(vmulq_n_f64(v26, y), v34, v25));

          v28 = [v21 hitRep:v5 withPrecision:v7 passingTest:*&v36];
          if (v28)
          {
            v15 = v28;
            goto LABEL_16;
          }
        }

        v18 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
  }

LABEL_16:

  if (!v15)
  {
    if ([(CRLCanvasRep *)self containsPoint:v5 withPrecision:x, y])
    {
      v29 = self;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v31 = v30;
    if (v7 && v30)
    {
      v15 = self;
      if ((v7[2](v7, v30) & 1) == 0)
      {

        v15 = 0;
      }
    }

    else
    {
      v15 = v30;
    }
  }

  return v15;
}

- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100315EC8;
  v6[3] = &unk_101855850;
  v7 = a4;
  v4 = [(CRLCanvasRep *)self hitReps:v6 withSlopBlock:a3.x, a3.y];

  return v4;
}

- (id)hitReps:(CGPoint)a3 withSlopBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v5 = a4;
  v6 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(CRLCanvasRep *)self childRepsForHitTesting];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v26 = vdupq_lane_s64(*&x, 0);
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 layout];
        v15 = [v14 geometry];
        v16 = v15;
        if (v15)
        {
          [v15 inverseTransform];
          v17 = v29;
          v18 = v30;
          v19 = v31;
        }

        else
        {
          v19 = 0uLL;
          v17 = 0uLL;
          v18 = 0uLL;
        }

        v28 = vaddq_f64(v19, vmlaq_f64(vmulq_n_f64(v18, y), v26, v17));

        v20 = [v13 hitReps:v5 withSlopBlock:*&v28];
        if ([v20 count])
        {
          [v6 addObjectsFromArray:v20];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  if (v5)
  {
    width = v5[2](v5, self);
    height = v22;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  if ([(CRLCanvasRep *)self containsPoint:x withSlop:y, width, height, *&x])
  {
    [v6 addObject:self];
  }

  return v6;
}

- (id)hitRepChrome:(CGPoint)a3 passingTest:(id)a4
{
  y = a3.y;
  x = a3.x;
  v5 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(CRLCanvasRep *)self childRepsForHitTesting];
  v7 = [v6 reverseObjectEnumerator];

  v8 = [(CRLCanvasRep *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v25 = vdupq_lane_s64(*&x, 0);
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 layout];
        v14 = [v13 geometry];
        v15 = v14;
        if (v14)
        {
          [v14 inverseTransform];
          v16 = v28;
          v17 = v29;
          v18 = v30;
        }

        else
        {
          v18 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
        }

        v27 = vaddq_f64(v18, vmlaq_f64(vmulq_n_f64(v17, y), v25, v16));

        v19 = [v12 hitRepChrome:v5 passingTest:*&v27];
        if (v19)
        {
          v22 = v19;
          goto LABEL_18;
        }
      }

      v9 = [(CRLCanvasRep *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([(CRLCanvasRep *)self hitRepChrome:x, y])
  {
    v7 = self;
    v20 = 0;
    if (v7)
    {
      if (v5)
      {
        v21 = v5[2](v5, v7);
        v22 = 0;
        v20 = 0;
        if ((v21 & 1) == 0)
        {
LABEL_18:

          v20 = v22;
          v7 = v22;
        }
      }
    }
  }

  else
  {
    v20 = 0;
    v7 = 0;
  }

  return v7;
}

- (id)i_smallHitRepNearPoint:(CGPoint)a3 smallRepOutset:(double)a4 forShortestDistance:(double *)a5 unscaledPointTransformForRep:(id)a6 passingTest:(id)a7
{
  y = a3.y;
  x = a3.x;
  v54 = a6;
  v11 = a7;
  if ([(CRLCanvasRep *)self i_shouldSmallHitRepTestingRecurse])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = self;
    v12 = [(CRLCanvasRep *)self childRepsForHitTesting];
    v13 = [v12 reverseObjectEnumerator];

    v14 = [v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v58;
      v52 = vdupq_lane_s64(*&x, 0);
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v58 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          v20 = [v19 layout];
          v21 = [v20 geometry];
          v22 = v21;
          if (v21)
          {
            [v21 inverseTransform];
            v23 = v56[0];
            v24 = v56[1];
            v25 = v56[2];
          }

          else
          {
            v25 = 0uLL;
            v23 = 0uLL;
            v24 = 0uLL;
          }

          v55 = vaddq_f64(v25, vmlaq_f64(vmulq_n_f64(v24, y), v52, v23));

          *v56 = *a5;
          v26 = [v19 i_smallHitRepNearPoint:v56 smallRepOutset:v54 forShortestDistance:v11 unscaledPointTransformForRep:*&v55 passingTest:a4];
          v27 = v26;
          if (v26 && *v56 < *a5)
          {
            v28 = v26;

            *a5 = *v56;
            v16 = v28;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    self = v50;
  }

  else
  {
    v16 = 0;
  }

  [(CRLCanvasRep *)self p_transformNaturalPoint:v54 inUnscaledSpaceWithTransformFromBlock:x, y];
  v30 = v29;
  v32 = v31;
  if (![(CRLCanvasRep *)self i_shouldCountAsClosestSmallRepForSizeLimit:a4])
  {
    LOBYTE(v56[0]) = 0;
    [(CRLCanvasRep *)self shortestDistanceToPoint:v56 countAsHit:v30, v32];
    if (LOBYTE(v56[0]) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v33 = [(CRLCanvasRep *)self canvas];
  [v33 viewScale];
  v35 = v34;

  [(CRLCanvasRep *)self naturalBounds];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = 0.0;
  v45 = 0.0;
  if (v35 * v38 < a4)
  {
    v45 = -a4 / v35;
  }

  if (v35 * v39 < a4)
  {
    v44 = -a4 / v35;
  }

  v64 = CGRectInset(*&v36, v45, v44);
  v63.x = v30;
  v63.y = v32;
  if (CGRectContainsPoint(v64, v63))
  {
    v46 = sub_1001200A8(v30, v32, v40, v41, v42, v43);
LABEL_27:
    v47 = v46;
    if (v46 < *a5 && (!v11 || v11[2](v11, self)))
    {
      *a5 = v47;
      v48 = self;

      v16 = v48;
    }
  }

LABEL_31:

  return v16;
}

- (CGPoint)p_transformNaturalPoint:(CGPoint)a3 inUnscaledSpaceWithTransformFromBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v7 = a4;
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    v14 = v9;
    v15 = v8;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v7[2](&v16, v7, self);

    [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, v14), v16, v15))];
    x = v10;
    y = v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)i_shouldCountAsClosestSmallRepForSizeLimit:(double)a3
{
  [(CRLCanvasRep *)self naturalBounds];
  v6 = v5;
  v8 = v7;
  if (![(CRLCanvasRep *)self shouldExpandHitRegionWhenSmall])
  {
    return 0;
  }

  v9 = v6;
  v10 = v8;
  v11 = fminf(v9, v10);
  v12 = [(CRLCanvasRep *)self canvas];
  [v12 viewScale];
  v14 = v13 * v11 < a3;

  return v14;
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRep *)self layout];
  v8 = [v7 geometry];
  [v8 size];
  v9 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

  if (v7)
  {
    [v7 transformInRoot];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v9 transformUsingAffineTransform:v12];
  v10 = [v9 intersectsRect:1 hasFill:{x, y, width, height}];

  return v10;
}

- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && (sub_100345928([v7 tag]) & 0x3DE) != 0)
    {
      v9 = [v8 pointerRequest];
      v10 = [v9 modifiers];

      if ((v10 & 0x100000) != 0 && (-[CRLCanvasRep repForRotating](self, "repForRotating"), v11 = objc_claimAutoreleasedReturnValue(), [v7 rep], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12))
      {
        v13 = [v7 rotateCursor];
      }

      else
      {
        v13 = [v7 resizeCursor];
      }

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CRLCursor defaultCursor];
LABEL_9:
      v14 = v13;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)p_repForDraggingIgnoringTopLevelEditing:(BOOL)a3
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLCanvasRep *)self layout];
  if (![v6 isDraggable])
  {
    goto LABEL_6;
  }

  v7 = [v5 canvasEditor];
  v8 = [(CRLCanvasRep *)self layout];
  if (![v7 isLayoutSelectable:v8] || -[CRLCanvasRep isLocked](self, "isLocked"))
  {

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  v12 = [v5 documentIsSharedReadOnly];

  if ((v12 & 1) == 0)
  {
    if (-[CRLCanvasRep isSelected](self, "isSelected") || ([v5 layerHost], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "asUIKitHost"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isCurrentlyInQuickSelectMode"), v14, v13, (v15 & 1) == 0))
    {
      if ([v5 hasSelectedInfosInMultipleContainers])
      {
        v6 = [v5 infosForCurrentSelectionPath];
        v16 = [(CRLCanvasRep *)self info];
        v7 = [v16 parentInfo];

        if (v7)
        {
          while (([v6 containsObject:v7] & 1) == 0)
          {
            v17 = [v7 parentInfo];

            v7 = v17;
            if (!v17)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_5;
        }

LABEL_16:
      }

      else if (!a3)
      {
        v18 = [(CRLCanvasRep *)self layout];
        v19 = [v18 isInTopLevelContainerForEditing];

        if ((v19 & 1) == 0)
        {
          v10 = [(CRLCanvasRep *)self parentRep];
          goto LABEL_21;
        }
      }

      v20 = self;
      goto LABEL_23;
    }
  }

LABEL_7:
  v9 = [(CRLCanvasRep *)self parentRep];
  v10 = v9;
  if (!a3)
  {
LABEL_21:
    v11 = [v10 repForDragging];
    goto LABEL_22;
  }

  v11 = [v9 i_repForDraggingIgnoringTopLevelEditing];
LABEL_22:
  v20 = v11;

LABEL_23:

  return v20;
}

- (id)additionalRepsForDraggingConnectionLine:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 info];

  v7 = sub_100014370(v5, v6);

  if (v7)
  {
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    v9 = [v8 editingCoordinator];
    v10 = [v9 mainBoard];

    v11 = objc_opt_class();
    v12 = [(CRLCanvasRep *)self info];
    v13 = sub_100014370(v11, v12);

    if ([v7 isConnectedWithBoardItem:v13 boardItemOwner:v10])
    {
      v14 = [NSSet setWithObject:self];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101352714();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101352728();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013527B0();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLCanvasRep additionalRepsForDraggingConnectionLine:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1011 isFatal:0 description:"This method should not be called if current rep is not connected to connection line."];

      v14 = +[NSSet set];
    }

    v18 = v14;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013527D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013527EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352874();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLCanvasRep additionalRepsForDraggingConnectionLine:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1001 isFatal:0 description:"Connection line item should not be nil."];

    v18 = +[NSSet set];
  }

  return v18;
}

- (id)p_repForSelectingIgnoringTopLevelEditing:(BOOL)a3 ignoringInlineEditing:(BOOL)a4
{
  v6 = [(CRLCanvasRep *)self interactiveCanvasController:a3];
  v7 = [(CRLCanvasRep *)self layout];
  if ([v7 isSelectable])
  {
    v8 = [v6 canvasEditor];
    v9 = [(CRLCanvasRep *)self layout];
    v10 = [v8 isLayoutSelectable:v9];

    if (!v10)
    {
      goto LABEL_29;
    }

    v11 = [v6 hasSelectedInfosInMultipleContainers];
    v12 = [v6 freehandDrawingToolkit];
    v13 = [v12 isInDrawingMode];

    if ((v13 & 1) == 0 && !v11)
    {
      if (!a3)
      {
        v14 = [(CRLCanvasRep *)self layout];
        v15 = [v14 isInTopLevelContainerForEditing];

        if ((v15 & 1) == 0)
        {
          v16 = [(CRLCanvasRep *)self parentRep];
LABEL_31:
          v32 = [v16 repForSelecting];
          goto LABEL_32;
        }
      }

LABEL_25:
      v30 = self;
      goto LABEL_33;
    }

    v7 = [v6 infosForCurrentSelectionPath];
    v17 = [(CRLCanvasRep *)self info];
    v18 = [v7 containsObject:v17];

    if (!v18)
    {
      v19 = [(CRLCanvasRep *)self info];
      v20 = [v19 parentInfo];

      if (v20)
      {
        while (([v7 containsObject:v20] & 1) == 0)
        {
          v21 = [v20 parentInfo];

          v20 = v21;
          if (!v21)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_28;
      }

LABEL_12:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v7 = v7;
      v22 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v7);
            }

            v26 = [*(*(&v34 + 1) + 8 * i) parentInfo];
            if (v26)
            {
              v27 = v26;
              while (1)
              {
                v28 = [(CRLCanvasRep *)self info];

                if (v27 == v28)
                {
                  break;
                }

                v29 = [v27 parentInfo];

                v27 = v29;
                if (!v29)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_28;
            }

LABEL_21:
            ;
          }

          v23 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_28:

LABEL_29:
  v31 = [(CRLCanvasRep *)self parentRep];
  v16 = v31;
  if (!a3)
  {
    goto LABEL_31;
  }

  v32 = [v31 i_repForSelectingIgnoringTopLevelEditing];
LABEL_32:
  v30 = v32;

LABEL_33:

  return v30;
}

- (BOOL)everAllowedToBeSelectedAsADrawable
{
  v2 = self;
  v3 = [(CRLCanvasRep *)self p_repForSelectingIgnoringTopLevelEditing:1 ignoringInlineEditing:1];
  LOBYTE(v2) = v3 == v2;

  return v2;
}

- (CRLCanvasRep)repForRotating
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v3 hasSelectedInfosInMultipleContainers])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self layout];
    v4 = [v5 isInTopLevelContainerForEditing];
  }

  v6 = [(CRLCanvasRep *)self layout];
  if (![v6 supportsRotation] || !v4)
  {
    goto LABEL_9;
  }

  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [v7 canvasEditor];
  v9 = [(CRLCanvasRep *)self layout];
  if (![v8 isLayoutSelectable:v9] || -[CRLCanvasRep isLocked](self, "isLocked"))
  {

LABEL_9:
LABEL_10:
    v10 = [(CRLCanvasRep *)self parentRep];
    v11 = [v10 repForRotating];

    goto LABEL_11;
  }

  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  v14 = [v13 documentIsSharedReadOnly];

  if (v14)
  {
    goto LABEL_10;
  }

  v11 = self;
LABEL_11:

  return v11;
}

- (CRLCanvasRep)repForFreeTransforming
{
  v3 = [(CRLCanvasRep *)self repForRotating];
  if (!v3)
  {
    v3 = [(CRLCanvasRep *)self repForDragging];
  }

  return v3;
}

- (BOOL)p_isNotSelectableDueToUnknownContent
{
  v3 = [(CRLCanvasRep *)self info];
  v4 = sub_100125F34(v3);

  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 repForInfo:v4];

  LOBYTE(v5) = [v6 containsUnknownContent];
  return v5;
}

- (void)p_showAlertForGroupWithUnknownContent
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v2 = [v3 layerHost];
  [_TtC8Freeform13CRLUnknownRep presentUnsupportedItemAlertWithLayerHost:v2 forGroup:1];
}

- (CRLCanvasRep)repForHandleSingleTap
{
  v3 = [(CRLCanvasRep *)self repForSelecting];
  if (!v3)
  {
    if ([(CRLCanvasRep *)self p_isNotSelectableDueToUnknownContent])
    {
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (CRLCanvasRep)repForPreviewing
{
  v2 = self;
  v3 = v2;
  while (1)
  {
    v4 = [v3 repForSelecting];
    if ([v4 isPreviewable])
    {
      break;
    }

    v5 = [v3 parentRep];

    v3 = v5;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (v4)
  {
    goto LABEL_18;
  }

LABEL_6:
  v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135289C();
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1013528B0(v2, v6, v7);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013529B0();
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v8);
  }

  v9 = [NSString stringWithUTF8String:"[CRLCanvasRep repForPreviewing]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
  if (v2)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1143 isFatal:0 description:"There should have been a rep suitable for previewing <%{public}@: %{public}p>", v12, v2];
  }

  else
  {
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1143 isFatal:0 description:"There should have been a rep suitable for previewing <%{public}@: %{public}p>", @"Nil", 0];
  }

  v4 = 0;
LABEL_18:

  return v4;
}

- (NSArray)layoutsForChildReps
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 children];

  return v3;
}

- (void)updateChildrenFromLayout
{
  v3 = [(CRLCanvasRep *)self childReps];
  v4 = [(CRLCanvasRep *)self layoutsForChildReps];
  v5 = [v4 count];
  v30 = v3;
  v29 = v4;
  if (v5 != [v3 count])
  {
    goto LABEL_14;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v36;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v30 objectAtIndexedSubscript:v9];
        v14 = [v13 layout];
        v15 = v14;
        if (v14 != v12)
        {

LABEL_13:
          v4 = v29;
LABEL_14:
          v6 = [(CRLCanvasRep *)self canvas];
          v17 = objc_alloc_init(NSMutableArray);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = v4;
          v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (!v19)
          {
            goto LABEL_28;
          }

          v20 = v19;
          v21 = *v32;
          while (2)
          {
            v22 = 0;
LABEL_17:
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * v22);
            v24 = [v6 repForLayout:v23];
            if (v24)
            {
              goto LABEL_25;
            }

            v24 = [objc_alloc(objc_msgSend(v23 "repClassOverride"))];
            v25 = [(CRLCanvasRep *)self canvas];
            if (![v25 isCanvasInteractive])
            {
              goto LABEL_23;
            }

            v26 = [(CRLCanvasRep *)self isInDynamicOperation];

            if (v26)
            {
              v25 = [(CRLCanvasRep *)self layout];
              [v24 dynamicOperationDidBeginWithRealTimeCommands:{objc_msgSend(v25, "isInRealTimeDynamicOperation")}];
LABEL_23:
            }

            if (v24)
            {
LABEL_25:
              [v17 addObject:v24];
            }

            [v24 setParentRep:self];

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (!v20)
              {
LABEL_28:

                [v6 orderRepsForLayout:v17];
                [(CRLCanvasRep *)self p_setChildReps:v17];

                goto LABEL_29;
              }

              continue;
            }

            goto LABEL_17;
          }
        }

        v16 = [v13 parentRep];

        if (v16 != self)
        {
          goto LABEL_13;
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (!v8)
      {
LABEL_29:
        v4 = v29;
        break;
      }
    }
  }

  v27 = [(CRLCanvasRep *)self childReps];
  [v27 makeObjectsPerformSelector:a2];
}

- (void)p_setChildReps:(id)a3
{
  v4 = a3;
  if (([v4 isEqual:self->mChildReps] & 1) == 0)
  {
    v5 = [[NSSet alloc] initWithArray:v4];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = self->mChildReps;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            v12 = [v11 parentRep];

            if (v12 == self)
            {
              [v11 setParentRep:0];
            }
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    if (self->mChildReps)
    {
      v13 = [[NSSet alloc] initWithArray:self->mChildReps];
    }

    else
    {
      v13 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          if (([v13 containsObject:{v19, v23}] & 1) == 0)
          {
            v20 = [v19 parentRep];
            [v20 removeChildRep:v19];

            [v19 setParentRep:self];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }

    v21 = [v14 mutableCopy];
    mChildReps = self->mChildReps;
    self->mChildReps = v21;
  }
}

- (void)removeChildRep:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->mChildReps indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mChildReps removeObjectAtIndex:v4];
    [v5 setParentRep:0];
  }
}

- (void)didAddChildRep:(id)a3
{
  v6 = a3;
  if ([(CRLCanvasRep *)self isInDynamicOperation])
  {
    v4 = [(CRLCanvasRep *)self layout];
    [v6 dynamicOperationDidBeginWithRealTimeCommands:{objc_msgSend(v4, "isInRealTimeDynamicOperation")}];

    if ([(CRLCanvasRep *)self isBeingRotated])
    {
      [v6 dynamicRotateDidBegin];
    }

    else if ([(CRLCanvasRep *)self isBeingResized])
    {
      v5 = [v6 dynamicResizeDidBegin];
    }
  }
}

- (void)updateFromLayout
{
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (v4)
  {
    if (-[CRLCanvasRep providesBackgroundLayerMaskingRect](self, "providesBackgroundLayerMaskingRect") || !-[CRLCanvasRep p_isBeingDraggedRecursive](self, "p_isBeingDraggedRecursive") && (!-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") || (-[CRLCanvasRep layout](self, "layout"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 wantsNormalLayoutDuringDynamicRotation], v14, v15)))
    {
      v5 = [(CRLCanvasRep *)self layout];
      v6 = [v5 geometryInRoot];

      if (([v6 isEqual:self->mLastGeometryInRoot] & 1) == 0)
      {
        -[CRLCanvasRep layoutInRootChangedFrom:to:translatedOnly:](self, "layoutInRootChangedFrom:to:translatedOnly:", self->mLastGeometryInRoot, v6, [v6 differsInMoreThanTranslationFrom:self->mLastGeometryInRoot] ^ 1);
        if ([(CRLCanvasRep *)self providesBackgroundLayerMaskingRect])
        {
          v7 = [(CRLCanvasRep *)self interactiveCanvasController];
          v8 = [v7 layerHost];
          v9 = [v8 canvasLayer];
          v10 = [v9 associatedBackgroundLayer];
          [v10 setNeedsLayout];
        }
      }

      v11 = [v6 copy];
      mLastGeometryInRoot = self->mLastGeometryInRoot;
      self->mLastGeometryInRoot = v11;
    }

    v13 = [(CRLCanvasRep *)self layout];
    [v13 i_takeDirtyRect];
    [(CRLCanvasRep *)self setNeedsDisplayInRect:?];

    [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
  }
}

- (BOOL)p_isBeingDraggedRecursive
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformDragged]&& ![(CRLCanvasRep *)self isBeingFreeTransformResized])
  {
    v3 = ![(CRLCanvasRep *)self isBeingFreeTransformRotated];
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (![(CRLCanvasRep *)self isBeingDragged]&& (v3 & 1) == 0)
  {
    v5 = [(CRLCanvasRep *)self layout];
    v6 = [v5 layoutState];

    if (v6 == 1 && ([(CRLCanvasRep *)self parentRep], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      do
      {
        if ([v8 isBeingFreeTransformDragged] && (objc_msgSend(v8, "isBeingFreeTransformResized") & 1) == 0)
        {
          v9 = [v8 isBeingFreeTransformRotated] ^ 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }

        v4 = [v8 isBeingDragged] | v9;
        if (v4)
        {
          break;
        }

        v10 = [v8 parentRep];

        v8 = v10;
      }

      while (v10);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    if (![(CRLCanvasRep *)self skipsRerenderForTranslation])
    {
      WeakRetained = objc_loadWeakRetained(&self->mCanvas);
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      if (v8)
      {
        [v8 transform];
        v13 = v41;
        v14 = v42;
        v12 = v43;
      }

      [WeakRetained convertUnscaledToBoundsPoint:{vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v14, CGPointZero.y), v13, CGPointZero.x)), vdupq_lane_s64(*&CGPointZero.x, 0), *&CGPointZero.y, v11}];
      v16 = v15;

      v17 = objc_loadWeakRetained(&self->mCanvas);
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      if (v9)
      {
        [v9 transform];
        v18 = v41;
        v19 = v42;
        v20 = v43;
      }

      [v17 convertUnscaledToBoundsPoint:{vaddq_f64(v20, vmlaq_f64(vmulq_n_f64(v19, v40), v39, v18))}];
      v22 = v21;
      v24 = v23;

      v25 = sub_10011F31C(v22, v24, v16);
      v27 = v26;
      v28 = [(CRLCanvasRep *)self canvas];
      [v28 contentsScale];
      v30 = sub_10011F340(v25, v27, v29);
      v32 = v31;

      v33 = sub_1004C321C(v30);
      v34 = sub_1004C321C(v32);
      if (v33 != 0.0 && ((v35 = fabs(v33), v35 >= 0.00999999978) ? (v36 = v35 == 1.0) : (v36 = 1), !v36 && fabs(v35 + -1.0) >= 0.00999999978) || v34 != 0.0 && ((v37 = fabs(v34), v34 = 0.00999999978, v37 >= 0.00999999978) ? (v38 = v37 == 1.0) : (v38 = 1), !v38 && fabs(v37 + -1.0) >= 0.00999999978))
      {
        [(CRLCanvasRep *)self setNeedsDisplay];
      }
    }
  }

  else
  {
    [(CRLCanvasRep *)self setNeedsDisplay];
    [(CRLCanvasRep *)self invalidateKnobPositions];
  }
}

- (CGAffineTransform)i_layerTransform
{
  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = [(CRLCanvasRep *)self isBeingRotated];
  if (!result)
  {
    return result;
  }

  v6 = [(CRLCanvasRep *)self parentRep];
  if ([v6 isBeingRotated])
  {
  }

  else
  {
    v7 = [(CRLCanvasRep *)self layout];
    v8 = [v7 wantsNormalLayoutDuringDynamicRotation];

    if ((v8 & 1) == 0)
    {
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v19 = [(CRLCanvasRep *)self layout];
      v20 = v19;
      if (v19)
      {
        [v19 originalPureTransformInRoot];
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = [(CRLCanvasRep *)self layout];
      v22 = v21;
      if (v21)
      {
        [v21 pureTransformInRoot];
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
      }

      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      return [(CRLCanvasRep *)self p_layerTransformForRotationFromPureTransformInRoot:&v31 toPureTransformInRoot:&v28];
    }
  }

  v27 = [(CRLCanvasRep *)self parentRep];
  if (([v27 isBeingRotated] & 1) == 0)
  {
    goto LABEL_25;
  }

  v9 = [(CRLCanvasRep *)self layout];
  if (([v9 wantsNormalLayoutDuringDynamicRotation] & 1) == 0)
  {

LABEL_25:

    return result;
  }

  v10 = [(CRLCanvasRep *)self layout];
  v11 = [v10 i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation];

  if ((v11 & 1) == 0)
  {
    v12 = [(CRLCanvasRep *)self parentRep];
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        if ([v13 isBeingRotated])
        {
          v14 = [v13 parentRep];
          v15 = [v14 isBeingRotated];

          if (!v15)
          {
            break;
          }
        }

        v16 = [v13 parentRep];

        v13 = v16;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v23 = [v13 layout];
      v24 = v23;
      if (v23)
      {
        [v23 originalPureTransformInRoot];
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v25 = [v13 layout];
      v26 = v25;
      if (v25)
      {
        [v25 pureTransformInRoot];
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
      }

      v31 = v34;
      v32 = v35;
      v33 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      [(CRLCanvasRep *)self p_layerTransformForRotationFromPureTransformInRoot:&v31 toPureTransformInRoot:&v28];
    }

    else
    {
LABEL_13:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013529D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013529EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101352A74();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v13 = [NSString stringWithUTF8String:"[CRLCanvasRep i_layerTransform]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v18 lineNumber:1357 isFatal:0 description:"Unable to find topmost rotated ancestor for counteracting the layer transform."];
    }
  }

  return result;
}

- (CGAffineTransform)p_layerTransformForRotationFromPureTransformInRoot:(SEL)a3 toPureTransformInRoot:(CGAffineTransform *)a4
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v8 = *&a4->c;
  *&v33.a = *&a4->a;
  *&v33.c = v8;
  *&v33.tx = *&a4->tx;
  CGAffineTransformInvert(&t1, &v33);
  v9 = *&a5->c;
  *&v33.a = *&a5->a;
  *&v33.c = v9;
  *&v33.tx = *&a5->tx;
  CGAffineTransformConcat(retstr, &t1, &v33);
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained convertBoundsToUnscaledRect:{v11, v13, v15, v17}];
  v23 = sub_100120414(v19, v20, v21, v22);
  v25 = v24;

  v26 = *&retstr->c;
  *&v33.a = *&retstr->a;
  *&v33.c = v26;
  *&v33.tx = *&retstr->tx;
  sub_100139EB4(&v33, &t1, v23, v25);
  v27 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v27;
  *&retstr->tx = *&t1.tx;
  v28 = objc_loadWeakRetained(&self->mCanvas);
  [v28 viewScale];
  retstr->tx = v29 * retstr->tx;

  v30 = objc_loadWeakRetained(&self->mCanvas);
  [v30 viewScale];
  retstr->ty = v31 * retstr->ty;

  return result;
}

- (CGAffineTransform)parentLayerInverseTransformInRootForZeroAnchor
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v6 = [(CRLCanvasRep *)self parentRep];

  if (v6)
  {
    v8 = [(CRLCanvasRep *)self parentRep];
    v9 = v8;
    if (v8)
    {
      [v8 layerTransformInRootForZeroAnchor];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    v10 = *&v12.c;
    *&retstr->a = *&v12.a;
    *&retstr->c = v10;
    *&retstr->tx = *&v12.tx;

    v11 = *&retstr->c;
    *&v12.a = *&retstr->a;
    *&v12.c = v11;
    *&v12.tx = *&retstr->tx;
    return CGAffineTransformInvert(retstr, &v12);
  }

  return result;
}

- (CGAffineTransform)layerTransformInRootForZeroAnchor
{
  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  result = self;
  if (result)
  {
    v6 = result;
    do
    {
      [(CGAffineTransform *)v6 layerFrameInScaledCanvasRelativeToParent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      memset(&v22, 0, sizeof(v22));
      [(CGAffineTransform *)v6 i_layerTransform];
      t2 = v22;
      sub_100139EB4(&t2, &t1, v12 * -0.5, v14 * -0.5);
      v22 = t1;
      CGAffineTransformMakeTranslation(&t2, v8, v10);
      v19 = v22;
      CGAffineTransformConcat(&t1, &v19, &t2);
      v15 = *&t1.a;
      v22 = t1;
      v16 = *&t1.tx;
      v17 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v17;
      *&t1.tx = *&retstr->tx;
      *&t2.a = v15;
      *&t2.c = *&v22.c;
      *&t2.tx = v16;
      CGAffineTransformConcat(retstr, &t1, &t2);
      v18 = [(CGAffineTransform *)v6 parentRep];

      v6 = v18;
    }

    while (v18);
  }

  return result;
}

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  [(CRLCanvasRep *)self layerFrameInScaledCanvasRelativeToParent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  [(CRLCanvasRep *)self i_layerTransform];
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  [v4 setIfDifferentFrame:v13 orTransform:{v6, v8, v10, v12}];
}

- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)a3 forFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = *&a3->c;
  *&v37.a = *&a3->a;
  *&v37.c = v10;
  *&v37.tx = *&a3->tx;
  if (sub_100139A98(&v37.a, a4.size.width, a4.size.height))
  {
    memset(&v37, 0, sizeof(v37));
    v11 = *&a3->c;
    *&v36.a = *&a3->a;
    *&v36.c = v11;
    *&v36.tx = *&a3->tx;
    sub_100139EB4(&v36, &v37, width * -0.5, height * -0.5);
    v36 = v37;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectApplyAffineTransform(v38, &v36);
    v12 = v39.origin.x;
    v13 = v39.origin.y;
    v14 = v39.size.width;
    v15 = v39.size.height;
    v16 = [(CRLCanvasRep *)self canvas];
    [v16 contentsScale];
    v18 = sub_1001221E8(v12, v13, v14, v15, v17);
    v30 = v19;
    v31 = v18;
    v21 = v20;
    v23 = v22;

    memset(&v36, 0, sizeof(v36));
    v40.origin.x = v12;
    v40.origin.y = v13;
    v40.size.width = v14;
    v40.size.height = v15;
    v32 = height;
    v24 = -CGRectGetMinX(v40);
    v41.origin.x = v12;
    v41.origin.y = v13;
    v41.size.width = v14;
    v41.size.height = v15;
    MinY = CGRectGetMinY(v41);
    CGAffineTransformMakeTranslation(&v36, v24, -MinY);
    CGAffineTransformMakeScale(&t2, v21 / v14, v23 / v15);
    t1 = v36;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v36 = v35;
    v42.origin.x = v31;
    v42.origin.y = v30;
    v42.size.width = v21;
    v42.size.height = v23;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = v31;
    v43.origin.y = v30;
    v43.size.width = v21;
    v43.size.height = v23;
    v27 = CGRectGetMinY(v43);
    CGAffineTransformMakeTranslation(&t2, MinX, v27);
    t1 = v36;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v36 = v35;
    t2 = v35;
    sub_100139EB4(&t2, &v35, width * 0.5, v32 * 0.5);
    v36 = v35;
    v28 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v28;
    *&t2.tx = *&a3->tx;
    t1 = v35;
    CGAffineTransformConcat(&v35, &t2, &t1);
    v29 = *&v35.c;
    *&a3->a = *&v35.a;
    *&a3->c = v29;
    *&a3->tx = *&v35.tx;
  }
}

- (void)antiAliasDefeatLayerFrame:(CGRect *)a3 forTransform:(CGAffineTransform *)a4
{
  v7 = *&a4->c;
  *&v30.a = *&a4->a;
  *&v30.c = v7;
  *&v30.tx = *&a4->tx;
  if (sub_100139A98(&v30.a, a3->size.width, a3->size.height))
  {
    __asm { FMOV            V1.2D, #-0.5 }

    v13 = vmulq_f64(a3->size, _Q1);
    v14 = *&a4->c;
    *&v29.a = *&a4->a;
    *&v29.c = v14;
    *&v29.tx = *&a4->tx;
    memset(&v30, 0, sizeof(v30));
    sub_100139EB4(&v29, &v30, v13.f64[0], v13.f64[1]);
    v31 = *a3;
    v29 = v30;
    v32 = CGRectApplyAffineTransform(v31, &v29);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v19 = [(CRLCanvasRep *)self canvas];
    [v19 contentsScale];
    v21 = sub_1001221E8(x, y, width, height, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = v30;
    CGAffineTransformInvert(&v29, &v28);
    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    *a3 = CGRectApplyAffineTransform(v33, &v29);
  }
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnTransform:(CGAffineTransform *)a5 andSize:(CGSize)a6
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained convertUnscaledToBoundsRect:sub_10011ECB4()];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = objc_opt_class();
  v20 = [(CRLCanvasRep *)self layout];
  v21 = [v20 parent];
  v22 = sub_100014370(v19, v21);

  if (v22)
  {
    memset(&v44, 0, sizeof(v44));
    if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") && (-[CRLCanvasRep layout](self, "layout"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 wantsNormalLayoutDuringDynamicRotation], v23, (v24 & 1) == 0))
    {
      [v22 originalTransformInRoot];
    }

    else
    {
      [v22 transformInRoot];
    }

    v25 = *&a5->c;
    *&t1.a = *&a5->a;
    *&t1.c = v25;
    *&t1.tx = *&a5->tx;
    t2 = v44;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v26 = *&v43.c;
    *&a5->a = *&v43.a;
    *&a5->c = v26;
    *&a5->tx = *&v43.tx;
  }

  v27 = objc_loadWeakRetained(&self->mCanvas);
  [v27 viewScale];
  v39 = v28;

  v29 = *&a5->c;
  *&a5->tx = vmulq_n_f64(*&a5->tx, v39);
  *&v43.a = *&a5->a;
  *&v43.c = v29;
  *&v43.tx = *&a5->tx;
  sub_100139EB4(&v43, &v44, v16 * 0.5, v18 * 0.5);
  v30 = *&v44.c;
  *&a5->a = *&v44.a;
  *&a5->c = v30;
  *&a5->tx = *&v44.tx;
  v31 = [(CRLCanvasRep *)self parentRep];

  if (v31)
  {
    v32 = [(CRLCanvasRep *)self parentRep];
    [v32 layerFrameInScaledCanvas];
    v38 = v34;
    v40 = v33;

    v35.f64[0] = v40;
    v35.f64[1] = v38;
    *&a5->tx = vsubq_f64(*&a5->tx, v35);
  }

  if (a3)
  {
    a3->origin.x = v12;
    a3->origin.y = v14;
    a3->size.width = v16;
    a3->size.height = v18;
  }

  if (a4)
  {
    v36 = *&a5->a;
    v37 = *&a5->tx;
    *&a4->c = *&a5->c;
    *&a4->tx = v37;
    *&a4->a = v36;
  }
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4
{
  v7 = [(CRLCanvasRep *)self layout];
  v8 = [v7 geometry];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = [(CRLCanvasRep *)self layout:v12];
  v11 = [v10 geometry];
  [v11 size];
  [(CRLCanvasRep *)self computeDirectLayerFrame:a3 andTransform:a4 basedOnTransform:&v12 andSize:?];
}

- (void)computeDirectLayerFrame:(CGRect *)a3 andTransform:(CGAffineTransform *)a4 basedOnLayoutGeometry:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  [v9 size];
  [(CRLCanvasRep *)self computeDirectLayerFrame:a3 andTransform:a4 basedOnTransform:&v10 andSize:?];
}

- (void)processChanges:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) details];
        v12 = v11;
        if (v11)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100319770;
          v22[3] = &unk_101855978;
          v22[4] = v5;
          [v11 enumeratePropertiesUsingBlock:v22];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        -[CRLCanvasRep processChangedProperty:](self, "processChangedProperty:", [*(*(&v18 + 1) + 8 * v17) unsignedIntegerValue]);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }
}

- (void)setNeedsDisplay
{
  v4 = [(CRLCanvasRep *)self canvas];
  v3 = [v4 canvasController];
  [v3 i_repNeedsDisplay:self];
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      v9 = [(CRLCanvasRep *)self canvas];
      v8 = [v9 canvasController];
      [v8 i_repNeedsDisplay:self inRect:{x, y, width, height}];
    }
  }
}

- (void)p_invalidateContentLayers
{
  v3 = [(CRLCanvasRep *)self canvas];
  [v3 invalidateContentLayersForRep:self];
}

- (void)screenScaleDidChange
{
  [(CRLCanvasRep *)self setNeedsDisplay];
  [(CRLCanvasRep *)self invalidateKnobs];

  [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
}

- (void)viewScaleDidChange
{
  mShadowRenderableInvalid = self->mShadowRenderableInvalid;
  [(CRLCanvasRep *)self setNeedsDisplay];
  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
  self->mShadowRenderableInvalid = mShadowRenderableInvalid;
  v4 = [(CRLCanvasRep *)self shadow];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = fmin(self->mShadowCurrentViewScale, 1.0);
    v7 = [(CRLCanvasRep *)self canvas];
    [v7 viewScale];
    v9 = v8;

    if (fmin(v9, 1.0) > v6)
    {

      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }
}

- (void)setupForDrawingInLayer:(id)a3 context:(CGContext *)a4
{
  v6 = a3;
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  CGContextTranslateCTM(a4, -v7, -v8);
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v11 = v10;

  CGContextScaleCTM(a4, v11, v11);
  if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") && (-[CRLCanvasRep layout](self, "layout"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 wantsNormalLayoutDuringDynamicRotation], v12, !v13))
  {
    v16 = [(CRLCanvasRep *)self layout];
    v15 = v16;
    if (v16)
    {
      [v16 originalTransformInRoot];
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [(CRLCanvasRep *)self layout];
    v15 = v14;
    if (v14)
    {
      [v14 transformInRoot];
      goto LABEL_8;
    }
  }

  memset(&v27, 0, sizeof(v27));
LABEL_8:
  CGContextConcatCTM(a4, &v27);

  if (v6)
  {
    if ([v6 contentsAreFlipped])
    {
      v17 = +[NSThread currentThread];
      v18 = [v17 threadDictionary];
      v19 = [NSNumber numberWithBool:1];
      v20 = [NSValue valueWithPointer:self];
      [v18 setObject:v19 forKey:v20];
    }

    [(CRLCanvasRep *)self i_configureFontSmoothingForContext:a4 layer:v6, *&v27.a, *&v27.c, *&v27.tx];
  }

  v21 = [(CRLCanvasRep *)self canvas:*&v27.a];
  v22 = [v21 allowsFontSubpixelQuantization];

  if ((v22 & 1) == 0)
  {
    CGContextSetAllowsFontSubpixelQuantization(a4, 0);
    CGContextSetShouldSubpixelQuantizeFonts(a4, 0);
  }

  v23 = [(CRLCanvasRep *)self canvas];
  [v23 contentsScale];
  v25 = v24;
  v26 = [(CRLCanvasRep *)self canvas];
  sub_10050DE7C(a4, 0, 0, v6 != 0, [v26 shouldSuppressBackgrounds], v25);
}

- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4
{
  sub_10050D814(a4);
  v7 = +[NSThread currentThread];
  v5 = [v7 threadDictionary];
  v6 = [NSValue valueWithPointer:self];
  [v5 removeObjectForKey:v6];
}

- (BOOL)isDrawingInFlippedContext
{
  v3 = +[NSThread currentThread];
  v4 = [v3 threadDictionary];
  v5 = [NSValue valueWithPointer:self];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)i_clipRectRecursive
{
  [(CRLCanvasRep *)self clipRect];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  if (CGRectIsNull(v45))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101352A9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352AB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352B38();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasRep i_clipRectRecursive]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1691 isFatal:0 description:"This rep's clipRect should not be null."];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(CRLCanvasRep *)self childReps];
  v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = [v14 layout];
        if (!v15)
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101352B60();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v43.a) = 67110146;
            HIDWORD(v43.a) = v16;
            LOWORD(v43.b) = 2082;
            *(&v43.b + 2) = "[CRLCanvasRep i_clipRectRecursive]";
            WORD1(v43.c) = 2082;
            *(&v43.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m";
            WORD2(v43.d) = 1024;
            *(&v43.d + 6) = 1695;
            WORD1(v43.tx) = 2082;
            *(&v43.tx + 4) = "currentChildLayout";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v43, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101352B88();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v32 = v18;
            v33 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v43.a) = 67109378;
            HIDWORD(v43.a) = v16;
            LOWORD(v43.b) = 2114;
            *(&v43.b + 2) = v33;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v43, 0x12u);
          }

          v19 = [NSString stringWithUTF8String:"[CRLCanvasRep i_clipRectRecursive]"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1695 isFatal:0 description:"invalid nil value for '%{public}s'", "currentChildLayout"];
        }

        [v14 i_clipRectRecursive];
        v21 = v46.origin.x;
        v22 = v46.origin.y;
        v23 = v46.size.width;
        v24 = v46.size.height;
        if (CGRectIsNull(v46))
        {
          v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101352BB0();
          }

          v26 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v43.a) = 67109890;
            HIDWORD(v43.a) = v25;
            LOWORD(v43.b) = 2082;
            *(&v43.b + 2) = "[CRLCanvasRep i_clipRectRecursive]";
            WORD1(v43.c) = 2082;
            *(&v43.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m";
            WORD2(v43.d) = 1024;
            *(&v43.d + 6) = 1699;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The child's i_clipRectRecursive should not be null.", &v43, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101352BD8();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v30 = v27;
            v31 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v43.a) = 67109378;
            HIDWORD(v43.a) = v25;
            LOWORD(v43.b) = 2114;
            *(&v43.b + 2) = v31;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v43, 0x12u);
          }

          v28 = [NSString stringWithUTF8String:"[CRLCanvasRep i_clipRectRecursive]"];
          v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:1699 isFatal:0 description:"The child's i_clipRectRecursive should not be null."];
        }

        if (v15)
        {
          [v15 transform];
        }

        else
        {
          memset(&v43, 0, sizeof(v43));
        }

        v47.origin.x = v21;
        v47.origin.y = v22;
        v47.size.width = v23;
        v47.size.height = v24;
        v51 = CGRectApplyAffineTransform(v47, &v43);
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v49 = CGRectUnion(v48, v51);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  v7 = sub_10050FEFC(a3);
  [v7 beginObject:self];
  v8 = [(CRLCanvasRep *)self layout];
  v9 = [v8 geometry];
  v10 = v9;
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGContextConcatCTM(a3, &v21);

  [(CRLCanvasRep *)self clipRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CRLCanvasRep *)self masksToBounds];
  v20 = v19;
  if (v19)
  {
    v22.origin.x = v12;
    v22.origin.y = v14;
    v22.size.width = v16;
    v22.size.height = v18;
    CGContextClipToRect(a3, v22);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  if (CGRectIntersectsRect(v23, ClipBoundingBox))
  {
    CGContextSaveGState(a3);
    if ((v20 & 1) == 0)
    {
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      CGContextClipToRect(a3, v24);
    }

    [(CRLCanvasRep *)self drawInContext:a3, *&v21.a, *&v21.c, *&v21.tx];
    CGContextRestoreGState(a3);
  }

  [(CRLCanvasRep *)self recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v6, *&v21.a, *&v21.c, *&v21.tx];
  [v7 endObject:self];
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CRLCanvasRep *)self childReps];
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

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (!v6 || v6[2](v6, *(*(&v13 + 1) + 8 * v11)))
        {
          CGContextSaveGState(a3);
          [v12 recursivelyDrawInContext:a3 keepingChildrenPassingTest:v6];
          CGContextRestoreGState(a3);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)isSelectedIgnoringLocking
{
  v3 = [(CRLCanvasRep *)self layout];
  if (([v3 isSelectable] & 1) == 0)
  {

    return 0;
  }

  v4 = [(CRLCanvasRep *)self canvas];
  v5 = [v4 isCanvasInteractive];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101352C00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352C14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352CB0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasRep isSelectedIgnoringLocking]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1769 isFatal:0 description:"invalid nil value for '%{public}s'", "interactiveCanvasController"];
  }

  v10 = [(CRLCanvasRep *)self info];
  v11 = [v6 currentSelectionPathContainsInfo:v10];

  return v11;
}

- (BOOL)isSelected
{
  v3 = [(CRLCanvasRep *)self isSelectedIgnoringLocking];
  if (v3)
  {
    LOBYTE(v3) = ![(CRLCanvasRep *)self isLocked];
  }

  return v3;
}

- (void)becameSelected
{
  [(CRLCanvasRep *)self invalidateKnobs];
  v3 = [(CRLCanvasRep *)self info];
  v4 = objc_opt_class();
  v5 = [v3 parentInfo];
  v6 = sub_100014370(v4, v5);

  for (i = v6 == 0; v3 && !v6; i = v6 == 0)
  {
    v8 = v3;
    v3 = [v3 parentInfo];

    v9 = objc_opt_class();
    v10 = [v3 parentInfo];
    v6 = sub_100014370(v9, v10);
  }

  if (!i)
  {
    v11 = [(CRLCanvasRep *)self interactiveCanvasController];
    v12 = [v11 editorController];
    v13 = [v12 selectionPath];
    v14 = [v13 mostSpecificSelectionOfClass:objc_opt_class()];

    if (!v14)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101352CD8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101352CEC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101352D74();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLCanvasRep becameSelected]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1799 isFatal:0 description:"If something in a group has been selected, there should  be a group selection."];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)becameNotSelected
{
  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
  self->mSelectionHighlightRenderableValid = 0;
  mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
  self->mSelectionHighlightRenderable = 0;

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)becameSelectable
{
  [(CRLCanvasRep *)self invalidateKnobs];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(CRLCanvasRep *)self childRepsToInformForSelectabilityChanges];
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

        [*(*(&v8 + 1) + 8 * v7) becameSelectable];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)becameNotSelectable
{
  [(CRLCanvasRep *)self invalidateKnobs];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(CRLCanvasRep *)self childRepsToInformForSelectabilityChanges];
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

        [*(*(&v8 + 1) + 8 * v7) becameNotSelectable];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSSet)childRepsToInformForSelectabilityChanges
{
  v2 = [(CRLCanvasRep *)self childReps];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (BOOL)shouldShowCollaboratorCursorHighlight
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v3 i_shouldShowCollaboratorCursorForLayout:v4];

  return v5;
}

- (id)p_currentCollaboratorPresence
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v3 i_collaboratorPresenceSelectingLayout:v4];

  return v5;
}

- (CRLColor)currentCollaboratorCursorColor
{
  v2 = [(CRLCanvasRep *)self p_currentCollaboratorPresence];
  v3 = [v2 owner];
  v4 = [v3 collaboratorColorForType:2];

  return v4;
}

- (void)collaboratorCursorChangedToSelectionPath:(id)a3
{
  v4 = a3;
  if (qword_101AD5B90 != -1)
  {
    sub_101352D9C();
  }

  v5 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Collaborator Cursor: Selection Path Changed called for rep: %{public}@", &v6, 0xCu);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self invalidateCollaboratorCursorRenderable];
}

- (void)hideCollaboratorCursors
{
  if (qword_101AD5B90 != -1)
  {
    sub_101352DB0();
  }

  v3 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Collaborator Cursor: Hiding collaborator cursors for rep: %{public}@", &v4, 0xCu);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self invalidateCollaboratorCursorRenderable];
}

- (CGAffineTransform)transformForCollaboratorCursorRenderable
{
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->mKnobTracker);
    v6 = v5;
    if (v5)
    {
      [v5 transformInRootForStandardKnobs];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [(CRLCanvasRep *)self layout];
    v6 = v7;
    if (v7)
    {
      [v7 transformInRoot];
      goto LABEL_7;
    }
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
LABEL_7:

  return result;
}

- (void)invalidateCollaboratorCursorRenderable
{
  self->mCollaboratorCursorRenderableValid = 0;
  v4 = [(CRLCanvasRep *)self canvas];
  v3 = [v4 canvasController];
  [v3 invalidateOverlayLayersForRep:self];
}

- (void)invalidateDragAndDropHighlightLayer
{
  mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  self->mDragAndDropHighlightRenderable = 0;
}

- (CRLCanvasRenderable)collaboratorCursorRenderable
{
  if (qword_101AD5B90 != -1)
  {
    sub_101352DC4();
  }

  v3 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Collaborator Cursor: Requesting collaborator cursor renderable for base rep: %{public}@", &buf, 0xCu);
  }

  if (!self->mCollaboratorCursorRenderable)
  {
    v4 = +[CRLCanvasRenderable renderable];
    mCollaboratorCursorRenderable = self->mCollaboratorCursorRenderable;
    self->mCollaboratorCursorRenderable = v4;

    v6 = 4;
    do
    {
      v7 = +[CRLCanvasShapeRenderable renderable];
      [v7 setFillColor:0];
      [(CRLCanvasRenderable *)self->mCollaboratorCursorRenderable addSubrenderable:v7];

      --v6;
    }

    while (v6);
    if (!self->mCollaboratorCursorRenderable)
    {
      goto LABEL_10;
    }
  }

  if (!self->mCollaboratorCursorRenderableValid)
  {
    if (qword_101AD5B90 != -1)
    {
      sub_101352DD8();
    }

    v9 = off_1019EDBE8;
    if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Collaborator Cursor: Actually re-generating renderable for base rep: %{public}@", &buf, 0xCu);
    }

    v10 = [(CRLCanvasRenderable *)self->mCollaboratorCursorRenderable subrenderables];
    if ([v10 count] != 4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101352E00();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101352E28();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101352EB0();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLCanvasRep collaboratorCursorRenderable]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1945 isFatal:0 description:"Expect four collaborator sublayers"];
    }

    if ([v10 count] == 4)
    {
      v14 = objc_opt_class();
      v15 = [v10 objectAtIndexedSubscript:0];
      v16 = sub_100013F00(v14, v15);

      WeakRetained = objc_loadWeakRetained(&self->mCanvas);
      [WeakRetained viewScale];
      v19 = v18;

      v20 = 10.0 / v19;
      [(CRLCanvasRep *)self boundsForCollaboratorCursorRenderable];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v29 convertUnscaledToBoundsRect:{v22, v24, v26, v28}];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = fabs(v35);
      v39 = (30.0 - v38) * 0.5;
      v40 = v38 < 30.0;
      v41 = 0.0;
      if (!v40)
      {
        v39 = 0.0;
      }

      v42 = fabs(v37);
      if (v42 < 30.0)
      {
        v41 = (30.0 - v42) * 0.5;
      }

      v43 = 4.0 * 0.5 + 2.0;
      v44 = -(v43 + v39);
      v45 = -(v43 + v41);
      v108.origin.x = v31;
      v108.origin.y = v33;
      v108.size.width = v35;
      v108.size.height = v37;
      v109 = CGRectInset(v108, v44, v45);
      x = v109.origin.x;
      y = v109.origin.y;
      width = v109.size.width;
      height = v109.size.height;
      v50 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v50 convertBoundsToUnscaledRect:{x, y, width, height}];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;

      memset(&v102, 0, sizeof(v102));
      [(CRLCanvasRep *)self transformForCollaboratorCursorRenderable];
      CGAffineTransformMakeScale(&t2, v19, v19);
      t1 = v102;
      CGAffineTransformConcat(&buf, &t1, &t2);
      v102 = buf;
      v110.origin.x = v52;
      v110.origin.y = v54;
      v110.size.width = v56;
      v110.size.height = v58;
      buf.a = CGRectGetMinX(v110);
      v111.origin.x = v52;
      v111.origin.y = v54;
      v111.size.width = v56;
      v111.size.height = v58;
      buf.b = CGRectGetMinY(v111);
      v112.origin.x = v52;
      v112.origin.y = v54;
      v112.size.width = v56;
      v112.size.height = v58;
      buf.c = CGRectGetMaxX(v112);
      v113.origin.x = v52;
      v113.origin.y = v54;
      v113.size.width = v56;
      v113.size.height = v58;
      buf.d = CGRectGetMinY(v113);
      v114.origin.x = v52;
      v114.origin.y = v54;
      v114.size.width = v56;
      v114.size.height = v58;
      buf.tx = CGRectGetMaxX(v114);
      v115.origin.x = v52;
      v115.origin.y = v54;
      v115.size.width = v56;
      v115.size.height = v58;
      buf.ty = CGRectGetMaxY(v115);
      v116.origin.x = v52;
      v116.origin.y = v54;
      v116.size.width = v56;
      v116.size.height = v58;
      MinX = CGRectGetMinX(v116);
      v117.origin.x = v52;
      v117.origin.y = v54;
      v117.size.width = v56;
      v117.size.height = v58;
      MaxY = CGRectGetMaxY(v117);
      v59 = [(CRLCanvasRep *)self canvas];
      [v59 contentsScale];
      v61 = v60;
      *v62.i64 = v52;
      *v63.i64 = v56;
      sub_10018F260(&v102.a, &buf, 4, v62, v54, v63, v58, 4.0, v61);

      v64 = [(CRLCanvasRep *)self currentCollaboratorCursorColor];
      v65 = [v64 CGColor];

      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      t1 = v102;
      CGAffineTransformInvert(&t2, &t1);
      v66 = t2.tx + buf.b * t2.c + t2.a * buf.a;
      v67 = t2.ty + buf.b * t2.d + t2.b * buf.a;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, v66, v20 + v67);
      CGPathAddLineToPoint(Mutable, 0, v66, v67);
      CGPathAddLineToPoint(Mutable, 0, v20 + v66, v67);
      [v16 setPath:Mutable];
      CGPathRelease(Mutable);
      v69 = objc_opt_class();
      v70 = [v10 objectAtIndexedSubscript:1];
      v71 = sub_100013F00(v69, v70);

      t1 = v102;
      CGAffineTransformInvert(&t2, &t1);
      v72 = t2.tx + buf.d * t2.c + t2.a * buf.c;
      v73 = t2.ty + buf.d * t2.d + t2.b * buf.c;
      v74 = CGPathCreateMutable();
      CGPathMoveToPoint(v74, 0, v72, v20 + v73);
      CGPathAddLineToPoint(v74, 0, v72, v73);
      CGPathAddLineToPoint(v74, 0, v72 - v20, v73);
      [v71 setPath:v74];
      CGPathRelease(v74);

      v75 = objc_opt_class();
      v76 = [v10 objectAtIndexedSubscript:2];
      v77 = sub_100013F00(v75, v76);

      t1 = v102;
      CGAffineTransformInvert(&t2, &t1);
      v78 = t2.tx + buf.ty * t2.c + t2.a * buf.tx;
      v79 = t2.ty + buf.ty * t2.d + t2.b * buf.tx;
      v80 = CGPathCreateMutable();
      CGPathMoveToPoint(v80, 0, v78, v79 - v20);
      CGPathAddLineToPoint(v80, 0, v78, v79);
      CGPathAddLineToPoint(v80, 0, v78 - v20, v79);
      [v77 setPath:v80];
      CGPathRelease(v80);

      v81 = objc_opt_class();
      v82 = [v10 objectAtIndexedSubscript:3];
      v83 = sub_100013F00(v81, v82);

      t1 = v102;
      CGAffineTransformInvert(&t2, &t1);
      v84 = t2.tx + MaxY * t2.c + t2.a * MinX;
      v85 = t2.ty + MaxY * t2.d + t2.b * MinX;
      v86 = CGPathCreateMutable();
      CGPathMoveToPoint(v86, 0, v84, v85 - v20);
      CGPathAddLineToPoint(v86, 0, v84, v85);
      CGPathAddLineToPoint(v86, 0, v20 + v84, v85);
      [v83 setPath:v86];
      CGPathRelease(v86);

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v87 = v10;
      v88 = [v87 countByEnumeratingWithState:&v96 objects:v103 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v97;
        v91 = 4.0 / v19;
        do
        {
          for (i = 0; i != v89; i = i + 1)
          {
            if (*v97 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v93 = *(*(&v96 + 1) + 8 * i);
            [v93 setStrokeColor:{v65, v96}];
            [v93 setLineWidth:v91];
            t2 = v102;
            [v93 setAffineTransform:&t2];
          }

          v89 = [v87 countByEnumeratingWithState:&v96 objects:v103 count:16];
        }

        while (v89);
      }

      +[CATransaction commit];
      self->mCollaboratorCursorRenderableValid = 1;
    }
  }

  else
  {
LABEL_10:
    if (qword_101AD5B90 != -1)
    {
      sub_101352ED8();
    }

    v8 = off_1019EDBE8;
    if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Collaborator Cursor: Not regenerating renderable, because it was considered already valid for base rep: %{public}@", &buf, 0xCu);
    }
  }

  v94 = self->mCollaboratorCursorRenderable;

  return v94;
}

- (CGRect)boundsForStandardKnobs
{
  v2 = [(CRLCanvasRep *)self layout];
  [v2 boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSArray)knobs
{
  if ([(CRLCanvasRep *)self hasBeenRemoved])
  {
    v3 = &__NSArray0__struct;
    goto LABEL_21;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  mKnobsAccessQueue = self->mKnobsAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031C73C;
  block[3] = &unk_10183A0A8;
  block[4] = self;
  block[5] = &v54;
  dispatch_sync(mKnobsAccessQueue, block);
  if (*(v55 + 24) == 1)
  {
    v5 = +[NSMutableArray array];
    [(CRLCanvasRep *)self addKnobsToArray:v5];
    if ([v5 count])
    {
      self->mKnobPositionsInvalid = 1;
    }

    v6 = self->mKnobsAccessQueue;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10031C780;
    v51[3] = &unk_10183AE28;
    v51[4] = self;
    v52 = v5;
    v7 = v5;
    dispatch_sync(v6, v51);
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10031C78C;
  v45 = sub_10031C79C;
  v46 = 0;
  v8 = self->mKnobsAccessQueue;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10031C7A4;
  v40[3] = &unk_101855BC0;
  v40[4] = self;
  v40[5] = &v47;
  v40[6] = &v41;
  dispatch_sync(v8, v40);
  if (*(v48 + 24) == 1)
  {
    [(CRLCanvasRep *)self updatePositionsOfKnobs:v42[5]];
  }

  self->mKnobPositionsInvalid = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10031C78C;
  v38 = sub_10031C79C;
  v39 = 0;
  v9 = self->mKnobsAccessQueue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10031C858;
  v33[3] = &unk_101839FF8;
  v33[4] = self;
  v33[5] = &v34;
  dispatch_sync(v9, v33);
  if ([v35[5] count])
  {
    if ([v35[5] count] != 1 || (objc_msgSend(v35[5], "crl_anyObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);
      if (WeakRetained)
      {
        v13 = WeakRetained;
        v14 = objc_loadWeakRetained(&self->mKnobTracker);
        if ([v14 didBegin])
        {
          mShowKnobsWhenManipulated = self->mShowKnobsWhenManipulated;

          if (!mShowKnobsWhenManipulated)
          {
            v16 = objc_loadWeakRetained(&self->mKnobTracker);
            v17 = [v16 enabledKnobMask];

            v18 = v35[5];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10031C86C;
            v32[3] = &unk_101855BE8;
            v32[4] = self;
            v32[5] = v17;
            v19 = [v18 crl_arrayOfObjectsPassingTest:v32];
LABEL_19:
            v21 = v35[5];
            v35[5] = v19;

            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      if (![(CRLCanvasRep *)self shouldShowKnobs])
      {
        v20 = v35[5];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10031C974;
        v31[3] = &unk_101855C10;
        v31[4] = self;
        v19 = [v20 crl_arrayOfObjectsPassingTest:v31];
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10031C78C;
  v29 = sub_10031C79C;
  v30 = 0;
  v22 = self->mKnobsAccessQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10031C980;
  v24[3] = &unk_101855C38;
  v24[4] = self;
  v24[5] = &v34;
  v24[6] = &v25;
  dispatch_sync(v22, v24);
  v3 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v54, 8);
LABEL_21:

  return v3;
}

- (void)invalidateKnobs
{
  mKnobsAccessQueue = self->mKnobsAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031CA9C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(mKnobsAccessQueue, block);
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v4 invalidateOverlayLayersForRep:self];
}

- (unint64_t)enabledKnobMask
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 resizeMayChangeAspectRatio];

  if (v4)
  {
    v5 = 990;
  }

  else
  {
    v5 = 650;
  }

  [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v12 = sub_10011F340(v7, v9, v11);
  v14 = v13;

  v15 = [(CRLCanvasRep *)self layout];
  v16 = [v15 resizeMayChangeAspectRatio];

  if (v16)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v19 = [(CRLCanvasRep *)self layout];
    [v19 minimumSize];
    v21 = v20;
    v23 = v22;

    width = 1.0;
    if (v23 <= 1.0)
    {
      height = v23;
    }

    else
    {
      height = 1.0;
    }

    if (v21 <= 1.0)
    {
      width = v21;
    }
  }

  v24 = v5 & 0x2DA;
  if (v12 >= 50.0)
  {
    v24 = v5;
  }

  if (v7 < width)
  {
    result = v5 & 0x104;
  }

  else
  {
    result = v24;
  }

  if (v9 >= height)
  {
    if (v14 >= 50.0)
    {
      return result;
    }

    v26 = 910;
  }

  else
  {
    v26 = 80;
  }

  result &= v26;
  return result;
}

- (void)addKnobsToArray:(id)a3
{
  v5 = a3;
  v4 = [(CRLCanvasKnob *)[CRLCanvasPlaceholderInvisibleKnob alloc] initWithType:1 position:0 radius:self tag:CGPointZero.x onRep:CGPointZero.y, 0.0];
  [v5 addObject:v4];
  if ([(CRLCanvasRep *)self shouldCreateSelectionKnobs])
  {
    [(CRLCanvasRep *)self addSelectionKnobsToArray:v5];
  }

  else if ([(CRLCanvasRep *)self shouldCreateLockedKnobs])
  {
    [(CRLCanvasRep *)self addLockedKnobsToArray:v5];
  }
}

- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4
{
  v7 = [CRLCanvasKnob alloc];
  y = CGPointZero.y;

  return [(CRLCanvasKnob *)v7 initWithType:a3 position:a4 radius:self tag:CGPointZero.x onRep:y, 15.0];
}

- (void)addSelectionKnobsToArray:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self enabledKnobMask];
  if (v5)
  {
    v6 = v5;
    for (i = 1; i != 10; ++i)
    {
      if ((sub_100345928(i) & v6) != 0)
      {
        v8 = [(CRLCanvasRep *)self newSelectionKnobForType:0 tag:i];
        [v4 addObject:v8];
      }
    }
  }

  if ([(CRLCanvasRep *)self shouldCreateConnectionLineKnobs])
  {
    v9 = [[_TtC8Freeform21CRLConnectionLineKnob alloc] initWithTag:2 onRep:self];
    v14[0] = v9;
    v10 = [[_TtC8Freeform21CRLConnectionLineKnob alloc] initWithTag:8 onRep:self];
    v14[1] = v10;
    v11 = [[_TtC8Freeform21CRLConnectionLineKnob alloc] initWithTag:6 onRep:self];
    v14[2] = v11;
    v12 = [[_TtC8Freeform21CRLConnectionLineKnob alloc] initWithTag:4 onRep:self];
    v14[3] = v12;
    v13 = [NSArray arrayWithObjects:v14 count:4];
    [v4 addObjectsFromArray:v13];
  }
}

- (void)addLockedKnobsToArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  [(CRLCanvasRep *)self addSelectionKnobsToArray:v5];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setType:{4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [v4 addObjectsFromArray:v6];
}

- (CGRect)trackingBoundsForStandardKnobs
{
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mKnobTracker);
    [v4 currentBoundsForStandardKnobs];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)updatePositionsOfKnobs:(id)a3
{
  v4 = a3;
  [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if ([v18 tag] - 1 <= 8)
        {
          [(CRLCanvasRep *)self positionOfStandardKnob:v18 forBounds:v6, v8, v10, v12];
          [v18 setPosition:?];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (BOOL)forcesPlacementOnTop
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);
  v6 = [v5 forcesPlacementOnTop];

  return v6;
}

- (BOOL)forcesPlacementOnBottom
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);
  v6 = [v5 forcesPlacementOnBottom];

  return v6;
}

- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (![v9 tag] || objc_msgSend(v9, "tag") >= 0xA)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101352F00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352F14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352F9C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasRep positionOfStandardKnob:forBounds:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:2330 isFatal:0 description:"-positionOfStandardKnob:forBounds: works for standard knobs only"];
  }

  [v9 offset];
  v14 = v13;
  v16 = v15;
  if (![v9 offsetValid])
  {
    v17 = [(CRLCanvasRep *)self canvas];
    [v17 viewScale];
    v19 = v18;

    if (width * v19 <= 16.0)
    {
      if ([v9 tag] == 1 || objc_msgSend(v9, "tag") == 4 || objc_msgSend(v9, "tag") == 7)
      {
        v14 = v14 - (8.0 / v19 + width * -0.5);
      }

      else if ([v9 tag] == 3 || objc_msgSend(v9, "tag") == 6 || objc_msgSend(v9, "tag") == 9)
      {
        v14 = v14 + 8.0 / v19 + width * -0.5;
      }
    }

    if (height * v19 > 16.0)
    {
      goto LABEL_24;
    }

    if ([v9 tag] == 1 || objc_msgSend(v9, "tag") == 2 || objc_msgSend(v9, "tag") == 3)
    {
      v20 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v20 viewScale];
      v16 = v16 - (8.0 / v21 + height * -0.5);
    }

    else
    {
      if ([v9 tag] != 7 && objc_msgSend(v9, "tag") != 8 && objc_msgSend(v9, "tag") != 9)
      {
        goto LABEL_24;
      }

      v20 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v20 viewScale];
      v16 = v16 + 8.0 / v43 + height * -0.5;
    }

LABEL_24:
    [v9 setOffset:{v14, v16}];
    [v9 setOffsetValid:1];
  }

  v22 = sub_100345F44([v9 tag], x, y, width, height);
  v24 = sub_10011F334(v22, v23, v14);
  v26 = v25;
  v27 = [(CRLCanvasRep *)self canvas];
  [v27 viewScale];
  v29 = v28;

  +[_TtC8Freeform21CRLConnectionLineKnob unscaledConnectionKnobOffsetWithEdgeKnob];
  v31 = v30;
  +[_TtC8Freeform21CRLConnectionLineKnob unscaledConnectionKnobOffsetWithoutEdgeKnob];
  v33 = v32;
  v34 = [(CRLCanvasRep *)self enabledKnobMask];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v31 / v29;
    v36 = v33 / v29;
    if ([v9 tag] == 6)
    {
      if ((v34 & 0x40) != 0)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v24 = v24 + v37;
    }

    else if ([v9 tag] == 4)
    {
      if ((v34 & 0x10) != 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }

      v24 = v24 - v38;
    }

    else if ([v9 tag] == 2)
    {
      if ((v34 & 4) != 0)
      {
        v39 = v35;
      }

      else
      {
        v39 = v36;
      }

      v26 = v26 - v39;
    }

    else if ([v9 tag] == 8)
    {
      if ((v34 & 0x100) != 0)
      {
        v40 = v35;
      }

      else
      {
        v40 = v36;
      }

      v26 = v26 + v40;
    }
  }

  v41 = v24;
  v42 = v26;
  result.y = v42;
  result.x = v41;
  return result;
}

- (void)invalidateKnobPositions
{
  self->mKnobPositionsInvalid = 1;
  [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
  v4 = [(CRLCanvasRep *)self canvas];
  v3 = [v4 canvasController];
  [v3 invalidateOverlayLayersForRep:self];
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101352FC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352FD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353074();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasRep newTrackerForKnob:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2407 isFatal:0 description:"invalid nil value for '%{public}s'", "knob"];
  }

  v8 = [v4 tag];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = &off_10182FA68;
  }

  else
  {
    if ((v8 - 1) > 8)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v9 = off_10182F920;
  }

  v10 = [objc_alloc(*v9) initWithRep:self knob:v4];
LABEL_17:

  return v10;
}

- (void)p_toggleHyperlinkUIVisibility
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 toggleHyperlinkUIForRep:self];
}

- (id)knobForTag:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLCanvasRep *)self knobs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 tag] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (double)additionalRotationForKnobOrientation
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = v2;
  if (v2)
  {
    [v2 transformInRoot];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = sub_100139980(v6);

  return v4;
}

- (CRLCanvasKnob)knobForInspectorResize
{
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isAnchoredAtRight];

  if (v4)
  {
    v5 = 7;
  }

  else
  {
    v5 = 9;
  }

  v6 = [(CRLCanvasRep *)self knobForTag:v5];
  if (!v6)
  {
    v6 = [[CRLCanvasKnob alloc] initWithType:0 position:v5 radius:self tag:CGPointZero.x onRep:CGPointZero.y, 15.0];
  }

  return v6;
}

- (CGAffineTransform)knobPositionTransformForInspectorResize
{
  [(CRLCanvasRep *)self boundsForStandardKnobs];

  return CGAffineTransformMakeTranslation(retstr, v4, v5);
}

- (BOOL)shouldShowSelectionHighlight
{
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v2 = [v4 delegate];
    if ([v2 shouldSuppressSelectionHighlightForInteractiveCanvasController:v4])
    {
      LOBYTE(v7) = 0;
      goto LABEL_11;
    }
  }

  if ([(CRLCanvasRep *)self isSelectedIgnoringLocking]&& (![(CRLCanvasRep *)self isInDynamicOperation]|| self->mShowKnobsWhenManipulated && self->mKnobsAreShowing))
  {
    WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);
    v7 = [WeakRetained shouldHideSelectionHighlight] ^ 1;

    v9 = v7;
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  LOBYTE(v7) = 0;
  v9 = 0;
  if (v6)
  {
LABEL_11:

    v9 = v7;
  }

LABEL_12:

  return v9;
}

- (BOOL)shouldCreateConnectionLineKnobs
{
  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    return 0;
  }

  v3 = [(CRLCanvasRep *)self layout];
  if ([v3 isInGroup])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([v5 connectorKnobsEnabled])
    {
      v4 = [CRLConnectionLineRep canConnectToRep:self];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldCreateSelectionKnobs
{
  if (![(CRLCanvasRep *)self shouldShowKnobs]|| ![(CRLCanvasRep *)self isSelected])
  {
    return 0;
  }

  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v3 usesAlternateDrawableSelectionHighlight])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([v5 shouldSuppressSelectionKnobsForRep:self])
    {
      v4 = [(CRLCanvasRep *)self shouldIgnoreICCSuppressSelectionKnobs];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)shouldCreateLockedKnobs
{
  v3 = [(CRLCanvasRep *)self isLocked];
  if (v3)
  {

    LOBYTE(v3) = [(CRLCanvasRep *)self isSelectedIgnoringLocking];
  }

  return v3;
}

- (BOOL)shouldShowKnobs
{
  if (![(CRLCanvasRep *)self isInDynamicOperation]|| self->mShowKnobsWhenManipulated)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)turnKnobsOn
{
  self->mKnobsAreShowing = 1;
  mKnobsAccessQueue = self->mKnobsAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031E1B0;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(mKnobsAccessQueue, block);
}

- (void)fadeKnobsIn
{
  self->mKnobsAreShowing = 1;
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.150000006];
  LODWORD(v4) = 1.0;
  v5 = [NSNumber numberWithFloat:v4];
  [v3 setToValue:v5];

  mKnobsAccessQueue = self->mKnobsAccessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10031E40C;
  v8[3] = &unk_10183AE28;
  v8[4] = self;
  v9 = v3;
  v7 = v3;
  dispatch_sync(mKnobsAccessQueue, v8);
}

- (void)fadeKnobsOut
{
  self->mKnobsAreShowing = 0;
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.150000006];
  LODWORD(v4) = 1.0;
  v5 = [NSNumber numberWithFloat:v4];
  [v3 setFromValue:v5];

  v6 = [NSNumber numberWithFloat:0.0];
  [v3 setToValue:v6];

  mKnobsAccessQueue = self->mKnobsAccessQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10031E6F0;
  v9[3] = &unk_10183AE28;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  dispatch_sync(mKnobsAccessQueue, v9);
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CRLColor)selectionHighlightColor
{
  if ([(CRLCanvasRep *)self isLocked])
  {
    if (qword_101A34C08 != -1)
    {
      sub_10135309C();
    }

    v3 = qword_101A34C10;
  }

  else
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 selectionHighlightColor];

    if (v5)
    {
      goto LABEL_8;
    }

    v3 = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
  }

  v5 = v3;
LABEL_8:

  return v5;
}

- (CGAffineTransform)transformForHighlightLayer
{
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->mKnobTracker);
    v6 = v5;
    if (v5)
    {
      [v5 transformInRootForStandardKnobs];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [(CRLCanvasRep *)self layout];
    v6 = v7;
    if (v7)
    {
      [v7 transformInRoot];
      goto LABEL_7;
    }
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
LABEL_7:

  return result;
}

- (void)invalidateSelectionHighlightRenderable
{
  [(CRLCanvasRenderable *)self->mSelectionHighlightRenderable setDelegate:0];
  mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
  self->mSelectionHighlightRenderable = 0;

  self->mSelectionHighlightRenderableValid = 0;
}

- (CRLCanvasRenderable)selectionHighlightRenderable
{
  mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
  if (!mSelectionHighlightRenderable)
  {
    v4 = [(CRLCanvasRep *)self makeSelectionHighlightRenderable];
    v5 = self->mSelectionHighlightRenderable;
    self->mSelectionHighlightRenderable = v4;

    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLCanvasRenderable *)self->mSelectionHighlightRenderable setDelegate:v6];

    self->mSelectionHighlightRenderableValid = 0;
    mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
    goto LABEL_5;
  }

  if (!self->mSelectionHighlightRenderableValid)
  {
LABEL_5:
    [(CRLCanvasRep *)self updateSelectionHighlightRenderable:mSelectionHighlightRenderable];
    self->mSelectionHighlightRenderableValid = 1;
    mSelectionHighlightRenderable = self->mSelectionHighlightRenderable;
  }

  return mSelectionHighlightRenderable;
}

- (id)makeSelectionHighlightRenderable
{
  v3 = +[CRLCanvasShapeRenderable renderable];
  [v3 setFillColor:0];
  [(CRLCanvasRep *)self selectionHighlightWidth];
  [v3 setLineWidth:?];

  return v3;
}

- (void)updateSelectionHighlightRenderable:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self selectionHighlightColor];
    [v6 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

    [(CRLCanvasRep *)self selectionHighlightWidth];
    [v6 setLineWidth:?];
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    [WeakRetained viewScale];
    v10 = v9;

    [(CRLCanvasRep *)self boundsForHighlightLayer];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memset(&v27, 0, sizeof(v27));
    [(CRLCanvasRep *)self transformForHighlightLayer];
    CGAffineTransformMakeScale(&t2, v10, v10);
    v24 = v27;
    CGAffineTransformConcat(&v26, &v24, &t2);
    v27 = v26;
    [v6 lineWidth];
    v20 = v19;
    v21 = [(CRLCanvasRep *)self canvas];
    [v21 contentsScale];
    v23 = sub_10018F420(&v27.a, v12, v14, v16, v18, v20, v22);

    [v6 setPath:v23];
    CGPathRelease(v23);
  }
}

- (void)i_invalidateSelectionHighlightRenderable
{
  self->mSelectionHighlightRenderableValid = 0;
  [(CRLCanvasRep *)self invalidateCollaboratorCursorRenderable];

  [(CRLCanvasRep *)self invalidateDragAndDropHighlightLayer];
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->mKnobTracker);
    [v7 convertKnobPositionToUnscaledCanvas:{x, y}];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {

    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->mKnobTracker);
    [v7 convertKnobPositionFromUnscaledCanvas:{x, y}];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {

    [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:x, y];
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (id)p_addRenderablesForKnobsToArray:(id)a3 withDelegate:(id)a4 isOverlay:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CRLCanvasRep *)self knobs];
  if (![v10 count] || objc_msgSend(v10, "count") == 1 && (objc_msgSend(v10, "crl_anyObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
  {
    v13 = v8;
  }

  else
  {
    v14 = [(CRLCanvasRep *)self interactiveCanvasController];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10031F130;
    v26[3] = &unk_101855D40;
    v27 = a5;
    v26[4] = v10;
    v26[5] = self;
    v15 = objc_retainBlock(v26);
    if (!v8)
    {
      v8 = +[NSMutableArray array];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10031F5B0;
    v24[3] = &unk_101855D68;
    v24[4] = self;
    v16 = v8;
    v25 = v16;
    (v15[2])(v15, v24);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10031F63C;
    v19[3] = &unk_101855DD0;
    v20 = v9;
    v21 = v14;
    v22 = self;
    v17 = v16;
    v23 = v17;
    (v15[2])(v15, v19);
    v13 = v17;
  }

  return v13;
}

- (NSArray)overlayRenderables
{
  v3 = +[NSMutableArray array];
  if ([(CRLCanvasRep *)self shouldShowCollaboratorCursorHighlight]&& [(CRLCanvasRep *)self shouldAddCollaboratorLayerToOverlays])
  {
    v4 = [(CRLCanvasRep *)self collaboratorCursorRenderable];
    if (v4)
    {
      [v3 addObject:v4];
    }
  }

  if ([(CRLCanvasRep *)self p_shouldShowSelectionHighlight])
  {
    v5 = [(CRLCanvasRep *)self selectionHighlightRenderable];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  if ([(CRLCanvasRep *)self shouldShowDragAndDropHighlight])
  {
    v6 = [(CRLCanvasRep *)self dragAndDropHighlightRenderable];
    if (v6)
    {
      [v3 addObject:v6];
    }
  }

  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [(CRLCanvasRep *)self p_addRenderablesForKnobsToArray:v3 withDelegate:v7 isOverlay:1];

  return v8;
}

- (BOOL)p_shouldShowSelectionHighlight
{
  if (![(CRLCanvasRep *)self shouldSuppressSelectionHighlightDuringMultiselection])
  {
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 shouldSuppressSelectionKnobsForRep:self];

    if (v4)
    {
      return 1;
    }
  }

  return [(CRLCanvasRep *)self shouldShowSelectionHighlight];
}

- (double)contentsScale
{
  v2 = [(CRLCanvasRep *)self canvas];
  [v2 contentsScale];
  v4 = v3;

  return v4;
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicOperationDidBeginWithRealTimeCommands:" withObject:v4];
}

- (void)p_dynamicOperationDidBeginWithRealTimeCommands:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasRep *)self isInDynamicOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135313C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353150();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013531D8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasRep p_dynamicOperationDidBeginWithRealTimeCommands:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2854 isFatal:0 description:"beginning dynamic operation on rep already being manipulated"];
  }

  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  self->mOriginalLayerFrameInScaledCanvas.origin.x = v8;
  self->mOriginalLayerFrameInScaledCanvas.origin.y = v9;
  self->mOriginalLayerFrameInScaledCanvas.size.width = v10;
  self->mOriginalLayerFrameInScaledCanvas.size.height = v11;
  v12 = [(CRLCanvasRep *)self layout];
  v13 = [v4 BOOLValue];

  [v12 beginDynamicOperationWithRealTimeCommands:v13];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)dynamicOperationDidEnd
{
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicOperationDidEnd"];
  v3 = [(CRLCanvasRep *)self p_connectedReps];
  [v3 makeObjectsPerformSelector:"invalidateKnobs"];

  [(CRLCanvasRep *)self invalidateKnobs];
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v4 isInGroup];

  if (v5)
  {
    v6 = [(CRLCanvasRep *)self parentRep];
    [v6 p_invalidateChildKnobPositionsForEndingDynamicOperation];
  }
}

- (void)p_invalidateChildKnobPositionsForEndingDynamicOperation
{
  if (!self->mHasInvalidatedChildKnobPositionsForEndingDynamicOperation)
  {
    self->mHasInvalidatedChildKnobPositionsForEndingDynamicOperation = 1;
    v3 = [(CRLCanvasRep *)self childReps];
    [v3 makeObjectsPerformSelector:"invalidateKnobPositions"];

    objc_initWeak(&location, self);
    v4 = [(CRLCanvasRep *)self canvas];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10031FFF8;
    v5[3] = &unk_10183AF10;
    objc_copyWeak(&v6, &location);
    [v4 performBlockAfterLayoutIfNecessary:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)p_dynamicOperationDidEnd
{
  v3 = [(CRLCanvasRep *)self layout];
  [v3 endDynamicOperation];

  if ([(CRLCanvasRep *)self shouldShowKnobs])
  {

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)isInDynamicOperation
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 layoutState] != 0;

  return v3;
}

- (CRLShadow)shadow
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 shadow];

  return v6;
}

- (BOOL)shouldShowShadow
{
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 suppressesShadowsAndReflections];

  if ((v4 & 1) != 0 || [(CRLCanvasRep *)self isBeingResized]|| [(CRLCanvasRep *)self isBeingRotated]|| [(CRLCanvasRep *)self isBeingFreeTransformResized])
  {
    return 0;
  }

  else
  {
    return ![(CRLCanvasRep *)self inFreeTransformRotateResizeMode];
  }
}

- (void)p_willUpdateEffectRenderablesForRenderable:(id)a3
{
  v7 = [(CRLCanvasRep *)self shadow];
  if (v7 && [v7 isEnabled] && -[CRLCanvasRep shouldShowShadow](self, "shouldShowShadow"))
  {
    if (!self->mShadowRenderable)
    {
      v4 = +[CRLNoDefaultImplicitActionRenderable renderable];
      mShadowRenderable = self->mShadowRenderable;
      self->mShadowRenderable = v4;

      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }

  else
  {
    v6 = self->mShadowRenderable;
    if (v6)
    {
      self->mShadowRenderable = 0;
    }
  }
}

- (void)p_didUpdateEffectRenderablesForRenderable:(id)a3
{
  if (![(CRLCanvasRep *)self isInvisible])
  {
    v55 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v55 createRepsForOffscreenLayouts];
    mShadowRenderable = self->mShadowRenderable;
    if (mShadowRenderable && (v5 & 1) == 0)
    {
      [v55 visibleBoundsRectForTiling];
      [v55 convertBoundsToUnscaledRect:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(CRLCanvasRep *)self layout];
      [v15 frameForCulling];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [(CRLCanvasRep *)self layout];
      v25 = [v24 parent];

      if (v25)
      {
        [v25 rectInRoot:{v17, v19, v21, v23}];
        v17 = v26;
        v19 = v27;
        v21 = v28;
        v23 = v29;
      }

      v57.origin.x = v17;
      v57.origin.y = v19;
      v57.size.width = v21;
      v57.size.height = v23;
      v58.origin.x = v8;
      v58.origin.y = v10;
      v58.size.width = v12;
      v58.size.height = v14;
      if (!CGRectIntersectsRect(v57, v58))
      {
        [(CRLCanvasRenderable *)self->mShadowRenderable setOpacity:0.0];

        goto LABEL_50;
      }

      mShadowRenderable = self->mShadowRenderable;
    }

    if (mShadowRenderable && ![(CRLCanvasRep *)self isBeingResized]&& ![(CRLCanvasRep *)self inFreeTransformRotateResizeMode])
    {
      v30 = [(CRLCanvasRep *)self shadow];
      if (!v30)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101353200();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101353214();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013532B0();
        }

        v31 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v31);
        }

        v32 = [NSString stringWithUTF8String:"[CRLCanvasRep p_didUpdateEffectRenderablesForRenderable:]"];
        v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:3008 isFatal:0 description:"invalid nil value for '%{public}s'", "shadow"];
      }

      if (([v30 isEnabled] & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013532D8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101353300();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101353388();
        }

        v34 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v34);
        }

        v35 = [NSString stringWithUTF8String:"[CRLCanvasRep p_didUpdateEffectRenderablesForRenderable:]"];
        v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:3009 isFatal:0 description:"shouldn't have shadow renderable if shadow is not enabled"];
      }

      if (v30 && [v30 isEnabled])
      {
        [(CRLCanvasRep *)self opacity];
        v38 = v37;
        [v30 opacity];
        v40 = v38 * v39;
        [(CRLCanvasRenderable *)self->mShadowRenderable opacity];
        v42 = v41;
        if (v40 != v42)
        {
          *&v42 = v40;
          [(CRLCanvasRenderable *)self->mShadowRenderable setOpacity:v42];
        }

        if (v40 != 0.0)
        {
          v43 = [(CRLCanvasRenderable *)self->mShadowRenderable contents];

          if (!v43)
          {
            [(CRLCanvasRep *)self invalidateShadowRenderable];
          }
        }

        if ([(CRLCanvasRep *)self isBeingRotated])
        {
          [(CRLCanvasRep *)self invalidateShadowRenderable];
        }

        v44 = self->mShadowRenderable;
        v45 = [(CRLCanvasRep *)self layout];
        [v45 shadowedNaturalBoundsWithoutOffset];
        [(CRLCanvasRep *)self p_positionShadowRenderable:v44 forShadow:v30 withNaturalBounds:?];
      }

      if (self->mShadowRenderableInvalid)
      {
        [(CRLCanvasRenderable *)self->mShadowRenderable bounds];
        v47 = v46;
        v49 = v48;
        v50 = [(CRLCanvasRep *)self canvas];
        [v50 viewScale];
        v52 = [(CRLCanvasRep *)self newShadowImageWithSize:0 unflipped:1 withChildren:sub_10011F340(v47, v49, 1.0 / v51)];

        [(CRLCanvasRenderable *)self->mShadowRenderable setContents:v52];
        v53 = [(CRLCanvasRep *)self canvas];
        [v53 viewScale];
        self->mShadowCurrentViewScale = v54;

        self->mShadowRenderableInvalid = 0;
        CGImageRelease(v52);
      }
    }

LABEL_50:

    return;
  }

  v4 = self->mShadowRenderable;

  [(CRLCanvasRenderable *)v4 setContents:0];
}

- (void)p_positionShadowRenderable:(id)a3 forShadow:(id)a4 withNaturalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(CRLCanvasRep *)self canvas];
  [v13 viewScale];
  v15 = v14;

  if ([v12 isDropShadow])
  {
    sub_10011FFD8(x, y, width, height, v15);
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    [(CRLCanvasRep *)self computeDirectLayerFrame:&v96 andTransform:&v93];
    v16 = sub_100120414(*&v96, *(&v96 + 1), *&v97, *(&v97 + 1));
    v18 = v17;
    [v12 offsetDelta];
    v21 = sub_10011F340(v19, v20, v15);
    v23 = sub_100122154(v21, v22);
    [v11 setPosition:{sub_10011F334(v16, v18, v23)}];
    [v11 setBounds:sub_10011ECB4()];
    v90 = v93;
    v91 = v94;
    v92 = v95;
    v24 = &v90;
  }

  else
  {
    if ([v12 isContactShadow])
    {
      v25 = [(CRLCanvasRep *)self shadow];
      [v25 boundsForRep:self];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = sub_10011FFD8(v27, v29, v31, v33, v15);
      v38 = sub_100120414(v34, v35, v36, v37);
      v40 = v39;
      [v12 offset];
      v42 = v41;
      v43 = 0.0;
    }

    else
    {
      if (![v12 isCurvedShadow])
      {
        goto LABEL_11;
      }

      v44 = [(CRLCanvasRep *)self shadow];
      [v44 boundsForRep:self];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = sub_10011FFD8(v46, v48, v50, v52, v15);
      v38 = sub_100120414(v53, v54, v55, v56);
      v40 = v57;
      [v12 offsetDelta];
    }

    v58 = sub_10011F340(v43, v42, v15);
    v60 = sub_100122154(v58, v59);
    v61 = sub_10011F334(v38, v40, v60);
    v63 = v62;
    v64 = [(CRLCanvasRep *)self parentRep];

    if (v64)
    {
      v65 = [(CRLCanvasRep *)self parentRep];
      [v65 layerFrameInScaledCanvas];
      v67 = v66;
      v69 = v68;

      v61 = v61 - v67;
      v63 = v63 - v69;
    }

    [v11 setPosition:{v61, v63}];
    [v11 setBounds:sub_10011ECB4()];
    v70 = *&CGAffineTransformIdentity.c;
    v93 = *&CGAffineTransformIdentity.a;
    v94 = v70;
    v95 = *&CGAffineTransformIdentity.tx;
    v24 = &v93;
  }

  [v11 setAffineTransform:{v24, v90, v91, v92, v93, v94, v95}];
LABEL_11:
  [v11 frame];
  v72 = v71;
  v74 = v73;
  v75 = [v11 superlayer];
  if (v75)
  {
    v76 = v75;
    do
    {
      [v76 frame];
      v72 = sub_10011F334(v72, v74, v77);
      v74 = v78;
      v79 = [v76 superlayer];

      v76 = v79;
    }

    while (v79);
  }

  [v11 position];
  v81 = v80;
  v83 = v82;
  v84 = [(CRLCanvasRep *)self canvas];
  [v84 contentsScale];
  v86 = sub_10012218C(v72, v74, v85);
  v88 = v87;

  v89 = sub_10011F31C(v86, v88, v72);
  [v11 setPosition:{sub_10011F334(v81, v83, v89)}];
}

- (CGImage)newShadowImageWithSize:(CGSize)a3 shadow:(id)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  v6 = a6;
  height = a3.height;
  width = a3.width;
  v11 = a4;
  v12 = [(CRLCanvasRep *)self canvas];
  [v12 viewScale];
  v14 = [v11 newShadowImageForRep:self withUnscaledSize:a5 viewScale:v6 drawSelector:width unflipped:{height, v13}];

  return v14;
}

- (CGImage)newShadowImageWithSize:(CGSize)a3 unflipped:(BOOL)a4 withChildren:(BOOL)a5
{
  v5 = a4;
  height = a3.height;
  width = a3.width;
  v9 = &selRef_drawInContextWithoutEffectsForAlphaOnly_;
  if (!a5)
  {
    v9 = &selRef_drawInContextWithoutEffectsOrChildrenForAlphaOnly_;
  }

  v10 = *v9;
  v11 = [(CRLCanvasRep *)self shadow];
  v12 = [(CRLCanvasRep *)self newShadowImageWithSize:v11 shadow:v10 drawSelector:v5 unflipped:width, height];

  return v12;
}

- (void)dynamicDragDidBegin
{
  [(CRLCanvasRep *)self p_dynamicDragDidBegin];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (NSString)actionStringForDrag
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move" value:0 table:@"UndoStrings"];

  return v3;
}

- (void)p_dynamicDragDidBegin
{
  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013533B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013533C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135344C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasRep p_dynamicDragDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3160 isFatal:0 description:"dynamic drag beginning outside of dynamic operation"];
  }

  v6 = [(CRLCanvasRep *)self layout];
  [v6 beginDrag];
}

- (BOOL)isBeingDragged
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 layoutState] == 2;

  return v3;
}

- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRep *)self layout];
  [v5 alignmentFrameInRoot];
  v15 = CGRectOffset(v14, x, y);
  v6 = v15.origin.x;
  v7 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;

  v10 = v6;
  v11 = v7;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)i_dynamicDragDidEnd
{
  v2 = [(CRLCanvasRep *)self layout];
  [v2 endDrag];
}

- (CGPoint)i_dragOffset
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 dynamicGeometry];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v9 = [(CRLCanvasRep *)self layout];
  v10 = [v9 originalGeometry];
  [v10 frame];
  v12 = sub_10011F31C(v6, v8, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)i_originalLayerFrameInScaledCanvas
{
  x = self->mOriginalLayerFrameInScaledCanvas.origin.x;
  y = self->mOriginalLayerFrameInScaledCanvas.origin.y;
  width = self->mOriginalLayerFrameInScaledCanvas.size.width;
  height = self->mOriginalLayerFrameInScaledCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dynamicDragDidEndAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasRep *)self i_dragOffset];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);

  if (WeakRetained)
  {
    [(CRLCanvasRep *)self recursivelyPerformSelector:"i_dynamicDragDidEnd"];
    v9 = objc_loadWeakRetained(&self->mCanvas);
    [v9 canvasInvalidatedForRep:self];

    if ([(CRLCanvasRep *)self dragDidChangeGeometry])
    {
      v10 = [(CRLCanvasRep *)self layout];
      v11 = [v10 isInRealTimeDynamicOperation];

      if ((v11 & 1) == 0)
      {
        v12 = [(CRLCanvasRep *)self info];
        v13 = [v12 geometry];
        v14 = [v13 mutableCopy];

        [v14 position];
        [v14 setPosition:{sub_10011F334(v15, v16, v7)}];
        v17 = objc_opt_class();
        v18 = sub_100014370(v17, v12);
        if (v18)
        {
          v19 = [(CRLCanvasRep *)self interactiveCanvasController];
          v20 = [v19 temporaryAdditionalBoardItemsToDisplay];
          v21 = [v20 containsObject:v18];

          if ((v21 & 1) == 0)
          {
            v22 = [(CRLCanvasRep *)self newCommandToApplyGeometry:v14 toInfo:v18];
            if (v22)
            {
              v23 = [(CRLCanvasRep *)self commandController];
              [v23 enqueueCommand:v22];
            }

            else
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101353474();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_101353488();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101353524();
              }

              v24 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10130DA10(v24);
              }

              v25 = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicDragDidEndAt:]"];
              v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
              [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:3266 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];
            }

            [(CRLCanvasRep *)self releaseFromAnchoringTableIfNeededAt:x, y];
            v27 = [(CRLCanvasRep *)self layout];
            [v27 enqueueCommandsForAdjustingPathSourcesAfterRoutingChanges];
          }
        }
      }
    }

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)allowDragAcrossPageBoundaries
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 isInGroup];

  return v3 ^ 1;
}

- (void)dynamicRotateDidBegin
{
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicRotateDidBegin"];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)p_dynamicRotateDidBegin
{
  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135354C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353560();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013535E8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasRep p_dynamicRotateDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3342 isFatal:0 description:"dynamic rotate began outside of dynamic operation"];
  }

  v6 = [(CRLCanvasRep *)self layout];
  [v6 beginRotate];

  [(CRLCanvasRep *)self invalidateKnobs];
}

- (BOOL)isBeingRotated
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 layoutState] == 3;

  return v3;
}

- (NSString)actionStringForRotate
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Rotate" value:0 table:@"UndoStrings"];

  return v3;
}

- (double)angleForRotation
{
  v2 = [(CRLCanvasRep *)self info];
  v3 = [v2 geometry];
  [v3 angle];
  v5 = v4;

  return v5;
}

- (CGPoint)unscaledGuidePosition
{
  [(CRLCanvasRep *)self naturalBounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);

  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:MidX, MinY];
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)dynamicallyRotatingWithTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self layout];
  [v5 takeRotationFromTracker:v4];
}

- (void)p_dynamicRotateDidEnd
{
  v3 = [(CRLCanvasRep *)self layout];
  [v3 endRotate];

  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)dynamicRotateDidEndWithTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self info];
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicRotateDidEnd"];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];

  v7 = [(CRLCanvasRep *)self layout];
  v8 = [v7 isInRealTimeDynamicOperation];

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, v5);
    if (v4)
    {
      [v4 rotateTransform];
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v11 = [(CRLCanvasRep *)self resizedGeometryForTransform:v21];
    if (v10)
    {
      v12 = [(CRLCanvasRep *)self newCommandToApplyGeometry:v11 toInfo:v10];
      if (v12)
      {
        v13 = [(CRLCanvasRep *)self commandController];
        [v13 enqueueCommand:v12];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101353610();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101353638();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013536D4();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v13 = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicRotateDidEndWithTracker:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v13 file:v20 lineNumber:3402 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];
      }
    }

    else
    {
      v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013536FC();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101353724(v15, self, v14);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101353800();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v12 = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicRotateDidEndWithTracker:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:3408 isFatal:0 description:"We don't know how to rotate a %@", v18];
    }
  }
}

- (id)dynamicResizeDidBegin
{
  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353828();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135383C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013538C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicResizeDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3421 isFatal:0 description:"resize begins without being in dynamic operation"];
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];

  v7 = [(CRLCanvasRep *)self layout];
  [v7 beginResize];

  v8 = [(CRLCanvasRep *)self layout];

  return v8;
}

- (BOOL)isBeingResized
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 layoutState] == 4;

  return v3;
}

- (NSString)actionStringForResize
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Resize" value:0 table:@"UndoStrings"];

  return v3;
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v8 = a3;
  v4 = [v8 rep];
  if ([v4 willHandleResizingLayoutForRep:self])
  {
    v5 = [v8 rep];

    if (v5 != self)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [v8 resizingLayoutForRep:self];
  [v6 takeSizeFromTracker:v8];

LABEL_6:
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = [(CRLCanvasRep *)self layout];
  [v4 endResize];

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = sub_100014370(v7, v6);

  if (v8)
  {
    v9 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v8 geometry:v5];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013538EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353900();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353988();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasRep newCommandToApplyGeometry:toInfo:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:3463 isFatal:0 description:"Can't create CRLCommandSetInfoGeometry without a boardItem."];

    v9 = 0;
  }

  return v9;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  v4 = a3;
  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013539B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013539C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353A4C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicFreeTransformDidBeginWithTracker:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:3480 isFatal:0 description:"free transform begins without being in dynamic operation"];
  }

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];

  v9 = [(CRLCanvasRep *)self layout];
  [v9 beginFreeTransformWithTracker:v4];
}

- (BOOL)isBeingFreeTransformed
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 layoutState] == 5;

  return v3;
}

- (BOOL)isBeingFreeTransformDragged
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLCanvasRep *)self layout];
    v4 = [v3 freeTransformState] & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isBeingFreeTransformRotated
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLCanvasRep *)self layout];
    v4 = ([v3 freeTransformState] >> 1) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isBeingFreeTransformResized
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLCanvasRep *)self layout];
    v4 = ([v3 freeTransformState] >> 2) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)inFreeTransformRotateResizeMode
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLCanvasRep *)self layout];
    v4 = ([v3 freeTransformState] >> 3) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)actionStringForFreeTransform
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Free Transform" value:0 table:@"UndoStrings"];

  return v3;
}

- (void)dynamicallyFreeTransformingWithTracker:(id)a3
{
  v8 = a3;
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v8 selectedRepForLayout:v4];

  if (v5 && (v5 == self || ![(CRLCanvasRep *)v5 willHandleFreeTransformingLayoutForRep:self]))
  {
    v6 = [(CRLCanvasRep *)self layout];
    [v6 takeFreeTransformFromTracker:v8];
  }

  if ([(CRLCanvasRep *)self isBeingFreeTransformResized]|| [(CRLCanvasRep *)self isBeingFreeTransformRotated])
  {
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    [WeakRetained canvasInvalidatedForRep:self];
  }
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4 = [(CRLCanvasRep *)self layout];
  [v4 endFreeTransform];

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v5 = [(CRLCanvasRep *)self p_isNotSelectableDueToUnknownContent:a4];
  if (v5)
  {
    [(CRLCanvasRep *)self p_showAlertForGroupWithUnknownContent];
  }

  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v6 editingDisabled])
  {
    v7 = [(CRLCanvasRep *)self hyperlinkRegions];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v6 layerHost];
      v10 = [v9 asiOSCVC];
      LOBYTE(v5) = [v10 allowOpenLinkOnSingleTapForRepWhenEditingDisabled:self];
    }
  }

  return v5;
}

- (BOOL)shouldLayoutTilingLayer:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 shouldLayoutTilingLayer:v4];

  return v6;
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v5 visibleBoundsForTilingLayer:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)processChangedProperty:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 == 6)
    {
      [(CRLCanvasRep *)self invalidateKnobPositions];
    }

    else
    {
      if (a3 != 7)
      {
LABEL_24:
        if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 6)
        {
          if (a3 != 9)
          {
            return;
          }

          goto LABEL_5;
        }

        goto LABEL_20;
      }

      [(CRLCanvasRep *)self invalidateKnobs];
    }

    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v4 invalidateCollaboratorHUDControllers];

LABEL_20:
    v5 = [(CRLCanvasRep *)self ancestorRepForDrawingIntoLayer];

    if (v5)
    {

      [(CRLCanvasRep *)self setNeedsDisplay];
    }

    return;
  }

  switch(a3)
  {
    case 8uLL:

      [(CRLCanvasRep *)self recursivelyPerformSelector:"p_invalidateContentLayers"];
      break;
    case 0xCuLL:
      [(CRLCanvasRep *)self invalidateKnobs];
      [(CRLCanvasRep *)self invalidateSelectionHighlightRenderable];
      if ([(CRLCanvasRep *)self isSelectedIgnoringLocking])
      {
        v6 = [(CRLCanvasRep *)self interactiveCanvasController];
        [v6 updateMultiselectResizeInfoIfNeeded];
      }

      break;
    case 0xDuLL:
LABEL_5:

      [(CRLCanvasRep *)self invalidateKnobs];
      return;
    default:
      goto LABEL_24;
  }
}

- (void)prepareForPrintingWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (NSArray)additionalRenderablesUnderRenderable
{
  v3 = +[NSMutableArray array];
  if (self->mShadowRenderable && [(CRLCanvasRep *)self shouldShowShadow])
  {
    [v3 addObject:self->mShadowRenderable];
  }

  return v3;
}

- (NSArray)additionalRenderablesToFadeDuringZoom
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->mKnobs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 shouldDisplayDirectlyOverRep] && objc_msgSend(v9, "wantsToFadeDuringZoom"))
        {
          v10 = [v9 renderable];
          [v3 addObject:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)i_additionalRenderablesOverRenderableIncludingKnobs
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLCanvasRep *)self additionalRenderablesOverRenderable];
  [v3 addObjectsFromArray:v4];

  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLCanvasRep *)self p_addRenderablesForKnobsToArray:v3 withDelegate:v5 isOverlay:0];

  return v6;
}

- (NSArray)allRenderables
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 renderableForRep:self];
  [v3 crl_addNonNilObject:v5];

  v6 = [(CRLCanvasRep *)self i_additionalRenderablesOverRenderableIncludingKnobs];
  [v3 addObjectsFromArray:v6];

  v7 = [(CRLCanvasRep *)self additionalRenderablesUnderRenderable];
  [v3 addObjectsFromArray:v7];

  v8 = [(CRLCanvasRep *)self overlayRenderables];
  [v3 addObjectsFromArray:v8];

  return v3;
}

- (NSArray)allPlatformViews
{
  v3 = objc_opt_new();
  v4 = [(CRLCanvasRep *)self contentPlatformView];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self contentPlatformView];
    [v3 addObject:v5];
  }

  v6 = [(CRLCanvasRep *)self additionalPlatformViewOverRenderable];

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self additionalPlatformViewOverRenderable];
    [v3 addObject:v7];
  }

  v8 = [(CRLCanvasRep *)self additionalPlatformViewUnderRenderable];

  if (v8)
  {
    v9 = [(CRLCanvasRep *)self additionalPlatformViewUnderRenderable];
    [v3 addObject:v9];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(CRLCanvasRep *)self childReps];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) allPlatformViews];
        [v3 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v3 copy];

  return v16;
}

- (CGRect)rectToClipChildRepRenderables
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)shouldSuppressFontSmoothing
{
  v2 = [(CRLCanvasRep *)self canvas];
  v3 = [v2 canvasController];

  if (v3)
  {
    v4 = [v3 shouldSuppressFontSmoothing];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4
{
  v5 = [(CRLCanvasRep *)self repForSelecting:a3.x];
  v6 = [v5 isSelected];

  if (a4 == 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isLocked
{
  v2 = [(CRLCanvasRep *)self info];
  v3 = sub_10012602C(v2);

  return v3;
}

- (CGRect)targetRectForEditMenu
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)handleContextMenuClickAtPoint:(CGPoint)a3 withPlatformObject:(id)a4 onKnob:(id)a5
{
  v6 = [(CRLCanvasRep *)self repForSelecting:a4];
  v7 = v6;
  if (v6 && ([v6 isSelectedIgnoringLocking] & 1) == 0)
  {
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    v9 = [v8 canvasEditor];

    v10 = [v7 info];
    v11 = [v9 selectionPathWithInfo:v10];
    v12 = [(CRLCanvasRep *)self interactiveCanvasController];
    v13 = [v12 editorController];
    [v13 setSelectionPath:v11];
  }

  return v7 != 0;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLCanvasRep *)self layout];
  v6 = [v5 infoGeometryBeforeDynamicOperation];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(CRLCanvasRep *)self info];
    v8 = [v9 geometry];
  }

  v10 = *&a3->c;
  v13[0] = *&a3->a;
  v13[1] = v10;
  v13[2] = *&a3->tx;
  v11 = [v8 geometryByAppendingTransform:v13];

  return v11;
}

- (CGPoint)centerForRotation
{
  v2 = [(CRLCanvasRep *)self layout];
  [v2 centerForRotation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4
{
  if (!self->mShowDragAndDropHighlight)
  {
    self->mShowDragAndDropHighlight = 1;
    v6 = [(CRLCanvasRep *)self interactiveCanvasController:a4];
    [v6 invalidateOverlayLayersForRep:self];
  }
}

- (void)hideDragAndDropUI
{
  if (self->mShowDragAndDropHighlight)
  {
    self->mShowDragAndDropHighlight = 0;
    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
    self->mDragAndDropHighlightRenderable = 0;

    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v5 invalidateOverlayLayersForRep:self];
  }
}

- (CGPath)newHighlightPathInScaledSpace
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v5 = v4;

  [(CRLCanvasRep *)self boundsForHighlightLayer];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  memset(&transform, 0, sizeof(transform));
  [(CRLCanvasRep *)self transformForHighlightLayer];
  CGAffineTransformMakeScale(&t2, v5, v5);
  v15 = transform;
  CGAffineTransformConcat(&v17, &v15, &t2);
  transform = v17;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  return CGPathCreateWithRect(v19, &transform);
}

- (CRLCanvasRenderable)dragAndDropHighlightRenderable
{
  mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  if (!mDragAndDropHighlightRenderable)
  {
    v4 = [(CRLCanvasRep *)self p_highlightRenderable];
    v5 = self->mDragAndDropHighlightRenderable;
    self->mDragAndDropHighlightRenderable = v4;

    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  }

  return mDragAndDropHighlightRenderable;
}

- (id)p_highlightRenderable
{
  v3 = [(CRLCanvasRep *)self newHighlightPathInScaledSpace];
  v4 = [CRLDragAndDropCanvasHighlightDecorator alloc];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLDragAndDropCanvasHighlightDecorator *)v4 initWithInteractiveCanvasController:v5 highlightPath:v3];

  CFRelease(v3);
  v7 = [(CRLDragAndDropCanvasHighlightDecorator *)v6 dragAndDropHighlightRenderable];

  return v7;
}

- (NSArray)hyperlinkRegions
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  if (v5 && ([v5 hyperlinkURL], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "hyperlinkURL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "absoluteString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v7, v10))
  {
    v11 = objc_opt_class();
    v12 = [(CRLCanvasRep *)self layout];
    v13 = sub_100014370(v11, v12);

    if (v13)
    {
      v14 = [v13 i_wrapPath];
      v15 = [CRLHyperlinkRegion alloc];
      v16 = [v5 hyperlinkURL];
      v17 = [(CRLHyperlinkRegion *)v15 initWithURL:v16 bezierPath:v14];

      v18 = [NSArray arrayWithObject:v17];
    }

    else
    {
      v18 = &__NSArray0__struct;
    }
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  return v18;
}

- (BOOL)containsUnknownContent
{
  v2 = [(CRLCanvasRep *)self info];
  v3 = [v2 isSupported];

  return v3 ^ 1;
}

- (CGPoint)p_centerForPreviewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = sub_100120414(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  if (width < 50.0 && height < 50.0)
  {
    v6 = v6 + (50.0 - height) * -0.5;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3
{
  v4 = [NSMutableArray array:a3.x];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLCanvasRep *)self repForSelecting];
  v7 = objc_opt_class();
  v8 = [v6 info];
  v9 = sub_100014370(v7, v8);

  if ([v9 allowedToBeDragAndDropped])
  {
    v56 = self;
    if ([v6 isSelected] && (objc_msgSend(v5, "canvasEditor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canvasEditorCanCopyWithSender:", 0), v10, v11))
    {
      v57 = v6;
      v59 = v4;
      v12 = [v5 selectionModelTranslator];
      v13 = [v5 editorController];
      v14 = [v13 selectionPath];
      v15 = [v12 boardItemsForSelectionPath:v14];

      v16 = +[NSMutableSet set];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v73;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v73 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v72 + 1) + 8 * i);
            if (([v9 shouldPreventDragAndDropWithItem:v22] & 1) == 0)
            {
              [v16 crl_addNonNilObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v19);
      }

      v23 = [v16 copy];
      v6 = v57;
      v4 = v59;
    }

    else
    {
      v24 = [v5 layerHost];
      v25 = [v24 asiOSCVC];
      v26 = [v25 delegate];

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v26 currentDocumentMode], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "allowsDragOnUnselectedReps"), v27, v28) && (objc_msgSend(v9, "shouldBeIgnoredWhenCopying") & 1) == 0)
      {
        v23 = [NSSet setWithObject:v9];
      }

      else
      {
        v23 = 0;
      }
    }

    if ([v23 count])
    {
      v60 = v4;
      v61 = objc_alloc_init(CRLItemProviderItemWriter);
      v29 = [v5 topLevelZOrderedSiblingsOfInfos:v23];
      v54 = v23;
      v30 = [v29 crl_arrayWithObjectsInSet:v23];

      v31 = +[NSMutableArray array];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v30;
      v32 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v69;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v68 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
              if ([v37 allowedToBeDragAndDropped])
              {
                [v31 addObject:v37];
              }
            }
          }

          v33 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v33);
      }

      v55 = v9;
      v58 = v6;

      v38 = +[NSMutableArray array];
      v39 = +[UIColor clearColor];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v40 = v31;
      v41 = [v40 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        do
        {
          for (k = 0; k != v42; k = k + 1)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = [v5 repForInfo:*(*(&v64 + 1) + 8 * k)];
            v46 = [v45 unscaledPathToIncludeForSystemPreviewOutline];
            if (v46)
            {
              [v38 addObject:v46];
            }

            if ([v40 count] == 1)
            {
              v47 = [v45 backgroundColorForDragPreview];

              v39 = v47;
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v42);
      }

      v63 = 0;
      v48 = [(CRLItemProviderItemWriter *)v61 createItemProviderWithCopyOfBoardItems:v40 fromInteractiveCanvasController:v5 outCopiedBoardItems:&v63];
      v49 = v63;
      if (v48)
      {
        v4 = [(CRLCanvasRep *)v56 dragItemsForBeginningDragWithItemProvider:v48 deepCopiedBoardItems:v49 withUnscaledTracedPaths:v38 previewBackgroundColor:v39 localObjectProvider:0];
        v6 = v58;
        v50 = v60;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101353A74();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101353A9C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101353B38();
        }

        v6 = v58;
        v51 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v51);
        }

        v50 = [NSString stringWithUTF8String:"[CRLCanvasRep dragItemsForBeginningDragAtPoint:]"];
        v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v50 file:v52 lineNumber:4366 isFatal:0 description:"invalid nil value for '%{public}s'", "itemProvider"];

        v4 = v60;
      }

      v23 = v54;
      v9 = v55;
    }
  }

  return v4;
}

- (id)dragItemsForBeginningDragWithItemProvider:(id)a3 deepCopiedBoardItems:(id)a4 withUnscaledTracedPaths:(id)a5 previewBackgroundColor:(id)a6 localObjectProvider:(id)a7
{
  v47 = a3;
  v12 = a4;
  v46 = a5;
  v44 = a6;
  v45 = a7;
  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  v14 = [(CRLCanvasRep *)self p_newImagerToGenerateSystemPreviewOfBoardItems:v12];
  [v14 unscaledClipRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v14 newImage];
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_10031C78C;
  v68[4] = sub_10031C79C;
  v69 = 0;
  v24 = dispatch_semaphore_create(0);
  if (v23)
  {
    v25 = objc_alloc_init(UIView);
    v26 = [v25 layer];
    [v26 setContents:v23];

    v27 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v27 viewScale];
    [v25 setFrame:{sub_10011FFD8(v16, v18, v20, v22, v28)}];

    v29 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100324878;
    block[3] = &unk_1018560F8;
    v57 = v46;
    v58 = v12;
    v62 = v68;
    v63 = v16;
    v64 = v18;
    v65 = v20;
    v66 = v22;
    v59 = v13;
    v67 = v23;
    v60 = v14;
    v61 = v24;
    dispatch_async(v29, block);

    v30 = v57;
  }

  else
  {
    v31 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353B60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353B88(v12, v31);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353C18();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v33, buf, v31, v32);
    }

    v30 = [NSString stringWithUTF8String:"[CRLCanvasRep dragItemsForBeginningDragWithItemProvider:deepCopiedBoardItems:withUnscaledTracedPaths:previewBackgroundColor:localObjectProvider:]"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v34 lineNumber:4430 isFatal:0 description:"Unable to make a preview drag image for infos %@", v12, v44];

    v25 = 0;
  }

  v35 = [CRLiOSCanvasDragItem alloc];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100324AA0;
  v48[3] = &unk_101856160;
  v36 = v25;
  v49 = v36;
  v37 = v24;
  v50 = v37;
  v55 = v68;
  v38 = v13;
  v51 = v38;
  v52 = self;
  v39 = v44;
  v53 = v39;
  v40 = v45;
  v54 = v40;
  v41 = [(CRLiOSCanvasDragItem *)v35 initWithItemProvider:v47 previewGeneratingBlock:v48];
  v70 = v41;
  v42 = [NSArray arrayWithObjects:&v70 count:1];

  _Block_object_dispose(v68, 8);

  return v42;
}

- (id)p_newImagerToGenerateSystemPreviewOfBoardItems:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLCanvasRep *)self canvas];
  v7 = [CRLCanvasImager alloc];
  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  v9 = [v8 board];
  v10 = [(CRLCanvasImager *)v7 initWithBoard:v9];

  [(CRLCanvasImager *)v10 setInfos:v4];
  [v5 viewScale];
  [(CRLCanvasImager *)v10 setViewScale:?];
  v11 = [(CRLCanvasImager *)v10 canvas];
  [v11 setSuppressesShadowsAndReflections:1];
  [v11 setShouldRenderInvisibleContentForNonInteractiveCanvas:1];
  [v6 viewScale];
  [v11 setI_viewScaleForAudioObjectsInNonInteractiveCanvas:?];
  [v6 contentsScale];
  [(CRLCanvasImager *)v10 setContentsScale:?];
  v12 = sub_10050CFD8();
  v14 = v13;
  [(CRLCanvasImager *)v10 actualScaledClipRect];
  v18 = v17;
  v20 = v19;
  v21 = v15;
  if (v16 > v14 || (v22 = v16, v14 = v16, v15 > v12))
  {
    if (v12 < v15)
    {
      v21 = v12;
    }

    v22 = v14;
  }

  v23 = [(CRLCanvasImager *)v10 canvas];
  [v23 viewScale];
  v25 = sub_10011FFD8(v18, v20, v21, v22, 1.0 / v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(CRLCanvasImager *)v10 setUnscaledClipRect:v25, v27, v29, v31];

  return v10;
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 i_wrapPath];
  v5 = [v4 copy];

  if (!v5 || [v5 isEmpty])
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v6 = [CRLBezierPath bezierPathWithRect:?];

    v5 = v6;
  }

  if (v3)
  {
    [v3 transformInRoot];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v5 transformUsingAffineTransform:v10];
  v7 = [v5 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:0];
  v8 = [CRLBezierPath uniteBezierPaths:v7];

  return v8;
}

- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)a3 withTouchType:(int64_t)a4
{
  v5 = [(CRLCanvasRep *)self repForDragging:a4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CRLCanvasRep *)self repForSelecting];
    v6 = [v7 demandsExclusiveSelection];
  }

  return v6;
}

- (CRLCanvas)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);

  return WeakRetained;
}

- (CRLCanvasRep)parentRep
{
  WeakRetained = objc_loadWeakRetained(&self->mParentRep);

  return WeakRetained;
}

- (CRLCanvasKnobTracker)currentKnobTracker
{
  WeakRetained = objc_loadWeakRetained(&self->mKnobTracker);

  return WeakRetained;
}

- (id)getConnectionLineLayoutToCopyStyleForNewConnectionLine
{
  v2 = self;
  v3 = sub_1008A45E4();

  return v3;
}

- (void)releaseFromAnchoringTableIfNeededAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1008A5258(x, y);
}

- (void)commitTableAnchoringChangesAt:(CGPoint)a3 dueToResizing:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v7 = self;
  sub_1008A5F54(v4, x, y);
}

@end