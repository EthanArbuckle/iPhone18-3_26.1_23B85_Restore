@interface CRLGroupLayout
- (BOOL)allowsConnections;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canInspectGeometry;
- (BOOL)descendentWrappablesContainsWrappable:(id)a3;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shouldBeIncludedInParentFrameForCulling;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (BOOL)supportsFlipping;
- (BOOL)supportsParentFlipping;
- (BOOL)supportsRotation;
- (CGRect)alignmentFrame;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGRect)clipRect;
- (CGRect)computeBoundsForStandardKnobs;
- (CGRect)frameForMiniFormatterPositioning;
- (CGRect)rectInRootForCalculatingActivityLineEndpoint;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)a3;
- (CGRect)rectInRootForSelectionPath:(id)a3;
- (CGSize)minimumSize;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childInfosForChildLayouts;
- (id)commandForSettingAspectRatioLocked:(BOOL)a3;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)commandToFlipWithOrientation:(int)a3;
- (id)computeInfoGeometryDuringResize;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
- (id)convexHullPath;
- (id)descendentWrappables;
- (id)i_wrapPath;
- (id)layoutGeometryFromInfo;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_childWrapPathsFrom:(id)a3 inDescendents:(id)a4;
- (id)p_groupItem;
- (id)p_groupedChildren;
- (id)pathForClippingConnectionLines;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)endDynamicOperation;
- (void)i_clearInvalidationCache;
- (void)invalidate;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)processChangedProperty:(unint64_t)a3;
- (void)setDynamicGeometry:(id)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)updateChildrenFromInfo;
- (void)updateLayoutGeometryInPreparationForPartitioning;
@end

@implementation CRLGroupLayout

- (id)convexHullPath
{
  [(CRLGroupLayout *)self boundsForStandardKnobs];

  return [CRLBezierPath bezierPathWithRect:?];
}

