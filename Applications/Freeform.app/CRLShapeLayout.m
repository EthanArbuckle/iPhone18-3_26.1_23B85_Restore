@interface CRLShapeLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canBeIntersected;
- (BOOL)i_isInsideResizingFreehandDrawing;
- (BOOL)isBeingManipulated;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)isTailEndOnLeft;
- (BOOL)p_cachedPathHasAtLeastTwoVisuallyDistinctSubregions;
- (BOOL)p_cachedPathIsLineSegment;
- (BOOL)p_cachedPathIsOpen;
- (BOOL)p_canResizeViaTransform;
- (BOOL)p_dynamicallyUpdatingStrokedFramesDuringResize;
- (BOOL)shouldAdjustForStrokeWidthForCollabCursor;
- (BOOL)shouldBringCardinalMagnetsInward;
- (BOOL)supportsCalloutAttributes;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)centerForConnecting;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)headLineEndPoint;
- (CGPoint)headPoint;
- (CGPoint)tailLineEndPoint;
- (CGPoint)tailPoint;
- (CGRect)aliasedAlignmentFrameForScale:(double)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CGRect)frameForPartitioning;
- (CGRect)p_cachedClippedPathStroked;
- (CGRect)p_cachedPathBounds;
- (CGRect)p_cachedPathBoundsWithoutStroke;
- (CGRect)p_updatedCachedClipRectIfNeededForRotation:(CGAffineTransform *)a3;
- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3;
- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3 strokeDrawOptions:(unint64_t)a4;
- (CGSize)minimumSize;
- (CRLBezierPath)clippedPathForLineEnds;
- (CRLBezierPath)maskPath;
- (CRLCanvasInfoGeometry)layoutInfoGeometry;
- (CRLFill)fill;
- (CRLLineEnd)strokeHeadLineEnd;
- (CRLLineEnd)strokeTailLineEnd;
- (CRLPKStrokePathCompactData)pencilKitStrokePathCompactData;
- (CRLPathSource)pathSource;
- (CRLShapeLayout)initWithInfo:(id)a3;
- (CRLSmartPathSource)smartPathSource;
- (NSArray)pencilKitStrokes;
- (NSArray)pencilKitStrokesInParentInfoSpace;
- (_TtC8Freeform12CRLShapeItem)shapeInfo;
- (double)adjustedCalloutTailPositionXWithValue:(double)a3;
- (double)lineEndScale:(BOOL)a3;
- (id)captureDynamicInfoGeometryToBeginDynamicOperation;
- (id)commandForSettingArrowHead:(double)a3;
- (id)commandForSettingArrowIndent:(double)a3;
- (id)commandForSettingCalloutCornerRadius:(double)a3;
- (id)commandForSettingCalloutTailPositionX:(double)a3;
- (id)commandForSettingCalloutTailPositionY:(double)a3;
- (id)commandForSettingCalloutTailSize:(double)a3;
- (id)commandForSettingCornerRadius:(double)a3;
- (id)commandForSettingNumberOfSides:(double)a3;
- (id)commandForSettingStarPoints:(double)a3;
- (id)commandForSettingStarRadius:(double)a3;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
- (id)computeWrapPathClosed:(BOOL)a3;
- (id)dependentLayoutsForDrag;
- (id)editablePathSource;
- (id)layoutGeometryFromInfo;
- (id)p_cachedPath;
- (id)p_createClippedPath;
- (id)p_unitePath:(id)a3 withLineEndForHead:(BOOL)a4 stroke:(id)a5;
- (id)stroke;
- (unint64_t)numberOfControlKnobs;
- (void)aliasPathForScale:(double)a3 adjustedStroke:(id *)a4 adjustedPath:(id *)a5 startDelta:(CGPoint *)a6 endDelta:(CGPoint *)a7;
- (void)aliasPathForScale:(double)a3 originalStroke:(id)a4 adjustedStroke:(id *)a5 adjustedPath:(id *)a6 startDelta:(CGPoint *)a7 endDelta:(CGPoint *)a8;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)beginFreeTransformWithTracker:(id)a3;
- (void)beginResize;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)dynamicMovePathKnobDidBegin;
- (void)dynamicMovePathKnobDidEnd;
- (void)dynamicPencilKitStrokePathCompactDataRenderScaleDidBegin;
- (void)dynamicPencilKitStrokePathCompactDataRenderScaleDidEnd;
- (void)dynamicStrokeWidthChangeDidBegin;
- (void)dynamicStrokeWidthChangeDidEnd;
- (void)dynamicStrokeWidthUpdateToValue:(double)a3;
- (void)dynamicallyMakeShapeInvisible;
- (void)dynamicallyMovedPathKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)dynamicallyMovingLineSegmentWithTracker:(id)a3;
- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4;
- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4 withPatternOffsetsBySubpath:(id)a5;
- (void)dynamicallySetPencilKitStrokePathCompactDataRenderScaleX:(double)a3 y:(double)a4;
- (void)endDynamicOperation;
- (void)endFreeTransform;
- (void)endResize;
- (void)invalidateExteriorWrap;
- (void)invalidateFrame;
- (void)invalidatePath;
- (void)invalidatePathBounds;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_applyResizeTransform:(CGAffineTransform *)a3 transformInParentSpace:(CGAffineTransform *)a4 preservingAspectRatio:(BOOL)a5 layoutSize:(CGSize)a6 geometryForLayout:(id)a7 hasHorizontalFlip:(BOOL)a8 hasVerticalFlip:(BOOL)a9;
- (void)p_beginResizeOrFreeTransform;
- (void)p_endResizeOrFreeTransform;
- (void)p_invalidateClippedPath;
- (void)p_performBlockOkayToSetGeometry:(id)a3;
- (void)p_updateResizeInfoGeometryFromDynamicPathSource;
- (void)p_validateHeadAndTail;
- (void)p_validateHeadLineEnd;
- (void)p_validateTailLineEnd;
- (void)processChangedProperty:(unint64_t)a3;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
- (void)setDynamicGeometry:(id)a3;
- (void)setGeometry:(id)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)validate;
@end

@implementation CRLShapeLayout

- (CRLShapeLayout)initWithInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CRLShapeLayout;
  v3 = [(CRLCanvasLayout *)&v13 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CRLShapeLayout *)v3 shapeInfo];
    if (v5)
    {
      v6 = v5;
      BYTE3(v4->super.mDynamicOpacity) = -1;
      *(&v4->mClippedPathRotatedTransform.c + 3) = *&CGAffineTransformIdentity.tx;
      v7 = *&CGAffineTransformIdentity.c;
      *(&v4->mCachedClippedPathRotatedStroked.originalCachedRect.size.height + 3) = *&CGAffineTransformIdentity.a;
      *(&v4->mClippedPathRotatedTransform.a + 3) = v7;
      v8 = [(CRLShapeLayout *)v5 isFreehandDrawingShape];
      v9 = off_10182F970;
      if (!v8)
      {
        v9 = off_10182F968;
      }

      v10 = [objc_alloc(*v9) initWithShapeLayout:v4];
      v11 = *(&v4->mDynamicStrokeOffsetArray + 3);
      *(&v4->mDynamicStrokeOffsetArray + 3) = v10;
    }

    else
    {
      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  if (*(&self->mInitialStroke + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381000();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101381014();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013810A8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLayout dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:92 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicFill"];
  }

  v6.receiver = self;
  v6.super_class = CRLShapeLayout;
  [(CRLShapeLayout *)&v6 dealloc];
}

- (id)layoutGeometryFromInfo
{
  if (*(&self->mCachedPathSource + 3))
  {
    v2 = [[CRLCanvasLayoutGeometry alloc] initWithInfoGeometry:*(&self->mCachedPathSource + 3)];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLShapeLayout;
    v2 = [(CRLBoardItemLayout *)&v4 layoutGeometryFromInfo];
  }

  return v2;
}

- (id)computeLayoutGeometry
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    [v5 maximumFrameSizeForChild:self];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 1.79769313e308;
    v9 = 1.79769313e308;
  }

  if (v7 == *(&self->mIsDynamicallyInvisible + 3) && v9 == *(&self->mHelper + 3))
  {
    v12 = [(CRLShapeLayout *)self pathSource];
  }

  else
  {
    *(&self->mIsDynamicallyInvisible + 3) = v7;
    *(&self->mHelper + 3) = v9;
    v11 = [(CRLShapeLayout *)self shapeInfo];
    v12 = [v11 pathSource];
  }

  if (v7 >= 1.79769313e308 && v9 >= 1.79769313e308)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v14 = [v12 copy];
  v15 = [(CRLShapeLayout *)self layoutInfoGeometry];
  [v15 center];
  v17 = v16;
  v19 = v18;
  v20 = [(CRLShapeLayout *)self layoutInfoGeometry];
  [v20 position];
  v22 = v21;

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v23 = [(CRLShapeLayout *)self layoutInfoGeometry];
  if (v23)
  {
    v24 = sub_10011F31C(v17, v19, v22);
    [v23 transformBasedOnPoint:CGPointZero.x centeredAtPoint:{CGPointZero.y, v24, v25}];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
  }

  v40 = v43;
  v41 = v44;
  v42 = v45;
  [(CRLStyledLayout *)self scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:&v40 withStartingPathSource:v14];
  v27 = v26;
  if (v26 == 1.0)
  {
    if (v12 != *(&self->mHeadCutT + 3))
    {
      v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    [v14 naturalSize];
    [v14 scaleToNaturalSize:{sub_10011F340(v28, v29, v27)}];
  }

  v13 = v14;
LABEL_21:

LABEL_22:
  v30 = *(&self->mHeadCutT + 3);
  *(&self->mHeadCutT + 3) = v13;
  v31 = v13;

  v32 = [(CRLShapeLayout *)self pathSource];
  if (v32 == v12)
  {

    if ((v31 == 0) != (v30 != 0))
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  [(CRLShapeLayout *)self invalidatePath];
  [(CRLShapeLayout *)self invalidatePathBounds];
LABEL_26:
  [(CRLShapeLayout *)self pathBounds];
  v34 = v33;
  v36 = v35;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  [(CRLShapeLayout *)self computeLayoutTransform];
  v37 = [CRLCanvasLayoutGeometry alloc];

  v40 = v43;
  v41 = v44;
  v42 = v45;
  v38 = [(CRLCanvasLayoutGeometry *)v37 initWithSize:&v40 transform:v34, v36];

  return v38;
}

- (CGAffineTransform)computeLayoutTransform
{
  memset(&v11, 0, sizeof(v11));
  v5 = [(CRLShapeLayout *)self layoutInfoGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  [(CRLShapeLayout *)self pathBounds];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v10 = v11;
  return CGAffineTransformTranslate(retstr, &v10, v7, v8);
}

- (BOOL)shouldBringCardinalMagnetsInward
{
  if ([(CRLShapeLayout *)self numberOfControlKnobs])
  {
    return 1;
  }

  v4 = [(CRLShapeLayout *)self pathSource];
  v5 = [v4 bezierPath];
  v3 = [v5 elementCount] < 8;

  return v3;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 isFreehandDrawingShape];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLShapeLayout;
  return [(CRLCanvasLayout *)&v6 canAspectRatioLockBeChangedByUser];
}

- (void)p_performBlockOkayToSetGeometry:(id)a3
{
  ++*(&self->mLastParentLimitedSize.width + 3);
  (*(a3 + 2))(a3, a2);
  --*(&self->mLastParentLimitedSize.width + 3);
}

- (void)setGeometry:(id)a3
{
  v4 = a3;
  if (*(&self->mLastParentLimitedSize.width + 3) <= 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013810D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013810E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381178();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLayout setGeometry:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:"You should not be setting the geometry on a shape except via its own validation logic, or via -offsetGeometryBy: Please talk to drawables if you think you want to do this."];
  }

  if (*(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3))
  {
    v8 = [(CRLCanvasAbstractLayout *)self geometry];
    v9 = v8;
    if (v8)
    {
      if ([v8 isEqual:v4])
      {
LABEL_28:

        goto LABEL_29;
      }

      if (([v9 differsInMoreThanTranslationFrom:v4] & 1) == 0)
      {
        if (v4)
        {
          [v4 transform];
          v11 = *&v29.a;
          v12 = *&v29.c;
          v13 = *&v29.tx;
        }

        else
        {
          v13 = 0uLL;
          v11 = 0uLL;
          v12 = 0uLL;
        }

        y = CGPointZero.y;
        v24 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, y), v11, CGPointZero.x));
        [v9 transform];
        v15 = sub_10011F31C(v24.f64[0], v24.f64[1], vaddq_f64(*&v29.tx, vmlaq_n_f64(vmulq_n_f64(*&v29.c, v22), *&v29.a, v23)).f64[0]);
        *(&self->mClippedPathRotatedTransform.tx + 3) = sub_10011F334(*(&self->mClippedPathRotatedTransform.tx + 3), *(&self->mClippedPathRotatedTransform.ty + 3), v15);
        *(&self->mClippedPathRotatedTransform.ty + 3) = v16;
        v17 = (&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.height + 3);
        v18 = *(&self->mCachedAlignmentFrameInRootTransformInRoot.a + 3);
        *&v29.a = *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.height + 3);
        *&v29.c = v18;
        *&v29.tx = *(&self->mCachedAlignmentFrameInRootTransformInRoot.c + 3);
        if (sub_100139980(&v29) == 0.0)
        {
          *(&self->mCachedAlignmentFrame.originalCachedRect.size.height + 3) = sub_10011F334(*(&self->mCachedAlignmentFrame.originalCachedRect.size.height + 3), *(&self->mCachedAlignmentFrame.isValid + 3), v15);
          *(&self->mCachedAlignmentFrame.isValid + 3) = v19;
          memset(&v29, 0, sizeof(v29));
          [v9 transform];
          CGAffineTransformInvert(&t2, &t1);
          v20 = *(&self->mCachedAlignmentFrameInRootTransformInRoot.a + 3);
          *&t1.a = *v17;
          *&t1.c = v20;
          *&t1.tx = *(&self->mCachedAlignmentFrameInRootTransformInRoot.c + 3);
          CGAffineTransformConcat(&v29, &t1, &t2);
          if (v4)
          {
            [v4 transform];
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
          }

          v26 = v29;
          CGAffineTransformConcat(&t2, &v26, &t1);
          v21 = *&t2.c;
          *v17 = *&t2.a;
          *(&self->mCachedAlignmentFrameInRootTransformInRoot.a + 3) = v21;
          *(&self->mCachedAlignmentFrameInRootTransformInRoot.c + 3) = *&t2.tx;
        }

        else
        {
          *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) = 0;
        }

        goto LABEL_28;
      }
    }

    if (![(CRLShapeLayout *)self p_dynamicallyUpdatingStrokedFramesDuringResize]|| [(CRLCanvasLayout *)self layoutState]!= 4 && [(CRLCanvasLayout *)self layoutState]!= 5)
    {
      *(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3) = 0;
      *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) = 0;
    }

    goto LABEL_28;
  }

