@interface CRLShapeRep
- (BOOL)canBeUsedForImageMask;
- (BOOL)canBeginEditing;
- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children;
- (BOOL)canDrawWithOtherShapeRep:(id)rep;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)i_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)i_targetsDropsToStroke;
- (BOOL)intersectsUnscaledRect:(CGRect)rect;
- (BOOL)isEditingPath;
- (BOOL)isInvisible;
- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible;
- (BOOL)isPathEditable;
- (BOOL)p_canApplyFillToRenderable;
- (BOOL)p_canApplyStrokeToRenderable;
- (BOOL)p_currentlyDrawingSomeOtherShape;
- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)p_parentFreehandDrawingIsSelected;
- (BOOL)p_pathIsAxisAlignedRect;
- (BOOL)p_shouldDrawStrokeWide:(id)wide;
- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)playback;
- (BOOL)selectionIsAppropriateToShowInvisiblePathHighlight;
- (BOOL)shouldExpandHitRegionWhenSmall;
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldHitTestWithFill;
- (BOOL)shouldIgnoreICCSuppressSelectionKnobs;
- (BOOL)shouldShowAdditionalKnobs;
- (BOOL)shouldShowAdvancedGradientKnobs;
- (BOOL)shouldShowInvisiblePathHighlight;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldShowSmartShapeKnobs;
- (BOOL)shouldSuppressSelectionHighlightDuringMultiselection;
- (BOOL)skipsRerenderForTranslation;
- (BOOL)wantsRenderableToBeDescendedFromParentRepRenderable;
- (CGAffineTransform)naturalToEditablePathSpaceTransform;
- (CGPath)newHighlightPathInScaledSpace;
- (CGRect)aliasedAlignmentFrameInLayerFrame;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)layerFrameInScaledCanvasRelativeToParent;
- (CGRect)p_layerFrameInScaledCanvasForDirectlyManagedLayer:(BOOL)layer;
- (CGRect)p_scaledCanvasScrollViewBounds;
- (CGRect)strokeBoundsWithOptions:(unint64_t)options fallbackBounds:(CGRect)bounds;
- (CGRect)targetRectForEditMenu;
- (CGSize)p_sizeForDirectlyManagedImageFromRenderableSize:(CGSize)size;
- (CRLEditableBezierPathSource)editablePathSource;
- (CRLShapeLayout)shapeLayout;
- (CRLShapeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (CRLShapeRepFreehandDrawingDynamicFillErasingDelegate)freehandDrawingDynamicFillErasingDelegate;
- (Class)layerClass;
- (_NSRange)i_commitAvailableFreehandDrawingPointsIfPossible;
- (_NSRange)i_uncommittedFreehandDrawingPointRange;
- (_TtC8Freeform12CRLShapeItem)shapeInfo;
- (double)opacity;
- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit;
- (double)strokeEnd;
- (id)additionalRenderablesOverRenderable;
- (id)colorBehindLayer:(id)layer;
- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object;
- (id)dataForUpdateUploadIndicator;
- (id)dynamicMoveLineSegmentDidBegin;
- (id)dynamicMoveSmartShapeKnobDidBegin;
- (id)dynamicResizeDidBegin;
- (id)i_brushStrokeFromStroke:(id)stroke;
- (id)i_strokeForRenderingIncludingPlaybackFromStroke:(id)stroke;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info;
- (id)newTrackerForKnob:(id)knob;
- (id)overlayRenderables;
- (id)p_pathEditor;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (unint64_t)enabledKnobMask;
- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)stroke;
- (unint64_t)p_renderingDestination;
- (void)addSelectionKnobsToArray:(id)array;
- (void)beginEditing;
- (void)beginEditingWithString:(id)string;
- (void)didUpdateRenderable:(id)renderable;
- (void)documentModeDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)drawInLayerContext:(CGContext *)context;
- (void)dynamicDragDidBegin;
- (void)dynamicDragDidEndAt:(CGPoint)at;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicMoveLineSegmentDidEndWithTracker:(id)tracker;
- (void)dynamicMovePathKnobDidBegin;
- (void)dynamicMovePathKnobDidEndWithTracker:(id)tracker;
- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)tracker;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)dynamicallyFreeTransformingWithTracker:(id)tracker;
- (void)dynamicallyMovedPathKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)dynamicallyMovingLineSegmentWithTracker:(id)tracker;
- (void)dynamicallyResizingWithTracker:(id)tracker;
- (void)dynamicallyRotatingWithTracker:(id)tracker;
- (void)dynamicallySetBezierPathSource:(id)source atUnscaledOrigin:(CGPoint)origin withCommittedPointRange:(_NSRange)range;
- (void)enqueuePathSourceChanges;
- (void)i_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)i_endApplyOpacity:(CGContext *)opacity appliedTransparencyLayer:(BOOL)layer;
- (void)i_forceInvalidateLayerFrame;
- (void)i_setIsCurrentlyBeingFreehandDrawn:(BOOL)drawn;
- (void)invalidateEffectLayersForChildren;
- (void)invalidateExteriorWrap;
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)p_beginDynamicallyResizingOrMovingLineEnd;
- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)p_endDynamicallyResizingOrMovingLineEnd;
- (void)p_forDragAndDropSetColor:(id)color;
- (void)p_forceSetNeedsDisplay;
- (void)p_forceSetNeedsDisplayInRect:(CGRect)rect;
- (void)p_handleAssetPreparationCompletion;
- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)processChangedProperty:(unint64_t)property;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setParentRep:(id)rep;
- (void)setShadowOnChildrenDisabled:(BOOL)disabled;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)updateRenderableGeometryFromLayout:(id)layout;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
- (void)willUpdateRenderable:(id)renderable;
@end

@implementation CRLShapeRep

- (CRLShapeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  canvasCopy = canvas;
  v21.receiver = self;
  v21.super_class = CRLShapeRep;
  v7 = [(CRLCanvasRep *)&v21 initWithLayout:layout canvas:canvasCopy];
  v8 = v7;
  if (v7)
  {
    shapeInfo = [(CRLShapeRep *)v7 shapeInfo];
    if (shapeInfo && ([(CRLShapeRep *)v8 shapeLayout], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = objc_alloc_init(NSUUID);
      mDownloadObserverIdentifier = v8->mDownloadObserverIdentifier;
      v8->mDownloadObserverIdentifier = v11;

      if ([canvasCopy isCanvasInteractive])
      {
        [(CRLShapeRep *)v8 p_listenForAssetChangesIfAppropriate];
      }

      v13 = objc_alloc_init(NSMutableDictionary);
      mHitTestCache = v8->mHitTestCache;
      v8->mHitTestCache = v13;

      size = CGRectZero.size;
      v8->mLastDynamicInvalidRect.origin = CGRectZero.origin;
      v8->mLastDynamicInvalidRect.size = size;
      v8->mShouldForceRenderableGeometryUpdate = 1;
      v8->mAllowsSimultaneousDrawing = 0;
      isFreehandDrawingShape = [shapeInfo isFreehandDrawingShape];
      v17 = off_10182F988;
      if (isFreehandDrawingShape)
      {
        v17 = off_10182F990;
      }

      v8->mIsFreehandDrawingShape = isFreehandDrawingShape;
      v18 = [objc_alloc(*v17) initWithShapeRep:v8];
      mHelper = v8->mHelper;
      v8->mHelper = v18;
    }

    else
    {
      mHelper = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (_TtC8Freeform12CRLShapeItem)shapeInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (CRLShapeLayout)shapeLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (void)setParentRep:(id)rep
{
  repCopy = rep;
  parentRep = [(CRLCanvasRep *)self parentRep];
  v19.receiver = self;
  v19.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v19 setParentRep:repCopy];
  if (parentRep != repCopy)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    if (![canvas isCanvasInteractive])
    {
LABEL_14:

      goto LABEL_15;
    }

    mIsFreehandDrawingShape = self->mIsFreehandDrawingShape;

    if (mIsFreehandDrawingShape)
    {
      v8 = objc_opt_class();
      layout = [(CRLCanvasRep *)self layout];
      stroke = [layout stroke];
      canvas = sub_100014370(v8, stroke);

      if (canvas)
      {
        inkType = [canvas inkType];
        v12 = ![PKInk crl_isSixChannelBlendingUsedByInkType:inkType];
      }

      else
      {
        v12 = 1;
      }

      shapeInfo = [(CRLShapeRep *)self shapeInfo];
      isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

      if (!v12 || isTreatedAsFillForFreehandDrawing)
      {
        v15 = objc_opt_class();
        v16 = sub_100013F00(v15, parentRep);
        v17 = objc_opt_class();
        v18 = sub_100013F00(v17, repCopy);
        if ((v12 & 1) == 0)
        {
          [v16 didRemoveSixChannelEnabledChildRep:self];
          [v18 didAddSixChannelEnabledChildRep:self];
        }

        if (isTreatedAsFillForFreehandDrawing)
        {
          [v16 didRemoveSixChannelSuppressingChildRep:self];
          [v18 didAddSixChannelSuppressingChildRep:self];
        }
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (CGRect)frameInUnscaledCanvas
{
  v10.receiver = self;
  v10.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v10 frameInUnscaledCanvas];
  v4 = v3;
  v6 = v5;
  if (!self->mFrameInUnscaledCanvasIsValid)
  {
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    v8 = shapeLayout;
    if (shapeLayout)
    {
      [shapeLayout transformInRoot];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    [v8 shapeFrameWithTransform:v9];
    self->mFrameInUnscaledCanvasRelativeToSuper = CGRectOffset(v11, -v4, -v6);
    self->mFrameInUnscaledCanvasIsValid = 1;
  }

  return CGRectOffset(self->mFrameInUnscaledCanvasRelativeToSuper, v4, v6);
}

- (CGRect)clipRect
{
  if (self->mIsFreehandDrawingShape)
  {
    [(CRLStyledRep *)self clipRectWithoutEffects];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLShapeRep;
    [(CRLStyledRep *)&v6 clipRect];
  }

  return CGRectInset(*&v2, -1.0, -1.0);
}

- (BOOL)i_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step
{
  [(CRLShapeRep *)self opacity];
  if (v7 >= 1.0)
  {
    return 0;
  }

  CGContextSetAlpha(opacity, v7);
  if (step)
  {
    return 0;
  }

  [(CRLCanvasRep *)self i_clipRectRecursive];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsNull(v16) || (v17.origin.x = x, v17.origin.y = y, v17.size.width = width, v17.size.height = height, CGRectIsInfinite(v17)))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (CGRectIsNull(v18))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101326A58();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101326A6C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101326AFC();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLShapeRep i_beginApplyOpacity:forDrawingInOneStep:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:277 isFatal:0 description:"Clip rects should never be null."];
    }

    CGContextBeginTransparencyLayer(opacity, 0);
  }

  else
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGContextBeginTransparencyLayerWithRect(opacity, v19, 0);
  }

  return 1;
}

- (void)i_endApplyOpacity:(CGContext *)opacity appliedTransparencyLayer:(BOOL)layer
{
  if (layer)
  {
    CGContextEndTransparencyLayer(opacity);
  }
}

- (id)colorBehindLayer:(id)layer
{
  v4 = objc_opt_class();
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];
  v7 = sub_100014370(v4, fill);

  if (v7 && [v7 isOpaque])
  {
    color = [v7 color];
  }

  else
  {
    color = 0;
  }

  return color;
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  childReps = [(CRLCanvasRep *)self childReps];
  v8 = [childReps count];

  if (v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10019497C;
    v18[3] = &unk_101843720;
    v9 = testCopy;
    v19 = v9;
    v10 = objc_retainBlock(v18);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100194998;
    v16[3] = &unk_101843720;
    v17 = v9;
    v11 = objc_retainBlock(v16);
    CGContextSaveGState(context);
    v12 = [(CRLShapeRep *)self i_beginApplyOpacity:context forDrawingInOneStep:0];
    v15.receiver = self;
    v15.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v15 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:v10];
    [(CRLShapeRep *)self i_endApplyOpacity:context appliedTransparencyLayer:v12];
    CGContextRestoreGState(context);
    v14.receiver = self;
    v14.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v14 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v13 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:testCopy];
  }
}

- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:test];
}

- (void)drawInLayerContext:(CGContext *)context
{
  if (![(CRLShapeRep *)self p_renderingDestination])
  {

    [(CRLShapeRep *)self p_drawInContext:context withContent:1 strokeDrawOptions:7 withOpacity:0];
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  childrenCopy = children;
  opacityCopy = opacity;
  contentCopy = content;
  testCopy = test;
  if (![(CRLShapeRep *)self isInvisible]|| !opacityCopy && ([(CRLShapeRep *)self opacity], v16 == 0.0))
  {
    [(CRLShapeRep *)self p_drawInContext:effects withContent:contentCopy strokeDrawOptions:options withOpacity:opacityCopy];
  }

  if (childrenCopy && (!self->mShadowOnChildrenDisabled || !only))
  {
    if (opacityCopy)
    {
      [(CRLShapeRep *)self recursivelyDrawChildrenInContext:effects keepingChildrenPassingTest:testCopy];
    }

    else
    {
      [(CRLShapeRep *)self p_drawChildrenWithoutOpacityInContext:effects keepingChildrenPassingTest:testCopy];
    }
  }
}

- (CGRect)strokeBoundsWithOptions:(unint64_t)options fallbackBounds:(CGRect)bounds
{
  v5 = [(CRLShapeRep *)self shapeLayout:bounds.origin.x];
  v6 = *&CGAffineTransformIdentity.c;
  v19[0] = *&CGAffineTransformIdentity.a;
  v19[1] = v6;
  v19[2] = *&CGAffineTransformIdentity.tx;
  [v5 shapeFrameWithTransform:v19 strokeDrawOptions:options];
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

- (id)imageOfStroke:(CGRect *)stroke
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke && [stroke shouldRender])
  {
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    [shapeLayout frame];
    x = v14;
    y = v15;
    width = v12;
    height = v13;
    v16 = 0;
    if (v12 > 0.0 && v13 > 0.0)
    {
      v17 = sub_10050DF80([(CRLShapeRep *)self p_bitmapContextOptionsForDrawingStroke:stroke]| 8u, v12, v13);
      [(CRLShapeRep *)self p_drawInContext:v17 withContent:0 strokeDrawOptions:7 withOpacity:0];
      Image = CGBitmapContextCreateImage(v17);
      v16 = [CRLImage imageWithCGImage:Image];
      CGContextRelease(v17);
      CGImageRelease(Image);
    }
  }

  else
  {
    v16 = 0;
  }

  stroke->origin.x = x;
  stroke->origin.y = y;
  stroke->size.width = width;
  stroke->size.height = height;

  return v16;
}

