@interface CRLShapeRep
- (BOOL)canBeUsedForImageMask;
- (BOOL)canBeginEditing;
- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)a3;
- (BOOL)canDrawWithOtherShapeRep:(id)a3;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)i_beginApplyOpacity:(CGContext *)a3 forDrawingInOneStep:(BOOL)a4;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)i_targetsDropsToStroke;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isEditingPath;
- (BOOL)isInvisible;
- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible;
- (BOOL)isPathEditable;
- (BOOL)p_canApplyFillToRenderable;
- (BOOL)p_canApplyStrokeToRenderable;
- (BOOL)p_currentlyDrawingSomeOtherShape;
- (BOOL)p_hitCacheGetCachedValue:(BOOL *)a3 forPoint:(CGPoint)a4 withPrecision:(BOOL)a5;
- (BOOL)p_parentFreehandDrawingIsSelected;
- (BOOL)p_pathIsAxisAlignedRect;
- (BOOL)p_shouldDrawStrokeWide:(id)a3;
- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)a3;
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
- (CGRect)p_layerFrameInScaledCanvasForDirectlyManagedLayer:(BOOL)a3;
- (CGRect)p_scaledCanvasScrollViewBounds;
- (CGRect)strokeBoundsWithOptions:(unint64_t)a3 fallbackBounds:(CGRect)a4;
- (CGRect)targetRectForEditMenu;
- (CGSize)p_sizeForDirectlyManagedImageFromRenderableSize:(CGSize)a3;
- (CRLEditableBezierPathSource)editablePathSource;
- (CRLShapeLayout)shapeLayout;
- (CRLShapeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (CRLShapeRepFreehandDrawingDynamicFillErasingDelegate)freehandDrawingDynamicFillErasingDelegate;
- (Class)layerClass;
- (_NSRange)i_commitAvailableFreehandDrawingPointsIfPossible;
- (_NSRange)i_uncommittedFreehandDrawingPointRange;
- (_TtC8Freeform12CRLShapeItem)shapeInfo;
- (double)opacity;
- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4;
- (double)strokeEnd;
- (id)additionalRenderablesOverRenderable;
- (id)colorBehindLayer:(id)a3;
- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5;
- (id)dataForUpdateUploadIndicator;
- (id)dynamicMoveLineSegmentDidBegin;
- (id)dynamicMoveSmartShapeKnobDidBegin;
- (id)dynamicResizeDidBegin;
- (id)i_brushStrokeFromStroke:(id)a3;
- (id)i_strokeForRenderingIncludingPlaybackFromStroke:(id)a3;
- (id)imageOfStroke:(CGRect *)a3;
- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4;
- (id)newTrackerForKnob:(id)a3;
- (id)overlayRenderables;
- (id)p_pathEditor;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (unint64_t)enabledKnobMask;
- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)a3;
- (unint64_t)p_renderingDestination;
- (void)addSelectionKnobsToArray:(id)a3;
- (void)beginEditing;
- (void)beginEditingWithString:(id)a3;
- (void)didUpdateRenderable:(id)a3;
- (void)documentModeDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)drawInLayerContext:(CGContext *)a3;
- (void)dynamicDragDidBegin;
- (void)dynamicDragDidEndAt:(CGPoint)a3;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicMoveLineSegmentDidEndWithTracker:(id)a3;
- (void)dynamicMovePathKnobDidBegin;
- (void)dynamicMovePathKnobDidEndWithTracker:(id)a3;
- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)a3;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicallyFreeTransformingWithTracker:(id)a3;
- (void)dynamicallyMovedPathKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)dynamicallyMovingLineSegmentWithTracker:(id)a3;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)dynamicallyRotatingWithTracker:(id)a3;
- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4 withCommittedPointRange:(_NSRange)a5;
- (void)enqueuePathSourceChanges;
- (void)i_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 andStroke:(id)a5 inContext:(CGContext *)a6 useFastDrawing:(BOOL)a7;
- (void)i_endApplyOpacity:(CGContext *)a3 appliedTransparencyLayer:(BOOL)a4;
- (void)i_forceInvalidateLayerFrame;
- (void)i_setIsCurrentlyBeingFreehandDrawn:(BOOL)a3;
- (void)invalidateEffectLayersForChildren;
- (void)invalidateExteriorWrap;
- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5;
- (void)p_beginDynamicallyResizingOrMovingLineEnd;
- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)p_endDynamicallyResizingOrMovingLineEnd;
- (void)p_forDragAndDropSetColor:(id)a3;
- (void)p_forceSetNeedsDisplay;
- (void)p_forceSetNeedsDisplayInRect:(CGRect)a3;
- (void)p_handleAssetPreparationCompletion;
- (void)p_hitCacheSetCachedValue:(BOOL)a3 forPoint:(CGPoint)a4 withPrecision:(BOOL)a5;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)processChangedProperty:(unint64_t)a3;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setParentRep:(id)a3;
- (void)setShadowOnChildrenDisabled:(BOOL)a3;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
- (void)willUpdateRenderable:(id)a3;
@end

@implementation CRLShapeRep

- (CRLShapeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = CRLShapeRep;
  v7 = [(CRLCanvasRep *)&v21 initWithLayout:a3 canvas:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(CRLShapeRep *)v7 shapeInfo];
    if (v9 && ([(CRLShapeRep *)v8 shapeLayout], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = objc_alloc_init(NSUUID);
      mDownloadObserverIdentifier = v8->mDownloadObserverIdentifier;
      v8->mDownloadObserverIdentifier = v11;

      if ([v6 isCanvasInteractive])
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
      v16 = [v9 isFreehandDrawingShape];
      v17 = off_10182F988;
      if (v16)
      {
        v17 = off_10182F990;
      }

      v8->mIsFreehandDrawingShape = v16;
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
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLShapeLayout)shapeLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)setParentRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self parentRep];
  v19.receiver = self;
  v19.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v19 setParentRep:v4];
  if (v5 != v4)
  {
    v6 = [(CRLCanvasRep *)self canvas];
    if (![v6 isCanvasInteractive])
    {
LABEL_14:

      goto LABEL_15;
    }

    mIsFreehandDrawingShape = self->mIsFreehandDrawingShape;

    if (mIsFreehandDrawingShape)
    {
      v8 = objc_opt_class();
      v9 = [(CRLCanvasRep *)self layout];
      v10 = [v9 stroke];
      v6 = sub_100014370(v8, v10);

      if (v6)
      {
        v11 = [v6 inkType];
        v12 = ![PKInk crl_isSixChannelBlendingUsedByInkType:v11];
      }

      else
      {
        v12 = 1;
      }

      v13 = [(CRLShapeRep *)self shapeInfo];
      v14 = [v13 isTreatedAsFillForFreehandDrawing];

      if (!v12 || v14)
      {
        v15 = objc_opt_class();
        v16 = sub_100013F00(v15, v5);
        v17 = objc_opt_class();
        v18 = sub_100013F00(v17, v4);
        if ((v12 & 1) == 0)
        {
          [v16 didRemoveSixChannelEnabledChildRep:self];
          [v18 didAddSixChannelEnabledChildRep:self];
        }

        if (v14)
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
    v7 = [(CRLShapeRep *)self shapeLayout];
    v8 = v7;
    if (v7)
    {
      [v7 transformInRoot];
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

- (BOOL)i_beginApplyOpacity:(CGContext *)a3 forDrawingInOneStep:(BOOL)a4
{
  [(CRLShapeRep *)self opacity];
  if (v7 >= 1.0)
  {
    return 0;
  }

  CGContextSetAlpha(a3, v7);
  if (a4)
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

    CGContextBeginTransparencyLayer(a3, 0);
  }

  else
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGContextBeginTransparencyLayerWithRect(a3, v19, 0);
  }

  return 1;
}

- (void)i_endApplyOpacity:(CGContext *)a3 appliedTransparencyLayer:(BOOL)a4
{
  if (a4)
  {
    CGContextEndTransparencyLayer(a3);
  }
}

- (id)colorBehindLayer:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLShapeRep *)self shapeLayout];
  v6 = [v5 fill];
  v7 = sub_100014370(v4, v6);

  if (v7 && [v7 isOpaque])
  {
    v8 = [v7 color];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  v7 = [(CRLCanvasRep *)self childReps];
  v8 = [v7 count];

  if (v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10019497C;
    v18[3] = &unk_101843720;
    v9 = v6;
    v19 = v9;
    v10 = objc_retainBlock(v18);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100194998;
    v16[3] = &unk_101843720;
    v17 = v9;
    v11 = objc_retainBlock(v16);
    CGContextSaveGState(a3);
    v12 = [(CRLShapeRep *)self i_beginApplyOpacity:a3 forDrawingInOneStep:0];
    v15.receiver = self;
    v15.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v15 recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v10];
    [(CRLShapeRep *)self i_endApplyOpacity:a3 appliedTransparencyLayer:v12];
    CGContextRestoreGState(a3);
    v14.receiver = self;
    v14.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v14 recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v13 recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v6];
  }
}

- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:a4];
}

