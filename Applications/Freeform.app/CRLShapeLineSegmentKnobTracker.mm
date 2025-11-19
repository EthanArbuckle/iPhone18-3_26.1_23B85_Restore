@interface CRLShapeLineSegmentKnobTracker
- (BOOL)shouldHideOtherKnobs;
- (CRLShapeLineSegmentKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (id)currentGeometry;
- (id)p_HUDLabelText;
- (void)beginMovingKnob;
- (void)dealloc;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)moveKnobToRepPosition:(CGPoint)a3;
- (void)p_enforceMinimumLength;
- (void)p_hideHUD;
- (void)p_updateHUD;
- (void)p_validateLayout;
@end

@implementation CRLShapeLineSegmentKnobTracker

- (CRLShapeLineSegmentKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = CRLShapeLineSegmentKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v39 initWithRep:v6 knob:v7];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135C998();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135C9C0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135CA48();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLShapeLineSegmentKnobTracker initWithRep:knob:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLineSegmentKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:54 isFatal:0 description:"wrong rep class for line segment knob tracker"];
    }

    if ([v7 tag] != 11 && objc_msgSend(v7, "tag") != 10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135CA70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135CA98();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135CB20();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLShapeLineSegmentKnobTracker initWithRep:knob:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLineSegmentKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:55 isFatal:0 description:"wrong knob for line segment knob tracker"];
    }

    v15 = [v6 layout];
    v16 = [v15 pathIsLineSegment];

    if ((v16 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135CB48();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135CB70();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135CBF8();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLShapeLineSegmentKnobTracker initWithRep:knob:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLineSegmentKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:56 isFatal:0 description:"shape is not a line segment, but using line segment knob tracker"];
    }

    v8[80] = 1;
    v20 = [v8 shapeRep];
    v21 = [v20 shapeLayout];

    v22 = v8 + 128;
    if ([v7 tag] == 11)
    {
      [v21 unclippedHeadPoint];
      *v22 = v23;
      *(v8 + 17) = v24;
      *(v8 + 6) = *v22;
      [v21 unclippedTailPoint];
    }

    else
    {
      [v21 unclippedTailPoint];
      *v22 = v27;
      *(v8 + 17) = v28;
      *(v8 + 6) = *v22;
      [v21 unclippedHeadPoint];
    }

    *(v8 + 14) = v25;
    *(v8 + 15) = v26;
    [v21 unclippedTailPoint];
    v30 = v29;
    v32 = v31;
    [v21 unclippedHeadPoint];
    *(v8 + 18) = sub_100120ABC(v30, v32, v33, v34, 0.5);
    *(v8 + 19) = v35;
    [v21 pathBounds];
    *(v8 + 20) = v36;
    *(v8 + 21) = v37;
  }

  return v8;
}

- (void)dealloc
{
  [(CRLShapeLineSegmentKnobTracker *)self p_cancelDelayedHUDAndGuides];
  v3.receiver = self;
  v3.super_class = CRLShapeLineSegmentKnobTracker;
  [(CRLCanvasKnobTracker *)&v3 dealloc];
}

- (id)currentGeometry
{
  v3 = [(CRLShapeLineSegmentKnobTracker *)self shapeRep];
  v4 = [v3 shapeLayout];

  v5 = [(CRLShapeLineSegmentKnobTracker *)self resizeFromCenter];
  v6 = &OBJC_IVAR___CRLShapeLineSegmentKnobTracker_mOriginalFixedPoint;
  if (v5)
  {
    v6 = &OBJC_IVAR___CRLShapeLineSegmentKnobTracker_mOriginalMiddlePoint;
  }

  v7 = (self + *v6);
  v8 = *v7;
  v9 = v7[1];
  memset(&v19, 0, sizeof(v19));
  sub_100139F80(0, &v19, v8, v9, self->mOriginalKnobCenter.x, self->mOriginalKnobCenter.y, v8, v9, self->mNewKnobCenter.x, self->mNewKnobCenter.y);
  v10 = [v4 originalPureGeometry];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v16 = v19;
  sub_100139D98(&v16, v17, &v18);
  v19 = v18;

  v12 = [v4 originalPureGeometry];
  v18 = v19;
  v13 = [v12 geometryByTransformingBy:&v18];
  v14 = [[CRLCanvasInfoGeometry alloc] initWithLayoutGeometry:v13];

  return v14;
}