- (BOOL)isInvisible
{
  if (!self->mIsInvisibleCacheValid)
  {
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];

    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    fill = [shapeLayout fill];

    [(CRLShapeRep *)self opacity];
    isClear = 1;
    if (v8 != 0.0)
    {
      if (stroke && ([stroke shouldRender] & 1) != 0)
      {
        isClear = 0;
      }

      else if (fill)
      {
        isClear = [fill isClear];
      }

      else
      {
        isClear = 1;
      }
    }

    self->mIsInvisibleCache = isClear;
    self->mIsInvisibleCacheValid = 1;
  }

  if (self->mIsInvisibleCache)
  {
    return 1;
  }

  shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
  isInvisible = [shapeLayout2 isInvisible];

  return isInvisible;
}

- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible
{
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke)
  {
    isMoreOptimalToDrawWithOtherStrokesIfPossible = [objc_opt_class() isMoreOptimalToDrawWithOtherStrokesIfPossible];
  }

  else
  {
    isMoreOptimalToDrawWithOtherStrokesIfPossible = 0;
  }

  return isMoreOptimalToDrawWithOtherStrokesIfPossible;
}

- (BOOL)canDrawWithOtherShapeRep:(id)rep
{
  repCopy = rep;
  if (!-[CRLShapeRep isPartiallyAnimated](self, "isPartiallyAnimated") && ([repCopy isPartiallyAnimated] & 1) == 0)
  {
    childReps = [(CRLCanvasRep *)self childReps];
    if ([childReps count])
    {
      v5 = 0;
    }

    else
    {
      childReps2 = [repCopy childReps];
      v9 = [childReps2 count];

      if (v9)
      {
        goto LABEL_3;
      }

      [(CRLShapeRep *)self opacity];
      v11 = v10;
      [repCopy opacity];
      if (v11 != v12 && vabdd_f64(v11, v12) >= fabs(v12 * 0.000000999999997))
      {
        goto LABEL_3;
      }

      [(CRLShapeRep *)self strokeEnd];
      if (v13 < 1.0)
      {
        goto LABEL_3;
      }

      [repCopy strokeEnd];
      if (v14 < 1.0)
      {
        goto LABEL_3;
      }

      childReps = [(CRLShapeRep *)self shapeLayout];
      shapeLayout = [repCopy shapeLayout];
      fill = [childReps fill];
      if (fill)
      {
        fill2 = [childReps fill];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v18 = 0;
      }

      fill3 = [shapeLayout fill];
      if (fill3)
      {
        fill4 = [shapeLayout fill];
        objc_opt_class();
        v21 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v21 = 0;
      }

      if ((v18 | v21))
      {
        v5 = 0;
      }

      else
      {
        stroke = [childReps stroke];
        stroke2 = [shapeLayout stroke];
        v5 = [stroke canDrawWithOtherStroke:stroke2];
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 0;
LABEL_4:

  return v5;
}

- (double)strokeEnd
{
  result = 1.0;
  if ((*(self + 344) & 3) == 1)
  {
    return self->mOverriddenValue;
  }

  return result;
}

- (double)opacity
{
  v17.receiver = self;
  v17.super_class = CRLShapeRep;
  [(CRLStyledRep *)&v17 opacity];
  if ((*(self + 344) & 3) == 2)
  {
    return self->mOverriddenValue;
  }

  v4 = v3;
  if ([(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
  {
    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

    if (isTreatedAsFillForFreehandDrawing)
    {
      v7 = objc_opt_class();
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
      currentTool = [freehandDrawingToolkit currentTool];
      v11 = sub_100013F00(v7, currentTool);

      if (v11)
      {
        [v11 actualOpacityValueForOutlineFills];
        v4 = v12;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101326B24();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101326B4C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101326BE8();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v13);
        }

        v14 = [NSString stringWithUTF8String:"[CRLShapeRep opacity]"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:516 isFatal:0 description:"invalid nil value for '%{public}s'", "pathTool"];
      }
    }
  }

  return v4;
}

- (void)i_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  x = delta.x;
  headCopy = head;
  strokeCopy = stroke;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  v13 = shapeLayout;
  if (headCopy)
  {
    strokeHeadLineEnd = [shapeLayout strokeHeadLineEnd];
    if (!strokeHeadLineEnd)
    {
      goto LABEL_7;
    }

    v15 = strokeHeadLineEnd;
    [v13 headLineEndPoint];
    v17 = v16;
    v19 = v18;
    [v13 headLineEndAngle];
  }

  else
  {
    strokeTailLineEnd = [shapeLayout strokeTailLineEnd];
    if (!strokeTailLineEnd)
    {
      goto LABEL_7;
    }

    v15 = strokeTailLineEnd;
    [v13 tailLineEndPoint];
    v17 = v22;
    v19 = v23;
    [v13 tailLineEndAngle];
  }

  v24 = v20;
  v25 = sub_10011F334(v17, v19, x);
  v27 = v26;
  stroke = [v13 stroke];
  [stroke width];
  [v15 scaleForStrokeWidth:?];
  v30 = v29;

  [strokeCopy paintLineEnd:v15 atPoint:context atAngle:drawingCopy withScale:v25 inContext:v27 useFastDrawing:{v24, v30}];
LABEL_7:
}

- (BOOL)p_shouldDrawStrokeWide:(id)wide
{
  color = [wide color];
  if ([color colorRGBSpace] == 1)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    canvasIsWideGamut = [canvas canvasIsWideGamut];
  }

  else
  {
    canvasIsWideGamut = 0;
  }

  return canvasIsWideGamut;
}

- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)stroke
{
  if ([(CRLShapeRep *)self p_shouldDrawStrokeWide:stroke])
  {
    return 35;
  }

  else
  {
    return 3;
  }
}

- (_NSRange)i_commitAvailableFreehandDrawingPointsIfPossible
{
  v6.location = [(CRLShapeRep *)self i_uncommittedFreehandDrawingPointRange];
  v3 = NSIntersectionRange(v6, self->mAvailableToCommitPointRange);
  self->mCommittedPointRange = NSUnionRange(self->mCommittedPointRange, v3);
  location = v3.location;
  length = v3.length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)i_brushStrokeFromStroke:(id)stroke
{
  strokeCopy = stroke;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, strokeCopy);
  if (!v5)
  {
    v6 = [strokeCopy cap];
    v7 = &off_101852288;
    if (v6 != 1)
    {
      v7 = &off_101852280;
    }

    v8 = *v7;
    v9 = [CRLBrushStroke alloc];
    color = [strokeCopy color];
    [strokeCopy width];
    v12 = v11;
    v13 = [strokeCopy cap];
    join = [strokeCopy join];
    pattern = [strokeCopy pattern];
    [strokeCopy miterLimit];
    v5 = [(CRLBrushStroke *)v9 initWithName:v8 color:color width:v13 cap:join join:pattern pattern:v12 miterLimit:v16];
  }

  return v5;
}

- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children
{
  childrenCopy = children;
  if (![(CRLShapeRepHelperProtocol *)self->mHelper drawsInOneStep])
  {
    return 0;
  }

  v5 = objc_opt_class();
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];
  v8 = sub_100014370(v5, fill);

  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = !childrenCopy;
  }

  if (!v10)
  {
    childReps = [(CRLCanvasRep *)self childReps];
    v9 = [childReps count] == 0;
  }

  return v9;
}

- (BOOL)shouldShowShadow
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  shouldShowShadow = [(CRLStyledRep *)&v7 shouldShowShadow];
  if (shouldShowShadow)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    shouldSuppressBackgrounds = [canvas shouldSuppressBackgrounds];

    if (shouldSuppressBackgrounds)
    {
      LOBYTE(shouldShowShadow) = 0;
    }

    else
    {
      LOBYTE(shouldShowShadow) = ![(CRLShapeRep *)self shadowOnChildrenDisabled];
    }
  }

  return shouldShowShadow;
}

- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)playback
{
  playbackCopy = playback;
  if ((*(self + 344) & 3) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [playbackCopy width];
    v7 = v6;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v5 = v7 * v9 < 5.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)i_strokeForRenderingIncludingPlaybackFromStroke:(id)stroke
{
  strokeCopy = stroke;
  v5 = strokeCopy;
  if ([(CRLShapeRep *)self p_shouldUpgradeStrokeForPlayback:strokeCopy])
  {
    v5 = [(CRLShapeRep *)self i_brushStrokeFromStroke:strokeCopy];
  }

  return v5;
}

- (void)setNeedsDisplay
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  i_isInsideResizingFreehandDrawing = [shapeLayout i_isInsideResizingFreehandDrawing];

  if (![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn]&& (i_isInsideResizingFreehandDrawing & 1) == 0)
  {

    [(CRLShapeRep *)self p_forceSetNeedsDisplay];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
  {

    [(CRLShapeRep *)self p_forceSetNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)p_forceSetNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CRLShapeRep;
  [(CRLStyledRep *)&v3 setNeedsDisplay];
  self->mNeedsDisplay = 1;
}

- (void)p_forceSetNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v8 setNeedsDisplayInRect:?];
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (!CGRectIsEmpty(v9))
  {
    self->mNeedsDisplay = 1;
  }
}

