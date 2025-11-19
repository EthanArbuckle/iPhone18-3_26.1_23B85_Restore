@interface CRLFreehandDrawingTransformLayout
- (NSSet)representedShapeLayouts;
- (id)computeLayoutGeometry;
- (id)p_transformInfo;
- (id)reliedOnLayouts;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)endDynamicOperation;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
@end

@implementation CRLFreehandDrawingTransformLayout

- (NSSet)representedShapeLayouts
{
  v3 = +[NSMutableSet set];
  v4 = [(CRLCanvasLayout *)self layoutController];
  v5 = [(CRLFreehandDrawingTransformLayout *)self p_transformInfo];
  v6 = [v5 representedShapeInfos];
  v7 = [v4 layoutsForInfos:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = sub_100013F00(v14, v13);
        [v3 addObject:{v15, v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

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
  v8 = [(CRLFreehandDrawingTransformLayout *)self representedShapeLayouts];
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
          [(CRLFreehandDrawingTransformLayout *)v13 takeSizeFromTracker:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(CRLCanvasLayout *)self invalidateFrame];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRLFreehandDrawingTransformLayout;
  [(CRLCanvasLayout *)&v21 takeFreeTransformFromTracker:v4];
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (v4)
  {
    [v4 freeTransformForLayout:self];
  }

  v5 = [(CRLCanvasLayout *)self originalGeometry];
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v6 = [v5 geometryByTransformingBy:v17];

  [(CRLCanvasLayout *)self setDynamicGeometry:v6];
  if ([v4 isResizing])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(CRLFreehandDrawingTransformLayout *)self representedShapeLayouts];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (v12 != self)
          {
            [(CRLFreehandDrawingTransformLayout *)v12 takeFreeTransformFromTracker:v4];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v22 count:16];
      }

      while (v9);
    }

    [(CRLCanvasLayout *)self invalidateFrame];
  }
}

- (id)computeLayoutGeometry
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];
  v4 = [v3 children];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100140718;
  v33[3] = &unk_10183EBB8;
  v33[4] = self;
  v5 = [v4 crl_arrayOfObjectsPassingTest:v33];
  v6 = [NSSet setWithArray:v5];

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * i) pureGeometry];
        [v16 frame];
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v37 = CGRectUnion(v36, v39);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  if (!sub_1001207D0(x, y, width, height))
  {
    v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131CC38();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131CC60(v22, v21, x, y, width, height);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131CD78();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v23);
    }

    v24 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTransformLayout computeLayoutGeometry]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformLayout.m"];
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v26 = NSStringFromCGRect(v38);
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:96 isFatal:0 description:"Unable to determine proper layout geometry! Got %{public}@", v26];

    y = 0.0;
    height = 1.0;
    width = 1.0;
    x = 0.0;
  }

  v27 = [[CRLCanvasLayoutGeometry alloc] initWithFrame:x, y, width, height];

  return v27;
}

- (id)reliedOnLayouts
{
  v3 = [(CRLCanvasLayout *)self layoutController];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131CDA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131CDB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131CE4C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTransformLayout reliedOnLayouts]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:104 isFatal:0 description:"invalid nil value for '%{public}s'", "self.layoutController"];
  }

  v7 = [(CRLCanvasLayout *)self layoutController];
  v8 = [(CRLFreehandDrawingTransformLayout *)self p_transformInfo];
  v9 = [v8 representedShapeInfos];
  v10 = [v7 layoutsForInfos:v9];

  return v10;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingTransformLayout;
  [(CRLCanvasLayout *)&v10 beginDynamicOperationWithRealTimeCommands:a3];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasAbstractLayout *)self parent];
  v6 = sub_100013F00(v4, v5);

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131CE74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131CE9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131CF34();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTransformLayout beginDynamicOperationWithRealTimeCommands:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:115 isFatal:0 description:"invalid nil value for '%{public}s'", "parentDrawing"];
  }

  [v6 transformLayoutDidBeginDynamicOperation];
}

- (void)endDynamicOperation
{
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingTransformLayout;
  [(CRLCanvasLayout *)&v9 endDynamicOperation];
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100013F00(v3, v4);

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131CF5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131CF84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D01C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTransformLayout endDynamicOperation]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:123 isFatal:0 description:"invalid nil value for '%{public}s'", "parentDrawing"];
  }

  [v5 transformLayoutDidEndDynamicOperation];
}

- (id)p_transformInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

@end