- (id)p_groupItem
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (id)visibleGeometries
{
  v3 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v4 = [(CRLCanvasAbstractLayout *)self geometry];
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(CRLCanvasAbstractLayout *)self children];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) visibleGeometries];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              v19[0] = v28;
              v19[1] = v29;
              v19[2] = v30;
              v17 = [v16 geometryByTransformingBy:v19];
              [v3 addObject:v17];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
          }

          while (v13);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)childInfosForChildLayouts
{
  v78.receiver = self;
  v78.super_class = CRLGroupLayout;
  v3 = [(CRLCanvasLayout *)&v78 childInfosForChildLayouts];
  v4 = [(CRLCanvasLayout *)self layoutController];
  v5 = [v4 canvas];
  v6 = [v5 canvasController];
  v7 = [v6 additionalChildInfosForLayout:self];

  if ([v7 count])
  {
    v8 = [v3 arrayByAddingObjectsFromArray:v7];

    v3 = v8;
  }

  v9 = [(CRLGroupLayout *)self p_groupItem];
  v10 = [v9 childItems];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = [(CRLGroupLayout *)self p_groupItem];
  v13 = v11;
  v59 = v13;
  if (([v12 isFreehandDrawing] & 1) == 0)
  {
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v54 = v7;
    v55 = v12;
    if (v12)
    {
      [v12 transformInRoot];
    }

    else
    {
      v73 = 0uLL;
      v74 = 0uLL;
      v72 = 0uLL;
    }

    [CRLCounterRotateInfo counterTransformForTransformInRoot:&v72];
    v72 = v75;
    v73 = v76;
    v74 = v77;
    v14 = *&CGAffineTransformIdentity.c;
    v69 = *&CGAffineTransformIdentity.a;
    v70 = v14;
    v71 = *&CGAffineTransformIdentity.tx;
    v15 = sub_10011ED78(&v72, &v69);
    v16 = +[NSMutableArray array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = v13;
    v17 = v13;
    v58 = v17;
    v59 = v16;
    v60 = [v17 countByEnumeratingWithState:&v65 objects:v80 count:16];
    if (v60)
    {
      v18 = *v66;
      v19 = !v15;
      v57 = *v66;
      v56 = !v15;
      do
      {
        v20 = 0;
        do
        {
          if (*v66 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v65 + 1) + 8 * v20);
          v22 = objc_opt_class();
          v23 = sub_100014370(v22, v21);
          v24 = v23;
          if (!v23 || ![v23 wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent])
          {
LABEL_32:
            [v16 addObject:{v21, v53}];
            goto LABEL_33;
          }

          v25 = [v24 supportsParentRotation];
          if ((v25 | v19))
          {
            if (v25)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v39 = [v24 geometry];
            v40 = v39;
            if (v39)
            {
              [v39 transform];
            }

            else
            {
              v73 = 0u;
              v74 = 0u;
              v72 = 0u;
            }

            v41 = sub_1001399E4(&v72);

            if (!v41)
            {
              goto LABEL_32;
            }
          }

          v26 = [(CRLCanvasLayout *)self layoutController];
          v27 = [v26 layoutsForInfo:v24];

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v61 objects:v79 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v62;
LABEL_18:
            v32 = 0;
            while (1)
            {
              if (*v62 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v61 + 1) + 8 * v32);
              v34 = [v33 parent];
              v35 = [v34 parent];

              if (v35 == self)
              {
                break;
              }

              v36 = [v33 parent];

              if (v36 == self)
              {
                goto LABEL_25;
              }

              if (v30 == ++v32)
              {
                v30 = [v28 countByEnumeratingWithState:&v61 objects:v79 count:16];
                if (v30)
                {
                  goto LABEL_18;
                }

                goto LABEL_25;
              }
            }

            v42 = objc_opt_class();
            v43 = [v33 parent];
            v38 = sub_100014370(v42, v43);

            if (!v38)
            {
              goto LABEL_26;
            }

            v44 = objc_opt_class();
            v45 = [(CRLCounterRotateInfo *)v38 info];
            v46 = sub_100013F00(v44, v45);

            v17 = v58;
            v16 = v59;
            v18 = v57;
            if (v46)
            {
              [v46 counterTransform];
            }

            else
            {
              v73 = 0u;
              v74 = 0u;
              v72 = 0u;
            }

            v69 = v75;
            v70 = v76;
            v71 = v77;
            v19 = v56;
            if (!sub_10011ED78(&v72, &v69))
            {
              v72 = v75;
              v73 = v76;
              v74 = v77;
              [v46 setCounterTransform:&v72];
              [(CRLCounterRotateInfo *)v38 invalidateFrame];
            }

            [v59 addObject:v46];
          }

          else
          {
LABEL_25:

LABEL_26:
            v37 = [CRLCounterRotateInfo alloc];
            v72 = v75;
            v73 = v76;
            v74 = v77;
            v38 = [(CRLCounterRotateInfo *)v37 initWithChildInfo:v24 parentGroup:v55 counterTransform:&v72];
            v16 = v59;
            [v59 addObject:v38];
            v18 = v57;
            v17 = v58;
            v19 = v56;
          }

LABEL_33:
          v20 = v20 + 1;
        }

        while (v20 != v60);
        v47 = [v17 countByEnumeratingWithState:&v65 objects:v80 count:16];
        v60 = v47;
      }

      while (v47);
    }

    v48 = [v16 count];
    v7 = v54;
    v12 = v55;
    if (v48 != [v17 count])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101354844();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135486C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135490C();
      }

      v49 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v49);
      }

      v50 = [NSString stringWithUTF8String:"[CRLGroupLayout childInfosForChildLayouts]", v53];
      v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:133 isFatal:0 description:"should have same number of children!"];
    }

    v13 = v53;
  }

  return v59;
}

- (BOOL)canInspectGeometry
{
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 canvas];
  v5 = [v4 canvasController];

  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 hasSelectedInfosInMultipleContainers];
  }

  return v6;
}

- (id)layoutGeometryFromInfo
{
  v2 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5 = [(CRLCanvasLayout *)self info];
    v6 = [v5 geometry];

    if (![v6 widthValid] || (objc_msgSend(v6, "heightValid") & 1) == 0)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101354934();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v21 = v8;
        v27 = [v6 widthValid];
        v26 = [v6 heightValid];
        v29 = [(CRLGroupLayout *)self p_groupItem];
        v28 = [v29 childItems];
        v25 = [v28 count];
        v22 = NSStringFromCGRect(*(&self->_dynamicLayoutGeometry + 2));
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 67111426;
        v31 = v7;
        v32 = 2082;
        v33 = "[CRLGroupLayout layoutGeometryFromInfo]";
        v34 = 2082;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m";
        v36 = 1024;
        v37 = 156;
        v38 = 1024;
        v39 = v27;
        v40 = 1024;
        v41 = v26;
        v42 = 2048;
        v43 = v25;
        v44 = 2114;
        v45 = v22;
        v46 = 2114;
        v47 = v24;
        v48 = 2114;
        v49 = v6;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid info geom! wV: %d hV: %d. numChildren: %zi boundsForStandardKnobs %{public}@ %{public}@ geom: %{public}@", buf, 0x56u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101354948();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLGroupLayout layoutGeometryFromInfo]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m"];
      v12 = [v6 widthValid];
      v13 = [v6 heightValid];
      v14 = [(CRLGroupLayout *)self p_groupItem];
      v15 = [v14 childItems];
      v16 = [v15 count];
      v17 = NSStringFromCGRect(*(&self->_dynamicLayoutGeometry + 2));
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:156 isFatal:0 description:"Invalid info geom! wV: %d hV: %d. numChildren: %zi boundsForStandardKnobs %{public}@ %{public}@ geom: %{public}@", v12, v13, v16, v17, v19, v6];
    }

    v3 = [[CRLCanvasLayoutGeometry alloc] initWithInfoGeometry:v6];
  }

  return v3;
}