- (void)drawInLayerContext:(CGContext *)a3
{
  if (![(CRLShapeRep *)self p_renderingDestination])
  {

    [(CRLShapeRep *)self p_drawInContext:a3 withContent:1 strokeDrawOptions:7 withOpacity:0];
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v9 = a8;
  v11 = a6;
  v13 = a4;
  v17 = a9;
  if (![(CRLShapeRep *)self isInvisible]|| !v11 && ([(CRLShapeRep *)self opacity], v16 == 0.0))
  {
    [(CRLShapeRep *)self p_drawInContext:a3 withContent:v13 strokeDrawOptions:a5 withOpacity:v11];
  }

  if (v9 && (!self->mShadowOnChildrenDisabled || !a7))
  {
    if (v11)
    {
      [(CRLShapeRep *)self recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v17];
    }

    else
    {
      [(CRLShapeRep *)self p_drawChildrenWithoutOpacityInContext:a3 keepingChildrenPassingTest:v17];
    }
  }
}

- (CGRect)strokeBoundsWithOptions:(unint64_t)a3 fallbackBounds:(CGRect)a4
{
  v5 = [(CRLShapeRep *)self shapeLayout:a4.origin.x];
  v6 = *&CGAffineTransformIdentity.c;
  v19[0] = *&CGAffineTransformIdentity.a;
  v19[1] = v6;
  v19[2] = *&CGAffineTransformIdentity.tx;
  [v5 shapeFrameWithTransform:v19 strokeDrawOptions:a3];
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

- (id)imageOfStroke:(CGRect *)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(CRLCanvasRep *)self layout];
  v10 = [v9 stroke];

  if (v10 && [v10 shouldRender])
  {
    v11 = [(CRLShapeRep *)self shapeLayout];
    [v11 frame];
    x = v14;
    y = v15;
    width = v12;
    height = v13;
    v16 = 0;
    if (v12 > 0.0 && v13 > 0.0)
    {
      v17 = sub_10050DF80([(CRLShapeRep *)self p_bitmapContextOptionsForDrawingStroke:v10]| 8u, v12, v13);
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

  a3->origin.x = x;
  a3->origin.y = y;
  a3->size.width = width;
  a3->size.height = height;

  return v16;
}

- (BOOL)isInvisible
{
  if (!self->mIsInvisibleCacheValid)
  {
    v3 = [(CRLCanvasRep *)self layout];
    v4 = [v3 stroke];

    v5 = [(CRLShapeRep *)self shapeLayout];
    v6 = [v5 fill];

    [(CRLShapeRep *)self opacity];
    v7 = 1;
    if (v8 != 0.0)
    {
      if (v4 && ([v4 shouldRender] & 1) != 0)
      {
        v7 = 0;
      }

      else if (v6)
      {
        v7 = [v6 isClear];
      }

      else
      {
        v7 = 1;
      }
    }

    self->mIsInvisibleCache = v7;
    self->mIsInvisibleCacheValid = 1;
  }

  if (self->mIsInvisibleCache)
  {
    return 1;
  }

  v10 = [(CRLShapeRep *)self shapeLayout];
  v11 = [v10 isInvisible];

  return v11;
}

- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 stroke];

  if (v3)
  {
    v4 = [objc_opt_class() isMoreOptimalToDrawWithOtherStrokesIfPossible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canDrawWithOtherShapeRep:(id)a3
{
  v4 = a3;
  if (!-[CRLShapeRep isPartiallyAnimated](self, "isPartiallyAnimated") && ([v4 isPartiallyAnimated] & 1) == 0)
  {
    v7 = [(CRLCanvasRep *)self childReps];
    if ([v7 count])
    {
      v5 = 0;
    }

    else
    {
      v8 = [v4 childReps];
      v9 = [v8 count];

      if (v9)
      {
        goto LABEL_3;
      }

      [(CRLShapeRep *)self opacity];
      v11 = v10;
      [v4 opacity];
      if (v11 != v12 && vabdd_f64(v11, v12) >= fabs(v12 * 0.000000999999997))
      {
        goto LABEL_3;
      }

      [(CRLShapeRep *)self strokeEnd];
      if (v13 < 1.0)
      {
        goto LABEL_3;
      }

      [v4 strokeEnd];
      if (v14 < 1.0)
      {
        goto LABEL_3;
      }

      v7 = [(CRLShapeRep *)self shapeLayout];
      v15 = [v4 shapeLayout];
      v16 = [v7 fill];
      if (v16)
      {
        v17 = [v7 fill];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v18 = 0;
      }

      v19 = [v15 fill];
      if (v19)
      {
        v20 = [v15 fill];
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
        v22 = [v7 stroke];
        v23 = [v15 stroke];
        v5 = [v22 canDrawWithOtherStroke:v23];
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
    v5 = [(CRLShapeRep *)self shapeInfo];
    v6 = [v5 isTreatedAsFillForFreehandDrawing];

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [(CRLCanvasRep *)self interactiveCanvasController];
      v9 = [v8 freehandDrawingToolkit];
      v10 = [v9 currentTool];
      v11 = sub_100013F00(v7, v10);

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

- (void)i_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 andStroke:(id)a5 inContext:(CGContext *)a6 useFastDrawing:(BOOL)a7
{
  v7 = a7;
  x = a4.x;
  v10 = a3;
  v31 = a5;
  v12 = [(CRLShapeRep *)self shapeLayout];
  v13 = v12;
  if (v10)
  {
    v14 = [v12 strokeHeadLineEnd];
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = v14;
    [v13 headLineEndPoint];
    v17 = v16;
    v19 = v18;
    [v13 headLineEndAngle];
  }

  else
  {
    v21 = [v12 strokeTailLineEnd];
    if (!v21)
    {
      goto LABEL_7;
    }

    v15 = v21;
    [v13 tailLineEndPoint];
    v17 = v22;
    v19 = v23;
    [v13 tailLineEndAngle];
  }

  v24 = v20;
  v25 = sub_10011F334(v17, v19, x);
  v27 = v26;
  v28 = [v13 stroke];
  [v28 width];
  [v15 scaleForStrokeWidth:?];
  v30 = v29;

  [v31 paintLineEnd:v15 atPoint:a6 atAngle:v7 withScale:v25 inContext:v27 useFastDrawing:{v24, v30}];
LABEL_7:
}

- (BOOL)p_shouldDrawStrokeWide:(id)a3
{
  v4 = [a3 color];
  if ([v4 colorRGBSpace] == 1)
  {
    v5 = [(CRLCanvasRep *)self canvas];
    v6 = [v5 canvasIsWideGamut];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)a3
{
  if ([(CRLShapeRep *)self p_shouldDrawStrokeWide:a3])
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

- (id)i_brushStrokeFromStroke:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  if (!v5)
  {
    v6 = [v3 cap];
    v7 = &off_101852288;
    if (v6 != 1)
    {
      v7 = &off_101852280;
    }

    v8 = *v7;
    v9 = [CRLBrushStroke alloc];
    v10 = [v3 color];
    [v3 width];
    v12 = v11;
    v13 = [v3 cap];
    v14 = [v3 join];
    v15 = [v3 pattern];
    [v3 miterLimit];
    v5 = [(CRLBrushStroke *)v9 initWithName:v8 color:v10 width:v13 cap:v14 join:v15 pattern:v12 miterLimit:v16];
  }

  return v5;
}

- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)a3
{
  v3 = a3;
  if (![(CRLShapeRepHelperProtocol *)self->mHelper drawsInOneStep])
  {
    return 0;
  }

  v5 = objc_opt_class();
  v6 = [(CRLShapeRep *)self shapeLayout];
  v7 = [v6 fill];
  v8 = sub_100014370(v5, v7);

  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v3;
  }

  if (!v10)
  {
    v11 = [(CRLCanvasRep *)self childReps];
    v9 = [v11 count] == 0;
  }

  return v9;
}

- (BOOL)shouldShowShadow
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  v3 = [(CRLStyledRep *)&v7 shouldShowShadow];
  if (v3)
  {
    v4 = [(CRLCanvasRep *)self canvas];
    v5 = [v4 shouldSuppressBackgrounds];

    if (v5)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(CRLShapeRep *)self shadowOnChildrenDisabled];
    }
  }

  return v3;
}

- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)a3
{
  v4 = a3;
  if ((*(self + 344) & 3) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [v4 width];
    v7 = v6;
    v8 = [(CRLCanvasRep *)self canvas];
    [v8 viewScale];
    v5 = v7 * v9 < 5.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)i_strokeForRenderingIncludingPlaybackFromStroke:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([(CRLShapeRep *)self p_shouldUpgradeStrokeForPlayback:v4])
  {
    v5 = [(CRLShapeRep *)self i_brushStrokeFromStroke:v4];
  }

  return v5;
}

- (void)setNeedsDisplay
{
  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [v3 i_isInsideResizingFreehandDrawing];

  if (![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn]&& (v4 & 1) == 0)
  {

    [(CRLShapeRep *)self p_forceSetNeedsDisplay];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)p_forceSetNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)p_layerFrameInScaledCanvasForDirectlyManagedLayer:(BOOL)a3
{
  v3 = a3;
  if ([(CRLCanvasRep *)self isBeingRotated]|| !v3)
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
    v5 = [(CRLCanvasRep *)self canvas];
    [(CRLShapeRep *)self frameInUnscaledCanvas];
    [v5 convertUnscaledToBoundsRect:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CRLCanvasRep *)self canvas];
    [v14 contentsScale];
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
    v35 = [(CRLCanvasRep *)self canvas];
    [v35 contentsScale];
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
  v3 = [(CRLShapeRep *)self directlyManagesLayerContent];

  [(CRLShapeRep *)self p_layerFrameInScaledCanvasForDirectlyManagedLayer:v3];
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
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 canvasController];
  v5 = [v4 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  if (v5)
  {
    v6 = [(CRLCanvasRep *)self parentRep];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v8 layoutInRootChangedFrom:a3 to:a4 translatedOnly:?];
  if (!a5)
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
    v3 = [(CRLCanvasRep *)self layout];
    v4 = [v3 stroke];
    v5 = [(CRLShapeRep *)self p_shouldUpgradeStrokeForPlayback:v4];

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
    v15 = [(CRLCanvasRep *)self interactiveCanvasController];
    v16 = [v15 canvasView];
    v17 = [v16 metalDeviceForScreenWithCanvas];
    [v14 maximumMetalTextureSizeForDevice:v17];
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
      v4 = 1;
    }

    else
    {
      v8.receiver = self;
      v8.super_class = CRLShapeRep;
      v4 = [(CRLCanvasRep *)&v8 directlyManagesLayerContent];
    }

    self->mDirectlyManagesLayerContent = v4;
    if (mDirectlyManagesLayerContent && !v4)
    {
LABEL_6:
      v5 = [(CRLCanvasRep *)self interactiveCanvasController];
      v6 = [v5 renderableForRep:self];

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
  v2 = [(CRLCanvasRep *)self info];
  v3 = objc_opt_class();
  v4 = [v2 parentInfo];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    v6 = [v5 isNonGroupedChild:v2] ^ 1;
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
  v3 = [(CRLCanvasRep *)&v6 layerClass];
  v4 = [(CRLShapeRep *)self p_renderingDestination];
  if (v4 == 1 || v4 == 2)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)i_forceInvalidateLayerFrame
{
  self->mShouldForceRenderableGeometryUpdate = 1;
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
}

- (BOOL)p_currentlyDrawingSomeOtherShape
{
  v3 = [(CRLCanvasRep *)self parentRep];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 freehandDrawingToolkit];
    if ([v6 isInDrawingMode] && !-[CRLCanvasRep isInDynamicOperation](self, "isInDynamicOperation") && objc_msgSend(v5, "isInDynamicOperation") && (objc_msgSend(v6, "currentTool"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, (v8 - 11) <= 0xFFFFFFFFFFFFFFFDLL))
    {
      v9 = [v5 tmCoordinator];
      v10 = [v9 controllingTM];
      v11 = [v10 tracker];

      if (v11)
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

- (CGSize)p_sizeForDirectlyManagedImageFromRenderableSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CRLCanvasRep *)self canvas];
  [v5 contentsScale];
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

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  if (![(CRLShapeRep *)self p_shouldSkipRenderableRecalculations])
  {
    v7.receiver = self;
    v7.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v7 updateRenderableGeometryFromLayout:v4];
    v5 = [(CRLCanvasRep *)self canvas];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100196738;
    v6[3] = &unk_10183AB38;
    v6[4] = self;
    [v5 performBlockAfterLayoutIfNecessary:v6];
  }

  [(CRLShapeRep *)self p_invalidateHitTestCache];
}