- (CGRect)p_layerFrameInScaledCanvasForDirectlyManagedLayer:(BOOL)layer
{
  layerCopy = layer;
  if ([(CRLCanvasRep *)self isBeingRotated]|| !layerCopy)
  {
    v44.receiver = self;
    v44.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v44 layerFrameInScaledCanvas];
    v16 = v23;
    v18 = v24;
    v20 = v25;
    v22 = v26;
  }

  else
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [(CRLShapeRep *)self frameInUnscaledCanvas];
    [canvas convertUnscaledToBoundsRect:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 contentsScale];
    v16 = sub_1001224A4(v7, v9, v11, v13, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  if ([(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
  {
    [(CRLShapeRep *)self p_scaledCanvasScrollViewBounds];
    v48.origin.x = v27;
    v48.origin.y = v28;
    v48.size.width = v29;
    v48.size.height = v30;
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    v46 = CGRectUnion(v45, v48);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    canvas3 = [(CRLCanvasRep *)self canvas];
    [canvas3 contentsScale];
    v16 = sub_1001224A4(x, y, width, height, v36);
    v18 = v37;
    v20 = v38;
    v22 = v39;
  }

  v40 = v16;
  v41 = v18;
  v42 = v20;
  v43 = v22;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)layerFrameInScaledCanvas
{
  directlyManagesLayerContent = [(CRLShapeRep *)self directlyManagesLayerContent];

  [(CRLShapeRep *)self p_layerFrameInScaledCanvasForDirectlyManagedLayer:directlyManagesLayerContent];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)layerFrameInScaledCanvasRelativeToParent
{
  v15.receiver = self;
  v15.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v15 layerFrameInScaledCanvasRelativeToParent];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CRLShapeRep *)self isInvisible]&& sub_100122890())
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)skipsRerenderForTranslation
{
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  shouldSupportedDynamicOperationsEnqueueCommandsInRealTime = [canvasController shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  if (shouldSupportedDynamicOperationsEnqueueCommandsInRealTime)
  {
    parentRep = [(CRLCanvasRep *)self parentRep];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v8 layoutInRootChangedFrom:from to:to translatedOnly:?];
  if (!only)
  {
    self->mFrameInUnscaledCanvasIsValid = 0;
  }

  mCachedWrapPathInRoot = self->mCachedWrapPathInRoot;
  self->mCachedWrapPathInRoot = 0;
}

- (unint64_t)p_renderingDestination
{
  if (([(CRLShapeRepHelperProtocol *)self->mHelper hasLegacyFreehandDrawingBrushStroke]& 1) == 0)
  {
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];
    v5 = [(CRLShapeRep *)self p_shouldUpgradeStrokeForPlayback:stroke];

    if (!v5)
    {
      return 0;
    }
  }

  [(CRLShapeRep *)self p_layerFrameInScaledCanvasForDirectlyManagedLayer:1];
  [(CRLShapeRep *)self p_sizeForDirectlyManagedImageFromRenderableSize:v6, v7];
  v9 = v8;
  v11 = v10;
  v12 = +[CRLBrushStroke brushStrokeUsesMetal];
  v13 = +[CRLCapabilities currentCapabilities];
  v14 = v13;
  if (v12)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasView = [interactiveCanvasController canvasView];
    metalDeviceForScreenWithCanvas = [canvasView metalDeviceForScreenWithCanvas];
    [v14 maximumMetalTextureSizeForDevice:metalDeviceForScreenWithCanvas];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    [v13 maximumHardcodedTextureSize];
    v19 = v22;
    v21 = v23;
  }

  if (v9 > v19 || v11 > v21)
  {
    return 0;
  }

  if ([(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
  {
    return 2;
  }

  if ([(CRLShapeRep *)self p_isInsidePlayingFreehandDrawing])
  {
    [(CRLShapeRep *)self strokeEnd];
    if (v26 > 0.0)
    {
      [(CRLShapeRep *)self strokeEnd];
      if (v27 < 1.0)
      {
        return 2;
      }
    }
  }

  return 1;
}

- (BOOL)directlyManagesLayerContent
{
  if (!self->mDirectlyManagesLayerContentCacheValid)
  {
    mDirectlyManagesLayerContent = self->mDirectlyManagesLayerContent;
    if ([(CRLShapeRep *)self p_renderingDestination]- 1 < 2)
    {
      goto LABEL_3;
    }

    if ((*(self + 344) & 3) == 2)
    {
      self->mDirectlyManagesLayerContent = 0;
      if (!mDirectlyManagesLayerContent)
      {
        return self->mDirectlyManagesLayerContent;
      }

      goto LABEL_6;
    }

    if ([(CRLShapeRep *)self isInvisible]|| [(CRLShapeRep *)self p_canApplyStrokeToRenderable]&& [(CRLShapeRep *)self p_canApplyFillToRenderable])
    {
LABEL_3:
      directlyManagesLayerContent = 1;
    }

    else
    {
      v8.receiver = self;
      v8.super_class = CRLShapeRep;
      directlyManagesLayerContent = [(CRLCanvasRep *)&v8 directlyManagesLayerContent];
    }

    self->mDirectlyManagesLayerContent = directlyManagesLayerContent;
    if (mDirectlyManagesLayerContent && !directlyManagesLayerContent)
    {
LABEL_6:
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      v6 = [interactiveCanvasController renderableForRep:self];

      [v6 setContents:0];
      [v6 setBackgroundColor:0];
      [v6 setBorderColor:0];
      [v6 setBorderWidth:0.0];
      [v6 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
    }
  }

  return self->mDirectlyManagesLayerContent;
}

- (BOOL)wantsRenderableToBeDescendedFromParentRepRenderable
{
  info = [(CRLCanvasRep *)self info];
  v3 = objc_opt_class();
  parentInfo = [info parentInfo];
  v5 = sub_100014370(v3, parentInfo);

  if (v5)
  {
    v6 = [v5 isNonGroupedChild:info] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (Class)layerClass
{
  v6.receiver = self;
  v6.super_class = CRLShapeRep;
  layerClass = [(CRLCanvasRep *)&v6 layerClass];
  p_renderingDestination = [(CRLShapeRep *)self p_renderingDestination];
  if (p_renderingDestination == 1 || p_renderingDestination == 2)
  {
    layerClass = objc_opt_class();
  }

  return layerClass;
}

- (void)i_forceInvalidateLayerFrame
{
  self->mShouldForceRenderableGeometryUpdate = 1;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (BOOL)p_currentlyDrawingSomeOtherShape
{
  parentRep = [(CRLCanvasRep *)self parentRep];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
    if ([freehandDrawingToolkit isInDrawingMode] && !-[CRLCanvasRep isInDynamicOperation](self, "isInDynamicOperation") && objc_msgSend(interactiveCanvasController, "isInDynamicOperation") && (objc_msgSend(freehandDrawingToolkit, "currentTool"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, (v8 - 11) <= 0xFFFFFFFFFFFFFFFDLL))
    {
      tmCoordinator = [interactiveCanvasController tmCoordinator];
      controllingTM = [tmCoordinator controllingTM];
      tracker = [controllingTM tracker];

      if (tracker)
      {
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (CGSize)p_sizeForDirectlyManagedImageFromRenderableSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  v7 = sub_10011F340(width, height, v6);
  v8 = sub_10012211C(v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)viewScaleDidChange
{
  v3.receiver = self;
  v3.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v3 viewScaleDidChange];
  self->mShouldForceRenderableGeometryUpdate = 1;
}

- (void)updateRenderableGeometryFromLayout:(id)layout
{
  layoutCopy = layout;
  if (![(CRLShapeRep *)self p_shouldSkipRenderableRecalculations])
  {
    v7.receiver = self;
    v7.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v7 updateRenderableGeometryFromLayout:layoutCopy];
    canvas = [(CRLCanvasRep *)self canvas];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100196738;
    v6[3] = &unk_10183AB38;
    v6[4] = self;
    [canvas performBlockAfterLayoutIfNecessary:v6];
  }

  [(CRLShapeRep *)self p_invalidateHitTestCache];
}

- (void)willUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  if (self->mDirectlyManagesLayerContentCacheValid)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101326C10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326C24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101326CB4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeRep willUpdateRenderable:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:925 isFatal:0 description:"didn't clean up"];
  }

  [(CRLShapeRep *)self directlyManagesLayerContent];
  self->mDirectlyManagesLayerContentCacheValid = 1;
  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v8 willUpdateRenderable:renderableCopy];
}

- (void)didUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  v157.receiver = self;
  v157.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v157 didUpdateRenderable:renderableCopy];
  if (![(CRLShapeRep *)self p_shouldSkipRenderableRecalculations])
  {
    [(CRLShapeRep *)self opacity];
    v6 = v5;
    [renderableCopy opacity];
    v8 = v7;
    if (v6 != v8)
    {
      *&v8 = v6;
      [renderableCopy setOpacity:v8];
    }

    if ((*(self + 344) & 3) != 0)
    {
      contents = [renderableCopy contents];
      v10 = contents != 0;
    }

    else
    {
      v10 = 0;
    }

    if (![(CRLShapeRep *)self isInvisible]|| v10)
    {
      if (!-[CRLShapeRep directlyManagesLayerContent](self, "directlyManagesLayerContent") && ([renderableCopy crl_tilingSafeHasContents] & 1) == 0)
      {
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        layer = [renderableCopy layer];
        [interactiveCanvasController setNeedsDisplayOnLayer:layer];
      }
    }

    else
    {
      [renderableCopy setContents:0];
    }

    if (self->mIsFreehandDrawingShape)
    {
      canvas = [(CRLCanvasRep *)self canvas];
      allReps = [canvas allReps];
      v15 = [allReps count];

      if (v15 >= 0x5DD)
      {
        v16 = objc_opt_class();
        v17 = sub_100014370(v16, renderableCopy);
        v18 = v17;
        if (v17 && ([v17 forceTiled] & 1) == 0)
        {
          [v18 setForceTiled:1];
        }
      }
    }

    if (self->mFillChanged)
    {
      v19 = ![(CRLShapeRep *)self directlyManagesLayerContent];
      if (self->mFillChanged)
      {
        directlyManagesLayerContent = [(CRLShapeRep *)self directlyManagesLayerContent];
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    directlyManagesLayerContent = 0;
LABEL_25:
    v139 = v19;
    mNeedsDisplay = self->mNeedsDisplay;
    v140 = renderableCopy;
    if (!(v10 | ![(CRLShapeRep *)self directlyManagesLayerContent]))
    {
      self->mNeedsDisplay = 0;
      p_renderingDestination = [(CRLShapeRep *)self p_renderingDestination];
      if (p_renderingDestination - 1 <= 1)
      {
        v23 = p_renderingDestination;
        layout = [(CRLCanvasRep *)self layout];
        stroke = [layout stroke];
        stroke2 = [(CRLShapeRep *)self i_strokeForRenderingIncludingPlaybackFromStroke:stroke];

        v27 = objc_opt_class();
        v28 = sub_100014370(v27, stroke2);
        if (v28)
        {
          if (mNeedsDisplay)
          {
            *v135 = *&CGAffineTransformIdentity.c;
            *&v156.a = *&CGAffineTransformIdentity.a;
            *&v156.c = *v135;
            *&v156.tx = *&CGAffineTransformIdentity.tx;
            tx = v156.tx;
            canvas2 = [(CRLCanvasRep *)self canvas];
            [canvas2 contentsScale];
            v31 = v30;
            canvas3 = [(CRLCanvasRep *)self canvas];
            [canvas3 contentsScale];
            *&v155.a = *&v156.a;
            *&v155.c = *v135;
            *&v155.tx = *&v156.tx;
            CGAffineTransformScale(&v156, &v155, v31, v33);

            [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
            t2 = v156;
            CGAffineTransformConcat(&v155, &t1, &t2);
            v156 = v155;
            shapeLayout = [(CRLShapeRep *)self shapeLayout];
            [shapeLayout pathBounds];
            v36 = v35;
            v38 = v37;

            t1 = v156;
            CGAffineTransformTranslate(&v155, &t1, -v36, -v38);
            v156 = v155;
            [renderableCopy frame];
            [(CRLShapeRep *)self p_sizeForDirectlyManagedImageFromRenderableSize:v39, v40];
            if (v41 <= 0.0 || (v43 = v42, v42 <= 0.0) || (v44 = v41, [(CRLShapeRep *)self strokeEnd], v45 <= 0.0) || [(CRLShapeRep *)self isInvisible]&& (*(self + 344) & 3) == 0)
            {
              if (v23 == 1)
              {
                [renderableCopy setContents:0];
              }

              else
              {
                +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101326CDC();
                }

                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_101326D04();
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101326D94();
                }

                v72 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130DA10(v72);
                }

                v73 = [NSString stringWithUTF8String:"[CRLShapeRep didUpdateRenderable:]"];
                v74 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
                [CRLAssertionHandler handleFailureInFunction:v73 file:v74 lineNumber:1097 isFatal:0 description:"Should only need to clear out images."];
              }
            }

            else
            {
              v137 = [v28 copy];
              shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
              pathSource = [shapeLayout2 pathSource];
              bezierPath = [pathSource bezierPath];
              v136 = [bezierPath copy];

              *&v49 = COERCE_DOUBLE(objc_alloc_init(CRLBrushStrokeLayoutOptions));
              if ([(CRLShapeRepHelperProtocol *)self->mHelper hasLegacyFreehandDrawingBrushStroke])
              {
                shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
                dynamicPatternOffsetsBySubpath = [shapeLayout3 dynamicPatternOffsetsBySubpath];

                if (dynamicPatternOffsetsBySubpath)
                {
                  shapeLayout4 = [(CRLShapeRep *)self shapeLayout];
                  dynamicPatternOffsetsBySubpath2 = [shapeLayout4 dynamicPatternOffsetsBySubpath];
                  v54 = [dynamicPatternOffsetsBySubpath2 copy];
                }

                else
                {
                  shapeLayout4 = [(CRLShapeRep *)self shapeInfo];
                  [shapeLayout4 strokePatternOffsetDistance];
                  dynamicPatternOffsetsBySubpath2 = [NSNumber numberWithDouble:?];
                  v158 = dynamicPatternOffsetsBySubpath2;
                  v54 = [NSArray arrayWithObjects:&v158 count:1];
                }

                v75 = v54;
                [(CRLBrushStrokeLayoutOptions *)v49 setPatternOffsetsBySubpath:v54];

                renderableCopy = v140;
              }

              [(CRLShapeRep *)self strokeEnd];
              [(CRLBrushStrokeLayoutOptions *)v49 setStrokeEnd:?];
              if (v23 == 1)
              {
                v76 = objc_opt_class();
                parentRep = [(CRLCanvasRep *)self parentRep];
                sub_100013F00(v76, parentRep);
                v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

                tx = v78;
                if ([(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
                {
                  queueForConcurrentlyDrawingChildrenIntoLayersIfSafe = 0;
                }

                else
                {
                  queueForConcurrentlyDrawingChildrenIntoLayersIfSafe = [*&v78 queueForConcurrentlyDrawingChildrenIntoLayersIfSafe];
                }

                v100 = v136;
                v145[0] = _NSConcreteStackBlock;
                v145[1] = 3221225472;
                v145[2] = sub_100197994;
                v145[3] = &unk_101843808;
                v150 = v44;
                v151 = v43;
                v145[4] = self;
                v146 = v137;
                v152 = v156;
                v147 = v136;
                v101 = *&v49;
                v148 = v49;
                v102 = v140;
                v149 = v102;
                v103 = objc_retainBlock(v145);
                v104 = v103;
                if (queueForConcurrentlyDrawingChildrenIntoLayersIfSafe)
                {
                  v143[0] = _NSConcreteStackBlock;
                  v143[1] = 3221225472;
                  v143[2] = sub_100197AAC;
                  v143[3] = &unk_10183B230;
                  v144 = v103;
                  [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe performAsync:v143];
                  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
                  layer2 = [v102 layer];
                  [interactiveCanvasController2 setNeedsDisplayOnLayer:layer2];

                  v101 = *&v49;
                }

                else
                {
                  (v103[2])(v103, 0);
                }

                v97 = tx;
              }

              else
              {
                tx = *&v49;
                v80 = [(CRLShapeRep *)self p_shouldDrawStrokeWide:v137];
                sub_10016BB74();
                *&v81 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                if (v80)
                {
                  v82 = 115;
                }

                else
                {
                  v82 = 70;
                }

                v83 = objc_opt_class();
                layer3 = [renderableCopy layer];
                sub_100013F00(v83, layer3);
                queueForConcurrentlyDrawingChildrenIntoLayersIfSafe = v85 = renderableCopy;

                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setOpaque:0];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setPresentsWithTransaction:0];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setAllowsNextDrawableTimeout:0];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setMaximumDrawableCount:3];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setDevice:v81];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setPixelFormat:v82];
                [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe setColorspace:0];
                nextDrawable = [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe nextDrawable];
                v87 = [CRLBrushStrokeDirectMetalRenderingContext alloc];
                [v85 frame];
                v89 = v88;
                v91 = v90;
                v93 = v92;
                v95 = v94;
                canvas4 = [(CRLCanvasRep *)self canvas];
                [canvas4 contentsScale];
                v155 = v156;
                v97 = *&v81;
                v99 = [(CRLBrushStrokeDirectMetalRenderingContext *)v87 initWithMetalDrawable:nextDrawable frame:&v155 transform:0 contentsScale:v81 destinationColorSpaceOverride:v89 metalDeviceOverride:v91, v93, v95, v98];

                v100 = v136;
                v101 = tx;
                [v137 paintPath:objc_msgSend(v136 directlyUsingContext:"CGPath") withLayoutOptions:{v99, *&tx}];
              }
            }

            self->mCommittedPointRange = self->mAvailableToCommitPointRange;
          }
        }

        else
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101326DBC();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101326DE4();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101326E74();
          }

          v62 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v62);
          }

          v63 = [NSString stringWithUTF8String:"[CRLShapeRep didUpdateRenderable:]"];
          v64 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v63 file:v64 lineNumber:989 isFatal:0 description:"We expect the stroke to be a CRLBrushStroke if drawing into a Metal layer or image."];
        }

        goto LABEL_83;
      }

      canvas5 = [(CRLCanvasRep *)self canvas];
      [canvas5 viewScale];
      v57 = v56;

      if ([(CRLShapeRep *)self p_canApplyFillToRenderable])
      {
        shapeLayout5 = [(CRLShapeRep *)self shapeLayout];
        fill = [shapeLayout5 fill];

        if (fill)
        {
          shapeLayout6 = [(CRLShapeRep *)self shapeLayout];
          fill2 = [shapeLayout6 fill];
          [fill2 applyToRenderable:renderableCopy withScale:v57];
        }

        else
        {
          [renderableCopy setContents:0];
          [renderableCopy setBackgroundColor:0];
        }
      }

      if ([(CRLShapeRep *)self p_canApplyStrokeToRenderable])
      {
        layout2 = [(CRLCanvasRep *)self layout];
        stroke2 = [layout2 stroke];

        if (stroke2)
        {
          canvas6 = [(CRLCanvasRep *)self canvas];
          [canvas6 contentsScale];
          v68 = v57 * v67;

          v156.a = 0.0;
          v156.b = 0.0;
          v155.a = 0.0;
          v155.b = 0.0;
          shapeLayout7 = [(CRLShapeRep *)self shapeLayout];
          v141 = 0;
          v142 = 0;
          [shapeLayout7 aliasPathForScale:&v142 adjustedStroke:&v141 adjustedPath:&v156 startDelta:&v155 endDelta:v68];
          v70 = v142;
          v71 = v141;

          [v70 applyToRepRenderable:renderableCopy withScale:v57];
        }

        else
        {
          [renderableCopy setBorderColor:0];
          [renderableCopy setBorderWidth:0.0];
        }

LABEL_83:
      }
    }

    interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
    freehandDrawingToolkit = [interactiveCanvasController3 freehandDrawingToolkit];

    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    v110 = [shapeInfo id];
    v111 = [freehandDrawingToolkit wantsToAnimateForObjectUUID:v110 animation:@"CRLFreehandDrawingToolkitAnimationNameOutlineFill"];

    shapeInfo2 = [(CRLShapeRep *)self shapeInfo];
    v113 = [shapeInfo2 id];
    v114 = [freehandDrawingToolkit wantsToAnimateForObjectUUID:v113 animation:@"CRLFreehandDrawingToolkitAnimationNameFloodFill"];

    renderableCopy = v140;
    if ((v111 & 1) == 0 && !v114)
    {
LABEL_103:
      self->mFillChanged = 0;
      self->mDirectlyManagesLayerContentCacheValid = 0;

      goto LABEL_104;
    }

    LODWORD(v116) = 1036831949;
    LODWORD(v115) = 0.25;
    LODWORD(v117) = 0.25;
    LODWORD(v118) = 1.0;
    v138 = [CAMediaTimingFunction functionWithControlPoints:v115];
    if ((v139 | directlyManagesLayerContent))
    {
      if (!directlyManagesLayerContent)
      {
        if (!v139)
        {
          v120 = 0;
          v129 = 0;
          v119 = 0;
          goto LABEL_94;
        }

        v120 = +[CATransition animation];
        [v120 setDuration:0.2];
        [v120 setTimingFunction:v138];
        [v120 setType:kCATransitionFade];
        v119 = @"contents";
LABEL_93:
        v129 = 1;
LABEL_94:
        shapeInfo3 = [(CRLShapeRep *)self shapeInfo];
        v131 = [shapeInfo3 id];
        if (v111)
        {
          v132 = @"CRLFreehandDrawingToolkitAnimationNameOutlineFill";
        }

        else
        {
          v132 = @"CRLFreehandDrawingToolkitAnimationNameFloodFill";
        }

        v133 = [freehandDrawingToolkit animationCompletionHandlerForObjectUUID:v131 animation:v132];

        if (v120 && v129)
        {
          +[CATransaction begin];
          renderableCopy = v140;
          [v140 addAnimation:v120 forKey:v119];
          [CATransaction setCompletionBlock:v133];
          +[CATransaction commit];
        }

        else
        {
          renderableCopy = v140;
          if (v133)
          {
            v133[2](v133);
          }
        }

        goto LABEL_103;
      }

      v119 = @"backgroundColor";
      v120 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
      [v120 setDuration:0.2];
      [v120 setTimingFunction:v138];
      presentationRenderable = [v140 presentationRenderable];
      backgroundColor = [presentationRenderable backgroundColor];
      v123 = v120;
    }

    else
    {
      v124 = 0.0;
      if (v111)
      {
        v125 = objc_opt_class();
        currentTool = [freehandDrawingToolkit currentTool];
        v127 = sub_100013F00(v125, currentTool);

        [v127 actualOpacityValueForOutlineFills];
        v124 = v128;
      }

      v119 = @"opacity";
      v120 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [v120 setDuration:0.2];
      [v120 setTimingFunction:v138];
      presentationRenderable = [NSNumber numberWithDouble:v124];
      v123 = v120;
      backgroundColor = presentationRenderable;
    }

    [v123 setFromValue:backgroundColor];

    goto LABEL_93;
  }

  self->mDirectlyManagesLayerContentCacheValid = 0;