- (void)beginMovingKnob
{
  v6.receiver = self;
  v6.super_class = CRLShapeLineSegmentKnobTracker;
  [(CRLCanvasKnobTracker *)&v6 beginMovingKnob];
  v3 = [(CRLShapeLineSegmentKnobTracker *)self shapeRep];
  v4 = [v3 dynamicMoveLineSegmentDidBegin];
  mResizingLayout = self->mResizingLayout;
  self->mResizingLayout = v4;

  [(CRLShapeLineSegmentKnobTracker *)self performSelector:"p_showHUDAndGuidesAfterDelay:" withObject:0 afterDelay:0.5];
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = [v4 layout];
  v6 = v5;
  if (v5)
  {
    [v5 originalTransformInRoot];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformInvert(&v11, &v10);
  v9 = vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x));

  [(CRLShapeLineSegmentKnobTracker *)self moveKnobToRepPosition:*&v9];
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLShapeLineSegmentKnobTracker *)self shapeRep];
  v7 = [v6 interactiveCanvasController];
  v8 = [v7 guideController];

  if ([(CRLShapeLineSegmentKnobTracker *)self snapEnabled])
  {
    v9 = ![(CRLCanvasKnobTracker *)self isInspectorDrivenTracking];
  }

  else
  {
    v9 = 0;
  }

  if ([(CRLShapeLineSegmentKnobTracker *)self snapAngles])
  {
    v10 = ![(CRLCanvasKnobTracker *)self isInspectorDrivenTracking];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v9)
  {
    if (self->mBeganAlignmentOperation)
    {
      v11 = 1;
    }

    else
    {
      v11 = 1;
      if ([v6 wantsGuidesWhileResizing])
      {
        [v8 beginAlignmentOperationForRep:v6];
        self->mBeganAlignmentOperation = 1;
      }
    }
  }

  p_mNewKnobCenter = &self->mNewKnobCenter;
  self->mNewKnobCenter.x = sub_10011F334(x, y, self->mOriginalPathBoundsOrigin.x);
  self->mNewKnobCenter.y = v13;
  [(CRLShapeLineSegmentKnobTracker *)self p_enforceMinimumLength];
  if (!v11)
  {
    v21 = -1;
    goto LABEL_30;
  }

  v14 = v8;
  v84 = p_mNewKnobCenter->x;
  v86 = self->mNewKnobCenter.y;
  v15 = [(CRLShapeLineSegmentKnobTracker *)self resizeFromCenter];
  v16 = &OBJC_IVAR___CRLShapeLineSegmentKnobTracker_mOriginalFixedPoint;
  if (v15)
  {
    v16 = &OBJC_IVAR___CRLShapeLineSegmentKnobTracker_mOriginalMiddlePoint;
  }

  v17 = (self + *v16);
  v89 = *v17;
  v18 = sub_100120090(p_mNewKnobCenter->x, self->mNewKnobCenter.y, *v17, v17[1]);
  v19 = 0;
  v20 = 3.40282347e38;
  v21 = -1;
  do
  {
    v22 = [v6 layout];
    v23 = [v22 originalPureGeometry];
    v24 = v23;
    if (v23)
    {
      [v23 transform];
    }

    else
    {
      memset(&v93, 0, sizeof(v93));
    }

    v25 = sub_100139980(&v93);
    v26 = sub_100120F98(v19 * 0.785398163 + v25 / -180.0 * 3.14159265);
    v28 = sub_10011F340(v26, v27, v18);
    v30 = v29;

    v31 = sub_10011F334(v28, v30, v89);
    v33 = v32;
    v34 = sub_100120090(v31, v32, p_mNewKnobCenter->x, self->mNewKnobCenter.y);
    if (v10)
    {
      if (v34 >= v20)
      {
        goto LABEL_22;
      }

LABEL_21:
      v84 = v31;
      v86 = v33;
      v20 = v34;
      v21 = v19;
      goto LABEL_22;
    }

    if (v34 < 7 * 1.5 && v34 < v20)
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v19;
  }

  while (v19 != 8);
  p_mNewKnobCenter->x = v84;
  self->mNewKnobCenter.y = v86;
  v8 = v14;
