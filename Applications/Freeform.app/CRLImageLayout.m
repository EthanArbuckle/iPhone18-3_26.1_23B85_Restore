@interface CRLImageLayout
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)hasAlpha;
- (BOOL)hasMaskingPath;
- (BOOL)isDraggingInMaskEditMode;
- (BOOL)isInvisible;
- (BOOL)isResizingInMaskEditMode;
- (BOOL)isRotatingInMaskEditMode;
- (BOOL)p_shouldUseDynamicInfoGeometryForOperation;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)layoutToImageTransform;
- (CGAffineTransform)layoutToMaskTransform;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3;
- (CGPoint)centerForConnecting;
- (CGPoint)centerForRotation;
- (CGPoint)centerForRotationInMaskMode;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (CGRect)pathBoundsWithoutStroke;
- (CGSize)sizeOfFrameRectIncludingCoverage;
- (CRLCanvasInfoGeometry)currentInfoGeometry;
- (CRLCanvasLayoutGeometry)imageGeometryInRoot;
- (CRLImageLayout)initWithInfo:(id)a3;
- (CRLSmartPathSource)smartPathSource;
- (_TtC8Freeform12CRLImageItem)imageInfo;
- (id)childInfosForChildLayouts;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)commandToResetToSize:(CGSize)a3;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
- (id)geometryForTransforming;
- (id)inspectorGeometry;
- (id)layoutGeometryFromInfo;
- (id)p_inspectorGeometryForUnmaskedImage;
- (id)visibleGeometries;
- (int64_t)maskEditModeForDragging;
- (int64_t)maskEditModeForFreeTransforming;
- (int64_t)maskEditModeForLayoutState;
- (int64_t)maskEditModeForResizing;
- (int64_t)maskEditModeForRotating;
- (void)beginDrag;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)beginEditingMaskInMaskEditMode:(int64_t)a3;
- (void)beginFreeTransformWithTracker:(id)a3;
- (void)beginResize;
- (void)beginRotate;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)endDrag;
- (void)endDynamicOperation;
- (void)endFreeTransform;
- (void)endMaskEditMode;
- (void)endResize;
- (void)endRotate;
- (void)maskWasApplied;
- (void)maskWasReset;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4;
- (void)p_createDynamicCopiesIfNeeded;
- (void)p_destroyDynamicCopiesIfNeeded;
- (void)p_setDynamicInfoGeometry:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)resizeWithTransform:(CGAffineTransform *)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeScaledImageGeometry:(id)a3 maskGeometry:(id)a4;
- (void)takeSizeFromTracker:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)updateChildrenFromInfo;
@end

@implementation CRLImageLayout

- (CRLImageLayout)initWithInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRLImageLayout;
  v3 = [(CRLMediaLayout *)&v9 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CRLImageLayout *)v3 imageInfo];
    if (v5)
    {
      v6 = v5;
      v7 = [(CRLImageLayout *)v5 maskInfo];

      if (v7)
      {
        *(&v4->mDynamicInfoGeometry + 3) = 1;
      }
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
  CGPathRelease(*(&self->mImageGeometry + 3));
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLImageLayout *)&v3 dealloc];
}

- (id)geometryForTransforming
{
  if ([(CRLImageLayout *)self maskEditModeForLayoutState]== 3)
  {
    [(CRLImageLayout *)self imageGeometry];
  }

  else
  {
    [(CRLCanvasAbstractLayout *)self geometry];
  }
  v3 = ;

  return v3;
}

- (id)visibleGeometries
{
  v7.receiver = self;
  v7.super_class = CRLImageLayout;
  v3 = [(CRLCanvasAbstractLayout *)&v7 visibleGeometries];
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    v4 = [(CRLImageLayout *)self imageGeometry];
    v5 = [v3 arrayByAddingObject:v4];

    v3 = v5;
  }

  return v3;
}