- (void)willUpdateRenderable:(id)a3
{
  v4 = a3;
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
  [(CRLCanvasRep *)&v8 willUpdateRenderable:v4];
}

- (void)didUpdateRenderable:(id)a3
{
  v4 = a3;
  v157.receiver = self;
  v157.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v157 didUpdateRenderable:v4];
  if (![(CRLShapeRep *)self p_shouldSkipRenderableRecalculations])
  {
    [(CRLShapeRep *)self opacity];
    v6 = v5;
    [v4 opacity];
    v8 = v7;
    if (v6 != v8)
    {
      *&v8 = v6;
      [v4 setOpacity:v8];
    }

    if ((*(self + 344) & 3) != 0)
    {
      v9 = [v4 contents];
      v10 = v9 != 0;
    }

    else
    {
      v10 = 0;
    }

    if (![(CRLShapeRep *)self isInvisible]|| v10)
    {
      if (!-[CRLShapeRep directlyManagesLayerContent](self, "directlyManagesLayerContent") && ([v4 crl_tilingSafeHasContents] & 1) == 0)
      {
        v11 = [(CRLCanvasRep *)self interactiveCanvasController];
        v12 = [v4 layer];
        [v11 setNeedsDisplayOnLayer:v12];
      }
    }

    else
    {
      [v4 setContents:0];
    }

    if (self->mIsFreehandDrawingShape)
    {
      v13 = [(CRLCanvasRep *)self canvas];
      v14 = [v13 allReps];
      v15 = [v14 count];

      if (v15 >= 0x5DD)
      {
        v16 = objc_opt_class();
        v17 = sub_100014370(v16, v4);
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
        v20 = [(CRLShapeRep *)self directlyManagesLayerContent];
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
LABEL_25:
    v139 = v19;
    mNeedsDisplay = self->mNeedsDisplay;
    v140 = v4;
    if (!(v10 | ![(CRLShapeRep *)self directlyManagesLayerContent]))
    {
      self->mNeedsDisplay = 0;
      v22 = [(CRLShapeRep *)self p_renderingDestination];
      if (v22 - 1 <= 1)
      {
        v23 = v22;
        v24 = [(CRLCanvasRep *)self layout];
        v25 = [v24 stroke];
        v26 = [(CRLShapeRep *)self i_strokeForRenderingIncludingPlaybackFromStroke:v25];

        v27 = objc_opt_class();
        v28 = sub_100014370(v27, v26);
        if (v28)
        {
          if (mNeedsDisplay)
          {
            *v135 = *&CGAffineTransformIdentity.c;
            *&v156.a = *&CGAffineTransformIdentity.a;
            *&v156.c = *v135;
            *&v156.tx = *&CGAffineTransformIdentity.tx;
            tx = v156.tx;
            v29 = [(CRLCanvasRep *)self canvas];
            [v29 contentsScale];
            v31 = v30;
            v32 = [(CRLCanvasRep *)self canvas];
            [v32 contentsScale];
            *&v155.a = *&v156.a;
            *&v155.c = *v135;
            *&v155.tx = *&v156.tx;
            CGAffineTransformScale(&v156, &v155, v31, v33);

            [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
            t2 = v156;
            CGAffineTransformConcat(&v155, &t1, &t2);
            v156 = v155;
            v34 = [(CRLShapeRep *)self shapeLayout];
            [v34 pathBounds];
            v36 = v35;
            v38 = v37;

            t1 = v156;
            CGAffineTransformTranslate(&v155, &t1, -v36, -v38);
            v156 = v155;
            [v4 frame];
            [(CRLShapeRep *)self p_sizeForDirectlyManagedImageFromRenderableSize:v39, v40];
            if (v41 <= 0.0 || (v43 = v42, v42 <= 0.0) || (v44 = v41, [(CRLShapeRep *)self strokeEnd], v45 <= 0.0) || [(CRLShapeRep *)self isInvisible]&& (*(self + 344) & 3) == 0)
            {
              if (v23 == 1)
              {
                [v4 setContents:0];
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
              v46 = [(CRLShapeRep *)self shapeLayout];
              v47 = [v46 pathSource];
              v48 = [v47 bezierPath];
              v136 = [v48 copy];

              *&v49 = COERCE_DOUBLE(objc_alloc_init(CRLBrushStrokeLayoutOptions));
              if ([(CRLShapeRepHelperProtocol *)self->mHelper hasLegacyFreehandDrawingBrushStroke])
              {
                v50 = [(CRLShapeRep *)self shapeLayout];
                v51 = [v50 dynamicPatternOffsetsBySubpath];

                if (v51)
                {
                  v52 = [(CRLShapeRep *)self shapeLayout];
                  v53 = [v52 dynamicPatternOffsetsBySubpath];
                  v54 = [v53 copy];
                }

                else
                {
                  v52 = [(CRLShapeRep *)self shapeInfo];
                  [v52 strokePatternOffsetDistance];
                  v53 = [NSNumber numberWithDouble:?];
                  v158 = v53;
                  v54 = [NSArray arrayWithObjects:&v158 count:1];
                }

                v75 = v54;
                [(CRLBrushStrokeLayoutOptions *)v49 setPatternOffsetsBySubpath:v54];

                v4 = v140;
              }

              [(CRLShapeRep *)self strokeEnd];
              [(CRLBrushStrokeLayoutOptions *)v49 setStrokeEnd:?];
              if (v23 == 1)
              {
                v76 = objc_opt_class();
                v77 = [(CRLCanvasRep *)self parentRep];
                sub_100013F00(v76, v77);
                v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

                tx = v78;
                if ([(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn])
                {
                  v79 = 0;
                }

                else
                {
                  v79 = [*&v78 queueForConcurrentlyDrawingChildrenIntoLayersIfSafe];
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
                if (v79)
                {
                  v143[0] = _NSConcreteStackBlock;
                  v143[1] = 3221225472;
                  v143[2] = sub_100197AAC;
                  v143[3] = &unk_10183B230;
                  v144 = v103;
                  [v79 performAsync:v143];
                  v105 = [(CRLCanvasRep *)self interactiveCanvasController];
                  v106 = [v102 layer];
                  [v105 setNeedsDisplayOnLayer:v106];

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
                v84 = [v4 layer];
                sub_100013F00(v83, v84);
                v79 = v85 = v4;

                [v79 setOpaque:0];
                [v79 setPresentsWithTransaction:0];
                [v79 setAllowsNextDrawableTimeout:0];
                [v79 setMaximumDrawableCount:3];
                [v79 setDevice:v81];
                [v79 setPixelFormat:v82];
                [v79 setColorspace:0];
                v86 = [v79 nextDrawable];
                v87 = [CRLBrushStrokeDirectMetalRenderingContext alloc];
                [v85 frame];
                v89 = v88;
                v91 = v90;
                v93 = v92;
                v95 = v94;
                v96 = [(CRLCanvasRep *)self canvas];
                [v96 contentsScale];
                v155 = v156;
                v97 = *&v81;
                v99 = [(CRLBrushStrokeDirectMetalRenderingContext *)v87 initWithMetalDrawable:v86 frame:&v155 transform:0 contentsScale:v81 destinationColorSpaceOverride:v89 metalDeviceOverride:v91, v93, v95, v98];

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

      v55 = [(CRLCanvasRep *)self canvas];
      [v55 viewScale];
      v57 = v56;

      if ([(CRLShapeRep *)self p_canApplyFillToRenderable])
      {
        v58 = [(CRLShapeRep *)self shapeLayout];
        v59 = [v58 fill];

        if (v59)
        {
          v60 = [(CRLShapeRep *)self shapeLayout];
          v61 = [v60 fill];
          [v61 applyToRenderable:v4 withScale:v57];
        }

        else
        {
          [v4 setContents:0];
          [v4 setBackgroundColor:0];
        }
      }

      if ([(CRLShapeRep *)self p_canApplyStrokeToRenderable])
      {
        v65 = [(CRLCanvasRep *)self layout];
        v26 = [v65 stroke];

        if (v26)
        {
          v66 = [(CRLCanvasRep *)self canvas];
          [v66 contentsScale];
          v68 = v57 * v67;

          v156.a = 0.0;
          v156.b = 0.0;
          v155.a = 0.0;
          v155.b = 0.0;
          v69 = [(CRLShapeRep *)self shapeLayout];
          v141 = 0;
          v142 = 0;
          [v69 aliasPathForScale:&v142 adjustedStroke:&v141 adjustedPath:&v156 startDelta:&v155 endDelta:v68];
          v70 = v142;
          v71 = v141;

          [v70 applyToRepRenderable:v4 withScale:v57];
        }

        else
        {
          [v4 setBorderColor:0];
          [v4 setBorderWidth:0.0];
        }

LABEL_83:
      }
    }

    v107 = [(CRLCanvasRep *)self interactiveCanvasController];
    v108 = [v107 freehandDrawingToolkit];

    v109 = [(CRLShapeRep *)self shapeInfo];
    v110 = [v109 id];
    v111 = [v108 wantsToAnimateForObjectUUID:v110 animation:@"CRLFreehandDrawingToolkitAnimationNameOutlineFill"];

    v112 = [(CRLShapeRep *)self shapeInfo];
    v113 = [v112 id];
    v114 = [v108 wantsToAnimateForObjectUUID:v113 animation:@"CRLFreehandDrawingToolkitAnimationNameFloodFill"];

    v4 = v140;
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
    if ((v139 | v20))
    {
      if (!v20)
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
        v130 = [(CRLShapeRep *)self shapeInfo];
        v131 = [v130 id];
        if (v111)
        {
          v132 = @"CRLFreehandDrawingToolkitAnimationNameOutlineFill";
        }

        else
        {
          v132 = @"CRLFreehandDrawingToolkitAnimationNameFloodFill";
        }

        v133 = [v108 animationCompletionHandlerForObjectUUID:v131 animation:v132];

        if (v120 && v129)
        {
          +[CATransaction begin];
          v4 = v140;
          [v140 addAnimation:v120 forKey:v119];
          [CATransaction setCompletionBlock:v133];
          +[CATransaction commit];
        }

        else
        {
          v4 = v140;
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
      v121 = [v140 presentationRenderable];
      v122 = [v121 backgroundColor];
      v123 = v120;
    }

    else
    {
      v124 = 0.0;
      if (v111)
      {
        v125 = objc_opt_class();
        v126 = [v108 currentTool];
        v127 = sub_100013F00(v125, v126);

        [v127 actualOpacityValueForOutlineFills];
        v124 = v128;
      }

      v119 = @"opacity";
      v120 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [v120 setDuration:0.2];
      [v120 setTimingFunction:v138];
      v121 = [NSNumber numberWithDouble:v124];
      v123 = v120;
      v122 = v121;
    }

    [v123 setFromValue:v122];

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

  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 canvasController];
  v5 = [v4 freehandDrawingToolkit];
  v6 = [v5 isInDrawingMode];

  if (!v6)
  {
    return 1;
  }

  v7 = [(CRLShapeRep *)self shapeLayout];
  v8 = [v7 fill];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isClear] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  [(CRLShapeRep *)self opacity];
  v11 = 1;
  if (v12 != 0.0 && (v10 & 1) == 0)
  {
    v13 = [v7 stroke];
    if ([v13 shouldRender])
    {
      v14 = [v13 color];
      [v14 alphaComponent];
      v11 = v15 <= 0.0;
    }
  }

  return v11;
}

- (BOOL)p_hitCacheGetCachedValue:(BOOL *)a3 forPoint:(CGPoint)a4 withPrecision:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  if (![(NSMutableDictionary *)self->mHitTestCache count])
  {
    return 0;
  }

  v10 = [NSValue valueWithCGPoint:x, y];
  v11 = [NSNumber numberWithBool:v5];
  v12 = [CRLPair pairWithFirst:v10 second:v11];

  v13 = [(NSMutableDictionary *)self->mHitTestCache objectForKey:v12];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    *a3 = [v13 BOOLValue];
  }

  return v14;
}

- (void)p_hitCacheSetCachedValue:(BOOL)a3 forPoint:(CGPoint)a4 withPrecision:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = [NSValue valueWithCGPoint:a4.x, a4.y];
  v9 = [NSNumber numberWithBool:v5];
  v12 = [CRLPair pairWithFirst:v8 second:v9];

  mHitTestCache = self->mHitTestCache;
  v11 = [NSNumber numberWithBool:v6];
  [(NSMutableDictionary *)mHitTestCache setObject:v11 forKey:v12];
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v44 = 0;
  if (![(CRLShapeRep *)self p_hitCacheGetCachedValue:&v44 forPoint:a4 withPrecision:?])
  {
    v9 = [(CRLCanvasRep *)self canvas];
    v10 = v9;
    v11 = &unk_101466728;
    if (!v4)
    {
      v11 = &unk_101466720;
    }

    v12 = *v11;
    [v9 viewScale];
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

    v15 = [(CRLShapeRep *)self shapeLayout];
    v16 = [v15 path];
    v17 = [v16 CGPath];

    if (!v17)
    {
      v8 = 0;
LABEL_39:
      [(CRLShapeRep *)self p_hitCacheSetCachedValue:v8 forPoint:v4 withPrecision:x, y];

      goto LABEL_40;
    }

    v18 = sub_10050DF80(19, 1.0, 1.0);
    Data = CGBitmapContextGetData(v18);
    [v15 pathBounds];
    CGContextTranslateCTM(v18, -v20, -v21);
    CGContextTranslateCTM(v18, -x, -y);
    if (([v15 pathIsLineSegment] & 1) == 0 && (-[CRLShapeRep shouldHitTestWithFill](self, "shouldHitTestWithFill") || objc_msgSend(v10, "i_shouldIgnoreClickThrough")))
    {
      v31 = +[CRLColor blackColor];
      [v31 paintPath:v17 inContext:v18];

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

    v23 = [(CRLCanvasRep *)self layout];
    v24 = [v23 stroke];

    if ((v22 & 1) == 0 && ![(CRLStroke *)v24 shouldRender])
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

    if (!v24)
    {
      v24 = objc_alloc_init(CRLStroke);
    }

    [(CRLStroke *)v24 width];
    if (v14 < v27)
    {
      v14 = v27;
    }

    if ([(CRLStroke *)v24 drawsOutsideStrokeBounds])
    {
      [(CRLStroke *)v24 width];
      if (v28 >= v14)
      {
        goto LABEL_28;
      }

      v43 = Data;
      v29 = [(CRLStroke *)v24 mutableCopy];
      [(CRLStroke *)v29 setWidth:v14];
      v30 = +[CRLColor blackColor];
      [(CRLStroke *)v29 setColor:v30];
    }

    else
    {
      v43 = Data;
      v32 = +[CRLColor blackColor];
      v33 = v17;
      v34 = [(CRLStroke *)v24 join];
      v30 = +[CRLStrokePattern solidPattern];
      v35 = v34;
      v17 = v33;
      v29 = [CRLStroke strokeWithColor:v32 width:1 cap:v35 join:v30 pattern:v14];

      v24 = v32;
    }

    v24 = v29;
    Data = v43;
LABEL_28:
    v8 = 1;
    [(CRLStroke *)v24 paintPath:v17 wantsInteriorStroke:0 inContext:v18 useFastDrawing:1 parameterized:0 shouldReverseDrawOrder:0];
    v36 = *Data;
    v37 = [(CRLShapeRep *)self shapeInfo];
    if (v36)
    {
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    if ([v15 pathIsOpen])
    {
      v38 = [v37 headLineEnd];
      if (v38)
      {

LABEL_34:
        v40 = +[CRLColor blackColor];
        CGContextSetStrokeColorWithColor(v18, [v40 CGColor]);

        v41 = CGPointZero.y;
        [(CRLShapeRep *)self i_drawLineEndForHead:1 withDelta:v24 andStroke:v18 inContext:1 useFastDrawing:CGPointZero.x, v41];
        [(CRLShapeRep *)self i_drawLineEndForHead:0 withDelta:v24 andStroke:v18 inContext:1 useFastDrawing:CGPointZero.x, v41];
        v8 = *Data != 0;
        goto LABEL_36;
      }

      v39 = [v37 tailLineEnd];

      if (v39)
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
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 stroke];

  if (v3)
  {
    v4 = [v3 shouldRender] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLShapeRep *)self shapeLayout];
  v9 = [v8 stroke];

  if (v9)
  {
    [v9 width];
    v11 = v10 * 0.5;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [(CRLCanvasRep *)self canvas];
  [v12 viewScale];
  v14 = 6.0 / v13;

  if (v14 >= v11)
  {
    v11 = v14;
  }

  v15 = [(CRLCanvasRep *)self layout];
  v16 = [v15 geometry];
  [v16 size];
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
    v21 = [(CRLShapeRep *)self shapeLayout];
    [v21 pathBounds];
    v23 = v22;

    v24 = sub_10011F334(x, y, v23);
    v26 = v25;
    v27 = [(CRLShapeRep *)self shapeLayout];
    v28 = [v27 path];
    [v28 distanceToPoint:0 elementIndex:0 tValue:0 threshold:v24 findClosestMatch:{v26, v11}];
    v30 = v29;

    if (a4 && v30 <= v11)
    {
      *a4 = 1;
    }
  }

  else
  {
    v30 = 3.40282347e38;
  }

  return v30;
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLShapeRep *)self shapeLayout];
  [v8 frameInRoot];
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
    v15 = [(CRLShapeRep *)self shapeLayout];
    v16 = [v15 i_wrapPath];
    v17 = [v16 copy];
    v18 = self->mCachedWrapPathInRoot;
    self->mCachedWrapPathInRoot = v17;

    v19 = self->mCachedWrapPathInRoot;
    v20 = [(CRLCanvasRep *)self layout];
    v21 = v20;
    if (v20)
    {
      [v20 transformInRoot];
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

- (void)processChangedProperty:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CRLShapeRep;
  [(CRLStyledRep *)&v7 processChangedProperty:?];
  if (a3 > 0x18 || ((1 << a3) & 0x1E30000) == 0)
  {
    goto LABEL_13;
  }

  [(CRLShapeRep *)self setNeedsDisplay];
  v5 = [(CRLCanvasRep *)self canvas];
  [v5 canvasInvalidatedForRep:self];

  if (a3 > 22)
  {
    if (a3 - 23 >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(a3)
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
      if (a3 == 21)
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [(CRLStyledRep *)self styledLayout];
  v5 = [(CRLCanvasRep *)self canvas];
  [v5 contentsScale];
  v7 = v6;
  v8 = [(CRLCanvasRep *)self canvas];
  [v8 viewScale];
  [v4 aliasedAlignmentFrameForScale:v7 * v9];
  [v3 convertUnscaledToBoundsRect:?];
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

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v9 dynamicOperationDidBeginWithRealTimeCommands:?];
  if (self->mIsFreehandDrawingShape)
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 layerHost];
    v7 = [v6 asiOSCVC];

    v8 = [v7 smartSelectionManager];
    [v8 dynamicOperationDidBeginWithRealTimeCommands:v3];
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 layerHost];
    v5 = [v4 asiOSCVC];

    v6 = [v5 smartSelectionManager];
    [v6 dynamicOperationDidEnd];
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
  v8 = [(CRLCanvasRep *)self parentRep];
  v9 = sub_100014370(v7, v8);

  [v9 beginTrifurcatedRenderForChildRep:self];
  if (self->mIsFreehandDrawingShape)
  {
    v10 = [(CRLCanvasRep *)self interactiveCanvasController];
    v11 = [v10 layerHost];
    v12 = [v11 asiOSCVC];

    v13 = [v12 smartSelectionManager];
    [v13 dynamicDragDidBegin];
  }

  v14.receiver = self;
  v14.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v14 dynamicDragDidBegin];
}

- (void)dynamicDragDidEndAt:(CGPoint)a3
{
  v15.receiver = self;
  v15.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v15 dynamicDragDidEndAt:a3.x, a3.y];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self parentRep];
  v6 = sub_100014370(v4, v5);

  [v6 endTrifurcatedRenderForChildRep:self];
  if (![(CRLShapeRep *)self directlyManagesLayerContent])
  {
    [(CRLShapeRep *)self aliasedAlignmentFrameInLayerFrame];
    if (!sub_10011EE4C(self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.x, self->mOriginalAliasedAlignmentFrameInLayerFrame.origin.y, self->mOriginalAliasedAlignmentFrameInLayerFrame.size.width, self->mOriginalAliasedAlignmentFrameInLayerFrame.size.height, v7, v8, v9, v10))
    {
      v11 = [(CRLCanvasRep *)self interactiveCanvasController];
      v12 = [v11 renderableForRep:self];

      v13 = [(CRLCanvasRep *)self interactiveCanvasController];
      v14 = [v12 layer];
      [v13 setNeedsDisplayOnLayer:v14];
    }
  }
}

- (CGRect)targetRectForEditMenu
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v7 = [(CRLShapeRep *)self shapeLayout];
  v8 = [v7 pathIsLineSegment];

  if (v8)
  {
    v9 = [(CRLShapeRep *)self shapeLayout];
    [v9 headPoint];
    v11 = v10;
    v13 = v12;
    v14 = [(CRLShapeRep *)self shapeLayout];
    [v14 tailPoint];
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
  v6 = [(CRLShapeRep *)self shapeLayout];
  if ([v6 pathIsLineSegment])
  {
    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [v7 usesAlternateDrawableSelectionHighlight];

    if (!v8)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = [(CRLShapeRep *)self p_pathEditor];

  if (v9)
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
  v6 = [(CRLShapeRep *)self shapeLayout];
  v7 = [v6 pathIsLineSegment];

  if (v7)
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
  v3 = [(CRLCanvasRep *)&v7 shouldIgnoreICCSuppressSelectionKnobs];
  v4 = [(CRLShapeRep *)self shapeLayout];
  v5 = [v4 pathIsLineSegment];

  return (v5 | v3) & 1;
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  v3 = [(CRLShapeRep *)self shapeInfo];
  v4 = [v3 supportsResize];

  if (!v4 || [(CRLShapeRep *)self isInvisible])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLShapeRep;
  return [(CRLStyledRep *)&v6 shouldHideSelectionHighlightDueToRectangularPath];
}

- (id)pathSourceForSelectionHighlightBehavior
{
  v2 = [(CRLShapeRep *)self shapeLayout];
  v3 = [v2 pathSource];

  return v3;
}

- (CGPath)newHighlightPathInScaledSpace
{
  v3 = [(CRLShapeRep *)self i_targetsDropsToStroke];
  v4 = [(CRLShapeRep *)self shapeLayout];
  v5 = [v4 computeWrapPathClosed:v3 ^ 1];

  if (!v5 || [v5 elementCount] <= 1)
  {
    v6 = [(CRLCanvasRep *)self layout];
    [v6 boundsForStandardKnobs];
    v7 = [CRLBezierPath bezierPathWithRect:?];

    v5 = v7;
  }

  memset(&transform, 0, sizeof(transform));
  v8 = [(CRLCanvasRep *)self layout];
  v9 = v8;
  if (v8)
  {
    [v8 transformInRoot];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  v10 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v10 viewScale];
  v12 = v11;

  CGAffineTransformMakeScale(&t2, v12, v12);
  v15 = transform;
  CGAffineTransformConcat(&v17, &v15, &t2);
  transform = v17;
  v13 = CGPathCreateCopyByTransformingPath([v5 CGPath], &transform);

  return v13;
}

- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(CRLCanvasRep *)self parentRep];
  v10 = sub_100014370(v8, v9);

  if ([v10 wantsToHandleDropForChildWithDragInfo:v7 atUnscaledPoint:{x, y}])
  {
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLShapeRep;
    v11 = [(CRLCanvasRep *)&v14 repToHighlightForDragInfo:v7 atUnscaledPoint:x, y];
  }

  v12 = v11;

  return v12;
}

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CRLShapeRep;
  v8 = [(CRLCanvasRep *)&v13 dragOperationForDragInfo:v7 atUnscaledPoint:x, y];
  if (![(CRLCanvasRep *)self isLocked])
  {
    if ([v7 canCreateItemsOfClass:objc_opt_class()] && objc_msgSend(v7, "numberOfDraggingItems") == 1)
    {
      if (![(CRLShapeRep *)self allowsColorDrop])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v9 = objc_opt_class();
    v10 = [(CRLCanvasRep *)self parentRep];
    v11 = sub_100014370(v9, v10);

    LODWORD(v10) = [v11 wantsToHandleDropForChildWithDragInfo:v7 atUnscaledPoint:{x, y}];
    if (v10)
    {
LABEL_7:
      v8 = [v7 dragOperationMask] & 1;
    }
  }

LABEL_8:

  return v8;
}

- (BOOL)i_targetsDropsToStroke
{
  v2 = [(CRLShapeRep *)self shapeLayout];
  if ([v2 pathIsOpen])
  {
    v3 = [v2 fill];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [(CRLCanvasRep *)self parentRep];
  v12 = sub_100014370(v10, v11);

  if ([v12 wantsToHandleDropForChildWithDragInfo:v9 atUnscaledPoint:{x, y}])
  {
    v13 = [v12 handleDragOperation:a3 withDragInfo:v9 atUnscaledPoint:{x, y}];
  }

  else
  {
    v14 = [(CRLCanvasRep *)self interactiveCanvasController];
    v15 = [v14 editingCoordinator];
    [v15 suspendCollaborationWithReason:@"CRLShapeDragAndDrop"];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001994C8;
    v18[3] = &unk_101843870;
    v18[4] = self;
    v16 = [v9 createItemsOfClass:objc_opt_class() completion:v18];
    v13 = 1;
  }

  return v13;
}

- (void)p_forDragAndDropSetColor:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    if ([(CRLShapeRep *)self i_targetsDropsToStroke])
    {
      v8 = [(CRLShapeRep *)self shapeLayout];
      v9 = [v8 stroke];
      v10 = [v9 mutableCopy];

      [v10 setColor:v4];
      v11 = [_TtC8Freeform19CRLCommandSetStroke alloc];
      v12 = [(CRLShapeRep *)self shapeInfo];
      v13 = [(CRLCommandSetStroke *)v11 initWithStyledItem:v12 stroke:v10];
    }

    else
    {
      v17 = [_TtC8Freeform17CRLCommandSetFill alloc];
      v10 = [(CRLShapeRep *)self shapeInfo];
      v12 = [CRLColorFill colorWithColor:v4];
      v13 = [(CRLCommandSetFill *)v17 initWithShapeItem:v10 fill:v12];
    }

    v15 = v13;

    v16 = [(CRLCanvasRep *)self interactiveCanvasController];
    v18 = [v16 commandController];
    [v18 enqueueCommand:v15];
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
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1701 isFatal:0 description:"Unable to drop nil color"];
  }
}

- (BOOL)canBeUsedForImageMask
{
  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [v3 path];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  if (self->mIsFreehandDrawingShape)
  {
    return 0;
  }

  v10 = [(CRLCanvasRep *)self info];
  v11 = [v10 geometry];
  if ([v11 widthValid])
  {
    v12 = [(CRLCanvasRep *)self info];
    v13 = [v12 geometry];
    if ([v13 heightValid] && !-[CRLCanvasRep isPlaceholder](self, "isPlaceholder"))
    {
      v14 = [(CRLShapeRep *)self shapeLayout];
      v15 = [v14 path];
      v16 = (v8 > 0.0) & ~[v15 isLineSegment];
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
  v3 = [(CRLCanvasRep *)&v7 shouldShowKnobs];
  if (self->mIsFreehandDrawingShape)
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 freehandDrawingToolkit];

    if ([v5 isInDrawingMode])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 &= ![(CRLShapeRep *)self i_isCurrentlyBeingFreehandDrawn];
    }
  }

  return v3;
}

- (unint64_t)enabledKnobMask
{
  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [v3 pathIsLineSegment];

  if (v4)
  {
    return 3072;
  }

  v6 = [(CRLShapeRep *)self shapeInfo];
  v7 = [v6 supportsResize];

  if (!v7)
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
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 editorController];
  v6 = [v5 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v7 = sub_100014370(v3, v6);

  v8 = objc_opt_class();
  v9 = [(CRLCanvasRep *)self parentRep];
  v10 = [v9 info];
  v11 = sub_100014370(v8, v10);

  if (v11)
  {
    v12 = [v7 boardItems];
    v13 = [v12 containsObject:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)addSelectionKnobsToArray:(id)a3
{
  v4 = a3;
  v5 = [(CRLShapeRep *)self p_pathEditor];
  v6 = v5;
  if (v5 && [v5 canAddKnobsForRep:self])
  {
    [v6 addKnobsForRep:self toArray:v4];
  }

  else
  {
    v7 = [(CRLShapeRep *)self shouldShowSmartShapeKnobs];
    v8 = [(CRLShapeRep *)self shapeLayout];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 numberOfControlKnobs];
      if (v10)
      {
        v11 = v10;
        v12 = 12;
        do
        {
          v13 = [CRLCanvasKnob alloc];
          [v9 getControlKnobPosition:v12];
          v14 = [CRLCanvasKnob initWithType:v13 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:v12 onRep:self];
          [v4 addObject:v14];

          ++v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v15 = objc_opt_class();
      v16 = [v9 pathSource];
      v17 = sub_100014370(v15, v16);

      if (v17)
      {
        v18 = [CRLCanvasKnob alloc];
        [v9 getControlKnobPosition:12];
        v19 = [CRLCanvasKnob initWithType:v18 position:"initWithType:position:radius:tag:onRep:" radius:0 tag:12 onRep:self];
        [v4 addObject:v19];
      }
    }

    v20 = [(CRLShapeRep *)self shapeLayout];
    v21 = [v20 pathIsLineSegment];

    if (v21)
    {
      v22 = [(CRLShapeRep *)self enabledKnobMask];
      y = CGPointZero.y;
      for (i = 10; i != 12; ++i)
      {
        if ((sub_100345928(i) & v22) != 0)
        {
          v25 = [[CRLCanvasKnob alloc] initWithType:0 position:i radius:self tag:CGPointZero.x onRep:y, 15.0];
          [v4 addObject:v25];
        }
      }
    }

    v35.receiver = self;
    v35.super_class = CRLShapeRep;
    [(CRLCanvasRep *)&v35 addSelectionKnobsToArray:v4];
    if ([(CRLShapeRep *)self shouldShowAdvancedGradientKnobs])
    {
      v26 = objc_opt_class();
      v27 = [(CRLShapeRep *)self shapeLayout];
      v28 = [v27 fill];
      v29 = sub_100014370(v26, v28);

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
      [v4 addObject:v33];
      v34 = [[CRLCanvasKnob alloc] initWithType:0 position:27 radius:self tag:CGPointZero.x onRep:v32, 15.0];
      [v4 addObject:v34];
    }
  }
}

- (BOOL)shouldShowAdditionalKnobs
{
  [(CRLCanvasRep *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLCanvasRep *)self canvas];
  [v7 viewScale];
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
    v4 = [(CRLCanvasRep *)self currentKnobTracker];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 0;
    }
  }

  v6 = objc_opt_class();
  v7 = [(CRLShapeRep *)self shapeLayout];
  v8 = [v7 fill];
  v9 = sub_100014370(v6, v8);

  if (v9 && [v9 isAdvancedGradient] && !-[CRLCanvasRep isLocked](self, "isLocked"))
  {
    v11 = [(CRLCanvasRep *)self interactiveCanvasController];
    v12 = [v11 editorController];
    v13 = [v12 mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if (![v13 fillInspectorDisclosed] || -[CRLShapeRep isEditingChildRep](self, "isEditingChildRep") || (objc_msgSend(v11, "documentIsSharedReadOnly") & 1) != 0)
    {
      v2 = 0;
    }

    else
    {
      [(CRLCanvasRep *)self boundsForStandardKnobs];
      v15 = v14;
      v17 = v16;
      v18 = [(CRLCanvasRep *)self canvas];
      [v18 viewScale];
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
  v3 = [(CRLShapeRep *)self shapeLayout];
  if ([v3 numberOfControlKnobs])
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([v4 documentIsSharedReadOnly])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(CRLShapeRep *)self shouldShowAdditionalKnobs];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  v4 = a3;
  if ([v4 tag] < 0xC || objc_msgSend(v4, "tag") >= 0x11)
  {
    v7.receiver = self;
    v7.super_class = CRLShapeRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self currentKnobTracker];
  if ([v5 isMemberOfClass:objc_opt_class()] && objc_msgSend(v4, "tag") >= 0x19)
  {
    v6 = [v4 tag];

    if (v6 < 0x1C)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([v4 tag] != 22)
  {
    v9.receiver = self;
    v9.super_class = CRLShapeRep;
    v7 = [(CRLCanvasRep *)&v9 directlyManagesVisibilityOfKnob:v4];
    goto LABEL_9;
  }

LABEL_7:
  v7 = 1;
LABEL_9:

  return v7;
}

- (void)updatePositionsOfKnobs:(id)a3
{
  v4 = a3;
  v88.receiver = self;
  v88.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v88 updatePositionsOfKnobs:v4];
  v5 = [(CRLShapeRep *)self p_pathEditor];
  v6 = v5;
  if (v5)
  {
    [v5 updatePositionsOfKnobs:v4 forRep:self];
  }

  v7 = [(CRLShapeRep *)self shapeLayout];
  if ([v7 pathIsLineSegment])
  {
    [v7 pathBounds];
    v9 = v8;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v10 = v4;
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
              [v7 headPoint];
            }

            else
            {
              [v7 tailPoint];
            }

            [v15 setPosition:{sub_10011F31C(v19, v20, v9)}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v12);
    }
  }

  if (-[CRLShapeRep shouldShowSmartShapeKnobs](self, "shouldShowSmartShapeKnobs") || (v21 = objc_opt_class(), [v7 pathSource], v22 = objc_claimAutoreleasedReturnValue(), sub_100014370(v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
    v25 = v24;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = v4;
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
            [v7 getControlKnobPosition:{objc_msgSend(v31, "tag")}];
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
    v35 = [(CRLShapeRep *)self shapeLayout];
    v36 = [v35 fill];
    v37 = sub_100014370(v34, v36);

    v38 = [(CRLShapeRep *)self shapeLayout];
    [v38 boundsForStandardKnobs];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = [(CRLShapeRep *)self shapeLayout];
    v48 = [v47 path];
    [v37 startPointForPath:v48 andBounds:{v40, v42, v44, v46}];
    v50 = v49;
    v52 = v51;

    v53 = [(CRLShapeRep *)self shapeLayout];
    v54 = [v53 path];
    [v37 endPointForPath:v54 andBounds:{v40, v42, v44, v46}];
    v56 = v55;
    v58 = v57;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v59 = v4;
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

- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if ([v9 tag] >= 0x19 && objc_msgSend(v9, "tag") <= 0x1B)
    {
      [v9 cursorActiveScaledRect];
      v11 = [CRLCursor moveCursorWithActiveScaledRect:?];
      goto LABEL_8;
    }

    if ([v9 tag] == 10 || objc_msgSend(v9, "tag") == 11)
    {
      v11 = [v9 resizeCursor];
LABEL_8:
      v12 = v11;
      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  v14.receiver = self;
  v14.super_class = CRLShapeRep;
  v12 = [(CRLStyledRep *)&v14 cursorAtPoint:v9 forKnob:v10 withCursorPlatformObject:x, y];
LABEL_10:

  return v12;
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v9 = [(CRLShapeRep *)self p_pathEditor];
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, v4);
    v12 = v11;
    if (v9 && v11)
    {
      v13 = [v9 newTrackerForKnob:v11 forRep:self];
    }

    else
    {
      v14 = [v4 tag];
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
            v13 = [(CRLCanvasRep *)&v17 newTrackerForKnob:v4];
            goto LABEL_23;
          }

          v15 = CRLGradientFillKnobTracker;
        }
      }

      else
      {
        v15 = CRLShapeControlKnobTracker;
      }

      v13 = [[v15 alloc] initWithRep:self knob:v4];
    }

LABEL_23:
    v8 = v13;

    goto LABEL_24;
  }

  v8 = [[_TtC8Freeform33CRLShapeConnectionLineKnobTracker alloc] initWithRep:self knob:v4];
LABEL_24:

  return v8;
}