- (id)reliedOnLayouts
{
  v2 = [(CRLGroupLayout *)self p_groupedChildren];
  v3 = [v2 set];

  return v3;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  v5 = self;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (CGRect)computeBoundsForStandardKnobs
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(CRLGroupLayout *)self p_groupedChildren];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = sub_100014370(v12, v11);
        v14 = v13;
        if (!v13 || ([v13 p_groupItem], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEffectivelyEmpty"), v15, (v16 & 1) == 0))
        {
          v17 = [v11 pureGeometry];
          [v17 frame];
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v31 = CGRectUnion(v30, v34);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectIsNull(v32))
  {
    +[_TtC8Freeform12CRLGroupItem unscaledSizeForEmptyGroups];
    x = sub_10011ECB4();
    y = v18;
    width = v19;
    height = v20;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)computeLayoutGeometry
{
  v3 = (&self->_dynamicLayoutGeometry + 2);
  [(CRLGroupLayout *)self computeBoundsForStandardKnobs];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;

  return [(CRLGroupLayout *)self layoutGeometryFromInfo];
}

- (CGRect)rectInRootForSelectionPath:(id)a3
{
  v3 = [(CRLCanvasLayout *)self pureGeometryInRoot];
  [v3 frame];
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

- (void)processChangedProperty:(unint64_t)a3
{
  if (a3 == 7)
  {
    v5 = [(CRLCanvasLayout *)self info];
    v6 = [v5 isFreehandDrawing];

    if (v6)
    {
      goto LABEL_14;
    }

    v7 = [(CRLCanvasLayout *)self info];
    v8 = [v7 geometry];
    v9 = v8;
    if (v8)
    {
      [v8 transform];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

    v10 = sub_1001399C0(&v17);
    v11 = [(CRLCanvasAbstractLayout *)self geometry];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

    v13 = sub_1001399C0(&v17);
    if (v10 == v13)
    {

      goto LABEL_14;
    }

    v14 = fabs(v13 * 0.000000999999997);
    v15 = vabdd_f64(v10, v13);

    if (v15 < v14)
    {
      goto LABEL_14;
    }

    goto LABEL_3;
  }

  if (a3 == 4)
  {
LABEL_3:
    [(CRLCanvasLayout *)self invalidateChildren];
  }

LABEL_14:
  v16.receiver = self;
  v16.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v16 processChangedProperty:a3];
}

- (CGRect)boundsForStandardKnobs
{
  v2 = *(&self->_dynamicLayoutGeometry + 2);
  v3 = *(&self->_boundsForStandardKnobs.origin.x + 2);
  v4 = *(&self->_boundsForStandardKnobs.origin.y + 2);
  v5 = *(&self->_boundsForStandardKnobs.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frameForMiniFormatterPositioning
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  memset(&v40, 0, sizeof(v40));
  [(CRLCanvasAbstractLayout *)self transform];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [(CRLCanvasAbstractLayout *)self children];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v14 = [v12 info];
        v15 = sub_100014370(v13, v14);

        if (!v15 || ([v15 isEffectivelyEmpty] & 1) == 0)
        {
          [v12 frameForMiniFormatterPositioning];
          v35 = v40;
          v43 = CGRectApplyAffineTransform(v42, &v35);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v44 = CGRectUnion(v43, v49);
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  [(CRLGroupLayout *)self boundsForStandardKnobs];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(CRLCanvasAbstractLayout *)self transform];
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  v50 = CGRectApplyAffineTransform(v45, &v35);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectUnion(v46, v50);
  v24 = v47.origin.x;
  v25 = v47.origin.y;
  v26 = v47.size.width;
  v27 = v47.size.height;
  if (CGRectIsNull(v47))
  {
    +[_TtC8Freeform12CRLGroupItem unscaledSizeForEmptyGroups];
    v24 = sub_10011ECB4();
    v25 = v28;
    v26 = v29;
    v27 = v30;
  }

  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)clipRect
{
  v2 = *(&self->_dynamicLayoutGeometry + 2);
  v3 = *(&self->_boundsForStandardKnobs.origin.x + 2);
  v4 = *(&self->_boundsForStandardKnobs.origin.y + 2);
  v5 = *(&self->_boundsForStandardKnobs.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateLayoutGeometryInPreparationForPartitioning
{
  v3 = [(CRLGroupLayout *)self p_groupItem];
  v4 = [v3 isEffectivelyEmpty];

  if ((v4 & 1) == 0)
  {
    v5 = [(CRLGroupLayout *)self p_groupedChildren];
    v6 = [v5 array];
    v7 = [v6 arrayByAddingObject:self];
    v8 = [NSSet setWithArray:v7];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v53 + 1) + 8 * i) invalidateFrame];
        }

        v11 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v11);
    }

    v14 = [(CRLCanvasLayout *)self layoutController];
    [v14 validateLayoutWithDependencies:self];

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [(CRLGroupLayout *)self p_groupedChildren];
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v49 + 1) + 8 * j) frameForCulling];
          v62.origin.x = x;
          v62.origin.y = y;
          v62.size.width = width;
          v62.size.height = height;
          v61 = CGRectUnion(v60, v62);
          x = v61.origin.x;
          y = v61.origin.y;
          width = v61.size.width;
          height = v61.size.height;
        }

        v21 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v21);
    }

    v24 = fmax(width, 1.0);
    v25 = fmax(height, 1.0);
    v26 = [(CRLCanvasAbstractLayout *)self geometry];
    [v26 size];
    v28 = v27;
    v30 = v29;

    v31 = fmax(v28, 1.0);
    v32 = fmax(v30, 1.0);
    memset(&v48, 0, sizeof(v48));
    CGAffineTransformMakeScale(&v48, v24 / v31, v25 / v32);
    CGAffineTransformMakeTranslation(&t2, x / v31, y / v32);
    t1 = v48;
    CGAffineTransformConcat(&v47, &t1, &t2);
    v48 = v47;
    v33 = [(CRLCanvasAbstractLayout *)self geometry];
    v34 = v33;
    if (v33)
    {
      [v33 fullTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v48;
    CGAffineTransformConcat(&v47, &t1, &t2);
    v35 = [CRLCanvasLayoutGeometry geometryFromFullTransform:&v47];
    [(CRLCanvasAbstractLayout *)self setGeometry:v35];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = [(CRLCanvasAbstractLayout *)self children];
    v37 = [v36 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v42;
      do
      {
        for (k = 0; k != v38; k = k + 1)
        {
          if (*v42 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [*(*(&v41 + 1) + 8 * k) offsetGeometryBy:{sub_10011F340(x, y, -1.0)}];
        }

        v38 = [v36 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v38);
    }
  }
}

- (CGRect)alignmentFrame
{
  v2 = (&self->_dynamicLayoutGeometry + 2);
  [(CRLCanvasAbstractLayout *)self transform];
  v4.origin.x = *v2;
  v4.origin.y = v2[1];
  v4.size.width = v2[2];
  v4.size.height = v2[3];
  return CGRectApplyAffineTransform(v4, &v3);
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v4 = [(CRLCanvasLayout *)self pureGeometry];
  [v4 frame];
  v5 = *&a3->c;
  *&v14.a = *&a3->a;
  *&v14.c = v5;
  *&v14.tx = *&a3->tx;
  v16 = CGRectApplyAffineTransform(v15, &v14);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)shouldBeIncludedInParentFrameForCulling
{
  v2 = [(CRLGroupLayout *)self p_groupItem];
  v3 = [v2 isEffectivelyEmpty];

  return v3 ^ 1;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)a3
{
  [(CRLGroupLayout *)self boundsForStandardKnobs];

  [(CRLCanvasAbstractLayout *)self rectInRoot:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v3 = a3;
  if ([(CRLGroupLayout *)self resizeMayChangeAspectRatio])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(&self->_cachedGroupedChildren + 6) = v5;
  [(CRLGroupLayout *)self p_createDynamicCopies];
  v6.receiver = self;
  v6.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v6 beginDynamicOperationWithRealTimeCommands:v3];
}

- (id)computeInfoGeometryDuringResize
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  v3 = [v2 infoGeometry];

  return v3;
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v11 takeRotationFromTracker:v4];
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (v4)
  {
    [v4 rotateTransform];
  }

  v5 = [(CRLCanvasLayout *)self originalGeometry];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v6 = [v5 geometryByTransformingBy:v7];

  [(CRLGroupLayout *)self setDynamicGeometry:v6];
  [(CRLCanvasLayout *)self invalidatePosition];
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v2 = [(CRLCanvasLayout *)self info];
  v3 = [v2 canAspectRatioLockBeChangedByUser];

  return v3;
}