- (CRLCanvasInfoGeometry)currentInfoGeometry
{
  v2 = *(&self->mHasAlpha + 3);
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

- (id)layoutGeometryFromInfo
{
  v2 = [(CRLImageLayout *)self currentInfoGeometry];
  v3 = [CRLCanvasLayoutGeometry alloc];
  [v2 size];
  v5 = v4;
  v7 = v6;
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [(CRLCanvasLayoutGeometry *)v3 initWithSize:v10 transform:v5, v7];

  return v8;
}

- (id)computeLayoutGeometry
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);

  if (v5)
  {
    [v5 maximumFrameSizeForChild:self];
  }

  else
  {
    v6 = 1.79769313e308;
    v7 = 1.79769313e308;
  }

  if (*(&self->mLayoutToMaskTransform.ty + 3) != v6 || *(&self->mMaskIntersectsImage + 3) != v7)
  {
    *(&self->mLayoutToMaskTransform.ty + 3) = v6;
    *(&self->mMaskIntersectsImage + 3) = v7;
  }

  v9 = [(CRLImageLayout *)self maskLayout];
  if (v9)
  {
    v10 = [(CRLImageLayout *)self layoutGeometryFromInfo];
  }

  else
  {
    v75.receiver = self;
    v75.super_class = CRLImageLayout;
    v10 = [(CRLCanvasLayout *)&v75 computeLayoutGeometry];
  }

  v11 = v10;
  objc_storeStrong((&self->super._boundsForStandardKnobs.size.width + 3), v10);
  v12 = objc_opt_class();
  v13 = [(CRLMediaLayout *)self stroke];
  v14 = sub_100014370(v12, v13);

  CGPathRelease(*(&self->mImageGeometry + 3));
  *(&self->mImageGeometry + 3) = 0;
  v15 = [(CRLImageLayout *)self imageInfo];
  if (v9)
  {
    [v9 setPathScale:1.0];
    v16 = [v9 computeLayoutGeometry];
    v70 = v5;
    v71 = v14;
    if ([(CRLCanvasLayout *)self layoutState]!= 3)
    {
      v17 = [v15 geometry];
      [v17 angle];
      v19 = v18;
      v20 = [v15 maskInfo];
      v21 = [v20 geometry];
      [v21 angle];
      v23 = v19 + v22;

      [v16 size];
      v25 = v24;
      v27 = v26;
      CGAffineTransformMakeRotation(&v74, v23 * 0.0174532925);
      [(CRLCanvasLayout *)self scaleForInlineClampingUnrotatedSize:&v74 withTransform:v25, v27];
      v29 = v28;
      CGAffineTransformMakeScale(&v74, v28, v28);
      v30 = [v16 geometryByTransformingBy:&v74];

      CGAffineTransformMakeScale(&v74, v29, v29);
      v31 = [(CRLCanvasLayoutGeometry *)v11 geometryByTransformingBy:&v74];

      v32 = [(CRLImageLayout *)self maskLayout];
      [v32 setPathScale:v29];

      v33 = [(CRLImageLayout *)self maskLayout];
      [v33 setGeometry:v30];

      objc_storeStrong((&self->super._boundsForStandardKnobs.size.width + 3), v31);
      v16 = v30;
      v11 = v31;
    }

    v34 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v9 path]);
    [v9 pathBounds];
    CGAffineTransformMakeTranslation(&v74, -v35, -v36);
    [v34 transformUsingAffineTransform:&v74];
    [(CRLCanvasLayoutGeometry *)v11 size];
    v37 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformInvert(&v74, &t1);
    [v37 transformUsingAffineTransform:&v74];
    if (v34)
    {
      v42 = [v34 intersectBezierPath:v37];
    }

    else
    {
      v42 = v37;
    }

    v43 = v42;
    if (v42)
    {
      v44 = [v42 elementCount];
      BYTE3(self->mLayoutToMaskTransform.tx) = v44 > 1;
      if (v44 >= 2)
      {
        v45 = CGPathRetain([v43 CGPath]);
        *(&self->mImageGeometry + 3) = v45;
        v46 = [CRLBezierPath bezierPathWithCGPath:v45];
        [v46 boundsIncludingCRLStroke:v71];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        [v16 size];
        v78.origin.x = sub_10011ECB4();
        width = v78.size.width;
        height = v78.size.height;
        v80.origin.x = v48;
        v80.origin.y = v50;
        v80.size.width = v52;
        v80.size.height = v54;
        v79 = CGRectUnion(v78, v80);
        x = v79.origin.x;
        y = v79.origin.y;
        v40 = [(CRLCanvasLayoutGeometry *)[CRLCanvasMutableLayoutGeometry alloc] initWithFrame:v79.origin.x, v79.origin.y, v79.size.width, v79.size.height];
        if (v16)
        {
          [v16 transform];
        }

        else
        {
          memset(&v74, 0, sizeof(v74));
        }

        [(CRLCanvasMutableLayoutGeometry *)v40 transformBy:&v74];
        if (v11)
        {
          [(CRLCanvasLayoutGeometry *)v11 transform];
        }

        else
        {
          memset(&v74, 0, sizeof(v74));
        }

        [(CRLCanvasMutableLayoutGeometry *)v40 transformBy:&v74];
        v60 = -x;
        v61 = -y;
        [(CRLMediaLayout *)self setBoundsForStandardKnobs:v60, v61, width, height];
        CGAffineTransformMakeTranslation(&v74, v60, v61);
        v62 = *&v74.c;
        *(&self->mLayoutToImageTransform.tx + 3) = *&v74.a;
        *(&self->mLayoutToMaskTransform.a + 3) = v62;
        *(&self->mLayoutToMaskTransform.c + 3) = *&v74.tx;
LABEL_39:
        if (v16)
        {
          [v16 transform];
        }

        else
        {
          memset(&v74, 0, sizeof(v74));
        }

        CGAffineTransformInvert(&t1, &v74);
        v63 = *(&self->mLayoutToMaskTransform.a + 3);
        *&t2.a = *(&self->mLayoutToImageTransform.tx + 3);
        *&t2.c = v63;
        *&t2.tx = *(&self->mLayoutToMaskTransform.c + 3);
        CGAffineTransformConcat(&v74, &t1, &t2);
        v64 = *&v74.c;
        *(&self->mMaskLayout + 3) = *&v74.a;
        *(&self->mLayoutToImageTransform.a + 3) = v64;
        *(&self->mLayoutToImageTransform.c + 3) = *&v74.tx;

        v5 = v70;
        v14 = v71;
        goto LABEL_43;
      }
    }

    else
    {
      BYTE3(self->mLayoutToMaskTransform.tx) = 0;
    }

    if (v11)
    {
      [(CRLCanvasLayoutGeometry *)v11 transform];
    }

    else
    {
      memset(&v74, 0, sizeof(v74));
    }

    v40 = [v16 geometryByTransformingBy:&v74];
    [v16 size];
    [(CRLMediaLayout *)self setBoundsForStandardKnobs:sub_10011ECB4()];
    v59 = *&CGAffineTransformIdentity.c;
    *(&self->mLayoutToImageTransform.tx + 3) = *&CGAffineTransformIdentity.a;
    *(&self->mLayoutToMaskTransform.a + 3) = v59;
    *(&self->mLayoutToMaskTransform.c + 3) = *&CGAffineTransformIdentity.tx;
    goto LABEL_39;
  }

  v68 = *&CGAffineTransformIdentity.c;
  v69 = *&CGAffineTransformIdentity.a;
  *(&self->mLayoutToImageTransform.tx + 3) = *&CGAffineTransformIdentity.a;
  *(&self->mLayoutToMaskTransform.a + 3) = v68;
  v67 = *&CGAffineTransformIdentity.tx;
  *(&self->mLayoutToMaskTransform.c + 3) = v67;
  BYTE3(self->mLayoutToMaskTransform.tx) = 0;
  if (v14 && [v14 shouldRender])
  {
    [v14 renderedWidth];
    v39 = v38 * 0.5;
    v40 = [(CRLCanvasLayoutGeometry *)v11 geometryByOutsettingBy:v39, v39];
    CGAffineTransformMakeTranslation(&v74, v39, v39);
    v41 = *&v74.c;
    *(&self->mMaskLayout + 3) = *&v74.a;
    *(&self->mLayoutToImageTransform.a + 3) = v41;
    *(&self->mLayoutToImageTransform.c + 3) = *&v74.tx;
    [(CRLCanvasLayoutGeometry *)v11 size];
    v76.origin.x = sub_10011ECB4();
    v77 = CGRectOffset(v76, v39, v39);
    [(CRLMediaLayout *)self setBoundsForStandardKnobs:v77.origin.x, v77.origin.y, v77.size.width, v77.size.height];
  }

  else
  {
    v11 = v11;
    *(&self->mMaskLayout + 3) = v69;
    *(&self->mLayoutToImageTransform.a + 3) = v68;
    *(&self->mLayoutToImageTransform.c + 3) = v67;
    [(CRLCanvasLayoutGeometry *)v11 size];
    [(CRLMediaLayout *)self setBoundsForStandardKnobs:sub_10011ECB4()];
    v40 = v11;
  }

