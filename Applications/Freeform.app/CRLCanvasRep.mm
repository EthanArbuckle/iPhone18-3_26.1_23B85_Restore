@interface CRLCanvasRep
- (BOOL)allowDragAcrossPageBoundaries;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)containsPoint:(CGPoint)point withSlop:(CGSize)slop;
- (BOOL)containsUnknownContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)everAllowedToBeSelectedAsADrawable;
- (BOOL)forcesPlacementOnBottom;
- (BOOL)forcesPlacementOnTop;
- (BOOL)handleContextMenuClickAtPoint:(CGPoint)point withPlatformObject:(id)object onKnob:(id)knob;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (BOOL)i_shouldCountAsClosestSmallRepForSizeLimit:(double)limit;
- (BOOL)inFreeTransformRotateResizeMode;
- (BOOL)intersectsUnscaledRect:(CGRect)rect;
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
- (BOOL)shouldLayoutTilingLayer:(id)layer;
- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)point withTouchType:(int64_t)type;
- (BOOL)shouldShowCollaboratorCursorHighlight;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldSuppressFontSmoothing;
- (CGAffineTransform)i_layerTransform;
- (CGAffineTransform)knobPositionTransformForInspectorResize;
- (CGAffineTransform)layerTransformInRootForZeroAnchor;
- (CGAffineTransform)p_layerTransformForRotationFromPureTransformInRoot:(SEL)root toPureTransformInRoot:(CGAffineTransform *)inRoot;
- (CGAffineTransform)parentLayerInverseTransformInRootForZeroAnchor;
- (CGAffineTransform)transformForCollaboratorCursorRenderable;
- (CGAffineTransform)transformForHighlightLayer;
- (CGAffineTransform)transformToConvertNaturalToLayerRelative;
- (CGImage)newShadowImageWithSize:(CGSize)size shadow:(id)shadow drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children;
- (CGPath)newHighlightPathInScaledSpace;
- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)rect;
- (CGPoint)centerForRotation;
- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)relative;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)relative;
- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)i_dragOffset;
- (CGPoint)layerOffsetForDragging;
- (CGPoint)p_centerForPreviewFrame:(CGRect)frame;
- (CGPoint)p_transformNaturalPoint:(CGPoint)point inUnscaledSpaceWithTransformFromBlock:(id)block;
- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds;
- (CGPoint)unscaledGuidePosition;
- (CGRect)boundsForStandardKnobs;
- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)relative;
- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas;
- (CGRect)convertNaturalRectToLayerRelative:(CGRect)relative;
- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas;
- (CGRect)frameInScreenSpace;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)i_clipRectRecursive;
- (CGRect)i_layerFrameInScaledCanvasIgnoringDragging;
- (CGRect)i_originalLayerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)naturalBounds;
- (CGRect)rectToClipChildRepRenderables;
- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)offset;
- (CGRect)targetRectForEditMenu;
- (CGRect)trackingBoundsForStandardKnobs;
- (CGRect)visibleBoundsForTilingLayer:(id)layer;
- (CRLCanvas)canvas;
- (CRLCanvasElementInfo)info;
- (CRLCanvasKnob)knobForInspectorResize;
- (CRLCanvasKnobTracker)currentKnobTracker;
- (CRLCanvasRenderable)collaboratorCursorRenderable;
- (CRLCanvasRenderable)dragAndDropHighlightRenderable;
- (CRLCanvasRenderable)selectionHighlightRenderable;
- (CRLCanvasRep)ancestorRepForDrawingIntoLayer;
- (CRLCanvasRep)initWithLayout:(id)layout canvas:(id)canvas;
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
- (id)additionalRepsForDraggingConnectionLine:(id)line;
- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object;
- (id)description;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point;
- (id)dragItemsForBeginningDragWithItemProvider:(id)provider deepCopiedBoardItems:(id)items withUnscaledTracedPaths:(id)paths previewBackgroundColor:(id)color localObjectProvider:(id)objectProvider;
- (id)dynamicResizeDidBegin;
- (id)getConnectionLineLayoutToCopyStyleForNewConnectionLine;
- (id)hitRep:(CGPoint)rep withPrecision:(BOOL)precision passingTest:(id)test;
- (id)hitRepChrome:(CGPoint)chrome passingTest:(id)test;
- (id)hitReps:(CGPoint)reps withSlop:(CGSize)slop;
- (id)hitReps:(CGPoint)reps withSlopBlock:(id)block;
- (id)i_additionalRenderablesOverRenderableIncludingKnobs;
- (id)i_smallHitRepNearPoint:(CGPoint)point smallRepOutset:(double)outset forShortestDistance:(double *)distance unscaledPointTransformForRep:(id)rep passingTest:(id)test;
- (id)knobForTag:(unint64_t)tag;
- (id)makeSelectionHighlightRenderable;
- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info;
- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag;
- (id)newTrackerForKnob:(id)knob;
- (id)p_addRenderablesForKnobsToArray:(id)array withDelegate:(id)delegate isOverlay:(BOOL)overlay;
- (id)p_connectedReps;
- (id)p_currentCollaboratorPresence;
- (id)p_highlightRenderable;
- (id)p_newImagerToGenerateSystemPreviewOfBoardItems:(id)items;
- (id)p_repForDraggingIgnoringTopLevelEditing:(BOOL)editing;
- (id)p_repForSelectingIgnoringTopLevelEditing:(BOOL)editing ignoringInlineEditing:(BOOL)inlineEditing;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)array;
- (void)addLockedKnobsToArray:(id)array;
- (void)addSelectionKnobsToArray:(id)array;
- (void)antiAliasDefeatLayerFrame:(CGRect *)frame forTransform:(CGAffineTransform *)transform;
- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)transform forFrame:(CGRect)frame;
- (void)becameNotSelectable;
- (void)becameNotSelected;
- (void)becameSelectable;
- (void)becameSelected;
- (void)collaboratorCursorChangedToSelectionPath:(id)path;
- (void)commitTableAnchoringChangesAt:(CGPoint)at dueToResizing:(BOOL)resizing;
- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform;
- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform basedOnLayoutGeometry:(id)geometry;
- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform basedOnTransform:(CGAffineTransform *)onTransform andSize:(CGSize)size;
- (void)dealloc;
- (void)didAddChildRep:(id)rep;
- (void)didDrawInLayer:(id)layer context:(CGContext *)context;
- (void)dynamicDragDidBegin;
- (void)dynamicDragDidEndAt:(CGPoint)at;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)dynamicRotateDidBegin;
- (void)dynamicRotateDidEndWithTracker:(id)tracker;
- (void)dynamicallyFreeTransformingWithTracker:(id)tracker;
- (void)dynamicallyResizingWithTracker:(id)tracker;
- (void)dynamicallyRotatingWithTracker:(id)tracker;
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
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)p_didUpdateEffectRenderablesForRenderable:(id)renderable;
- (void)p_dynamicDragDidBegin;
- (void)p_dynamicOperationDidBeginWithRealTimeCommands:(id)commands;
- (void)p_dynamicOperationDidEnd;
- (void)p_dynamicRotateDidBegin;
- (void)p_dynamicRotateDidEnd;
- (void)p_invalidateChildKnobPositionsForEndingDynamicOperation;
- (void)p_invalidateContentLayers;
- (void)p_positionShadowRenderable:(id)renderable forShadow:(id)shadow withNaturalBounds:(CGRect)bounds;
- (void)p_setChildReps:(id)reps;
- (void)p_setNeedsDisplayForParentChangeIfNeeded;
- (void)p_showAlertForGroupWithUnknownContent;
- (void)p_toggleHyperlinkUIVisibility;
- (void)p_willUpdateEffectRenderablesForRenderable:(id)renderable;
- (void)prepareForPrintingWithCompletionHandler:(id)handler;
- (void)processChangedProperty:(unint64_t)property;
- (void)processChanges:(id)changes;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)recursivelyPerformSelector:(SEL)selector;
- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object;
- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object;
- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object withObject:(id)withObject;
- (void)releaseFromAnchoringTableIfNeededAt:(CGPoint)at;
- (void)removeChildRep:(id)rep;
- (void)screenScaleDidChange;
- (void)selectChildRep:(id)rep extendingSelection:(BOOL)selection;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setParentRep:(id)rep;
- (void)setupForDrawingInLayer:(id)layer context:(CGContext *)context;
- (void)turnKnobsOn;
- (void)updateChildrenFromLayout;
- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)updateRenderableGeometryFromLayout:(id)layout;
- (void)updateSelectionHighlightRenderable:(id)renderable;
- (void)viewScaleDidChange;
@end

@implementation CRLCanvasRep

- (CRLCanvasRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  if (!layoutCopy)
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
    if (layoutCopy)
    {
      objc_storeStrong(&v12->mLayout, layout);
      v14 = objc_storeWeak(&v13->mCanvas, canvasCopy);
      [canvasCopy i_registerRep:v13];

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
  info = [(CRLCanvasRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  info2 = [(CRLCanvasRep *)self info];
  layout = [(CRLCanvasRep *)self layout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  layout2 = [(CRLCanvasRep *)self layout];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  v13 = NSStringFromCGRect(v17);
  v14 = [NSString stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v4, self, v7, info2, v11, layout2, v13];

  return v14;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  canvasController = [WeakRetained canvasController];

  if (!canvasController)
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

  return canvasController;
}

- (CRLCanvasElementInfo)info
{
  layout = [(CRLCanvasRep *)self layout];
  info = [layout info];

  return info;
}

- (_TtC8Freeform20CRLCommandController)commandController
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  return commandController;
}

- (id)p_connectedReps
{
  layout = [(CRLCanvasRep *)self layout];
  connectedLayouts = [layout connectedLayouts];

  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = connectedLayouts;
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
        canvas = [(CRLCanvasRep *)self canvas];
        v13 = [canvas repForLayout:v11];

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
    canvas = [(CRLCanvasRep *)self canvas];
    isCanvasInteractive = [canvas isCanvasInteractive];

    if (isCanvasInteractive)
    {
      ancestorRepForDrawingIntoLayer = [(CRLCanvasRep *)self ancestorRepForDrawingIntoLayer];
      if (ancestorRepForDrawingIntoLayer)
      {
        v8 = ancestorRepForDrawingIntoLayer;
        [(CRLCanvasRep *)self setNeedsDisplay];
        ancestorRepForDrawingIntoLayer = v8;
      }
    }
  }
}

- (void)setParentRep:(id)rep
{
  obj = rep;
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

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented
{
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:implemented];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v6 = [childReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelectorIfImplemented:implemented];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:implemented withObject:objectCopy];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v8 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v12 + 1) + 8 * v11) recursivelyPerformSelectorIfImplemented:implemented withObject:objectCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)recursivelyPerformSelectorIfImplemented:(SEL)implemented withObject:(id)object withObject:(id)withObject
{
  objectCopy = object;
  withObjectCopy = withObject;
  if (objc_opt_respondsToSelector())
  {
    [(CRLCanvasRep *)self performSelector:implemented withObject:objectCopy withObject:withObjectCopy];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v11 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v15 + 1) + 8 * v14) recursivelyPerformSelectorIfImplemented:implemented withObject:objectCopy withObject:withObjectCopy];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector
{
  [(CRLCanvasRep *)self performSelector:?];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v6 = [childReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelector:selector];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object
{
  objectCopy = object;
  [(CRLCanvasRep *)self performSelector:selector withObject:objectCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v8 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v12 + 1) + 8 * v11) recursivelyPerformSelector:selector withObject:objectCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)recursivelyPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  objectCopy = object;
  withObjectCopy = withObject;
  [(CRLCanvasRep *)self performSelector:selector withObject:objectCopy withObject:withObjectCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v11 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [*(*(&v15 + 1) + 8 * v14) recursivelyPerformSelector:selector withObject:objectCopy withObject:withObjectCopy];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    [(CRLCanvasRep *)self i_invalidateSelectionHighlightRenderable];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    i_interactiveCanvasLayerHelper = [interactiveCanvasController i_interactiveCanvasLayerHelper];
    [i_interactiveCanvasLayerHelper repWasRemoved:self];
  }

  [NSRunLoop cancelPreviousPerformRequestsWithTarget:self];
  self->mHasBeenRemoved = 1;
}

- (CRLCanvasRep)parentRepToPerformSelecting
{
  parentRep = [(CRLCanvasRep *)self parentRep];
  if (parentRep)
  {
    do
    {
      if ([parentRep canSelectChildRep:self])
      {
        break;
      }

      v3ParentRep = [parentRep parentRep];

      parentRep = v3ParentRep;
    }

    while (v3ParentRep);
  }

  return parentRep;
}

