@interface CRLMultiselectResizeLayout
- (BOOL)p_atLeastOneLayoutSupportsRotation;
- (BOOL)resizeMayChangeAspectRatio;
- (CGSize)minimumSize;
- (NSSet)representedSelectedLayouts;
- (id)computeLayoutGeometry;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_multiselectInfo;
- (id)reliedOnLayouts;
- (void)invalidate;
- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
@end

@implementation CRLMultiselectResizeLayout

- (NSSet)representedSelectedLayouts
{
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
  v5 = [v4 representedSelectedBoardItems];
  v6 = [v3 layoutsForInfos:v5];

  return v6;
}

- (BOOL)p_atLeastOneLayoutSupportsRotation
{
  [(CRLMultiselectResizeLayout *)self representedSelectedLayouts];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) supportsRotation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v5 = v4;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if (v4)
  {
    [v4 transformForLayout:self];
  }

  v6 = [(CRLCanvasLayout *)self originalGeometry];
  v18[0] = v19;
  v18[1] = v20;
  v18[2] = v21;
  v7 = [v6 geometryByTransformingBy:v18];

  [(CRLCanvasLayout *)self setDynamicGeometry:v7];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(CRLMultiselectResizeLayout *)self representedSelectedLayouts];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (v13 != self)
        {
          [(CRLMultiselectResizeLayout *)v13 takeSizeFromTracker:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(CRLCanvasLayout *)self invalidateFrame];
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = CRLMultiselectResizeLayout;
  [(CRLCanvasLayout *)&v3 invalidate];
  if (![(CRLCanvasLayout *)self invalidGeometry])
  {
    [(CRLCanvasLayout *)self invalidateFrame];
  }
}

- (void)recursivelyAddLayoutAndDependentLayoutsToValidateSet:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLMultiselectResizeLayout;
  v5 = a3;
  [(CRLCanvasLayout *)&v7 recursivelyAddLayoutAndDependentLayoutsToValidateSet:v5];
  v6 = [(CRLMultiselectResizeLayout *)self representedSelectedLayouts:v7.receiver];
  [v6 makeObjectsPerformSelector:a2 withObject:v5];
}

- (id)computeLayoutGeometry
{
  v3 = [(CRLCanvasLayout *)self layoutController];

  if (v3)
  {
    v4 = [(CRLCanvasLayout *)self layoutController];
    v5 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
    v6 = [v5 representedSelectedBoardItems];
    v7 = [v4 layoutsForInfos:v6];
  }

  else
  {
    v8 = [(CRLCanvasAbstractLayout *)self parent];
    v9 = [v8 children];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10012B69C;
    v37[3] = &unk_10183EBB8;
    v37[4] = self;
    v10 = [v9 crl_arrayOfObjectsPassingTest:v37];
    v7 = [NSSet setWithArray:v10];
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v33 + 1) + 8 * i) pureGeometry];
        [v20 frame];
        v43.origin.x = v21;
        v43.origin.y = v22;
        v43.size.width = v23;
        v43.size.height = v24;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41 = CGRectUnion(v40, v43);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v17);
  }

  if (!sub_1001207D0(x, y, width, height))
  {
    v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A0A4();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A0CC(v26, v25, x, y, width, height);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A1E8();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v27);
    }

    v28 = [NSString stringWithUTF8String:"[CRLMultiselectResizeLayout computeLayoutGeometry]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiselectResizeLayout.m"];
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v30 = NSStringFromCGRect(v42);
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:97 isFatal:0 description:"Unable to determine proper layout geometry! Got %{public}@", v30];

    y = 0.0;
    height = 1.0;
    width = 1.0;
    x = 0.0;
  }

  v31 = [[CRLCanvasLayoutGeometry alloc] initWithFrame:x, y, width, height];

  return v31;
}

- (id)reliedOnLayouts
{
  v3 = [(CRLCanvasLayout *)self layoutController];

  if (!v3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A210();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A224(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A2E0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMultiselectResizeLayout reliedOnLayouts]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiselectResizeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:105 isFatal:0 description:"invalid nil value for '%{public}s'", "self.layoutController"];
  }

  v9 = [(CRLCanvasLayout *)self layoutController];
  v10 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
  v11 = [v10 representedSelectedBoardItems];
  v12 = [v9 layoutsForInfos:v11];

  return v12;
}

- (BOOL)resizeMayChangeAspectRatio
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
  v4 = [v3 representedSelectedBoardItems];

  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (![*(*(&v22 + 1) + 8 * v8) allowsParentGroupToBeResizedWithoutAspectRatioLock])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(CRLCanvasLayout *)self layoutController];
    v10 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
    v11 = [v10 representedSelectedBoardItems];
    v4 = [v9 layoutsForInfos:v11];

    v12 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (!v12)
    {
      v16 = 1;
      goto LABEL_19;
    }

    v13 = v12;
    v14 = *v19;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v4);
      }

      if (![*(*(&v18 + 1) + 8 * v15) resizeMayChangeAspectRatio])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
        v16 = 1;
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (CGSize)minimumSize
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  [v3 size];
  v44 = v4;
  v6 = v5;

  v7 = [(CRLMultiselectResizeLayout *)self resizeMayChangeAspectRatio];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = [(CRLCanvasLayout *)self layoutController];
  v9 = [(CRLMultiselectResizeLayout *)self p_multiselectInfo];
  v10 = [v9 representedSelectedBoardItems];
  v11 = [v8 layoutsForInfos:v10];

  v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        [v18 minimumSize];
        v20 = v19;
        v22 = v21;
        if ((v7 & 1) == 0)
        {
          v23 = [v18 pureGeometry];
          [v23 size];
          sub_100121C3C(v20, v22, v24, v25);
        }

        v26 = sub_10011ECB4();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = [v18 pureGeometry];
        v34 = v33;
        if (v33)
        {
          [v33 transform];
        }

        else
        {
          memset(&v45, 0, sizeof(v45));
        }

        v52.origin.x = v26;
        v52.origin.y = v28;
        v52.size.width = v30;
        v52.size.height = v32;
        v53 = CGRectApplyAffineTransform(v52, &v45);
        width = v53.size.width;
        height = v53.size.height;

        v37 = [v18 pureGeometry];
        [v37 frame];
        v39 = v38;
        v41 = v40;

        if (v39 > 1.0e-11)
        {
          v16 = fmax(v16, width / v39);
        }

        if (v41 > 1.0e-11)
        {
          v15 = fmax(v15, height / v41);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
  }

  v42 = v44 * v16;
  v43 = v6 * v15;
  result.height = v43;
  result.width = v42;
  return result;
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v9.receiver = self;
  v9.super_class = CRLMultiselectResizeLayout;
  v3 = [(CRLCanvasAbstractLayout *)&v9 parentLayoutForProvidingGuides];
  v4 = [v3 layoutsForProvidingGuidesForChildLayouts];
  v5 = [v4 mutableCopy];

  v6 = [(CRLMultiselectResizeLayout *)self representedSelectedLayouts];
  v7 = [v6 allObjects];
  [v5 removeObjectsInArray:v7];

  return v5;
}

- (id)p_multiselectInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

@end