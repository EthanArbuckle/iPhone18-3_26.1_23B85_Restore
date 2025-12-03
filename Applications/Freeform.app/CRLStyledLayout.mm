@interface CRLStyledLayout
- (CGRect)aliasedAlignmentFrameForScale:(double)scale;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform;
- (double)opacity;
- (double)scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:(CGAffineTransform *)transform withStartingPathSource:(id)source;
- (void)dynamicOpacityChangeDidEnd;
- (void)dynamicOpacityUpdateToValue:(double)value;
- (void)setSuppressesShadowsAndReflections:(BOOL)reflections;
@end

@implementation CRLStyledLayout

- (void)setSuppressesShadowsAndReflections:(BOOL)reflections
{
  if (BYTE2(self->mDynamicOpacity) != reflections)
  {
    BYTE2(self->mDynamicOpacity) = reflections;
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];
    [canvas canvasInvalidatedForLayout:self];
  }
}

- (double)scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:(CGAffineTransform *)transform withStartingPathSource:(id)source
{
  sourceCopy = source;
  v7 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v9 = sub_100014370(v7, parent);

  if (v9)
  {
    [v9 maximumFrameSizeForChild:self];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 1.79769313e308;
    v13 = 1.79769313e308;
  }

  if (v11 >= 1.79769313e308)
  {
    v14 = 1.0;
    if (v13 >= 1.79769313e308)
    {
      goto LABEL_80;
    }
  }

  stroke = [(CRLCanvasLayout *)self stroke];
  v16 = [sourceCopy copy];
  [v16 naturalSize];
  v90 = v18;
  v91 = v17;
  [v16 naturalSize];
  v20 = v19;
  v22 = v21;
  v23 = 4;
  v93 = v11;
  v92 = v13;
  while (1)
  {
    bezierPath = [v16 bezierPath];
    v25 = *&transform->c;
    *v102 = *&transform->a;
    *&v102[16] = v25;
    *&v102[32] = *&transform->tx;
    if (!CGAffineTransformIsIdentity(v102))
    {
      v26 = *&transform->c;
      *v102 = *&transform->a;
      *&v102[16] = v26;
      *&v102[32] = *&transform->tx;
      [bezierPath transformUsingAffineTransform:v102];
    }

    [bezierPath boundsIncludingCRLStroke:stroke];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = sub_10011F31C(v31, v33, v11);
    if (v23 == 4 && v35 <= 0.0 && v36 <= 0.0)
    {
      break;
    }

    if (v23 == 4)
    {
      [bezierPath bounds];
      x = v107.origin.x;
      y = v107.origin.y;
      width = v107.size.width;
      height = v107.size.height;
      v98 = v107.size.height;
      MinY = CGRectGetMinY(v107);
      v108.origin.x = v28;
      v108.origin.y = v30;
      v108.size.width = v32;
      v108.size.height = v34;
      v96 = CGRectGetMinY(v108);
      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = height;
      MinX = CGRectGetMinX(v109);
      v110.origin.x = v28;
      v110.origin.y = v30;
      v110.size.width = v32;
      v110.size.height = v34;
      log = MinX - CGRectGetMinX(v110);
      v111.origin.x = v28;
      v111.origin.y = v30;
      v111.size.width = v32;
      v111.size.height = v34;
      MaxY = CGRectGetMaxY(v111);
      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = v98;
      v94 = CGRectGetMaxY(v112);
      v113.origin.x = v28;
      v113.origin.y = v30;
      v113.size.width = v32;
      v113.size.height = v34;
      MaxX = CGRectGetMaxX(v113);
      v114.origin.x = x;
      v114.origin.y = y;
      v114.size.width = width;
      v11 = v93;
      v114.size.height = v98;
      v62 = MaxX - CGRectGetMaxX(v114);
      v13 = v92;
      sub_10011F31C(v93, v92, 0.01);
      sub_10011ECB4();
      v64 = v63;
      v66 = v65 - (log + v62);
      [(CRLCanvasLayout *)self minimumSize];
      if (v66 < v67 || (v68 = v64 - (MinY - v96 + MaxY - v94), [(CRLCanvasLayout *)self minimumSize], v68 < v69))
      {
        [(CRLCanvasLayout *)self minimumSize];
        [v16 scaleToNaturalSize:?];
        [v16 naturalSize];
        v20 = v78;
        v22 = v79;
        break;
      }

      isLineSegment = [bezierPath isLineSegment];
      [v16 naturalSize];
      if (!isLineSegment)
      {
        if (v71 != 0.0)
        {
          [v16 naturalSize];
          if (v73 != 0.0)
          {
            [v16 naturalSize];
            v55 = sub_100121EF4(0, v76, v77, v66, v68);
            goto LABEL_56;
          }
        }

        [v16 naturalSize];
      }

      v55 = sub_100121F84(v71, v72, v66, v68);
    }

    else
    {
      v37 = v35 > 0.0 || v35 <= -1.0;
      if (!v37 && v36 <= 0.0)
      {
        break;
      }

      v38 = v36 <= -1.0 || v36 > 0.0;
      v39 = !v38 && v35 <= 0.0;
      if (v39 || v23 == 0)
      {
        break;
      }

      v42 = fmax(v35, v36) <= 0.0 || v11 <= 0.5 || v13 <= 0.5;
      v43 = v11;
      v44 = v13;
      if (!v42)
      {
        v43 = sub_10011F31C(v11, v13, 0.5);
      }

      v45 = v43 / v32;
      v46 = v44 / v34;
      if (v46 >= 1.0 || v45 <= 1.0)
      {
        v48 = v45;
      }

      else
      {
        v48 = v46;
      }

      if (v45 < 1.0 && v46 > 1.0)
      {
        v48 = v45;
      }

      else
      {
        v45 = v46;
      }

      v49 = v48;
      v50 = v45;
      v51 = fminf(v49, v50);
      if (v51 == 0.0)
      {
        v52 = 0.001;
      }

      else
      {
        v52 = v51;
      }

      [v16 naturalSize];
      v55 = sub_10011F340(v53, v54, v52);
    }

LABEL_56:
    [v16 scaleToNaturalSize:v55];
    [v16 naturalSize];
    v20 = v74;
    v22 = v75;

    if (--v23 == -1)
    {
      goto LABEL_61;
    }
  }

LABEL_61:
  v14 = 1.0;
  if (v91 != v20 || v90 != v22)
  {
    v80 = v22 / v90;
    v14 = v22 / v90;
    if (v20 / v91 != 0.0)
    {
      v14 = v20 / v91;
      if (v80 != 0.0)
      {
        if (v20 / v91 >= v80)
        {
          v14 = v22 / v90;
        }

        else
        {
          v14 = v20 / v91;
        }
      }
    }

    if (v14 >= 0.0 && v14 <= 0.0)
    {
      v81 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138ECE4();
      }

      v82 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        loga = v82;
        v105.height = v90;
        v105.width = v91;
        v99 = NSStringFromCGSize(v105);
        v106.width = v20;
        v106.height = v22;
        v89 = NSStringFromCGSize(v106);
        *v102 = 67110402;
        *&v102[4] = v81;
        *&v102[8] = 2082;
        *&v102[10] = "[CRLStyledLayout scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:withStartingPathSource:]";
        *&v102[18] = 2082;
        *&v102[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledLayout.m";
        *&v102[28] = 1024;
        *&v102[30] = 187;
        *&v102[34] = 2112;
        *&v102[36] = v99;
        *&v102[44] = 2112;
        *&v102[46] = v89;
        _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unclamping due to sad math. original natural size %@ proposed natural size %@", v102, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138ED0C();
      }

      v83 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v83, v81);
      }

      v84 = [NSString stringWithUTF8String:"[CRLStyledLayout scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:withStartingPathSource:]"];
      v85 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledLayout.m"];
      v103.height = v90;
      v103.width = v91;
      v86 = NSStringFromCGSize(v103);
      v104.width = v20;
      v104.height = v22;
      v87 = NSStringFromCGSize(v104);
      [CRLAssertionHandler handleFailureInFunction:v84 file:v85 lineNumber:187 isFatal:0 description:"Unclamping due to sad math. original natural size %@ proposed natural size %@", v86, v87];

      v14 = 1.0;
    }
  }