- (void)selectChildRep:(id)rep extendingSelection:(BOOL)selection
{
  [CRLAssertionHandler _atomicIncrementAssertCount:rep];
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
  repForSelecting = [(CRLCanvasRep *)self repForSelecting];
  isSelected = [repForSelecting isSelected];

  if (isSelected)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    allRepsOrdered = [WeakRetained allRepsOrdered];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = allRepsOrdered;
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

          repForSelecting2 = [*(*(&v19 + 1) + 8 * i) repForSelecting];
          if ([repForSelecting2 isSelected])
          {
            canBeOccluded = [(CRLCanvasRep *)v14 canBeOccluded];

            if (canBeOccluded)
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

      parentRep = [WeakRetained parentRep];

      WeakRetained = parentRep;
    }

    while (parentRep);
  }

  return WeakRetained;
}

- (CGRect)naturalBounds
{
  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  [geometry size];
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

- (CGRect)convertNaturalRectToUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  layout = [(CRLCanvasRep *)self layout];
  [layout convertNaturalRectToUnscaledCanvas:{x, y, width, height}];
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

- (CGRect)convertNaturalRectFromUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  layout = [(CRLCanvasRep *)self layout];
  [layout convertNaturalRectFromUnscaledCanvas:{x, y, width, height}];
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

- (CGPath)newPathInScaledCanvasFromNaturalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  layout = [(CRLCanvasRep *)self layout];
  v10 = layout;
  if (layout)
  {
    [layout transformInRoot];
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

- (CGPoint)convertNaturalPointToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  layout = [(CRLCanvasRep *)self layout];
  [layout convertNaturalPointToUnscaledCanvas:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  layout = [(CRLCanvasRep *)self layout];
  [layout convertNaturalPointFromUnscaledCanvas:{x, y}];
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
  layout = [(CRLCanvasRep *)self layout];
  [layout frameInRoot];
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
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  canvasView = [interactiveCanvasController canvasView];
  [canvasView convertRect:0 toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  window = [canvasView window];
  [window convertRect:0 toWindow:{v14, v16, v18, v20}];
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
  layout = [(CRLCanvasRep *)self layout];
  parentAutosizes = [layout parentAutosizes];

  if ([(CRLCanvasRep *)self isBeingRotated])
  {
    if (parentAutosizes && (-[CRLCanvasRep parentRep](self, "parentRep"), layout = objc_claimAutoreleasedReturnValue(), ([layout isBeingRotated] & 1) == 0))
    {
    }

    else
    {
      layout2 = [(CRLCanvasRep *)self layout];
      wantsNormalLayoutDuringDynamicRotation = [layout2 wantsNormalLayoutDuringDynamicRotation];

      if (parentAutosizes)
      {
      }

      if ((wantsNormalLayoutDuringDynamicRotation & 1) == 0)
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
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
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
    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 contentsScale];
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
  layout = [(CRLCanvasRep *)self layout];
  parentAutosizes = [layout parentAutosizes];

  if ((parentAutosizes & 1) == 0)
  {
    if ([(CRLCanvasRep *)self isBeingRotated])
    {
      layout2 = [(CRLCanvasRep *)self layout];
      wantsNormalLayoutDuringDynamicRotation = [layout2 wantsNormalLayoutDuringDynamicRotation];

      if ((wantsNormalLayoutDuringDynamicRotation & 1) == 0)
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

  directlyManagesLayerContent = [(CRLCanvasRep *)self directlyManagesLayerContent];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [(CRLCanvasRep *)self i_baseFrameInUnscaledCanvasForPositioningLayer];
  [WeakRetained convertUnscaledToBoundsRect:?];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (directlyManagesLayerContent)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
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
  parentRep = [(CRLCanvasRep *)self parentRep];

  if (parentRep)
  {
    parentRep2 = [(CRLCanvasRep *)self parentRep];
    [parentRep2 layerFrameInScaledCanvas];
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
  layout = [(CRLCanvasRep *)self layout];
  parent = [layout parent];
  v6 = sub_100014370(v3, parent);

  if (v6)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [interactiveCanvasController repForLayout:v6];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isBeingDragged])
  {
    selfCopy = v8;
    [(CRLCanvasRep *)selfCopy layerFrameInScaledCanvas];
  }

  else
  {
    selfCopy = self;
    [(CRLCanvasRep *)selfCopy i_layerFrameInScaledCanvasIgnoringDragging];
  }

  v12 = v10;
  v13 = v11;
  [(CRLCanvasRep *)selfCopy i_originalLayerFrameInScaledCanvas];
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
  layout = [(CRLCanvasRep *)self layout];
  v6 = layout;
  if (layout)
  {
    [layout transformInRoot];
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

- (CGPoint)convertNaturalPointToLayerRelative:(CGPoint)relative
{
  y = relative.y;
  x = relative.x;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertNaturalPointFromLayerRelative:(CGPoint)relative
{
  y = relative.y;
  x = relative.x;
  [(CRLCanvasRep *)self transformToConvertNaturalFromLayerRelative];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)convertNaturalRectToLayerRelative:(CGRect)relative
{
  height = relative.size.height;
  width = relative.size.width;
  y = relative.origin.y;
  x = relative.origin.x;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)convertNaturalRectFromLayerRelative:(CGRect)relative
{
  height = relative.size.height;
  width = relative.size.width;
  y = relative.origin.y;
  x = relative.origin.x;
  [(CRLCanvasRep *)self transformToConvertNaturalFromLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  y = point.y;
  x = point.x;
  [(CRLCanvasRep *)self naturalBounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)containsPoint:(CGPoint)point withSlop:(CGSize)slop
{
  v5 = sub_10011EC70(point.x, point.y, slop.width + slop.width);
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

- (id)hitRep:(CGPoint)rep withPrecision:(BOOL)precision passingTest:(id)test
{
  precisionCopy = precision;
  y = rep.y;
  x = rep.x;
  testCopy = test;
  if ([(CRLCanvasRep *)self shouldHitTestChildrenLikeTopLevelReps])
  {
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    v9 = v8;
    v11 = v10;
    canvas = [(CRLCanvasRep *)self canvas];
    childRepsForHitTesting = [(CRLCanvasRep *)self childRepsForHitTesting];
    [CRLInteractiveCanvasController smallRepOutsetForHitTestingWithPrecision:precisionCopy];
    selfCopy2 = [canvas hitRep:precisionCopy withPrecision:childRepsForHitTesting inTopLevelReps:0 smallRepOutset:testCopy unscaledPointTransformForRep:v9 passingTest:{v11, v14}];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    childRepsForHitTesting2 = [(CRLCanvasRep *)self childRepsForHitTesting];
    canvas = [childRepsForHitTesting2 reverseObjectEnumerator];

    v17 = [canvas countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(canvas);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          layout = [v21 layout];
          geometry = [layout geometry];
          v24 = geometry;
          if (geometry)
          {
            [geometry inverseTransform];
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

          v28 = [v21 hitRep:precisionCopy withPrecision:testCopy passingTest:*&v36];
          if (v28)
          {
            selfCopy2 = v28;
            goto LABEL_16;
          }
        }

        v18 = [canvas countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    selfCopy2 = 0;
  }

LABEL_16:

  if (!selfCopy2)
  {
    if ([(CRLCanvasRep *)self containsPoint:precisionCopy withPrecision:x, y])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v30 = selfCopy;
    v31 = v30;
    if (testCopy && v30)
    {
      selfCopy2 = self;
      if ((testCopy[2](testCopy, v30) & 1) == 0)
      {

        selfCopy2 = 0;
      }
    }

    else
    {
      selfCopy2 = v30;
    }
  }

  return selfCopy2;
}

- (id)hitReps:(CGPoint)reps withSlop:(CGSize)slop
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100315EC8;
  v6[3] = &unk_101855850;
  slopCopy = slop;
  v4 = [(CRLCanvasRep *)self hitReps:v6 withSlopBlock:reps.x, reps.y];

  return v4;
}

- (id)hitReps:(CGPoint)reps withSlopBlock:(id)block
{
  y = reps.y;
  x = reps.x;
  blockCopy = block;
  v6 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  childRepsForHitTesting = [(CRLCanvasRep *)self childRepsForHitTesting];
  reverseObjectEnumerator = [childRepsForHitTesting reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        layout = [v13 layout];
        geometry = [layout geometry];
        v16 = geometry;
        if (geometry)
        {
          [geometry inverseTransform];
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

        v20 = [v13 hitReps:blockCopy withSlopBlock:*&v28];
        if ([v20 count])
        {
          [v6 addObjectsFromArray:v20];
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  if (blockCopy)
  {
    width = blockCopy[2](blockCopy, self);
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

- (id)hitRepChrome:(CGPoint)chrome passingTest:(id)test
{
  y = chrome.y;
  x = chrome.x;
  testCopy = test;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  childRepsForHitTesting = [(CRLCanvasRep *)self childRepsForHitTesting];
  selfCopy = [childRepsForHitTesting reverseObjectEnumerator];

  v8 = [(CRLCanvasRep *)selfCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        layout = [v12 layout];
        geometry = [layout geometry];
        v15 = geometry;
        if (geometry)
        {
          [geometry inverseTransform];
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

        v19 = [v12 hitRepChrome:testCopy passingTest:*&v27];
        if (v19)
        {
          v22 = v19;
          goto LABEL_18;
        }
      }

      v9 = [(CRLCanvasRep *)selfCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([(CRLCanvasRep *)self hitRepChrome:x, y])
  {
    selfCopy = self;
    v20 = 0;
    if (selfCopy)
    {
      if (testCopy)
      {
        v21 = testCopy[2](testCopy, selfCopy);
        v22 = 0;
        v20 = 0;
        if ((v21 & 1) == 0)
        {
LABEL_18:

          v20 = v22;
          selfCopy = v22;
        }
      }
    }
  }

  else
  {
    v20 = 0;
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)i_smallHitRepNearPoint:(CGPoint)point smallRepOutset:(double)outset forShortestDistance:(double *)distance unscaledPointTransformForRep:(id)rep passingTest:(id)test
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  testCopy = test;
  if ([(CRLCanvasRep *)self i_shouldSmallHitRepTestingRecurse])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    selfCopy = self;
    childRepsForHitTesting = [(CRLCanvasRep *)self childRepsForHitTesting];
    reverseObjectEnumerator = [childRepsForHitTesting reverseObjectEnumerator];

    v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v61 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          layout = [v19 layout];
          geometry = [layout geometry];
          v22 = geometry;
          if (geometry)
          {
            [geometry inverseTransform];
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

          *v56 = *distance;
          v26 = [v19 i_smallHitRepNearPoint:v56 smallRepOutset:repCopy forShortestDistance:testCopy unscaledPointTransformForRep:*&v55 passingTest:outset];
          v27 = v26;
          if (v26 && *v56 < *distance)
          {
            v28 = v26;

            *distance = *v56;
            v16 = v28;
          }
        }

        v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    self = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  [(CRLCanvasRep *)self p_transformNaturalPoint:repCopy inUnscaledSpaceWithTransformFromBlock:x, y];
  v30 = v29;
  v32 = v31;
  if (![(CRLCanvasRep *)self i_shouldCountAsClosestSmallRepForSizeLimit:outset])
  {
    LOBYTE(v56[0]) = 0;
    [(CRLCanvasRep *)self shortestDistanceToPoint:v56 countAsHit:v30, v32];
    if (LOBYTE(v56[0]) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v35 = v34;

  [(CRLCanvasRep *)self naturalBounds];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = 0.0;
  v45 = 0.0;
  if (v35 * v38 < outset)
  {
    v45 = -outset / v35;
  }

  if (v35 * v39 < outset)
  {
    v44 = -outset / v35;
  }

  v64 = CGRectInset(*&v36, v45, v44);
  v63.x = v30;
  v63.y = v32;
  if (CGRectContainsPoint(v64, v63))
  {
    v46 = sub_1001200A8(v30, v32, v40, v41, v42, v43);
LABEL_27:
    v47 = v46;
    if (v46 < *distance && (!testCopy || testCopy[2](testCopy, self)))
    {
      *distance = v47;
      selfCopy2 = self;

      v16 = selfCopy2;
    }
  }

LABEL_31:

  return v16;
}

- (CGPoint)p_transformNaturalPoint:(CGPoint)point inUnscaledSpaceWithTransformFromBlock:(id)block
{
  y = point.y;
  x = point.x;
  if (block)
  {
    blockCopy = block;
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    v14 = v9;
    v15 = v8;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    blockCopy[2](&v16, blockCopy, self);

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

- (BOOL)i_shouldCountAsClosestSmallRepForSizeLimit:(double)limit
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
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v14 = v13 * v11 < limit;

  return v14;
}

- (BOOL)intersectsUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  [geometry size];
  v9 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v9 transformUsingAffineTransform:v12];
  v10 = [v9 intersectsRect:1 hasFill:{x, y, width, height}];

  return v10;
}

- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object
{
  knobCopy = knob;
  objectCopy = object;
  if (knobCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && (sub_100345928([knobCopy tag]) & 0x3DE) != 0)
    {
      pointerRequest = [objectCopy pointerRequest];
      modifiers = [pointerRequest modifiers];

      if ((modifiers & 0x100000) != 0 && (-[CRLCanvasRep repForRotating](self, "repForRotating"), v11 = objc_claimAutoreleasedReturnValue(), [knobCopy rep], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12))
      {
        rotateCursor = [knobCopy rotateCursor];
      }

      else
      {
        rotateCursor = [knobCopy resizeCursor];
      }

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rotateCursor = +[CRLCursor defaultCursor];
LABEL_9:
      v14 = rotateCursor;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)p_repForDraggingIgnoringTopLevelEditing:(BOOL)editing
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layout = [(CRLCanvasRep *)self layout];
  if (![layout isDraggable])
  {
    goto LABEL_6;
  }

  canvasEditor = [interactiveCanvasController canvasEditor];
  layout2 = [(CRLCanvasRep *)self layout];
  if (![canvasEditor isLayoutSelectable:layout2] || -[CRLCanvasRep isLocked](self, "isLocked"))
  {

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if ((documentIsSharedReadOnly & 1) == 0)
  {
    if (-[CRLCanvasRep isSelected](self, "isSelected") || ([interactiveCanvasController layerHost], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "asUIKitHost"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isCurrentlyInQuickSelectMode"), v14, v13, (v15 & 1) == 0))
    {
      if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
      {
        layout = [interactiveCanvasController infosForCurrentSelectionPath];
        info = [(CRLCanvasRep *)self info];
        canvasEditor = [info parentInfo];

        if (canvasEditor)
        {
          while (([layout containsObject:canvasEditor] & 1) == 0)
          {
            parentInfo = [canvasEditor parentInfo];

            canvasEditor = parentInfo;
            if (!parentInfo)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_5;
        }

LABEL_16:
      }

      else if (!editing)
      {
        layout3 = [(CRLCanvasRep *)self layout];
        isInTopLevelContainerForEditing = [layout3 isInTopLevelContainerForEditing];

        if ((isInTopLevelContainerForEditing & 1) == 0)
        {
          parentRep = [(CRLCanvasRep *)self parentRep];
          goto LABEL_21;
        }
      }

      selfCopy = self;
      goto LABEL_23;
    }
  }

LABEL_7:
  parentRep2 = [(CRLCanvasRep *)self parentRep];
  parentRep = parentRep2;
  if (!editing)
  {
LABEL_21:
    repForDragging = [parentRep repForDragging];
    goto LABEL_22;
  }

  repForDragging = [parentRep2 i_repForDraggingIgnoringTopLevelEditing];
LABEL_22:
  selfCopy = repForDragging;

LABEL_23:

  return selfCopy;
}

- (id)additionalRepsForDraggingConnectionLine:(id)line
{
  lineCopy = line;
  v5 = objc_opt_class();
  info = [lineCopy info];

  v7 = sub_100014370(v5, info);

  if (v7)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    mainBoard = [editingCoordinator mainBoard];

    v11 = objc_opt_class();
    info2 = [(CRLCanvasRep *)self info];
    v13 = sub_100014370(v11, info2);

    if ([v7 isConnectedWithBoardItem:v13 boardItemOwner:mainBoard])
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

- (id)p_repForSelectingIgnoringTopLevelEditing:(BOOL)editing ignoringInlineEditing:(BOOL)inlineEditing
{
  v6 = [(CRLCanvasRep *)self interactiveCanvasController:editing];
  layout = [(CRLCanvasRep *)self layout];
  if ([layout isSelectable])
  {
    canvasEditor = [v6 canvasEditor];
    layout2 = [(CRLCanvasRep *)self layout];
    v10 = [canvasEditor isLayoutSelectable:layout2];

    if (!v10)
    {
      goto LABEL_29;
    }

    hasSelectedInfosInMultipleContainers = [v6 hasSelectedInfosInMultipleContainers];
    freehandDrawingToolkit = [v6 freehandDrawingToolkit];
    isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

    if ((isInDrawingMode & 1) == 0 && !hasSelectedInfosInMultipleContainers)
    {
      if (!editing)
      {
        layout3 = [(CRLCanvasRep *)self layout];
        isInTopLevelContainerForEditing = [layout3 isInTopLevelContainerForEditing];

        if ((isInTopLevelContainerForEditing & 1) == 0)
        {
          parentRep = [(CRLCanvasRep *)self parentRep];
LABEL_31:
          repForSelecting = [parentRep repForSelecting];
          goto LABEL_32;
        }
      }

LABEL_25:
      selfCopy = self;
      goto LABEL_33;
    }

    layout = [v6 infosForCurrentSelectionPath];
    info = [(CRLCanvasRep *)self info];
    v18 = [layout containsObject:info];

    if (!v18)
    {
      info2 = [(CRLCanvasRep *)self info];
      parentInfo = [info2 parentInfo];

      if (parentInfo)
      {
        while (([layout containsObject:parentInfo] & 1) == 0)
        {
          v20ParentInfo = [parentInfo parentInfo];

          parentInfo = v20ParentInfo;
          if (!v20ParentInfo)
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
      layout = layout;
      v22 = [layout countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(layout);
            }

            parentInfo2 = [*(*(&v34 + 1) + 8 * i) parentInfo];
            if (parentInfo2)
            {
              v27 = parentInfo2;
              while (1)
              {
                info3 = [(CRLCanvasRep *)self info];

                if (v27 == info3)
                {
                  break;
                }

                parentInfo3 = [v27 parentInfo];

                v27 = parentInfo3;
                if (!parentInfo3)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_28;
            }

LABEL_21:
            ;
          }

          v23 = [layout countByEnumeratingWithState:&v34 objects:v38 count:16];
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
  parentRep2 = [(CRLCanvasRep *)self parentRep];
  parentRep = parentRep2;
  if (!editing)
  {
    goto LABEL_31;
  }

  repForSelecting = [parentRep2 i_repForSelectingIgnoringTopLevelEditing];
LABEL_32:
  selfCopy = repForSelecting;

LABEL_33:

  return selfCopy;
}

- (BOOL)everAllowedToBeSelectedAsADrawable
{
  selfCopy = self;
  v3 = [(CRLCanvasRep *)self p_repForSelectingIgnoringTopLevelEditing:1 ignoringInlineEditing:1];
  LOBYTE(selfCopy) = v3 == selfCopy;

  return selfCopy;
}

- (CRLCanvasRep)repForRotating
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    isInTopLevelContainerForEditing = 1;
  }

  else
  {
    layout = [(CRLCanvasRep *)self layout];
    isInTopLevelContainerForEditing = [layout isInTopLevelContainerForEditing];
  }

  layout2 = [(CRLCanvasRep *)self layout];
  if (![layout2 supportsRotation] || !isInTopLevelContainerForEditing)
  {
    goto LABEL_9;
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController2 canvasEditor];
  layout3 = [(CRLCanvasRep *)self layout];
  if (![canvasEditor isLayoutSelectable:layout3] || -[CRLCanvasRep isLocked](self, "isLocked"))
  {

LABEL_9:
LABEL_10:
    parentRep = [(CRLCanvasRep *)self parentRep];
    selfCopy = [parentRep repForRotating];

    goto LABEL_11;
  }

  interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController3 documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    goto LABEL_10;
  }

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (CRLCanvasRep)repForFreeTransforming
{
  repForRotating = [(CRLCanvasRep *)self repForRotating];
  if (!repForRotating)
  {
    repForRotating = [(CRLCanvasRep *)self repForDragging];
  }

  return repForRotating;
}

- (BOOL)p_isNotSelectableDueToUnknownContent
{
  info = [(CRLCanvasRep *)self info];
  v4 = sub_100125F34(info);

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [interactiveCanvasController repForInfo:v4];

  LOBYTE(interactiveCanvasController) = [v6 containsUnknownContent];
  return interactiveCanvasController;
}

- (void)p_showAlertForGroupWithUnknownContent
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  [_TtC8Freeform13CRLUnknownRep presentUnsupportedItemAlertWithLayerHost:layerHost forGroup:1];
}

- (CRLCanvasRep)repForHandleSingleTap
{
  selfCopy = [(CRLCanvasRep *)self repForSelecting];
  if (!selfCopy)
  {
    if ([(CRLCanvasRep *)self p_isNotSelectableDueToUnknownContent])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (CRLCanvasRep)repForPreviewing
{
  selfCopy = self;
  v3 = selfCopy;
  while (1)
  {
    repForSelecting = [v3 repForSelecting];
    if ([repForSelecting isPreviewable])
    {
      break;
    }

    parentRep = [v3 parentRep];

    v3 = parentRep;
    if (!parentRep)
    {
      goto LABEL_6;
    }
  }

  if (repForSelecting)
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
    sub_1013528B0(selfCopy, v6, v7);
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
  if (selfCopy)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1143 isFatal:0 description:"There should have been a rep suitable for previewing <%{public}@: %{public}p>", v12, selfCopy];
  }

  else
  {
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1143 isFatal:0 description:"There should have been a rep suitable for previewing <%{public}@: %{public}p>", @"Nil", 0];
  }

  repForSelecting = 0;
LABEL_18:

  return repForSelecting;
}

- (NSArray)layoutsForChildReps
{
  layout = [(CRLCanvasRep *)self layout];
  children = [layout children];

  return children;
}

- (void)updateChildrenFromLayout
{
  childReps = [(CRLCanvasRep *)self childReps];
  layoutsForChildReps = [(CRLCanvasRep *)self layoutsForChildReps];
  v5 = [layoutsForChildReps count];
  v30 = childReps;
  v29 = layoutsForChildReps;
  if (v5 != [childReps count])
  {
    goto LABEL_14;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  canvas = layoutsForChildReps;
  v7 = [canvas countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(canvas);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v30 objectAtIndexedSubscript:v9];
        layout = [v13 layout];
        v15 = layout;
        if (layout != v12)
        {

LABEL_13:
          layoutsForChildReps = v29;
LABEL_14:
          canvas = [(CRLCanvasRep *)self canvas];
          v17 = objc_alloc_init(NSMutableArray);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = layoutsForChildReps;
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
            v24 = [canvas repForLayout:v23];
            if (v24)
            {
              goto LABEL_25;
            }

            v24 = [objc_alloc(objc_msgSend(v23 "repClassOverride"))];
            canvas2 = [(CRLCanvasRep *)self canvas];
            if (![canvas2 isCanvasInteractive])
            {
              goto LABEL_23;
            }

            isInDynamicOperation = [(CRLCanvasRep *)self isInDynamicOperation];

            if (isInDynamicOperation)
            {
              canvas2 = [(CRLCanvasRep *)self layout];
              [v24 dynamicOperationDidBeginWithRealTimeCommands:{objc_msgSend(canvas2, "isInRealTimeDynamicOperation")}];
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

                [canvas orderRepsForLayout:v17];
                [(CRLCanvasRep *)self p_setChildReps:v17];

                goto LABEL_29;
              }

              continue;
            }

            goto LABEL_17;
          }
        }

        parentRep = [v13 parentRep];

        if (parentRep != self)
        {
          goto LABEL_13;
        }

        ++v9;
      }

      v8 = [canvas countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (!v8)
      {
LABEL_29:
        layoutsForChildReps = v29;
        break;
      }
    }
  }

  childReps2 = [(CRLCanvasRep *)self childReps];
  [childReps2 makeObjectsPerformSelector:a2];
}

- (void)p_setChildReps:(id)reps
{
  repsCopy = reps;
  if (([repsCopy isEqual:self->mChildReps] & 1) == 0)
  {
    v5 = [[NSSet alloc] initWithArray:repsCopy];
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
            parentRep = [v11 parentRep];

            if (parentRep == self)
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
    v14 = repsCopy;
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
            parentRep2 = [v19 parentRep];
            [parentRep2 removeChildRep:v19];

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

- (void)removeChildRep:(id)rep
{
  repCopy = rep;
  v4 = [(NSMutableArray *)self->mChildReps indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mChildReps removeObjectAtIndex:v4];
    [repCopy setParentRep:0];
  }
}

- (void)didAddChildRep:(id)rep
{
  repCopy = rep;
  if ([(CRLCanvasRep *)self isInDynamicOperation])
  {
    layout = [(CRLCanvasRep *)self layout];
    [repCopy dynamicOperationDidBeginWithRealTimeCommands:{objc_msgSend(layout, "isInRealTimeDynamicOperation")}];

    if ([(CRLCanvasRep *)self isBeingRotated])
    {
      [repCopy dynamicRotateDidBegin];
    }

    else if ([(CRLCanvasRep *)self isBeingResized])
    {
      dynamicResizeDidBegin = [repCopy dynamicResizeDidBegin];
    }
  }
}

- (void)updateFromLayout
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    if (-[CRLCanvasRep providesBackgroundLayerMaskingRect](self, "providesBackgroundLayerMaskingRect") || !-[CRLCanvasRep p_isBeingDraggedRecursive](self, "p_isBeingDraggedRecursive") && (!-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") || (-[CRLCanvasRep layout](self, "layout"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 wantsNormalLayoutDuringDynamicRotation], v14, v15)))
    {
      layout = [(CRLCanvasRep *)self layout];
      geometryInRoot = [layout geometryInRoot];

      if (([geometryInRoot isEqual:self->mLastGeometryInRoot] & 1) == 0)
      {
        -[CRLCanvasRep layoutInRootChangedFrom:to:translatedOnly:](self, "layoutInRootChangedFrom:to:translatedOnly:", self->mLastGeometryInRoot, geometryInRoot, [geometryInRoot differsInMoreThanTranslationFrom:self->mLastGeometryInRoot] ^ 1);
        if ([(CRLCanvasRep *)self providesBackgroundLayerMaskingRect])
        {
          interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
          layerHost = [interactiveCanvasController layerHost];
          canvasLayer = [layerHost canvasLayer];
          associatedBackgroundLayer = [canvasLayer associatedBackgroundLayer];
          [associatedBackgroundLayer setNeedsLayout];
        }
      }

      v11 = [geometryInRoot copy];
      mLastGeometryInRoot = self->mLastGeometryInRoot;
      self->mLastGeometryInRoot = v11;
    }

    layout2 = [(CRLCanvasRep *)self layout];
    [layout2 i_takeDirtyRect];
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
    layout = [(CRLCanvasRep *)self layout];
    layoutState = [layout layoutState];

    if (layoutState == 1 && ([(CRLCanvasRep *)self parentRep], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

        parentRep = [v8 parentRep];

        v8 = parentRep;
      }

      while (parentRep);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  onlyCopy = only;
  fromCopy = from;
  toCopy = to;
  if (onlyCopy)
  {
    if (![(CRLCanvasRep *)self skipsRerenderForTranslation])
    {
      WeakRetained = objc_loadWeakRetained(&self->mCanvas);
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      if (fromCopy)
      {
        [fromCopy transform];
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
      if (toCopy)
      {
        [toCopy transform];
        v18 = v41;
        v19 = v42;
        v20 = v43;
      }

      [v17 convertUnscaledToBoundsPoint:{vaddq_f64(v20, vmlaq_f64(vmulq_n_f64(v19, v40), v39, v18))}];
      v22 = v21;
      v24 = v23;

      v25 = sub_10011F31C(v22, v24, v16);
      v27 = v26;
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas contentsScale];
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

  parentRep = [(CRLCanvasRep *)self parentRep];
  if ([parentRep isBeingRotated])
  {
  }

  else
  {
    layout = [(CRLCanvasRep *)self layout];
    wantsNormalLayoutDuringDynamicRotation = [layout wantsNormalLayoutDuringDynamicRotation];

    if ((wantsNormalLayoutDuringDynamicRotation & 1) == 0)
    {
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      layout2 = [(CRLCanvasRep *)self layout];
      v20 = layout2;
      if (layout2)
      {
        [layout2 originalPureTransformInRoot];
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
      layout3 = [(CRLCanvasRep *)self layout];
      v22 = layout3;
      if (layout3)
      {
        [layout3 pureTransformInRoot];
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

  parentRep2 = [(CRLCanvasRep *)self parentRep];
  if (([parentRep2 isBeingRotated] & 1) == 0)
  {
    goto LABEL_25;
  }

  layout4 = [(CRLCanvasRep *)self layout];
  if (([layout4 wantsNormalLayoutDuringDynamicRotation] & 1) == 0)
  {

LABEL_25:

    return result;
  }

  layout5 = [(CRLCanvasRep *)self layout];
  i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation = [layout5 i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation];

  if ((i_anyAncestorCurrentlyBeingRotatedWantsNormalLayoutDuringDynamicRotation & 1) == 0)
  {
    parentRep3 = [(CRLCanvasRep *)self parentRep];
    if (parentRep3)
    {
      v13 = parentRep3;
      while (1)
      {
        if ([v13 isBeingRotated])
        {
          parentRep4 = [v13 parentRep];
          isBeingRotated = [parentRep4 isBeingRotated];

          if (!isBeingRotated)
          {
            break;
          }
        }

        parentRep5 = [v13 parentRep];

        v13 = parentRep5;
        if (!parentRep5)
        {
          goto LABEL_13;
        }
      }

      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      layout6 = [v13 layout];
      v24 = layout6;
      if (layout6)
      {
        [layout6 originalPureTransformInRoot];
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
      layout7 = [v13 layout];
      v26 = layout7;
      if (layout7)
      {
        [layout7 pureTransformInRoot];
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

- (CGAffineTransform)p_layerTransformForRotationFromPureTransformInRoot:(SEL)root toPureTransformInRoot:(CGAffineTransform *)inRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v8 = *&inRoot->c;
  *&v33.a = *&inRoot->a;
  *&v33.c = v8;
  *&v33.tx = *&inRoot->tx;
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
  parentRep = [(CRLCanvasRep *)self parentRep];

  if (parentRep)
  {
    parentRep2 = [(CRLCanvasRep *)self parentRep];
    v9 = parentRep2;
    if (parentRep2)
    {
      [parentRep2 layerTransformInRootForZeroAnchor];
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
      parentRep = [(CGAffineTransform *)v6 parentRep];

      v6 = parentRep;
    }

    while (parentRep);
  }

  return result;
}

- (void)updateRenderableGeometryFromLayout:(id)layout
{
  layoutCopy = layout;
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
  [layoutCopy setIfDifferentFrame:v13 orTransform:{v6, v8, v10, v12}];
}

- (void)antiAliasDefeatLayerTransform:(CGAffineTransform *)transform forFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = *&transform->c;
  *&v37.a = *&transform->a;
  *&v37.c = v10;
  *&v37.tx = *&transform->tx;
  if (sub_100139A98(&v37.a, frame.size.width, frame.size.height))
  {
    memset(&v37, 0, sizeof(v37));
    v11 = *&transform->c;
    *&v36.a = *&transform->a;
    *&v36.c = v11;
    *&v36.tx = *&transform->tx;
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
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
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
    v28 = *&transform->c;
    *&t2.a = *&transform->a;
    *&t2.c = v28;
    *&t2.tx = *&transform->tx;
    t1 = v35;
    CGAffineTransformConcat(&v35, &t2, &t1);
    v29 = *&v35.c;
    *&transform->a = *&v35.a;
    *&transform->c = v29;
    *&transform->tx = *&v35.tx;
  }
}

- (void)antiAliasDefeatLayerFrame:(CGRect *)frame forTransform:(CGAffineTransform *)transform
{
  v7 = *&transform->c;
  *&v30.a = *&transform->a;
  *&v30.c = v7;
  *&v30.tx = *&transform->tx;
  if (sub_100139A98(&v30.a, frame->size.width, frame->size.height))
  {
    __asm { FMOV            V1.2D, #-0.5 }

    v13 = vmulq_f64(frame->size, _Q1);
    v14 = *&transform->c;
    *&v29.a = *&transform->a;
    *&v29.c = v14;
    *&v29.tx = *&transform->tx;
    memset(&v30, 0, sizeof(v30));
    sub_100139EB4(&v29, &v30, v13.f64[0], v13.f64[1]);
    v31 = *frame;
    v29 = v30;
    v32 = CGRectApplyAffineTransform(v31, &v29);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
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
    *frame = CGRectApplyAffineTransform(v33, &v29);
  }
}

- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform basedOnTransform:(CGAffineTransform *)onTransform andSize:(CGSize)size
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained convertUnscaledToBoundsRect:sub_10011ECB4()];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  parent = [layout parent];
  v22 = sub_100014370(v19, parent);

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

    v25 = *&onTransform->c;
    *&t1.a = *&onTransform->a;
    *&t1.c = v25;
    *&t1.tx = *&onTransform->tx;
    t2 = v44;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v26 = *&v43.c;
    *&onTransform->a = *&v43.a;
    *&onTransform->c = v26;
    *&onTransform->tx = *&v43.tx;
  }

  v27 = objc_loadWeakRetained(&self->mCanvas);
  [v27 viewScale];
  v39 = v28;

  v29 = *&onTransform->c;
  *&onTransform->tx = vmulq_n_f64(*&onTransform->tx, v39);
  *&v43.a = *&onTransform->a;
  *&v43.c = v29;
  *&v43.tx = *&onTransform->tx;
  sub_100139EB4(&v43, &v44, v16 * 0.5, v18 * 0.5);
  v30 = *&v44.c;
  *&onTransform->a = *&v44.a;
  *&onTransform->c = v30;
  *&onTransform->tx = *&v44.tx;
  parentRep = [(CRLCanvasRep *)self parentRep];

  if (parentRep)
  {
    parentRep2 = [(CRLCanvasRep *)self parentRep];
    [parentRep2 layerFrameInScaledCanvas];
    v38 = v34;
    v40 = v33;

    v35.f64[0] = v40;
    v35.f64[1] = v38;
    *&onTransform->tx = vsubq_f64(*&onTransform->tx, v35);
  }

  if (frame)
  {
    frame->origin.x = v12;
    frame->origin.y = v14;
    frame->size.width = v16;
    frame->size.height = v18;
  }

  if (transform)
  {
    v36 = *&onTransform->a;
    v37 = *&onTransform->tx;
    *&transform->c = *&onTransform->c;
    *&transform->tx = v37;
    *&transform->a = v36;
  }
}

- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform
{
  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  v9 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = [(CRLCanvasRep *)self layout:v12];
  geometry2 = [v10 geometry];
  [geometry2 size];
  [(CRLCanvasRep *)self computeDirectLayerFrame:frame andTransform:transform basedOnTransform:&v12 andSize:?];
}

- (void)computeDirectLayerFrame:(CGRect *)frame andTransform:(CGAffineTransform *)transform basedOnLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9 = geometryCopy;
  if (geometryCopy)
  {
    [geometryCopy transform];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  [v9 size];
  [(CRLCanvasRep *)self computeDirectLayerFrame:frame andTransform:transform basedOnTransform:&v10 andSize:?];
}

- (void)processChanges:(id)changes
{
  changesCopy = changes;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = changesCopy;
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

        details = [*(*(&v23 + 1) + 8 * v10) details];
        v12 = details;
        if (details)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100319770;
          v22[3] = &unk_101855978;
          v22[4] = v5;
          [details enumeratePropertiesUsingBlock:v22];
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
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  [canvasController i_repNeedsDisplay:self];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsNull(rect))
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      canvas = [(CRLCanvasRep *)self canvas];
      canvasController = [canvas canvasController];
      [canvasController i_repNeedsDisplay:self inRect:{x, y, width, height}];
    }
  }
}

- (void)p_invalidateContentLayers
{
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas invalidateContentLayersForRep:self];
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
  shadow = [(CRLCanvasRep *)self shadow];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = fmin(self->mShadowCurrentViewScale, 1.0);
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v9 = v8;

    if (fmin(v9, 1.0) > v6)
    {

      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }
}

- (void)setupForDrawingInLayer:(id)layer context:(CGContext *)context
{
  layerCopy = layer;
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  CGContextTranslateCTM(context, -v7, -v8);
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained viewScale];
  v11 = v10;

  CGContextScaleCTM(context, v11, v11);
  if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") && (-[CRLCanvasRep layout](self, "layout"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 wantsNormalLayoutDuringDynamicRotation], v12, !v13))
  {
    layout = [(CRLCanvasRep *)self layout];
    v15 = layout;
    if (layout)
    {
      [layout originalTransformInRoot];
      goto LABEL_8;
    }
  }

  else
  {
    layout2 = [(CRLCanvasRep *)self layout];
    v15 = layout2;
    if (layout2)
    {
      [layout2 transformInRoot];
      goto LABEL_8;
    }
  }

  memset(&v27, 0, sizeof(v27));
LABEL_8:
  CGContextConcatCTM(context, &v27);

  if (layerCopy)
  {
    if ([layerCopy contentsAreFlipped])
    {
      v17 = +[NSThread currentThread];
      threadDictionary = [v17 threadDictionary];
      v19 = [NSNumber numberWithBool:1];
      v20 = [NSValue valueWithPointer:self];
      [threadDictionary setObject:v19 forKey:v20];
    }

    [(CRLCanvasRep *)self i_configureFontSmoothingForContext:context layer:layerCopy, *&v27.a, *&v27.c, *&v27.tx];
  }

  v21 = [(CRLCanvasRep *)self canvas:*&v27.a];
  allowsFontSubpixelQuantization = [v21 allowsFontSubpixelQuantization];

  if ((allowsFontSubpixelQuantization & 1) == 0)
  {
    CGContextSetAllowsFontSubpixelQuantization(context, 0);
    CGContextSetShouldSubpixelQuantizeFonts(context, 0);
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  v25 = v24;
  canvas2 = [(CRLCanvasRep *)self canvas];
  sub_10050DE7C(context, 0, 0, layerCopy != 0, [canvas2 shouldSuppressBackgrounds], v25);
}

- (void)didDrawInLayer:(id)layer context:(CGContext *)context
{
  sub_10050D814(context);
  v7 = +[NSThread currentThread];
  threadDictionary = [v7 threadDictionary];
  v6 = [NSValue valueWithPointer:self];
  [threadDictionary removeObjectForKey:v6];
}

- (BOOL)isDrawingInFlippedContext
{
  v3 = +[NSThread currentThread];
  threadDictionary = [v3 threadDictionary];
  v5 = [NSValue valueWithPointer:self];
  v6 = [threadDictionary objectForKey:v5];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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
        layout = [v14 layout];
        if (!layout)
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

        if (layout)
        {
          [layout transform];
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

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v7 = sub_10050FEFC(context);
  [v7 beginObject:self];
  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  v10 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGContextConcatCTM(context, &v21);

  [(CRLCanvasRep *)self clipRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  masksToBounds = [(CRLCanvasRep *)self masksToBounds];
  v20 = masksToBounds;
  if (masksToBounds)
  {
    v22.origin.x = v12;
    v22.origin.y = v14;
    v22.size.width = v16;
    v22.size.height = v18;
    CGContextClipToRect(context, v22);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  if (CGRectIntersectsRect(v23, ClipBoundingBox))
  {
    CGContextSaveGState(context);
    if ((v20 & 1) == 0)
    {
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      CGContextClipToRect(context, v24);
    }

    [(CRLCanvasRep *)self drawInContext:context, *&v21.a, *&v21.c, *&v21.tx];
    CGContextRestoreGState(context);
  }

  [(CRLCanvasRep *)self recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:testCopy, *&v21.a, *&v21.c, *&v21.tx];
  [v7 endObject:self];
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v8 = [childReps countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(childReps);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (!testCopy || testCopy[2](testCopy, *(*(&v13 + 1) + 8 * v11)))
        {
          CGContextSaveGState(context);
          [v12 recursivelyDrawInContext:context keepingChildrenPassingTest:testCopy];
          CGContextRestoreGState(context);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [childReps countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)isSelectedIgnoringLocking
{
  layout = [(CRLCanvasRep *)self layout];
  if (([layout isSelectable] & 1) == 0)
  {

    return 0;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (!isCanvasInteractive)
  {
    return 0;
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (!interactiveCanvasController)
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

  info = [(CRLCanvasRep *)self info];
  v11 = [interactiveCanvasController currentSelectionPathContainsInfo:info];

  return v11;
}

- (BOOL)isSelected
{
  isSelectedIgnoringLocking = [(CRLCanvasRep *)self isSelectedIgnoringLocking];
  if (isSelectedIgnoringLocking)
  {
    LOBYTE(isSelectedIgnoringLocking) = ![(CRLCanvasRep *)self isLocked];
  }

  return isSelectedIgnoringLocking;
}

- (void)becameSelected
{
  [(CRLCanvasRep *)self invalidateKnobs];
  info = [(CRLCanvasRep *)self info];
  v4 = objc_opt_class();
  parentInfo = [info parentInfo];
  v6 = sub_100014370(v4, parentInfo);

  for (i = v6 == 0; info && !v6; i = v6 == 0)
  {
    v8 = info;
    info = [info parentInfo];

    v9 = objc_opt_class();
    parentInfo2 = [info parentInfo];
    v6 = sub_100014370(v9, parentInfo2);
  }

  if (!i)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
    v14 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

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
  childRepsToInformForSelectabilityChanges = [(CRLCanvasRep *)self childRepsToInformForSelectabilityChanges];
  v4 = [childRepsToInformForSelectabilityChanges countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(childRepsToInformForSelectabilityChanges);
        }

        [*(*(&v8 + 1) + 8 * v7) becameSelectable];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [childRepsToInformForSelectabilityChanges countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  childRepsToInformForSelectabilityChanges = [(CRLCanvasRep *)self childRepsToInformForSelectabilityChanges];
  v4 = [childRepsToInformForSelectabilityChanges countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(childRepsToInformForSelectabilityChanges);
        }

        [*(*(&v8 + 1) + 8 * v7) becameNotSelectable];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [childRepsToInformForSelectabilityChanges countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSSet)childRepsToInformForSelectabilityChanges
{
  childReps = [(CRLCanvasRep *)self childReps];
  v3 = [NSSet setWithArray:childReps];

  return v3;
}

- (BOOL)shouldShowCollaboratorCursorHighlight
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layout = [(CRLCanvasRep *)self layout];
  v5 = [interactiveCanvasController i_shouldShowCollaboratorCursorForLayout:layout];

  return v5;
}

- (id)p_currentCollaboratorPresence
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layout = [(CRLCanvasRep *)self layout];
  v5 = [interactiveCanvasController i_collaboratorPresenceSelectingLayout:layout];

  return v5;
}

- (CRLColor)currentCollaboratorCursorColor
{
  p_currentCollaboratorPresence = [(CRLCanvasRep *)self p_currentCollaboratorPresence];
  owner = [p_currentCollaboratorPresence owner];
  v4 = [owner collaboratorColorForType:2];

  return v4;
}

- (void)collaboratorCursorChangedToSelectionPath:(id)path
{
  pathCopy = path;
  if (qword_101AD5B90 != -1)
  {
    sub_101352D9C();
  }

  v5 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    selfCopy = self;
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
    selfCopy = self;
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
    layout = [(CRLCanvasRep *)self layout];
    v6 = layout;
    if (layout)
    {
      [layout transformInRoot];
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
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  [canvasController invalidateOverlayLayersForRep:self];
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

    subrenderables = [(CRLCanvasRenderable *)self->mCollaboratorCursorRenderable subrenderables];
    if ([subrenderables count] != 4)
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

    if ([subrenderables count] == 4)
    {
      v14 = objc_opt_class();
      v15 = [subrenderables objectAtIndexedSubscript:0];
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
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController convertUnscaledToBoundsRect:{v22, v24, v26, v28}];
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
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController2 convertBoundsToUnscaledRect:{x, y, width, height}];
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
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas contentsScale];
      v61 = v60;
      *v62.i64 = v52;
      *v63.i64 = v56;
      sub_10018F260(&v102.a, &buf, 4, v62, v54, v63, v58, 4.0, v61);

      currentCollaboratorCursorColor = [(CRLCanvasRep *)self currentCollaboratorCursorColor];
      cGColor = [currentCollaboratorCursorColor CGColor];

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
      v70 = [subrenderables objectAtIndexedSubscript:1];
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
      v76 = [subrenderables objectAtIndexedSubscript:2];
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
      v82 = [subrenderables objectAtIndexedSubscript:3];
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
      v87 = subrenderables;
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
            [v93 setStrokeColor:{cGColor, v96}];
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
  layout = [(CRLCanvasRep *)self layout];
  [layout boundsForStandardKnobs];
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
            enabledKnobMask = [v16 enabledKnobMask];

            v18 = v35[5];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10031C86C;
            v32[3] = &unk_101855BE8;
            v32[4] = self;
            v32[5] = enabledKnobMask;
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
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateOverlayLayersForRep:self];
}

- (unint64_t)enabledKnobMask
{
  layout = [(CRLCanvasRep *)self layout];
  resizeMayChangeAspectRatio = [layout resizeMayChangeAspectRatio];

  if (resizeMayChangeAspectRatio)
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

  layout2 = [(CRLCanvasRep *)self layout];
  resizeMayChangeAspectRatio2 = [layout2 resizeMayChangeAspectRatio];

  if (resizeMayChangeAspectRatio2)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    layout3 = [(CRLCanvasRep *)self layout];
    [layout3 minimumSize];
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

- (void)addKnobsToArray:(id)array
{
  arrayCopy = array;
  v4 = [(CRLCanvasKnob *)[CRLCanvasPlaceholderInvisibleKnob alloc] initWithType:1 position:0 radius:self tag:CGPointZero.x onRep:CGPointZero.y, 0.0];
  [arrayCopy addObject:v4];
  if ([(CRLCanvasRep *)self shouldCreateSelectionKnobs])
  {
    [(CRLCanvasRep *)self addSelectionKnobsToArray:arrayCopy];
  }

  else if ([(CRLCanvasRep *)self shouldCreateLockedKnobs])
  {
    [(CRLCanvasRep *)self addLockedKnobsToArray:arrayCopy];
  }
}

- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag
{
  v7 = [CRLCanvasKnob alloc];
  y = CGPointZero.y;

  return [(CRLCanvasKnob *)v7 initWithType:type position:tag radius:self tag:CGPointZero.x onRep:y, 15.0];
}

- (void)addSelectionKnobsToArray:(id)array
{
  arrayCopy = array;
  enabledKnobMask = [(CRLCanvasRep *)self enabledKnobMask];
  if (enabledKnobMask)
  {
    v6 = enabledKnobMask;
    for (i = 1; i != 10; ++i)
    {
      if ((sub_100345928(i) & v6) != 0)
      {
        v8 = [(CRLCanvasRep *)self newSelectionKnobForType:0 tag:i];
        [arrayCopy addObject:v8];
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
    [arrayCopy addObjectsFromArray:v13];
  }
}

- (void)addLockedKnobsToArray:(id)array
{
  arrayCopy = array;
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

  [arrayCopy addObjectsFromArray:v6];
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

- (void)updatePositionsOfKnobs:(id)knobs
{
  knobsCopy = knobs;
  [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = knobsCopy;
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
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);
  forcesPlacementOnTop = [v5 forcesPlacementOnTop];

  return forcesPlacementOnTop;
}

- (BOOL)forcesPlacementOnBottom
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);
  forcesPlacementOnBottom = [v5 forcesPlacementOnBottom];

  return forcesPlacementOnBottom;
}

- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  knobCopy = knob;
  if (![knobCopy tag] || objc_msgSend(knobCopy, "tag") >= 0xA)
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

  [knobCopy offset];
  v14 = v13;
  v16 = v15;
  if (![knobCopy offsetValid])
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v19 = v18;

    if (width * v19 <= 16.0)
    {
      if ([knobCopy tag] == 1 || objc_msgSend(knobCopy, "tag") == 4 || objc_msgSend(knobCopy, "tag") == 7)
      {
        v14 = v14 - (8.0 / v19 + width * -0.5);
      }

      else if ([knobCopy tag] == 3 || objc_msgSend(knobCopy, "tag") == 6 || objc_msgSend(knobCopy, "tag") == 9)
      {
        v14 = v14 + 8.0 / v19 + width * -0.5;
      }
    }

    if (height * v19 > 16.0)
    {
      goto LABEL_24;
    }

    if ([knobCopy tag] == 1 || objc_msgSend(knobCopy, "tag") == 2 || objc_msgSend(knobCopy, "tag") == 3)
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController viewScale];
      v16 = v16 - (8.0 / v21 + height * -0.5);
    }

    else
    {
      if ([knobCopy tag] != 7 && objc_msgSend(knobCopy, "tag") != 8 && objc_msgSend(knobCopy, "tag") != 9)
      {
        goto LABEL_24;
      }

      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController viewScale];
      v16 = v16 + 8.0 / v43 + height * -0.5;
    }

LABEL_24:
    [knobCopy setOffset:{v14, v16}];
    [knobCopy setOffsetValid:1];
  }

  v22 = sub_100345F44([knobCopy tag], x, y, width, height);
  v24 = sub_10011F334(v22, v23, v14);
  v26 = v25;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 viewScale];
  v29 = v28;

  +[_TtC8Freeform21CRLConnectionLineKnob unscaledConnectionKnobOffsetWithEdgeKnob];
  v31 = v30;
  +[_TtC8Freeform21CRLConnectionLineKnob unscaledConnectionKnobOffsetWithoutEdgeKnob];
  v33 = v32;
  enabledKnobMask = [(CRLCanvasRep *)self enabledKnobMask];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v31 / v29;
    v36 = v33 / v29;
    if ([knobCopy tag] == 6)
    {
      if ((enabledKnobMask & 0x40) != 0)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v24 = v24 + v37;
    }

    else if ([knobCopy tag] == 4)
    {
      if ((enabledKnobMask & 0x10) != 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }

      v24 = v24 - v38;
    }

    else if ([knobCopy tag] == 2)
    {
      if ((enabledKnobMask & 4) != 0)
      {
        v39 = v35;
      }

      else
      {
        v39 = v36;
      }

      v26 = v26 - v39;
    }

    else if ([knobCopy tag] == 8)
    {
      if ((enabledKnobMask & 0x100) != 0)
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
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  [canvasController invalidateOverlayLayersForRep:self];
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  if (!knobCopy)
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

  v8 = [knobCopy tag];
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

  v10 = [objc_alloc(*v9) initWithRep:self knob:knobCopy];
LABEL_17:

  return v10;
}

- (void)p_toggleHyperlinkUIVisibility
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController toggleHyperlinkUIForRep:self];
}

- (id)knobForTag:(unint64_t)tag
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  knobs = [(CRLCanvasRep *)self knobs];
  v5 = [knobs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(knobs);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 tag] == tag)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [knobs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  layout = [(CRLCanvasRep *)self layout];
  v3 = layout;
  if (layout)
  {
    [layout transformInRoot];
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
  canvas = [(CRLCanvasRep *)self canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  if (isAnchoredAtRight)
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
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    delegate2 = [interactiveCanvasController delegate];
    if ([delegate2 shouldSuppressSelectionHighlightForInteractiveCanvasController:interactiveCanvasController])
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

  layout = [(CRLCanvasRep *)self layout];
  if ([layout isInGroup])
  {
    v4 = 0;
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([interactiveCanvasController connectorKnobsEnabled])
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

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController usesAlternateDrawableSelectionHighlight])
  {
    shouldIgnoreICCSuppressSelectionKnobs = 0;
  }

  else
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([interactiveCanvasController2 shouldSuppressSelectionKnobsForRep:self])
    {
      shouldIgnoreICCSuppressSelectionKnobs = [(CRLCanvasRep *)self shouldIgnoreICCSuppressSelectionKnobs];
    }

    else
    {
      shouldIgnoreICCSuppressSelectionKnobs = 1;
    }
  }

  return shouldIgnoreICCSuppressSelectionKnobs;
}

- (BOOL)shouldCreateLockedKnobs
{
  isLocked = [(CRLCanvasRep *)self isLocked];
  if (isLocked)
  {

    LOBYTE(isLocked) = [(CRLCanvasRep *)self isSelectedIgnoringLocking];
  }

  return isLocked;
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

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  knobCopy = knob;
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

    defaultSelectionHighlightColor = qword_101A34C10;
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    selectionHighlightColor = [interactiveCanvasController selectionHighlightColor];

    if (selectionHighlightColor)
    {
      goto LABEL_8;
    }

    defaultSelectionHighlightColor = [(CRLCanvasRep *)self defaultSelectionHighlightColor];
  }

  selectionHighlightColor = defaultSelectionHighlightColor;
LABEL_8:

  return selectionHighlightColor;
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
    layout = [(CRLCanvasRep *)self layout];
    v6 = layout;
    if (layout)
    {
      [layout transformInRoot];
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
    makeSelectionHighlightRenderable = [(CRLCanvasRep *)self makeSelectionHighlightRenderable];
    v5 = self->mSelectionHighlightRenderable;
    self->mSelectionHighlightRenderable = makeSelectionHighlightRenderable;

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLCanvasRenderable *)self->mSelectionHighlightRenderable setDelegate:interactiveCanvasController];

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

- (void)updateSelectionHighlightRenderable:(id)renderable
{
  renderableCopy = renderable;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, renderableCopy);

  if (v6)
  {
    selectionHighlightColor = [(CRLCanvasRep *)self selectionHighlightColor];
    [v6 setStrokeColor:{objc_msgSend(selectionHighlightColor, "CGColor")}];

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
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
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

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
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

- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
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

- (id)p_addRenderablesForKnobsToArray:(id)array withDelegate:(id)delegate isOverlay:(BOOL)overlay
{
  arrayCopy = array;
  delegateCopy = delegate;
  knobs = [(CRLCanvasRep *)self knobs];
  if (![knobs count] || objc_msgSend(knobs, "count") == 1 && (objc_msgSend(knobs, "crl_anyObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
  {
    v13 = arrayCopy;
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10031F130;
    v26[3] = &unk_101855D40;
    overlayCopy = overlay;
    v26[4] = knobs;
    v26[5] = self;
    v15 = objc_retainBlock(v26);
    if (!arrayCopy)
    {
      arrayCopy = +[NSMutableArray array];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10031F5B0;
    v24[3] = &unk_101855D68;
    v24[4] = self;
    v16 = arrayCopy;
    v25 = v16;
    (v15[2])(v15, v24);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10031F63C;
    v19[3] = &unk_101855DD0;
    v20 = delegateCopy;
    v21 = interactiveCanvasController;
    selfCopy = self;
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
    collaboratorCursorRenderable = [(CRLCanvasRep *)self collaboratorCursorRenderable];
    if (collaboratorCursorRenderable)
    {
      [v3 addObject:collaboratorCursorRenderable];
    }
  }

  if ([(CRLCanvasRep *)self p_shouldShowSelectionHighlight])
  {
    selectionHighlightRenderable = [(CRLCanvasRep *)self selectionHighlightRenderable];
    if (selectionHighlightRenderable)
    {
      [v3 addObject:selectionHighlightRenderable];
    }
  }

  if ([(CRLCanvasRep *)self shouldShowDragAndDropHighlight])
  {
    dragAndDropHighlightRenderable = [(CRLCanvasRep *)self dragAndDropHighlightRenderable];
    if (dragAndDropHighlightRenderable)
    {
      [v3 addObject:dragAndDropHighlightRenderable];
    }
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [(CRLCanvasRep *)self p_addRenderablesForKnobsToArray:v3 withDelegate:interactiveCanvasController isOverlay:1];

  return v8;
}

- (BOOL)p_shouldShowSelectionHighlight
{
  if (![(CRLCanvasRep *)self shouldSuppressSelectionHighlightDuringMultiselection])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [interactiveCanvasController shouldSuppressSelectionKnobsForRep:self];

    if (v4)
    {
      return 1;
    }
  }

  return [(CRLCanvasRep *)self shouldShowSelectionHighlight];
}

- (double)contentsScale
{
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  v4 = v3;

  return v4;
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands
{
  v4 = [NSNumber numberWithBool:commands];
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicOperationDidBeginWithRealTimeCommands:" withObject:v4];
}

- (void)p_dynamicOperationDidBeginWithRealTimeCommands:(id)commands
{
  commandsCopy = commands;
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
  layout = [(CRLCanvasRep *)self layout];
  bOOLValue = [commandsCopy BOOLValue];

  [layout beginDynamicOperationWithRealTimeCommands:bOOLValue];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)dynamicOperationDidEnd
{
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicOperationDidEnd"];
  p_connectedReps = [(CRLCanvasRep *)self p_connectedReps];
  [p_connectedReps makeObjectsPerformSelector:"invalidateKnobs"];

  [(CRLCanvasRep *)self invalidateKnobs];
  layout = [(CRLCanvasRep *)self layout];
  isInGroup = [layout isInGroup];

  if (isInGroup)
  {
    parentRep = [(CRLCanvasRep *)self parentRep];
    [parentRep p_invalidateChildKnobPositionsForEndingDynamicOperation];
  }
}

- (void)p_invalidateChildKnobPositionsForEndingDynamicOperation
{
  if (!self->mHasInvalidatedChildKnobPositionsForEndingDynamicOperation)
  {
    self->mHasInvalidatedChildKnobPositionsForEndingDynamicOperation = 1;
    childReps = [(CRLCanvasRep *)self childReps];
    [childReps makeObjectsPerformSelector:"invalidateKnobPositions"];

    objc_initWeak(&location, self);
    canvas = [(CRLCanvasRep *)self canvas];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10031FFF8;
    v5[3] = &unk_10183AF10;
    objc_copyWeak(&v6, &location);
    [canvas performBlockAfterLayoutIfNecessary:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)p_dynamicOperationDidEnd
{
  layout = [(CRLCanvasRep *)self layout];
  [layout endDynamicOperation];

  if ([(CRLCanvasRep *)self shouldShowKnobs])
  {

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)isInDynamicOperation
{
  layout = [(CRLCanvasRep *)self layout];
  v3 = [layout layoutState] != 0;

  return v3;
}

- (CRLShadow)shadow
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  shadow = [v5 shadow];

  return shadow;
}

- (BOOL)shouldShowShadow
{
  canvas = [(CRLCanvasRep *)self canvas];
  suppressesShadowsAndReflections = [canvas suppressesShadowsAndReflections];

  if ((suppressesShadowsAndReflections & 1) != 0 || [(CRLCanvasRep *)self isBeingResized]|| [(CRLCanvasRep *)self isBeingRotated]|| [(CRLCanvasRep *)self isBeingFreeTransformResized])
  {
    return 0;
  }

  else
  {
    return ![(CRLCanvasRep *)self inFreeTransformRotateResizeMode];
  }
}

- (void)p_willUpdateEffectRenderablesForRenderable:(id)renderable
{
  shadow = [(CRLCanvasRep *)self shadow];
  if (shadow && [shadow isEnabled] && -[CRLCanvasRep shouldShowShadow](self, "shouldShowShadow"))
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

- (void)p_didUpdateEffectRenderablesForRenderable:(id)renderable
{
  if (![(CRLCanvasRep *)self isInvisible])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    createRepsForOffscreenLayouts = [interactiveCanvasController createRepsForOffscreenLayouts];
    mShadowRenderable = self->mShadowRenderable;
    if (mShadowRenderable && (createRepsForOffscreenLayouts & 1) == 0)
    {
      [interactiveCanvasController visibleBoundsRectForTiling];
      [interactiveCanvasController convertBoundsToUnscaledRect:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      layout = [(CRLCanvasRep *)self layout];
      [layout frameForCulling];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      layout2 = [(CRLCanvasRep *)self layout];
      parent = [layout2 parent];

      if (parent)
      {
        [parent rectInRoot:{v17, v19, v21, v23}];
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
      shadow = [(CRLCanvasRep *)self shadow];
      if (!shadow)
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

      if (([shadow isEnabled] & 1) == 0)
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

      if (shadow && [shadow isEnabled])
      {
        [(CRLCanvasRep *)self opacity];
        v38 = v37;
        [shadow opacity];
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
          contents = [(CRLCanvasRenderable *)self->mShadowRenderable contents];

          if (!contents)
          {
            [(CRLCanvasRep *)self invalidateShadowRenderable];
          }
        }

        if ([(CRLCanvasRep *)self isBeingRotated])
        {
          [(CRLCanvasRep *)self invalidateShadowRenderable];
        }

        v44 = self->mShadowRenderable;
        layout3 = [(CRLCanvasRep *)self layout];
        [layout3 shadowedNaturalBoundsWithoutOffset];
        [(CRLCanvasRep *)self p_positionShadowRenderable:v44 forShadow:shadow withNaturalBounds:?];
      }

      if (self->mShadowRenderableInvalid)
      {
        [(CRLCanvasRenderable *)self->mShadowRenderable bounds];
        v47 = v46;
        v49 = v48;
        canvas = [(CRLCanvasRep *)self canvas];
        [canvas viewScale];
        v52 = [(CRLCanvasRep *)self newShadowImageWithSize:0 unflipped:1 withChildren:sub_10011F340(v47, v49, 1.0 / v51)];

        [(CRLCanvasRenderable *)self->mShadowRenderable setContents:v52];
        canvas2 = [(CRLCanvasRep *)self canvas];
        [canvas2 viewScale];
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

- (void)p_positionShadowRenderable:(id)renderable forShadow:(id)shadow withNaturalBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  renderableCopy = renderable;
  shadowCopy = shadow;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v15 = v14;

  if ([shadowCopy isDropShadow])
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
    [shadowCopy offsetDelta];
    v21 = sub_10011F340(v19, v20, v15);
    v23 = sub_100122154(v21, v22);
    [renderableCopy setPosition:{sub_10011F334(v16, v18, v23)}];
    [renderableCopy setBounds:sub_10011ECB4()];
    v90 = v93;
    v91 = v94;
    v92 = v95;
    v24 = &v90;
  }

  else
  {
    if ([shadowCopy isContactShadow])
    {
      shadow = [(CRLCanvasRep *)self shadow];
      [shadow boundsForRep:self];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = sub_10011FFD8(v27, v29, v31, v33, v15);
      v38 = sub_100120414(v34, v35, v36, v37);
      v40 = v39;
      [shadowCopy offset];
      v42 = v41;
      v43 = 0.0;
    }

    else
    {
      if (![shadowCopy isCurvedShadow])
      {
        goto LABEL_11;
      }

      shadow2 = [(CRLCanvasRep *)self shadow];
      [shadow2 boundsForRep:self];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = sub_10011FFD8(v46, v48, v50, v52, v15);
      v38 = sub_100120414(v53, v54, v55, v56);
      v40 = v57;
      [shadowCopy offsetDelta];
    }

    v58 = sub_10011F340(v43, v42, v15);
    v60 = sub_100122154(v58, v59);
    v61 = sub_10011F334(v38, v40, v60);
    v63 = v62;
    parentRep = [(CRLCanvasRep *)self parentRep];

    if (parentRep)
    {
      parentRep2 = [(CRLCanvasRep *)self parentRep];
      [parentRep2 layerFrameInScaledCanvas];
      v67 = v66;
      v69 = v68;

      v61 = v61 - v67;
      v63 = v63 - v69;
    }

    [renderableCopy setPosition:{v61, v63}];
    [renderableCopy setBounds:sub_10011ECB4()];
    v70 = *&CGAffineTransformIdentity.c;
    v93 = *&CGAffineTransformIdentity.a;
    v94 = v70;
    v95 = *&CGAffineTransformIdentity.tx;
    v24 = &v93;
  }

  [renderableCopy setAffineTransform:{v24, v90, v91, v92, v93, v94, v95}];
LABEL_11:
  [renderableCopy frame];
  v72 = v71;
  v74 = v73;
  superlayer = [renderableCopy superlayer];
  if (superlayer)
  {
    v76 = superlayer;
    do
    {
      [v76 frame];
      v72 = sub_10011F334(v72, v74, v77);
      v74 = v78;
      superlayer2 = [v76 superlayer];

      v76 = superlayer2;
    }

    while (superlayer2);
  }

  [renderableCopy position];
  v81 = v80;
  v83 = v82;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 contentsScale];
  v86 = sub_10012218C(v72, v74, v85);
  v88 = v87;

  v89 = sub_10011F31C(v86, v88, v72);
  [renderableCopy setPosition:{sub_10011F334(v81, v83, v89)}];
}

- (CGImage)newShadowImageWithSize:(CGSize)size shadow:(id)shadow drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  shadowCopy = shadow;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v14 = [shadowCopy newShadowImageForRep:self withUnscaledSize:selector viewScale:unflippedCopy drawSelector:width unflipped:{height, v13}];

  return v14;
}

- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  v9 = &selRef_drawInContextWithoutEffectsForAlphaOnly_;
  if (!children)
  {
    v9 = &selRef_drawInContextWithoutEffectsOrChildrenForAlphaOnly_;
  }

  v10 = *v9;
  shadow = [(CRLCanvasRep *)self shadow];
  height = [(CRLCanvasRep *)self newShadowImageWithSize:shadow shadow:v10 drawSelector:unflippedCopy unflipped:width, height];

  return height;
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

  layout = [(CRLCanvasRep *)self layout];
  [layout beginDrag];
}

- (BOOL)isBeingDragged
{
  layout = [(CRLCanvasRep *)self layout];
  v3 = [layout layoutState] == 2;

  return v3;
}

- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  layout = [(CRLCanvasRep *)self layout];
  [layout alignmentFrameInRoot];
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
  layout = [(CRLCanvasRep *)self layout];
  [layout endDrag];
}

- (CGPoint)i_dragOffset
{
  layout = [(CRLCanvasRep *)self layout];
  dynamicGeometry = [layout dynamicGeometry];
  [dynamicGeometry frame];
  v6 = v5;
  v8 = v7;
  layout2 = [(CRLCanvasRep *)self layout];
  originalGeometry = [layout2 originalGeometry];
  [originalGeometry frame];
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

- (void)dynamicDragDidEndAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
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
      layout = [(CRLCanvasRep *)self layout];
      isInRealTimeDynamicOperation = [layout isInRealTimeDynamicOperation];

      if ((isInRealTimeDynamicOperation & 1) == 0)
      {
        info = [(CRLCanvasRep *)self info];
        geometry = [info geometry];
        v14 = [geometry mutableCopy];

        [v14 position];
        [v14 setPosition:{sub_10011F334(v15, v16, v7)}];
        v17 = objc_opt_class();
        v18 = sub_100014370(v17, info);
        if (v18)
        {
          interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
          temporaryAdditionalBoardItemsToDisplay = [interactiveCanvasController temporaryAdditionalBoardItemsToDisplay];
          v21 = [temporaryAdditionalBoardItemsToDisplay containsObject:v18];

          if ((v21 & 1) == 0)
          {
            v22 = [(CRLCanvasRep *)self newCommandToApplyGeometry:v14 toInfo:v18];
            if (v22)
            {
              commandController = [(CRLCanvasRep *)self commandController];
              [commandController enqueueCommand:v22];
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
            layout2 = [(CRLCanvasRep *)self layout];
            [layout2 enqueueCommandsForAdjustingPathSourcesAfterRoutingChanges];
          }
        }
      }
    }

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)allowDragAcrossPageBoundaries
{
  layout = [(CRLCanvasRep *)self layout];
  isInGroup = [layout isInGroup];

  return isInGroup ^ 1;
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

  layout = [(CRLCanvasRep *)self layout];
  [layout beginRotate];

  [(CRLCanvasRep *)self invalidateKnobs];
}

- (BOOL)isBeingRotated
{
  layout = [(CRLCanvasRep *)self layout];
  v3 = [layout layoutState] == 3;

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
  info = [(CRLCanvasRep *)self info];
  geometry = [info geometry];
  [geometry angle];
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

- (void)dynamicallyRotatingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  layout = [(CRLCanvasRep *)self layout];
  [layout takeRotationFromTracker:trackerCopy];
}

- (void)p_dynamicRotateDidEnd
{
  layout = [(CRLCanvasRep *)self layout];
  [layout endRotate];

  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)dynamicRotateDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  info = [(CRLCanvasRep *)self info];
  [(CRLCanvasRep *)self recursivelyPerformSelector:"p_dynamicRotateDidEnd"];
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];

  layout = [(CRLCanvasRep *)self layout];
  isInRealTimeDynamicOperation = [layout isInRealTimeDynamicOperation];

  if ((isInRealTimeDynamicOperation & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, info);
    if (trackerCopy)
    {
      [trackerCopy rotateTransform];
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
        commandController = [(CRLCanvasRep *)self commandController];
        [commandController enqueueCommand:v12];
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

        commandController = [NSString stringWithUTF8String:"[CRLCanvasRep dynamicRotateDidEndWithTracker:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
        [CRLAssertionHandler handleFailureInFunction:commandController file:v20 lineNumber:3402 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];
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
      commandController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRep.m"];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [CRLAssertionHandler handleFailureInFunction:v12 file:commandController lineNumber:3408 isFatal:0 description:"We don't know how to rotate a %@", v18];
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

  layout = [(CRLCanvasRep *)self layout];
  [layout beginResize];

  layout2 = [(CRLCanvasRep *)self layout];

  return layout2;
}

- (BOOL)isBeingResized
{
  layout = [(CRLCanvasRep *)self layout];
  v3 = [layout layoutState] == 4;

  return v3;
}

- (NSString)actionStringForResize
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Resize" value:0 table:@"UndoStrings"];

  return v3;
}

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v4 = [trackerCopy rep];
  if ([v4 willHandleResizingLayoutForRep:self])
  {
    v5 = [trackerCopy rep];

    if (v5 != self)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [trackerCopy resizingLayoutForRep:self];
  [v6 takeSizeFromTracker:trackerCopy];

LABEL_6:
  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  layout = [(CRLCanvasRep *)self layout];
  [layout endResize];

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info
{
  geometryCopy = geometry;
  infoCopy = info;
  v7 = objc_opt_class();
  v8 = sub_100014370(v7, infoCopy);

  if (v8)
  {
    v9 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v8 geometry:geometryCopy];
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

- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker
{
  trackerCopy = tracker;
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

  layout = [(CRLCanvasRep *)self layout];
  [layout beginFreeTransformWithTracker:trackerCopy];
}

- (BOOL)isBeingFreeTransformed
{
  layout = [(CRLCanvasRep *)self layout];
  v3 = [layout layoutState] == 5;

  return v3;
}

- (BOOL)isBeingFreeTransformDragged
{
  if ([(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    layout = [(CRLCanvasRep *)self layout];
    v4 = [layout freeTransformState] & 1;
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
    layout = [(CRLCanvasRep *)self layout];
    v4 = ([layout freeTransformState] >> 1) & 1;
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
    layout = [(CRLCanvasRep *)self layout];
    v4 = ([layout freeTransformState] >> 2) & 1;
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
    layout = [(CRLCanvasRep *)self layout];
    v4 = ([layout freeTransformState] >> 3) & 1;
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

- (void)dynamicallyFreeTransformingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  layout = [(CRLCanvasRep *)self layout];
  v5 = [trackerCopy selectedRepForLayout:layout];

  if (v5 && (v5 == self || ![(CRLCanvasRep *)v5 willHandleFreeTransformingLayoutForRep:self]))
  {
    layout2 = [(CRLCanvasRep *)self layout];
    [layout2 takeFreeTransformFromTracker:trackerCopy];
  }

  if ([(CRLCanvasRep *)self isBeingFreeTransformResized]|| [(CRLCanvasRep *)self isBeingFreeTransformRotated])
  {
    WeakRetained = objc_loadWeakRetained(&self->mCanvas);
    [WeakRetained canvasInvalidatedForRep:self];
  }
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  layout = [(CRLCanvasRep *)self layout];
  [layout endFreeTransform];

  WeakRetained = objc_loadWeakRetained(&self->mCanvas);
  [WeakRetained canvasInvalidatedForRep:self];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  v5 = [(CRLCanvasRep *)self p_isNotSelectableDueToUnknownContent:type];
  if (v5)
  {
    [(CRLCanvasRep *)self p_showAlertForGroupWithUnknownContent];
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController editingDisabled])
  {
    hyperlinkRegions = [(CRLCanvasRep *)self hyperlinkRegions];
    v8 = [hyperlinkRegions count];

    if (v8)
    {
      layerHost = [interactiveCanvasController layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      LOBYTE(v5) = [asiOSCVC allowOpenLinkOnSingleTapForRepWhenEditingDisabled:self];
    }
  }

  return v5;
}

- (BOOL)shouldLayoutTilingLayer:(id)layer
{
  layerCopy = layer;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [interactiveCanvasController shouldLayoutTilingLayer:layerCopy];

  return v6;
}

- (CGRect)visibleBoundsForTilingLayer:(id)layer
{
  layerCopy = layer;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController visibleBoundsForTilingLayer:layerCopy];
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

- (void)processChangedProperty:(unint64_t)property
{
  if (property <= 7)
  {
    if (property == 6)
    {
      [(CRLCanvasRep *)self invalidateKnobPositions];
    }

    else
    {
      if (property != 7)
      {
LABEL_24:
        if ((property & 0xFFFFFFFFFFFFFFFELL) != 6)
        {
          if (property != 9)
          {
            return;
          }

          goto LABEL_5;
        }

        goto LABEL_20;
      }

      [(CRLCanvasRep *)self invalidateKnobs];
    }

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateCollaboratorHUDControllers];

LABEL_20:
    ancestorRepForDrawingIntoLayer = [(CRLCanvasRep *)self ancestorRepForDrawingIntoLayer];

    if (ancestorRepForDrawingIntoLayer)
    {

      [(CRLCanvasRep *)self setNeedsDisplay];
    }

    return;
  }

  switch(property)
  {
    case 8uLL:

      [(CRLCanvasRep *)self recursivelyPerformSelector:"p_invalidateContentLayers"];
      break;
    case 0xCuLL:
      [(CRLCanvasRep *)self invalidateKnobs];
      [(CRLCanvasRep *)self invalidateSelectionHighlightRenderable];
      if ([(CRLCanvasRep *)self isSelectedIgnoringLocking])
      {
        interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
        [interactiveCanvasController2 updateMultiselectResizeInfoIfNeeded];
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

- (void)prepareForPrintingWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
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
          renderable = [v9 renderable];
          [v3 addObject:renderable];
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
  additionalRenderablesOverRenderable = [(CRLCanvasRep *)self additionalRenderablesOverRenderable];
  [v3 addObjectsFromArray:additionalRenderablesOverRenderable];

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLCanvasRep *)self p_addRenderablesForKnobsToArray:v3 withDelegate:interactiveCanvasController isOverlay:0];

  return v6;
}

- (NSArray)allRenderables
{
  v3 = +[NSMutableArray array];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [interactiveCanvasController renderableForRep:self];
  [v3 crl_addNonNilObject:v5];

  i_additionalRenderablesOverRenderableIncludingKnobs = [(CRLCanvasRep *)self i_additionalRenderablesOverRenderableIncludingKnobs];
  [v3 addObjectsFromArray:i_additionalRenderablesOverRenderableIncludingKnobs];

  additionalRenderablesUnderRenderable = [(CRLCanvasRep *)self additionalRenderablesUnderRenderable];
  [v3 addObjectsFromArray:additionalRenderablesUnderRenderable];

  overlayRenderables = [(CRLCanvasRep *)self overlayRenderables];
  [v3 addObjectsFromArray:overlayRenderables];

  return v3;
}

- (NSArray)allPlatformViews
{
  v3 = objc_opt_new();
  contentPlatformView = [(CRLCanvasRep *)self contentPlatformView];

  if (contentPlatformView)
  {
    contentPlatformView2 = [(CRLCanvasRep *)self contentPlatformView];
    [v3 addObject:contentPlatformView2];
  }

  additionalPlatformViewOverRenderable = [(CRLCanvasRep *)self additionalPlatformViewOverRenderable];

  if (additionalPlatformViewOverRenderable)
  {
    additionalPlatformViewOverRenderable2 = [(CRLCanvasRep *)self additionalPlatformViewOverRenderable];
    [v3 addObject:additionalPlatformViewOverRenderable2];
  }

  additionalPlatformViewUnderRenderable = [(CRLCanvasRep *)self additionalPlatformViewUnderRenderable];

  if (additionalPlatformViewUnderRenderable)
  {
    additionalPlatformViewUnderRenderable2 = [(CRLCanvasRep *)self additionalPlatformViewUnderRenderable];
    [v3 addObject:additionalPlatformViewUnderRenderable2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  childReps = [(CRLCanvasRep *)self childReps];
  v11 = [childReps countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(childReps);
        }

        allPlatformViews = [*(*(&v18 + 1) + 8 * i) allPlatformViews];
        [v3 addObjectsFromArray:allPlatformViews];
      }

      v12 = [childReps countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];

  if (canvasController)
  {
    shouldSuppressFontSmoothing = [canvasController shouldSuppressFontSmoothing];
  }

  else
  {
    shouldSuppressFontSmoothing = 1;
  }

  return shouldSuppressFontSmoothing;
}

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type
{
  v5 = [(CRLCanvasRep *)self repForSelecting:point.x];
  isSelected = [v5 isSelected];

  if (type == 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = isSelected;
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
  info = [(CRLCanvasRep *)self info];
  v3 = sub_10012602C(info);

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

- (BOOL)handleContextMenuClickAtPoint:(CGPoint)point withPlatformObject:(id)object onKnob:(id)knob
{
  v6 = [(CRLCanvasRep *)self repForSelecting:object];
  v7 = v6;
  if (v6 && ([v6 isSelectedIgnoringLocking] & 1) == 0)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];

    info = [v7 info];
    v11 = [canvasEditor selectionPathWithInfo:info];
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    [editorController setSelectionPath:v11];
  }

  return v7 != 0;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  layout = [(CRLCanvasRep *)self layout];
  infoGeometryBeforeDynamicOperation = [layout infoGeometryBeforeDynamicOperation];
  v7 = infoGeometryBeforeDynamicOperation;
  if (infoGeometryBeforeDynamicOperation)
  {
    geometry = infoGeometryBeforeDynamicOperation;
  }

  else
  {
    info = [(CRLCanvasRep *)self info];
    geometry = [info geometry];
  }

  v10 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v10;
  v13[2] = *&transform->tx;
  v11 = [geometry geometryByAppendingTransform:v13];

  return v11;
}

- (CGPoint)centerForRotation
{
  layout = [(CRLCanvasRep *)self layout];
  [layout centerForRotation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info
{
  if (!self->mShowDragAndDropHighlight)
  {
    self->mShowDragAndDropHighlight = 1;
    v6 = [(CRLCanvasRep *)self interactiveCanvasController:info];
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

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateOverlayLayersForRep:self];
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
    p_highlightRenderable = [(CRLCanvasRep *)self p_highlightRenderable];
    v5 = self->mDragAndDropHighlightRenderable;
    self->mDragAndDropHighlightRenderable = p_highlightRenderable;

    mDragAndDropHighlightRenderable = self->mDragAndDropHighlightRenderable;
  }

  return mDragAndDropHighlightRenderable;
}

- (id)p_highlightRenderable
{
  newHighlightPathInScaledSpace = [(CRLCanvasRep *)self newHighlightPathInScaledSpace];
  v4 = [CRLDragAndDropCanvasHighlightDecorator alloc];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [(CRLDragAndDropCanvasHighlightDecorator *)v4 initWithInteractiveCanvasController:interactiveCanvasController highlightPath:newHighlightPathInScaledSpace];

  CFRelease(newHighlightPathInScaledSpace);
  dragAndDropHighlightRenderable = [(CRLDragAndDropCanvasHighlightDecorator *)v6 dragAndDropHighlightRenderable];

  return dragAndDropHighlightRenderable;
}

- (NSArray)hyperlinkRegions
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  if (v5 && ([v5 hyperlinkURL], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "hyperlinkURL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "absoluteString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v7, v10))
  {
    v11 = objc_opt_class();
    layout = [(CRLCanvasRep *)self layout];
    v13 = sub_100014370(v11, layout);

    if (v13)
    {
      i_wrapPath = [v13 i_wrapPath];
      v15 = [CRLHyperlinkRegion alloc];
      hyperlinkURL = [v5 hyperlinkURL];
      v17 = [(CRLHyperlinkRegion *)v15 initWithURL:hyperlinkURL bezierPath:i_wrapPath];

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
  info = [(CRLCanvasRep *)self info];
  isSupported = [info isSupported];

  return isSupported ^ 1;
}

- (CGPoint)p_centerForPreviewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v5 = sub_100120414(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  if (width < 50.0 && height < 50.0)
  {
    v6 = v6 + (50.0 - height) * -0.5;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point
{
  v4 = [NSMutableArray array:point.x];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  repForSelecting = [(CRLCanvasRep *)self repForSelecting];
  v7 = objc_opt_class();
  info = [repForSelecting info];
  v9 = sub_100014370(v7, info);

  if ([v9 allowedToBeDragAndDropped])
  {
    selfCopy = self;
    if ([repForSelecting isSelected] && (objc_msgSend(interactiveCanvasController, "canvasEditor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canvasEditorCanCopyWithSender:", 0), v10, v11))
    {
      v57 = repForSelecting;
      v59 = v4;
      selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
      editorController = [interactiveCanvasController editorController];
      selectionPath = [editorController selectionPath];
      v15 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

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
      repForSelecting = v57;
      v4 = v59;
    }

    else
    {
      layerHost = [interactiveCanvasController layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      delegate = [asiOSCVC delegate];

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate currentDocumentMode], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "allowsDragOnUnselectedReps"), v27, v28) && (objc_msgSend(v9, "shouldBeIgnoredWhenCopying") & 1) == 0)
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
      v29 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v23];
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
      v58 = repForSelecting;

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

            v45 = [interactiveCanvasController repForInfo:*(*(&v64 + 1) + 8 * k)];
            unscaledPathToIncludeForSystemPreviewOutline = [v45 unscaledPathToIncludeForSystemPreviewOutline];
            if (unscaledPathToIncludeForSystemPreviewOutline)
            {
              [v38 addObject:unscaledPathToIncludeForSystemPreviewOutline];
            }

            if ([v40 count] == 1)
            {
              backgroundColorForDragPreview = [v45 backgroundColorForDragPreview];

              v39 = backgroundColorForDragPreview;
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v42);
      }

      v63 = 0;
      v48 = [(CRLItemProviderItemWriter *)v61 createItemProviderWithCopyOfBoardItems:v40 fromInteractiveCanvasController:interactiveCanvasController outCopiedBoardItems:&v63];
      v49 = v63;
      if (v48)
      {
        v4 = [(CRLCanvasRep *)selfCopy dragItemsForBeginningDragWithItemProvider:v48 deepCopiedBoardItems:v49 withUnscaledTracedPaths:v38 previewBackgroundColor:v39 localObjectProvider:0];
        repForSelecting = v58;
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

        repForSelecting = v58;
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

- (id)dragItemsForBeginningDragWithItemProvider:(id)provider deepCopiedBoardItems:(id)items withUnscaledTracedPaths:(id)paths previewBackgroundColor:(id)color localObjectProvider:(id)objectProvider
{
  providerCopy = provider;
  itemsCopy = items;
  pathsCopy = paths;
  colorCopy = color;
  objectProviderCopy = objectProvider;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v14 = [(CRLCanvasRep *)self p_newImagerToGenerateSystemPreviewOfBoardItems:itemsCopy];
  [v14 unscaledClipRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  newImage = [v14 newImage];
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_10031C78C;
  v68[4] = sub_10031C79C;
  v69 = 0;
  v24 = dispatch_semaphore_create(0);
  if (newImage)
  {
    v25 = objc_alloc_init(UIView);
    layer = [v25 layer];
    [layer setContents:newImage];

    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController2 viewScale];
    [v25 setFrame:{sub_10011FFD8(v16, v18, v20, v22, v28)}];

    v29 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100324878;
    block[3] = &unk_1018560F8;
    v57 = pathsCopy;
    v58 = itemsCopy;
    v62 = v68;
    v63 = v16;
    v64 = v18;
    v65 = v20;
    v66 = v22;
    v59 = interactiveCanvasController;
    v67 = newImage;
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
      sub_101353B88(itemsCopy, v31);
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
    [CRLAssertionHandler handleFailureInFunction:v30 file:v34 lineNumber:4430 isFatal:0 description:"Unable to make a preview drag image for infos %@", itemsCopy, colorCopy];

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
  v38 = interactiveCanvasController;
  v51 = v38;
  selfCopy = self;
  v39 = colorCopy;
  v53 = v39;
  v40 = objectProviderCopy;
  v54 = v40;
  v41 = [(CRLiOSCanvasDragItem *)v35 initWithItemProvider:providerCopy previewGeneratingBlock:v48];
  v70 = v41;
  v42 = [NSArray arrayWithObjects:&v70 count:1];

  _Block_object_dispose(v68, 8);

  return v42;
}

- (id)p_newImagerToGenerateSystemPreviewOfBoardItems:(id)items
{
  itemsCopy = items;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvas = [(CRLCanvasRep *)self canvas];
  v7 = [CRLCanvasImager alloc];
  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  board = [interactiveCanvasController2 board];
  v10 = [(CRLCanvasImager *)v7 initWithBoard:board];

  [(CRLCanvasImager *)v10 setInfos:itemsCopy];
  [interactiveCanvasController viewScale];
  [(CRLCanvasImager *)v10 setViewScale:?];
  canvas2 = [(CRLCanvasImager *)v10 canvas];
  [canvas2 setSuppressesShadowsAndReflections:1];
  [canvas2 setShouldRenderInvisibleContentForNonInteractiveCanvas:1];
  [canvas viewScale];
  [canvas2 setI_viewScaleForAudioObjectsInNonInteractiveCanvas:?];
  [canvas contentsScale];
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

  canvas3 = [(CRLCanvasImager *)v10 canvas];
  [canvas3 viewScale];
  v25 = sub_10011FFD8(v18, v20, v21, v22, 1.0 / v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(CRLCanvasImager *)v10 setUnscaledClipRect:v25, v27, v29, v31];

  return v10;
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  layout = [(CRLCanvasRep *)self layout];
  i_wrapPath = [layout i_wrapPath];
  v5 = [i_wrapPath copy];

  if (!v5 || [v5 isEmpty])
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v6 = [CRLBezierPath bezierPathWithRect:?];

    v5 = v6;
  }

  if (layout)
  {
    [layout transformInRoot];
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

- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)point withTouchType:(int64_t)type
{
  v5 = [(CRLCanvasRep *)self repForDragging:type];
  if (v5)
  {
    demandsExclusiveSelection = 1;
  }

  else
  {
    repForSelecting = [(CRLCanvasRep *)self repForSelecting];
    demandsExclusiveSelection = [repForSelecting demandsExclusiveSelection];
  }

  return demandsExclusiveSelection;
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
  selfCopy = self;
  v3 = sub_1008A45E4();

  return v3;
}

- (void)releaseFromAnchoringTableIfNeededAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  sub_1008A5258(x, y);
}

- (void)commitTableAnchoringChangesAt:(CGPoint)at dueToResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  y = at.y;
  x = at.x;
  selfCopy = self;
  sub_1008A5F54(resizingCopy, x, y);
}

@end