LABEL_104:
}

- (BOOL)shouldHitTestWithFill
{
  if (!self->mIsFreehandDrawingShape)
  {
    return 1;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  freehandDrawingToolkit = [canvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (!isInDrawingMode)
  {
    return 1;
  }

  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];
  v9 = fill;
  if (fill)
  {
    v10 = [fill isClear] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  [(CRLShapeRep *)self opacity];
  v11 = 1;
  if (v12 != 0.0 && (v10 & 1) == 0)
  {
    stroke = [shapeLayout stroke];
    if ([stroke shouldRender])
    {
      color = [stroke color];
      [color alphaComponent];
      v11 = v15 <= 0.0;
    }
  }

  return v11;
}

- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  if (![(NSMutableDictionary *)self->mHitTestCache count])
  {
    return 0;
  }

  v10 = [NSValue valueWithCGPoint:x, y];
  v11 = [NSNumber numberWithBool:precisionCopy];
  v12 = [CRLPair pairWithFirst:v10 second:v11];

  v13 = [(NSMutableDictionary *)self->mHitTestCache objectForKey:v12];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    *value = [v13 BOOLValue];
  }

  return v14;
}

- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  valueCopy = value;
  v8 = [NSValue valueWithCGPoint:point.x, point.y];
  v9 = [NSNumber numberWithBool:precisionCopy];
  v12 = [CRLPair pairWithFirst:v8 second:v9];

  mHitTestCache = self->mHitTestCache;
  v11 = [NSNumber numberWithBool:valueCopy];
  [(NSMutableDictionary *)mHitTestCache setObject:v11 forKey:v12];
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  v44 = 0;
  if (![(CRLShapeRep *)self p_hitCacheGetCachedValue:&v44 forPoint:precision withPrecision:?])
  {
    canvas = [(CRLCanvasRep *)self canvas];
    v10 = canvas;
    v11 = &unk_101466728;
    if (!precisionCopy)
    {
      v11 = &unk_101466720;
    }

    v12 = *v11;
    [canvas viewScale];
    v14 = v12 / v13;
    [(CRLCanvasRep *)self naturalBounds];
    v47 = CGRectInset(v46, -v14, -v14);
    v45.x = x;
    v45.y = y;
    if (!CGRectContainsPoint(v47, v45))
    {
      LOBYTE(v8) = 0;
LABEL_40:

      return v8;
    }

    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    path = [shapeLayout path];
    cGPath = [path CGPath];

    if (!cGPath)
    {
      v8 = 0;
LABEL_39:
      [(CRLShapeRep *)self p_hitCacheSetCachedValue:v8 forPoint:precisionCopy withPrecision:x, y];

      goto LABEL_40;
    }

    v18 = sub_10050DF80(19, 1.0, 1.0);
    Data = CGBitmapContextGetData(v18);
    [shapeLayout pathBounds];
    CGContextTranslateCTM(v18, -v20, -v21);
    CGContextTranslateCTM(v18, -x, -y);
    if (([shapeLayout pathIsLineSegment] & 1) == 0 && (-[CRLShapeRep shouldHitTestWithFill](self, "shouldHitTestWithFill") || objc_msgSend(v10, "i_shouldIgnoreClickThrough")))
    {
      v31 = +[CRLColor blackColor];
      [v31 paintPath:cGPath inContext:v18];

      if (*Data)
      {
        v8 = 1;
LABEL_38:
        CGContextRelease(v18);
        goto LABEL_39;
      }

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];

    if ((v22 & 1) == 0 && ![(CRLStroke *)stroke shouldRender])
    {
      [(CRLCanvasRep *)self naturalBounds];
      if (v25 >= 1.0)
      {
        [(CRLCanvasRep *)self naturalBounds];
        if (v26 >= 1.0)
        {
          v8 = 0;
          goto LABEL_37;
        }
      }
    }

    if (!stroke)
    {
      stroke = objc_alloc_init(CRLStroke);
    }

    [(CRLStroke *)stroke width];
    if (v14 < v27)
    {
      v14 = v27;
    }

    if ([(CRLStroke *)stroke drawsOutsideStrokeBounds])
    {
      [(CRLStroke *)stroke width];
      if (v28 >= v14)
      {
        goto LABEL_28;
      }

      v43 = Data;
      v29 = [(CRLStroke *)stroke mutableCopy];
      [(CRLStroke *)v29 setWidth:v14];
      v30 = +[CRLColor blackColor];
      [(CRLStroke *)v29 setColor:v30];
    }

    else
    {
      v43 = Data;
      v32 = +[CRLColor blackColor];
      v33 = cGPath;
      join = [(CRLStroke *)stroke join];
      v30 = +[CRLStrokePattern solidPattern];
      v35 = join;
      cGPath = v33;
      v29 = [CRLStroke strokeWithColor:v32 width:1 cap:v35 join:v30 pattern:v14];

      stroke = v32;
    }

    stroke = v29;
    Data = v43;
LABEL_28:
    v8 = 1;
    [(CRLStroke *)stroke paintPath:cGPath wantsInteriorStroke:0 inContext:v18 useFastDrawing:1 parameterized:0 shouldReverseDrawOrder:0];
    v36 = *Data;
    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    if (v36)
    {
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    if ([shapeLayout pathIsOpen])
    {
      headLineEnd = [shapeInfo headLineEnd];
      if (headLineEnd)
      {

LABEL_34:
        v40 = +[CRLColor blackColor];
        CGContextSetStrokeColorWithColor(v18, [v40 CGColor]);

        v41 = CGPointZero.y;
        [(CRLShapeRep *)self i_drawLineEndForHead:1 withDelta:stroke andStroke:v18 inContext:1 useFastDrawing:CGPointZero.x, v41];
        [(CRLShapeRep *)self i_drawLineEndForHead:0 withDelta:stroke andStroke:v18 inContext:1 useFastDrawing:CGPointZero.x, v41];
        v8 = *Data != 0;
        goto LABEL_36;
      }

      tailLineEnd = [shapeInfo tailLineEnd];

      if (tailLineEnd)
      {
        goto LABEL_34;
      }
    }

    v8 = 0;
    goto LABEL_36;
  }

  LOBYTE(v8) = v44;
  return v8;
}

- (BOOL)shouldExpandHitRegionWhenSmall
{
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke)
  {
    v4 = [stroke shouldRender] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit
{
  y = point.y;
  x = point.x;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  stroke = [shapeLayout stroke];

  if (stroke)
  {
    [stroke width];
    v11 = v10 * 0.5;
  }

  else
  {
    v11 = 1.0;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v14 = 6.0 / v13;

  if (v14 >= v11)
  {
    v11 = v14;
  }

  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  [geometry size];
  v33.origin.x = sub_10011ECB4();
  v34 = CGRectInset(v33, -v11, -v11);
  v17 = v34.origin.x;
  v18 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;

  v35.origin.x = v17;
  v35.origin.y = v18;
  v35.size.width = width;
  v35.size.height = height;
  v32.x = x;
  v32.y = y;
  if (CGRectContainsPoint(v35, v32))
  {
    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    [shapeLayout2 pathBounds];
    v23 = v22;

    v24 = sub_10011F334(x, y, v23);
    v26 = v25;
    shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
    path = [shapeLayout3 path];
    [path distanceToPoint:0 elementIndex:0 tValue:0 threshold:v24 findClosestMatch:{v26, v11}];
    v30 = v29;

    if (hit && v30 <= v11)
    {
      *hit = 1;
    }
  }

  else
  {
    v30 = 3.40282347e38;
  }

  return v30;
}

- (BOOL)intersectsUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout frameInRoot];
  v27.origin.x = v9;
  v27.origin.y = v10;
  v27.size.width = v11;
  v27.size.height = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v13 = CGRectIntersectsRect(v26, v27);

  if (!v13)
  {
    return 0;
  }

  mCachedWrapPathInRoot = self->mCachedWrapPathInRoot;
  if (!mCachedWrapPathInRoot)
  {
    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    i_wrapPath = [shapeLayout2 i_wrapPath];
    v17 = [i_wrapPath copy];
    v18 = self->mCachedWrapPathInRoot;
    self->mCachedWrapPathInRoot = v17;

    v19 = self->mCachedWrapPathInRoot;
    layout = [(CRLCanvasRep *)self layout];
    v21 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    [(CRLBezierPath *)v19 transformUsingAffineTransform:&v23];

    mCachedWrapPathInRoot = self->mCachedWrapPathInRoot;
  }

  return [(CRLBezierPath *)mCachedWrapPathInRoot intersectsRect:[(CRLShapeRep *)self shouldHitTestWithFill:v23] hasFill:x, y, width, height];
}