- (BOOL)shouldShowInvisiblePathHighlight
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 stroke];
  if (v4)
  {
    v5 = [(CRLCanvasRep *)self layout];
    v6 = [v5 stroke];
    v7 = [v6 shouldRender];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CRLShapeRep *)self shapeLayout];
  v9 = [v8 fill];
  if (v9)
  {
    v10 = [(CRLShapeRep *)self shapeLayout];
    v11 = [v10 fill];
    v12 = [v11 isClear] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CRLShapeRep *)self shapeLayout];
  v14 = [v13 path];
  v15 = [v14 isRectangular];

  if ((v7 | v12))
  {
    return 0;
  }

  v17 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![v17 shouldEverShowPathHighlightOnInvisibleShapes] || v15 && -[CRLShapeRep shouldShowSelectionHighlight](self, "shouldShowSelectionHighlight"))
  {
    v16 = 0;
  }

  else
  {
    v16 = [(CRLShapeRep *)self selectionIsAppropriateToShowInvisiblePathHighlight];
  }

  return v16;
}

- (BOOL)selectionIsAppropriateToShowInvisiblePathHighlight
{
  if ([(CRLCanvasRep *)self isSelected])
  {
    LOBYTE(v3) = 1;
  }

  else if ([(CRLCanvasRep *)self isBeingDragged])
  {
    v4 = [(CRLCanvasRep *)self layout];
    v3 = [v4 isInGroup] ^ 1;
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
    v4 = [(CRLCanvasRep *)&v32 additionalRenderablesOverRenderable];
    v2 = [v4 mutableCopy];

    if ([(CRLShapeRep *)self shouldShowInvisiblePathHighlight])
    {
      v5 = +[CRLCanvasShapeRenderable renderable];
      [v5 setFillColor:0];
      v6 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v5 setDelegate:v6];

      v7 = [CRLColor colorWithRed:0.596078431 green:0.596078431 blue:0.596078431 alpha:0.45];
      [v5 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

      v8 = [(CRLCanvasRep *)self canvas];
      [v8 viewScale];
      v10 = v9;

      v11 = [(CRLCanvasRep *)self canvas];
      [v11 contentsScale];
      v13 = v10 * v12;

      v30 = CGPointZero;
      v31 = v30;
      v14 = +[CRLColor blackColor];
      v15 = [CRLStroke strokeWithColor:v14 width:1.0];

      v16 = [(CRLShapeRep *)self shapeLayout];
      v28 = 0;
      v29 = 0;
      [v16 aliasPathForScale:v15 originalStroke:&v29 adjustedStroke:&v28 adjustedPath:&v31 startDelta:&v30 endDelta:v13];
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
    v3 = [CRLCanvasRenderable renderablesFromLayers:&__NSArray0__struct];
  }

  else
  {
    v49.receiver = self;
    v49.super_class = CRLShapeRep;
    v3 = [(CRLCanvasRep *)&v49 overlayRenderables];
    if ([(CRLShapeRep *)self shouldShowAdvancedGradientKnobs]&& [(CRLCanvasRep *)self isSelectedIgnoringLocking])
    {
      v4 = +[CRLCanvasShapeRenderable renderable];
      [v4 setFillColor:0];
      v5 = [CRLColor colorWithWhite:0.8 alpha:0.66];
      [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

      [v4 setLineWidth:1.0];
      v6 = objc_opt_class();
      v7 = [(CRLShapeRep *)self shapeLayout];
      v8 = [v7 fill];
      v9 = sub_100014370(v6, v8);

      v10 = [(CRLShapeRep *)self shapeLayout];
      [v10 boundsForStandardKnobs];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [(CRLShapeRep *)self shapeLayout];
      v20 = [v19 path];
      [v9 startPointForPath:v20 andBounds:{v12, v14, v16, v18}];
      v22 = v21;
      v24 = v23;

      v25 = [(CRLShapeRep *)self shapeLayout];
      v26 = [v25 path];
      [v9 endPointForPath:v26 andBounds:{v12, v14, v16, v18}];
      v28 = v27;
      v30 = v29;

      v31 = sub_10011F334(v22, v24, v12);
      v33 = v32;
      v34 = sub_10011F334(v28, v30, v12);
      v36 = v35;
      memset(&m, 0, sizeof(m));
      v37 = [(CRLCanvasRep *)self layout];
      v38 = v37;
      if (v37)
      {
        [v37 transformInRoot];
      }

      else
      {
        memset(&m, 0, sizeof(m));
      }

      v39 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v39 viewScale];
      v41 = v40;

      CGAffineTransformMakeScale(&t2, v41, v41);
      v45 = m;
      CGAffineTransformConcat(&v47, &v45, &t2);
      m = v47;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, &m, v31, v33);
      CGPathAddLineToPoint(Mutable, &m, v34, v36);
      [v4 setPath:Mutable];
      v43 = [v3 mutableCopy];
      [v43 insertObject:v4 atIndex:0];

      CGPathRelease(Mutable);
      v3 = v43;
    }
  }

  return v3;
}

