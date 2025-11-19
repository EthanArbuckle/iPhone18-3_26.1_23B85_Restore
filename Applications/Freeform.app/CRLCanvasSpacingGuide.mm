@interface CRLCanvasSpacingGuide
- (BOOL)canBeSnappedToByEdge:(int)a3 ofFrame:(CGRect)a4 inVisibleUnscaledRect:(CGRect)a5;
- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)a3;
- (CRLCanvasSpacing)parentSpacing;
- (id)description;
- (id)initForEdge:(int)a3 ofGeneratingObjectRect:(CGRect)a4 andParentSpacing:(id)a5;
- (id)renderableWithICC:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation CRLCanvasSpacingGuide

- (id)initForEdge:(int)a3 ofGeneratingObjectRect:(CGRect)a4 andParentSpacing:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  if (a3 > 5)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    v23 = 0.0;
    goto LABEL_30;
  }

  if (((1 << a3) & 5) != 0)
  {
    v15 = +[CRLSwappableAxesGeometry standardAxesGeometry];
  }

  else
  {
    if (((1 << a3) & 0x12) != 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138DA94();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138DAA8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138DB3C();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLCanvasSpacingGuide initForEdge:ofGeneratingObjectRect:andParentSpacing:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasSpacingGuide.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:45 isFatal:0 description:"if you are creating a center spacing guide, use CRLCanvasCenterAlignmentGuide"];

      goto LABEL_16;
    }

    v15 = +[CRLSwappableAxesGeometry swappedAxesGeometry];
  }

  v16 = v15;
  objc_storeWeak(&self->mVerticalGeom, v15);

LABEL_16:
  if (((1 << a3) & 9) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mVerticalGeom);
    [WeakRetained rectMinX:{x, y, width, height}];
    v26 = v25;
    [v11 exactOffset];
    v23 = v26 - v27;

    v18 = objc_loadWeakRetained(&self->mVerticalGeom);
    [v18 rectMaxX:{x, y, width, height}];
    v29 = v28;
    [v11 exactOffset];
    v21 = 0;
    v22 = v29 + v30;
    v20 = 1;
  }

  else if (((1 << a3) & 0x12) != 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138DB64();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DB8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138DC20();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCanvasSpacingGuide initForEdge:ofGeneratingObjectRect:andParentSpacing:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasSpacingGuide.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:69 isFatal:0 description:"if you are creating a center spacing guide, use CRLCanvasCenterAlignmentGuide"];

    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v31 = objc_loadWeakRetained(&self->mVerticalGeom);
    [v31 rectMaxX:{x, y, width, height}];
    v33 = v32;
    [v11 exactOffset];
    v23 = v33 + v34;

    v18 = objc_loadWeakRetained(&self->mVerticalGeom);
    [v18 rectMinX:{x, y, width, height}];
    v36 = v35;
    [v11 exactOffset];
    v20 = 0;
    v22 = v36 - v37;
    v21 = 1;
  }

LABEL_30:
  v38 = objc_loadWeakRetained(&self->mVerticalGeom);
  v39 = sub_100570CAC([v38 horizontalOrientation]);
  v44.receiver = self;
  v44.super_class = CRLCanvasSpacingGuide;
  v40 = [(CRLCanvasAlignmentGuide *)&v44 initWithType:v39 offset:v23];

  if (v40)
  {
    [(CRLCanvasAlignmentGuide *)v40 setSnapsToMax:v20];
    [(CRLCanvasAlignmentGuide *)v40 setSnapsToMid:0];
    [(CRLCanvasAlignmentGuide *)v40 setSnapsToMin:v21];
    [(CRLCanvasAlignmentGuide *)v40 setInfinite:0];
    v41 = objc_loadWeakRetained(&v40->mVerticalGeom);
    [v41 rectMinY:{x, y, width, height}];
    [(CRLCanvasAlignmentGuide *)v40 setStart:?];

    v42 = objc_loadWeakRetained(&v40->mVerticalGeom);
    [v42 rectMaxY:{x, y, width, height}];
    [(CRLCanvasAlignmentGuide *)v40 setEnd:?];

    v40->mGeneratingObjectRect.origin.x = x;
    v40->mGeneratingObjectRect.origin.y = y;
    v40->mGeneratingObjectRect.size.width = width;
    v40->mGeneratingObjectRect.size.height = height;
    v40->mOppositeOffset = v22;
    [(CRLCanvasSpacingGuide *)v40 setParentSpacing:v11];
  }

  return v40;
}