- (void)processChangedProperty:(unint64_t)property
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  [(CRLStyledRep *)&v7 processChangedProperty:?];
  if (property > 0x18 || ((1 << property) & 0x1E30000) == 0)
  {
    goto LABEL_13;
  }

  [(CRLShapeRep *)self setNeedsDisplay];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas canvasInvalidatedForRep:self];

  if (property > 22)
  {
    if (property - 23 >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(property)
  {
    case 0x10uLL:
      self->mIsInvisibleCacheValid = 0;
      [(CRLCanvasRep *)self invalidateKnobPositions];
      v6 = 264;
      goto LABEL_12;
    case 0x15uLL:
LABEL_9:
      [(CRLCanvasRep *)self invalidateKnobPositions];
      self->mFrameInUnscaledCanvasIsValid = 0;
      if (property == 21)
      {
        [(CRLCanvasRep *)self invalidateKnobs];
      }

      break;
    case 0x16uLL:
      [(CRLShapeRep *)self p_listenForAssetChangesIfAppropriate];
      self->mFillChanged = 1;
      v6 = 395;
LABEL_12:
      *(&self->super.super.super.isa + v6) = 0;
      break;
  }

LABEL_13:
  [(CRLShapeRep *)self p_invalidateHitTestCache];
}

- (CGRect)aliasedAlignmentFrameInLayerFrame
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  styledLayout = [(CRLStyledRep *)self styledLayout];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  v7 = v6;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 viewScale];
  [styledLayout aliasedAlignmentFrameForScale:v7 * v9];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CRLCanvasRep *)self i_layerFrameInScaledCanvasIgnoringDragging];
  v19 = sub_10011F31C(v11, v13, v18);
  v21 = v15;
  v22 = v17;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)commands
{
  commandsCopy = commands;
  v9.receiver = self;
  v9.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v9 dynamicOperationDidBeginWithRealTimeCommands:?];
  if (self->mIsFreehandDrawingShape)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    [smartSelectionManager dynamicOperationDidBeginWithRealTimeCommands:commandsCopy];
  }
}

- (void)dynamicOperationDidEnd
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v7 dynamicOperationDidEnd];
  [(CRLShapeRepHelperProtocol *)self->mHelper dynamicOperationDidEnd];
  self->mShouldForceRenderableGeometryUpdate = 1;
  if (self->mIsFreehandDrawingShape)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    [smartSelectionManager dynamicOperationDidEnd];
  }
}

- (void)dynamicDragDidBegin
{
  if (![(CRLShapeRep *)self directlyManagesLayerContent])
  {
    [(CRLShapeRep *)self aliasedAlignmentFrameInLayerFrame];
    self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.x = v3;
    self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.y = v4;
    self->mOriginalAliasedAlignmentFrameInLayerFrame.size.width = v5;
    self->mOriginalAliasedAlignmentFrameInLayerFrame.size.height = v6;
  }

  v7 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v9 = sub_100014370(v7, parentRep);

  [v9 beginTrifurcatedRenderForChildRep:self];
  if (self->mIsFreehandDrawingShape)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    [smartSelectionManager dynamicDragDidBegin];
  }

  v14.receiver = self;
  v14.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v14 dynamicDragDidBegin];
}

- (void)dynamicDragDidEndAt:(CGPoint)at
{
  v15.receiver = self;
  v15.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v15 dynamicDragDidEndAt:at.x, at.y];
  v4 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v6 = sub_100014370(v4, parentRep);

  [v6 endTrifurcatedRenderForChildRep:self];
  if (![(CRLShapeRep *)self directlyManagesLayerContent])
  {
    [(CRLShapeRep *)self aliasedAlignmentFrameInLayerFrame];
    if (!sub_10011EE4C(self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.x, self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.y, self->mOriginalAliasedAlignmentFrameInLayerFrame.size.width, self->mOriginalAliasedAlignmentFrameInLayerFrame.size.height, v7, v8, v9, v10))
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      v12 = [interactiveCanvasController renderableForRep:self];

      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      layer = [v12 layer];
      [interactiveCanvasController2 setNeedsDisplayOnLayer:layer];
    }
  }
}

- (CGRect)targetRectForEditMenu
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathIsLineSegment = [shapeLayout pathIsLineSegment];

  if (pathIsLineSegment)
  {
    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    [shapeLayout2 headPoint];
    v11 = v10;
    v13 = v12;
    shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
    [shapeLayout3 tailPoint];
    v16 = v15;
    v18 = v17;

    if (![(CRLShapeRep *)self i_editMenuOverlapsEndKnobs])
    {
      v19 = sub_100120ABC(v11, v13, v16, v18, 0.5);
      x = sub_10011EC70(v19, v20, 1.0);
      y = v21;
      width = v22;
      height = v23;
    }
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)shouldShowSelectionHighlight
{
  if (self->mIsFreehandDrawingShape)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  if ([shapeLayout pathIsLineSegment])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    usesAlternateDrawableSelectionHighlight = [interactiveCanvasController usesAlternateDrawableSelectionHighlight];

    if (!usesAlternateDrawableSelectionHighlight)
    {
      return 0;
    }
  }

  else
  {
  }

  p_pathEditor = [(CRLShapeRep *)self p_pathEditor];

  if (p_pathEditor)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = CRLShapeRep;
  return [(CRLStyledRep *)&v10 shouldShowSelectionHighlight];
}

- (BOOL)shouldSuppressSelectionHighlightDuringMultiselection
{
  if (self->mIsFreehandDrawingShape)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathIsLineSegment = [shapeLayout pathIsLineSegment];

  if (pathIsLineSegment)
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  return [(CRLCanvasRep *)&v8 shouldSuppressSelectionHighlightDuringMultiselection];
}

- (BOOL)shouldIgnoreICCSuppressSelectionKnobs
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  shouldIgnoreICCSuppressSelectionKnobs = [(CRLCanvasRep *)&v7 shouldIgnoreICCSuppressSelectionKnobs];
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathIsLineSegment = [shapeLayout pathIsLineSegment];

  return (pathIsLineSegment | shouldIgnoreICCSuppressSelectionKnobs) & 1;
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  supportsResize = [shapeInfo supportsResize];

  if (!supportsResize || [(CRLShapeRep *)self isInvisible])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLShapeRep;
  return [(CRLStyledRep *)&v6 shouldHideSelectionHighlightDueToRectangularPath];
}

- (id)pathSourceForSelectionHighlightBehavior
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathSource = [shapeLayout pathSource];

  return pathSource;
}

- (CGPath)newHighlightPathInScaledSpace
{
  i_targetsDropsToStroke = [(CRLShapeRep *)self i_targetsDropsToStroke];
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  v5 = [shapeLayout computeWrapPathClosed:i_targetsDropsToStroke ^ 1];

  if (!v5 || [v5 elementCount] <= 1)
  {
    layout = [(CRLCanvasRep *)self layout];
    [layout boundsForStandardKnobs];
    v7 = [CRLBezierPath bezierPathWithRect:?];

    v5 = v7;
  }

  memset(&transform, 0, sizeof(transform));
  layout2 = [(CRLCanvasRep *)self layout];
  v9 = layout2;
  if (layout2)
  {
    [layout2 transformInRoot];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController viewScale];
  v12 = v11;

  CGAffineTransformMakeScale(&t2, v12, v12);
  v15 = transform;
  CGAffineTransformConcat(&v17, &v15, &t2);
  transform = v17;
  v13 = CGPathCreateCopyByTransformingPath([v5 CGPath], &transform);

  return v13;
}

- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v8 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v10 = sub_100014370(v8, parentRep);

  if ([v10 wantsToHandleDropForChildWithDragInfo:infoCopy atUnscaledPoint:{x, y}])
  {
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLShapeRep;
    v11 = [(CRLCanvasRep *)&v14 repToHighlightForDragInfo:infoCopy atUnscaledPoint:x, y];
  }

  v12 = v11;

  return v12;
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CRLShapeRep;
  v8 = [(CRLCanvasRep *)&v13 dragOperationForDragInfo:infoCopy atUnscaledPoint:x, y];
  if (![(CRLCanvasRep *)self isLocked])
  {
    if ([infoCopy canCreateItemsOfClass:objc_opt_class()] && objc_msgSend(infoCopy, "numberOfDraggingItems") == 1)
    {
      if (![(CRLShapeRep *)self allowsColorDrop])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v9 = objc_opt_class();
    parentRep = [(CRLCanvasRep *)self parentRep];
    v11 = sub_100014370(v9, parentRep);

    LODWORD(parentRep) = [v11 wantsToHandleDropForChildWithDragInfo:infoCopy atUnscaledPoint:{x, y}];
    if (parentRep)
    {
LABEL_7:
      v8 = [infoCopy dragOperationMask] & 1;
    }
  }

LABEL_8:

  return v8;
}

- (BOOL)i_targetsDropsToStroke
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  if ([shapeLayout pathIsOpen])
  {
    fill = [shapeLayout fill];
    v4 = fill == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v10 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v12 = sub_100014370(v10, parentRep);

  if ([v12 wantsToHandleDropForChildWithDragInfo:infoCopy atUnscaledPoint:{x, y}])
  {
    v13 = [v12 handleDragOperation:operation withDragInfo:infoCopy atUnscaledPoint:{x, y}];
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLShapeDragAndDrop"];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001994C8;
    v18[3] = &unk_101843870;
    v18[4] = self;
    v16 = [infoCopy createItemsOfClass:objc_opt_class() completion:v18];
    v13 = 1;
  }

  return v13;
}

- (void)p_forDragAndDropSetColor:(id)color
{
  colorCopy = color;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101326E9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326EB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101326F40();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeRep p_forDragAndDropSetColor:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1686 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (colorCopy)
  {
    if ([(CRLShapeRep *)self i_targetsDropsToStroke])
    {
      shapeLayout = [(CRLShapeRep *)self shapeLayout];
      stroke = [shapeLayout stroke];
      shapeInfo2 = [stroke mutableCopy];

      [shapeInfo2 setColor:colorCopy];
      v11 = [_TtC8Freeform19CRLCommandSetStroke alloc];
      shapeInfo = [(CRLShapeRep *)self shapeInfo];
      v13 = [(CRLCommandSetStroke *)v11 initWithStyledItem:shapeInfo stroke:shapeInfo2];
    }

    else
    {
      v17 = [_TtC8Freeform17CRLCommandSetFill alloc];
      shapeInfo2 = [(CRLShapeRep *)self shapeInfo];
      shapeInfo = [CRLColorFill colorWithColor:colorCopy];
      v13 = [(CRLCommandSetFill *)v17 initWithShapeItem:shapeInfo2 fill:shapeInfo];
    }

    v15 = v13;

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];
    [commandController enqueueCommand:v15];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101326F68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326F90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101327020();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLShapeRep p_forDragAndDropSetColor:]"];
    interactiveCanvasController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:interactiveCanvasController lineNumber:1701 isFatal:0 description:"Unable to drop nil color"];
  }
}

- (BOOL)canBeUsedForImageMask
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  path = [shapeLayout path];
  [path bounds];
  v6 = v5;
  v8 = v7;

  if (self->mIsFreehandDrawingShape)
  {
    return 0;
  }

  info = [(CRLCanvasRep *)self info];
  geometry = [info geometry];
  if ([geometry widthValid])
  {
    info2 = [(CRLCanvasRep *)self info];
    geometry2 = [info2 geometry];
    if ([geometry2 heightValid] && !-[CRLCanvasRep isPlaceholder](self, "isPlaceholder"))
    {
      shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
      path2 = [shapeLayout2 path];
      v16 = (v8 > 0.0) & ~[path2 isLineSegment];
      if (v6 > 0.0)
      {
        v9 = v16;
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
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowKnobs
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  shouldShowKnobs = [(CRLCanvasRep *)&v7 shouldShowKnobs];
  if (self->mIsFreehandDrawingShape)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];

    if ([freehandDrawingToolkit isInDrawingMode])
    {
      LOBYTE(shouldShowKnobs) = 0;
    }

    else
    {
      shouldShowKnobs &= ![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn];
    }
  }

  return shouldShowKnobs;
}

- (unint64_t)enabledKnobMask
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathIsLineSegment = [shapeLayout pathIsLineSegment];

  if (pathIsLineSegment)
  {
    return 3072;
  }

  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  supportsResize = [shapeInfo supportsResize];

  if (!supportsResize)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  return [(CRLCanvasRep *)&v8 enabledKnobMask];
}