- (id)dynamicResizeDidBegin
{
  v5.receiver = self;
  v5.super_class = CRLShapeRep;
  v3 = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];
  [(CRLShapeRep *)self p_beginDynamicallyResizingOrMovingLineEnd];

  return v3;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicFreeTransformDidBeginWithTracker:a3];
  [(CRLShapeRep *)self p_beginDynamicallyResizingOrMovingLineEnd];
}

- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4
{
  v6 = a3;
  v63.receiver = self;
  v63.super_class = CRLShapeRep;
  v7 = a4;
  v8 = [(CRLCanvasRep *)&v63 newCommandToApplyGeometry:v6 toInfo:v7];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, v7);

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
    v16 = [(CRLShapeRep *)self shapeLayout];
    v17 = [v16 pathSource];
    v18 = [(CRLCommandSetPathSource *)v15 initWithShapeItem:v10 pathSource:v17];

    [(CRLCommandGroup *)v14 addCommand:v18];
  }

  v19 = [(CRLShapeRep *)self shapeLayout];
  v20 = [v19 i_isInsideResizingFreehandDrawing];

  if (v20)
  {
    v21 = [(CRLCanvasRep *)self layout];
    v22 = [v21 stroke];
    v23 = [v22 mutableCopy];
    v24 = objc_opt_class();
    v30 = sub_1003038E0(v23, v24, 1, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLMutableStroke);

    v31 = [_TtC8Freeform19CRLCommandSetStroke alloc];
    v32 = [(CRLShapeRep *)self shapeInfo];
    v33 = [(CRLCommandSetStroke *)v31 initWithStyledItem:v32 stroke:v30];

    [(CRLCommandGroup *)v14 addCommand:v33];
  }

  v34 = objc_opt_class();
  v35 = [(CRLShapeRep *)self shapeInfo];
  v36 = sub_100014370(v34, v35);

  if (v36)
  {
    v37 = [v36 pencilKitStrokePathCompactData];
    if (v20 && ([v36 isTreatedAsFillForFreehandDrawing] & 1) == 0)
    {
      v38 = [v36 geometry];
      [v38 size];
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

      [v6 size];
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

        [v37 renderScaleX];
        v56 = v53 * v55;
        *&v56 = v56;
        [v37 setRenderScaleX:v56];
        [v37 renderScaleY];
        v58 = v54 * v57;
        *&v58 = v58;
        [v37 setRenderScaleY:v58];
      }
    }

    v59 = [(CRLShapeRep *)self shapeLayout];
    v60 = [v59 maskPath];

    v61 = [[_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData alloc] initWithFreehandDrawingShapeItem:v36 strokePathCompactData:v37 maskPath:v60];
    [(CRLCommandGroup *)v14 addCommand:v61];
  }

  return v14;
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicResizeDidEndWithTracker:a3];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicFreeTransformDidEndWithTracker:a3];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
}