LABEL_30:
  [v6 dynamicallyMovingLineSegmentWithTracker:self];
  [(CRLShapeLineSegmentKnobTracker *)self p_validateLayout];
  if (!v9 || !self->mBeganAlignmentOperation)
  {
    [v8 hideAlignmentGuides];
    [v8 hideSizingGuides];
    goto LABEL_35;
  }

  [(CRLShapeLayout *)self->mResizingLayout alignmentFrame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v6 layout];
  v45 = [v44 originalPureGeometry];
  v46 = v45;
  if (v45)
  {
    [v45 transform];
    v47 = *&v93.a;
    v48 = *&v93.c;
    v49 = *&v93.tx;
  }

  else
  {
    v49 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
  }

  v90 = vaddq_f64(v49, vmlaq_n_f64(vmulq_n_f64(v48, self->mNewKnobCenter.y), v47, p_mNewKnobCenter->x));

  v94.origin.x = v37;
  v94.origin.y = v39;
  v94.size.width = v41;
  v94.size.height = v43;
  v50 = vabdd_f64(v90.f64[0], CGRectGetMinX(v94));
  v95.origin.x = v37;
  v95.origin.y = v39;
  v95.size.width = v41;
  v95.size.height = v43;
  v51 = vabdd_f64(v90.f64[0], CGRectGetMaxX(v95));
  v96.origin.x = v37;
  v96.origin.y = v39;
  v96.size.width = v41;
  v96.size.height = v43;
  v52 = vabdd_f64(v90.f64[1], CGRectGetMinY(v96));
  v97.origin.x = v37;
  v97.origin.y = v39;
  v97.size.width = v41;
  v97.size.height = v43;
  v53 = vabdd_f64(v90.f64[1], CGRectGetMaxY(v97));
  v54 = 7;
  if (v52 < v53)
  {
    v54 = 1;
  }

  v55 = 9;
  if (v52 < v53)
  {
    v55 = 3;
  }

  if (v50 >= v51)
  {
    v56 = v55;
  }

  else
  {
    v56 = v54;
  }

  v57 = [(CRLCanvasKnobTracker *)self rep];
  v58 = [v57 wantsGuidesWhileResizing];

  if (v58)
  {
    v85 = v56;
    v87 = v8;
    v59 = [(CRLShapeLineSegmentKnobTracker *)self resizeFromCenter];
    v60 = [(CRLCanvasKnobTracker *)self rep];
    v61 = [v60 interactiveCanvasController];
    v62 = [v61 canvasBackground];

    v63 = [v62 alignmentProvider];
    v64 = [(CRLCanvasKnobTracker *)self rep];
    v65 = [v64 interactiveCanvasController];
    v66 = [v65 isCanvasBackgroundAlignmentSnappingEnabled];

    if (v66 && v63)
    {
      [v63 alignmentPointForPoint:*&v90];
      v82 = v68;
      v83 = v67;
      v69 = [v6 layout];
      v70 = [v69 originalPureGeometry];
      v71 = v70;
      if (v70)
      {
        [v70 transform];
      }

      else
      {
        memset(&v92, 0, sizeof(v92));
      }

      CGAffineTransformInvert(&v93, &v92);
      *p_mNewKnobCenter = vaddq_f64(*&v93.tx, vmlaq_n_f64(vmulq_n_f64(*&v93.c, v82), *&v93.a, v83));

      [(CRLShapeLineSegmentKnobTracker *)self p_enforceMinimumLength];
      [v6 dynamicallyMovingLineSegmentWithTracker:self];
      v73 = CGPointZero.x;
      v72 = CGPointZero.y;
      v56 = v85;
      v8 = v87;
    }

    else
    {
      v56 = v85;
      v8 = v87;
      [v87 snapRectToGuides:v85 forKnobTag:v59 ^ 1 snapSize:{v37, v39, v41, v43}];
      v73 = v74;
      v72 = v75;
    }
  }

  else
  {
    v73 = CGPointZero.x;
    v72 = CGPointZero.y;
  }

  if (v21 > 3)
  {
    if (v21 <= 5)
    {
      if (v21 != 4)
      {
        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v21 != 6)
    {
      if (v21 != 7)
      {
        goto LABEL_73;
      }

      goto LABEL_68;
    }

LABEL_71:
    v73 = 0.0;
    goto LABEL_73;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
LABEL_68:
      if (fabs(v73) <= fabs(v72))
      {
        v73 = -v72;
      }

      else
      {
        v72 = -v73;
      }

      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if (!v21)
  {
LABEL_70:
    v72 = 0.0;
    goto LABEL_73;
  }

  if (v21 != 1)
  {
    goto LABEL_73;
  }

LABEL_61:
  if (fabs(v73) > fabs(v72))
  {
    v72 = v73;
  }

  v73 = v72;
LABEL_73:
  if (v73 != CGPointZero.x || v72 != CGPointZero.y)
  {
    v76 = sub_10011F334(v90.f64[0], v90.f64[1], v73);
    v88 = v77;
    v91 = v76;
    v78 = [v6 layout];
    v79 = [v78 originalPureGeometry];
    v80 = v79;
    if (v79)
    {
      [v79 transform];
    }

    else
    {
      memset(&v92, 0, sizeof(v92));
    }

    CGAffineTransformInvert(&v93, &v92);
    *p_mNewKnobCenter = vaddq_f64(*&v93.tx, vmlaq_n_f64(vmulq_n_f64(*&v93.c, v88), *&v93.a, v91));

    [(CRLShapeLineSegmentKnobTracker *)self p_enforceMinimumLength];
    if (v56 > 6)
    {
      if (v56 == 7)
      {
        v37 = v37 + v73;
        v41 = v41 - v73;
      }

      else
      {
        v41 = v41 + v73;
      }

      v43 = v43 + v72;
    }

    else if (v56 == 1)
    {
      v37 = sub_10011F334(v37, v39, v73);
      v39 = v81;
      v41 = v41 - v73;
      v43 = v43 - v72;
    }

    else
    {
      v39 = v39 + v72;
      v43 = v43 - v72;
      v41 = v41 + v73;
    }

    [v6 dynamicallyMovingLineSegmentWithTracker:self];
    [(CRLShapeLineSegmentKnobTracker *)self p_validateLayout];
  }

  [(CRLShapeLineSegmentKnobTracker *)self p_enforceMinimumLength];
  if ([(CRLShapeLineSegmentKnobTracker *)self shouldDisplayGuides])
  {
    [v8 showGuidesAlignedWithRect:v56 forKnobTag:1 shouldRenderX:1 shouldRenderY:-[CRLShapeLineSegmentKnobTracker resizeFromCenter](self shouldRenderSizeGuides:{"resizeFromCenter") ^ 1, v37, v39, v41, v43}];
  }

  else
  {
    [v8 hideAlignmentGuides];
  }

LABEL_35:
  [v6 invalidateKnobPositions];
  [(CRLShapeLineSegmentKnobTracker *)self p_cancelDelayedHUDAndGuides];
  [(CRLShapeLineSegmentKnobTracker *)self p_updateHUD];
}

- (BOOL)shouldHideOtherKnobs
{
  if ([(CRLCanvasKnobTracker *)self isInspectorDrivenTracking])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLShapeLineSegmentKnobTracker;
  return [(CRLCanvasKnobTracker *)&v4 shouldHideOtherKnobs];
}

- (void)endMovingKnob
{
  v3 = [(CRLShapeLineSegmentKnobTracker *)self shapeRep];
  v4 = [(CRLShapeLineSegmentKnobTracker *)self didChangeGeometry];
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 interactiveCanvasController];

  v7 = [v6 commandController];
  v8 = [v7 groupingLevel];
  if (v8)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = [CRLCanvasCommandSelectionBehavior alloc];
  v19 = [v6 canvasEditor];
  v20 = [(CRLCanvasCommandSelectionBehavior *)v18 initWithCanvasEditor:v19];

  [v7 openGroupWithSelectionBehavior:v20];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Resize" value:0 table:@"UndoStrings"];
  [v7 setCurrentGroupActionString:v22];

  if (v4)
  {
LABEL_3:
    v9 = [(CRLShapeLineSegmentKnobTracker *)self currentGeometry];
    v10 = [(CRLCanvasKnobTracker *)self rep];
    v11 = [v10 infoForTransforming];

    v12 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
    v13 = objc_opt_class();
    v14 = sub_100013F00(v13, v11);
    v15 = [(CRLCommandSetInfoGeometry *)v12 initWithBoardItem:v14 geometry:v9];

    [v7 enqueueCommand:v15];
  }

LABEL_4:
  [v3 dynamicMoveLineSegmentDidEndWithTracker:self];
  if (!v8)
  {
    [v7 closeGroup];
  }

  if (self->mBeganAlignmentOperation)
  {
    v16 = [v3 interactiveCanvasController];
    v17 = [v16 guideController];
    [v17 endAlignmentOperation];
  }

  [(CRLShapeLineSegmentKnobTracker *)self p_cancelDelayedHUDAndGuides];
  [(CRLShapeLineSegmentKnobTracker *)self p_hideHUD];
  v23.receiver = self;
  v23.super_class = CRLShapeLineSegmentKnobTracker;
  [(CRLCanvasKnobTracker *)&v23 endMovingKnob];
}

