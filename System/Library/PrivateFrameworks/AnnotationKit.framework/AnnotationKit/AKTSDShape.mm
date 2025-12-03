@interface AKTSDShape
- (AKTSDShape)init;
- (CGPoint)headLineEndPoint;
- (CGPoint)tailLineEndPoint;
- (double)lineEndScale;
- (id)_newClippedPath;
- (id)clippedPathForLineEnds;
- (id)strokeHeadLineEnd;
- (id)strokeTailLineEnd;
- (void)drawInContext:(CGContext *)context;
- (void)p_computeAngle:(double *)angle point:(CGPoint *)point cutSegment:(int64_t *)segment cutT:(double *)t forLineEndAtHead:(BOOL)head;
- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)p_invalidateClippedPath;
- (void)p_validateHeadAndTail;
- (void)p_validateHeadLineEnd;
- (void)p_validateTailLineEnd;
@end

@implementation AKTSDShape

- (AKTSDShape)init
{
  v3.receiver = self;
  v3.super_class = AKTSDShape;
  result = [(AKTSDShape *)&v3 init];
  if (result)
  {
    *&result->mShapeInvalidFlags |= 0x3FFu;
  }

  return result;
}

- (void)drawInContext:(CGContext *)context
{
  stroke = [(AKTSDShape *)self stroke];
  clippedPathForLineEnds = [(AKTSDShape *)self clippedPathForLineEnds];
  [stroke brushPath:clippedPathForLineEnds inContext:context];

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [(AKTSDShape *)self p_drawLineEndForHead:1 withDelta:context inContext:0 useFastDrawing:*MEMORY[0x277CBF348], v8];

  [(AKTSDShape *)self p_drawLineEndForHead:0 withDelta:context inContext:0 useFastDrawing:v7, v8];
}

- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  x = delta.x;
  if (head)
  {
    v10 = [(AKTSDShape *)self strokeHeadLineEnd:delta.x];
    if (!v10)
    {
      return;
    }

    v25 = v10;
    [(AKTSDShape *)self headLineEndPoint];
    v12 = v11;
    v14 = v13;
    [(AKTSDShape *)self headLineEndAngle];
  }

  else
  {
    v16 = [(AKTSDShape *)self strokeTailLineEnd:delta.x];
    if (!v16)
    {
      return;
    }

    v25 = v16;
    [(AKTSDShape *)self tailLineEndPoint];
    v12 = v17;
    v14 = v18;
    [(AKTSDShape *)self tailLineEndAngle];
  }

  v19 = v15;
  v20 = sub_23F4659C4(v12, v14, x);
  v22 = v21;
  stroke = [(AKTSDShape *)self stroke];
  [(AKTSDShape *)self lineEndScale];
  [stroke paintLineEnd:v25 atPoint:context atAngle:drawingCopy withScale:v20 inContext:v22 useFastDrawing:{v19, v24}];
}

