@interface CRLResizeKnobTracker
- (BOOL)allowHUDToDisplay;
- (BOOL)currentlyPreservingAspectRatio;
- (BOOL)i_shouldForceDrag;
- (BOOL)p_isMatchingSize;
- (BOOL)p_isResizingHeightFromCenter;
- (BOOL)p_isResizingWidthFromCenter;
- (BOOL)shouldHideOtherKnobs;
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGAffineTransform)p_repTransformInRootForTransforming;
- (CGAffineTransform)p_resizeTransformHandlingFlipping:(SEL)a3;
- (CGAffineTransform)p_transformForLayout:(SEL)a3 flippedIfNecessary:(id)a4;
- (CGAffineTransform)transformInRootForStandardKnobs;
- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)secondaryHUDPoint;
- (CGRect)currentBoundsForStandardKnobs;
- (CGRect)currentResizedBounds;
- (CGRect)i_baseBounds;
- (CGRect)i_lastNewBounds;
- (CGRect)originalBounds;
- (CGRect)simpleResizedRectByMovingKnobTo:(CGPoint)a3;
- (CGSize)currentSizeForLayout:(id)a3;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (CRLResizeKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (NSArray)decoratorOverlayRenderables;
- (id)currentGeometryForLayout:(id)a3;
- (id)p_getHudLabelTextForAccessibility:(BOOL)a3;
- (id)repsToTransform;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)applyNewBoundsToPrimaryRep;
- (void)applyNewBoundsToRep:(id)a3;
- (void)beginMovingKnob;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)constrainAndSnapByMovingKnobTo:(CGPoint)a3 snappingToGuides:(BOOL)a4;
- (void)constrainBetweenMaxAndMinSize;
- (void)dealloc;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)moveKnobToRepPosition:(CGPoint)a3;
- (void)p_beginDynamicResize;
- (void)p_flipMagnetNormalizedPositionsIfNeeded;
- (void)p_hideGuideRenderable;
- (void)p_hideHUD;
- (void)p_revertToOriginalMagnetTypeForMagnet:(BOOL)a3 forClineLayout:(id)a4;
- (void)p_setNormalizedPositionForMagnet:(BOOL)a3 withNewNormalizedPosition:(CGPoint)a4 forClineLayout:(id)a5 onLayout:(id)a6;
- (void)p_showHUDAndGuides;
- (void)p_updateGuideRenderable;
- (void)p_updateHUD;
- (void)p_updateMagnetTypeForMagnet:(BOOL)a3 forClineLayout:(id)a4;
- (void)p_validateLayout;
- (void)resizeRepForInspectors:(id)a3 value:(double)a4 changingWidth:(BOOL)a5;
- (void)willBeginDynamicOperationForReps:(id)a3;
@end

@implementation CRLResizeKnobTracker

- (CRLResizeKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = CRLResizeKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v32 initWithRep:v6 knob:v7];
  v9 = v8;
  if (v8)
  {
    v8->mSnapEnabled = 1;
    [(CRLResizeKnobTracker *)v8 p_repTransformInRootForTransforming];
    *&v9->mOriginalTransformInRoot.c = v30;
    *&v9->mOriginalTransformInRoot.tx = v31;
    *&v9->mOriginalTransformInRoot.a = v29;
    v10 = [(CRLCanvasKnobTracker *)v9 rep];
    [v10 boundsForStandardKnobs];
    v9->mLastNewBounds.origin.x = v11;
    v9->mLastNewBounds.origin.y = v12;
    v9->mLastNewBounds.size.width = v13;
    v9->mLastNewBounds.size.height = v14;
    size = v9->mLastNewBounds.size;
    v9->mBaseBounds.origin = v9->mLastNewBounds.origin;
    v9->mBaseBounds.size = size;

    v16 = [(CRLCanvasKnobTracker *)v9 rep];
    v17 = [v16 infoForTransforming];

    if (v17)
    {
      v18 = [(CRLCanvasKnobTracker *)v9 rep];
      v19 = [v18 interactiveCanvasController];
      v20 = [v19 layoutForInfo:v17];

      [v20 minimumSizeForResizingKnob:v7];
      [(CRLResizeKnobTracker *)v9 setMinimumSize:?];
    }

    v21 = [(CRLCanvasKnobTracker *)v9 rep];
    v22 = [v21 layout];

    v23 = objc_opt_class();
    v24 = [v22 parent];
    v25 = sub_100014370(v23, v24);

    if (v25)
    {
      [v25 maximumFrameSizeForChild:v22];
    }

    else
    {
      v26 = INFINITY;
      v27 = INFINITY;
    }

    [(CRLResizeKnobTracker *)v9 setMaximumSize:v26, v27];
    -[CRLResizeKnobTracker setCanMoveKnobAcrossOpposite:](v9, "setCanMoveKnobAcrossOpposite:", [v6 canFlipDuringResize]);
    [(CRLResizeKnobTracker *)v9 setSnapToGuides:1];
    v9->mAdjustedMagnetsForHorizontalFlip = 0;
    v9->mAdjustedMagnetsForVerticalFlip = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(CRLResizeKnobTracker *)self p_cancelDelayedHUDAndGuides];
  [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:0];
  v3.receiver = self;
  v3.super_class = CRLResizeKnobTracker;
  [(CRLCanvasKnobTracker *)&v3 dealloc];
}