LABEL_29:
  v25.receiver = self;
  v25.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v25 setGeometry:v4];
}

- (CGRect)alignmentFrame
{
  v2 = (&self->mClippedPathRotatedTransform.tx + 3);
  if (*(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3))
  {
    v3 = *v2;
    v4 = *(&self->mClippedPathRotatedTransform.ty + 3);
    v5 = *(&self->mCachedAlignmentFrame.cachedRect.origin.x + 3);
    v6 = *(&self->mCachedAlignmentFrame.cachedRect.origin.y + 3);
  }

  else
  {
    [(CRLCanvasAbstractLayout *)self transform];
    [(CRLShapeLayout *)self shapeFrameWithTransform:&v8];
    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    *(v2 + 16) = 1;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v5;
  *&t1.tx = *&a3->tx;
  v6 = *&CGAffineTransformIdentity.c;
  *&t2.a = *&CGAffineTransformIdentity.a;
  *&t2.c = v6;
  *&t2.tx = *&CGAffineTransformIdentity.tx;
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v14.receiver = self;
    v14.super_class = CRLShapeLayout;
    v7 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v7;
    *&t1.tx = *&a3->tx;
    [(CRLStyledLayout *)&v14 baseFrameForFrameForCullingWithAdditionalTransform:&t1];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    [(CRLCanvasAbstractLayout *)self transform];
    v12 = *&a3->c;
    *&v13.a = *&a3->a;
    *&v13.c = v12;
    *&v13.tx = *&a3->tx;
    CGAffineTransformConcat(&t1, &t2, &v13);
    t2 = t1;
    [(CRLShapeLayout *)self shapeFrameWithTransform:&t2];
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];

  if (v3)
  {
    v4 = (&self->mCachedAlignmentFrame.originalCachedRect.size.height + 3);
    if (!*(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) || ([(CRLCanvasAbstractLayout *)self transformInRoot], v5 = *(&self->mCachedAlignmentFrameInRootTransformInRoot.a + 3), *&v15.a = *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.height + 3), *&v15.c = v5, *&v15.tx = *(&self->mCachedAlignmentFrameInRootTransformInRoot.c + 3), !CGAffineTransformEqualToTransform(&v15, &t2)))
    {
      [(CRLCanvasAbstractLayout *)self transformInRoot];
      [(CRLShapeLayout *)self shapeFrameWithTransform:&t2];
      *v4 = v6;
      *(&self->mCachedAlignmentFrame.isValid + 3) = v7;
      *(&self->mCachedAlignmentFrameInRoot.cachedRect.origin.x + 3) = v8;
      *(&self->mCachedAlignmentFrameInRoot.cachedRect.origin.y + 3) = v9;
      [(CRLCanvasAbstractLayout *)self transformInRoot];
      v10 = *&t2.c;
      *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.height + 3) = *&t2.a;
      *(&self->mCachedAlignmentFrameInRootTransformInRoot.a + 3) = v10;
      *(&self->mCachedAlignmentFrameInRootTransformInRoot.c + 3) = *&t2.tx;
      *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) = 1;
    }

    v11 = *v4;
    v12 = *(&self->mCachedAlignmentFrame.isValid + 3);
    v13 = *(&self->mCachedAlignmentFrameInRoot.cachedRect.origin.x + 3);
    v14 = *(&self->mCachedAlignmentFrameInRoot.cachedRect.origin.y + 3);
  }

  else
  {
    [(CRLShapeLayout *)self alignmentFrame];
  }

  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v7 processChangedProperty:?];
  if (a3 > 22)
  {
    if (a3 == 23)
    {
      [(CRLShapeLayout *)self invalidatePathBounds];
      [(CRLShapeLayout *)self p_invalidateHead];
    }

    else
    {
      if (a3 != 24)
      {
        return;
      }

      [(CRLShapeLayout *)self invalidatePathBounds];
      [(CRLShapeLayout *)self p_invalidateTail];
    }

    goto LABEL_12;
  }

  if (a3 != 16)
  {
    if (a3 != 21)
    {
      return;
    }

    [(CRLShapeLayout *)self invalidatePath];
    v5 = *(&self->mHeadCutT + 3);
    *(&self->mHeadCutT + 3) = 0.0;

LABEL_12:
    [(CRLShapeLayout *)self invalidateFrame];
    return;
  }

  if (![(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
  {
    [(CRLShapeLayout *)self invalidatePathBounds];
    [(CRLShapeLayout *)self p_invalidateHead];
    [(CRLShapeLayout *)self p_invalidateTail];
    [(CRLShapeLayout *)self invalidateFrame];
    v6 = *(&self->mHeadCutT + 3);
    if (v6)
    {
      *(&self->mHeadCutT + 3) = 0.0;

      [(CRLShapeLayout *)self invalidatePath];
    }
  }
}

- (CGRect)boundsForStandardKnobs
{
  v3 = [(CRLShapeLayout *)self pathSource];
  [v3 naturalSize];
  v4 = sub_10011ECB4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(CRLShapeLayout *)self pathBounds];
  v12 = -v11;
  v14 = -v13;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;

  return CGRectOffset(*&v15, v12, v14);
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  v6.receiver = self;
  v6.super_class = CRLShapeLayout;
  v4 = *&a4->c;
  v5[0] = *&a4->a;
  v5[1] = v4;
  v5[2] = *&a4->tx;
  [(CRLStyledLayout *)&v6 frameForCullingWithBaseFrame:v5 additionalTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectInset(v7, -1.0, -1.0);
}

- (CGRect)frameForPartitioning
{
  [(CRLCanvasLayout *)self frameForCulling];

  return CGRectInset(*&v2, 1.0, 1.0);
}

- (id)dependentLayoutsForDrag
{
  v2 = [(CRLCanvasLayout *)self dependentLayouts];
  v3 = [v2 crl_arrayOfObjectsPassingTest:&stru_101867D38];

  return v3;
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v13 dragBy:?];
  v6 = *(&self->mCachedPathSource + 3);
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013811A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013811C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138125C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLShapeLayout dragBy:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:341 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicInfoGeometry"];

    v6 = *(&self->mCachedPathSource + 3);
  }

  CGAffineTransformMakeTranslation(&v12, x, y);
  v10 = [v6 geometryByAppendingTransform:&v12];
  v11 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v10;
}

- (BOOL)shouldAdjustForStrokeWidthForCollabCursor
{
  if (![(CRLShapeLayout *)self pathIsLineSegment])
  {
    return 0;
  }

  v3 = [(CRLCanvasLayout *)self info];
  v4 = [v3 geometry];
  [v4 size];
  if (v5 == 0.0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CRLCanvasLayout *)self info];
    v8 = [v7 geometry];
    [v8 size];
    v6 = v9 == 0.0;
  }

  return v6;
}

- (id)stroke
{
  v2 = *(&self->mInitialPencilKitStrokePathCompactData + 3);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [(CRLShapeLayout *)self shapeInfo];
    v3 = [v4 stroke];
  }

  return v3;
}

- (void)dynamicStrokeWidthChangeDidBegin
{
  if (*(&self->mInitialPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381284();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101381298();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138132C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicStrokeWidthChangeDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:363 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicStroke"];
  }

  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [v6 stroke];
  v8 = [v7 mutableCopy];
  v9 = *(&self->mInitialPencilKitStrokePathCompactData + 3);
  *(&self->mInitialPencilKitStrokePathCompactData + 3) = v8;
}

- (void)dynamicStrokeWidthUpdateToValue:(double)a3
{
  v5 = *(&self->mInitialPencilKitStrokePathCompactData + 3);
  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381354();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101381368();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013813FC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicStrokeWidthUpdateToValue:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:368 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicStroke"];

    v5 = *(&self->mInitialPencilKitStrokePathCompactData + 3);
  }

  [v5 setWidth:a3];
  [(CRLShapeLayout *)self processChangedProperty:16];
  if ([(CRLCanvasLayout *)self layoutState]!= 4 && [(CRLCanvasLayout *)self layoutState]!= 5)
  {
    v9 = [(CRLCanvasLayout *)self layoutController];
    v10 = [v9 canvas];
    v11 = [v10 canvasController];

    v12 = [v11 repForLayout:self];
    [v12 processChangedProperty:16];
  }
}

- (void)dynamicStrokeWidthChangeDidEnd
{
  v2 = *(&self->mInitialPencilKitStrokePathCompactData + 3);
  *(&self->mInitialPencilKitStrokePathCompactData + 3) = 0;
}

- (_TtC8Freeform12CRLShapeItem)shapeInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLPathSource)pathSource
{
  v2 = *(&self->mCachedEditableBezierPathSource + 3);
  if (v2 || (v2 = *(&self->mHeadCutT + 3)) != 0)
  {
    v3 = v2;
  }

  else
  {
    v5 = [(CRLShapeLayout *)self shapeInfo];
    v3 = [v5 pathSource];
  }

  return v3;
}

- (CRLBezierPath)maskPath
{
  v2 = *(&self->mDynamicPathSource + 3);
  if (!v2)
  {
    v5 = objc_opt_class();
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v3 = sub_100014370(v5, v6);

    if (v3)
    {
      v7 = [v3 maskPath];
LABEL_7:

      v3 = v7;
      goto LABEL_8;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if ([v3 isEmpty])
  {
    goto LABEL_6;
  }

LABEL_8:

  return v3;
}

- (NSArray)pencilKitStrokes
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLayout *)self shapeInfo];
  v5 = sub_100013F00(v3, v4);

  if (*(&self->mCachedEditableBezierPathSource + 3) || *(&self->mInitialPencilKitStrokePathCompactData + 3) || *(&self->mDynamicInfoGeometry + 3) || *(&self->mDynamicPathSource + 3))
  {
    v6 = objc_opt_class();
    v7 = [(CRLShapeLayout *)self stroke];
    v8 = sub_100013F00(v6, v7);

    if (v8)
    {
      v9 = [(CRLShapeLayout *)self path];
      v10 = [(CRLShapeLayout *)self pencilKitStrokePathCompactData];
      v11 = [(CRLShapeLayout *)self maskPath];
      v12 = +[CRLPKStrokeConverter pencilKitStrokesFromPath:inkStroke:strokePathCompactData:maskPath:snappedShapeType:](CRLPKStrokeConverter, "pencilKitStrokesFromPath:inkStroke:strokePathCompactData:maskPath:snappedShapeType:", v9, v8, v10, v11, [v5 snappedShapeType]);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101381424();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101381438();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013814CC();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLShapeLayout pencilKitStrokes]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:443 isFatal:0 description:"invalid nil value for '%{public}s'", "inkStroke"];

      v12 = 0;
    }
  }

  else
  {
    v12 = [v5 pencilKitStrokes];
  }

  return v12;
}