LABEL_43:
  v65 = v40;

  return v40;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CRLImageLayout;
  [(CRLMediaLayout *)&v8 processChangedProperty:?];
  if (a3 <= 39)
  {
    if (a3 == 16)
    {
      [(CRLCanvasLayout *)self invalidateFrame];
      [(CRLMediaLayout *)self invalidateAlignmentFrame];
      return;
    }

    if (a3 != 19)
    {
      goto LABEL_13;
    }
  }

  else if (a3 != 40)
  {
    if (a3 == 41)
    {
      v5 = [(CRLImageLayout *)self maskLayout];
      v6 = v5;
      v7 = 7;
      goto LABEL_11;
    }

    if (a3 == 42)
    {
      v5 = [(CRLImageLayout *)self maskLayout];
      v6 = v5;
      v7 = 21;
LABEL_11:
      [v5 processChangedProperty:v7];

      return;
    }

LABEL_13:
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      [(CRLMediaLayout *)self invalidateAlignmentFrame];
      [(CRLBoardItemLayout *)self invalidateExteriorWrap];
    }

    return;
  }

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLMediaLayout *)self invalidateAlignmentFrame];
  [(CRLCanvasLayout *)self invalidateChildren];
  if (a3 == 19)
  {
    *(&self->mLastParentLimitedSize.width + 3) = 0.0;
  }
}

- (id)childInfosForChildLayouts
{
  v8.receiver = self;
  v8.super_class = CRLImageLayout;
  v3 = [(CRLCanvasLayout *)&v8 childInfosForChildLayouts];
  v4 = [(CRLImageLayout *)self imageInfo];
  v5 = [v4 maskInfo];

  if (v5)
  {
    v6 = [v3 arrayByAddingObject:v5];

    v3 = v6;
  }

  return v3;
}

- (void)updateChildrenFromInfo
{
  v26.receiver = self;
  v26.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v26 updateChildrenFromInfo];
  v3 = [(CRLImageLayout *)self imageInfo];
  v4 = [v3 maskInfo];

  v5 = *(&self->super._boundsForStandardKnobs.size.height + 3);
  if (!v4)
  {
    *(&self->super._boundsForStandardKnobs.size.height + 3) = 0.0;
LABEL_27:

    goto LABEL_28;
  }

  if (v5)
  {
    v6 = [*(&self->super._boundsForStandardKnobs.size.height + 3) maskInfo];
    v7 = v6;
    if (v6 == v4)
    {
      v8 = [*(&self->super._boundsForStandardKnobs.size.height + 3) parent];

      if (v8 == self)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v9 = *(&self->super._boundsForStandardKnobs.size.height + 3);
  *(&self->super._boundsForStandardKnobs.size.height + 3) = 0.0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(CRLCanvasAbstractLayout *)self children];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 info];

        if (v16 == v4)
        {
          v17 = objc_opt_class();
          v18 = sub_100013F00(v17, v15);
          v19 = *(&self->super._boundsForStandardKnobs.size.height + 3);
          *(&self->super._boundsForStandardKnobs.size.height + 3) = v18;

          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (!*(&self->super._boundsForStandardKnobs.size.height + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013556E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355708();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013557A4();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageLayout updateChildrenFromInfo]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v21 lineNumber:397 isFatal:0 description:"invalid nil value for '%{public}s'", "mMaskLayout"];

    goto LABEL_27;
  }