- (BOOL)canBeSnappedToByEdge:(int)a3 ofFrame:(CGRect)a4 inVisibleUnscaledRect:(CGRect)a5
{
  height = a5.size.height;
  y = a5.origin.y;
  width = a5.size.width;
  x = a5.origin.x;
  v6 = a4.size.height;
  v7 = a4.size.width;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  v10 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->mVerticalGeom);
  [WeakRetained makeHorizontalSpacingRectBetweenRect:self->mGeneratingObjectRect.origin.x andRect:{self->mGeneratingObjectRect.origin.y, self->mGeneratingObjectRect.size.width, self->mGeneratingObjectRect.size.height, v9, v8, v7, v6}];
  v32 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = objc_loadWeakRetained(&self->mVerticalGeom);
  v21 = [v20 rect:self->mGeneratingObjectRect.origin.x horizontallyOverlapsRect:{self->mGeneratingObjectRect.origin.y, self->mGeneratingObjectRect.size.width, self->mGeneratingObjectRect.size.height, v9, v8, v7, v6}];

  if (!v21)
  {
    return 0;
  }

  v28 = height;
  v22 = objc_loadWeakRetained(&self->mVerticalGeom);
  [v22 rectHeight:{v32, v15, v17, v19}];
  v24 = v23;

  if (v24 <= 1.0)
  {
    return 0;
  }

  if (sub_10011FF38(v32, v15, v17, v19, self->mGeneratingObjectRect.origin.x, self->mGeneratingObjectRect.origin.y, self->mGeneratingObjectRect.size.width, self->mGeneratingObjectRect.size.height))
  {
    return 0;
  }

  if (sub_10011FF38(v32, v15, v17, v19, v9, v8, v7, v6))
  {
    return 0;
  }

  v25 = objc_loadWeakRetained(&self->mParentSpacing);
  v26 = [v25 containsNonIntersectingSpacingRectsWithRect:v10 forEdge:{v32, v15, v17, v19}];

  if (!v26)
  {
    return 0;
  }

  v33.receiver = self;
  v33.super_class = CRLCanvasSpacingGuide;
  return [(CRLCanvasAlignmentGuide *)&v33 canBeSnappedToByEdge:v10 ofFrame:v9 inVisibleUnscaledRect:v8, v7, v6, x, y, width, v28];
}

- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  mOppositeOffset = self->mOppositeOffset;
  WeakRetained = objc_loadWeakRetained(&self->mVerticalGeom);
  [WeakRetained rectMinX:{x, y, width, height}];
  if (mOppositeOffset <= v10)
  {
    v14 = 0;
  }

  else
  {
    v11 = self->mOppositeOffset;
    v12 = objc_loadWeakRetained(&self->mVerticalGeom);
    [v12 rectMaxX:{x, y, width, height}];
    v14 = v11 < v13;
  }

  return sub_10011FF38(self->mGeneratingObjectRect.origin.x, self->mGeneratingObjectRect.origin.y, self->mGeneratingObjectRect.size.width, self->mGeneratingObjectRect.size.height, x, y, width, height) && v14;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasSpacingGuide *)self parentSpacing];
  v6 = [v4 parentSpacing];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)renderableWithICC:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mVerticalGeom);
  [WeakRetained makeHorizontalSpacingRectBetweenRect:self->mGeneratingObjectRect.origin.x andRect:{self->mGeneratingObjectRect.origin.y, self->mGeneratingObjectRect.size.width, self->mGeneratingObjectRect.size.height, self->super.super.mSnappingObjectFrame.origin.x, self->super.super.mSnappingObjectFrame.origin.y, self->super.super.mSnappingObjectFrame.size.width, self->super.super.mSnappingObjectFrame.size.height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  mRenderable = self->super.mRenderable;
  if (!mRenderable)
  {
    v15 = +[CRLCanvasRenderable renderable];
    v16 = self->super.mRenderable;
    self->super.mRenderable = v15;

    [(CRLCanvasRenderable *)self->super.mRenderable setEdgeAntialiasingMask:0];
    v17 = [CRLColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.0];
    -[CRLCanvasRenderable setBackgroundColor:](self->super.mRenderable, "setBackgroundColor:", [v17 CGColor]);

    [(CRLCanvasRenderable *)self->super.mRenderable setPosition:CGPointZero.x, CGPointZero.y];
    v18 = [(CRLCanvasSpacingGuide *)self parentSpacing];
    v19 = [v18 spacingRectsRenderableForGuideRect:v4 withICC:{v7, v9, v11, v13}];

    if (v19)
    {
      [(CRLCanvasRenderable *)self->super.mRenderable addSubrenderable:v19];
    }

    v20 = [CRLCanvasSpacingGuideUILayer alloc];
    v21 = objc_loadWeakRetained(&self->mVerticalGeom);
    v22 = -[CRLCanvasSpacingGuideUILayer initWithSpacingRect:ofOrientation:icc:useVisibleRect:](v20, "initWithSpacingRect:ofOrientation:icc:useVisibleRect:", [v21 horizontalOrientation], v4, 1, v7, v9, v11, v13);
    mSpacingUILayer = self->mSpacingUILayer;
    self->mSpacingUILayer = v22;

    v24 = self->super.mRenderable;
    v25 = [CRLCanvasRenderable renderableFromLayer:self->mSpacingUILayer];
    [(CRLCanvasRenderable *)v24 addSubrenderable:v25];

    self->super.super.mLocationInvalidated = 1;
    mRenderable = self->super.mRenderable;
  }

  v26 = [(CRLCanvasSpacingGuide *)self parentSpacing];
  v27 = [v26 spacingRectsRenderableForGuideRect:v4 withICC:{v7, v9, v11, v13}];
  [(CRLCanvasRenderable *)mRenderable addSubrenderable:v27];

  if (self->super.super.mLocationInvalidated)
  {
    v28 = [(CRLCanvasSpacingGuide *)self parentSpacing];
    [v28 updateSpacingUIWithICC:v4];

    [(CRLCanvasSpacingGuideUILayer *)self->mSpacingUILayer setFrameFromSpacingRect:v4 icc:v7, v9, v11, v13];
    self->super.super.mLocationInvalidated = 0;
  }

  v29 = self->super.mRenderable;
  v30 = v29;

  return v29;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(CRLCanvasAlignmentGuide *)self guideType])
  {
    v5 = @"vertical";
  }

  else
  {
    v5 = @"horizontal";
  }

  if ([(CRLCanvasAlignmentGuide *)self snapsToMin])
  {
    v6 = @"min";
  }

  else
  {
    v6 = @"max";
  }

  [(CRLCanvasAbstractGuide *)self offset];
  v8 = v7;
  v9 = [(CRLCanvasSpacingGuide *)self parentSpacing];
  [v9 exactOffset];
  v11 = v10;
  v12 = NSStringFromCGRect(self->mGeneratingObjectRect);
  v13 = [NSString stringWithFormat:@"<%@ %p: %@ %@ spacing guide with offset %f parentOffset %f from SpacingRect: %@>", v4, self, v5, v6, v8, v11, v12];

  return v13;
}

- (CRLCanvasSpacing)parentSpacing
{
  WeakRetained = objc_loadWeakRetained(&self->mParentSpacing);

  return WeakRetained;
}

@end