- (NSArray)pencilKitStrokesInParentInfoSpace
{
  if (*(&self->mCachedEditableBezierPathSource + 3) || *(&self->mInitialPencilKitStrokePathCompactData + 3) || *(&self->mDynamicInfoGeometry + 3) || *(&self->mDynamicPathSource + 3) || *(&self->mCachedPathSource + 3))
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v3 = [(CRLShapeLayout *)self layoutInfoGeometry];
    v4 = v3;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    v5 = [(CRLShapeLayout *)self pencilKitStrokes];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1004B5A8C;
    v11[3] = &unk_101845998;
    v12 = v15;
    v13 = v16;
    v14 = v17;
    v6 = [v5 crl_arrayByTransformingWithBlock:v11];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(CRLShapeLayout *)self shapeInfo];
    v5 = sub_100013F00(v9, v10);

    v6 = [v5 pencilKitStrokesInParentSpace];
  }

  v7 = v6;

  return v7;
}

- (CRLPKStrokePathCompactData)pencilKitStrokePathCompactData
{
  v2 = *(&self->mDynamicInfoGeometry + 3);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = sub_100013F00(v5, v6);

    v3 = [v7 pencilKitStrokePathCompactData];
  }

  return v3;
}

- (id)editablePathSource
{
  v3 = [(CRLShapeLayout *)self pathSource];
  v4 = [(CRLShapeLayout *)self shapeInfo];
  v5 = [v4 pathSource];

  v6 = objc_opt_class();
  v7 = sub_100014370(v6, v3);
  if (v7)
  {
    v8 = v7;
    v9 = *(&self->mShrunkenPathSource + 3);
    *(&self->mShrunkenPathSource + 3) = 0;

    v10 = *(&self->mOriginalShrunkenPathSource + 3);
    *(&self->mOriginalShrunkenPathSource + 3) = 0;
  }

  else
  {
    if (v5 != *(&self->mOriginalShrunkenPathSource + 3))
    {
      v11 = [CRLEditableBezierPathSource editableBezierPathSourceWithPathSource:v3];
      v12 = *(&self->mShrunkenPathSource + 3);
      *(&self->mShrunkenPathSource + 3) = v11;

      objc_storeStrong((&self->mOriginalShrunkenPathSource + 3), v3);
    }

    v8 = *(&self->mShrunkenPathSource + 3);
  }

  return v8;
}

- (CRLSmartPathSource)smartPathSource
{
  v2 = [(CRLShapeLayout *)self pathSource];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  return v9;
}

- (CRLCanvasInfoGeometry)layoutInfoGeometry
{
  v2 = *(&self->mCachedPathSource + 3);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [(CRLCanvasLayout *)self info];
    v3 = [v4 geometry];
  }

  return v3;
}

- (CGPoint)headPoint
{
  [(CRLShapeLayout *)self p_validateHeadAndTail];
  v3 = *(&self->mCachedAlignmentFrameInRootTransformInRoot.tx + 3);
  v4 = *(&self->mCachedAlignmentFrameInRootTransformInRoot.ty + 3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)tailPoint
{
  [(CRLShapeLayout *)self p_validateHeadAndTail];
  v3 = *(&self->mHeadPoint.x + 3);
  v4 = *(&self->mHeadPoint.y + 3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)headLineEndPoint
{
  [(CRLShapeLayout *)self p_validateHeadLineEnd];
  v3 = *(&self->mTailPoint.x + 3);
  v4 = *(&self->mTailPoint.y + 3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)tailLineEndPoint
{
  [(CRLShapeLayout *)self p_validateTailLineEnd];
  v3 = *(&self->mHeadLineEndPoint.x + 3);
  v4 = *(&self->mHeadLineEndPoint.y + 3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)isTailEndOnLeft
{
  [(CRLShapeLayout *)self tailLineEndPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
    v10 = v28.f64[1];
    v9 = v28.f64[0];
    v12 = v29.f64[1];
    v11 = v29.f64[0];
    v13 = v30.f64[1];
    v14 = v30.f64[0];
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
  }

  [(CRLShapeLayout *)self headLineEndPoint];
  v25 = v16;
  v26 = v15;
  v17 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  v18 = v17;
  if (v17)
  {
    [v17 transform];
    v19 = v28;
    v20 = v29;
    v21 = v30;
  }

  else
  {
    v21 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *&v27 = *&vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v20, v25), v19, v26));

  v22 = sub_10011F31C(v14 + v6 * v11 + v9 * v4, v13 + v6 * v12 + v10 * v4, v27);
  if (fabs(v22) < 1.0)
  {
    v22 = v23;
  }

  return v22 < 0.0;
}

- (double)lineEndScale:(BOOL)a3
{
  if (a3)
  {
    [(CRLShapeLayout *)self strokeHeadLineEnd];
  }

  else
  {
    [(CRLShapeLayout *)self strokeTailLineEnd];
  }
  v4 = ;
  v5 = [(CRLShapeLayout *)self stroke];
  [v5 width];
  [v4 scaleForStrokeWidth:?];
  v7 = v6;

  return v7;
}

- (CRLBezierPath)clippedPathForLineEnds
{
  if (SBYTE3(self->super.mDynamicOpacity) < 0)
  {
    v3 = [(CRLShapeLayout *)self p_createClippedPath];
    v4 = *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3);
    *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3) = v3;

    BYTE3(self->super.mDynamicOpacity) &= ~0x80u;
  }

  v5 = *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3);

  return v5;
}

- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v3;
  v8[2] = *&a3->tx;
  [(CRLShapeLayout *)self shapeFrameWithTransform:v8 strokeDrawOptions:7];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)a3 strokeDrawOptions:(unint64_t)a4
{
  v4 = a4;
  [(CRLShapeLayout *)self pathBounds];
  v9 = *&a3->c;
  *&v34.a = *&a3->a;
  *&v34.c = v9;
  *&v34.tx = *&a3->tx;
  CGAffineTransformTranslate(&v35, &v34, -v7, -v8);
  v10 = *&v35.c;
  *&a3->a = *&v35.a;
  *&a3->c = v10;
  *&a3->tx = *&v35.tx;
  if (v4)
  {
    v15 = *&a3->c;
    *&v35.a = *&a3->a;
    *&v35.c = v15;
    *&v35.tx = *&a3->tx;
    if (sub_10013A268(&v35.a))
    {
      [(CRLShapeLayout *)self p_cachedClippedPathStroked];
      v16 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v16;
      *&v35.tx = *&a3->tx;
      v37 = CGRectApplyAffineTransform(v36, &v35);
    }

    else
    {
      v17 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v17;
      *&v35.tx = *&a3->tx;
      [(CRLShapeLayout *)self p_updatedCachedClipRectIfNeededForRotation:&v35];
    }

    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  if ([(CRLShapeLayout *)self pathIsOpen])
  {
    if ((v4 & 2) != 0)
    {
      v18 = *(&self->mDynamicStrokeOffsetArray + 3);
      v19 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v19;
      *&v35.tx = *&a3->tx;
      [v18 boundsOfLineEndForHead:1 transform:&v35];
      v43.origin.x = v20;
      v43.origin.y = v21;
      v43.size.width = v22;
      v43.size.height = v23;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectUnion(v38, v43);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }

    if ((v4 & 4) != 0)
    {
      v24 = *(&self->mDynamicStrokeOffsetArray + 3);
      v25 = *&a3->c;
      *&v35.a = *&a3->a;
      *&v35.c = v25;
      *&v35.tx = *&a3->tx;
      [v24 boundsOfLineEndForHead:0 transform:&v35];
      v44.origin.x = v26;
      v44.origin.y = v27;
      v44.size.width = v28;
      v44.size.height = v29;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = CGRectUnion(v40, v44);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
    }
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (BOOL)isInvisibleAutosizingShape
{
  v3 = [(CRLCanvasLayout *)self info];
  v4 = [v3 geometry];
  v5 = [v4 widthValid];

  v6 = [(CRLCanvasLayout *)self info];
  v7 = [v6 geometry];
  v8 = [v7 heightValid];

  if (v5 && (v8 & 1) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [(CRLCanvasLayout *)self layoutController];
    v11 = [v10 canvas];
    v9 = [v11 shouldShowInstructionalTextForLayout:self] ^ 1;
  }

  return v9;
}

- (CGPoint)centerForConnecting
{
  v13.receiver = self;
  v13.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v13 centerForConnecting];
  v4 = v3;
  v6 = v5;
  if ([(CRLShapeLayout *)self isInvisibleAutosizingShape])
  {
    v7 = [(CRLCanvasLayout *)self info];
    v8 = [v7 geometry];
    [v8 center];
    v4 = v9;
    v6 = v10;
  }

  v11 = v4;
  v12 = v6;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)a3
{
  [*(&self->mDynamicStrokeOffsetArray + 3) aliasedAlignmentFrameForScale:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)aliasPathForScale:(double)a3 adjustedStroke:(id *)a4 adjustedPath:(id *)a5 startDelta:(CGPoint *)a6 endDelta:(CGPoint *)a7
{
  v13 = [(CRLShapeLayout *)self stroke];
  [(CRLShapeLayout *)self aliasPathForScale:v13 originalStroke:a4 adjustedStroke:a5 adjustedPath:a6 startDelta:a7 endDelta:a3];
}

- (void)aliasPathForScale:(double)a3 originalStroke:(id)a4 adjustedStroke:(id *)a5 adjustedPath:(id *)a6 startDelta:(CGPoint *)a7 endDelta:(CGPoint *)a8
{
  v15 = a4;
  v16 = [(CRLShapeLayout *)self shapeInfo];
  v85 = a5;
  if (![(CRLShapeLayout *)self pathIsOpen])
  {
LABEL_19:
    v27 = [(CRLShapeLayout *)self path];
    goto LABEL_22;
  }

  v17 = [v16 headLineEnd];
  if (v17)
  {
    v10 = [v16 headLineEnd];
    v8 = +[NSNull null];
    if ([v10 isEqual:v8])
    {
      v81 = 0;
    }

    else
    {
      v9 = [v16 headLineEnd];
      if (([v9 isNone] & 1) == 0)
      {

        goto LABEL_21;
      }

      v81 = 1;
    }
  }

  else
  {
    v81 = 0;
  }

  v18 = [v16 tailLineEnd];
  v78 = v9;
  if (v18)
  {
    v19 = v18;
    v83 = a6;
    [v16 tailLineEnd];
    v21 = v20 = v16;
    v22 = +[NSNull null];
    if ([v21 isEqual:v22])
    {

      v23 = 0;
    }

    else
    {
      [v20 tailLineEnd];
      v77 = v8;
      v24 = v10;
      v26 = v25 = v15;
      v23 = [v26 isNone] ^ 1;

      v15 = v25;
      v10 = v24;
      v8 = v77;
    }

    v16 = v20;
    a6 = v83;
    a5 = v85;
    if (v81)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = 0;
    if (v81)
    {
LABEL_15:
    }
  }

  if (v17)
  {
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  v27 = [(CRLShapeLayout *)self clippedPathForLineEnds];
LABEL_22:
  v28 = v27;
  memset(&v91, 0, sizeof(v91));
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v29 = [(CRLCanvasLayout *)self layoutController];
  v30 = [v29 canvas];

  if ([v30 isPrinting])
  {
    v31 = 1;
  }

  else
  {
    v31 = [v30 isDrawingIntoPDF];
  }

  v33 = a8;
  v32 = a7;
  if (a5)
  {
    v34 = v15;
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = [v28 copy];
  }

  if (a7)
  {
    *a7 = CGPointZero;
  }

  if (a8)
  {
    *a8 = CGPointZero;
  }

  if (v28)
  {
    v92 = v91;
    if (!(v31 & 1 | !sub_100139B5C(&v92.a)))
    {
      [(CRLShapeLayout *)self pathBounds];
      v36 = v35;
      v38 = v37;
      if (![v15 shouldRender] || objc_msgSend(v15, "shouldAntialiasDefeat"))
      {
        v82 = [v15 mutableCopy];
        v39 = 0.0;
        if ([v82 shouldRender])
        {
          [v15 width];
          v41 = v40 * a3;
          v39 = 1.0;
          if (v41 > 1.0)
          {
            v42 = sub_1004C31F4(v41);
            [v82 setWidth:v42 / a3];
            v39 = v42;
          }

          [v15 width];
          [v82 setActualWidth:?];
        }

        v84 = a6;
        if (a7)
        {
          if (a8)
          {
LABEL_62:
            v49 = [v28 copy];
            [v28 elementAtIndex:0 associatedPoints:&v92];
            if (v32)
            {
              *v32 = *&v92.a;
            }

            if (v33)
            {
              [v28 currentPoint];
              v33->x = v50;
              v33->y = v51;
            }

            v89 = v91;
            CGAffineTransformTranslate(&v90, &v89, -v36, -v38);
            v91 = v90;
            [v49 transformUsingAffineTransform:&v90];
            v52 = [(CRLShapeLayout *)self pathSource];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isCurveContinuous])
            {
              v87 = [v52 copy];
              [v49 bounds];
              v55 = [CRLBezierPath bezierPathWithRect:?];
              *&v56 = a3;
              *&v57 = v39;
              [v55 aliasedPathWithViewScale:v56 effectiveStrokeWidth:v57];
              v59 = v58 = v16;
              [v59 bounds];
              v61 = v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;

              v16 = v58;
              v32 = a7;
              v89 = v91;
              CGAffineTransformInvert(&v90, &v89);
              v93.origin.x = v61;
              v93.origin.y = v63;
              v93.size.width = v65;
              v93.size.height = v67;
              v94 = CGRectApplyAffineTransform(v93, &v90);
              [v87 scaleToNaturalSize:{v94.size.width, v94.size.height}];
              v68 = [v87 bezierPathWithoutFlips];

              v90 = v91;
              [v68 transformUsingAffineTransform:&v90];
              [v68 bounds];
              v70 = v61 - v69;
              [v68 bounds];
              CGAffineTransformMakeTranslation(&v90, v70, v63 - v71);
              [v68 transformUsingAffineTransform:&v90];
              v49 = v87;
            }

            else
            {
              *&v53 = a3;
              *&v54 = v39;
              v68 = [v49 aliasedPathWithViewScale:v53 effectiveStrokeWidth:v54];
            }

            v89 = v91;
            CGAffineTransformInvert(&v90, &v89);
            [v68 transformUsingAffineTransform:&v90];
            *&v90.a = CGPointZero;
            [v68 elementAtIndex:0 associatedPoints:&v90];
            if (v32)
            {
              v32->x = sub_10011F31C(v90.a, v90.b, v32->x);
              v32->y = v72;
            }

            if (v33)
            {
              [v68 currentPoint];
              v33->x = sub_10011F31C(v73, v74, v33->x);
              v33->y = v75;
            }

            if (v85)
            {
              *v85 = v82;
            }

            if (v84)
            {
              v76 = v68;
              *v84 = v68;
            }

            goto LABEL_79;
          }
        }

        else
        {
          v79 = v16;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013814F4();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10138151C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013815B0();
          }

          v33 = a8;
          v43 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v43);
          }

          v44 = [NSString stringWithUTF8String:"[CRLShapeLayout aliasPathForScale:originalStroke:adjustedStroke:adjustedPath:startDelta:endDelta:]"];
          v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
          [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:727 isFatal:0 description:"invalid nil value for '%{public}s'", "startDelta"];

          v16 = v79;
          v32 = a7;
          if (a8)
          {
            goto LABEL_62;
          }
        }

        v80 = v16;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013815D8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101381600();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101381694();
        }

        v33 = a8;
        v46 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v46);
        }

        v47 = [NSString stringWithUTF8String:"[CRLShapeLayout aliasPathForScale:originalStroke:adjustedStroke:adjustedPath:startDelta:endDelta:]"];
        v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
        [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:728 isFatal:0 description:"invalid nil value for '%{public}s'", "endDelta"];

        v16 = v80;
        v32 = a7;
        goto LABEL_62;
      }
    }
  }