- (BOOL)resizeMayChangeAspectRatio
{
  v2 = *(&self->_cachedGroupedChildren + 6);
  if (!v2)
  {
    v5 = [(CRLCanvasLayout *)self info];
    if (([v5 aspectRatioLocked] & 1) != 0 || !objc_msgSend(v5, "canAspectRatioLockBeChangedByUser"))
    {
      v3 = 0;
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = [v5 allNestedChildrenItemsIncludingGroups];
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
LABEL_7:
        v10 = 0;
        while (1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v26 + 1) + 8 * v10) aspectRatioLocked])
          {
            goto LABEL_30;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v8)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      if (([v5 isFreehandDrawing] & 1) == 0)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [(CRLGroupLayout *)self p_groupedChildren];
        v11 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v11)
        {
          v3 = 1;
          goto LABEL_31;
        }

        v12 = v11;
        v13 = *v23;
LABEL_18:
        v14 = 0;
        while (1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = [v15 info];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            break;
          }

          v18 = [v15 info];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v15 info];
            v20 = [v19 isFreehandDrawing];

            if ((v20 & 1) == 0 && ![v15 resizeMayChangeAspectRatio])
            {
              break;
            }
          }

          else
          {
          }

          if (v12 == ++v14)
          {
            v12 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            v3 = 1;
            if (v12)
            {
              goto LABEL_18;
            }

            goto LABEL_31;
          }
        }

