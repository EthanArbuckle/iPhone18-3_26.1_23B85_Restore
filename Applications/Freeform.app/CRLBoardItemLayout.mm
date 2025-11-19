@interface CRLBoardItemLayout
- (_TtC8Freeform12CRLBoardItem)boardItem;
- (id)computeWrapPath;
- (id)i_wrapPath;
- (id)layoutGeometryFromInfo;
- (id)pathForClippingConnectionLines;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)dragBy:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateParentForWrap;
- (void)p_addVisibleGeometriesFromInfo:(id)a3 intoArray:(id)a4 withTransform:(CGAffineTransform *)a5;
- (void)p_createDynamicBoardItemCopies;
- (void)p_destroyDynamicBoardItemCopies;
- (void)parentDidChange;
- (void)setGeometry:(id)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
@end

@implementation CRLBoardItemLayout

- (_TtC8Freeform12CRLBoardItem)boardItem
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (id)computeWrapPath
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 size];
  v3 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

  return v3;
}

- (id)i_wrapPath
{
  v3 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  if (!v3)
  {
    v4 = [(CRLBoardItemLayout *)self computeWrapPath];
    v5 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
    *(&self->super.mInfoGeometryBeforeDynamicOperation + 2) = v4;

    v3 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  }

  return v3;
}

- (id)pathForClippingConnectionLines
{
  v3 = *(&self->_cachedWrapPath + 2);
  if (!v3)
  {
    v4 = [(CRLBoardItemLayout *)self i_wrapPath];
    v5 = [CRLBezierPath exteriorOfBezierPath:v4];
    v6 = *(&self->_cachedWrapPath + 2);
    *(&self->_cachedWrapPath + 2) = v5;

    v3 = *(&self->_cachedWrapPath + 2);
  }

  return v3;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v3 invalidate];
  [(CRLBoardItemLayout *)self invalidateParentForWrap];
}

- (void)invalidateExteriorWrap
{
  v5.receiver = self;
  v5.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v5 invalidateExteriorWrap];
  v3 = *(&self->super.mInfoGeometryBeforeDynamicOperation + 2);
  *(&self->super.mInfoGeometryBeforeDynamicOperation + 2) = 0;

  v4 = *(&self->_cachedWrapPath + 2);
  *(&self->_cachedWrapPath + 2) = 0;
}

- (id)layoutGeometryFromInfo
{
  if (*(&self->_infoGeometryBeforeDynamicOperation + 2))
  {
    v2 = [[CRLCanvasLayoutGeometry alloc] initWithInfoGeometry:*(&self->_infoGeometryBeforeDynamicOperation + 2)];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLBoardItemLayout;
    v2 = [(CRLCanvasLayout *)&v4 layoutGeometryFromInfo];
  }

  return v2;
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v14 takeRotationFromTracker:v4];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (v4)
  {
    [v4 rotateTransform];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v8 = 0uLL;
  }

  [(CRLCanvasLayout *)self layoutTransformInInfoSpace:&v8];
  v5 = *(&self->_cachedPathForClippingConnectionLines + 2);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  v6 = [v5 geometryByAppendingTransform:&v8];
  v7 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  *(&self->_infoGeometryBeforeDynamicOperation + 2) = v6;

  [(CRLCanvasLayout *)self invalidatePosition];
}

- (void)takeSizeFromTracker:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRLBoardItemLayout;
  v4 = a3;
  [(CRLCanvasLayout *)&v8 takeSizeFromTracker:v4];
  v5 = [v4 currentGeometryForLayout:{self, v8.receiver, v8.super_class}];

  v6 = [v5 copy];
  v7 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  *(&self->_infoGeometryBeforeDynamicOperation + 2) = v6;

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v14 takeFreeTransformFromTracker:v4];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (v4)
  {
    [v4 freeTransformForLayout:self];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v8 = 0uLL;
  }

  [(CRLCanvasLayout *)self layoutTransformInInfoSpace:&v8];
  v5 = *(&self->_cachedPathForClippingConnectionLines + 2);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  v6 = [v5 geometryByAppendingTransform:&v8];
  v7 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  *(&self->_infoGeometryBeforeDynamicOperation + 2) = v6;

  if ([v4 isResizing])
  {
    [(CRLCanvasLayout *)self invalidateFrame];
    [(CRLBoardItemLayout *)self invalidateExteriorWrap];
  }

  else
  {
    [(CRLCanvasLayout *)self invalidatePosition];
  }
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v4 beginDynamicOperationWithRealTimeCommands:a3];
  [(CRLBoardItemLayout *)self p_createDynamicBoardItemCopies];
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v3 endDynamicOperation];
  [(CRLBoardItemLayout *)self p_destroyDynamicBoardItemCopies];
}