LABEL_79:
}

- (CRLFill)fill
{
  v2 = *(&self->mInitialStroke + 3);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [(CRLShapeLayout *)self shapeInfo];
    v3 = [v4 fill];
  }

  return v3;
}

- (BOOL)canBeIntersected
{
  if ([(CRLShapeLayout *)self pathIsLineSegment])
  {
    return 0;
  }

  v4 = [(CRLCanvasAbstractLayout *)self parent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRLCanvasAbstractLayout *)self parent];
    v3 = [v5 allowIntersectionOfChildLayout:self];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)supportsCalloutAttributes
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLayout *)self pathSource];
  v5 = sub_100014370(v3, v4);
  LOBYTE(v3) = v5 != 0;

  return v3;
}

- (void)invalidateFrame
{
  v12.receiver = self;
  v12.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v12 invalidateFrame];
  *(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) = 0;
  if ([(CRLCanvasLayout *)self layoutState]== 2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(CRLShapeLayout *)self dependentLayoutsForDrag];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

          [*(*(&v8 + 1) + 8 * v7) invalidateFrame];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)invalidatePath
{
  BYTE3(self->super.mDynamicOpacity) |= 0xFu;
  v3 = *(&self->super._suppressesShadowsAndReflections + 3);
  *(&self->super._suppressesShadowsAndReflections + 3) = 0;

  [(CRLShapeLayout *)self invalidatePathBounds];
  [(CRLShapeLayout *)self p_invalidateHead];
  [(CRLShapeLayout *)self p_invalidateTail];

  [(CRLShapeLayout *)self p_invalidateClippedPath];
}

- (void)invalidatePathBounds
{
  *(&self->mCachedPathBoundsStruct.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedAlignmentFrameInRoot.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedClippedPathStroked.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3) = 0;
  origin = CGRectZero.origin;
  size = CGRectZero.size;
  *(&self->mCachedPath + 3) = CGRectZero.origin;
  *(&self->mCachedPathBoundsStruct.cachedRect.origin + 3) = size;
  *(&self->mCachedPathBoundsStruct.originalCachedRect.size.height + 3) = origin;
  *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin + 3) = size;
  [(CRLShapeLayout *)self invalidateExteriorWrap];
}

- (BOOL)i_isInsideResizingFreehandDrawing
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  v6 = objc_opt_class();
  v7 = [v5 info];
  v8 = sub_100014370(v6, v7);

  if (v5 && ([v5 layoutState] == 4 || objc_msgSend(v5, "layoutState") == 5))
  {
    v9 = [(CRLCanvasLayout *)self info];
    v10 = [v8 isNonGroupedChild:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)p_dynamicallyUpdatingStrokedFramesDuringResize
{
  if ([(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(CRLShapeLayout *)self stroke];
    if (v4)
    {
      v5 = [(CRLShapeLayout *)self stroke];
      v3 = [v5 shouldRender] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)beginResize
{
  v3.receiver = self;
  v3.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v3 beginResize];
  [(CRLShapeLayout *)self p_beginResizeOrFreeTransform];
}

- (void)beginFreeTransformWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v4 beginFreeTransformWithTracker:a3];
  [(CRLShapeLayout *)self p_beginResizeOrFreeTransform];
}

- (void)p_beginResizeOrFreeTransform
{
  if (*(&self->mInitialMaskPath + 3))
  {
    if ([(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
    {
      [(CRLShapeLayout *)self dynamicStrokeWidthChangeDidBegin];
      if (*(&self->mInitialInfoGeometry + 3))
      {
        [(CRLShapeLayout *)self dynamicPencilKitStrokePathCompactDataRenderScaleDidBegin];
      }
    }
  }

  [(CRLShapeLayout *)self p_cachedPathBounds];
  *(&self->mCachedPathBoundsStruct.cachedRect.size.width + 3) = v3;
  *(&self->mCachedPathBoundsStruct.cachedRect.size.height + 3) = v4;
  *(&self->mCachedPathBoundsStruct.originalCachedRect.origin.x + 3) = v5;
  *(&self->mCachedPathBoundsStruct.originalCachedRect.origin.y + 3) = v6;
  [(CRLShapeLayout *)self p_cachedPathBoundsWithoutStroke];
  *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.size.width + 3) = v7;
  *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.size.height + 3) = v8;
  *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.origin.x + 3) = v9;
  *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.origin.y + 3) = v10;
  [(CRLShapeLayout *)self alignmentFrame];
  *(&self->mCachedAlignmentFrame.cachedRect.size.width + 3) = v11;
  *(&self->mCachedAlignmentFrame.cachedRect.size.height + 3) = v12;
  *(&self->mCachedAlignmentFrame.originalCachedRect.origin.x + 3) = v13;
  *(&self->mCachedAlignmentFrame.originalCachedRect.origin.y + 3) = v14;
  [(CRLShapeLayout *)self p_cachedClippedPathStroked];
  *(&self->mCachedClippedPathStroked.cachedRect.size.width + 3) = v15;
  *(&self->mCachedClippedPathStroked.cachedRect.size.height + 3) = v16;
  *(&self->mCachedClippedPathStroked.originalCachedRect.origin.x + 3) = v17;
  *(&self->mCachedClippedPathStroked.originalCachedRect.origin.y + 3) = v18;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v26 = 0uLL;
  v23[0] = v24;
  v23[1] = v25;
  v23[2] = 0uLL;
  [(CRLShapeLayout *)self p_updatedCachedClipRectIfNeededForRotation:v23];
  *(&self->mCachedClippedPathRotatedStroked.cachedRect.size.width + 3) = v19;
  *(&self->mCachedClippedPathRotatedStroked.cachedRect.size.height + 3) = v20;
  *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.origin.x + 3) = v21;
  *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.origin.y + 3) = v22;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v79.receiver = self;
  v79.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v79 beginDynamicOperationWithRealTimeCommands:a3];
  if (*(&self->mDynamicMaskPath + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013816BC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1013816E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381778();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:924 isFatal:0 description:"expected nil value for '%{public}s'", "mInitialPathSource"];
  }

  if (*(&self->mCachedEditableBezierPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381844();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10138186C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381900();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v10 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:925 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicPathSource"];
  }

  if (*(&self->mDynamicPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381928();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_101381950();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013819E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v14 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:927 isFatal:0 description:"expected nil value for '%{public}s'", "mInitialInfoGeometry"];
  }

  if (*(&self->mCachedPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381A0C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_101381A34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381AC8();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v18 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:928 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  if (*(&self->mInitialMaskPath + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381AF0();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_101381B18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381BAC();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v22 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:930 isFatal:0 description:"expected nil value for '%{public}s'", "mInitialStroke"];
  }

  if (*(&self->mInitialPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381BD4();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_101381BFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381C90();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v26 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:931 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicStroke"];
  }

  if (*(&self->mInitialPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381CB8();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_101381CE0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381D74();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v30 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:933 isFatal:0 description:"expected nil value for '%{public}s'", "mInitialMaskPath"];
  }

  if (*(&self->mDynamicPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381D9C();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_101381DC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381E58();
    }

    v33 = off_1019EDA68;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v34 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:934 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicMaskPath"];
  }

  if (*(&self->mDynamicStroke + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381E80();
    }

    v36 = off_1019EDA68;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_101381EA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101381F3C();
    }

    v37 = off_1019EDA68;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v38 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:936 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicStrokeOffsetArray"];
  }

  if (*(&self->mInitialInfoGeometry + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101381F64();
    }

    v40 = off_1019EDA68;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_101381F8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382020();
    }

    v41 = off_1019EDA68;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v42 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v42 file:v43 lineNumber:938 isFatal:0 description:"expected nil value for '%{public}s'", "mInitialPencilKitStrokePathCompactData"];
  }

  if (*(&self->mDynamicInfoGeometry + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382048();
    }

    v44 = off_1019EDA68;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_101382070();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382104();
    }

    v45 = off_1019EDA68;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1013817A0();
    }

    v46 = [NSString stringWithUTF8String:"[CRLShapeLayout beginDynamicOperationWithRealTimeCommands:]"];
    v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:939 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicPencilKitStrokePathCompactData"];
  }

  v48 = [(CRLShapeLayout *)self shapeInfo];
  v49 = [(CRLCanvasLayout *)self pureGeometry];
  v50 = [v48 pathSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(CRLShapeLayout *)self editablePathSource];
  }

  else
  {
    [(CRLShapeLayout *)self pathSource];
  }
  v52 = ;
  v53 = [v52 copy];
  v54 = *(&self->mCachedEditableBezierPathSource + 3);
  *(&self->mCachedEditableBezierPathSource + 3) = v53;

  v55 = *(&self->mCachedEditableBezierPathSource + 3);
  [v49 size];
  [v55 scaleToNaturalSize:?];
  v56 = [(CRLShapeLayout *)self maskPath];
  v57 = [v56 copy];
  v58 = *(&self->mDynamicPathSource + 3);
  *(&self->mDynamicPathSource + 3) = v57;

  v59 = [(CRLShapeLayout *)self pathSource];
  v60 = [v59 copy];
  v61 = *(&self->mDynamicMaskPath + 3);
  *(&self->mDynamicMaskPath + 3) = v60;

  v62 = [(CRLShapeLayout *)self maskPath];
  v63 = [v62 copy];
  v64 = *(&self->mInitialPathSource + 3);
  *(&self->mInitialPathSource + 3) = v63;

  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    goto LABEL_115;
  }

  v66 = [v48 geometry];
  if (([v66 widthValid] & 1) == 0)
  {

LABEL_120:
    if (v48)
    {
      [v48 computeFullTransform];
    }

    else
    {
      memset(v78, 0, sizeof(v78));
    }

    v65 = [CRLCanvasInfoGeometry geometryFromFullTransform:v78];
    goto LABEL_124;
  }

  v67 = [v48 geometry];
  v68 = [v67 heightValid];

  if ((v68 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_115:
  v65 = [v48 geometry];
LABEL_124:
  v69 = *(&self->mDynamicPencilKitStrokePathCompactData + 3);
  *(&self->mDynamicPencilKitStrokePathCompactData + 3) = v65;

  v70 = [(CRLShapeLayout *)self captureDynamicInfoGeometryToBeginDynamicOperation];
  v71 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v70;

  v72 = [(CRLShapeLayout *)self stroke];
  v73 = [v72 copy];
  v74 = *(&self->mInitialMaskPath + 3);
  *(&self->mInitialMaskPath + 3) = v73;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = [(CRLShapeLayout *)self pencilKitStrokePathCompactData];
    v76 = [v75 copy];
    v77 = *(&self->mInitialInfoGeometry + 3);
    *(&self->mInitialInfoGeometry + 3) = v76;
  }
}