- (BOOL)p_parentFreehandDrawingIsSelected
{
  v3 = objc_opt_class();
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  v6 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v7 = sub_100014370(v3, v6);

  v8 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  info = [parentRep info];
  v11 = sub_100014370(v8, info);

  if (v11)
  {
    boardItems = [v7 boardItems];
    v13 = [boardItems containsObject:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)addSelectionKnobsToArray:(id)array
{
  arrayCopy = array;
  p_pathEditor = [(CRLShapeRep *)self p_pathEditor];
  v6 = p_pathEditor;
  if (p_pathEditor && [p_pathEditor canAddKnobsForRep:self])
  {
    [v6 addKnobsForRep:self toArray:arrayCopy];
  }

  else
  {
    shouldShowSmartShapeKnobs = [(CRLShapeRep *)self shouldShowSmartShapeKnobs];
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    v9 = shapeLayout;
    if (shouldShowSmartShapeKnobs)
    {
      numberOfControlKnobs = [shapeLayout numberOfControlKnobs];
      if (numberOfControlKnobs)
      {
        v11 = numberOfControlKnobs;
        v12 = 12;
        do
        {
          v13 = [CRLCanvasKnob alloc];
          [v9 getControlKnobPosition:v12];
          v14 = [CRLCanvasKnob initWithType:v13 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:v12 onRep:self];
          [arrayCopy addObject:v14];

          ++v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v15 = objc_opt_class();
      pathSource = [v9 pathSource];
      v17 = sub_100014370(v15, pathSource);

      if (v17)
      {
        v18 = [CRLCanvasKnob alloc];
        [v9 getControlKnobPosition:12];
        v19 = [CRLCanvasKnob initWithType:v18 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:12 onRep:self];
        [arrayCopy addObject:v19];
      }
    }

    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    pathIsLineSegment = [shapeLayout2 pathIsLineSegment];

    if (pathIsLineSegment)
    {
      enabledKnobMask = [(CRLShapeRep *)self enabledKnobMask];
      y = CGPointZero.y;
      for (i = 10; i != 12; ++i)
      {
        if ((sub_100345928(i) & enabledKnobMask) != 0)
        {
          v25 = [[CRLCanvasKnob alloc] initWithType:0 position:i radius:self tag:CGPointZero.x onRep:y, 15.0];
          [arrayCopy addObject:v25];
        }
      }
    }

    v35.receiver = self;
    v35.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v35 addSelectionKnobsToArray:arrayCopy];
    if ([(CRLShapeRep *)self shouldShowAdvancedGradientKnobs])
    {
      v26 = objc_opt_class();
      shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
      fill = [shapeLayout3 fill];
      v29 = sub_100014370(v26, fill);

      v30 = [CRLCanvasKnob alloc];
      if ([v29 gradientType] == 1)
      {
        v31 = 26;
      }

      else
      {
        v31 = 25;
      }

      v32 = CGPointZero.y;
      v33 = [(CRLCanvasKnob *)v30 initWithType:0 position:v31 radius:self tag:CGPointZero.x onRep:v32, 15.0];
      [arrayCopy addObject:v33];
      v34 = [[CRLCanvasKnob alloc] initWithType:0 position:27 radius:self tag:CGPointZero.x onRep:v32, 15.0];
      [arrayCopy addObject:v34];
    }
  }
}

- (BOOL)shouldShowAdditionalKnobs
{
  [(CRLCanvasRep *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v9 = sub_10011F340(v4, v6, v8);
  v11 = v10;

  v12 = v9 < 60.0 || v11 < 60.0;
  if (v12 || [(CRLCanvasRep *)self isPlaceholder])
  {
    return 0;
  }

  else
  {
    return ![(CRLCanvasRep *)self isLocked];
  }
}

- (BOOL)shouldShowAdvancedGradientKnobs
{
  if (self->mIsFreehandDrawingShape)
  {
    return 0;
  }

  if ([(CRLCanvasRep *)self isInDynamicOperation])
  {
    currentKnobTracker = [(CRLCanvasRep *)self currentKnobTracker];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }
  }

  v6 = objc_opt_class();
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];
  v9 = sub_100014370(v6, fill);

  if (v9 && [v9 isAdvancedGradient] && !-[CRLCanvasRep isLocked](self, "isLocked"))
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    v13 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if (![v13 fillInspectorDisclosed] || -[CRLShapeRep isEditingChildRep](self, "isEditingChildRep") || (objc_msgSend(interactiveCanvasController, "documentIsSharedReadOnly") & 1) != 0)
    {
      v2 = 0;
    }

    else
    {
      [(CRLCanvasRep *)self boundsForStandardKnobs];
      v15 = v14;
      v17 = v16;
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas viewScale];
      v20 = sub_10011F340(v15, v17, v19);
      v22 = v21;

      v2 = fmin(v20, v22) >= 40.0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)shouldShowSmartShapeKnobs
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  if ([shapeLayout numberOfControlKnobs])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([interactiveCanvasController documentIsSharedReadOnly])
    {
      shouldShowAdditionalKnobs = 0;
    }

    else
    {
      shouldShowAdditionalKnobs = [(CRLShapeRep *)self shouldShowAdditionalKnobs];
    }
  }

  else
  {
    shouldShowAdditionalKnobs = 0;
  }

  return shouldShowAdditionalKnobs;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  knobCopy = knob;
  if ([knobCopy tag] < 0xC || objc_msgSend(knobCopy, "tag") >= 0x11)
  {
    v7.receiver = self;
    v7.super_class = CRLShapeRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:knobCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  knobCopy = knob;
  currentKnobTracker = [(CRLCanvasRep *)self currentKnobTracker];
  if ([currentKnobTracker isMemberOfClass:objc_opt_class()] && objc_msgSend(knobCopy, "tag") >= 0x19)
  {
    v6 = [knobCopy tag];

    if (v6 < 0x1C)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([knobCopy tag] != 22)
  {
    v9.receiver = self;
    v9.super_class = CRLShapeRep;
    v7 = [(CRLCanvasRep *)&v9 directlyManagesVisibilityOfKnob:knobCopy];
    goto LABEL_9;
  }

LABEL_7:
  v7 = 1;
LABEL_9:

  return v7;
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  knobsCopy = knobs;
  v88.receiver = self;
  v88.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v88 updatePositionsOfKnobs:knobsCopy];
  p_pathEditor = [(CRLShapeRep *)self p_pathEditor];
  v6 = p_pathEditor;
  if (p_pathEditor)
  {
    [p_pathEditor updatePositionsOfKnobs:knobsCopy forRep:self];
  }

  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  if ([shapeLayout pathIsLineSegment])
  {
    [shapeLayout pathBounds];
    v9 = v8;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v10 = knobsCopy;
    v11 = [v10 countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v85;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v85 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v84 + 1) + 8 * i);
          v16 = [v15 tag];
          v17 = [v15 tag];
          if (v16 == 11 || v17 == 10)
          {
            if (v16 == 11)
            {
              [shapeLayout headPoint];
            }

            else
            {
              [shapeLayout tailPoint];
            }

            [v15 setPosition:{sub_10011F31C(v19, v20, v9)}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v12);
    }
  }

  if (-[CRLShapeRep shouldShowSmartShapeKnobs](self, "shouldShowSmartShapeKnobs") || (v21 = objc_opt_class(), [shapeLayout pathSource], v22 = objc_claimAutoreleasedReturnValue(), sub_100014370(v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
    v25 = v24;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = knobsCopy;
    v27 = [v26 countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v81;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v81 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v80 + 1) + 8 * j);
          if ([v31 tag] >= 0xC && objc_msgSend(v31, "tag") <= 0x10)
          {
            [shapeLayout getControlKnobPosition:{objc_msgSend(v31, "tag")}];
            [v31 setPosition:{sub_10011F334(v32, v33, v25)}];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v28);
    }
  }

  if ([(CRLShapeRep *)self shouldShowAdvancedGradientKnobs])
  {
    v34 = objc_opt_class();
    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    fill = [shapeLayout2 fill];
    v37 = sub_100014370(v34, fill);

    shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
    [shapeLayout3 boundsForStandardKnobs];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    shapeLayout4 = [(CRLShapeRep *)self shapeLayout];
    path = [shapeLayout4 path];
    [v37 startPointForPath:path andBounds:{v40, v42, v44, v46}];
    v50 = v49;
    v52 = v51;

    shapeLayout5 = [(CRLShapeRep *)self shapeLayout];
    path2 = [shapeLayout5 path];
    [v37 endPointForPath:path2 andBounds:{v40, v42, v44, v46}];
    v56 = v55;
    v58 = v57;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v59 = knobsCopy;
    v60 = [v59 countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = sub_10011F334(v56, v58, v40);
      v64 = v63;
      v65 = sub_10011F334(v50, v52, v40);
      v67 = v66;
      v68 = *v77;
      do
      {
        for (k = 0; k != v61; k = k + 1)
        {
          if (*v77 != v68)
          {
            objc_enumerationMutation(v59);
          }

          v70 = *(*(&v76 + 1) + 8 * k);
          v71 = [v70 tag];
          v72 = v65;
          v73 = v67;
          if (v71 != 25)
          {
            v74 = [v70 tag];
            v72 = v65;
            v73 = v67;
            if (v74 != 26)
            {
              v75 = [v70 tag];
              v72 = v62;
              v73 = v64;
              if (v75 != 27)
              {
                continue;
              }
            }
          }

          [v70 setPosition:{v72, v73}];
        }

        v61 = [v59 countByEnumeratingWithState:&v76 objects:v89 count:{16, v72, v73}];
      }

      while (v61);
    }
  }
}

- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  knobCopy = knob;
  objectCopy = object;
  if (knobCopy)
  {
    if ([knobCopy tag] >= 0x19 && objc_msgSend(knobCopy, "tag") <= 0x1B)
    {
      [knobCopy cursorActiveScaledRect];
      resizeCursor = [CRLCursor moveCursorWithActiveScaledRect:?];
      goto LABEL_8;
    }

    if ([knobCopy tag] == 10 || objc_msgSend(knobCopy, "tag") == 11)
    {
      resizeCursor = [knobCopy resizeCursor];
LABEL_8:
      v12 = resizeCursor;
      if (resizeCursor)
      {
        goto LABEL_10;
      }
    }
  }

  v14.receiver = self;
  v14.super_class = CRLShapeRep;
  v12 = [(CRLStyledRep *)&v14 cursorAtPoint:knobCopy forKnob:objectCopy withCursorPlatformObject:x, y];
LABEL_10:

  return v12;
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  if (!knobCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327048();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132705C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013270F8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeRep newTrackerForKnob:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1980 isFatal:0 description:"invalid nil value for '%{public}s'", "knob"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    p_pathEditor = [(CRLShapeRep *)self p_pathEditor];
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, knobCopy);
    v12 = v11;
    if (p_pathEditor && v11)
    {
      v13 = [p_pathEditor newTrackerForKnob:v11 forRep:self];
    }

    else
    {
      v14 = [knobCopy tag];
      if (v14 - 12 > 4)
      {
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
        {
          v15 = CRLShapeLineSegmentKnobTracker;
        }

        else
        {
          if (v14 - 25 > 2)
          {
            v17.receiver = self;
            v17.super_class = CRLShapeRep;
            v13 = [(CRLCanvasRep *)&v17 newTrackerForKnob:knobCopy];
            goto LABEL_23;
          }

          v15 = CRLGradientFillKnobTracker;
        }
      }

      else
      {
        v15 = CRLShapeControlKnobTracker;
      }

      v13 = [[v15 alloc] initWithRep:self knob:knobCopy];
    }

LABEL_23:
    v8 = v13;

    goto LABEL_24;
  }

  v8 = [[_TtC8Freeform33CRLShapeConnectionLineKnobTracker alloc] initWithRep:self knob:knobCopy];
LABEL_24:

  return v8;
}

- (BOOL)shouldShowInvisiblePathHighlight
{
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];
  if (stroke)
  {
    layout2 = [(CRLCanvasRep *)self layout];
    stroke2 = [layout2 stroke];
    shouldRender = [stroke2 shouldRender];
  }

  else
  {
    shouldRender = 0;
  }

  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];
  if (fill)
  {
    shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
    fill2 = [shapeLayout2 fill];
    v12 = [fill2 isClear] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
  path = [shapeLayout3 path];
  isRectangular = [path isRectangular];

  if ((shouldRender | v12))
  {
    return 0;
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![interactiveCanvasController shouldEverShowPathHighlightOnInvisibleShapes] || isRectangular && -[CRLShapeRep shouldShowSelectionHighlight](self, "shouldShowSelectionHighlight"))
  {
    selectionIsAppropriateToShowInvisiblePathHighlight = 0;
  }

  else
  {
    selectionIsAppropriateToShowInvisiblePathHighlight = [(CRLShapeRep *)self selectionIsAppropriateToShowInvisiblePathHighlight];
  }

  return selectionIsAppropriateToShowInvisiblePathHighlight;
}