- (CGRect)currentBoundsForStandardKnobs
{
  p_mLastNewBounds = &self->mLastNewBounds;
  x = self->mLastNewBounds.origin.x;
  y = self->mLastNewBounds.origin.y;
  width = self->mLastNewBounds.size.width;
  height = self->mLastNewBounds.size.height;
  if ([(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter])
  {
    x = self->mBaseBounds.origin.x + self->mBaseBounds.size.width * 0.5 - p_mLastNewBounds->size.width * 0.5;
  }

  if ([(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter])
  {
    y = self->mBaseBounds.origin.y + self->mBaseBounds.size.height * 0.5 - p_mLastNewBounds->size.height * 0.5;
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGAffineTransform)transformInRootForStandardKnobs
{
  v3 = *&self[4].ty;
  *&retstr->a = *&self[4].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].b;
  return self;
}

- (CGSize)currentSizeForLayout:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 infoForTransforming];
  v7 = [v6 geometry];

  if ([v7 widthValid] && (objc_msgSend(v7, "heightValid") & 1) != 0)
  {
    v8 = [(CRLCanvasKnobTracker *)self rep];
    v9 = [v8 layout];

    if (v9 == v4)
    {
      v26.f64[0] = fabs(self->mLastNewBounds.size.width);
      v20 = fabs(self->mLastNewBounds.size.height);
    }

    else
    {
      size = self->mBaseBounds.size;
      v11 = vceqzq_f64(size);
      v12 = vdivq_f64(vabsq_f64(self->mLastNewBounds.size), size);
      __asm { FMOV            V1.2D, #1.0 }

      v25 = vbslq_s8(v11, _Q1, v12);
      [v4 initialBoundsForStandardKnobs];
      v19.f64[1] = v18;
      v26 = vabsq_f64(vmulq_f64(v25, v19));
      v20 = v26.f64[1];
    }
  }

  else
  {
    [v4 boundsForStandardKnobs];
    v26.f64[0] = v21;
    v20 = v22;
  }

  v23 = v26.f64[0];
  v24 = v20;
  result.height = v24;
  result.width = v23;
  return result;
}

- (BOOL)allowHUDToDisplay
{
  v3.receiver = self;
  v3.super_class = CRLResizeKnobTracker;
  return [(CRLCanvasKnobTracker *)&v3 allowHUDToDisplay];
}

- (BOOL)shouldHideOtherKnobs
{
  if ([(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLResizeKnobTracker;
  return [(CRLCanvasKnobTracker *)&v4 shouldHideOtherKnobs];
}

- (id)repsToTransform
{
  v3 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [NSMutableSet setWithObject:v3];

  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 additionalRepsToResize];

  if ([v6 count])
  {
    [v4 unionSet:v6];
  }

  return v4;
}

- (CGAffineTransform)p_resizeTransformHandlingFlipping:(SEL)a3
{
  v4 = a4;
  v7 = [(CRLCanvasKnobTracker *)self rep];
  v8 = [(CRLCanvasKnobTracker *)self knob];
  v9 = [v7 adjustedKnobForComputingResizeGeometry:{objc_msgSend(v8, "tag")}];

  if ([(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter])
  {
    v9 = (3 * ((v9 - 1) / 3) + 2);
  }

  if ([(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter])
  {
    v9 = (((v9 - 1) % 3) | 4);
  }

  v10 = dbl_101466930[(v9 - 1) % 3];
  v11 = dbl_101466930[(v9 - 1) / 3];
  v12 = [(CRLResizeKnobTracker *)self hasHorizontalFlip];
  v13 = [(CRLResizeKnobTracker *)self hasVerticalFlip];
  width = self->mBaseBounds.size.width;
  v15 = 1.0;
  v16 = 1.0;
  if (width != 0.0)
  {
    v16 = self->mLastNewBounds.size.width / width;
  }

  height = self->mBaseBounds.size.height;
  if (height != 0.0)
  {
    v15 = self->mLastNewBounds.size.height / height;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(&t1, -v10, -v11);
  CGAffineTransformMakeScale(&t2, v16, v15);
  CGAffineTransformConcat(&v32, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, v10, v11);
  CGAffineTransformConcat(retstr, &v32, &t1);
  if (v4)
  {
    if (v12)
    {
      t1 = *byte_1014668D0;
      v18 = *&retstr->c;
      *&t2.a = *&retstr->a;
      *&t2.c = v18;
      *&t2.tx = *&retstr->tx;
      CGAffineTransformConcat(&v32, &t1, &t2);
      v19 = *&v32.c;
      *&retstr->a = *&v32.a;
      *&retstr->c = v19;
      *&retstr->tx = *&v32.tx;
    }

    if (v13)
    {
      t1 = *byte_101466900;
      v20 = *&retstr->c;
      *&t2.a = *&retstr->a;
      *&t2.c = v20;
      *&t2.tx = *&retstr->tx;
      CGAffineTransformConcat(&v32, &t1, &t2);
      v21 = *&v32.c;
      *&retstr->a = *&v32.a;
      *&retstr->c = v21;
      *&retstr->tx = *&v32.tx;
    }
  }

  memset(&v32, 0, sizeof(v32));
  v22 = [(CRLCanvasKnobTracker *)self rep];
  v23 = [v22 layout];
  v24 = [v23 originalPureGeometry];
  v25 = v24;
  if (v24)
  {
    [v24 fullTransform];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  t2 = v32;
  CGAffineTransformInvert(&t1, &t2);
  v26 = *&retstr->c;
  *&v29.a = *&retstr->a;
  *&v29.c = v26;
  *&v29.tx = *&retstr->tx;
  CGAffineTransformConcat(&t2, &t1, &v29);
  v29 = v32;
  result = CGAffineTransformConcat(&t1, &t2, &v29);
  v28 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v28;
  *&retstr->tx = *&t1.tx;
  return result;
}

- (CGAffineTransform)p_transformForLayout:(SEL)a3 flippedIfNecessary:(id)a4
{
  v5 = a5;
  v8 = a4;
  if ([v8 wantsParentResizeTransform])
  {
    v9 = objc_opt_class();
    v10 = [v8 parent];
    v11 = sub_100014370(v9, v10);

    if (v11)
    {
      [(CRLResizeKnobTracker *)self p_transformForLayout:v11 flippedIfNecessary:v5];

      goto LABEL_28;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398AC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398AD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398B78();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLResizeKnobTracker p_transformForLayout:flippedIfNecessary:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLResizeKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:312 isFatal:0 description:"invalid nil value for '%{public}s'", "possibleParentLayout"];
  }

  memset(&v32, 0, sizeof(v32));
  if (v5)
  {
    [(CRLResizeKnobTracker *)self resizeTransformWithoutUnflipping];
  }

  else
  {
    [(CRLResizeKnobTracker *)self resizeTransform];
  }

  v15 = [(CRLCanvasKnobTracker *)self rep];
  v16 = [v15 layout];

  if (v16 == v8)
  {
    v27 = *&v32.c;
    *&retstr->a = *&v32.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v32.tx;
  }

  else
  {
    v17 = *&CGAffineTransformIdentity.c;
    *&v31.a = *&CGAffineTransformIdentity.a;
    *&v31.c = v17;
    *&v31.tx = *&CGAffineTransformIdentity.tx;
    v18 = objc_opt_class();
    v19 = [v8 parent];
    v20 = sub_100014370(v18, v19);

    if (v20 && [v20 isBeingManipulated])
    {
      do
      {
        if (![v20 isBeingManipulated])
        {
          break;
        }

        v21 = [v20 originalPureGeometry];
        v22 = v21;
        if (v21)
        {
          [v21 transform];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        t1 = v31;
        CGAffineTransformConcat(&v31, &t1, &t2);

        v23 = objc_opt_class();
        v24 = [v20 parent];
        v25 = sub_100014370(v23, v24);

        v20 = v25;
      }

      while (v25);
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
      t2 = v32;
      t1 = v31;
      sub_100139E2C(&t2, &t1, retstr);
      retstr->tx = 0.0;
      retstr->ty = 0.0;
    }

    else
    {
      v26 = *&v32.c;
      *&retstr->a = *&v32.a;
      *&retstr->c = v26;
      *&retstr->tx = *&v32.tx;
    }
  }

LABEL_28:

  return result;
}

- (id)currentGeometryForLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 computeInfoGeometryDuringResize];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_23;
  }

  memset(&v35, 0, sizeof(v35));
  v8 = [(CRLCanvasKnobTracker *)self rep];
  v9 = [v8 layout];
  [(CRLResizeKnobTracker *)self resizeTransform];
  if (v9)
  {
    [v9 layoutTransformInInfoSpace:v34];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v10 = [(CRLCanvasKnobTracker *)self rep];
  v11 = [v10 layout];

  if (v11 == v4)
  {
    v15 = [(CRLCanvasKnobTracker *)self rep];
    v33 = v35;
    v26 = [v15 resizedGeometryForTransform:&v33];
LABEL_21:
    v7 = v26;
    goto LABEL_22;
  }

  v12 = *&CGAffineTransformIdentity.c;
  *&v33.a = *&CGAffineTransformIdentity.a;
  *&v33.c = v12;
  *&v33.tx = *&CGAffineTransformIdentity.tx;
  v13 = objc_opt_class();
  v14 = [v4 parent];
  v15 = sub_100014370(v13, v14);

  if (v15 && [v15 isBeingManipulated])
  {
    do
    {
      if (![v15 isBeingManipulated])
      {
        break;
      }

      v16 = [v15 originalPureGeometry];
      v17 = v16;
      if (v16)
      {
        [v16 transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      t1 = v33;
      CGAffineTransformConcat(&v33, &t1, &t2);

      v18 = objc_opt_class();
      v19 = [v15 parent];
      v20 = sub_100014370(v18, v19);

      v15 = v20;
    }

    while (v20);
    t1 = v35;
    memset(&t2, 0, sizeof(t2));
    v30 = v33;
    sub_100139E2C(&t1, &v30, &t2);
    t2.tx = 0.0;
    t2.ty = 0.0;
    v21 = [v4 infoGeometryBeforeDynamicOperation];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v27 = [v4 info];
      v22 = [v27 geometry];

      if (!v22)
      {
        memset(&v30, 0, sizeof(v30));
        goto LABEL_20;
      }
    }

    [v22 fullTransform];

LABEL_20:
    v29 = t2;
    CGAffineTransformConcat(&t1, &v30, &v29);
    v26 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];
    goto LABEL_21;
  }

  v23 = [(CRLCanvasKnobTracker *)self rep];
  v24 = [v23 interactiveCanvasController];
  v25 = [v24 repForLayout:v4];

  [(CRLResizeKnobTracker *)self transformForLayout:v4];
  v35 = t2;
  v7 = [v25 resizedGeometryForTransform:&t2];

LABEL_22:
LABEL_23:

  return v7;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mGuideRenderable)
  {
    mGuideRenderable = self->mGuideRenderable;
    v2 = [NSArray arrayWithObjects:&mGuideRenderable count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)applyNewBoundsToRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 interactiveCanvasController];

  v7 = [v6 commandController];
  v8 = [v4 layout];
  v9 = [v8 finalInfoGeometryForResize];

  if (!v9)
  {
    v10 = [v4 layout];
    v9 = [(CRLResizeKnobTracker *)self currentGeometryForLayout:v10];
  }

  v11 = [v4 infoForTransforming];
  v12 = v11;
  if (!self->mIsEnqueueingCommandsInRealTime && v11 && -[CRLCanvasKnobTracker didDrag](self, "didDrag") && ([v12 conformsToProtocol:&OBJC_PROTOCOL___CRLResizingAwareInfo] & 1) == 0)
  {
    v13 = [v4 newCommandToApplyGeometry:v9 toInfo:v12];
    if (!v13)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101398BA0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101398BB4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101398C58();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLResizeKnobTracker applyNewBoundsToRep:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLResizeKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:441 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];

      v13 = 0;
    }

    v21 = [CRLCanvasCommandSelectionBehavior alloc];
    v20 = [v6 canvasEditor];
    v17 = [v6 editorController];
    v18 = [v17 selectionPath];
    v19 = [(CRLCanvasCommandSelectionBehavior *)v21 initWithCanvasEditor:v20 type:2 selectionPath:v18 selectionFlags:4];

    [v7 enqueueCommand:v13 withSelectionBehavior:v19];
  }

  [v4 dynamicResizeDidEndWithTracker:self];
  [v4 invalidateKnobs];
}

- (void)applyNewBoundsToPrimaryRep
{
  v3 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [v3 interactiveCanvasController];

  v5 = [v4 commandController];
  if ([(CRLCanvasKnobTracker *)self didDrag]&& ![(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
  {
    [v5 openGroup];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CRLCanvasKnobTracker *)self didDrag];
  v8 = [(CRLCanvasKnobTracker *)self rep];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 actionStringForResize];
    [v5 setCurrentGroupActionString:v10];

    v11 = [(CRLCanvasKnobTracker *)self rep];
    [(CRLResizeKnobTracker *)self applyNewBoundsToRep:v11];
  }

  else
  {
    [v8 dynamicResizeDidEndWithTracker:self];

    v11 = [(CRLCanvasKnobTracker *)self rep];
    [v11 invalidateKnobs];
  }

  v12 = [(CRLCanvasKnobTracker *)self rep];
  v13 = [v12 layout];
  v14 = [v13 commandsForAdjustingMagnetsFromClineLayouts];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v5 enqueueCommand:*(*(&v32 + 1) + 8 * i)];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [(CRLCanvasKnobTracker *)self rep];
  v21 = [v20 layout];
  v22 = [v21 connectedLayouts];

  v23 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * j);
        [v27 setHeadHasHorizontalFlip:0];
        [v27 setHeadHasVerticalFlip:0];
        [v27 setTailHasHorizontalFlip:0];
        [v27 setTailHasVerticalFlip:0];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  self->mAdjustedMagnetsForHorizontalFlip = 0;
  self->mAdjustedMagnetsForVerticalFlip = 0;
  if (v6)
  {
    [v5 closeGroup];
  }

  if (self->mIsEnqueueingCommandsInRealTime)
  {
    [v5 closeGroup];
  }
}

- (id)p_getHudLabelTextForAccessibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 layout];
  [(CRLResizeKnobTracker *)self currentSizeForLayout:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(CRLCanvasKnobTracker *)self rep];
  v12 = [v11 interactiveCanvasController];
  v13 = [v12 unitStringForNumber:v8];
  v14 = [(CRLCanvasKnobTracker *)self rep];
  v15 = [v14 interactiveCanvasController];
  v16 = [v15 unitStringForNumber:v10];
  if (![v13 isEqualToString:v16])
  {

LABEL_6:
    goto LABEL_7;
  }

  v17 = [(CRLCanvasKnobTracker *)self rep];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    v11 = [(CRLCanvasKnobTracker *)self rep];
    v22 = [v11 interactiveCanvasController];
    v23 = [v22 unitStringForSize:v3 forAccessibility:{v8, v10}];
    goto LABEL_8;
  }

  v19 = [(CRLCanvasKnobTracker *)self rep];
  v20 = [v19 shapeInfo];
  v11 = [v20 pathSource];

  if (([v11 isRectangular] & 1) == 0)
  {
    if ([v11 isCircular])
    {
      v21 = @"Circle: %@";
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v21 = @"Square: %@";
LABEL_13:
  v22 = +[NSBundle mainBundle];
  v25 = [v22 localizedStringForKey:v21 value:0 table:0];
  v26 = [(CRLCanvasKnobTracker *)self rep];
  v27 = [v26 interactiveCanvasController];
  v28 = [v27 unitStringForNumber:v8];
  v23 = [NSString stringWithFormat:v25, v28];

LABEL_8:

  return v23;
}

- (void)willBeginDynamicOperationForReps:(id)a3
{
  v6 = [(CRLCanvasKnobTracker *)self icc];
  if ([v6 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
  {
    v4 = [(CRLCanvasKnobTracker *)self rep];
    v5 = [v4 allowsSupportedDynamicOperationsToBeRealTime];

    if (v5)
    {
      self->mIsEnqueueingCommandsInRealTime = 1;
    }
  }

  else
  {
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  v4 = a3;
  [(CRLCanvasKnobTracker *)self i_resetCurrentPositionToKnobPositionIfAppropriate];
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 isBeingResized];

  if ((v6 & 1) == 0)
  {
    [(CRLResizeKnobTracker *)self p_beginDynamicResize];
  }

  v7 = [(CRLCanvasKnobTracker *)self icc];
  v8 = [v7 commandController];

  if (self->mIsEnqueueingCommandsInRealTime)
  {
    [v8 openGroup];
  }

  if ([(CRLCanvasKnobTracker *)self didDrag])
  {
    v9 = [(CRLCanvasKnobTracker *)self rep];
    [v9 dynamicallyResizingWithTracker:self];
  }

  v10.receiver = self;
  v10.super_class = CRLResizeKnobTracker;
  [(CRLCanvasKnobTracker *)&v10 changeDynamicLayoutsForReps:v4];
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    [v8 closeGroup];
  }
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101398C80();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin resize knob operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101398C94();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "end resize knob operation", v4, 2u);
  }

  return 1;
}