- (id)captureDynamicInfoGeometryToBeginDynamicOperation
{
  if (!*(&self->mDynamicPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138212C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382140();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013821D4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLayout captureDynamicInfoGeometryToBeginDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:973 isFatal:0 description:"invalid nil value for '%{public}s'", "mInitialInfoGeometry"];
  }

  v6 = [(CRLCanvasLayout *)self pureGeometry];
  v7 = [CRLCanvasInfoGeometry alloc];
  if (v6)
  {
    [v6 fullTransform];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = -[CRLCanvasInfoGeometry initWithFullTransform:widthValid:heightValid:](v7, "initWithFullTransform:widthValid:heightValid:", v10, [*(&self->mDynamicPencilKitStrokePathCompactData + 3) widthValid], objc_msgSend(*(&self->mDynamicPencilKitStrokePathCompactData + 3), "heightValid"));

  return v8;
}

- (void)endDynamicOperation
{
  if (!*(&self->mCachedEditableBezierPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013821FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382210();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013822A4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLayout endDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:979 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicPathSource"];
  }

  if (!*(&self->mCachedPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013822CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013822F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382388();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLShapeLayout endDynamicOperation]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:980 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  if (!*(&self->mDynamicMaskPath + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013823B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013823D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138246C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLShapeLayout endDynamicOperation]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:981 isFatal:0 description:"invalid nil value for '%{public}s'", "mInitialPathSource"];
  }

  if (!*(&self->mDynamicPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382494();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013824BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382550();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLShapeLayout endDynamicOperation]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:982 isFatal:0 description:"invalid nil value for '%{public}s'", "mInitialInfoGeometry"];
  }

  v24.receiver = self;
  v24.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v24 endDynamicOperation];
  v15 = *(&self->mCachedEditableBezierPathSource + 3);
  *(&self->mCachedEditableBezierPathSource + 3) = 0;

  v16 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = 0;

  v17 = *(&self->mDynamicPathSource + 3);
  *(&self->mDynamicPathSource + 3) = 0;

  v18 = *(&self->mDynamicMaskPath + 3);
  *(&self->mDynamicMaskPath + 3) = 0;

  v19 = *(&self->mDynamicPencilKitStrokePathCompactData + 3);
  *(&self->mDynamicPencilKitStrokePathCompactData + 3) = 0;

  v20 = *(&self->mInitialMaskPath + 3);
  *(&self->mInitialMaskPath + 3) = 0;

  v21 = *(&self->mInitialInfoGeometry + 3);
  *(&self->mInitialInfoGeometry + 3) = 0;

  v22 = *(&self->mInitialPathSource + 3);
  *(&self->mInitialPathSource + 3) = 0;

  v23 = *(&self->mDynamicStroke + 3);
  *(&self->mDynamicStroke + 3) = 0;

  BYTE3(self->mDynamicFill) = 0;
}

- (CGSize)minimumSize
{
  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 containingGroup];
  v5 = [v4 isFreehandDrawing];

  if (v5)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v8 = [(CRLShapeLayout *)self shapeInfo];
    v9 = [v8 pathSource];
    v10 = [v9 bezierPath];
    v11 = [v10 isLineSegment];

    width = 0.001;
    height = 0.0;
    if (!v11)
    {
      height = 0.001;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)p_canResizeViaTransform
{
  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 pathSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = [v6 pathSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v8 = [(CRLCanvasLayout *)self info];
  v9 = [v8 geometry];

  LOBYTE(v8) = [v9 widthValid];
  LOBYTE(v8) = isKindOfClass & [v9 heightValid] & v8;

  return v8 & 1;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v20 takeSizeFromTracker:v4];
  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    if (v4)
    {
      [v4 flippedIfNecessaryTransformForLayout:self];
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    [v4 transformForLayout:self];
    goto LABEL_7;
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
LABEL_7:
  v17 = v14;
  v18 = v15;
  v19 = v16;
  if (v4)
  {
    [v4 resizeTransform];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v5 = [v4 currentlyPreservingAspectRatio];
  [v4 currentSizeForLayout:self];
  v7 = v6;
  v9 = v8;
  v10 = [v4 currentGeometryForLayout:self];
  v11 = [v4 hasHorizontalFlip];
  v12 = [v4 hasVerticalFlip];
  v13[0] = v17;
  v13[1] = v18;
  v13[2] = v19;
  [(CRLShapeLayout *)self p_applyResizeTransform:&v14 transformInParentSpace:v13 preservingAspectRatio:v5 layoutSize:v10 geometryForLayout:v11 hasHorizontalFlip:v12 hasVerticalFlip:v7, v9];
}

- (void)p_applyResizeTransform:(CGAffineTransform *)a3 transformInParentSpace:(CGAffineTransform *)a4 preservingAspectRatio:(BOOL)a5 layoutSize:(CGSize)a6 geometryForLayout:(id)a7 hasHorizontalFlip:(BOOL)a8 hasVerticalFlip:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  height = a6.height;
  width = a6.width;
  v123 = a5;
  v124 = a7;
  if ([(CRLCanvasLayout *)self layoutState]== 1 || ![(CRLCanvasLayout *)self layoutState])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382578();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138258C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382620();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLShapeLayout p_applyResizeTransform:transformInParentSpace:preservingAspectRatio:layoutSize:geometryForLayout:hasHorizontalFlip:hasVerticalFlip:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1046 isFatal:0 description:"A shape taking a size should not be in a generic dynamic state, or static state"];
  }

  if (!*(&self->mDynamicMaskPath + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382648();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382670();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382704();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLShapeLayout p_applyResizeTransform:transformInParentSpace:preservingAspectRatio:layoutSize:geometryForLayout:hasHorizontalFlip:hasVerticalFlip:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1057 isFatal:0 description:"invalid nil value for '%{public}s'", "mInitialPathSource"];
  }

  if (!*(&self->mDynamicPencilKitStrokePathCompactData + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138272C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382754();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013827E8();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v21);
    }

    v22 = [NSString stringWithUTF8String:"[CRLShapeLayout p_applyResizeTransform:transformInParentSpace:preservingAspectRatio:layoutSize:geometryForLayout:hasHorizontalFlip:hasVerticalFlip:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1058 isFatal:0 description:"invalid nil value for '%{public}s'", "mInitialInfoGeometry"];
  }

  memset(&v131, 0, sizeof(v131));
  v24 = [(CRLCanvasLayout *)self originalPureGeometry];
  v25 = v24;
  if (v24)
  {
    [v24 transform];
  }

  else
  {
    memset(&v130, 0, sizeof(v130));
  }

  v26 = *&a4->c;
  *&v129.a = *&a4->a;
  *&v129.c = v26;
  *&v129.tx = *&a4->tx;
  sub_100139E2C(&v129, &v130, &v131);

  v130 = v131;
  v27 = sub_100139A14(&v130.a);
  memset(&v130, 0, sizeof(v130));
  CGAffineTransformMakeScale(&v130, v27, v28);
  v29 = [(CRLShapeLayout *)self p_canResizeViaTransform];
  v30 = *(&self->mDynamicMaskPath + 3);
  if (v29 && !v123)
  {
    v31 = [v30 bezierPath];
    v32 = [v31 copy];

    v129 = v131;
    [v32 transformUsingAffineTransform:&v129];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v32 bounds];
    v42 = v41;
    v44 = v43;
    if (!sub_10011ECC8(v41, v43, CGPointZero.x, CGPointZero.y))
    {
      CGAffineTransformMakeTranslation(&v129, -v42, -v44);
      [v32 transformUsingAffineTransform:&v129];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = objc_opt_class();
      v46 = [v32 copy];
      v47 = [v45 pathSourceWithBezierPath:v46];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101382810();
        }

        v53 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101382838(&self->mDynamicMaskPath + 3, v53);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101382924();
        }

        v54 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v54);
        }

        v46 = [NSString stringWithUTF8String:"[CRLShapeLayout p_applyResizeTransform:transformInParentSpace:preservingAspectRatio:layoutSize:geometryForLayout:hasHorizontalFlip:hasVerticalFlip:]"];
        v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        [CRLAssertionHandler handleFailureInFunction:v46 file:v55 lineNumber:1084 isFatal:0 description:"Unexpected path source class! (%{public}@) We don't know how to build a path source for it.", v57];

        v48 = 0;
        goto LABEL_55;
      }

      v52 = objc_opt_class();
      v46 = [v32 copy];
      v47 = [v52 editableBezierPathSourceWithBezierPath:v46];
    }

    v48 = v47;
LABEL_55:

    v58 = [CRLCanvasInfoGeometry alloc];
    v59 = [(CRLCanvasLayout *)self originalPureGeometry];
    v60 = v59;
    if (v59)
    {
      [v59 fullTransform];
    }

    else
    {
      memset(&v129, 0, sizeof(v129));
    }

    v61 = -[CRLCanvasInfoGeometry initWithFullTransform:widthValid:heightValid:](v58, "initWithFullTransform:widthValid:heightValid:", &v129, [*(&self->mDynamicPencilKitStrokePathCompactData + 3) widthValid], objc_msgSend(*(&self->mDynamicPencilKitStrokePathCompactData + 3), "heightValid"));

    v49 = [(CRLCanvasInfoGeometry *)v61 geometryWithNewBounds:v34, v36, v38, v40];

    goto LABEL_59;
  }

  v48 = [v30 copy];
  [v48 scaleToNaturalSize:{width, height}];
  v49 = [v124 copy];
  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    v50 = [*(&self->mDynamicMaskPath + 3) hasHorizontalFlip];
    v51 = [*(&self->mDynamicMaskPath + 3) hasVerticalFlip];
    [v48 setHasHorizontalFlip:v50 ^ v10];
    [v48 setHasVerticalFlip:v51 ^ v9];
  }