- (void)p_createDynamicBoardItemCopies
{
  v3 = [(CRLCanvasLayout *)self info];
  v4 = [v3 geometry];

  if (*(&self->_cachedPathForClippingConnectionLines + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E474();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E488();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E51C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLBoardItemLayout p_createDynamicBoardItemCopies]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:159 isFatal:0 description:"expected nil value for '%{public}s'", "_infoGeometryBeforeDynamicOperation"];
  }

  v8 = [v4 copy];
  v9 = *(&self->_cachedPathForClippingConnectionLines + 2);
  *(&self->_cachedPathForClippingConnectionLines + 2) = v8;

  if (*(&self->_infoGeometryBeforeDynamicOperation + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E544();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E56C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E600();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLBoardItemLayout p_createDynamicBoardItemCopies]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:162 isFatal:0 description:"expected nil value for '%{public}s'", "_dynamicInfoGeometry"];
  }

  v13 = [v4 copy];
  v14 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  *(&self->_infoGeometryBeforeDynamicOperation + 2) = v13;
}

- (void)p_destroyDynamicBoardItemCopies
{
  v3 = *(&self->_cachedPathForClippingConnectionLines + 2);
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E628();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E63C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E6D0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLBoardItemLayout p_destroyDynamicBoardItemCopies]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:168 isFatal:0 description:"invalid nil value for '%{public}s'", "_infoGeometryBeforeDynamicOperation"];

    v3 = *(&self->_cachedPathForClippingConnectionLines + 2);
  }

  *(&self->_cachedPathForClippingConnectionLines + 2) = 0;

  v7 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E6F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E720();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E7B4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLBoardItemLayout p_destroyDynamicBoardItemCopies]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:171 isFatal:0 description:"invalid nil value for '%{public}s'", "_dynamicInfoGeometry"];

    v7 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  }

  *(&self->_infoGeometryBeforeDynamicOperation + 2) = 0;
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v13 dragBy:?];
  v6 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E7DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E804();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E898();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLBoardItemLayout dragBy:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:186 isFatal:0 description:"invalid nil value for '%{public}s'", "_dynamicInfoGeometry"];

    v6 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  }

  CGAffineTransformMakeTranslation(&v12, x, y);
  v10 = [v6 geometryByAppendingTransform:&v12];
  v11 = *(&self->_infoGeometryBeforeDynamicOperation + 2);
  *(&self->_infoGeometryBeforeDynamicOperation + 2) = v10;

  [(CRLBoardItemLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = v5;
  if (!v5 || ([v5 isEqual:v4] & 1) == 0 && objc_msgSend(v6, "differsInMoreThanTranslationFrom:", v4))
  {
    [(CRLBoardItemLayout *)self invalidateExteriorWrap];
  }

  v7.receiver = self;
  v7.super_class = CRLBoardItemLayout;
  [(CRLCanvasAbstractLayout *)&v7 setGeometry:v4];
}

- (void)parentDidChange
{
  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
  v3.receiver = self;
  v3.super_class = CRLBoardItemLayout;
  [(CRLCanvasLayout *)&v3 parentDidChange];
}

- (void)p_addVisibleGeometriesFromInfo:(id)a3 intoArray:(id)a4 withTransform:(CGAffineTransform *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CRLCanvasLayout *)self layoutController];
  v11 = [v10 layoutForInfo:v8 childOfLayout:self];

  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137E8C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137E8D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137E968();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLBoardItemLayout p_addVisibleGeometriesFromInfo:intoArray:withTransform:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:219 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v11 visibleGeometries];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = *&a5->c;
        v23[0] = *&a5->a;
        v23[1] = v21;
        v23[2] = *&a5->tx;
        v22 = [v20 geometryByTransformingBy:v23];
        [v9 addObject:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)invalidateParentForWrap
{
  if ([(CRLCanvasLayout *)self isBeingManipulated])
  {

    [(CRLBoardItemLayout *)self invalidateWrap];
  }
}

@end