LABEL_28:
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  if (*(&self->super._boundsForStandardKnobs.size.height + 3) && *(&self->mImageGeometry + 3))
  {
    v5 = objc_opt_class();
    v6 = [(CRLMediaLayout *)self stroke];
    v7 = sub_100014370(v5, v6);

    v8 = [CRLBezierPath bezierPathWithCGPath:*(&self->mImageGeometry + 3)];
    memset(&v29, 0, sizeof(v29));
    [(CRLImageLayout *)self layoutToMaskTransform];
    if (v3)
    {
      [(CRLCanvasAbstractLayout *)self transformInRoot];
    }

    else
    {
      [(CRLCanvasAbstractLayout *)self transform];
    }

    CGAffineTransformConcat(&v29, &t1, &t2);
    t1 = v29;
    [v8 transformUsingAffineTransform:&t1];
    if (v7 && [v7 shouldRender])
    {
      [v8 takeAttributesFromStroke:v7];
      [v8 boundsIncludingStroke];
    }

    else
    {
      [v8 bounds];
    }

    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    v9 = [(CRLCanvasAbstractLayout *)self geometry];
    v10 = v9;
    if (v9)
    {
      [v9 fullTransform];
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
    }

    if (v3)
    {
      v11 = [(CRLCanvasAbstractLayout *)self parent];

      if (v11)
      {
        v12 = [(CRLCanvasAbstractLayout *)self parent];
        v13 = v12;
        if (v12)
        {
          [v12 transformInRoot];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        v26 = v29;
        CGAffineTransformConcat(&t1, &v26, &t2);
        v29 = t1;
      }
    }

    t1 = v29;
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 1.0;
    v30.size.height = 1.0;
    v31 = CGRectApplyAffineTransform(v30, &t1);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  if ([(CRLImageLayout *)self isResizingInMaskEditMode])
  {
    if ([(CRLImageLayout *)self maskEditModeForResizing]== 2)
    {
LABEL_3:
      v3 = [(CRLImageLayout *)self imageGeometry];
      [v3 size];
      v4 = sub_10011ECB4();
      v6 = v5;
      v8 = v7;
      v10 = v9;

      memset(&v19, 0, sizeof(v19));
      [(CRLImageLayout *)self layoutToImageTransform];
LABEL_7:
      [(CRLCanvasAbstractLayout *)self transformInRoot];
      CGAffineTransformConcat(&v19, &t1, &t2);
      t1 = v19;
      v20.origin.x = v4;
      v20.origin.y = v6;
      v20.size.width = v8;
      v20.size.height = v10;
      return CGRectApplyAffineTransform(v20, &t1);
    }

LABEL_6:
    v11 = [(CRLImageLayout *)self maskLayout];
    v12 = [v11 geometry];
    [v12 size];
    v4 = sub_10011ECB4();
    v6 = v13;
    v8 = v14;
    v10 = v15;

    memset(&v19, 0, sizeof(v19));
    [(CRLImageLayout *)self layoutToMaskTransform];
    goto LABEL_7;
  }

  if ([(CRLImageLayout *)self isDraggingInMaskEditMode])
  {
    if ([(CRLImageLayout *)self maskEditModeForDragging]!= 3)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v16.receiver = self;
  v16.super_class = CRLImageLayout;
  [(CRLCanvasAbstractLayout *)&v16 alignmentFrameForProvidingGuidesInRoot];
  return result;
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    v7 = [*(&self->super._boundsForStandardKnobs.size.width + 3) geometryByTranslatingBy:{a3.x, a3.y}];
    v8 = *(&self->super._boundsForStandardKnobs.size.width + 3);
    *(&self->super._boundsForStandardKnobs.size.width + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = CRLImageLayout;
  [(CRLCanvasAbstractLayout *)&v9 offsetGeometryBy:x, y];
}

- (BOOL)hasAlpha
{
  v2 = *(&self->mLastParentLimitedSize.width + 3);
  if (!v2)
  {
    *(&self->mLastParentLimitedSize.width + 3) = 1;
    v4 = +[CRLImageProviderPool sharedPool];
    v5 = [(CRLImageLayout *)self imageInfo];
    v6 = [v5 imageAssetPayload];
    v7 = [v4 providerForAsset:v6 shouldValidate:0];

    v8 = objc_opt_class();
    v9 = sub_100014370(v8, v7);
    v10 = v9;
    if (v9 && [v9 isOpaque])
    {
      *(&self->mLastParentLimitedSize.width + 3) = 2;
    }

    v2 = *(&self->mLastParentLimitedSize.width + 3);
  }

  return v2 == 1;
}

- (BOOL)isInvisible
{
  v3 = [(CRLImageLayout *)self pathToStroke];
  if (v3)
  {
    BoundingBox = CGPathGetBoundingBox(v3);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
  }

  else
  {
    v8 = [(CRLImageLayout *)self imageGeometry];
    [v8 size];
    x = sub_10011ECB4();
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectIsNull(*&v12);
}

- (BOOL)shouldDisplayGuides
{
  if ([(CRLImageLayout *)self isResizingInMaskEditMode]|| [(CRLImageLayout *)self isDraggingInMaskEditMode])
  {
    return 1;
  }

  if (BYTE3(self->mBaseInfoGeometry))
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLImageLayout;
  return [(CRLCanvasLayout *)&v4 shouldDisplayGuides];
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CRLImageLayout;
  [(CRLBoardItemLayout *)&v9 beginDynamicOperationWithRealTimeCommands:?];
  v5 = [(CRLImageLayout *)self maskLayout];
  [v5 beginDynamicOperationWithRealTimeCommands:v3];

  v6 = [(CRLImageLayout *)self imageGeometry];
  v7 = [v6 copy];
  v8 = *(&self->mLastParentLimitedSize.height + 3);
  *(&self->mLastParentLimitedSize.height + 3) = v7;
}

- (void)endDynamicOperation
{
  v3 = *(&self->mLastParentLimitedSize.height + 3);
  *(&self->mLastParentLimitedSize.height + 3) = 0.0;

  v4 = [(CRLImageLayout *)self maskLayout];
  [v4 endDynamicOperation];

  v5.receiver = self;
  v5.super_class = CRLImageLayout;
  [(CRLBoardItemLayout *)&v5 endDynamicOperation];
}

- (void)beginResize
{
  v6.receiver = self;
  v6.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v6 beginResize];
  [(CRLImageLayout *)self p_createDynamicCopiesIfNeeded];
  if ([(CRLImageLayout *)self maskEditMode]== 3)
  {
    v3 = [(CRLImageLayout *)self imageGeometry];
    [v3 size];
    [(CRLCanvasLayout *)self setInitialBoundsForStandardKnobs:sub_10011ECB4()];

    v4 = [(CRLImageLayout *)self imageGeometry];
    v5 = [v4 copy];
    [(CRLCanvasLayout *)self setOriginalGeometry:v5];
  }
}

- (void)endResize
{
  [(CRLImageLayout *)self p_destroyDynamicCopiesIfNeeded];
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 endResize];
}

- (id)commandToResetToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CRLImageLayout *)self imageInfo];
  v7 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v14.receiver = self;
  v14.super_class = CRLImageLayout;
  v8 = [(CRLMediaLayout *)&v14 commandToResetToSize:width, height];
  [(CRLCommandGroup *)v7 addCommand:v8];
  if (![(CRLImageLayout *)self isInMaskEditMode])
  {
    v9 = objc_alloc_init(CRLBezierPath);
    [(CRLBezierPath *)v9 appendBezierPathWithRect:sub_10011ECB4()];
    v10 = [[CRLBezierPathSource alloc] initWithBezierPath:v9];
    v11 = [[CRLCanvasInfoGeometry alloc] initWithSize:width, height];
    v12 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v6 maskGeometry:v11 maskPath:v10];
    [(CRLCommandGroup *)v7 addCommand:v12];
  }

  return v7;
}

- (void)beginDrag
{
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 beginDrag];
  [(CRLImageLayout *)self p_createDynamicCopiesIfNeeded];
  if ([(CRLImageLayout *)self maskEditModeForDragging]== 3)
  {
    [(CRLCanvasLayout *)self invalidateSize];
    [(CRLCanvasLayout *)self validate];
  }

  else
  {
    [(CRLImageLayout *)self maskEditModeForDragging];
  }
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x == CGPointZero.x && a3.y == CGPointZero.y)
  {
    return;
  }

  if ([(CRLImageLayout *)self maskEditModeForDragging]== 3)
  {
    v15 = [*(&self->mHasAlpha + 3) mutableCopy];
    [v15 position];
    [v15 setPosition:{sub_10011F334(v7, v8, x)}];
    [(CRLImageLayout *)self p_setDynamicInfoGeometry:v15];
    v9 = [(CRLImageLayout *)self maskLayout];
    [v9 dragBy:{x, y}];

LABEL_9:

    return;
  }

  if ([(CRLImageLayout *)self maskEditModeForDragging]== 2)
  {
    v15 = [(CRLImageLayout *)self maskLayout];
    [v15 dragBy:{x, y}];
    goto LABEL_9;
  }

  v16.receiver = self;
  v16.super_class = CRLImageLayout;
  [(CRLBoardItemLayout *)&v16 dragBy:x, y];
  if (!*(&self->mLastParentLimitedSize.height + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013557CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013557F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355890();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLImageLayout dragBy:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:616 isFatal:0 description:"invalid nil value for '%{public}s'", "mBaseImageLayoutGeometry"];
  }

  v13 = [*(&self->super._boundsForStandardKnobs.size.width + 3) geometryByTranslatingBy:{x, y}];
  v14 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v13;
}