LABEL_59:
  if (*(&self->mInitialPathSource + 3))
  {
    if ([(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
    {
      v62 = [*(&self->mInitialPathSource + 3) copy];
      [*(&self->mDynamicMaskPath + 3) naturalSize];
      v64 = v63;
      v66 = v65;
      [v48 naturalSize];
      CGAffineTransformMakeScale(&v129, v67 / v64, v68 / v66);
      [(CRLBezierPath *)v62 transformUsingAffineTransform:&v129];
    }

    else
    {
      v62 = objc_alloc_init(CRLBezierPath);
    }
  }

  else
  {
    v62 = 0;
  }

  objc_storeStrong((&self->mCachedEditableBezierPathSource + 3), v48);
  objc_storeStrong((&self->mCachedPathSource + 3), v49);
  objc_storeStrong((&self->mDynamicPathSource + 3), v62);
  if (*(&self->mInitialMaskPath + 3) && [(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
  {
    v69 = *&a3->c;
    *&v129.a = *&a3->a;
    *&v129.c = v69;
    *&v129.tx = *&a3->tx;
    v70 = sub_100139A14(&v129.a);
    v72 = v71;
    v73 = v70;
    v74 = v71;
    v75 = fminf(v73, v74);
    v76 = vabdd_f64(0.0, v75) < 0.00999999978 || v75 == 0.0;
    v77 = fmaxf(v73, v74);
    v78 = v76 ? v77 : v75;
    [*(&self->mInitialMaskPath + 3) width];
    [(CRLShapeLayout *)self dynamicStrokeWidthUpdateToValue:v79 * v78];
    v80 = *(&self->mInitialInfoGeometry + 3);
    if (v80)
    {
      [v80 renderScaleX];
      v82 = v70 * v81;
      if (v82 == 0.0 || vabdd_f64(0.0, v82) < 0.00999999978)
      {
        [*(&self->mDynamicInfoGeometry + 3) renderScaleX];
        v82 = v83;
      }

      [*(&self->mInitialInfoGeometry + 3) renderScaleY];
      v85 = v72 * v84;
      if (v85 == 0.0 || vabdd_f64(0.0, v85) < 0.00999999978)
      {
        [*(&self->mDynamicInfoGeometry + 3) renderScaleY];
        v85 = v86;
      }

      [(CRLShapeLayout *)self dynamicallySetPencilKitStrokePathCompactDataRenderScaleX:v82 y:v85];
    }
  }

  v87 = BYTE3(self->super.mDynamicOpacity);
  [(CRLShapeLayout *)self invalidatePath];
  [(CRLShapeLayout *)self invalidateFrame];
  BYTE3(self->super.mDynamicOpacity) = BYTE3(self->super.mDynamicOpacity) & 0xF1 | v87 & 0xE;
  if ([(CRLShapeLayout *)self i_shouldTryToScaleCachedRectsDuringResize])
  {
    if ([(CRLShapeLayout *)self p_canResizeViaTransform])
    {
      [*(&self->mCachedEditableBezierPathSource + 3) naturalSize];
      *(&self->mCachedPathBoundsStruct.originalCachedRect.size.height + 3) = sub_10011ECB4();
      *(&self->mCachedPathBoundsStruct.isValid + 3) = v88;
      *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin.x + 3) = v89;
      *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin.y + 3) = v90;
      *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.width + 3) = 1;
    }

    if ([(CRLShapeLayout *)self p_dynamicallyUpdatingStrokedFramesDuringResize]&& v123)
    {
      v91 = [(CRLShapeLayout *)self stroke];
      if (v91 && (v92 = v91, -[CRLShapeLayout stroke](self, "stroke"), v93 = objc_claimAutoreleasedReturnValue(), v94 = [v93 shouldRender], v93, v92, (v94 & 1) != 0))
      {
        v95 = *&CGAffineTransformIdentity.c;
        *&v129.a = *&CGAffineTransformIdentity.a;
        *&v129.c = v95;
        *&v129.tx = *&CGAffineTransformIdentity.tx;
        v96 = self;
        v97 = v96;
        do
        {
          if (![v97 isBeingManipulated])
          {
            break;
          }

          v98 = [v97 originalPureGeometry];
          v99 = v98;
          if (v98)
          {
            [v98 transform];
          }

          else
          {
            memset(&t2, 0, sizeof(t2));
          }

          t1 = v129;
          CGAffineTransformConcat(&v129, &t1, &t2);

          v100 = objc_opt_class();
          v101 = [v97 parent];
          v102 = sub_100014370(v100, v101);

          v97 = v102;
        }

        while (v102);
        v103 = [CRLBezierPath bezierPathWithRect:*(&v96->mCachedPathBoundsStruct.cachedRect.size.width + 3), *(&v96->mCachedPathBoundsStruct.cachedRect.size.height + 3), *(&v96->mCachedPathBoundsStruct.originalCachedRect.origin.x + 3), *(&v96->mCachedPathBoundsStruct.originalCachedRect.origin.y + 3)];
        v104 = *&a3->c;
        *&t1.a = *&a3->a;
        *&t1.c = v104;
        *&t1.tx = *&a3->tx;
        memset(&t2, 0, sizeof(t2));
        v126 = v129;
        sub_100139E2C(&t1, &v126, &t2);
        t1 = t2;
        [v103 transformUsingAffineTransform:&t1];
        [v103 bounds];
        v106 = v105;
        v108 = v107;
        v110 = v109;
        v112 = v111;
        v113 = *&a3->c;
        *&v126.a = *&a3->a;
        *&v126.c = v113;
        *&v126.tx = *&a3->tx;
        v125 = v129;
        sub_100139E2C(&v126, &v125, &t1);
        v114 = sub_10011F31C(v106, v108, vaddq_f64(*&t1.tx, vmlaq_n_f64(vmulq_n_f64(*&t1.c, CGPointZero.y), *&t1.a, CGPointZero.x)).f64[0]);
        v116 = v115;
      }

      else
      {
        [*(&self->mCachedEditableBezierPathSource + 3) naturalSize];
        v114 = sub_10011ECB4();
        v116 = v117;
        v110 = v118;
        v112 = v119;
      }

      *(&self->mCachedPath + 3) = v114;
      *(&self->mCachedPathHasAtLeastTwoVisuallyDistinctSubregions + 1) = v116;
      *(&self->mCachedPathBoundsStruct.cachedRect.origin.x + 3) = v110;
      *(&self->mCachedPathBoundsStruct.cachedRect.origin.y + 3) = v112;
      *(&self->mCachedPathBoundsStruct.originalCachedRect.size.width + 3) = 1;
      v132 = *(&self->mCachedAlignmentFrame.cachedRect.size.width + 3);
      v120 = *&a4->c;
      *&v129.a = *&a4->a;
      *&v129.c = v120;
      *&v129.tx = *&a4->tx;
      *(&self->mClippedPathRotatedTransform.tx + 3) = CGRectApplyAffineTransform(v132, &v129);
      *(&self->mCachedAlignmentFrame.originalCachedRect.size.width + 3) = 1;
      v121 = &self->mCachedPathBoundsWithoutStrokeStruct.isValid + 3;
      v133 = *(v121 + 1);
      v129 = v130;
      *v121 = CGRectApplyAffineTransform(v133, &v129);
      *(v121 + 16) = 1;
    }
  }
}

- (void)endResize
{
  v3.receiver = self;
  v3.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v3 endResize];
  [(CRLShapeLayout *)self p_endResizeOrFreeTransform];
}

- (void)endFreeTransform
{
  v3.receiver = self;
  v3.super_class = CRLShapeLayout;
  [(CRLCanvasLayout *)&v3 endFreeTransform];
  [(CRLShapeLayout *)self p_endResizeOrFreeTransform];
}

- (void)p_endResizeOrFreeTransform
{
  if (*(&self->mInitialMaskPath + 3))
  {
    if ([(CRLShapeLayout *)self i_isInsideResizingFreehandDrawing])
    {
      [(CRLShapeLayout *)self dynamicStrokeWidthChangeDidEnd];
      if (*(&self->mInitialInfoGeometry + 3))
      {
        [(CRLShapeLayout *)self dynamicPencilKitStrokePathCompactDataRenderScaleDidEnd];
      }
    }
  }

  v3 = objc_opt_class();
  v22 = sub_100014370(v3, *(&self->mCachedEditableBezierPathSource + 3));
  if (v22)
  {
    [v22 scalar];
    v5 = v4;
    [v22 maxScalar];
    [v22 setScalar:{sub_1004C3240(v5, 0.0, v6)}];
  }

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, *(&self->mCachedEditableBezierPathSource + 3));
  v9 = v8;
  if (v8)
  {
    [v8 minPointValue];
    v11 = v10;
    v13 = v12;
    [v9 maxPointValue];
    v15 = v14;
    v17 = v16;
    [v9 point];
    v19 = v18;
    v21 = sub_1004C3240(v20, v11, v15);
    [v9 setPoint:{v21, sub_1004C3240(v19, v13, v17)}];
  }

  [(CRLShapeLayout *)self invalidatePath];
  [(CRLShapeLayout *)self invalidateFrame];
}

- (void)dynamicallyMovingLineSegmentWithTracker:(id)a3
{
  v4 = [a3 currentGeometry];
  v5 = [v4 copy];

  v6 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v5;
  v7 = v5;

  [*(&self->mCachedPathSource + 3) size];
  [*(&self->mCachedEditableBezierPathSource + 3) setNaturalSize:?];

  [(CRLShapeLayout *)self invalidatePath];

  [(CRLShapeLayout *)self invalidateFrame];
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLCanvasLayout *)self layoutController];
  v7 = [v6 canvas];
  if (![v7 isCanvasInteractive])
  {

LABEL_6:
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004BA8FC;
    v15[3] = &unk_10183C8A8;
    *&v15[5] = x;
    *&v15[6] = y;
    v15[4] = self;
    [(CRLShapeLayout *)self p_performBlockOkayToSetGeometry:v15];
    return;
  }

  v8 = [(CRLShapeLayout *)self isBeingManipulated];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(CRLCanvasLayout *)self layoutController];
  v10 = [v9 canvas];
  v11 = [v10 canvasController];

  v12 = [v11 tmCoordinator];
  v13 = [v12 controllingTM];
  v14 = [v13 tracker];

  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }
}

- (void)setDynamicGeometry:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004BA9D0;
  v5[3] = &unk_10183AE28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(CRLShapeLayout *)self p_performBlockOkayToSetGeometry:v5];
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = *(&self->mCachedEditableBezierPathSource + 3);
  v9 = [a4 knob];
  v10 = [v9 tag];
  [(CRLShapeLayout *)self boundsForStandardKnobs];
  [v8 setControlKnobPosition:v10 toPoint:{sub_10011F31C(x, y, v11)}];

  [(CRLShapeLayout *)self invalidatePath];

  [(CRLShapeLayout *)self invalidateFrame];
}