LABEL_30:
        v3 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v3 = 1;
    }

LABEL_32:

    return v3;
  }

  return v2 == 1;
}

- (id)commandForSettingAspectRatioLocked:(BOOL)a3
{
  v35.receiver = self;
  v35.super_class = CRLGroupLayout;
  v5 = [(CRLCanvasLayout *)&v35 commandForSettingAspectRatioLocked:?];
  v6 = objc_opt_class();
  v7 = [(CRLCanvasLayout *)self info];
  v8 = sub_100014370(v6, v7);

  v9 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v9 addCommand:v5];
  if (!a3)
  {
    v29 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v8 allNestedChildrenItemsIncludingGroups];
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      p_cache = _TtC8Freeform19CRLCommandSetStroke.cache;
      v14 = *v32;
      v30 = v9;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if (v16 != v8)
          {
            v17 = objc_opt_class();
            v18 = sub_100013F00(v17, v16);
            if ([v18 aspectRatioLocked])
            {
              if (([v18 canAspectRatioLockBeChangedByUser] & 1) == 0)
              {
                v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101354970();
                }

                v20 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v37 = v19;
                  v38 = 2082;
                  v39 = "[CRLGroupLayout commandForSettingAspectRatioLocked:]";
                  v40 = 2082;
                  v41 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m";
                  v42 = 1024;
                  v43 = 411;
                  _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Able to change aspect ratio of a group with children whose aspect ratio cannot be changed by the user!", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101354998();
                }

                v21 = p_cache;
                v22 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v26 = v22;
                  v27 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v37 = v19;
                  v38 = 2114;
                  v39 = v27;
                  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v23 = [NSString stringWithUTF8String:"[CRLGroupLayout commandForSettingAspectRatioLocked:]"];
                v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m"];
                [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:411 isFatal:0 description:"Able to change aspect ratio of a group with children whose aspect ratio cannot be changed by the user!"];

                v9 = v30;
                p_cache = v21;
              }

              v25 = [objc_alloc((p_cache + 77)) initWithBoardItem:v18 aspectRatioLocked:0];
              [(CRLCommandGroup *)v9 addCommand:v25];
            }
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v12);
    }

    v5 = v29;
  }

  return v9;
}

- (BOOL)shouldSnapWhileResizing
{
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v3 = [(CRLCanvasLayout *)self pureGeometry];
  [v3 size];
  v6 = sub_100139A98(&v8, v4, v5);

  return v6;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v20 takeSizeFromTracker:v4];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (v4)
  {
    [v4 transformForLayout:self];
  }

  v5 = [(CRLCanvasLayout *)self originalGeometry];
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v6 = [v5 geometryByTransformingBy:v16];

  [(CRLGroupLayout *)self setDynamicGeometry:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(CRLGroupLayout *)self p_groupedChildren];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
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

        [*(*(&v12 + 1) + 8 * i) takeSizeFromTracker:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
    }

    while (v9);
  }

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLCanvasLayout *)self invalidateChildren];
}