- (void)endDrag
{
  if (![(CRLImageLayout *)self isDraggingInMaskEditMode])
  {
    objc_storeStrong((&self->super._boundsForStandardKnobs.size.width + 3), *(&self->mLastParentLimitedSize.height + 3));
  }

  [(CRLImageLayout *)self p_destroyDynamicCopiesIfNeeded];
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 endDrag];
}

- (void)beginRotate
{
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 beginRotate];
  [(CRLImageLayout *)self p_createDynamicCopiesIfNeeded];
}

- (void)endRotate
{
  [(CRLImageLayout *)self p_destroyDynamicCopiesIfNeeded];
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 endRotate];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3
{
  memset(&v15, 0, sizeof(v15));
  v7 = *(&self->mLastParentLimitedSize.height + 3);
  if (v7)
  {
    [v7 fullTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformInvert(&t1, &t2);
  v8 = [(CRLCanvasLayout *)self infoGeometryBeforeDynamicOperation];
  v9 = v8;
  if (v8)
  {
    [v8 fullTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v15, &t1, &t2);

  t1 = v15;
  CGAffineTransformInvert(&t2, &t1);
  v10 = *&a4->c;
  *&v12.a = *&a4->a;
  *&v12.c = v10;
  *&v12.tx = *&a4->tx;
  CGAffineTransformConcat(&t1, &t2, &v12);
  t2 = v15;
  return CGAffineTransformConcat(retstr, &t1, &t2);
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CRLImageLayout;
  [(CRLBoardItemLayout *)&v7 takeRotationFromTracker:v4];
  if (v4)
  {
    [v4 rotateTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [(CRLImageLayout *)self layoutTransformInInfoSpace:v5];
  [(CRLImageLayout *)self resizeWithTransform:v6];
}

- (CGPoint)centerForRotation
{
  if ([(CRLImageLayout *)self isRotatingInMaskEditMode])
  {

    [(CRLImageLayout *)self centerForRotationInMaskMode];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLImageLayout;
    [(CRLCanvasLayout *)&v5 centerForRotation];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerForRotationInMaskMode
{
  if ([(CRLImageLayout *)self maskEditModeForRotating]== 3)
  {
    v3 = [(CRLImageLayout *)self imageGeometry];
    [v3 size];
    v4 = sub_10011ECB4();
    v8 = sub_100120414(v4, v5, v6, v7);
    v10 = v9;

    [(CRLImageLayout *)self layoutToImageTransform];
LABEL_5:
    x = v29 + v10 * v27 + v25 * v8;
    y = v30 + v10 * v28 + v26 * v8;
    goto LABEL_15;
  }

  if ([(CRLImageLayout *)self maskEditModeForRotating]== 2)
  {
    v11 = [(CRLImageLayout *)self maskLayout];
    v12 = [v11 geometry];
    [v12 size];
    v13 = sub_10011ECB4();
    v8 = sub_100120414(v13, v14, v15, v16);
    v10 = v17;

    [(CRLImageLayout *)self layoutToMaskTransform];
    goto LABEL_5;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013558B8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013558CC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135595C();
  }

  v20 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v20);
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  v21 = [NSString stringWithUTF8String:"[CRLImageLayout centerForRotationInMaskMode]"];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
  [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:682 isFatal:0 description:"asking for mask mode center of rotation when not in mask edit mode"];

LABEL_15:
  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)centerForConnecting
{
  v3 = [(CRLBoardItemLayout *)self i_wrapPath];
  if ([v3 elementCount] < 2)
  {
    v24.receiver = self;
    v24.super_class = CRLImageLayout;
    [(CRLCanvasLayout *)&v24 centerForConnecting];
    v23.f64[0] = v16;
    v18 = v17;
  }

  else
  {
    v4 = [(CRLBoardItemLayout *)self i_wrapPath];
    [v4 bounds];
    v9 = sub_100120414(v5, v6, v7, v8);
    v21 = v10;
    v22 = v9;
    v11 = [(CRLCanvasAbstractLayout *)self geometry];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
      v13 = v25;
      v14 = v26;
      v15 = v27;
    }

    else
    {
      v15 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    v23 = vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, v21), v13, v22));
    v18 = v23.f64[1];
  }

  v19 = v23.f64[0];
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  if ([(CRLImageLayout *)self maskEditModeForResizing]== 2)
  {
    return 0;
  }

  if ([(CRLImageLayout *)self maskEditModeForResizing]== 1)
  {
    v4 = [(CRLImageLayout *)self maskLayout];
    v5 = [v4 geometry];
    v6 = v5;
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    v7 = sub_100139B08(v9, 0.0001);

    if (!v7)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = CRLImageLayout;
  return [(CRLCanvasLayout *)&v8 canAspectRatioLockBeChangedByUser];
}

- (BOOL)resizeMayChangeAspectRatio
{
  if ([(CRLImageLayout *)self maskEditModeForResizing]== 2)
  {
    return 1;
  }

  if ([(CRLImageLayout *)self maskEditModeForResizing]== 1)
  {
    v4 = [(CRLImageLayout *)self maskLayout];
    v5 = [v4 geometry];
    v6 = v5;
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    v7 = sub_100139B08(v9, 0.0001);

    if (!v7)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = CRLImageLayout;
  return [(CRLCanvasLayout *)&v8 resizeMayChangeAspectRatio];
}

- (BOOL)shouldSnapWhileResizing
{
  if ([(CRLImageLayout *)self isInMaskEditMode]&& [(CRLImageLayout *)self maskEditModeForLayoutState]== 3)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLImageLayout;
  return [(CRLCanvasAbstractLayout *)&v4 shouldSnapWhileResizing];
}

- (void)resizeWithTransform:(CGAffineTransform *)a3
{
  if ([(CRLImageLayout *)self isInMaskEditMode]&& [(CRLImageLayout *)self maskEditModeForLayoutState]!= 3)
  {
    if ([(CRLImageLayout *)self maskEditModeForLayoutState]!= 2)
    {
      return;
    }

    v11 = [(CRLImageLayout *)self maskLayout];
    v12 = v11;
    v15 = *&a3->c;
    *&v20.a = *&a3->a;
    *&v20.c = v15;
    *&v20.tx = *&a3->tx;
    p_t2 = &v20;
    goto LABEL_20;
  }

  memset(&v20, 0, sizeof(v20));
  v5 = [(CRLImageLayout *)self originalImageGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v7;
  *&t2.tx = *&a3->tx;
  CGAffineTransformConcat(&v20, &t1, &t2);

  t1 = v20;
  v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];
  [(CRLImageLayout *)self p_setDynamicInfoGeometry:v8];

  if ([(CRLImageLayout *)self maskEditModeForLayoutState]== 3)
  {
    memset(&t1, 0, sizeof(t1));
    v9 = [(CRLImageLayout *)self originalImageGeometry];
    v10 = v9;
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    CGAffineTransformInvert(&t2, &v17);
    v16 = *(&self->mHasAlpha + 3);
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    CGAffineTransformConcat(&t1, &t2, &v17);

    v12 = [(CRLImageLayout *)self maskLayout];
    v17 = t1;
    CGAffineTransformInvert(&t2, &v17);
    p_t2 = &t2;
    v11 = v12;
    goto LABEL_20;
  }

  if (![(CRLImageLayout *)self isInMaskEditMode]&& ([(CRLCanvasLayout *)self layoutState]== 4 || [(CRLCanvasLayout *)self layoutState]== 5))
  {
    v11 = [(CRLImageLayout *)self maskLayout];
    v12 = v11;
    v13 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v13;
    *&t1.tx = *&a3->tx;
    p_t2 = &t1;
LABEL_20:
    [v11 resizeWithTransform:p_t2];
  }
}

- (void)takeSizeFromTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLImageLayout;
  [(CRLBoardItemLayout *)&v4 takeSizeFromTracker:a3];
  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
}

- (void)takeScaledImageGeometry:(id)a3 maskGeometry:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((BYTE3(self->mBaseInfoGeometry) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355984();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355998();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355A28();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageLayout takeScaledImageGeometry:maskGeometry:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:767 isFatal:0 description:"wrong mode"];
  }

  [(CRLImageLayout *)self p_setDynamicInfoGeometry:v6];
  v11 = [(CRLImageLayout *)self maskLayout];
  [v11 takeScaledMaskGeometry:v7];

  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
}

- (void)beginFreeTransformWithTracker:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v4 beginFreeTransformWithTracker:a3];
  [(CRLImageLayout *)self p_createDynamicCopiesIfNeeded];
}

- (void)endFreeTransform
{
  [(CRLImageLayout *)self p_destroyDynamicCopiesIfNeeded];
  v3.receiver = self;
  v3.super_class = CRLImageLayout;
  [(CRLCanvasLayout *)&v3 endFreeTransform];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLImageLayout;
  v4 = a3;
  [(CRLBoardItemLayout *)&v6 takeFreeTransformFromTracker:v4];
  v5 = [v4 isResizing];

  if (v5)
  {
    [(CRLBoardItemLayout *)self invalidateExteriorWrap];
  }
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v7 = a3;
  v8 = objc_opt_class();
  v9 = sub_100013F00(v8, v7);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100336400;
  v12[3] = &unk_101856C00;
  v12[4] = v9;
  v10 = *&a4->c;
  v11[0] = *&a4->a;
  v11[1] = v10;
  v11[2] = *&a4->tx;
  [(CRLImageLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v11 andPerformBlock:v12];
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1003365B0;
  v12 = sub_1003365C0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003365C8;
  v7[3] = &unk_101856C28;
  v7[4] = self;
  v7[5] = &v8;
  v3 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v3;
  v6[2] = *&a3->tx;
  [(CRLImageLayout *)self p_calculateClampModelValuesWithAdditionalTransform:v6 andPerformBlock:v7];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = [(CRLImageLayout *)self imageGeometry];
  v8 = *&a3->c;
  v19 = *&a3->a;
  v20 = v8;
  v21 = *&a3->tx;
  v9 = [v7 geometryByTransformingBy:&v19];

  if (v9)
  {
    [v9 fullTransform];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v10 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v19];
  v11 = [(CRLImageLayout *)self maskLayout];

  if (v11)
  {
    v12 = [(CRLImageLayout *)self maskLayout];
    v13 = [v12 pureGeometry];

    v14 = [(CRLImageLayout *)self maskLayout];
    v15 = [v14 computeInfoGeometryFromPureLayoutGeometry:v13];

    v16 = [(CRLImageLayout *)self maskLayout];
    v17 = [v16 pathSource];
    v18 = [v17 copy];

    [v15 size];
    [v18 scaleToNaturalSize:?];
    v6[2](v6, v10, v15, v18);
  }

  else
  {
    v6[2](v6, v10, 0, 0);
  }
}

- (CRLSmartPathSource)smartPathSource
{
  v2 = [(CRLImageLayout *)self maskLayout];
  v3 = [v2 pathSource];
  v4 = objc_opt_class();
  v10 = sub_1003038E0(v3, v4, 1, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLSmartPathSource);

  return v10;
}

- (CGRect)pathBoundsWithoutStroke
{
  v2 = [(CRLImageLayout *)self smartPathSource];
  v3 = [v2 bezierPath];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)maskWasReset
{
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355A50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355A64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355AF4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageLayout maskWasReset]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:882 isFatal:0 description:"Mask should never be reset in mask edit mode"];
  }

  *(&self->mDynamicInfoGeometry + 3) = 0;
}