- (void)setShadowOnChildrenDisabled:(BOOL)a3
{
  if (self->mShadowOnChildrenDisabled != a3)
  {
    self->mShadowOnChildrenDisabled = a3;
    [(CRLCanvasRep *)self invalidateShadowRenderable];
  }
}

- (void)invalidateEffectLayersForChildren
{
  if (!self->mShadowOnChildrenDisabled)
  {
    v3 = [(CRLShapeRep *)self shapeLayout];
    v4 = [v3 fill];
    v5 = [v4 isOpaque];

    if ((v5 & 1) == 0)
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

- (void)dynamicallyRotatingWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyRotatingWithTracker:a3];
  if (self->mIsFreehandDrawingShape)
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyResizingWithTracker:a3];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicallyFreeTransformingWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeRep;
  [(CRLCanvasRep *)&v4 dynamicallyFreeTransformingWithTracker:a3];
  if (self->mIsFreehandDrawingShape)
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (id)dataForUpdateUploadIndicator
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeRep *)self shapeInfo];
  v5 = [v4 fill];
  v6 = sub_100014370(v3, v5);
  v7 = [v6 imageData];

  if (v7)
  {
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)beginEditingWithString:(id)a3
{
  v3 = a3;
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
  v4 = [(CRLCanvasRep *)self info];
  v5 = [v4 parentInfo];
  v6 = sub_100014370(v3, v5);

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self info];
    v8 = [v6 isNonGroupedChild:v7];
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
    v10 = [(CRLShapeRep *)self shapeLayout];
    v11 = [v10 pathIsLineSegment] ^ 1;
  }

  return v11;
}