- (CGSize)minimumSize
{
  v3 = *(&self->_boundsForStandardKnobs.size.width + 2);
  v38 = *(&self->_boundsForStandardKnobs.origin.y + 2);
  v4 = [(CRLGroupLayout *)self resizeMayChangeAspectRatio];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [(CRLGroupLayout *)self p_groupedChildren];
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        [v12 minimumSize];
        v14 = v13;
        v16 = v15;
        if ((v4 & 1) == 0)
        {
          v17 = [v12 pureGeometry];
          [v17 size];
          sub_100121C3C(v14, v16, v18, v19);
        }

        v20 = sub_10011ECB4();
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [v12 pureGeometry];
        v28 = v27;
        if (v27)
        {
          [v27 transform];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        v46.origin.x = v20;
        v46.origin.y = v22;
        v46.size.width = v24;
        v46.size.height = v26;
        v47 = CGRectApplyAffineTransform(v46, &v39);
        width = v47.size.width;
        height = v47.size.height;

        v31 = [v12 pureGeometry];
        [v31 frame];
        v33 = v32;
        v35 = v34;

        if (v33 > 1.0e-11)
        {
          v10 = fmax(v10, width / v33);
        }

        if (v35 > 1.0e-11)
        {
          v9 = fmax(v9, height / v35);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  v36 = v38 * v10;
  v37 = v3 * v9;
  result.height = v37;
  result.width = v36;
  return result;
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v20 takeFreeTransformFromTracker:v4];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (v4)
  {
    [v4 freeTransformForLayout:self];
  }

  v5 = [(CRLCanvasLayout *)self originalGeometry];
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v6 = [v5 geometryByTransformingBy:v16];

  [(CRLGroupLayout *)self setDynamicGeometry:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(CRLGroupLayout *)self p_groupedChildren];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
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

        [*(*(&v12 + 1) + 8 * i) takeFreeTransformFromTracker:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v4 isResizing])
  {
    [(CRLCanvasLayout *)self invalidateFrame];
    [(CRLCanvasLayout *)self invalidateChildren];
  }
}

- (void)endDynamicOperation
{
  *(&self->_cachedGroupedChildren + 6) = 0;
  [(CRLGroupLayout *)self p_destroyDynamicCopies];
  v3.receiver = self;
  v3.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v3 endDynamicOperation];
}

- (void)i_clearInvalidationCache
{
  v3.receiver = self;
  v3.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v3 i_clearInvalidationCache];
  BYTE2(self->_cachedGroupedChildren) = 0;
}

- (void)invalidate
{
  if ((BYTE2(self->_cachedGroupedChildren) & 1) == 0)
  {
    BYTE2(self->_cachedGroupedChildren) = [(CRLCanvasLayout *)self layoutState]!= 0;
    v5.receiver = self;
    v5.super_class = CRLGroupLayout;
    [(CRLCanvasLayout *)&v5 invalidate];
    if ([(CRLCanvasLayout *)self layoutState]!= 2)
    {
      v3 = *(&self->_boundsForStandardKnobs.size.height + 2);
      *(&self->_boundsForStandardKnobs.size.height + 2) = 0.0;

      v4 = *(&self->_cachedWrapPath + 2);
      *(&self->_cachedWrapPath + 2) = 0;
    }

    [(CRLCanvasLayout *)self invalidatePositionWithoutSideEffects];
    [(CRLCanvasLayout *)self invalidateSizeWithoutSideEffects];
    [(CRLCanvasLayout *)self invalidateCacheForMagnets];
  }
}

- (void)updateChildrenFromInfo
{
  v4.receiver = self;
  v4.super_class = CRLGroupLayout;
  [(CRLCanvasLayout *)&v4 updateChildrenFromInfo];
  v3 = *(&self->_cachedPathForClippingConnectionLines + 2);
  *(&self->_cachedPathForClippingConnectionLines + 2) = 0;
}

- (BOOL)shouldDisplayGuides
{
  v3 = [(CRLGroupLayout *)self p_groupItem];
  v4 = [v3 isEffectivelyEmpty];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLGroupLayout;
  return [(CRLCanvasLayout *)&v6 shouldDisplayGuides];
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v2 = [(CRLGroupLayout *)self p_groupedChildren];
  v3 = [v2 array];

  return v3;
}

- (BOOL)allowsConnections
{
  v2 = [(CRLCanvasLayout *)self info];
  v3 = [v2 childInfos];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isFreehandDrawing];
  }

  return v4;
}