- (BOOL)selectionIsAppropriateToShowInvisiblePathHighlight
{
  if ([(CRLCanvasRep *)self isSelected])
  {
    LOBYTE(v3) = 1;
  }

  else if ([(CRLCanvasRep *)self isBeingDragged])
  {
    layout = [(CRLCanvasRep *)self layout];
    v3 = [layout isInGroup] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)additionalRenderablesOverRenderable
{
  if (self->mIsFreehandDrawingShape)
  {
    v2 = &__NSArray0__struct;
  }

  else
  {
    v32.receiver = self;
    v32.super_class = CRLShapeRep;
    additionalRenderablesOverRenderable = [(CRLCanvasRep *)&v32 additionalRenderablesOverRenderable];
    v2 = [additionalRenderablesOverRenderable mutableCopy];

    if ([(CRLShapeRep *)self shouldShowInvisiblePathHighlight])
    {
      v5 = +[CRLCanvasShapeRenderable renderable];
      [v5 setFillColor:0];
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [v5 setDelegate:interactiveCanvasController];

      v7 = [CRLColor colorWithRed:0.596078431 green:0.596078431 blue:0.596078431 alpha:0.45];
      [v5 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

      canvas = [(CRLCanvasRep *)self canvas];
      [canvas viewScale];
      v10 = v9;

      canvas2 = [(CRLCanvasRep *)self canvas];
      [canvas2 contentsScale];
      v13 = v10 * v12;

      v30 = CGPointZero;
      v31 = v30;
      v14 = +[CRLColor blackColor];
      v15 = [CRLStroke strokeWithColor:v14 width:1.0];

      shapeLayout = [(CRLShapeRep *)self shapeLayout];
      v28 = 0;
      v29 = 0;
      [shapeLayout aliasPathForScale:v15 originalStroke:&v29 adjustedStroke:&v28 adjustedPath:&v31 startDelta:&v30 endDelta:v13];
      v17 = v29;
      v18 = v28;

      [v17 width];
      [v5 setLineWidth:?];
      [v18 boundsIncludingCRLStroke:v15];
      v21 = sub_10012218C(v19, v20, v10);
      memset(&v27, 0, sizeof(v27));
      CGAffineTransformMakeTranslation(&v27, -v21, -v22);
      CGAffineTransformMakeScale(&t2, v10, v10);
      v24 = v27;
      CGAffineTransformConcat(&v26, &v24, &t2);
      v27 = v26;
      [v18 transformUsingAffineTransform:&v26];
      [v5 setPath:{objc_msgSend(v18, "CGPath")}];
      memset(&v24, 0, 32);
      memset(&v26, 0, sizeof(v26));
      [(CRLCanvasRep *)self computeDirectLayerFrame:&v24 andTransform:&v26];

      [v5 setFrame:{*&v24.a, *&v24.c}];
      t2 = v26;
      [v5 setAffineTransform:&t2];
      [v2 addObject:v5];
    }
  }

  return v2;
}

- (id)overlayRenderables
{
  if ([(CRLShapeRep *)self p_shouldSkipRenderableRecalculations])
  {
    overlayRenderables = [CRLCanvasRenderable renderablesFromLayers:&__NSArray0__struct];
  }

  else
  {
    v49.receiver = self;
    v49.super_class = CRLShapeRep;
    overlayRenderables = [(CRLCanvasRep *)&v49 overlayRenderables];
    if ([(CRLShapeRep *)self shouldShowAdvancedGradientKnobs]&& [(CRLCanvasRep *)self isSelectedIgnoringLocking])
    {
      v4 = +[CRLCanvasShapeRenderable renderable];
      [v4 setFillColor:0];
      v5 = [CRLColor colorWithWhite:0.8 alpha:0.66];
      [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

      [v4 setLineWidth:1.0];
      v6 = objc_opt_class();
      shapeLayout = [(CRLShapeRep *)self shapeLayout];
      fill = [shapeLayout fill];
      v9 = sub_100014370(v6, fill);

      shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
      [shapeLayout2 boundsForStandardKnobs];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
      path = [shapeLayout3 path];
      [v9 startPointForPath:path andBounds:{v12, v14, v16, v18}];
      v22 = v21;
      v24 = v23;

      shapeLayout4 = [(CRLShapeRep *)self shapeLayout];
      path2 = [shapeLayout4 path];
      [v9 endPointForPath:path2 andBounds:{v12, v14, v16, v18}];
      v28 = v27;
      v30 = v29;

      v31 = sub_10011F334(v22, v24, v12);
      v33 = v32;
      v34 = sub_10011F334(v28, v30, v12);
      v36 = v35;
      memset(&m, 0, sizeof(m));
      layout = [(CRLCanvasRep *)self layout];
      v38 = layout;
      if (layout)
      {
        [layout transformInRoot];
      }

      else
      {
        memset(&m, 0, sizeof(m));
      }

      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController viewScale];
      v41 = v40;

      CGAffineTransformMakeScale(&t2, v41, v41);
      v45 = m;
      CGAffineTransformConcat(&v47, &v45, &t2);
      m = v47;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, &m, v31, v33);
      CGPathAddLineToPoint(Mutable, &m, v34, v36);
      [v4 setPath:Mutable];
      v43 = [overlayRenderables mutableCopy];
      [v43 insertObject:v4 atIndex:0];

      CGPathRelease(Mutable);
      overlayRenderables = v43;
    }
  }

  return overlayRenderables;
}

- (id)dynamicResizeDidBegin
{
  v5.receiver = self;
  v5.super_class = CRLShapeRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];
  [(CRLShapeRep *)self p_beginDynamicallyResizingOrMovingLineEnd];

  return dynamicResizeDidBegin;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicFreeTransformDidBeginWithTracker:tracker];
  [(CRLShapeRep *)self p_beginDynamicallyResizingOrMovingLineEnd];
}

- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info
{
  geometryCopy = geometry;
  v63.receiver = self;
  v63.super_class = CRLShapeRep;
  infoCopy = info;
  v8 = [(CRLCanvasRep *)&v63 newCommandToApplyGeometry:geometryCopy toInfo:infoCopy];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, infoCopy);

  if (!v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327120();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327148();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013271D8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLShapeRep newCommandToApplyGeometry:toInfo:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2157 isFatal:0 description:"Can't create CRLCommandSetInfoGeometry without a persistable object."];
  }

  v14 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v14 addCommand:v8];
  if ([(CRLShapeRep *)self shouldSetPathSourceWhenChangingInfoGeometry])
  {
    v15 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    pathSource = [shapeLayout pathSource];
    v18 = [(CRLCommandSetPathSource *)v15 initWithShapeItem:v10 pathSource:pathSource];

    [(CRLCommandGroup *)v14 addCommand:v18];
  }

  shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
  i_isInsideResizingFreehandDrawing = [shapeLayout2 i_isInsideResizingFreehandDrawing];

  if (i_isInsideResizingFreehandDrawing)
  {
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];
    v23 = [stroke mutableCopy];
    v24 = objc_opt_class();
    v30 = sub_1003038E0(v23, v24, 1, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLMutableStroke);

    v31 = [_TtC8Freeform19CRLCommandSetStroke alloc];
    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    v33 = [(CRLCommandSetStroke *)v31 initWithStyledItem:shapeInfo stroke:v30];

    [(CRLCommandGroup *)v14 addCommand:v33];
  }

  v34 = objc_opt_class();
  shapeInfo2 = [(CRLShapeRep *)self shapeInfo];
  v36 = sub_100014370(v34, shapeInfo2);

  if (v36)
  {
    pencilKitStrokePathCompactData = [v36 pencilKitStrokePathCompactData];
    if (i_isInsideResizingFreehandDrawing && ([v36 isTreatedAsFillForFreehandDrawing] & 1) == 0)
    {
      geometry = [v36 geometry];
      [geometry size];
      v40 = v39;
      v42 = v41;

      if (v40 <= 0.0 || v42 <= 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101327200();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101327228();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013272B8();
        }

        v43 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v43);
        }

        v44 = [NSString stringWithUTF8String:"[CRLShapeRep newCommandToApplyGeometry:toInfo:]"];
        v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:2185 isFatal:0 description:"CRLFreehandDrawingShapeItem has invalid geometry size."];
      }

      [geometryCopy size];
      if (v40 != v46 || v42 != v47)
      {
        if (v40 <= 0.0)
        {
          v48 = 1.0;
        }

        else
        {
          v48 = v40;
        }

        v49 = v46 / v48;
        if (v42 <= 0.0)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = v42;
        }

        v51 = v47 / v50;
        if (v51 <= 0.0)
        {
          v52 = 1.0;
        }

        else
        {
          v52 = v51;
        }

        if (v49 <= 0.0)
        {
          v53 = v52;
        }

        else
        {
          v53 = v49;
        }

        if (v49 <= 0.0)
        {
          v49 = 1.0;
        }

        if (v51 <= 0.0)
        {
          v54 = v49;
        }

        else
        {
          v54 = v51;
        }

        [pencilKitStrokePathCompactData renderScaleX];
        v56 = v53 * v55;
        *&v56 = v56;
        [pencilKitStrokePathCompactData setRenderScaleX:v56];
        [pencilKitStrokePathCompactData renderScaleY];
        v58 = v54 * v57;
        *&v58 = v58;
        [pencilKitStrokePathCompactData setRenderScaleY:v58];
      }
    }

    shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
    maskPath = [shapeLayout3 maskPath];

    v61 = [[_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData alloc] initWithFreehandDrawingShapeItem:v36 strokePathCompactData:pencilKitStrokePathCompactData maskPath:maskPath];
    [(CRLCommandGroup *)v14 addCommand:v61];
  }

  return v14;
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicResizeDidEndWithTracker:tracker];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicFreeTransformDidEndWithTracker:tracker];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
}

- (void)setShadowOnChildrenDisabled:(BOOL)disabled
{
  if (self->mShadowOnChildrenDisabled != disabled)
  {
    self->mShadowOnChildrenDisabled = disabled;
    [(CRLCanvasRep *)self invalidateShadowRenderable];
  }
}

- (void)invalidateEffectLayersForChildren
{
  if (!self->mShadowOnChildrenDisabled)
  {
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    fill = [shapeLayout fill];
    isOpaque = [fill isOpaque];

    if ((isOpaque & 1) == 0)
    {

      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }
}

- (void)invalidateExteriorWrap
{
  mCachedWrapPathInRoot = self->mCachedWrapPathInRoot;
  self->mCachedWrapPathInRoot = 0;
}

- (void)dynamicallyRotatingWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyRotatingWithTracker:tracker];
  if (self->mIsFreehandDrawingShape)
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyResizingWithTracker:tracker];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicallyFreeTransformingWithTracker:(id)tracker
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyFreeTransformingWithTracker:tracker];
  if (self->mIsFreehandDrawingShape)
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (id)dataForUpdateUploadIndicator
{
  v3 = objc_opt_class();
  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  fill = [shapeInfo fill];
  v6 = sub_100014370(v3, fill);
  imageData = [v6 imageData];

  if (imageData)
  {
    v10 = imageData;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)beginEditingWithString:(id)string
{
  stringCopy = string;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018439D0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v22 = v4;
    v23 = 2082;
    v24 = "[CRLShapeRep beginEditingWithString:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m";
    v27 = 1024;
    v28 = 2290;
    v29 = 2114;
    v30 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018439F0);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v22 = v4;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLShapeRep beginEditingWithString:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2290 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[CRLShapeRep beginEditingWithString:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)beginEditing
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101843A10);
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
    v22 = "[CRLShapeRep beginEditing]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m";
    v25 = 1024;
    v26 = 2294;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101843A30);
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

  v10 = [NSString stringWithUTF8String:"[CRLShapeRep beginEditing]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2294 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLShapeRep beginEditing]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (BOOL)canBeginEditing
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  parentInfo = [info parentInfo];
  v6 = sub_100014370(v3, parentInfo);

  if (v6)
  {
    info2 = [(CRLCanvasRep *)self info];
    v8 = [v6 isNonGroupedChild:info2];
  }

  else
  {
    v8 = 0;
  }

  if (self->mIsFreehandDrawingShape && v8 == 0)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    v11 = [shapeLayout pathIsLineSegment] ^ 1;
  }

  return v11;
}

- (BOOL)isPathEditable
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathSource = [shapeLayout pathSource];
  v4 = [pathSource isMemberOfClass:objc_opt_class()];

  return v4;
}

- (CRLEditableBezierPathSource)editablePathSource
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  editablePathSource = [shapeLayout editablePathSource];

  return editablePathSource;
}

- (CGAffineTransform)naturalToEditablePathSpaceTransform
{
  [(CRLCanvasRep *)self boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  pathSource = [shapeInfo pathSource];
  v11 = pathSource;
  if (pathSource)
  {
    [pathSource pathFlipTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  CGAffineTransformMakeTranslation(&t2, v6, v8);
  v12 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v12;
  *&v15.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v17, &v15, &t2);
  v14 = *&v17.c;
  *&retstr->a = *&v17.a;
  *&retstr->c = v14;
  *&retstr->tx = *&v17.tx;
  return result;
}

- (id)p_pathEditor
{
  if ([(CRLShapeRep *)self canMakePathEditable])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    v5 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEditingPath
{
  p_pathEditor = [(CRLShapeRep *)self p_pathEditor];
  v3 = p_pathEditor != 0;

  return v3;
}

- (void)dynamicMovePathKnobDidBegin
{
  dynamicResizeDidBegin = [(CRLShapeRep *)self dynamicResizeDidBegin];
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicMovePathKnobDidBegin];
}

- (void)dynamicallyMovedPathKnobTo:(CGPoint)to withTracker:(id)tracker
{
  y = to.y;
  x = to.x;
  trackerCopy = tracker;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicallyMovedPathKnobTo:trackerCopy withTracker:{x, y}];

  self->mFrameInUnscaledCanvasIsValid = 0;
  layoutController = [shapeLayout layoutController];
  [layoutController validateLayoutWithDependencies:shapeLayout];

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicMovePathKnobDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicMovePathKnobDidEnd];

  if (!trackerCopy || ([trackerCopy didDrag] & 1) != 0 || (objc_msgSend(trackerCopy, "isCreatingNode") & 1) != 0 || objc_msgSend(trackerCopy, "toggleNodeType"))
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (id)dynamicMoveLineSegmentDidBegin
{
  dynamicResizeDidBegin = [(CRLShapeRep *)self dynamicResizeDidBegin];

  return [(CRLShapeRep *)self shapeLayout];
}

- (void)dynamicallyMovingLineSegmentWithTracker:(id)tracker
{
  trackerCopy = tracker;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicallyMovingLineSegmentWithTracker:trackerCopy];

  layoutController = [shapeLayout layoutController];
  [layoutController validateLayoutWithDependencies:shapeLayout];

  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicMoveLineSegmentDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  if (trackerCopy && [trackerCopy didDrag])
  {
    v4 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    pathSource = [shapeLayout pathSource];
    v8 = [(CRLCommandSetPathSource *)v4 initWithShapeItem:shapeInfo pathSource:pathSource];

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];
    [commandController enqueueCommand:v8];
  }

  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (id)dynamicMoveSmartShapeKnobDidBegin
{
  dynamicResizeDidBegin = [(CRLShapeRep *)self dynamicResizeDidBegin];
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicMoveSmartShapeKnobDidBegin];

  return [(CRLShapeRep *)self shapeLayout];
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker
{
  y = to.y;
  x = to.x;
  trackerCopy = tracker;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicallyMovedSmartShapeKnobTo:trackerCopy withTracker:{x, y}];
  self->mFrameInUnscaledCanvasIsValid = 0;
  layoutController = [shapeLayout layoutController];
  [layoutController validateLayoutWithDependencies:shapeLayout];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [trackerCopy isEnqueueingCommandsInRealTime])
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)enqueuePathSourceChanges
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController openGroup];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Move" value:0 table:@"UndoStrings"];
  [commandController setCurrentGroupActionString:v8];

  layoutInfoGeometry = [shapeLayout layoutInfoGeometry];
  layoutInfoGeometry2 = [shapeLayout layoutInfoGeometry];
  geometry = [shapeInfo geometry];
  v12 = [layoutInfoGeometry2 isEqual:geometry];

  if ((v12 & 1) == 0)
  {
    v13 = [(CRLShapeRep *)self newCommandToApplyGeometry:layoutInfoGeometry toInfo:shapeInfo];
    if (!v13)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013272E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013272F4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101327390();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLShapeRep enqueuePathSourceChanges]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:2450 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];
    }

    [commandController enqueueCommand:v13];
  }

  v17 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
  pathSource = [shapeLayout pathSource];
  v19 = [(CRLCommandSetPathSource *)v17 initWithShapeItem:shapeInfo pathSource:pathSource];

  [commandController enqueueCommand:v19];
  [commandController closeGroup];
}

- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  if (trackerCopy && [trackerCopy didDrag])
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)dynamicallySetBezierPathSource:(id)source atUnscaledOrigin:(CGPoint)origin withCommittedPointRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  y = origin.y;
  x = origin.x;
  sourceCopy = source;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout dynamicallySetBezierPathSource:sourceCopy atUnscaledOrigin:{x, y}];

  self->mAvailableToCommitPointRange.location = location;
  self->mAvailableToCommitPointRange.length = length;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];

  bezierPath = [sourceCopy bezierPath];

  i_uncommittedFreehandDrawingPointRange = [(CRLShapeRep *)self i_uncommittedFreehandDrawingPointRange];
  v16 = [bezierPath copyWithPointsInRange:{i_uncommittedFreehandDrawingPointRange, v15}];

  if ([v16 isEmpty])
  {
    v17 = CGRectNull.origin.x;
    v18 = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];
    [v16 boundsIncludingCRLStroke:stroke];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    layout2 = [(CRLCanvasRep *)self layout];
    stroke2 = [layout2 stroke];
    [stroke2 renderedWidth];
    v34 = v33 * -2.0;
    layout3 = [(CRLCanvasRep *)self layout];
    stroke3 = [layout3 stroke];
    [stroke3 renderedWidth];
    v38 = v37 * -2.0;
    v49.origin.x = v24;
    v49.origin.y = v26;
    v49.size.width = v28;
    v49.size.height = v30;
    v50 = CGRectInset(v49, v34, v38);
    v39 = v50.origin.x;
    v40 = v50.origin.y;
    v41 = v50.size.width;
    v42 = v50.size.height;

    CGAffineTransformMakeTranslation(&v48, x, y);
    v51.origin.x = v39;
    v51.origin.y = v40;
    v51.size.width = v41;
    v51.size.height = v42;
    v52 = CGRectApplyAffineTransform(v51, &v48);
    [(CRLCanvasRep *)self convertNaturalRectFromUnscaledCanvas:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
    v17 = v43;
    v18 = v44;
    width = v45;
    height = v46;
  }

  p_mLastDynamicInvalidRect = &self->mLastDynamicInvalidRect;
  v55.origin.x = CGRectZero.origin.x;
  v55.origin.y = CGRectZero.origin.y;
  v55.size.width = CGRectZero.size.width;
  v55.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(self->mLastDynamicInvalidRect, v55))
  {
    [(CRLShapeRep *)self p_forceSetNeedsDisplay];
  }

  else
  {
    v56.origin.x = p_mLastDynamicInvalidRect->origin.x;
    v56.origin.y = self->mLastDynamicInvalidRect.origin.y;
    v56.size.width = self->mLastDynamicInvalidRect.size.width;
    v56.size.height = self->mLastDynamicInvalidRect.size.height;
    v53.origin.x = v17;
    v53.origin.y = v18;
    v53.size.width = width;
    v53.size.height = height;
    v54 = CGRectUnion(v53, v56);
    [(CRLShapeRep *)self p_forceSetNeedsDisplayInRect:v54.origin.x, v54.origin.y, v54.size.width, v54.size.height];
  }

  p_mLastDynamicInvalidRect->origin.x = v17;
  self->mLastDynamicInvalidRect.origin.y = v18;
  self->mLastDynamicInvalidRect.size.width = width;
  self->mLastDynamicInvalidRect.size.height = height;
}

- (void)i_setIsCurrentlyBeingFreehandDrawn:(BOOL)drawn
{
  if (self->_isCurrentlyBeingFreehandDrawn != drawn)
  {
    if (drawn)
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController i_setNeedsDisplayIfNeededForAncestorRepOf:self];

      self->_isCurrentlyBeingFreehandDrawn = drawn;

      [(CRLShapeRep *)self p_forceSetNeedsDisplay];
    }

    else
    {
      self->_isCurrentlyBeingFreehandDrawn = 0;
      [(CRLShapeRep *)self p_forceSetNeedsDisplay];
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController2 i_setNeedsDisplayIfNeededForAncestorRepOf:self];
    }
  }
}

- (_NSRange)i_uncommittedFreehandDrawingPointRange
{
  if (![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013273B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013273CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132745C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeRep i_uncommittedFreehandDrawingPointRange]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2576 isFatal:0 description:"Only should be checking the uncommitted point range if we are freehand drawing; it is the freehand drawing cache mechanism."];
  }

  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathSource = [shapeLayout pathSource];
  bezierPath = [pathSource bezierPath];
  elementCount = [bezierPath elementCount];

  length = self->mCommittedPointRange.length;
  v11 = elementCount - length;
  v12 = length + self->mCommittedPointRange.location;
  result.length = v11;
  result.location = v12;
  return result;
}

- (CGRect)p_scaledCanvasScrollViewBounds
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];

  enclosingScrollView = [canvasView enclosingScrollView];
  canvasLayer = [canvasView canvasLayer];
  layer = [enclosingScrollView layer];
  [enclosingScrollView bounds];
  [layer convertRect:canvasLayer toLayer:?];
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

- (void)willBeRemoved
{
  v9.receiver = self;
  v9.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v9 willBeRemoved];
  if (!self->mDownloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327484();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013274AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101327548();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeRep willBeRemoved]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2607 isFatal:0 description:"invalid nil value for '%{public}s'", "mDownloadObserverIdentifier"];
  }

  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  store = [shapeInfo store];
  assetManager = [store assetManager];
  [assetManager removeAllDownloadObserversWithIdentifier:self->mDownloadObserverIdentifier];
}

- (void)p_listenForAssetChangesIfAppropriate
{
  mDownloadObserverIdentifier = self->mDownloadObserverIdentifier;
  if (!mDownloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327570();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327584();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101327620();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLShapeRep p_listenForAssetChangesIfAppropriate]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:2612 isFatal:0 description:"invalid nil value for '%{public}s'", "mDownloadObserverIdentifier"];

    mDownloadObserverIdentifier = self->mDownloadObserverIdentifier;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019DEF4;
  v14[3] = &unk_101842F90;
  v14[4] = self;
  v14[5] = mDownloadObserverIdentifier;
  v7 = mDownloadObserverIdentifier;
  v8 = objc_retainBlock(v14);
  v9 = objc_opt_class();
  shapeInfo = [(CRLShapeRep *)self shapeInfo];
  fill = [shapeInfo fill];
  v12 = sub_100014370(v9, fill);
  imageData = [v12 imageData];
  (v8[2])(v8, imageData);
}

- (void)p_handleAssetPreparationCompletion
{
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)p_beginDynamicallyResizingOrMovingLineEnd
{
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if ([stroke shouldRender])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)p_endDynamicallyResizingOrMovingLineEnd
{
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if ([stroke shouldRender])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (BOOL)p_pathIsAxisAlignedRect
{
  if (!self->mIsFreehandDrawingShape)
  {
    shapeInfo = [(CRLShapeRep *)self shapeInfo];
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    if ([shapeLayout pathIsOpen])
    {
      headLineEnd = [shapeInfo headLineEnd];
      if (headLineEnd)
      {

LABEL_7:
        v2 = 0;
LABEL_18:

        return v2;
      }

      tailLineEnd = [shapeInfo tailLineEnd];

      if (tailLineEnd)
      {
        goto LABEL_7;
      }
    }

    path = [shapeLayout path];
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    if ([(CRLCanvasRep *)self isInDynamicOperation])
    {
      if (shapeLayout)
      {
        [shapeLayout originalTransformInRoot];
LABEL_14:
        if ([path isRectangular])
        {
          v10[0] = v11;
          v10[1] = v12;
          v10[2] = v13;
          v2 = sub_100139BB8(v10);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_18;
      }
    }

    else if (shapeLayout)
    {
      [shapeLayout transformInRoot];
      goto LABEL_14;
    }

    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    goto LABEL_14;
  }

  return 0;
}

- (BOOL)p_canApplyStrokeToRenderable
{
  if ([(CRLShapeRep *)self p_pathIsAxisAlignedRect])
  {
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];

    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    fill = [shapeLayout fill];

    if (fill)
    {
      [(CRLShapeRep *)self opacity];
      v8 = v7 == 1.0;
      if (!stroke)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 1;
      if (!stroke)
      {
        goto LABEL_9;
      }
    }

    if ([stroke shouldRender])
    {
      v9 = [stroke canApplyDirectlyToRepRenderable] & v8;
LABEL_10:

      return v9;
    }

LABEL_9:
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (BOOL)p_canApplyFillToRenderable
{
  if (![(CRLShapeRep *)self p_pathIsAxisAlignedRect])
  {
    return 0;
  }

  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  fill = [shapeLayout fill];

  if (fill && ([fill isClear] & 1) == 0)
  {
    canApplyToRenderable = [fill canApplyToRenderable];
  }

  else
  {
    canApplyToRenderable = 1;
  }

  return canApplyToRenderable;
}

- (CGRect)boundsForCollaboratorCursorRenderable
{
  v35.receiver = self;
  v35.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v35 boundsForCollaboratorCursorRenderable];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  shouldAdjustForStrokeWidthForCollabCursor = [shapeLayout shouldAdjustForStrokeWidthForCollabCursor];

  if (shouldAdjustForStrokeWidthForCollabCursor)
  {
    info = [(CRLCanvasRep *)self info];
    geometry = [info geometry];
    [geometry size];
    v16 = v15;

    if (v16 == 0.0)
    {
      shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
      stroke = [shapeLayout2 stroke];
      [stroke width];
      v10 = v19;

      shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
      stroke2 = [shapeLayout3 stroke];
      [stroke2 width];
      v6 = v6 + v22 * -0.5;
LABEL_6:

      goto LABEL_7;
    }

    info2 = [(CRLCanvasRep *)self info];
    geometry2 = [info2 geometry];
    [geometry2 size];
    v26 = v25;

    if (v26 == 0.0)
    {
      shapeLayout4 = [(CRLShapeRep *)self shapeLayout];
      stroke3 = [shapeLayout4 stroke];
      [stroke3 width];
      v8 = v29;

      shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
      stroke2 = [shapeLayout3 stroke];
      [stroke2 width];
      v4 = v4 + v30 * -0.5;
      goto LABEL_6;
    }
  }

LABEL_7:
  v31 = v4;
  v32 = v6;
  v33 = v8;
  v34 = v10;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)i_editMenuOverlapsEndKnobs
{
  shapeLayout = [(CRLShapeRep *)self shapeLayout];
  pathIsLineSegment = [shapeLayout pathIsLineSegment];

  if (!pathIsLineSegment)
  {
    return 0;
  }

  shapeLayout2 = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout2 headPoint];
  v7 = v6;
  v9 = v8;
  shapeLayout3 = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout3 tailPoint];
  v13 = sub_100120ABC(v7, v9, v11, v12, 0.5);
  v15 = v14;

  canvas = [(CRLCanvasRep *)self canvas];
  canvas2 = [(CRLCanvasRep *)self canvas];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:v13, v15];
  [canvas2 convertUnscaledToBoundsPoint:?];
  [canvas i_approximateScaledFrameOfEditingMenuAtPoint:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  canvas3 = [(CRLCanvasRep *)self canvas];
  shapeLayout4 = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout4 headPoint];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [canvas3 convertUnscaledToBoundsPoint:?];
  v29 = v28;
  v31 = v30;

  canvas4 = [(CRLCanvasRep *)self canvas];
  shapeLayout5 = [(CRLShapeRep *)self shapeLayout];
  [shapeLayout5 tailPoint];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [canvas4 convertUnscaledToBoundsPoint:?];
  v35 = v34;
  v37 = v36;

  v47.origin.x = v19;
  v47.origin.y = v21;
  v47.size.width = v23;
  v47.size.height = v25;
  v46.x = v29;
  v46.y = v31;
  if (CGRectContainsPoint(v47, v46))
  {
    return 1;
  }

  v39 = v19;
  v40 = v21;
  v41 = v23;
  v42 = v25;
  v43 = v35;
  v44 = v37;

  return CGRectContainsPoint(*&v39, *&v43);
}

- (void)documentModeDidChange
{
  v3.receiver = self;
  v3.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v3 documentModeDidChange];
  [(CRLShapeRep *)self p_invalidateHitTestCache];
}

- (CRLShapeRepFreehandDrawingDynamicFillErasingDelegate)freehandDrawingDynamicFillErasingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_freehandDrawingDynamicFillErasingDelegate);

  return WeakRetained;
}

@end