- (BOOL)isPathEditable
{
  v2 = [(CRLShapeRep *)self shapeLayout];
  v3 = [v2 pathSource];
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (CRLEditableBezierPathSource)editablePathSource
{
  v2 = [(CRLShapeRep *)self shapeLayout];
  v3 = [v2 editablePathSource];

  return v3;
}

- (CGAffineTransform)naturalToEditablePathSpaceTransform
{
  [(CRLCanvasRep *)self boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v9 = [(CRLShapeRep *)self shapeInfo];
  v10 = [v9 pathSource];
  v11 = v10;
  if (v10)
  {
    [v10 pathFlipTransform];
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 editorController];
    v5 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEditingPath
{
  v2 = [(CRLShapeRep *)self p_pathEditor];
  v3 = v2 != 0;

  return v3;
}

- (void)dynamicMovePathKnobDidBegin
{
  v3 = [(CRLShapeRep *)self dynamicResizeDidBegin];
  v4 = [(CRLShapeRep *)self shapeLayout];
  [v4 dynamicMovePathKnobDidBegin];
}

- (void)dynamicallyMovedPathKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v9 = [(CRLShapeRep *)self shapeLayout];
  [v9 dynamicallyMovedPathKnobTo:v7 withTracker:{x, y}];

  self->mFrameInUnscaledCanvasIsValid = 0;
  v8 = [v9 layoutController];
  [v8 validateLayoutWithDependencies:v9];

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicMovePathKnobDidEndWithTracker:(id)a3
{
  v5 = a3;
  v4 = [(CRLShapeRep *)self shapeLayout];
  [v4 dynamicMovePathKnobDidEnd];

  if (!v5 || ([v5 didDrag] & 1) != 0 || (objc_msgSend(v5, "isCreatingNode") & 1) != 0 || objc_msgSend(v5, "toggleNodeType"))
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (id)dynamicMoveLineSegmentDidBegin
{
  v3 = [(CRLShapeRep *)self dynamicResizeDidBegin];

  return [(CRLShapeRep *)self shapeLayout];
}

- (void)dynamicallyMovingLineSegmentWithTracker:(id)a3
{
  v4 = a3;
  v6 = [(CRLShapeRep *)self shapeLayout];
  [v6 dynamicallyMovingLineSegmentWithTracker:v4];

  v5 = [v6 layoutController];
  [v5 validateLayoutWithDependencies:v6];

  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)dynamicMoveLineSegmentDidEndWithTracker:(id)a3
{
  v11 = a3;
  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  if (v11 && [v11 didDrag])
  {
    v4 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
    v5 = [(CRLShapeRep *)self shapeInfo];
    v6 = [(CRLShapeRep *)self shapeLayout];
    v7 = [v6 pathSource];
    v8 = [(CRLCommandSetPathSource *)v4 initWithShapeItem:v5 pathSource:v7];

    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v9 commandController];
    [v10 enqueueCommand:v8];
  }

  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (id)dynamicMoveSmartShapeKnobDidBegin
{
  v3 = [(CRLShapeRep *)self dynamicResizeDidBegin];
  v4 = [(CRLShapeRep *)self shapeLayout];
  [v4 dynamicMoveSmartShapeKnobDidBegin];

  return [(CRLShapeRep *)self shapeLayout];
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v7 = [(CRLShapeRep *)self shapeLayout];
  [v7 dynamicallyMovedSmartShapeKnobTo:v9 withTracker:{x, y}];
  self->mFrameInUnscaledCanvasIsValid = 0;
  v8 = [v7 layoutController];
  [v8 validateLayoutWithDependencies:v7];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 isEnqueueingCommandsInRealTime])
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLShapeRep *)self setNeedsDisplay];
}