- (void)maskWasApplied
{
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355B1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355B30();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355BC0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageLayout maskWasApplied]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:887 isFatal:0 description:"maskWasApplied should not be called in mask edit mode"];
  }

  *(&self->mDynamicInfoGeometry + 3) = 1;
}

- (void)beginEditingMaskInMaskEditMode:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355BE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355BFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355C98();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageLayout beginEditingMaskInMaskEditMode:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:892 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "(maskEditMode == CRLMaskEditModeEditingImage) || (maskEditMode == CRLMaskEditModeEditingMask)"];
  }

  if ([(CRLImageLayout *)self maskEditMode]== a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355CC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355CE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355D94();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageLayout beginEditingMaskInMaskEditMode:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:893 isFatal:0 description:"already editing mask in mode %ld", a3];
  }

  *(&self->mDynamicInfoGeometry + 3) = a3;
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"CRLImageLayoutMaskEditModeDidChangeNotification" object:self];
}

- (void)endMaskEditMode
{
  if ([(CRLImageLayout *)self maskEditMode]!= 3 && [(CRLImageLayout *)self maskEditMode]!= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355DBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355DD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355E60();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageLayout endMaskEditMode]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:899 isFatal:0 description:"not in mask edit mode"];
  }

  *(&self->mDynamicInfoGeometry + 3) = 1;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"CRLImageLayoutMaskEditModeDidChangeNotification" object:self];
}

