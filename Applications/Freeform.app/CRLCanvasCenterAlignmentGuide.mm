@interface CRLCanvasCenterAlignmentGuide
- (BOOL)canBeSnappedToByEdge:(int)a3 ofFrame:(CGRect)a4 inVisibleUnscaledRect:(CGRect)a5;
- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)a3;
- (double)exactOffset;
- (id)description;
- (id)initBetweenRect:(CGRect)a3 andRect:(CGRect)a4 withGuideType:(int64_t)a5;
- (id)renderableWithICC:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation CRLCanvasCenterAlignmentGuide

- (id)initBetweenRect:(CGRect)a3 andRect:(CGRect)a4 withGuideType:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  if (a5 == 1)
  {
    +[CRLSwappableAxesGeometry standardAxesGeometry];
  }

  else
  {
    +[CRLSwappableAxesGeometry swappedAxesGeometry];
  }
  v14 = ;
  mVerticalGeom = self->mVerticalGeom;
  self->mVerticalGeom = v14;

  [(CRLSwappableAxesGeometry *)self->mVerticalGeom makeHorizontalSpacingRectBetweenRect:v12 andRect:v11, v10, v9, x, y, width, height];
  v30 = width;
  v31 = height;
  v17 = v16;
  v19 = v18;
  v28 = x;
  v29 = y;
  v21 = v20;
  v23 = v22;
  v24 = sub_100570CAC([(CRLSwappableAxesGeometry *)self->mVerticalGeom verticalOrientation]);
  [(CRLSwappableAxesGeometry *)self->mVerticalGeom rectMidX:v17, v19, v21, v23];
  v35.receiver = self;
  v35.super_class = CRLCanvasCenterAlignmentGuide;
  v25 = [(CRLCanvasAlignmentGuide *)&v35 initWithType:v24 offset:?];
  p_isa = &v25->super.super.super.isa;
  if (v25)
  {
    v25->mLeftGeneratingObjectRect.origin.x = v12;
    v25->mLeftGeneratingObjectRect.origin.y = v11;
    v25->mLeftGeneratingObjectRect.size.width = v10;
    v25->mLeftGeneratingObjectRect.size.height = v9;
    v25->mRightGeneratingObjectRect.origin.x = v28;
    v25->mRightGeneratingObjectRect.origin.y = v29;
    v25->mRightGeneratingObjectRect.size.width = v30;
    v25->mRightGeneratingObjectRect.size.height = v31;
    v34.receiver = v25;
    v34.super_class = CRLCanvasCenterAlignmentGuide;
    [(CRLCanvasAlignmentGuide *)&v34 setInfinite:0];
    [p_isa[28] rectMinY:{v17, v19, v21, v23}];
    v33.receiver = p_isa;
    v33.super_class = CRLCanvasCenterAlignmentGuide;
    [(CRLCanvasAlignmentGuide *)&v33 setStart:?];
    [p_isa[28] rectMaxY:{v17, v19, v21, v23}];
    v32.receiver = p_isa;
    v32.super_class = CRLCanvasCenterAlignmentGuide;
    [(CRLCanvasAlignmentGuide *)&v32 setEnd:?];
    [p_isa setSnapsToMin:0];
    [p_isa setSnapsToMax:0];
    [p_isa setSnapsToMid:1];
  }

  return p_isa;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasCenterAlignmentGuide *)self integerOffset];
  v6 = [v4 integerOffset];

  if (v6 <= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (double)exactOffset
{
  mVerticalGeom = self->mVerticalGeom;
  p_mRightGeneratingObjectRect = &self->mRightGeneratingObjectRect;
  [(CRLCanvasAbstractGuide *)self snappingObjectFrame];
  [(CRLSwappableAxesGeometry *)mVerticalGeom makeHorizontalSpacingRectBetweenRect:p_mRightGeneratingObjectRect->origin.x andRect:p_mRightGeneratingObjectRect->origin.y, p_mRightGeneratingObjectRect->size.width, p_mRightGeneratingObjectRect->size.height, v4, v5, v6, v7];

  [(CRLSwappableAxesGeometry *)mVerticalGeom rectWidth:?];
  return result;
}

- (BOOL)canBeSnappedToByEdge:(int)a3 ofFrame:(CGRect)a4 inVisibleUnscaledRect:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16.receiver = self;
  v16.super_class = CRLCanvasCenterAlignmentGuide;
  v10 = [(CRLCanvasAlignmentGuide *)&v16 canBeSnappedToByEdge:*&a3 ofFrame:a4.origin.x inVisibleUnscaledRect:a4.origin.y, a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  if (v10)
  {
    [(CRLSwappableAxesGeometry *)self->mVerticalGeom makeHorizontalSpacingRectBetweenRect:self->mLeftGeneratingObjectRect.origin.x andRect:self->mLeftGeneratingObjectRect.origin.y, self->mLeftGeneratingObjectRect.size.width, self->mLeftGeneratingObjectRect.size.height, self->mRightGeneratingObjectRect.origin.x, self->mRightGeneratingObjectRect.origin.y, self->mRightGeneratingObjectRect.size.width, self->mRightGeneratingObjectRect.size.height];
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v18 = CGRectIntersection(v17, v19);
    if (CGRectIsNull(v18))
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      mVerticalGeom = self->mVerticalGeom;
      [(CRLSwappableAxesGeometry *)mVerticalGeom makeHorizontalSpacingRectBetweenRect:self->mLeftGeneratingObjectRect.origin.x andRect:self->mLeftGeneratingObjectRect.origin.y, self->mLeftGeneratingObjectRect.size.width, self->mLeftGeneratingObjectRect.size.height, self->mRightGeneratingObjectRect.origin.x, self->mRightGeneratingObjectRect.origin.y, self->mRightGeneratingObjectRect.size.width, self->mRightGeneratingObjectRect.size.height];
      [(CRLSwappableAxesGeometry *)mVerticalGeom rectWidth:?];
      v13 = v12;
      [(CRLSwappableAxesGeometry *)self->mVerticalGeom rectWidth:x, y, width, height];
      LOBYTE(v10) = v13 > v14 + 1.0;
    }
  }

  return v10;
}

- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = sub_10011FF38(self->mLeftGeneratingObjectRect.origin.x, self->mLeftGeneratingObjectRect.origin.y, self->mLeftGeneratingObjectRect.size.width, self->mLeftGeneratingObjectRect.size.height, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  if (v8)
  {
    v9 = self->mRightGeneratingObjectRect.origin.x;
    v10 = self->mRightGeneratingObjectRect.origin.y;
    v11 = self->mRightGeneratingObjectRect.size.width;
    v12 = self->mRightGeneratingObjectRect.size.height;

    LOBYTE(v8) = sub_10011FF38(v9, v10, v11, v12, x, y, width, height);
  }

  return v8;
}

- (id)renderableWithICC:(id)a3
{
  v4 = a3;
  mVerticalGeom = self->mVerticalGeom;
  [(CRLCanvasAbstractGuide *)self snappingObjectFrame];
  [(CRLSwappableAxesGeometry *)mVerticalGeom makeHorizontalSpacingRectBetweenRect:self->mLeftGeneratingObjectRect.origin.x andRect:self->mLeftGeneratingObjectRect.origin.y, self->mLeftGeneratingObjectRect.size.width, self->mLeftGeneratingObjectRect.size.height, v6, v7, v8, v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = self->mVerticalGeom;
  [(CRLCanvasAbstractGuide *)self snappingObjectFrame];
  [(CRLSwappableAxesGeometry *)v18 makeHorizontalSpacingRectBetweenRect:self->mRightGeneratingObjectRect.origin.x andRect:self->mRightGeneratingObjectRect.origin.y, self->mRightGeneratingObjectRect.size.width, self->mRightGeneratingObjectRect.size.height, v19, v20, v21, v22];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (self->super.mRenderable)
  {
    if (!self->super.super.mLocationInvalidated)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v31 = +[CRLCanvasRenderable renderable];
    mRenderable = self->super.mRenderable;
    self->super.mRenderable = v31;

    [(CRLCanvasRenderable *)self->super.mRenderable setEdgeAntialiasingMask:0];
    v33 = [CRLColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.0];
    -[CRLCanvasRenderable setBackgroundColor:](self->super.mRenderable, "setBackgroundColor:", [v33 CGColor]);

    v34 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:[(CRLSwappableAxesGeometry *)self->mVerticalGeom horizontalOrientation] ofOrientation:v4 icc:1 useVisibleRect:v11, v13, v15, v17];
    mLeftSpacingUILayer = self->mLeftSpacingUILayer;
    self->mLeftSpacingUILayer = v34;

    v36 = self->super.mRenderable;
    v37 = [CRLCanvasRenderable renderableFromLayer:self->mLeftSpacingUILayer];
    [(CRLCanvasRenderable *)v36 addSubrenderable:v37];

    v38 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:[(CRLSwappableAxesGeometry *)self->mVerticalGeom horizontalOrientation] ofOrientation:v4 icc:1 useVisibleRect:v24, v26, v28, v30];
    mRightSpacingUILayer = self->mRightSpacingUILayer;
    self->mRightSpacingUILayer = v38;

    v40 = self->super.mRenderable;
    v41 = [CRLCanvasRenderable renderableFromLayer:self->mRightSpacingUILayer];
    [(CRLCanvasRenderable *)v40 addSubrenderable:v41];

    self->super.super.mLocationInvalidated = 1;
  }

  [(CRLCanvasSpacingGuideUILayer *)self->mLeftSpacingUILayer setFrameFromSpacingRect:v4 icc:v11, v13, v15, v17];
  [(CRLCanvasSpacingGuideUILayer *)self->mRightSpacingUILayer setFrameFromSpacingRect:v4 icc:v24, v26, v28, v30];
  self->super.super.mLocationInvalidated = 0;
LABEL_6:
  v42 = self->super.mRenderable;
  v43 = v42;

  return v42;
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

  [(CRLCanvasAbstractGuide *)self offset];
  v7 = [NSString stringWithFormat:@"%@: %p %@ center spacing guide at %p with offset %f", v4, self, v5, self, v6];

  return v7;
}

@end