- (void)enqueuePathSourceChanges
{
  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [(CRLShapeRep *)self shapeInfo];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 commandController];
  [v6 openGroup];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Move" value:0 table:@"UndoStrings"];
  [v6 setCurrentGroupActionString:v8];

  v9 = [v3 layoutInfoGeometry];
  v10 = [v3 layoutInfoGeometry];
  v11 = [v4 geometry];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [(CRLShapeRep *)self newCommandToApplyGeometry:v9 toInfo:v4];
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

    [v6 enqueueCommand:v13];
  }

  v17 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
  v18 = [v3 pathSource];
  v19 = [(CRLCommandSetPathSource *)v17 initWithShapeItem:v4 pathSource:v18];

  [v6 enqueueCommand:v19];
  [v6 closeGroup];
}

- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)a3
{
  v4 = a3;
  if (v4 && [v4 didDrag])
  {
    [(CRLShapeRep *)self enqueuePathSourceChanges];
  }

  [(CRLShapeRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLShapeRep *)self p_endDynamicallyResizingOrMovingLineEnd];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4 withCommittedPointRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = [(CRLShapeRep *)self shapeLayout];
  [v11 dynamicallySetBezierPathSource:v10 atUnscaledOrigin:{x, y}];

  self->mAvailableToCommitPointRange.location = location;
  self->mAvailableToCommitPointRange.length = length;
  v12 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v12 invalidateContentLayersForRep:self];

  v13 = [v10 bezierPath];

  v14 = [(CRLShapeRep *)self i_uncommittedFreehandDrawingPointRange];
  v16 = [v13 copyWithPointsInRange:{v14, v15}];

  if ([v16 isEmpty])
  {
    v17 = CGRectNull.origin.x;
    v18 = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    v21 = [(CRLCanvasRep *)self layout];
    v22 = [v21 stroke];
    [v16 boundsIncludingCRLStroke:v22];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [(CRLCanvasRep *)self layout];
    v32 = [v31 stroke];
    [v32 renderedWidth];
    v34 = v33 * -2.0;
    v35 = [(CRLCanvasRep *)self layout];
    v36 = [v35 stroke];
    [v36 renderedWidth];
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

- (void)i_setIsCurrentlyBeingFreehandDrawn:(BOOL)a3
{
  if (self->_isCurrentlyBeingFreehandDrawn != a3)
  {
    if (a3)
    {
      v5 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v5 i_setNeedsDisplayIfNeededForAncestorRepOf:self];

      self->_isCurrentlyBeingFreehandDrawn = a3;

      [(CRLShapeRep *)self p_forceSetNeedsDisplay];
    }

    else
    {
      self->_isCurrentlyBeingFreehandDrawn = 0;
      [(CRLShapeRep *)self p_forceSetNeedsDisplay];
      v6 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v6 i_setNeedsDisplayIfNeededForAncestorRepOf:self];
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

  v6 = [(CRLShapeRep *)self shapeLayout];
  v7 = [v6 pathSource];
  v8 = [v7 bezierPath];
  v9 = [v8 elementCount];

  length = self->mCommittedPointRange.length;
  v11 = v9 - length;
  v12 = length + self->mCommittedPointRange.location;
  result.length = v11;
  result.location = v12;
  return result;
}

- (CGRect)p_scaledCanvasScrollViewBounds
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 canvasView];

  v4 = [v3 enclosingScrollView];
  v5 = [v3 canvasLayer];
  v6 = [v4 layer];
  [v4 bounds];
  [v6 convertRect:v5 toLayer:?];
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

  v6 = [(CRLShapeRep *)self shapeInfo];
  v7 = [v6 store];
  v8 = [v7 assetManager];
  [v8 removeAllDownloadObserversWithIdentifier:self->mDownloadObserverIdentifier];
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
  v10 = [(CRLShapeRep *)self shapeInfo];
  v11 = [v10 fill];
  v12 = sub_100014370(v9, v11);
  v13 = [v12 imageData];
  (v8[2])(v8, v13);
}

- (void)p_handleAssetPreparationCompletion
{
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v3 invalidateContentLayersForRep:self];
  }
}

- (void)p_beginDynamicallyResizingOrMovingLineEnd
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 stroke];

  if ([v4 shouldRender])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)p_endDynamicallyResizingOrMovingLineEnd
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 stroke];

  if ([v4 shouldRender])
  {
    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (BOOL)p_pathIsAxisAlignedRect
{
  if (!self->mIsFreehandDrawingShape)
  {
    v4 = [(CRLShapeRep *)self shapeInfo];
    v5 = [(CRLShapeRep *)self shapeLayout];
    if ([v5 pathIsOpen])
    {
      v6 = [v4 headLineEnd];
      if (v6)
      {

LABEL_7:
        v2 = 0;
LABEL_18:

        return v2;
      }

      v7 = [v4 tailLineEnd];

      if (v7)
      {
        goto LABEL_7;
      }
    }

    v8 = [v5 path];
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    if ([(CRLCanvasRep *)self isInDynamicOperation])
    {
      if (v5)
      {
        [v5 originalTransformInRoot];
LABEL_14:
        if ([v8 isRectangular])
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

    else if (v5)
    {
      [v5 transformInRoot];
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
    v3 = [(CRLCanvasRep *)self layout];
    v4 = [v3 stroke];

    v5 = [(CRLShapeRep *)self shapeLayout];
    v6 = [v5 fill];

    if (v6)
    {
      [(CRLShapeRep *)self opacity];
      v8 = v7 == 1.0;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 1;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    if ([v4 shouldRender])
    {
      v9 = [v4 canApplyDirectlyToRepRenderable] & v8;
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

  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [v3 fill];

  if (v4 && ([v4 isClear] & 1) == 0)
  {
    v5 = [v4 canApplyToRenderable];
  }

  else
  {
    v5 = 1;
  }

  return v5;
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
  v11 = [(CRLShapeRep *)self shapeLayout];
  v12 = [v11 shouldAdjustForStrokeWidthForCollabCursor];

  if (v12)
  {
    v13 = [(CRLCanvasRep *)self info];
    v14 = [v13 geometry];
    [v14 size];
    v16 = v15;

    if (v16 == 0.0)
    {
      v17 = [(CRLShapeRep *)self shapeLayout];
      v18 = [v17 stroke];
      [v18 width];
      v10 = v19;

      v20 = [(CRLShapeRep *)self shapeLayout];
      v21 = [v20 stroke];
      [v21 width];
      v6 = v6 + v22 * -0.5;
LABEL_6:

      goto LABEL_7;
    }

    v23 = [(CRLCanvasRep *)self info];
    v24 = [v23 geometry];
    [v24 size];
    v26 = v25;

    if (v26 == 0.0)
    {
      v27 = [(CRLShapeRep *)self shapeLayout];
      v28 = [v27 stroke];
      [v28 width];
      v8 = v29;

      v20 = [(CRLShapeRep *)self shapeLayout];
      v21 = [v20 stroke];
      [v21 width];
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
  v3 = [(CRLShapeRep *)self shapeLayout];
  v4 = [v3 pathIsLineSegment];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CRLShapeRep *)self shapeLayout];
  [v5 headPoint];
  v7 = v6;
  v9 = v8;
  v10 = [(CRLShapeRep *)self shapeLayout];
  [v10 tailPoint];
  v13 = sub_100120ABC(v7, v9, v11, v12, 0.5);
  v15 = v14;

  v16 = [(CRLCanvasRep *)self canvas];
  v17 = [(CRLCanvasRep *)self canvas];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:v13, v15];
  [v17 convertUnscaledToBoundsPoint:?];
  [v16 i_approximateScaledFrameOfEditingMenuAtPoint:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(CRLCanvasRep *)self canvas];
  v27 = [(CRLShapeRep *)self shapeLayout];
  [v27 headPoint];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [v26 convertUnscaledToBoundsPoint:?];
  v29 = v28;
  v31 = v30;

  v32 = [(CRLCanvasRep *)self canvas];
  v33 = [(CRLShapeRep *)self shapeLayout];
  [v33 tailPoint];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:?];
  [v32 convertUnscaledToBoundsPoint:?];
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