- (BOOL)isDraggingInMaskEditMode
{
  v3 = [(CRLImageLayout *)self isInMaskEditMode];
  if (v3)
  {
    LOBYTE(v3) = [(CRLCanvasLayout *)self layoutState]== 2 || [(CRLCanvasLayout *)self layoutState]== 5;
  }

  return v3;
}

- (BOOL)isRotatingInMaskEditMode
{
  v3 = [(CRLImageLayout *)self isInMaskEditMode];
  if (v3)
  {
    LOBYTE(v3) = [(CRLCanvasLayout *)self layoutState]== 3 || [(CRLCanvasLayout *)self layoutState]== 5;
  }

  return v3;
}

- (BOOL)isResizingInMaskEditMode
{
  v3 = [(CRLImageLayout *)self isInMaskEditMode];
  if (v3)
  {
    LOBYTE(v3) = [(CRLCanvasLayout *)self layoutState]== 4 || [(CRLCanvasLayout *)self layoutState]== 5;
  }

  return v3;
}

- (int64_t)maskEditModeForDragging
{
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    return 3;
  }

  return [(CRLImageLayout *)self maskEditMode];
}

- (int64_t)maskEditModeForRotating
{
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    return 3;
  }

  return [(CRLImageLayout *)self maskEditMode];
}

- (int64_t)maskEditModeForResizing
{
  if (BYTE3(self->mBaseInfoGeometry))
  {
    return 3;
  }

  else
  {
    return [(CRLImageLayout *)self maskEditMode];
  }
}

- (int64_t)maskEditModeForFreeTransforming
{
  if ([(CRLImageLayout *)self isInMaskEditMode])
  {
    return 3;
  }

  return [(CRLImageLayout *)self maskEditMode];
}

- (int64_t)maskEditModeForLayoutState
{
  v3 = [(CRLCanvasLayout *)self layoutState];
  switch(v3)
  {
    case 5u:

      return [(CRLImageLayout *)self maskEditModeForFreeTransforming];
    case 3u:

      return [(CRLImageLayout *)self maskEditModeForRotating];
    case 2u:

      return [(CRLImageLayout *)self maskEditModeForDragging];
    default:

      return [(CRLImageLayout *)self maskEditModeForResizing];
  }
}

- (_TtC8Freeform12CRLImageItem)imageInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLCanvasLayoutGeometry)imageGeometryInRoot
{
  v3 = [*(&self->super._boundsForStandardKnobs.size.width + 3) mutableCopy];
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 geometry];
      v7 = v6;
      if (v6)
      {
        [v6 transform];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
      }

      [v3 transformBy:&v10];

      v8 = [v5 parent];

      v5 = v8;
    }

    while (v8);
  }

  return v3;
}

- (id)inspectorGeometry
{
  if ([(CRLImageLayout *)self maskEditMode]== 3 || [(CRLImageLayout *)self maskEditMode]== 2)
  {
    v3 = [(CRLImageLayout *)self p_inspectorGeometryForUnmaskedImage];
    v4 = [v3 mutableCopy];

    v8.receiver = self;
    v8.super_class = CRLImageLayout;
    v5 = [(CRLCanvasLayout *)&v8 inspectorGeometry];
    [v5 size];
    [v4 setSize:?];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageLayout;
    v4 = [(CRLCanvasLayout *)&v7 inspectorGeometry];
  }

  return v4;
}

- (id)p_inspectorGeometryForUnmaskedImage
{
  v3 = [(CRLImageLayout *)self imageGeometry];
  v4 = *&CGAffineTransformIdentity.c;
  v16 = *&CGAffineTransformIdentity.a;
  v17 = v4;
  v18 = *&CGAffineTransformIdentity.tx;
  v5 = [(CRLCanvasAbstractLayout *)self parent];
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([v6 isRootLayoutForInspectorGeometry])
      {
        break;
      }

      v7 = [v6 geometry];
      v8 = v7;
      if (v7)
      {
        v12[0] = v16;
        v12[1] = v17;
        v12[2] = v18;
        [v7 transformByConcatenatingTransformTo:v12];
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
      }

      v16 = v13;
      v17 = v14;
      v18 = v15;

      v9 = [v6 parent];

      v6 = v9;
    }

    while (v9);
  }

  v13 = v16;
  v14 = v17;
  v15 = v18;
  v10 = [v3 geometryByTransformingBy:&v13];

  return v10;
}

- (BOOL)hasMaskingPath
{
  v3 = [(CRLImageLayout *)self maskLayout];

  if (v3 && !*(&self->mImageGeometry + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355E88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355E9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101355F2C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageLayout hasMaskingPath]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1043 isFatal:0 description:"If image has masking path it must specify a path to stroke"];
  }

  return v3 != 0;
}

