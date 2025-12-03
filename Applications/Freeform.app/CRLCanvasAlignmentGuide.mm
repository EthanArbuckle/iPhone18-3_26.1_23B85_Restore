@interface CRLCanvasAlignmentGuide
- (BOOL)canBeSnappedToByEdge:(int)edge ofFrame:(CGRect)frame inVisibleUnscaledRect:(CGRect)rect;
- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)rect;
- (CRLCanvasAlignmentGuide)init;
- (CRLCanvasAlignmentGuide)initWithGeneratingObjectUnscaledRect:(CGRect)rect edge:(int)edge;
- (CRLCanvasAlignmentGuide)initWithType:(int64_t)type offset:(double)offset;
- (double)distanceToPoint:(CGPoint)point;
- (id)renderableWithICC:(id)c;
- (void)setEnd:(double)end;
- (void)setOffset:(double)offset;
- (void)setStart:(double)start;
@end

@implementation CRLCanvasAlignmentGuide

- (CRLCanvasAlignmentGuide)init
{
  v5.receiver = self;
  v5.super_class = CRLCanvasAlignmentGuide;
  v2 = [(CRLCanvasAbstractGuide *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLCanvasAlignmentGuide *)v2 setSnapsToMid:1];
    [(CRLCanvasAlignmentGuide *)v3 setSnapsToMin:1];
    [(CRLCanvasAlignmentGuide *)v3 setSnapsToMax:1];
  }

  return v3;
}

- (CRLCanvasAlignmentGuide)initWithGeneratingObjectUnscaledRect:(CGRect)rect edge:(int)edge
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(CRLCanvasAlignmentGuide *)self init];
  v10 = v9;
  if (v9)
  {
    v9->mGeneratingObjectUnscaledRect.origin.x = x;
    v9->mGeneratingObjectUnscaledRect.origin.y = y;
    v9->mGeneratingObjectUnscaledRect.size.width = width;
    v9->mGeneratingObjectUnscaledRect.size.height = height;
    if (edge > 2)
    {
      [(CRLCanvasAlignmentGuide *)v9 setGuideType:0];
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      [(CRLCanvasAlignmentGuide *)v10 setStart:CGRectGetMinX(v16)];
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MaxX = CGRectGetMaxX(v17);
    }

    else
    {
      [(CRLCanvasAlignmentGuide *)v9 setGuideType:1];
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      [(CRLCanvasAlignmentGuide *)v10 setStart:CGRectGetMinY(v14)];
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      MaxX = CGRectGetMaxY(v15);
    }

    [(CRLCanvasAlignmentGuide *)v10 setEnd:MaxX];
    if (edge > 2)
    {
      switch(edge)
      {
        case 3:
          v21.origin.x = x;
          v21.origin.y = y;
          v21.size.width = width;
          v21.size.height = height;
          MinY = CGRectGetMinY(v21);
          goto LABEL_19;
        case 4:
          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          MinY = CGRectGetMidY(v23);
          goto LABEL_19;
        case 5:
          v19.origin.x = x;
          v19.origin.y = y;
          v19.size.width = width;
          v19.size.height = height;
          MinY = CGRectGetMaxY(v19);
          goto LABEL_19;
      }
    }

    else
    {
      switch(edge)
      {
        case 0:
          v20.origin.x = x;
          v20.origin.y = y;
          v20.size.width = width;
          v20.size.height = height;
          MinY = CGRectGetMinX(v20);
          goto LABEL_19;
        case 1:
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          MinY = CGRectGetMidX(v22);
          goto LABEL_19;
        case 2:
          v18.origin.x = x;
          v18.origin.y = y;
          v18.size.width = width;
          v18.size.height = height;
          MinY = CGRectGetMaxX(v18);
LABEL_19:
          [(CRLCanvasAlignmentGuide *)v10 setOffset:MinY];
          return v10;
      }
    }

    +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"+[CRLCanvasAlignmentGuide dynamicGuideForRect:] given invalid edge argument.");
  }

  return v10;
}

- (CRLCanvasAlignmentGuide)initWithType:(int64_t)type offset:(double)offset
{
  v6 = [(CRLCanvasAlignmentGuide *)self init];
  v7 = v6;
  if (v6)
  {
    size = CGRectNull.size;
    v6->mGeneratingObjectUnscaledRect.origin = CGRectNull.origin;
    v6->mGeneratingObjectUnscaledRect.size = size;
    [(CRLCanvasAlignmentGuide *)v6 setGuideType:type];
    [(CRLCanvasAlignmentGuide *)v7 setOffset:offset];
    [(CRLCanvasAlignmentGuide *)v7 setInfinite:1];
  }

  return v7;
}

- (BOOL)canBeSnappedToByEdge:(int)edge ofFrame:(CGRect)frame inVisibleUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([CRLCanvasGuideController shouldSnapToOffscreenContent:frame.origin.x])
  {
    if (edge > 5)
    {
      v11 = 0;
      return v11 & 1;
    }

LABEL_6:
    v11 = *(&self->super.super.isa + *(&off_1018479B8)[edge]);
    return v11 & 1;
  }

  height = [(CRLCanvasAlignmentGuide *)self isAssociatedContentVisibleInUnscaledRect:x, y, width, height];
  v11 = 0;
  if (height && edge < 6)
  {
    goto LABEL_6;
  }

  return v11 & 1;
}

- (BOOL)isAssociatedContentVisibleInUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12.origin.x = CGRectNull.origin.x;
  v12.origin.y = CGRectNull.origin.y;
  v12.size.width = CGRectNull.size.width;
  v12.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(rect, v12))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101330928();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133093C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013309D0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCanvasAlignmentGuide isAssociatedContentVisibleInUnscaledRect:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAlignmentGuide.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:105 isFatal:0 description:"isAssociatedContentVisibleInUnscaledRect isn't expecting a null rect "];
  }

  return sub_10011FF38(self->mGeneratingObjectUnscaledRect.origin.x, self->mGeneratingObjectUnscaledRect.origin.y, self->mGeneratingObjectUnscaledRect.size.width, self->mGeneratingObjectUnscaledRect.size.height, x, y, width, height);
}

- (void)setStart:(double)start
{
  if (self->mStart != start)
  {
    self->mStart = start;
    self->super.mLocationInvalidated = 1;
  }
}

- (void)setEnd:(double)end
{
  if (self->mEnd != end)
  {
    self->mEnd = end;
    self->super.mLocationInvalidated = 1;
  }
}

- (void)setOffset:(double)offset
{
  if (self->super.mOffset != offset)
  {
    self->super.mOffset = offset;
    self->super.mLocationInvalidated = 1;
  }
}

- (double)distanceToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  guideType = [(CRLCanvasAlignmentGuide *)self guideType];
  [(CRLCanvasAbstractGuide *)self offset];
  if (guideType)
  {
    v8 = x;
  }

  else
  {
    v8 = y;
  }

  return vabdd_f64(v7, v8);
}

- (id)renderableWithICC:(id)c
{
  cCopy = c;
  [cCopy viewScale];
  v6 = v5;
  [(CRLCanvasAlignmentGuide *)self start];
  v8 = v7;
  [(CRLCanvasAlignmentGuide *)self end];
  if (v8 == v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013309F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101330A0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101330AA0();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasAlignmentGuide renderableWithICC:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAlignmentGuide.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:151 isFatal:0 description:"Cannot render a guide where start == end"];
  }

  if (self->mRenderable)
  {
    if (!self->super.mLocationInvalidated)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v13 = +[CRLCanvasRenderable renderable];
    mRenderable = self->mRenderable;
    self->mRenderable = v13;

    [(CRLCanvasRenderable *)self->mRenderable setEdgeAntialiasingMask:0];
    [(CRLCanvasRenderable *)self->mRenderable setBackgroundColor:[(CRLCanvasAbstractGuide *)self guideColor]];
    self->super.mLocationInvalidated = 1;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->mInfinite)
  {
    [cCopy visibleScaledRectForCanvasUI];
    if (self->mType == 1)
    {
      self->mStart = v16 / v6;
      v19 = v16 + v18;
    }

    else
    {
      self->mStart = v15 / v6;
      v19 = v15 + v17;
    }

    self->mEnd = v19 / v6;
  }

  guideType = [(CRLCanvasAlignmentGuide *)self guideType];
  p_mSnappingObjectFrame = &self->super.mSnappingObjectFrame;
  IsNull = CGRectIsNull(self->super.mSnappingObjectFrame);
  mStart = self->mStart;
  if (guideType == 1)
  {
    if (IsNull)
    {
      mEnd = self->mEnd;
    }

    else
    {
      v35.origin.x = p_mSnappingObjectFrame->origin.x;
      v35.origin.y = self->super.mSnappingObjectFrame.origin.y;
      v35.size.width = self->super.mSnappingObjectFrame.size.width;
      v35.size.height = self->super.mSnappingObjectFrame.size.height;
      mStart = fmin(mStart, CGRectGetMinY(v35));
      v36.origin.x = p_mSnappingObjectFrame->origin.x;
      v36.origin.y = self->super.mSnappingObjectFrame.origin.y;
      v36.size.width = self->super.mSnappingObjectFrame.size.width;
      v36.size.height = self->super.mSnappingObjectFrame.size.height;
      mEnd = fmax(self->mEnd, CGRectGetMaxY(v36));
    }

    [(CRLCanvasAbstractGuide *)self offset];
    v27 = sub_1004C31F4(v6 * v26);
    v28 = v6 * mStart;
    v29 = v6 * (mEnd - mStart);
    v30 = 1.0;
  }

  else
  {
    if (IsNull)
    {
      v25 = self->mEnd;
    }

    else
    {
      v37.origin.x = p_mSnappingObjectFrame->origin.x;
      v37.origin.y = self->super.mSnappingObjectFrame.origin.y;
      v37.size.width = self->super.mSnappingObjectFrame.size.width;
      v37.size.height = self->super.mSnappingObjectFrame.size.height;
      mStart = fmin(mStart, CGRectGetMinX(v37));
      v38.origin.x = p_mSnappingObjectFrame->origin.x;
      v38.origin.y = self->super.mSnappingObjectFrame.origin.y;
      v38.size.width = self->super.mSnappingObjectFrame.size.width;
      v38.size.height = self->super.mSnappingObjectFrame.size.height;
      v25 = fmax(self->mEnd, CGRectGetMaxX(v38));
    }

    v27 = v6 * mStart;
    [(CRLCanvasAbstractGuide *)self offset];
    v28 = sub_1004C31F4(v6 * v31);
    v30 = v6 * (v25 - mStart);
    v29 = 1.0;
  }

  [(CRLCanvasRenderable *)self->mRenderable setFrame:v27, v28, v30, v29];
  self->super.mLocationInvalidated = 0;
  +[CATransaction commit];
LABEL_30:
  v32 = self->mRenderable;
  v33 = v32;

  return v32;
}

@end