- (void)p_validateLayout
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [v2 layout];

  v3 = [v4 layoutController];
  [v3 validateLayoutWithDependencies:v4];
}

- (void)p_enforceMinimumLength
{
  x = self->mOriginalFixedPoint.x;
  y = self->mOriginalFixedPoint.y;
  p_mNewKnobCenter = &self->mNewKnobCenter;
  v5 = self->mNewKnobCenter.x;
  v6 = self->mNewKnobCenter.y;
  v7 = sub_100120090(x, y, v5, v6);
  v8 = 1.0;
  if (v7 < 1.0)
  {
    v9 = 0.0;
    if (v7 >= 0.00999999978)
    {
      v10 = sub_10011F31C(v5, v6, x);
      v8 = sub_10011F2FC(v10, v11);
    }

    v12 = sub_10011F340(v8, v9, 1.0);
    p_mNewKnobCenter->x = sub_10011F334(x, y, v12);
    p_mNewKnobCenter->y = v13;
  }
}

- (id)p_HUDLabelText
{
  v3 = [(CRLShapeLineSegmentKnobTracker *)self currentGeometry];
  v4 = sub_100120090(self->mOriginalFixedPoint.x, self->mOriginalFixedPoint.y, self->mNewKnobCenter.x, self->mNewKnobCenter.y);
  v5 = [(CRLCanvasKnobTracker *)self rep];
  v6 = [v5 interactiveCanvasController];
  [v3 angle];
  v8 = [v6 unitStringForAngle:sub_1004C31F4(v7) andLength:v4];

  return v8;
}

- (void)p_updateHUD
{
  if (![(CRLCanvasKnobTracker *)self isInspectorDrivenTracking])
  {
    v3 = [(CRLCanvasKnobTracker *)self rep];
    v7 = [v3 interactiveCanvasController];

    v4 = +[CRLCanvasHUDController sharedHUDController];
    v5 = [(CRLShapeLineSegmentKnobTracker *)self p_HUDLabelText];
    [v4 setLabelText:v5];

    v6 = [v7 canvasView];
    [(CRLCanvasKnobTracker *)self currentPosition];
    [v7 convertUnscaledToBoundsPoint:?];
    [v4 showHUDForKey:self forTouchPoint:v6 inCanvasView:? withUpwardsNudge:?];
  }
}

- (void)p_hideHUD
{
  v3 = +[CRLCanvasHUDController sharedHUDController];
  [v3 hideHUDForKey:self];
}

@end