- (void)beginMovingKnob
{
  v66.receiver = self;
  v66.super_class = CRLResizeKnobTracker;
  [(CRLCanvasKnobTracker *)&v66 beginMovingKnob];
  v3 = [(CRLCanvasKnobTracker *)self icc];
  v4 = [v3 layerHost];
  v5 = [v4 asiOSCVC];
  [v5 hideEditMenu];

  v6 = [(CRLCanvasKnobTracker *)self rep];
  LOBYTE(v5) = [v6 isBeingResized];

  if ((v5 & 1) == 0)
  {
    [(CRLResizeKnobTracker *)self p_beginDynamicResize];
  }

  if (![(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
  {
    v7 = [v3 selectionModelTranslator];
    v8 = [v3 editorController];
    v9 = [v8 selectionPath];
    v10 = [v7 boardItemsForSelectionPath:v9];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v63;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v63 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v3 repForInfo:*(*(&v62 + 1) + 8 * i)];
          if (v16)
          {
            v17 = [(CRLCanvasKnobTracker *)self rep];

            if (v16 != v17)
            {
              [v16 fadeKnobsOut];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v13);
    }

    [(CRLResizeKnobTracker *)self p_updateGuideRenderable];
    [(CRLResizeKnobTracker *)self p_updateHUD];
    [v3 addDecorator:self];
    self->mNeedsHUD = 1;
    v18 = dispatch_time(0, (0.5 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10059B320;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_after(v18, &_dispatch_main_q, block);
  }

  v19 = objc_alloc_init(CRLCanvasHUDController);
  mSecondHUDController = self->mSecondHUDController;
  self->mSecondHUDController = v19;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = [(CRLCanvasKnobTracker *)self rep];
  v22 = [v21 layout];
  v23 = [v22 connectedLayouts];

  v24 = [v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v57 + 1) + 8 * j);
        if ([v28 headMagnetType] == 6)
        {
          v29 = [v28 connectedTo];

          if (v29)
          {
            [v28 headMagnetCanvasPosition];
            v49 = v31;
            v51 = v30;
            v32 = [v28 connectedTo];
            v33 = v32;
            if (v32)
            {
              [v32 transformInRoot];
            }

            else
            {
              memset(&v55, 0, sizeof(v55));
            }

            CGAffineTransformInvert(&v56, &v55);
            v52 = vaddq_f64(*&v56.tx, vmlaq_n_f64(vmulq_n_f64(*&v56.c, v49), *&v56.a, v51));

            v34 = [v28 connectedTo];
            v35 = [v34 geometry];
            [v35 size];
            v36 = sub_10011ECB4();
            [v28 overrideHeadMagnetNormalizedPosition:{sub_100121720(v52.f64[0], v52.f64[1], v36, v37, v38)}];

            [v28 setMagnetsAdjusted:1];
          }
        }

        if ([v28 tailMagnetType] == 6)
        {
          v39 = [v28 connectedFrom];

          if (v39)
          {
            [v28 tailMagnetCanvasPosition];
            v50 = v41;
            v53 = v40;
            v42 = [v28 connectedFrom];
            v43 = v42;
            if (v42)
            {
              [v42 transformInRoot];
            }

            else
            {
              memset(&v55, 0, sizeof(v55));
            }

            CGAffineTransformInvert(&v56, &v55);
            v54 = vaddq_f64(*&v56.tx, vmlaq_n_f64(vmulq_n_f64(*&v56.c, v50), *&v56.a, v53));

            v44 = [v28 connectedFrom];
            v45 = [v44 geometry];
            [v45 size];
            v46 = sub_10011ECB4();
            [v28 overrideTailMagnetNormalizedPosition:{sub_100121720(v54.f64[0], v54.f64[1], v46, v47, v48)}];

            [v28 setMagnetsAdjusted:1];
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v25);
  }
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  [(CRLResizeKnobTracker *)self convertKnobPositionFromUnscaledCanvas:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(CRLCanvasKnobTracker *)self knob];
  [v8 offset];
  v10 = sub_10011F31C(v5, v7, v9);
  v12 = v11;

  [(CRLResizeKnobTracker *)self moveKnobToRepPosition:v10, v12];
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLResizeKnobTracker *)self transformInRootForStandardKnobs];
  v3 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v8, y), v7, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLResizeKnobTracker *)self transformInRootForStandardKnobs];
  CGAffineTransformInvert(&v8, &v7);
  v3 = vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  if (self->mResizingLayout)
  {
    y = a3.y;
    x = a3.x;
    v6 = [(CRLCanvasKnobTracker *)self rep];
    if ([v6 wantsGuidesWhileResizing] && !self->mBeganAlignmentOperation)
    {
      v37 = [(CRLResizeKnobTracker *)self isInspectorDrivenTracking];

      if ((v37 & 1) == 0)
      {
        v38 = [(CRLCanvasKnobTracker *)self rep];
        v39 = [v38 interactiveCanvasController];
        v40 = [v39 guideController];
        v41 = [(CRLCanvasKnobTracker *)self rep];
        [v40 beginAlignmentOperationForRep:v41];

        self->mBeganAlignmentOperation = 1;
      }
    }

    else
    {
    }

    v7 = [(CRLCanvasKnobTracker *)self rep];
    v8 = [v7 layout];
    v9 = [v8 shouldFlipMagnetsDuringResize];

    if (v9)
    {
      [(CRLResizeKnobTracker *)self p_flipMagnetNormalizedPositionsIfNeeded];
    }

    [(CRLResizeKnobTracker *)self simpleResizedRectByMovingKnobTo:x, y];
    self->mLastNewBounds.origin.x = v10;
    self->mLastNewBounds.origin.y = v11;
    self->mLastNewBounds.size.width = v12;
    self->mLastNewBounds.size.height = v13;
    if ([(CRLResizeKnobTracker *)self p_isMatchingSize])
    {
      v14 = [(CRLResizeKnobTracker *)self hasHorizontalFlip];
      v15 = [(CRLResizeKnobTracker *)self hasVerticalFlip];
      v16 = [(CRLResizeKnobTracker *)self repToMatch];
      [v16 boundsForStandardKnobs];
      v18 = v17;
      v20 = v19;

      width = self->mBaseBounds.size.width;
      height = self->mBaseBounds.size.height;
      v23 = [(CRLCanvasKnobTracker *)self knob];
      v24 = [v23 tag];

      if (sub_10034601C(v24))
      {
        if ([(CRLResizeKnobTracker *)self currentlyPreservingAspectRatio])
        {
          v25 = width / height;
          v26 = sub_100121BA4(1, self->mLastNewBounds.size.width, self->mLastNewBounds.size.height, width, height);
          v28 = v18 / (width / height) - v27;
          v29 = -(v26 - v20 * v25) * -(v26 - v20 * v25);
          if (sqrt(v25 * v25 * (v28 * v28) + v28 * v28) >= sqrt(v29 / (v25 * v25) + v29))
          {
            v32 = 0;
            v33 = v26 - (v26 - v20 * v25);
            v30 = 1;
            v31 = v20;
          }

          else
          {
            v30 = 0;
            v31 = v27 + v28;
            v32 = 1;
            v33 = v18;
          }
        }

        else
        {
          v30 = 1;
          v31 = v20;
          v33 = v18;
          v32 = 1;
        }

        v46 = sub_10011ECC8(v18, v20, v33, v31);
        v35 = v30 | v46;
        v34 = v32 | v46;
      }

      else
      {
        if (v24 == 8)
        {
          v42 = v20;
        }

        else
        {
          v42 = height;
        }

        if (v24 == 8)
        {
          v43 = width;
        }

        else
        {
          v43 = v18;
        }

        v44 = v24 != 8;
        v45 = v24 == 2;
        v35 = v24 == 2 || v24 == 8;
        v34 = !v45 && v44;
      }

      v47 = [(CRLCanvasKnobTracker *)self knob:v42];
      sub_10059B8EC([v47 tag], self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
      self->mLastNewBounds.origin.x = v48;
      self->mLastNewBounds.origin.y = v49;
      self->mLastNewBounds.size.width = v50;
      self->mLastNewBounds.size.height = v51;

      if (v14)
      {
        self->mLastNewBounds.size.width = -self->mLastNewBounds.size.width;
      }

      mSnapToGuides = 0;
      if (v15)
      {
        self->mLastNewBounds.size.height = -self->mLastNewBounds.size.height;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0;
      mSnapToGuides = self->mSnapToGuides;
    }

    v52 = [(CRLCanvasKnobTracker *)self rep];
    v59 = [v52 interactiveCanvasController];

    v53 = [v59 guideController];
    [v53 hideSizingGuides];

    [(CRLResizeKnobTracker *)self constrainBetweenMaxAndMinSize];
    if (![(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
    {
      [(CRLResizeKnobTracker *)self constrainAndSnapByMovingKnobTo:mSnapToGuides snappingToGuides:x, y];
      [(CRLResizeKnobTracker *)self constrainBetweenMaxAndMinSize];
    }

    v54 = [(CRLCanvasKnobTracker *)self rep];
    [v54 invalidateKnobPositions];

    v55 = [(CRLCanvasKnobTracker *)self rep];
    [v55 dynamicallyResizingWithTracker:self];

    if (![(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
    {
      [(CRLResizeKnobTracker *)self p_validateLayout];
      if ((v34 | v35) == 1)
      {
        v56 = [v59 guideController];
        v57 = [(CRLCanvasKnobTracker *)self rep];
        [v56 showSizingGuideUIForRep:v57 matchingWidth:v34 matchingHeight:v35];

        v58 = [v59 guideController];
        [v58 showSizingGuideUIForRep:self->mRepToMatch matchingWidth:v34 matchingHeight:v35];
      }

      [(CRLResizeKnobTracker *)self p_cancelDelayedHUDAndGuides];
      [(CRLResizeKnobTracker *)self p_updateHUD];
      [(CRLResizeKnobTracker *)self p_updateGuideRenderable];
    }
  }
}

- (void)endMovingKnob
{
  if (self->mResizingLayout)
  {
    [(CRLResizeKnobTracker *)self applyNewBoundsToPrimaryRep];
    if (![(CRLResizeKnobTracker *)self isInspectorDrivenTracking])
    {
      v3 = [(CRLCanvasKnobTracker *)self rep];
      v4 = [v3 interactiveCanvasController];

      v5 = [v4 selectionModelTranslator];
      v6 = [v4 editorController];
      v7 = [v6 selectionPath];
      v8 = [v5 boardItemsForSelectionPath:v7];

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
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [v4 repForInfo:*(*(&v19 + 1) + 8 * v13)];
            if (v14)
            {
              v15 = [(CRLCanvasKnobTracker *)self rep];

              if (v14 != v15)
              {
                [v14 fadeKnobsIn];
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      v16 = [v4 guideController];
      [v16 endAlignmentOperation];

      [(CRLResizeKnobTracker *)self p_cancelDelayedHUDAndGuides];
      [(CRLResizeKnobTracker *)self p_hideHUD];
      [(CRLResizeKnobTracker *)self p_hideGuideRenderable];
    }

    mResizingLayout = self->mResizingLayout;
    self->mResizingLayout = 0;

    v18.receiver = self;
    v18.super_class = CRLResizeKnobTracker;
    [(CRLCanvasKnobTracker *)&v18 endMovingKnob];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [a3 valueForKey:{@"icc", a4}];
  [v5 removeDecorator:self];
}

- (void)p_beginDynamicResize
{
  v3 = [(CRLCanvasKnobTracker *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398CA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398CBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398D60();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLResizeKnobTracker p_beginDynamicResize]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLResizeKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:971 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  if ([v3 isBeingResized])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398E68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398E90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398F20();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLResizeKnobTracker p_beginDynamicResize]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLResizeKnobTracker.m"];
    v10 = "Rep should not already be being resized when calling -p_beginDynamicResize";
    v11 = v8;
    v12 = v9;
    v13 = 973;
LABEL_33:
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:v13 isFatal:0 description:v10];

    goto LABEL_34;
  }

  v14 = [v3 dynamicResizeDidBegin];
  mResizingLayout = self->mResizingLayout;
  self->mResizingLayout = v14;

  if (!self->mResizingLayout)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398D88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398DB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398E40();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v8 = [NSString stringWithUTF8String:"[CRLResizeKnobTracker p_beginDynamicResize]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLResizeKnobTracker.m"];
    v10 = "Unable to get resizing layout for beginning dynamic drag.";
    v11 = v8;
    v12 = v9;
    v13 = 979;
    goto LABEL_33;
  }

  if (self->mIsEnqueueingCommandsInRealTime)
  {
    v16 = [(CRLCanvasKnobTracker *)self icc];
    v8 = [v16 commandController];

    [v8 openGroup];
    [v8 enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
LABEL_34:
  }
}

- (CGAffineTransform)p_repTransformInRootForTransforming
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 layout];
  v7 = [v6 geometryForTransforming];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  v9 = [(CRLCanvasKnobTracker *)self rep];
  v10 = [v9 layout];
  v11 = [v10 parent];

  if (v11)
  {
    do
    {
      v13 = [v11 geometry];
      v14 = v13;
      if (v13)
      {
        v15 = *&retstr->c;
        v18[0] = *&retstr->a;
        v18[1] = v15;
        v18[2] = *&retstr->tx;
        [v13 transformByConcatenatingTransformTo:v18];
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
      }

      v16 = v20;
      *&retstr->a = v19;
      *&retstr->c = v16;
      *&retstr->tx = v21;

      v17 = [v11 parent];

      v11 = v17;
    }

    while (v17);
  }

  return result;
}

- (CGRect)simpleResizedRectByMovingKnobTo:(CGPoint)a3
{
  y = a3.y;
  p_mBaseBounds = &self->mBaseBounds;
  CGRectGetMinX(self->mBaseBounds);
  CGRectGetMaxX(*p_mBaseBounds);
  MinY = CGRectGetMinY(*p_mBaseBounds);
  CGRectGetMaxY(*p_mBaseBounds);
  v7 = [(CRLCanvasKnobTracker *)self knob];
  v8 = [v7 tag];

  v9 = (v8 - 1) / 3;
  v10 = (v8 - 1) % 3;
  if (v9)
  {
    v11 = MinY;
  }

  else
  {
    v11 = y;
  }

  if ([(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter]&& (v10 == 2 || !v10))
  {
    CGRectGetMidX(*p_mBaseBounds);
  }

  if ([(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter]&& (v9 == 2 || !v9))
  {
    CGRectGetMidY(*p_mBaseBounds);
  }

  x = p_mBaseBounds->origin.x;
  v13 = p_mBaseBounds->origin.y;
  width = p_mBaseBounds->size.width;
  height = p_mBaseBounds->size.height;

  sub_10059B8EC(v8, x, v13, width, height);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)constrainAndSnapByMovingKnobTo:(CGPoint)a3 snappingToGuides:(BOOL)a4
{
  self->mSnappedToAspectRatio = 0;
  if (self->mSnapEnabled)
  {
    v160 = v13;
    v161 = v12;
    v162 = v11;
    v163 = v10;
    v164 = v9;
    v165 = v8;
    v166 = v7;
    v167 = v6;
    v168 = v4;
    v169 = v5;
    v14 = a4;
    p_mLastNewBounds = &self->mLastNewBounds;
    a3.x = self->mLastNewBounds.size.width;
    height = self->mLastNewBounds.size.height;
    rect_24 = a3;
    v18 = [(CRLCanvasKnobTracker *)self knob];
    v19 = [v18 tag];

    v20 = [(CRLCanvasKnobTracker *)self rep];
    v21 = [v20 interactiveCanvasController];
    v22 = [v21 guideController];

    v23 = [(CRLResizeKnobTracker *)self currentlyPreservingAspectRatio];
    v24 = sub_10034601C(v19);
    v25 = v24;
    rect_8 = v24;
    if ((v23 & 1) == 0 && !v24)
    {
      if (!v14)
      {
LABEL_27:
        v67 = [(CRLCanvasKnobTracker *)self rep];
        v68 = [v67 wantsGuidesWhileResizing];

        if (v68)
        {
          [v22 hideAlignmentGuides];
        }

LABEL_119:
        sub_10059B8EC(v19, self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
        p_mLastNewBounds->origin.x = v137;
        p_mLastNewBounds->origin.y = v138;
        p_mLastNewBounds->size.width = v139;
        p_mLastNewBounds->size.height = v140;

        return;
      }

LABEL_24:
      if (![(CRLCanvasAbstractLayout *)self->mResizingLayout shouldSnapWhileResizing])
      {
        goto LABEL_27;
      }

      v149 = v23;
      sub_10059B8EC(v19, self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
      p_mLastNewBounds->origin.x = v52;
      p_mLastNewBounds->origin.y = v53;
      p_mLastNewBounds->size.width = v54;
      p_mLastNewBounds->size.height = v55;
      v56 = [(CRLCanvasKnobTracker *)self rep];
      [v56 dynamicallyResizingWithTracker:self];

      [(CRLResizeKnobTracker *)self p_validateLayout];
      [(CRLCanvasAbstractLayout *)self->mResizingLayout alignmentFrame];
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = [(CRLCanvasAbstractLayout *)self->mResizingLayout parent];
      v66 = v65;
      if (v65)
      {
        [v65 transformInRoot];
      }

      else
      {
        memset(&v159, 0, sizeof(v159));
      }

      v170.origin.x = v58;
      v170.origin.y = v60;
      v170.size.width = v62;
      v170.size.height = v64;
      v171 = CGRectApplyAffineTransform(v170, &v159);
      x = v171.origin.x;
      width = v171.size.width;
      y = v171.origin.y;
      v70 = v171.size.height;

      memset(&v159, 0, sizeof(v159));
      mResizingLayout = self->mResizingLayout;
      if (mResizingLayout)
      {
        [(CRLCanvasLayout *)mResizingLayout originalTransformForProvidingGuides];
      }

      v172 = *p_mLastNewBounds;
      v158 = v159;
      v173 = CGRectApplyAffineTransform(v172, &v158);
      v72 = v173.origin.x;
      v73 = v173.origin.y;
      v74 = v173.size.width;
      v75 = v173.size.height;
      v76 = [(CRLCanvasKnobTracker *)self knob];
      v77 = [v76 tag];

      v78 = self->mResizingLayout;
      if (v78)
      {
        [(CRLCanvasAbstractLayout *)v78 transform];
      }

      else
      {
        memset(&v158, 0, sizeof(v158));
      }

      v79 = sub_100139980(&v158);
      sub_1001208E0(v79);
      v145 = v19;
      if (v80 == 90.0 || fabs(v80 + -90.0) < 0.00999999978)
      {
        v81 = v22;
        v82 = sub_100345B30(v77);
      }

      else if (v80 == 180.0 || fabs(v80 + -180.0) < 0.00999999978)
      {
        v81 = v22;
        v82 = sub_100345B08(v77);
      }

      else
      {
        if (v80 != 270.0 && fabs(v80 + -270.0) >= 0.00999999978)
        {
          v148 = v77;
          v81 = v22;
          goto LABEL_47;
        }

        v81 = v22;
        v82 = sub_100345934(v77);
      }

      v148 = v82;
LABEL_47:
      v150 = v73;
      recta = v72;
      v83 = [(CRLResizeKnobTracker *)self hasHorizontalFlip];
      v84 = [(CRLResizeKnobTracker *)self hasVerticalFlip];
      v85 = objc_opt_class();
      v86 = [(CRLCanvasKnobTracker *)self rep];
      v87 = [v86 parentRep];
      v88 = sub_100014370(v85, v87);

      v89 = [(CRLCanvasKnobTracker *)self rep];
      LODWORD(v86) = [v89 wantsGuidesWhileResizing];

      v143 = v70;
      v90 = CGPointZero.y;
      if (v86)
      {
        LOBYTE(v141) = v88 == 0;
        [v81 snapRectToGuides:v148 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:v83 startPoint:v84 endPoint:x hasHorizontalFlip:y hasVerticalFlip:width snapWithGuides:{v70, CGPointZero.x, v90, CGPointZero.x, v90, v141}];
        v92 = v91;
        v94 = v93;
      }

      else
      {
        v94 = v90;
        v92 = CGPointZero.x;
      }

      v144 = v88;
      v95 = v94 == v90 && v92 == CGPointZero.x;
      v96 = [(CRLCanvasKnobTracker *)self rep];
      v97 = [v96 interactiveCanvasController];
      v98 = [v97 canvasBackground];

      v142 = v98;
      v99 = [v98 alignmentProvider];
      if (v99)
      {
        v100 = [(CRLCanvasKnobTracker *)self rep];
        v101 = [v100 interactiveCanvasController];
        v102 = [v101 isCanvasBackgroundAlignmentSnappingEnabled];
      }

      else
      {
        v102 = 0;
      }

      v22 = v81;
      if (v95)
      {
        v103 = v148;
        goto LABEL_97;
      }

      v104 = self->mResizingLayout;
      if (v104)
      {
        [(CRLCanvasLayout *)v104 originalTransformForProvidingGuides];
      }

      else
      {
        memset(&v158, 0, sizeof(v158));
      }

      v174 = CGRectApplyAffineTransform(self->mBaseBounds, &v158);
      v105 = v174.size.width / v174.size.height;
      v103 = v148;
      if (!rect_8)
      {
        if ((v149 & 1) != 0 || self->mSnappedToAspectRatio)
        {
          if (v92 == 0.0 || (v148 | 2) != 6)
          {
            v109 = -v94;
            if (v148 != 2)
            {
              v109 = v94;
            }

            v110 = v109;
            v92 = v105 * v110 - (v74 + v105 * v110 - (v75 + v110) * v105);
          }

          else
          {
            v107 = -v92;
            if (v148 != 4)
            {
              v107 = v92;
            }

            v108 = v107;
            v94 = v108 / v105 + (v74 + v108) / v105 - (v75 + v108 / v105);
          }
        }

LABEL_97:
        if (fabs(v92) <= 7)
        {
          if ((fabs(v94) <= 7) | v102 & 1)
          {
LABEL_102:
            v157 = v159;
            CGAffineTransformInvert(&v158, &v157);
            v175.origin.y = v150;
            v175.origin.x = v72;
            v175.size.width = v74;
            v175.size.height = v75;
            CGRectApplyAffineTransform(v175, &v158);
            if (0xAAAAAAAAAAAAAAABLL * (v103 - 1) <= 0x5555555555555555)
            {
              v119 = x + v92;
              v120 = width - v92;
              recta = v72 + v92;
              v121 = v74 - v92;
            }

            else
            {
              v119 = x;
              v120 = width + v92;
              v121 = v74 + v92;
            }

            v19 = v145;
            v122 = v119;
            v123 = v75;
            if ((v103 - 1) > 2)
            {
              v124 = y;
              v125 = v143 + v94;
              v126 = v123 + v94;
            }

            else
            {
              v124 = y + v94;
              v125 = v143 - v94;
              v150 = v150 + v94;
              v126 = v123 - v94;
            }

            rect_8a = v125;
            rect_16 = v120;
            if ((v103 & 0xFFFFFFFFFFFFFFFDLL) == 4)
            {
              v124 = v124 - v94 * 0.5;
              v127 = v150 - v94 * 0.5;
            }

            else
            {
              if (v103 == 8 || v103 == 2)
              {
                v122 = v122 - v92 * 0.5;
                recta = recta - v92 * 0.5;
              }

              v127 = v150;
            }

            v157 = v159;
            CGAffineTransformInvert(&v158, &v157);
            v176.origin.x = recta;
            v176.origin.y = v127;
            v176.size.width = v121;
            v176.size.height = v126;
            v177 = CGRectApplyAffineTransform(v176, &v158);
            *&v177.origin.x = v177.size.width;
            *&v177.size.width = rect_24.x;
            v128.i64[0] = 0x8000000080000000;
            v128.i64[1] = 0x8000000080000000;
            *v129.i64 = fabs(*vbslq_s8(v128, v177.origin, v177.size).i32);
            if (*v129.i64 >= 1.0)
            {
              *&v177.size.height = v177.size.height;
              *v129.i32 = height;
              if (fabs(*vbslq_s8(v128, *&v177.size.height, v129).i32) >= 1.0)
              {
                sub_10059B8EC(v145, self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
                p_mLastNewBounds->origin.x = v130;
                p_mLastNewBounds->origin.y = v131;
                p_mLastNewBounds->size.width = v132;
                p_mLastNewBounds->size.height = v133;
                v134 = [(CRLCanvasKnobTracker *)self rep];
                [v134 dynamicallyResizingWithTracker:self];

                [(CRLResizeKnobTracker *)self p_validateLayout];
                v135 = [(CRLCanvasKnobTracker *)self rep];
                v136 = [v135 wantsGuidesWhileResizing];

                if (v136)
                {
                  [v81 showGuidesAlignedWithRect:v103 forKnobTag:{v122, v124, rect_16, rect_8a}];
                }
              }
            }

            goto LABEL_119;
          }
        }

        else if (v102)
        {
          goto LABEL_102;
        }

        v94 = v90;
        v92 = CGPointZero.x;
        goto LABEL_102;
      }

      if ((v149 & 1) == 0 && !self->mSnappedToAspectRatio)
      {
        goto LABEL_97;
      }

      if (v92 == 0.0)
      {
        v106 = 0;
      }

      else
      {
        if (v94 == 0.0)
        {
          v106 = 1;
          goto LABEL_80;
        }

        v106 = fabs(v92) < fabs(v94);
      }

      if (((v106 | v102) & 1) == 0)
      {
        v106 = 0;
        v114 = v94;
LABEL_87:
        v116 = v75 + v94;
        if (v148 == 7)
        {
          v115 = -(v94 * v105) - (v74 - -(v94 * v105) - v116 * v105);
        }

        else
        {
          v117 = v94 * v105 - (v74 + v94 * v105 - v116 * v105);
          v118 = -(v94 * v105) - -(v74 - v94 * v105 - (v75 - v94) * v105);
          if (v148 == 3)
          {
            v115 = v118;
          }

          else
          {
            v115 = v117;
          }
        }

LABEL_92:
        if (v102)
        {
          v106 = fabs(v92) + fabs(v114) <= fabs(v94) + fabs(v115);
        }

        if (v106)
        {
          v94 = v114;
        }

        else
        {
          v92 = v115;
        }

        goto LABEL_97;
      }

LABEL_80:
      v111 = -v92 / v105;
      v112 = v111 + (v74 - v92) / v105 - (v75 + v111);
      v113 = (v74 + v92) / v105;
      v114 = v111 + v113 - (v75 - v111);
      if (v148 != 3)
      {
        v114 = v92 / v105 + v113 - (v75 + v92 / v105);
      }

      if (v148 == 7)
      {
        v114 = v112;
      }

      v115 = v92;
      if (!(v102 & 1 | !v106))
      {
        goto LABEL_92;
      }

      goto LABEL_87;
    }

    rect = v22;
    v26 = fabs(rect_24.x);
    v27 = fabs(height);
    v28 = [(CRLCanvasKnobTracker *)self rep];
    v29 = [v28 interactiveCanvasController];
    v30 = [v29 canvasBackground];

    v31 = [v30 alignmentProvider];
    v33 = v31;
    if (v23)
    {
      *v32.i64 = sub_100121BA4(v25, v26, v27, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
      v26 = *v32.i64;
      v27 = v34;
LABEL_21:
      self->mSnappedToAspectRatio = 1;
      goto LABEL_22;
    }

    if ((v25 & v14) != 1)
    {
LABEL_22:
      v49 = rect_24;
      goto LABEL_23;
    }

    if (!v31 || (-[CRLCanvasKnobTracker rep](self, "rep"), v35 = objc_claimAutoreleasedReturnValue(), [v35 interactiveCanvasController], v36 = v19, v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isCanvasBackgroundAlignmentSnappingEnabled"), v37, v19 = v36, v35, (v38 & 1) == 0))
    {
      v39 = self->mBaseBounds.size.height;
      v40 = 1.0;
      v41 = 1.0;
      if (v39 > 0.001)
      {
        v41 = self->mBaseBounds.size.width / v39;
      }

      if (v27 > 0.001)
      {
        v40 = v26 / v27;
      }

      v42 = logf(v41);
      *v32.i32 = logf(v40);
      v43 = vabds_f32(v42, *v32.i32);
      *v32.i32 = fabsf(*v32.i32);
      if (v43 < 0.1 && v43 < *v32.i32)
      {
        v44 = self->mBaseBounds.size.width;
        v45 = v26;
        v46 = v27;
        v47 = v39;
LABEL_20:
        *v32.i64 = sub_100121BA4(1, v45, v46, v44, v47);
        v26 = *v32.i64;
        v27 = v48;
        LOBYTE(v23) = 0;
        goto LABEL_21;
      }

      if (*v32.i32 < 0.1)
      {
        v44 = 1.0;
        v47 = 1.0;
        v45 = v26;
        v46 = v27;
        goto LABEL_20;
      }
    }

    v49 = rect_24;
    LOBYTE(v23) = 0;
LABEL_23:
    *v32.i32 = v26;
    *v49.i32 = *v49.i64;
    v50.i64[0] = 0x8000000080000000;
    v50.i64[1] = 0x8000000080000000;
    v51 = vbslq_s8(v50, v32, v49);
    *v51.i64 = *v51.i32;
    *&rect_24.x = v51.i64[0];
    *v51.i32 = v27;
    *v49.i32 = height;
    height = *vbslq_s8(v50, v51, v49).i32;

    v22 = rect;
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }
}

- (void)constrainBetweenMaxAndMinSize
{
  p_mLastNewBounds = &self->mLastNewBounds;
  width = self->mMinimumSize.width;
  height = self->mMinimumSize.height;
  if ([(CRLResizeKnobTracker *)self currentlyPreservingAspectRatio])
  {
    sub_100121C3C(width, height, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
  }

  v6 = [(CRLCanvasKnobTracker *)self knob];
  sub_10059B8EC([v6 tag], self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
  p_mLastNewBounds->origin.x = v7;
  p_mLastNewBounds->origin.y = v8;
  p_mLastNewBounds->size.width = v9;
  p_mLastNewBounds->size.height = v10;

  v15 = [(CRLCanvasKnobTracker *)self knob];
  sub_10059B8EC([v15 tag], self->mBaseBounds.origin.x, self->mBaseBounds.origin.y, self->mBaseBounds.size.width, self->mBaseBounds.size.height);
  p_mLastNewBounds->origin.x = v11;
  p_mLastNewBounds->origin.y = v12;
  p_mLastNewBounds->size.width = v13;
  p_mLastNewBounds->size.height = v14;
}

- (void)p_validateLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [v2 layout];

  v3 = [v4 layoutController];
  [v3 validateLayoutWithDependencies:v4];
}

- (void)p_updateGuideRenderable
{
  v3 = [(CRLCanvasKnobTracker *)self knob];
  v4 = sub_10034601C([v3 tag]);

  if (v4)
  {
    v5 = [(CRLCanvasKnobTracker *)self rep];
    v6 = [v5 interactiveCanvasController];

    v7 = [v6 canvas];
    [v7 contentsScale];
    v9 = v8;

    if (!self->mBeganAlignmentOperation)
    {
      v10 = [v6 guideController];
      v11 = [(CRLCanvasKnobTracker *)self rep];
      [v10 beginAlignmentOperationForRep:v11];

      self->mBeganAlignmentOperation = 1;
    }

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    if (self->mSnappedToAspectRatio)
    {
      v12 = v9 * 10.0;
      v13 = v9 * 3.0;
      mGuideRenderable = self->mGuideRenderable;
      if (!mGuideRenderable)
      {
        v15 = +[CRLCanvasRenderable renderable];
        v16 = self->mGuideRenderable;
        self->mGuideRenderable = v15;

        [(CRLCanvasRenderable *)self->mGuideRenderable setZPosition:-1.0];
        [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:self];
        [(CRLCanvasRenderable *)self->mGuideRenderable setContentsScale:v9];
        [v6 invalidateLayersForDecorator:self];
        if (qword_101AD5D18)
        {
          v17 = 1;
        }

        else
        {
          v17 = v9 == 1.0;
        }

        v18 = (v12 * 20.0);
        v19 = &qword_101AD5D08;
        v20 = &unk_101AD5D10;
        if (!v17 || !qword_101AD5D08)
        {
          v21 = sub_10050DF80(3, v13, v18);
          *&components.a = xmmword_1014668C0;
          components.c = 0.125490196;
          v22 = sub_1000CCC44();
          CGContextSetFillColorSpace(v21, v22);
          v23 = 0.0;
          v24 = 20;
          do
          {
            components.d = v23 / -20.0 + 1.0;
            CGContextSetFillColor(v21, &components.a);
            v117.origin.x = 0.0;
            v117.origin.y = 0.0;
            v117.size.width = v9 * 3.0;
            v117.size.height = v9 * 3.0;
            CGContextAddEllipseInRect(v21, v117);
            CGContextFillPath(v21);
            CGContextTranslateCTM(v21, 0.0, v9 * 10.0);
            v23 = v23 + 1.0;
            --v24;
          }

          while (v24);
          v25 = sub_10050DF80(3, v13, 2560.0);
          components.d = 1.0;
          v26 = sub_1000CCC44();
          CGContextSetFillColorSpace(v25, v26);
          CGContextSetFillColor(v25, &components.a);
          v27 = 2560.0 / v12 + 2560.0 / v12;
          if (v27 > 0.0)
          {
            v28 = 1;
            do
            {
              v118.origin.x = 0.0;
              v118.origin.y = 0.0;
              v118.size.width = v9 * 3.0;
              v118.size.height = v9 * 3.0;
              CGContextAddEllipseInRect(v25, v118);
              CGContextFillPath(v25);
              CGContextTranslateCTM(v25, 0.0, v9 * 10.0);
              v29 = v28++;
            }

            while (v27 > v29);
          }

          Image = CGBitmapContextCreateImage(v21);
          if (v9 == 1.0)
          {
            v31 = &qword_101AD5D08;
          }

          else
          {
            v31 = &qword_101AD5D18;
          }

          if (v9 == 1.0)
          {
            v32 = &unk_101AD5D10;
          }

          else
          {
            v32 = &unk_101AD5D20;
          }

          *v31 = Image;
          *v32 = CGBitmapContextCreateImage(v25);
          v19 = &qword_101AD5D08;
          CGContextRelease(v21);
          v20 = &unk_101AD5D10;
          CGContextRelease(v25);
        }

        v33 = +[CRLCanvasRenderable renderable];
        v34 = v33;
        if (v9 != 1.0)
        {
          v19 = &qword_101AD5D18;
          v20 = &unk_101AD5D20;
        }

        [v33 setContents:*v19];
        v35 = v13 / v9;
        v36 = v18 / v9;
        [v34 setBounds:{0.0, 0.0, v35, v18 / v9}];
        v37 = v13 * -0.5 / v18 + 1.0;
        [v34 setAnchorPoint:{0.5, v37}];
        v38 = +[CRLCanvasRenderable renderable];
        [v38 setContents:*v20];
        [v38 setAnchorPoint:{0.5, 0.0}];
        [v38 setBounds:{0.0, v13 * -0.5 / 2560.0, v35, 2560.0 / v9}];
        v39 = +[CRLCanvasScrollRenderable renderable];
        [v39 setAnchorPoint:{0.5, 0.0}];
        [v39 addSubrenderable:v38];
        v40 = +[CRLCanvasRenderable renderable];
        [v40 setContents:*v19];
        [v40 setBounds:{0.0, 0.0, v35, v36}];
        CGAffineTransformMakeRotation(&v115, 3.14159265);
        components = v115;
        [v40 setAffineTransform:&components];
        [v40 setAnchorPoint:{0.5, v37}];
        [v34 setContentsScale:v9];
        [v39 setContentsScale:v9];
        [v40 setContentsScale:v9];
        [(CRLCanvasRenderable *)self->mGuideRenderable addSubrenderable:v34];
        [(CRLCanvasRenderable *)self->mGuideRenderable addSubrenderable:v39];
        [(CRLCanvasRenderable *)self->mGuideRenderable addSubrenderable:v40];

        mGuideRenderable = self->mGuideRenderable;
      }

      v111 = v9 * 10.0;
      [(CRLCanvasRenderable *)mGuideRenderable setHidden:0, v9 * 3.0];
      v41 = [(CRLCanvasKnobTracker *)self knob];
      v42 = sub_100345F44([v41 tag], self->mLastNewBounds.origin.x, self->mLastNewBounds.origin.y, self->mLastNewBounds.size.width, self->mLastNewBounds.size.height);
      v44 = v43;

      v45 = [(CRLCanvasKnobTracker *)self knob];
      v46 = sub_100345B0C([v45 tag]);
      v47 = sub_100345F44(v46, self->mLastNewBounds.origin.x, self->mLastNewBounds.origin.y, self->mLastNewBounds.size.width, self->mLastNewBounds.size.height);
      v49 = v48;

      v50 = [(CRLCanvasKnobTracker *)self rep];
      [v50 boundsForResizeGuideUI];
      v52 = v51;

      x = self->mLastNewBounds.origin.x;
      v54 = sub_10011F31C(v42, v44, x);
      v56 = v55;
      v57 = sub_10011F31C(v47, v49, x);
      v59 = v58;
      v60 = sub_10011F334(v54, v56, v52);
      v62 = v61;
      v63 = sub_10011F334(v57, v59, v52);
      v65 = v64;
      if ([(CRLResizeKnobTracker *)self hasHorizontalFlip])
      {
        width = self->mLastNewBounds.size.width;
        v60 = sub_10011F31C(v60, v62, width);
        v62 = v67;
        v63 = sub_10011F31C(v63, v65, width);
        v65 = v68;
      }

      if ([(CRLResizeKnobTracker *)self hasVerticalFlip])
      {
        v60 = sub_10011F31C(v60, v62, 0.0);
        v62 = v69;
        v63 = sub_10011F31C(v63, v65, 0.0);
        v65 = v70;
      }

      v71 = [(CRLCanvasKnobTracker *)self rep];
      v72 = [v71 layout];
      v73 = [v72 geometryForTransforming];

      memset(&components, 0, sizeof(components));
      if (v73)
      {
        [v73 transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v74 = [(CRLCanvasKnobTracker *)self rep];
      v75 = [v74 layout];
      v76 = [v75 geometry];
      v77 = v76;
      if (v76)
      {
        [v76 transform];
      }

      else
      {
        memset(&v112, 0, sizeof(v112));
      }

      CGAffineTransformInvert(&t2, &v112);
      CGAffineTransformConcat(&components, &t1, &t2);

      v78 = components.tx + v62 * components.c + components.a * v60;
      v79 = components.ty + v62 * components.d + components.b * v60;
      v80 = components.tx + v65 * components.c + components.a * v63;
      v81 = components.ty + v65 * components.d + components.b * v63;
      v82 = [(CRLCanvasKnobTracker *)self rep];
      [v82 convertNaturalPointToUnscaledCanvas:{v78, v79}];
      [v6 convertUnscaledToBoundsPoint:?];
      v84 = v83;
      v86 = v85;

      v87 = [(CRLCanvasKnobTracker *)self rep];
      [v87 convertNaturalPointToUnscaledCanvas:{v80, v81}];
      [v6 convertUnscaledToBoundsPoint:?];
      v89 = v88;
      v91 = v90;

      v92 = sub_100120090(v89, v91, v84, v86);
      v93 = v92 / v111;
      v94 = vcvtps_u32_f32(v93);
      v95 = [(CRLCanvasRenderable *)self->mGuideRenderable subrenderables];
      v96 = [v95 objectAtIndexedSubscript:0];

      v97 = [(CRLCanvasRenderable *)self->mGuideRenderable subrenderables];
      v98 = [v97 objectAtIndexedSubscript:1];

      v99 = [(CRLCanvasRenderable *)self->mGuideRenderable subrenderables];
      v100 = [v99 lastObject];

      v101 = v111 * v94;
      [v98 setBounds:{v110 * -0.5, 0.0, v110, v101}];
      if ([(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter]&& [(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter])
      {
        v102 = v92 * 0.5;
        v103 = (v94 >> 1);
        [v96 setPosition:{0.0, v102 - v103 * v111}];
        [v98 setPosition:{0.0, v102 - v103 * v111}];
        v101 = v102 + v103 * v111;
      }

      else
      {
        [v96 setPosition:{0.0, 0.0}];
        [v98 setPosition:{0.0, 0.0}];
      }

      [v100 setPosition:{0.0, v101}];
      [(CRLCanvasRenderable *)self->mGuideRenderable position];
      if (v105 != v89 || v104 != v91)
      {
        [(CRLCanvasRenderable *)self->mGuideRenderable setPosition:v89, v91];
      }

      v106 = sub_10011F31C(v84, v86, v89);
      v108 = sub_1001208D0(v106, v107);
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeRotation(&t1, v108 + -1.57079633);
      v109 = self->mGuideRenderable;
      if (v109)
      {
        [(CRLCanvasRenderable *)v109 affineTransform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v112 = t1;
      if (!CGAffineTransformEqualToTransform(&v112, &t2))
      {
        t2 = t1;
        [(CRLCanvasRenderable *)self->mGuideRenderable setAffineTransform:&t2];
      }

      +[CATransaction commit];
    }

    else
    {
      [(CRLCanvasRenderable *)self->mGuideRenderable setHidden:1];
      +[CATransaction commit];
    }
  }
}

- (void)p_hideGuideRenderable
{
  if ([(CRLCanvasRenderable *)self->mGuideRenderable isHidden])
  {
    v9 = [(CRLCanvasKnobTracker *)self rep];
    v3 = [v9 interactiveCanvasController];
    [v3 removeDecorator:self];
  }

  else
  {
    v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v9 setDuration:0.400000006];
    LODWORD(v4) = 1.0;
    v5 = [NSNumber numberWithFloat:v4];
    [v9 setFromValue:v5];

    v6 = [NSNumber numberWithFloat:0.0];
    [v9 setToValue:v6];

    [v9 setDelegate:self];
    v7 = [(CRLCanvasKnobTracker *)self rep];
    v8 = [v7 interactiveCanvasController];
    [v9 setValue:v8 forKey:@"icc"];

    [(CRLCanvasRenderable *)self->mGuideRenderable addAnimation:v9 forKey:@"fade out"];
    [(CRLCanvasRenderable *)self->mGuideRenderable setOpacity:0.0];
  }
}

- (void)p_updateHUD
{
  v3 = objc_opt_class();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"CRLShowSizeAndPositionWhileMovingUserDefault"];
  v37 = sub_100014370(v3, v5);

  if (!v37 || (v6 = [v37 BOOLValue], v7 = v37, v6))
  {
    v8 = [(CRLCanvasKnobTracker *)self rep];
    v9 = [v8 interactiveCanvasController];

    v10 = +[CRLCanvasHUDController sharedHUDController];
    v11 = [(CRLResizeKnobTracker *)self hudLabelText];
    [v10 setLabelText:v11];

    v12 = [v9 layerHost];
    v13 = [v12 canvasView];

    [(CRLCanvasKnobTracker *)self currentPosition];
    [v9 convertUnscaledToBoundsPoint:?];
    v15 = v14;
    v17 = v16;
    v18 = [v10 view];
    [v18 frame];
    v20 = (v19 + v19) / 5.0;

    [v10 showHUDForKey:self forTouchPoint:v13 inCanvasView:0 withNudge:v15 size:{v17, v20, -75.0}];
    if (![(CRLResizeKnobTracker *)self suppressSecondaryHUD])
    {
      if ([(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter]&& [(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter])
      {
        v21 = @"Center Resize";
LABEL_9:
        mSecondHUDController = self->mSecondHUDController;
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:v21 value:0 table:0];
        [(CRLCanvasHUDController *)mSecondHUDController setLabelText:v24];

        v25 = [(CRLCanvasHUDController *)self->mSecondHUDController view];
        [v25 frame];
        v27 = (v26 + v26) / 5.0;

        v28 = self->mSecondHUDController;
        [(CRLResizeKnobTracker *)self secondaryHUDPoint];
        v31 = sub_100122154(v29, v30);
        v33 = v32;
        v34 = [(CRLCanvasKnobTracker *)self icc];
        v35 = [v34 layerHost];
        v36 = [v35 canvasView];
        [(CRLCanvasHUDController *)v28 showHUDForKey:self forTouchPoint:v36 inCanvasView:0 withNudge:v31 size:v33, v27, -75.0];

LABEL_11:
        v7 = v37;
        goto LABEL_12;
      }

      if ([(CRLResizeKnobTracker *)self p_isMatchingSize])
      {
        v21 = @"Match Size";
        goto LABEL_9;
      }
    }

    [(CRLCanvasHUDController *)self->mSecondHUDController hideHUDForKey:self];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)p_hideHUD
{
  v3 = +[CRLCanvasHUDController sharedHUDController];
  [v3 hideHUDForKey:self];

  mSecondHUDController = self->mSecondHUDController;

  [(CRLCanvasHUDController *)mSecondHUDController hideHUDForKey:self];
}

- (void)p_showHUDAndGuides
{
  [(CRLResizeKnobTracker *)self p_updateHUD];

  [(CRLResizeKnobTracker *)self p_updateGuideRenderable];
}

- (BOOL)p_isMatchingSize
{
  v3 = [(CRLResizeKnobTracker *)self repToMatch];
  if (v3 && (v4 = v3, -[CRLResizeKnobTracker repToMatch](self, "repToMatch"), v5 = objc_claimAutoreleasedReturnValue(), [v5 layout], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "reliedOnLayouts"), v7 = objc_claimAutoreleasedReturnValue(), -[CRLCanvasKnobTracker rep](self, "rep"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "layout"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "containsObject:", v9), v9, v8, v7, v6, v5, v4, (v10 & 1) != 0))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = [(CRLResizeKnobTracker *)self repToMatch];
    if (v12)
    {
      v13 = [(CRLResizeKnobTracker *)self repToMatch];
      v14 = [(CRLCanvasKnobTracker *)self rep];
      if (v13 == v14 || [(CRLResizeKnobTracker *)self p_isResizingWidthFromCenter])
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = ![(CRLResizeKnobTracker *)self p_isResizingHeightFromCenter];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (BOOL)p_isResizingWidthFromCenter
{
  v3 = [(CRLResizeKnobTracker *)self canCenterResize];
  if (v3)
  {

    LOBYTE(v3) = [(CRLResizeKnobTracker *)self shouldResizeFromCenter];
  }

  return v3;
}

- (BOOL)p_isResizingHeightFromCenter
{
  v3 = [(CRLResizeKnobTracker *)self canCenterResize];
  if (v3)
  {

    LOBYTE(v3) = [(CRLResizeKnobTracker *)self shouldResizeFromCenter];
  }

  return v3;
}

- (BOOL)currentlyPreservingAspectRatio
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = [v4 layout];
  v6 = sub_100014370(v3, v5);

  if (v6 && [v6 autosizes])
  {
    v7 = [(CRLCanvasKnobTracker *)self knob];
    mPreserveAspectRatio = sub_10034601C([v7 tag]);
  }

  else
  {
    v7 = [(CRLCanvasKnobTracker *)self rep];
    v9 = [v7 layout];
    if ([v9 resizeMayChangeAspectRatio])
    {
      mPreserveAspectRatio = self->mPreserveAspectRatio;
    }

    else
    {
      mPreserveAspectRatio = 1;
    }
  }

  return mPreserveAspectRatio;
}

- (void)resizeRepForInspectors:(id)a3 value:(double)a4 changingWidth:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = self;
  [(CRLResizeKnobTracker *)v9 i_lastNewBounds];
  v12 = v10;
  v13 = v11;
  if (vabdd_f64(0.0, v11) < 0.00999999978 || v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10 / v11;
  }

  v16 = [v8 layout];
  v17 = [v16 resizeMayChangeAspectRatio];
  if (v15 == 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  if (v5)
  {
    if (!v18)
    {
      v13 = a4 / v15;
    }
  }

  else
  {
    v13 = a4;
    if (v18)
    {
      a4 = v12;
    }

    else
    {
      a4 = v15 * a4;
    }
  }

  v19 = [(CRLCanvasKnobTracker *)v9 knob];
  v20 = sub_100345928([v19 tag]) & 0x92;

  v21 = [(CRLCanvasKnobTracker *)v9 knob];
  v22 = sub_100345928([v21 tag]) & 0xE;

  v23 = 0.0;
  v24 = 0.0;
  if (v20)
  {
    [(CRLResizeKnobTracker *)v9 i_baseBounds];
    v24 = v25 - a4;
  }

  if (v22)
  {
    [(CRLResizeKnobTracker *)v9 i_baseBounds];
    v23 = v26 - v13;
  }

  v27 = [(CRLCanvasKnobTracker *)v9 knob];
  v28 = sub_100345F44([v27 tag], v24, v23, a4, v13);
  v53 = v29;
  v54 = v28;

  v52 = v13;
  if (v8)
  {
    [v8 knobPositionTransformForInspectorResize];
    v30 = v55;
    v31 = v57;
    v32 = v59;
    v33 = [(CRLResizeKnobTracker *)v9 shouldResizeFromCenter:v58];
  }

  else
  {
    v32 = 0.0;
    v31 = 0.0;
    v30 = 0.0;
    v33 = [(CRLResizeKnobTracker *)v9 shouldResizeFromCenter:0];
  }

  v34 = v33;
  v35 = [(CRLResizeKnobTracker *)v9 shouldResizeFromCenter];
  [(CRLResizeKnobTracker *)v9 i_baseBounds];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  if (v34)
  {
    v44 = CGRectGetMidX(*&v36) + a4 * 0.5;
    if (!v35)
    {
LABEL_26:
      v45 = v51 + v53 * v49 + v50 * v54;
      goto LABEL_29;
    }
  }

  else
  {
    v44 = v32 + v53 * v31 + v30 * v54;
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  v61.origin.x = v40;
  v61.origin.y = v41;
  v61.size.width = v42;
  v61.size.height = v43;
  v45 = CGRectGetMidY(v61) + v52 * 0.5;
LABEL_29:
  v46 = [(CRLCanvasKnobTracker *)v9 knob];
  if ([v46 offsetValid])
  {
    [v46 offset];
    x = v47;
  }

  else
  {
    x = CGPointZero.x;
  }

  [(CRLResizeKnobTracker *)v9 convertKnobPositionToUnscaledCanvas:sub_10011F334(v44, v45, x)];
  [(CRLCanvasKnobTracker *)v9 setCurrentPosition:?];
}

- (void)p_flipMagnetNormalizedPositionsIfNeeded
{
  v3 = [(CRLResizeKnobTracker *)self hasHorizontalFlip];
  v4 = [(CRLResizeKnobTracker *)self hasVerticalFlip];
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 layout];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v6 connectedLayouts];
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v31 = *v34;
    v30 = v3;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 connectedTo];

        if (v6 == v9)
        {
          [v8 headMagnetNormalizedPosition];
          v11 = v14;
          v13 = v15;
          if ((v3 & 1) == 0)
          {
            if ((v4 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_20:
            if ([v8 headHasVerticalFlip])
            {
              goto LABEL_22;
            }

LABEL_21:
            v13 = 1.0 - v13;
            [(CRLResizeKnobTracker *)self p_setNormalizedPositionForMagnet:v6 == v9 withNewNormalizedPosition:v8 forClineLayout:v6 onLayout:v11, v13];
            [(CRLResizeKnobTracker *)self p_updateMagnetTypeForMagnet:v6 == v9 forClineLayout:v8];
            self->mAdjustedMagnetsForVerticalFlip = 1;
            [v8 setMagnetsAdjusted:1];
            goto LABEL_22;
          }

          if ([v8 headHasHorizontalFlip])
          {
            if ((v4 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_20;
          }
        }

        else
        {
          [v8 tailMagnetNormalizedPosition];
          v11 = v10;
          v13 = v12;
          if (v3 & 1) == 0 || ([v8 tailHasHorizontalFlip])
          {
            if ((v4 & 1) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }
        }

        v11 = 1.0 - v11;
        [(CRLResizeKnobTracker *)self p_setNormalizedPositionForMagnet:v6 == v9 withNewNormalizedPosition:v8 forClineLayout:v6 onLayout:v11, v13];
        [(CRLResizeKnobTracker *)self p_updateMagnetTypeForMagnet:v6 == v9 forClineLayout:v8];
        self->mAdjustedMagnetsForHorizontalFlip = 1;
        [v8 setMagnetsAdjusted:1];
        if ((v4 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_16:
        if (v6 == v9)
        {
          goto LABEL_20;
        }

        if (([v8 tailHasVerticalFlip] & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        if (!(v3 & 1 | !self->mAdjustedMagnetsForHorizontalFlip))
        {
          v16 = [v8 connectionLineInfo];
          v17 = [v16 connectionLinePathSource];

          if (v6 == v9)
          {
            [v17 headMagnet];
          }

          else
          {
            [v17 tailMagnet];
          }
          v18 = ;
          [v18 magnetNormalizedPosition];
          v11 = v19;

          [(CRLResizeKnobTracker *)self p_setNormalizedPositionForMagnet:v6 == v9 withNewNormalizedPosition:v8 forClineLayout:v6 onLayout:v11, v13];
          [(CRLResizeKnobTracker *)self p_revertToOriginalMagnetTypeForMagnet:v6 == v9 forClineLayout:v8];
          self->mAdjustedMagnetsForHorizontalFlip = 0;

          v3 = v30;
        }

LABEL_27:
        if (!(v4 & 1 | !self->mAdjustedMagnetsForVerticalFlip))
        {
          v20 = [v8 connectionLineInfo];
          v21 = [v20 connectionLinePathSource];

          if (v6 == v9)
          {
            [v21 headMagnet];
          }

          else
          {
            [v21 tailMagnet];
          }
          v22 = ;
          [v22 magnetNormalizedPosition];
          v24 = v23;

          [(CRLResizeKnobTracker *)self p_setNormalizedPositionForMagnet:v6 == v9 withNewNormalizedPosition:v8 forClineLayout:v6 onLayout:v11, v24];
          [(CRLResizeKnobTracker *)self p_revertToOriginalMagnetTypeForMagnet:v6 == v9 forClineLayout:v8];
          self->mAdjustedMagnetsForVerticalFlip = 0;

          v3 = v30;
        }

        v25 = [v8 connectedTo];
        [v8 setHeadHasHorizontalFlip:(v25 == v6) & v3];

        v26 = [v8 connectedTo];
        [v8 setHeadHasVerticalFlip:(v26 == v6) & v4];

        v27 = [v8 connectedFrom];
        [v8 setTailHasHorizontalFlip:(v27 == v6) & v3];

        v28 = [v8 connectedFrom];
        [v8 setTailHasVerticalFlip:(v28 == v6) & v4];
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }
}

- (void)p_setNormalizedPositionForMagnet:(BOOL)a3 withNewNormalizedPosition:(CGPoint)a4 forClineLayout:(id)a5 onLayout:(id)a6
{
  v18 = *&a4.y;
  v7 = a3;
  v8 = a5;
  v9 = a6;
  memset(&v24, 0, sizeof(v24));
  v10 = [v9 pureGeometry];
  v11 = v10;
  if (v10)
  {
    [v10 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v12 = [v9 parent];
  if (v12)
  {
    v13 = [v9 parent];
    v14 = [v13 geometryInRoot];
    v15 = v14;
    if (v14)
    {
      [v14 transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v24, &t1, &t2);
  }

  else
  {
    v16 = *&CGAffineTransformIdentity.c;
    *&t2.a = *&CGAffineTransformIdentity.a;
    *&t2.c = v16;
    *&t2.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformConcat(&v24, &t1, &t2);
  }

  v17 = vaddq_f64(*&v24.tx, vmlaq_n_f64(vmulq_n_f64(*&v24.c, v19), *&v24.a, v21));
  if (v7)
  {
    [v8 setHeadMagnetPosition:*&v17];
  }

  else
  {
    [v8 setTailMagnetPosition:*&v17];
  }
}

- (void)p_updateMagnetTypeForMagnet:(BOOL)a3 forClineLayout:(id)a4
{
  v4 = a3;
  v17 = a4;
  v6 = [(CRLResizeKnobTracker *)self hasHorizontalFlip];
  v7 = [(CRLResizeKnobTracker *)self hasVerticalFlip];
  v8 = [v17 connectionLineInfo];
  v9 = [v8 connectionLinePathSource];

  if (v4)
  {
    [v9 headMagnet];
  }

  else
  {
    [v9 tailMagnet];
  }
  v10 = ;
  v11 = [v10 magnetType];

  v12 = 4;
  if (v7)
  {
    v12 = 2;
  }

  v13 = 5;
  if (v6)
  {
    v13 = 3;
  }

  if (v11 != 5)
  {
    v13 = v11;
  }

  if (v11 != 4)
  {
    v12 = v13;
  }

  v14 = 2;
  if (v7)
  {
    v14 = 4;
  }

  v15 = 3;
  if (v6)
  {
    v15 = 5;
  }

  if (v11 != 3)
  {
    v15 = v11;
  }

  if (v11 != 2)
  {
    v14 = v15;
  }

  if (v11 <= 3)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  if (v4)
  {
    [v17 setHeadMagnetType:v16];
  }

  else
  {
    [v17 setTailMagnetType:v16];
  }
}

- (void)p_revertToOriginalMagnetTypeForMagnet:(BOOL)a3 forClineLayout:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [v5 connectionLineInfo];
  v8 = [v6 connectionLinePathSource];

  if (v4)
  {
    v7 = [v8 headMagnet];
    [v5 setHeadMagnetType:{objc_msgSend(v7, "magnetType")}];
  }

  else
  {
    v7 = [v8 tailMagnet];
    [v5 setTailMagnetType:{objc_msgSend(v7, "magnetType")}];
  }
}

- (BOOL)i_shouldForceDrag
{
  v2 = [(CRLResizeKnobTracker *)self repToMatch];
  v3 = v2 != 0;

  return v3;
}

- (CGRect)i_baseBounds
{
  x = self->mBaseBounds.origin.x;
  y = self->mBaseBounds.origin.y;
  width = self->mBaseBounds.size.width;
  height = self->mBaseBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)i_lastNewBounds
{
  x = self->mLastNewBounds.origin.x;
  y = self->mLastNewBounds.origin.y;
  width = self->mLastNewBounds.size.width;
  height = self->mLastNewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)minimumSize
{
  width = self->mMinimumSize.width;
  height = self->mMinimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumSize
{
  width = self->mMaximumSize.width;
  height = self->mMaximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)originalBounds
{
  x = self->mBaseBounds.origin.x;
  y = self->mBaseBounds.origin.y;
  width = self->mBaseBounds.size.width;
  height = self->mBaseBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentResizedBounds
{
  x = self->mLastNewBounds.origin.x;
  y = self->mLastNewBounds.origin.y;
  width = self->mLastNewBounds.size.width;
  height = self->mLastNewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)secondaryHUDPoint
{
  x = self->mSecondaryHUDPoint.x;
  y = self->mSecondaryHUDPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end