@interface CRLMovieLayout
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CRLMovieLayout)initWithInfo:(id)info;
- (_TtC8Freeform12CRLMovieItem)movieInfo;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform;
- (id)computeLayoutGeometry;
- (id)layoutGeometryFromInfo;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands;
- (void)dragBy:(CGPoint)by;
- (void)endDynamicOperation;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)takeFreeTransformFromTracker:(id)tracker;
- (void)takeRotationFromTracker:(id)tracker;
- (void)takeSizeFromTracker:(id)tracker;
@end

@implementation CRLMovieLayout

- (CRLMovieLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = CRLMovieLayout;
  v3 = [(CRLMediaLayout *)&v6 initWithInfo:info];
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
    layoutGeometryFromInfo = [[CRLCanvasLayoutGeometry alloc] initWithInfoGeometry:*(&self->super._boundsForStandardKnobs.size.width + 3)];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLMovieLayout;
    layoutGeometryFromInfo = [(CRLBoardItemLayout *)&v4 layoutGeometryFromInfo];
  }

  return layoutGeometryFromInfo;
}

- (_TtC8Freeform12CRLMovieItem)movieInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
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

- (void)takeRotationFromTracker:(id)tracker
{
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v15 takeRotationFromTracker:trackerCopy];
  info = [(CRLCanvasLayout *)self info];
  geometry = [info geometry];

  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v7 = [geometry copy];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (trackerCopy)
    {
      [trackerCopy rotateTransform];
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
    v7 = [geometry geometryByAppendingTransform:&v9];
  }

  v8 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v7;

  [(CRLCanvasLayout *)self invalidatePosition];
}

- (void)takeSizeFromTracker:(id)tracker
{
  v8.receiver = self;
  v8.super_class = CRLMovieLayout;
  trackerCopy = tracker;
  [(CRLBoardItemLayout *)&v8 takeSizeFromTracker:trackerCopy];
  v5 = [trackerCopy currentGeometryForLayout:{self, v8.receiver, v8.super_class}];

  v6 = [v5 copy];
  v7 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v6;

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLBoardItemLayout *)self invalidateExteriorWrap];
}

- (void)takeFreeTransformFromTracker:(id)tracker
{
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v15 takeFreeTransformFromTracker:trackerCopy];
  info = [(CRLCanvasLayout *)self info];
  geometry = [info geometry];

  if ([(CRLCanvasLayout *)self isInRealTimeDynamicOperation])
  {
    v7 = [trackerCopy currentGeometryForLayout:self];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (trackerCopy)
    {
      [trackerCopy freeTransformForLayout:self];
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
    v7 = [geometry geometryByAppendingTransform:&v9];
  }

  v8 = *(&self->super._boundsForStandardKnobs.size.width + 3);
  *(&self->super._boundsForStandardKnobs.size.width + 3) = v7;

  if ([trackerCopy isResizing])
  {
    [(CRLCanvasLayout *)self invalidateFrame];
    [(CRLBoardItemLayout *)self invalidateExteriorWrap];
  }

  else
  {
    [(CRLCanvasLayout *)self invalidatePosition];
  }
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands
{
  v4.receiver = self;
  v4.super_class = CRLMovieLayout;
  [(CRLBoardItemLayout *)&v4 beginDynamicOperationWithRealTimeCommands:commands];
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
  layoutGeometryFromInfo = [(CRLMovieLayout *)self layoutGeometryFromInfo];
  if ([(CRLCanvasLayout *)self layoutState]== 3 || [(CRLCanvasLayout *)self layoutState]== 5)
  {
    v4 = [CRLCanvasLayoutGeometry alloc];
    originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
    [originalPureGeometry size];
    v7 = v6;
    v9 = v8;
    if (layoutGeometryFromInfo)
    {
      [layoutGeometryFromInfo transform];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    v10 = [(CRLCanvasLayoutGeometry *)v4 initWithSize:&v28 transform:v7, v9];

    layoutGeometryFromInfo = v10;
  }

  v11 = objc_opt_class();
  stroke = [(CRLMediaLayout *)self stroke];
  v13 = sub_100014370(v11, stroke);

  v14 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v16 = sub_100014370(v14, parent);

  if (v16)
  {
    [layoutGeometryFromInfo size];
    v18 = v17;
    v20 = v19;
    if (layoutGeometryFromInfo)
    {
      [layoutGeometryFromInfo transform];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    [(CRLMovieLayout *)self scaleForInlineClampingUnrotatedSize:&v28 withTransform:v18, v20];
    CGAffineTransformMakeScale(&v28, v21, v21);
    v22 = [layoutGeometryFromInfo geometryByTransformingBy:&v28];

    layoutGeometryFromInfo = v22;
  }

  if (v13 && [v13 shouldRender])
  {
    [v13 renderedWidth];
    v24 = v23 * 0.5;
    v25 = [layoutGeometryFromInfo geometryByOutsettingBy:{v24, v24}];
    [layoutGeometryFromInfo size];
    v29.origin.x = sub_10011ECB4();
    v30 = CGRectOffset(v29, v24, v24);
  }

  else
  {
    v25 = layoutGeometryFromInfo;
    [v25 size];
    v30.origin.x = sub_10011ECB4();
  }

  [(CRLMediaLayout *)self setBoundsForStandardKnobs:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height, *&v28.a, *&v28.c, *&v28.tx];
  v26 = v25;

  return v25;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform
{
  v6 = [[CRLBezierPathSource alloc] initWithNaturalSize:size.width, size.height];
  v7 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v7;
  v11[2] = *&transform->tx;
  [(CRLStyledLayout *)self scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:v11 withStartingPathSource:v6];
  v9 = v8;

  return v9;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v13, 0, sizeof(v13));
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = geometry;
  if (geometry)
  {
    [geometry fullTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  if (rootCopy)
  {
    parent = [(CRLCanvasAbstractLayout *)self parent];

    if (parent)
    {
      parent2 = [(CRLCanvasAbstractLayout *)self parent];
      v9 = parent2;
      if (parent2)
      {
        [parent2 transformInRoot];
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

  info = [(CRLCanvasLayout *)self info];
  geometry = [info geometry];
  v8 = [geometry copy];
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