LABEL_80:
  return v14;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)scale
{
  [(CRLCanvasAbstractLayout *)self alignmentFrame];

  v8 = sub_1001221E8(v4, v5, v6, v7, scale);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  parent = [(CRLCanvasAbstractLayout *)self parent];

  [(CRLCanvasAbstractLayout *)self alignmentFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (parent)
  {
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    v13 = parent2;
    if (parent2)
    {
      [parent2 transformInRoot];
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  [(CRLCanvasAbstractLayout *)self alignmentFrame];
  v4 = *&transform->c;
  *&v5.a = *&transform->a;
  *&v5.c = v4;
  *&v5.tx = *&transform->tx;
  return CGRectApplyAffineTransform(v6, &v5);
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v31.receiver = self;
  v31.super_class = CRLStyledLayout;
  v9 = *&transform->c;
  v30[0] = *&transform->a;
  v30[1] = v9;
  v30[2] = *&transform->tx;
  [(CRLCanvasLayout *)&v31 frameForCullingWithBaseFrame:v30 additionalTransform:frame.origin.x, y];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectIsEmpty(v32))
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];
    if ([canvas suppressesShadowsAndReflections])
    {
    }

    else
    {
      suppressesShadowsAndReflections = [(CRLStyledLayout *)self suppressesShadowsAndReflections];

      if (suppressesShadowsAndReflections)
      {
        goto LABEL_6;
      }

      styledInfo = [(CRLStyledLayout *)self styledInfo];
      layoutController = [styledInfo shadow];

      if (layoutController && [layoutController isEnabled])
      {
        [layoutController shadowBoundsForRect:{x, y, width, height}];
        v36.origin.x = v26;
        v36.origin.y = v27;
        v36.size.width = v28;
        v36.size.height = v29;
        v33.origin.x = v11;
        v33.origin.y = v13;
        v33.size.width = v15;
        v33.size.height = v17;
        v34 = CGRectUnion(v33, v36);
        v11 = v34.origin.x;
        v13 = v34.origin.y;
        v15 = v34.size.width;
        v17 = v34.size.height;
      }
    }
  }

LABEL_6:
  v21 = v11;
  v22 = v13;
  v23 = v15;
  v24 = v17;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)dynamicOpacityUpdateToValue:(double)value
{
  *(&self->mIsUpdatingOpacity + 2) = value;
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v6 = [canvasController repForLayout:self];
  [v6 processChangedProperty:18];
}

- (void)dynamicOpacityChangeDidEnd
{
  BYTE2(self->super._dynamicInfoGeometry) = 0;
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v5 = [canvasController repForLayout:self];
  [v5 processChangedProperty:18];
}

- (double)opacity
{
  result = 1.0;
  if (BYTE2(self->super._dynamicInfoGeometry) == 1)
  {
    return *(&self->mIsUpdatingOpacity + 2);
  }

  return result;
}

@end