- (CGSize)sizeOfFrameRectIncludingCoverage
{
  if (*(&self->mImageGeometry + 3))
  {
    v3 = [CRLBezierPath bezierPathWithCGPath:?];
    v4 = [(CRLMediaLayout *)self stroke];
    [v3 boundsIncludingCRLStroke:v4];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v3 = [(CRLCanvasAbstractLayout *)self geometry];
    [v3 size];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGAffineTransform)layoutToImageTransform
{
  v3 = *(&self[10].tx + 3);
  *&retstr->a = *(&self[10].c + 3);
  *&retstr->c = v3;
  *&retstr->tx = *(&self[11].a + 3);
  return self;
}

- (CGAffineTransform)layoutToMaskTransform
{
  v3 = *(&self[11].tx + 3);
  *&retstr->a = *(&self[11].c + 3);
  *&retstr->c = v3;
  *&retstr->tx = *(&self[12].a + 3);
  return self;
}

- (id)computeWrapPath
{
  v3 = [(CRLImageLayout *)self imageInfo];
  v4 = objc_opt_class();
  v5 = [(CRLMediaLayout *)self stroke];
  v6 = sub_100014370(v4, v5);

  if (v6)
  {
    v7 = [v6 shouldRender];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CRLImageLayout *)self maskLayout];

  v9 = [(CRLImageLayout *)self maskLayout];
  v10 = [v9 computeLayoutGeometry];

  memset(&v41, 0, sizeof(v41));
  if (v8)
  {
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&v40, 0, sizeof(v40));
    }

    CGAffineTransformInvert(&v41, &v40);
  }

  else
  {
    v11 = *&CGAffineTransformIdentity.c;
    *&v41.a = *&CGAffineTransformIdentity.a;
    *&v41.c = v11;
    *&v41.tx = *&CGAffineTransformIdentity.tx;
  }

  v12 = +[CRLImageProviderPool sharedPool];
  v13 = [v3 imageAssetPayload];
  v14 = [v12 providerForAsset:v13 shouldValidate:1];

  if (v7 && -[CRLImageLayout hasAlpha](self, "hasAlpha") && ([v14 isError] & 1) == 0)
  {
    [v14 naturalSize];
    v16 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];
  }

  else
  {
    v15 = [v3 tracedPath];
    v16 = [v15 copy];
  }

  [v16 bounds];
  if (!CGRectIsEmpty(v43))
  {
    v19 = [(CRLImageLayout *)self imageGeometry];
    [v19 size];
    v21 = v20;
    v23 = v22;

    v24 = *&CGAffineTransformIdentity.c;
    *&v40.a = *&CGAffineTransformIdentity.a;
    *&v40.c = v24;
    *&v40.tx = *&CGAffineTransformIdentity.tx;
    if (([v14 isError] & 1) == 0)
    {
      [v14 naturalSize];
      CGAffineTransformMakeScale(&v40, v21 / v25, v23 / v26);
      v39 = v40;
      [v16 transformUsingAffineTransform:&v39];
    }

    if (v8)
    {
      v27 = [(CRLImageLayout *)self maskLayout];
      v39 = v41;
      [v16 transformUsingAffineTransform:&v39];
      v28 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v27 path]);
      [v27 pathBounds];
      CGAffineTransformMakeTranslation(&v39, -v29, -v30);
      [v28 transformUsingAffineTransform:&v39];
      v18 = [v16 intersectBezierPath:v28];

      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v18 = v16;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    [v18 takeAttributesFromStroke:v6];
    v31 = [v18 strokedCopy];
    v32 = [v18 uniteWithBezierPath:v31];

    v18 = v32;
    goto LABEL_21;
  }

  v17 = [(CRLCanvasAbstractLayout *)self geometry];
  [v17 size];
  v18 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

LABEL_21:
  if ([v18 elementCount] >= 2)
  {
    [v18 bounds];
    v34 = fmin(v33, 0.0);
    v36 = fmin(v35, 0.0);
    if (!sub_10011ECC8(CGPointZero.x, CGPointZero.y, v34, v36))
    {
      CGAffineTransformMakeTranslation(&v40, -v34, -v36);
      [v18 transformUsingAffineTransform:&v40];
    }
  }

  v37 = v18;

  return v37;
}

- (void)p_createDynamicCopiesIfNeeded
{
  if (*(&self->mHasAlpha + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101355F54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101355F68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356004();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageLayout p_createDynamicCopiesIfNeeded]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1165 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  if ([(CRLImageLayout *)self p_shouldUseDynamicInfoGeometryForOperation])
  {
    v6 = [(CRLImageLayout *)self imageGeometry];
    v7 = v6;
    if (v6)
    {
      [v6 fullTransform];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:v10];
    v9 = *(&self->mHasAlpha + 3);
    *(&self->mHasAlpha + 3) = v8;
  }
}

- (BOOL)p_shouldUseDynamicInfoGeometryForOperation
{
  if (![(CRLCanvasLayout *)self layoutState])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135602C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356040();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013560FC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageLayout p_shouldUseDynamicInfoGeometryForOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1174 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "self.layoutState", "CRLCanvasLayoutStatic"];
  }

  if ([(CRLCanvasLayout *)self layoutState]== 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356124();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135614C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356208();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageLayout p_shouldUseDynamicInfoGeometryForOperation]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1176 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "self.layoutState", "CRLCanvasLayoutDynamic"];
  }

  return [(CRLImageLayout *)self maskEditModeForLayoutState]== 3 || ![(CRLImageLayout *)self isInMaskEditMode]&& ([(CRLCanvasLayout *)self layoutState]== 4 || [(CRLCanvasLayout *)self layoutState]== 3 || [(CRLCanvasLayout *)self layoutState]== 5);
}

- (void)p_setDynamicInfoGeometry:(id)a3
{
  v4 = a3;
  if (!*(&self->mHasAlpha + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356230();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356244();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013562E0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageLayout p_setDynamicInfoGeometry:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1195 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  v8 = [v4 copy];
  v9 = *(&self->mHasAlpha + 3);
  *(&self->mHasAlpha + 3) = v8;

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLMediaLayout *)self invalidateAlignmentFrame];
}

- (void)p_destroyDynamicCopiesIfNeeded
{
  v3 = [(CRLImageLayout *)self p_shouldUseDynamicInfoGeometryForOperation];
  v4 = *(&self->mHasAlpha + 3);
  if (v3)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013563E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013563F4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101356490();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLImageLayout p_destroyDynamicCopiesIfNeeded]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1209 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicInfoGeometry"];

      v4 = *(&self->mHasAlpha + 3);
    }

    *(&self->mHasAlpha + 3) = 0;

    [(CRLCanvasLayout *)self invalidateFrame];
    [(CRLMediaLayout *)self invalidateAlignmentFrame];
  }

  else if (v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356308();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135631C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013563B8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageLayout p_destroyDynamicCopiesIfNeeded]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1205 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }
}

@end