- (BOOL)supportsRotation
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = [v7 info];
        v10 = sub_100014370(v8, v9);

        LODWORD(v9) = [v10 supportsParentRotation];
        if (!v9)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)supportsFlipping
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) supportsParentFlipping])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)supportsParentFlipping
{
  v14.receiver = self;
  v14.super_class = CRLGroupLayout;
  if (![(CRLCanvasLayout *)&v14 supportsParentFlipping])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CRLGroupLayout *)self p_groupedChildren];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) supportsParentFlipping])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (id)commandToFlipWithOrientation:(int)a3
{
  [(CRLGroupLayout *)self boundsForStandardKnobs];
  if (a3)
  {
    MidY = CGRectGetMidY(*&v5);
    v10 = MidY + MidY;
    v11 = 1.0;
    v12 = -1.0;
    v13 = 0.0;
  }

  else
  {
    MidX = CGRectGetMidX(*&v5);
    v13 = MidX + MidX;
    v11 = -1.0;
    v12 = 1.0;
    v10 = 0.0;
  }

  v34 = 0uLL;
  v15 = [(CRLCanvasAbstractLayout *)self geometry];
  v16 = v15;
  if (v15)
  {
    [v15 transform];
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  v27 = v11;
  v28 = v34;
  v29 = v12;
  v30 = v13;
  v31 = v10;
  sub_100139D98(&v27, v32, &v33);
  a = v33.a;
  v34 = *&v33.b;
  v26 = *&v33.d;
  ty = v33.ty;

  v19 = [(CRLCanvasLayout *)self info];
  v20 = [v19 geometry];
  *v32 = a;
  *(v32 + 8) = v34;
  *(&v32[1] + 8) = v26;
  *(&v32[2] + 1) = ty;
  v21 = [v20 geometryByAppendingTransform:v32];

  v22 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
  v23 = [(CRLGroupLayout *)self boardItem];
  v24 = [(CRLCommandSetInfoGeometry *)v22 initWithBoardItem:v23 geometry:v21];

  return v24;
}

- (id)p_childWrapPathsFrom:(id)a3 inDescendents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v24 = v8;
    v25 = v6;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v13 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappable])
        {
          if (![v6 containsObject:v13])
          {
            continue;
          }

          v14 = [v13 i_wrapPath];
          v15 = [v14 copy];

          if (v13)
          {
            [v13 transform];
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
          }

          [v15 transformUsingAffineTransform:&v31];
          [v7 addObject:v15];
        }

        else
        {
          if (![v13 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappableParent])
          {
            continue;
          }

          v16 = [v13 children];
          v17 = [(CRLGroupLayout *)self p_childWrapPathsFrom:v16 inDescendents:v6];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v17;
          v18 = [v15 countByEnumeratingWithState:&v27 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(v15);
                }

                v22 = [*(*(&v27 + 1) + 8 * j) copy];
                if (v13)
                {
                  [v13 transform];
                }

                else
                {
                  v32 = 0u;
                  v33 = 0u;
                  v31 = 0u;
                }

                [v22 transformUsingAffineTransform:&v31];
                [v7 addObject:v22];
              }

              v19 = [v15 countByEnumeratingWithState:&v27 objects:v38 count:16];
            }

            while (v19);
          }

          v8 = v24;
          v6 = v25;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)computeWrapPath
{
  v3 = [(CRLGroupLayout *)self descendentWrappables];
  v4 = [[NSHashTable alloc] initWithOptions:512 capacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [(CRLCanvasAbstractLayout *)self children];
  v11 = [(CRLGroupLayout *)self p_childWrapPathsFrom:v10 inDescendents:v4];

  v12 = [CRLBezierPath uniteBezierPaths:v11];

  return v12;
}

- (id)i_wrapPath
{
  if (!*(&self->_boundsForStandardKnobs.size.height + 2))
  {
    v3 = [(CRLCanvasAbstractLayout *)self children];
    if ([v3 count])
    {
      v4 = [(CRLGroupLayout *)self p_groupItem];
      v5 = [v4 isEffectivelyEmpty];

      if ((v5 & 1) == 0)
      {
        v6 = [(CRLGroupLayout *)self computeWrapPath];
LABEL_7:
        v7 = *(&self->_boundsForStandardKnobs.size.height + 2);
        *(&self->_boundsForStandardKnobs.size.height + 2) = v6;

        goto LABEL_8;
      }
    }

    else
    {
    }

    [(CRLGroupLayout *)self boundsForStandardKnobs];
    v6 = [CRLBezierPath bezierPathWithRect:?];
    goto LABEL_7;
  }

LABEL_8:
  v8 = *(&self->_boundsForStandardKnobs.size.height + 2);

  return v8;
}

- (id)pathForClippingConnectionLines
{
  v3 = *(&self->_cachedWrapPath + 2);
  if (!v3)
  {
    v4 = [(CRLGroupLayout *)self i_wrapPath];
    v5 = [CRLBezierPath exteriorOfBezierPath:v4];
    v6 = *(&self->_cachedWrapPath + 2);
    *(&self->_cachedWrapPath + 2) = v5;

    v3 = *(&self->_cachedWrapPath + 2);
  }

  return v3;
}

- (CGRect)rectInRootForCalculatingActivityLineEndpoint
{
  [(CRLGroupLayout *)self boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  v23 = CGRectApplyAffineTransform(v22, &v21);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v27.receiver = self;
  v27.super_class = CRLGroupLayout;
  v9 = *&a4->c;
  *&v26.a = *&a4->a;
  *&v26.c = v9;
  *&v26.tx = *&a4->tx;
  [(CRLCanvasLayout *)&v27 transferLayoutGeometryToInfo:v8 withAdditionalTransform:&v26 assertIfInDocument:v5];
  v10 = [(CRLGroupLayout *)self p_groupItem];
  v11 = [v10 childItems];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, v8);
  memset(&v26, 0, sizeof(v26));
  [(CRLGroupLayout *)self boundsForStandardKnobs];
  v15 = -v14;
  [(CRLGroupLayout *)self boundsForStandardKnobs];
  CGAffineTransformMakeTranslation(&v26, v15, -v16);
  v17 = [v11 count];
  if (v17)
  {
    v18 = v17;
    for (i = 0; i != v18; ++i)
    {
      v20 = [(CRLCanvasLayout *)self layoutController];
      v21 = [v11 objectAtIndexedSubscript:i];
      v22 = [v20 layoutForInfo:v21];

      v23 = [v13 childItems];
      v24 = [v23 objectAtIndexedSubscript:i];
      v25 = v26;
      [v22 transferLayoutGeometryToInfo:v24 withAdditionalTransform:&v25 assertIfInDocument:v5];
    }
  }
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v5 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v6 = *(&self->_boundsForStandardKnobs.origin.y + 2);
  v31 = *(&self->_dynamicLayoutGeometry + 2);
  v32 = v6;
  *(&self->_dynamicLayoutGeometry + 2) = CGPointZero;
  v30.receiver = self;
  v30.super_class = CRLGroupLayout;
  v7 = *&a3->c;
  v27 = *&a3->a;
  v28 = v7;
  v29 = *&a3->tx;
  v8 = [(CRLCanvasLayout *)&v30 commandToClampModelToLayoutSizeWithAdditionalTransform:&v27];
  v9 = v32;
  *(&self->_dynamicLayoutGeometry + 2) = v31;
  *(&self->_boundsForStandardKnobs.origin.y + 2) = v9;
  if (v8)
  {
    [(CRLCommandGroup *)v5 addCommand:v8];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(CRLGroupLayout *)self p_groupedChildren];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    v21 = *&CGAffineTransformIdentity.c;
    v22 = *&CGAffineTransformIdentity.a;
    v20 = *&CGAffineTransformIdentity.tx;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v27 = v22;
        v28 = v21;
        v29 = v20;
        v16 = [v15 commandToClampModelToLayoutSizeWithAdditionalTransform:{&v27, v20, v21, v22}];
        if (v16)
        {
          [(CRLCommandGroup *)v5 addCommand:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v12);
  }

  if ([(CRLCommandGroup *)v5 isEmpty])
  {
    v17 = 0;
  }

  else
  {
    v17 = v5;
  }

  v18 = v17;

  return v18;
}

- (id)descendentWrappables
{
  v3 = [NSMutableArray alloc];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CRLCanvasAbstractLayout *)self children];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappable])
        {
          [v5 addObject:v11];
        }

        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappableParent])
        {
          v12 = [v11 descendentWrappables];
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)a3
{
  v4 = a3;
  v5 = [v4 parent];

  if (v5 == self)
  {
    v16 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, v4);
    v8 = [(CRLCanvasAbstractLayout *)self childLayoutContainingPossibleDescendentLayout:v7];
    v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLCanvasWrappableParent);

    if (v15)
    {
      v16 = [v15 descendentWrappablesContainsWrappable:v4];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)p_createDynamicCopies
{
  if (*(&self->super.mInfoGeometryBeforeDynamicOperation + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013549C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013549D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354A84();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLGroupLayout p_createDynamicCopies]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:774 isFatal:0 description:"expected nil value for '%{public}s'", "_dynamicLayoutGeometry"];
  }

  v6 = [(CRLCanvasAbstractLayout *)self geometry];
  v7 = [v6 copy];
  v8 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  *(&self->super.mInfoGeometryBeforeDynamicOperation + 2) = v7;
}

- (void)setDynamicGeometry:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLGroupLayout;
  v4 = a3;
  [(CRLCanvasLayout *)&v7 setDynamicGeometry:v4];
  v5 = [v4 copy];

  v6 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  *(&self->super.mInfoGeometryBeforeDynamicOperation + 2) = v5;
}

- (void)p_destroyDynamicCopies
{
  v3 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354AAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354AC0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354B70();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLGroupLayout p_destroyDynamicCopies]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:784 isFatal:0 description:"invalid nil value for '%{public}s'", "_dynamicLayoutGeometry"];

    v3 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  }

  *(&self->super.mInfoGeometryBeforeDynamicOperation + 2) = 0;
}

- (id)p_groupedChildren
{
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [NSOrderedSet orderedSetWithArray:v2];

  return v3;
}

@end