- (void)dynamicMovePathKnobDidBegin
{
  if (([*(&self->mCachedEditableBezierPathSource + 3) isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    v3 = [(CRLShapeLayout *)self editablePathSource];
    v4 = *(&self->mCachedEditableBezierPathSource + 3);
    *(&self->mCachedEditableBezierPathSource + 3) = v3;
  }

  [*(&self->mCachedEditableBezierPathSource + 3) setLockedFlipTransform:1];
  v5 = [(CRLCanvasLayout *)self pureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 fullTransform];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [CRLCanvasInfoGeometry geometryFromFullTransform:v9];
  v8 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v7;
}

- (void)dynamicallyMovedPathKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  [(CRLShapeLayout *)self p_updateResizeInfoGeometryFromDynamicPathSource:a4];
  [(CRLShapeLayout *)self invalidatePath];

  [(CRLShapeLayout *)self invalidateFrame];
}

- (void)dynamicMovePathKnobDidEnd
{
  [(CRLShapeLayout *)self p_updateResizeInfoGeometryFromDynamicPathSource];
  [*(&self->mCachedEditableBezierPathSource + 3) setLockedFlipTransform:0];
  v3 = *(&self->mCachedEditableBezierPathSource + 3);

  [v3 alignToOrigin];
}

- (void)dynamicPencilKitStrokePathCompactDataRenderScaleDidBegin
{
  if (*(&self->mDynamicInfoGeometry + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138294C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382960();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013829F4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicPencilKitStrokePathCompactDataRenderScaleDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1404 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicPencilKitStrokePathCompactData"];
  }

  v6 = [(CRLShapeLayout *)self pencilKitStrokePathCompactData];
  v7 = [v6 copy];
  v8 = *(&self->mDynamicInfoGeometry + 3);
  *(&self->mDynamicInfoGeometry + 3) = v7;

  if (!*(&self->mDynamicInfoGeometry + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382A1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382A44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382AD8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicPencilKitStrokePathCompactDataRenderScaleDidBegin]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1409 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicPencilKitStrokePathCompactData"];
  }
}

- (void)dynamicallySetPencilKitStrokePathCompactDataRenderScaleX:(double)a3 y:(double)a4
{
  v5 = a3;
  v7 = *(&self->mDynamicInfoGeometry + 3);
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382B00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382B14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382BA8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicallySetPencilKitStrokePathCompactDataRenderScaleX:y:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1413 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicPencilKitStrokePathCompactData"];

    v7 = *(&self->mDynamicInfoGeometry + 3);
  }

  *&a3 = v5;
  [v7 setRenderScaleX:a3];
  *&v11 = a4;
  [*(&self->mDynamicInfoGeometry + 3) setRenderScaleY:v11];
}

- (void)dynamicPencilKitStrokePathCompactDataRenderScaleDidEnd
{
  v2 = *(&self->mDynamicInfoGeometry + 3);
  *(&self->mDynamicInfoGeometry + 3) = 0;
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v15 takeRotationFromTracker:v4];
  v5 = [(CRLCanvasLayout *)self info];
  v6 = [v5 geometry];

  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v7 = [v6 copy];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (v4)
    {
      [v4 rotateTransform];
    }

    else
    {
      v10 = 0uLL;
      v11 = 0uLL;
      v9 = 0uLL;
    }

    [(CRLCanvasLayout *)self layoutTransformInInfoSpace:&v9];
    v9 = v12;
    v10 = v13;
    v11 = v14;
    v7 = [v6 geometryByAppendingTransform:&v9];
  }

  v8 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v7;

  [(CRLCanvasLayout *)self invalidatePosition];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v20 takeFreeTransformFromTracker:v4];
  if ([v4 hasEverResized])
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    if (v4)
    {
      [v4 resizeTransformForLayout:self];
    }

    [v4 currentSizeForLayout:self];
    v6 = v5;
    v8 = v7;
    v9 = [v4 currentGeometryForLayout:self];
    v14 = v17;
    v15 = v18;
    v16 = v19;
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;
    [(CRLShapeLayout *)self p_applyResizeTransform:&v14 transformInParentSpace:v13 preservingAspectRatio:1 layoutSize:v9 geometryForLayout:0 hasHorizontalFlip:0 hasVerticalFlip:v6, v8];
  }

  else
  {
    v10 = [(CRLCanvasLayout *)self info];
    v9 = [v10 geometry];

    if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
    {
      v11 = [v4 currentGeometryForLayout:self];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      if (v4)
      {
        [v4 freeTransformForLayout:self];
      }

      else
      {
        v15 = 0uLL;
        v16 = 0uLL;
        v14 = 0uLL;
      }

      [(CRLCanvasLayout *)self layoutTransformInInfoSpace:&v14];
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v11 = [v9 geometryByAppendingTransform:&v14];
    }

    v12 = *(&self->mCachedPathSource + 3);
    *(&self->mCachedPathSource + 3) = v11;

    [(CRLCanvasLayout *)self invalidatePosition];
  }
}

- (BOOL)isBeingManipulated
{
  if ([(CRLShapeLayout *)self isStrokeBeingManipulated])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRLShapeLayout;
  return [(CRLCanvasLayout *)&v4 isBeingManipulated];
}

- (CRLLineEnd)strokeHeadLineEnd
{
  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 headLineEnd];
  if (v4)
  {
    v5 = [(CRLShapeLayout *)self stroke];
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = [v6 headLineEnd];
    v8 = [v5 strokeLineEnd:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CRLLineEnd)strokeTailLineEnd
{
  v3 = [(CRLShapeLayout *)self shapeInfo];
  v4 = [v3 tailLineEnd];
  if (v4)
  {
    v5 = [(CRLShapeLayout *)self stroke];
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = [v6 tailLineEnd];
    v8 = [v5 strokeLineEnd:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)numberOfControlKnobs
{
  v2 = [(CRLShapeLayout *)self pathSource];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  v10 = [v9 numberOfControlKnobs];
  return v10;
}

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(CRLShapeLayout *)self pathSource];
  v8 = objc_opt_class();
  v14 = sub_1003038E0(v7, v8, 1, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLSmartPathSource);

  [v14 setControlKnobPosition:a3 toPoint:{x, y}];
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v4 = [(CRLShapeLayout *)self pathSource];
  v5 = objc_opt_class();
  v11 = sub_1003038E0(v4, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLSmartPathSource);

  [v11 getControlKnobPosition:a3];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (*(&self->mDynamicStroke + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382BD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382BE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382C78();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicallySetBezierPathSource:atUnscaledOrigin:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1511 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicStrokeOffsetArray"];
  }

  [(CRLShapeLayout *)self dynamicallySetBezierPathSource:v7 atUnscaledOrigin:0 withPatternOffsetsBySubpath:x, y];
}

- (void)dynamicallySetBezierPathSource:(id)a3 atUnscaledOrigin:(CGPoint)a4 withPatternOffsetsBySubpath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!*(&self->mCachedEditableBezierPathSource + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382CA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382CB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382D48();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLShapeLayout dynamicallySetBezierPathSource:atUnscaledOrigin:withPatternOffsetsBySubpath:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1518 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicPathSource"];
  }

  objc_storeStrong((&self->mCachedEditableBezierPathSource + 3), a3);
  objc_storeStrong((&self->mLastParentLimitedSize.height + 3), a5);
  v13 = [*(&self->mCachedEditableBezierPathSource + 3) bezierPath];
  v14 = [v13 bounds];
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v17 size:v19, fmax(v21, 1.0), fmax(v23, 1.0)];
  v25 = [CRLCanvasInfoGeometry alloc];
  v26 = [(CRLCanvasAbstractLayout *)self parent];
  v27 = [v26 geometryInRoot];
  v28 = [(CRLCanvasInfoGeometry *)v25 initWithLayoutGeometry:v27];
  v29 = [(CRLCanvasInfoGeometry *)v24 geometryRelativeToGeometry:v28];

  if ([v29 isEqual:*(&self->mCachedPathSource + 3)])
  {
    BYTE3(self->super.mDynamicOpacity) |= 1u;
    v30 = *(&self->super._suppressesShadowsAndReflections + 3);
    *(&self->super._suppressesShadowsAndReflections + 3) = 0;

    BYTE3(self->super.mDynamicOpacity) |= 0x80u;
    v31 = *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3);
    *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3) = 0.0;

    *(&self->mCachedClippedPathStroked.originalCachedRect.size.width + 3) = 0;
    *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3) = 0;
  }

  else
  {
    objc_storeStrong((&self->mCachedPathSource + 3), v29);
    [(CRLShapeLayout *)self invalidatePath];
    [(CRLShapeLayout *)self invalidateFrame];
  }
}

- (void)dynamicallyMakeShapeInvisible
{
  BYTE3(self->mDynamicFill) = 1;
  v3 = [(CRLCanvasLayout *)self layoutController];
  v6 = [v3 canvas];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 repForLayout:self];
    if (v5)
    {
      [v6 invalidateContentLayersForRep:v5];
    }

    v4 = v6;
  }
}

- (void)invalidateExteriorWrap
{
  v8.receiver = self;
  v8.super_class = CRLShapeLayout;
  [(CRLBoardItemLayout *)&v8 invalidateExteriorWrap];
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self layoutController];
  v5 = [v4 canvas];
  v6 = [v5 repForLayout:self];
  v7 = sub_100013F00(v3, v6);

  [v7 invalidateExteriorWrap];
}

- (id)computeWrapPath
{
  v3 = [(CRLShapeLayout *)self fill];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isClear] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CRLShapeLayout *)self computeWrapPathClosed:v5];

  return v6;
}

- (id)computeWrapPathClosed:(BOOL)a3
{
  v5 = [(CRLShapeLayout *)self path];
  v6 = [(CRLShapeLayout *)self stroke];
  v7 = v6;
  if (v6 && [v6 shouldRender])
  {
    v8 = [(CRLShapeLayout *)self path];
    v9 = [v8 copy];

    [v9 takeAttributesFromStroke:v7];
    v5 = [v9 strokedCopy];
    if (a3 || [v9 isEffectivelyClosed])
    {
      v10 = [v9 uniteWithBezierPath:v5];
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    if ([(CRLShapeLayout *)self pathIsOpen])
    {
      v17 = [(CRLShapeLayout *)self p_unitePath:v11 withLineEndForHead:1 stroke:v7];

      v11 = [(CRLShapeLayout *)self p_unitePath:v17 withLineEndForHead:0 stroke:v7];
    }
  }

  else
  {
    v11 = [v5 copy];
  }

  [(CRLShapeLayout *)self pathBounds];
  v13 = v12;
  v15 = v14;
  if (!sub_10011ECC8(CGPointZero.x, CGPointZero.y, v12, v14))
  {
    CGAffineTransformMakeTranslation(&v18, -v13, -v15);
    [v11 transformUsingAffineTransform:&v18];
  }

  return v11;
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v13.receiver = self;
  v13.super_class = CRLShapeLayout;
  v7 = *&a4->c;
  v10 = *&a4->a;
  v11 = v7;
  v12 = *&a4->tx;
  v8 = a3;
  [(CRLCanvasLayout *)&v13 transferLayoutGeometryToInfo:v8 withAdditionalTransform:&v10 assertIfInDocument:v5];
  v9 = [(CRLShapeLayout *)self pathSource:v10];
  [v8 setPathSource:v9];
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v23.receiver = self;
  v23.super_class = CRLShapeLayout;
  v4 = *&a3->c;
  v22[0] = *&a3->a;
  v22[1] = v4;
  v22[2] = *&a3->tx;
  v5 = [(CRLCanvasLayout *)&v23 commandToClampModelToLayoutSizeWithAdditionalTransform:v22];
  v6 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v6 addCommandIfNotNil:v5];
  v7 = [(CRLShapeLayout *)self shapeInfo];
  v8 = [(CRLShapeLayout *)self pathSource];
  [v8 naturalSize];
  v10 = v9;
  v12 = v11;
  v13 = [v7 pathSource];
  [v13 naturalSize];
  v15 = v14;
  v17 = v16;

  if (v10 != v15 || v12 != v17)
  {
    v18 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v7 pathSource:v8];
    [(CRLCommandGroup *)v6 addCommand:v18];
  }

  if ([(CRLCommandGroup *)v6 isEmpty])
  {
    v19 = 0;
  }

  else
  {
    v19 = v6;
  }

  v20 = v19;

  return v19;
}

- (void)validate
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1004BC34C;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  [(CRLShapeLayout *)self p_performBlockOkayToSetGeometry:v2];
}

- (id)p_cachedPath
{
  if (BYTE3(self->super.mDynamicOpacity))
  {
    v3 = [(CRLShapeLayout *)self pathSource];
    v4 = [v3 bezierPath];
    v5 = *(&self->super._suppressesShadowsAndReflections + 3);
    *(&self->super._suppressesShadowsAndReflections + 3) = v4;

    BYTE3(self->super.mDynamicOpacity) &= ~1u;
  }

  v6 = *(&self->super._suppressesShadowsAndReflections + 3);

  return v6;
}

