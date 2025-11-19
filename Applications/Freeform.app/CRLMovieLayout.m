@interface CRLMovieLayout
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (CRLMovieLayout)initWithInfo:(id)a3;
- (_TtC8Freeform12CRLMovieItem)movieInfo;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4;
- (id)computeLayoutGeometry;
- (id)layoutGeometryFromInfo;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)dragBy:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
@end

@implementation CRLMovieLayout

- (CRLMovieLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLMovieLayout;
  v3 = [(CRLMediaLayout *)&v6 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(CRLCanvasLayout *)v3 invalidateFrame];
  }

  return v4;
}

- (id)layoutGeometryFromInfo
{
  if (*(&self->super._boundsForStandardKnobs.size.width + 3))
  {
    v2 = [[CRLCanvasLayoutGeometry alloc] initWithInfoGeometry:*(&self->super._boundsForStandardKnobs.size.width + 3)];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLMovieLayout;
    v2 = [(CRLBoardItemLayout *)&v4 layoutGeometryFromInfo];
  }

  return v2;
}

- (_TtC8Freeform12CRLMovieItem)movieInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v13 dragBy:?];
  v6 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013545A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013545D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135466C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMovieLayout dragBy:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:65 isFatal:0 description:"invalid nil value for '%{public}s'", "_dynamicInfoGeometry"];

    v6 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  }

  CGAffineTransformMakeTranslation(&v12, x, y);
  v10 = [v6 geometryByAppendingTransform:&v12];
  v11 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v10;
}

- (void)takeRotationFromTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLMovieLayout;
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

  v8 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v7;

  [(CRLCanvasLayout *)self invalidatePosition];
}

- (void)takeSizeFromTracker:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRLMovieLayout;
  v4 = a3;
  [(CRLBoardItemLayout *)&v8 takeSizeFromTracker:v4];
  v5 = [v4 currentGeometryForLayout:{self, v8.receiver, v8.super_class}];

  v6 = [v5 copy];
  v7 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v6;

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v15 takeFreeTransformFromTracker:v4];
  v5 = [(CRLCanvasLayout *)self info];
  v6 = [v5 geometry];

  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v7 = [v4 currentGeometryForLayout:self];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (v4)
    {
      [v4 freeTransformForLayout:self];
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

  v8 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v7;

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
  v4.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v4 beginDynamicOperationWithRealTimeCommands:a3];
  [(CRLMovieLayout *)self p_createDynamicCopies];
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v3 endDynamicOperation];
  [(CRLMovieLayout *)self p_destroyDynamicCopies];
}

- (id)computeLayoutGeometry
{
  v3 = [(CRLMovieLayout *)self layoutGeometryFromInfo];
  if ([(CRLCanvasLayout *)self layoutState]== 3 || [(CRLCanvasLayout *)self layoutState]== 5)
  {
    v4 = [CRLCanvasLayoutGeometry alloc];
    v5 = [(CRLCanvasLayout *)self originalPureGeometry];
    [v5 size];
    v7 = v6;
    v9 = v8;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    v10 = [(CRLCanvasLayoutGeometry *)v4 initWithSize:&v28 transform:v7, v9];

    v3 = v10;
  }

  v11 = objc_opt_class();
  v12 = [(CRLMediaLayout *)self stroke];
  v13 = sub_100014370(v11, v12);

  v14 = objc_opt_class();
  v15 = [(CRLCanvasAbstractLayout *)self parent];
  v16 = sub_100014370(v14, v15);

  if (v16)
  {
    [v3 size];
    v18 = v17;
    v20 = v19;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    [(CRLMovieLayout *)self scaleForInlineClampingUnrotatedSize:&v28 withTransform:v18, v20];
    CGAffineTransformMakeScale(&v28, v21, v21);
    v22 = [v3 geometryByTransformingBy:&v28];

    v3 = v22;
  }

  if (v13 && [v13 shouldRender])
  {
    [v13 renderedWidth];
    v24 = v23 * 0.5;
    v25 = [v3 geometryByOutsettingBy:{v24, v24}];
    [v3 size];
    v29.origin.x = sub_10011ECB4();
    v30 = CGRectOffset(v29, v24, v24);
  }

  else
  {
    v25 = v3;
    [v25 size];
    v30.origin.x = sub_10011ECB4();
  }

  [(CRLMediaLayout *)self setBoundsForStandardKnobs:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height, *&v28.a, *&v28.c, *&v28.tx];
  v26 = v25;

  return v25;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4
{
  v6 = [[CRLBezierPathSource alloc] initWithNaturalSize:a3.width, a3.height];
  v7 = *&a4->c;
  v11[0] = *&a4->a;
  v11[1] = v7;
  v11[2] = *&a4->tx;
  [(CRLStyledLayout *)self scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:v11 withStartingPathSource:v6];
  v9 = v8;

  return v9;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  memset(&v13, 0, sizeof(v13));
  v5 = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = v5;
  if (v5)
  {
    [v5 fullTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  if (v3)
  {
    v7 = [(CRLCanvasAbstractLayout *)self parent];

    if (v7)
    {
      v8 = [(CRLCanvasAbstractLayout *)self parent];
      v9 = v8;
      if (v8)
      {
        [v8 transformInRoot];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v10 = v13;
      CGAffineTransformConcat(&v12, &v10, &t2);
      v13 = v12;
    }
  }

  v12 = v13;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  return CGRectApplyAffineTransform(v14, &v12);
}

- (void)p_createDynamicCopies
{
  if (*(&self->super._boundsForStandardKnobs.size.width + 3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354694();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013546A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354744();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieLayout p_createDynamicCopies]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:184 isFatal:0 description:"expected nil value for '%{public}s'", "_dynamicInfoGeometry"];
  }

  v6 = [(CRLCanvasLayout *)self info];
  v7 = [v6 geometry];
  v8 = [v7 copy];
  v9 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v8;
}

- (void)p_destroyDynamicCopies
{
  v3 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135476C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354780();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135481C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLMovieLayout p_destroyDynamicCopies]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:189 isFatal:0 description:"invalid nil value for '%{public}s'", "_dynamicInfoGeometry"];

    v3 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  }

  *(&self->super._boundsForStandardKnobs.size.width + 3) = 0.0;
}

@end