- (id)strokeHeadLineEnd
{
  headLineEnd = [(AKTSDShape *)self headLineEnd];
  if (headLineEnd)
  {
    stroke = [(AKTSDShape *)self stroke];
    headLineEnd2 = [(AKTSDShape *)self headLineEnd];
    v6 = [stroke strokeLineEnd:headLineEnd2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)strokeTailLineEnd
{
  tailLineEnd = [(AKTSDShape *)self tailLineEnd];
  if (tailLineEnd)
  {
    stroke = [(AKTSDShape *)self stroke];
    tailLineEnd2 = [(AKTSDShape *)self tailLineEnd];
    v6 = [stroke strokeLineEnd:tailLineEnd2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)lineEndScale
{
  stroke = [(AKTSDShape *)self stroke];
  [stroke width];
  v4 = v3;

  result = (v4 + -1.0) * 0.6 + 1.0;
  if (v4 <= 1.0)
  {
    return v4;
  }

  return result;
}

- (CGPoint)headLineEndPoint
{
  [(AKTSDShape *)self p_validateHeadLineEnd];
  x = self->mHeadLineEndPoint.x;
  y = self->mHeadLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailLineEndPoint
{
  [(AKTSDShape *)self p_validateTailLineEnd];
  x = self->mTailLineEndPoint.x;
  y = self->mTailLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)clippedPathForLineEnds
{
  if ((*&self->mShapeInvalidFlags & 0x200) != 0)
  {
    _newClippedPath = [(AKTSDShape *)self _newClippedPath];
    mCachedClippedPath = self->mCachedClippedPath;
    self->mCachedClippedPath = _newClippedPath;

    *&self->mShapeInvalidFlags &= ~0x200u;
  }

  v5 = self->mCachedClippedPath;

  return v5;
}

- (void)p_invalidateClippedPath
{
  *&self->mShapeInvalidFlags |= 0x200u;
  self->mCachedClippedPath = 0;
  MEMORY[0x2821F96F8]();
}

- (void)p_validateHeadAndTail
{
  mShapeInvalidFlags = self->mShapeInvalidFlags;
  if ((mShapeInvalidFlags & 0x40) != 0)
  {
    *&self->mShapeInvalidFlags = mShapeInvalidFlags & 0xFFBF;
    path = [(AKTSDShape *)self path];
    [path getStartPoint:&self->mTailPoint andEndPoint:&self->mHeadPoint];
  }
}

- (void)p_validateHeadLineEnd
{
  [(AKTSDShape *)self p_validateHeadAndTail];
  mShapeInvalidFlags = self->mShapeInvalidFlags;
  if ((mShapeInvalidFlags & 0x80) != 0)
  {
    *&self->mShapeInvalidFlags = mShapeInvalidFlags & 0xFF7F;

    MEMORY[0x2821F9670](self, sel_p_computeAngle_point_cutSegment_cutT_forLineEndAtHead_);
  }
}

- (void)p_validateTailLineEnd
{
  if ((*&self->mShapeInvalidFlags & 0x100) != 0)
  {
    *&self->mShapeInvalidFlags &= ~0x100u;
    MEMORY[0x2821F9670](self, sel_p_computeAngle_point_cutSegment_cutT_forLineEndAtHead_);
  }
}

- (void)p_computeAngle:(double *)angle point:(CGPoint *)point cutSegment:(int64_t *)segment cutT:(double *)t forLineEndAtHead:(BOOL)head
{
  headCopy = head;
  [(AKTSDShape *)self p_validateHeadAndTail];
  v13 = 40;
  if (headCopy)
  {
    v13 = 24;
  }

  v14 = 32;
  if (headCopy)
  {
    v14 = 16;
  }

  v15 = *(&self->super.isa + v14);
  v16 = *(&self->super.isa + v13);
  if (headCopy)
  {
    [(AKTSDShape *)self strokeHeadLineEnd];
  }

  else
  {
    [(AKTSDShape *)self strokeTailLineEnd];
  }
  v17 = ;
  if (v17 && (v40 = v17, ([v17 isNone] & 1) == 0))
  {
    BoundingBox = CGPathGetBoundingBox([v40 path]);
    MaxY = CGRectGetMaxY(BoundingBox);
    [v40 endPoint];
    v20 = MaxY - v19;
    if (![v40 isFilled])
    {
      v20 = v20 + 0.75;
    }

    [(AKTSDShape *)self lineEndScale];
    v22 = v21 * v20;
    v23 = [AKTSDBezierPath bezierPathWithOvalInRect:v15 - v22, v16 - v22, v22 + v22, v22 + v22];
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    path = [(AKTSDShape *)self path];
    [path addIntersectionsWithPath:v23 to:v24 allIntersections:0 reversed:headCopy];

    if ([v24 count])
    {
      [v24 sortUsingSelector:sel_compareSegmentAndT_];
      if (headCopy)
      {
        [v24 lastObject];
      }

      else
      {
        [v24 objectAtIndex:0];
      }
      v26 = ;
      [v26 point];
      x = v29;
      y = v30;
    }

    else if (headCopy)
    {
      v26 = 0;
      x = self->mTailPoint.x;
      y = self->mTailPoint.y;
    }

    else
    {
      v26 = 0;
      x = self->mHeadPoint.x;
      y = self->mHeadPoint.y;
    }

    v31 = sub_23F4659D0(v15, v16, x);
    *angle = sub_23F465A48(v31, v32) + -1.57079633;
    v33 = sub_23F4659D0(x, y, v15);
    v35 = *MEMORY[0x277CBF348];
    if (v33 != *MEMORY[0x277CBF348] || v34 != *(MEMORY[0x277CBF348] + 8))
    {
      v36 = sub_23F465A1C(v33, v34);
      v35 = sub_23F4659DC(v36, v37, v22);
    }

    point->x = sub_23F4659C4(v15, v16, v35);
    point->y = v38;
    if (v26)
    {
      *segment = [v26 segment];
      [v26 t];
    }

    else
    {
      *segment = 0;
      v39 = 0;
    }

    *t = v39;
  }

  else
  {
    *angle = 1.57079633;
    point->x = v15;
    point->y = v16;
    *segment = -1;
    *t = 0.0;
  }

  MEMORY[0x2821F96F8]();
}

- (id)_newClippedPath
{
  [(AKTSDShape *)self p_validateHeadLineEnd];
  [(AKTSDShape *)self p_validateTailLineEnd];
  if ((self->mHeadCutSegment & 0x8000000000000000) == 0 || (self->mTailCutSegment & 0x8000000000000000) == 0)
  {
    stroke = [(AKTSDShape *)self stroke];
    [stroke width];
    v5 = v4;

    v6 = objc_alloc_init(AKTSDBezierPath);
    v7 = sub_23F465A58(self->mTailLineEndAngle + 1.57079633);
    v8 = v5 * 0.0;
    v10 = sub_23F4659DC(v7, v9, v8);
    x = self->mTailLineEndPoint.x;
    y = self->mTailLineEndPoint.y;
    v13 = sub_23F4659C4(x, y, v10);
    v15 = v14;
    v16 = sub_23F465A58(self->mHeadLineEndAngle + 1.57079633);
    v18 = sub_23F4659DC(v16, v17, v8);
    v19 = sub_23F4659C4(self->mHeadLineEndPoint.x, self->mHeadLineEndPoint.y, v18);
    v21 = v20;
    mHeadCutSegment = self->mHeadCutSegment;
    mTailCutSegment = self->mTailCutSegment;
    if ((mHeadCutSegment & 0x8000000000000000) == 0 && mHeadCutSegment < mTailCutSegment || mHeadCutSegment == mTailCutSegment && self->mHeadCutT < self->mTailCutT)
    {
      [(AKTSDBezierPath *)v6 moveToPoint:v13, v15];
    }

    else
    {
      if (mTailCutSegment < 0)
      {
        [(AKTSDBezierPath *)v6 moveToPoint:x, y];
      }

      else
      {
        [(AKTSDBezierPath *)v6 moveToPoint:v13, v15];
        [(AKTSDBezierPath *)v6 lineToPoint:self->mTailLineEndPoint.x, self->mTailLineEndPoint.y];
      }

      path = [(AKTSDShape *)self path];
      [(AKTSDBezierPath *)v6 appendBezierPath:path fromSegment:self->mTailCutSegment t:self->mHeadCutSegment toSegment:1 t:self->mTailCutT withoutMove:self->mHeadCutT];

      if (self->mHeadCutSegment < 0)
      {
        goto LABEL_14;
      }
    }

    [(AKTSDBezierPath *)v6 lineToPoint:v19, v21];
LABEL_14:

    return v6;
  }

  [(AKTSDShape *)self path];
  return objc_claimAutoreleasedReturnValue();
}

@end