- (CGRect)p_cachedPathBounds
{
  v2 = (&self->mCachedPath + 3);
  if (*(&self->mCachedPathBoundsStruct.originalCachedRect.size.width + 3))
  {
    v3 = *v2;
    v4 = *(&self->mCachedPathHasAtLeastTwoVisuallyDistinctSubregions + 1);
    v5 = *(&self->mCachedPathBoundsStruct.cachedRect.origin.x + 3);
    v6 = *(&self->mCachedPathBoundsStruct.cachedRect.origin.y + 3);
  }

  else
  {
    [*(&self->mDynamicStrokeOffsetArray + 3) computePathBounds];
    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    *(v2 + 16) = 1;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_cachedClippedPathStroked
{
  v2 = (&self->mCachedPathBoundsWithoutStrokeStruct.isValid + 3);
  if (*(&self->mCachedClippedPathStroked.originalCachedRect.size.width + 3))
  {
    v3 = *v2;
    v4 = *(&self->mCachedClippedPath + 3);
    v5 = *(&self->mCachedClippedPathStroked.cachedRect.origin.x + 3);
    v6 = *(&self->mCachedClippedPathStroked.cachedRect.origin.y + 3);
  }

  else
  {
    if ([*(&self->mDynamicStrokeOffsetArray + 3) shouldComputeSeparateClippedPathBounds])
    {
      v8 = *(&self->mDynamicStrokeOffsetArray + 3);
      v9 = *&CGAffineTransformIdentity.c;
      v10[0] = *&CGAffineTransformIdentity.a;
      v10[1] = v9;
      v10[2] = *&CGAffineTransformIdentity.tx;
      [v8 computeClippedPathBoundsWithTransform:v10];
    }

    else
    {
      [(CRLShapeLayout *)self p_cachedPathBounds];
    }

    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    *(v2 + 16) = 1;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_updatedCachedClipRectIfNeededForRotation:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  v29 = *&a3->a;
  v30 = v5;
  v6 = &self->mCachedClippedPathRotatedStroked.originalCachedRect.size.height + 3;
  v7 = *&a3->c;
  v25 = *&a3->a;
  v26 = v7;
  v27 = 0;
  v28 = 0;
  v8 = *(&self->mClippedPathRotatedTransform.a + 3);
  v24[0] = *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.height + 3);
  v24[1] = v8;
  v24[2] = *(&self->mClippedPathRotatedTransform.c + 3);
  if (sub_10011ED78(&v25, v24))
  {
    v9 = (&self->mCachedClippedPathStroked.originalCachedRect.size.height + 3);
    v10 = (&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3);
    if (*(&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3))
    {
      v11 = *v9;
      v12 = *(&self->mCachedClippedPathStroked.isValid + 3);
      v13 = *(&self->mCachedClippedPathRotatedStroked.cachedRect.origin.x + 3);
      v14 = *(&self->mCachedClippedPathRotatedStroked.cachedRect.origin.y + 3);
      goto LABEL_11;
    }

    v15 = 1;
  }

  else
  {
    v15 = [(CRLCanvasLayout *)self layoutState]!= 4 && [(CRLCanvasLayout *)self layoutState]!= 5;
    v9 = (&self->mCachedClippedPathStroked.originalCachedRect.size.height + 3);
    v10 = (&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3);
  }

  v16 = *(&self->mDynamicStrokeOffsetArray + 3);
  v25 = v29;
  v26 = v30;
  v27 = 0;
  v28 = 0;
  [v16 computeClippedPathBoundsWithTransform:&v25];
  v13 = v17;
  v14 = v18;
  if (v15)
  {
    *v9 = v11;
    v9[1] = v12;
    v9[2] = v17;
    v9[3] = v18;
    v19 = v30;
    *v6 = v29;
    *(v6 + 1) = v19;
    *(v6 + 4) = 0;
    *(v6 + 5) = 0;
    *v10 = 1;
  }

LABEL_11:
  v20 = sub_10011F334(v11, v12, a3->tx);
  v22 = v13;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)p_cachedPathBoundsWithoutStroke
{
  v2 = (&self->mCachedPathBoundsStruct.originalCachedRect.size.height + 3);
  if (*(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.width + 3))
  {
    v3 = *v2;
    v4 = *(&self->mCachedPathBoundsStruct.isValid + 3);
    v5 = *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin.x + 3);
    v6 = *(&self->mCachedPathBoundsWithoutStrokeStruct.cachedRect.origin.y + 3);
  }

  else
  {
    v7 = [(CRLShapeLayout *)self path];
    [v7 bounds];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;

    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    *(v2 + 16) = 1;
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)p_cachedPathIsOpen
{
  if ((BYTE3(self->super.mDynamicOpacity) & 2) != 0)
  {
    v3 = [(CRLShapeLayout *)self path];
    *(&self->mShapeInvalidFlags + 3) = [v3 isOpen];

    BYTE3(self->super.mDynamicOpacity) &= ~2u;
  }

  return *(&self->mShapeInvalidFlags + 3);
}

- (BOOL)p_cachedPathIsLineSegment
{
  if ((BYTE3(self->super.mDynamicOpacity) & 4) != 0)
  {
    v3 = [(CRLShapeLayout *)self path];
    *(&self->mShapeInvalidFlags + 4) = [v3 isLineSegment];

    BYTE3(self->super.mDynamicOpacity) &= ~4u;
  }

  return *(&self->mShapeInvalidFlags + 4);
}

- (BOOL)p_cachedPathHasAtLeastTwoVisuallyDistinctSubregions
{
  if ((BYTE3(self->super.mDynamicOpacity) & 8) != 0)
  {
    v3 = [(CRLShapeLayout *)self path];
    *(&self->mShapeInvalidFlags + 5) = [v3 hasAtLeastTwoVisuallyDistinctSubregions];

    BYTE3(self->super.mDynamicOpacity) &= ~8u;
  }

  return *(&self->mShapeInvalidFlags + 5);
}

- (void)p_invalidateClippedPath
{
  BYTE3(self->super.mDynamicOpacity) |= 0x80u;
  *(&self->mCachedClippedPathStroked.originalCachedRect.size.width + 3) = 0;
  *(&self->mCachedClippedPathRotatedStroked.originalCachedRect.size.width + 3) = 0;
  v2 = *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3);
  *(&self->mCachedPathBoundsWithoutStrokeStruct.originalCachedRect.size.height + 3) = 0.0;
}

- (void)p_validateHeadAndTail
{
  if ((BYTE3(self->super.mDynamicOpacity) & 0x10) != 0)
  {
    BYTE3(self->super.mDynamicOpacity) &= ~0x10u;
    v4 = [(CRLShapeLayout *)self path];
    [v4 getStartPoint:&self->mHeadPoint.x + 3 andEndPoint:&self->mCachedAlignmentFrameInRootTransformInRoot.tx + 3];
  }
}

- (void)p_validateHeadLineEnd
{
  [(CRLShapeLayout *)self p_validateHeadAndTail];
  if ((BYTE3(self->super.mDynamicOpacity) & 0x20) != 0)
  {
    BYTE3(self->super.mDynamicOpacity) &= ~0x20u;
    memset(v9, 0, 24);
    v3 = [(CRLShapeLayout *)self path];
    v4 = [(CRLShapeLayout *)self shapeInfo];
    v5 = [v4 headLineEnd];
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = [v6 tailLineEnd];
    v8 = [(CRLShapeLayout *)self stroke];
    [CRLBezierPath lineEndPositioningOnPath:v3 atHead:1 headPoint:v5 tailPoint:v7 headLineEnd:v8 tailLineEnd:*(&self->mCachedAlignmentFrameInRootTransformInRoot.tx + 3) stroke:*(&self->mCachedAlignmentFrameInRootTransformInRoot.ty + 3), *(&self->mHeadPoint.x + 3), *(&self->mHeadPoint.y + 3)];

    *(&self->mTailLineEndPoint.x + 3) = 0.0;
    *(&self->mTailPoint + 3) = *(v9 + 8);
    *(&self->mHeadLineEndAngle + 3) = 0.0;
    *(&self->mHeadCutSegment + 3) = 0;
  }
}

- (void)p_validateTailLineEnd
{
  [(CRLShapeLayout *)self p_validateHeadAndTail];
  if ((BYTE3(self->super.mDynamicOpacity) & 0x40) != 0)
  {
    BYTE3(self->super.mDynamicOpacity) &= ~0x40u;
    memset(v9, 0, 24);
    v3 = [(CRLShapeLayout *)self path];
    v4 = [(CRLShapeLayout *)self shapeInfo];
    v5 = [v4 headLineEnd];
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v7 = [v6 tailLineEnd];
    v8 = [(CRLShapeLayout *)self stroke];
    [CRLBezierPath lineEndPositioningOnPath:v3 atHead:0 headPoint:v5 tailPoint:v7 headLineEnd:v8 tailLineEnd:*(&self->mCachedAlignmentFrameInRootTransformInRoot.tx + 3) stroke:*(&self->mCachedAlignmentFrameInRootTransformInRoot.ty + 3), *(&self->mHeadPoint.x + 3), *(&self->mHeadPoint.y + 3)];

    *(&self->mTailLineEndPoint.y + 3) = 0.0;
    *(&self->mHeadLineEndPoint + 3) = *(v9 + 8);
    *(&self->mTailLineEndAngle + 3) = 0.0;
    *(&self->mTailCutSegment + 3) = 0;
  }
}

- (id)p_createClippedPath
{
  if (!-[CRLShapeLayout pathIsOpen](self, "pathIsOpen") || (-[CRLShapeLayout stroke](self, "stroke"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 supportsWidth], v3, !v4) || (-[CRLShapeLayout p_validateHeadLineEnd](self, "p_validateHeadLineEnd"), -[CRLShapeLayout p_validateTailLineEnd](self, "p_validateTailLineEnd"), v5 = *(&self->mTailLineEndPoint.x + 3), v6 = *(&self->mHeadLineEndAngle + 3), v20 = *(&self->mTailPoint + 3), v7 = *(&self->mHeadCutSegment + 3), v16 = *(&self->mHeadLineEndPoint + 3), v8 = *(&self->mTailLineEndPoint.y + 3), v9 = *(&self->mTailLineEndAngle + 3), v10 = *(&self->mTailCutSegment + 3), -[CRLShapeLayout path](self, "path"), v11 = objc_claimAutoreleasedReturnValue(), -[CRLShapeLayout stroke](self, "stroke"), v12 = objc_claimAutoreleasedReturnValue(), v18 = v10, v19 = v5, v21 = v6, v22 = v7, v15 = v8, v17 = v9, +[CRLBezierPath createClippedPath:headPositioning:tailPositioning:stroke:](CRLBezierPath, "createClippedPath:headPositioning:tailPositioning:stroke:", v11, &v19, &v15, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    [(CRLShapeLayout *)self path];
    return objc_claimAutoreleasedReturnValue();
  }

  return v13;
}

- (id)p_unitePath:(id)a3 withLineEndForHead:(BOOL)a4 stroke:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v8;
  if (v6)
  {
    [(CRLShapeLayout *)self strokeHeadLineEnd];
  }

  else
  {
    [(CRLShapeLayout *)self strokeTailLineEnd];
  }
  v11 = ;
  v12 = v11;
  v13 = v10;
  if (v11)
  {
    v13 = v10;
    if (([v11 isNone] & 1) == 0)
    {
      if (v6)
      {
        [(CRLShapeLayout *)self headLineEndPoint];
        v15 = v14;
        v17 = v16;
        [(CRLShapeLayout *)self headLineEndAngle];
      }

      else
      {
        [(CRLShapeLayout *)self tailLineEndPoint];
        v15 = v19;
        v17 = v20;
        [(CRLShapeLayout *)self tailLineEndAngle];
      }

      v21 = v18;
      [(CRLShapeLayout *)self lineEndScale:v6];
      v23 = [v9 pathForLineEnd:v12 wrapPath:1 atPoint:v15 atAngle:v17 withScale:{v21, v22}];
      v13 = [v10 uniteWithBezierPath:v23];
    }
  }

  return v13;
}

- (void)p_updateResizeInfoGeometryFromDynamicPathSource
{
  v14 = *(&self->mCachedEditableBezierPathSource + 3);
  v3 = [v14 bezierPath];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(&self->mCachedPathSource + 3) geometryWithNewBounds:{v5, v7, v9, v11}];
  v13 = *(&self->mCachedPathSource + 3);
  *(&self->mCachedPathSource + 3) = v12;

  [v14 alignToOrigin];
}

- (id)commandForSettingCornerRadius:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingCornerRadius:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingNumberOfSides:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingNumberOfSides:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingStarPoints:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingStarPoints:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingStarRadius:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingStarRadius:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingArrowHead:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingArrowHead:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingArrowIndent:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingArrowIndent:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingCalloutCornerRadius:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingCalloutCornerRadius:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (id)commandForSettingCalloutTailSize:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingCalloutTailSize:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

- (double)adjustedCalloutTailPositionXWithValue:(double)a3
{
  v5 = [(CRLCanvasLayout *)self layoutController];
  v6 = [v5 canvas];
  v7 = [v6 isAnchoredAtRight];
  v8 = [(CRLCanvasLayout *)self inspectorGeometry];
  [CRLPathSourceCommandHelper adjustedCalloutTailPositionXWithValue:v7 isAnchoredAtRight:v8 layoutGeometry:a3];
  v10 = v9;

  return v10;
}

- (id)commandForSettingCalloutTailPositionX:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [(CRLCanvasLayout *)self layoutController];
  v8 = [v7 canvas];
  v9 = [v8 isAnchoredAtRight];
  v10 = [(CRLCanvasLayout *)self inspectorGeometry];
  v11 = [CRLPathSourceCommandHelper commandForSettingCalloutTailPositionX:v5 withPathSource:v6 shapeItem:v9 isAnchoredAtRight:v10 layoutGeometry:a3];

  return v11;
}

- (id)commandForSettingCalloutTailPositionY:(double)a3
{
  v5 = [(CRLShapeLayout *)self pathSource];
  v6 = [(CRLShapeLayout *)self shapeInfo];
  v7 = [CRLPathSourceCommandHelper commandForSettingCalloutTailPositionY:v5 withPathSource:v6 shapeItem:a3];

  return v7;
}

@end