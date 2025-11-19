@interface AKTSDShape
- (AKTSDShape)init;
- (CGPoint)headLineEndPoint;
- (CGPoint)tailLineEndPoint;
- (double)lineEndScale;
- (id)_newClippedPath;
- (id)clippedPathForLineEnds;
- (id)strokeHeadLineEnd;
- (id)strokeTailLineEnd;
- (void)drawInContext:(CGContext *)a3;
- (void)p_computeAngle:(double *)a3 point:(CGPoint *)a4 cutSegment:(int64_t *)a5 cutT:(double *)a6 forLineEndAtHead:(BOOL)a7;
- (void)p_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6;
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

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(AKTSDShape *)self stroke];
  v6 = [(AKTSDShape *)self clippedPathForLineEnds];
  [v5 brushPath:v6 inContext:a3];

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [(AKTSDShape *)self p_drawLineEndForHead:1 withDelta:a3 inContext:0 useFastDrawing:*MEMORY[0x277CBF348], v8];

  [(AKTSDShape *)self p_drawLineEndForHead:0 withDelta:a3 inContext:0 useFastDrawing:v7, v8];
}

- (void)p_drawLineEndForHead:(BOOL)a3 withDelta:(CGPoint)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6
{
  v6 = a6;
  x = a4.x;
  if (a3)
  {
    v10 = [(AKTSDShape *)self strokeHeadLineEnd:a4.x];
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
    v16 = [(AKTSDShape *)self strokeTailLineEnd:a4.x];
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
  v23 = [(AKTSDShape *)self stroke];
  [(AKTSDShape *)self lineEndScale];
  [v23 paintLineEnd:v25 atPoint:a5 atAngle:v6 withScale:v20 inContext:v22 useFastDrawing:{v19, v24}];
}

- (id)strokeHeadLineEnd
{
  v3 = [(AKTSDShape *)self headLineEnd];
  if (v3)
  {
    v4 = [(AKTSDShape *)self stroke];
    v5 = [(AKTSDShape *)self headLineEnd];
    v6 = [v4 strokeLineEnd:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)strokeTailLineEnd
{
  v3 = [(AKTSDShape *)self tailLineEnd];
  if (v3)
  {
    v4 = [(AKTSDShape *)self stroke];
    v5 = [(AKTSDShape *)self tailLineEnd];
    v6 = [v4 strokeLineEnd:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)lineEndScale
{
  v2 = [(AKTSDShape *)self stroke];
  [v2 width];
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
    v3 = [(AKTSDShape *)self _newClippedPath];
    mCachedClippedPath = self->mCachedClippedPath;
    self->mCachedClippedPath = v3;

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
    v5 = [(AKTSDShape *)self path];
    [v5 getStartPoint:&self->mTailPoint andEndPoint:&self->mHeadPoint];
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

- (void)p_computeAngle:(double *)a3 point:(CGPoint *)a4 cutSegment:(int64_t *)a5 cutT:(double *)a6 forLineEndAtHead:(BOOL)a7
{
  v7 = a7;
  [(AKTSDShape *)self p_validateHeadAndTail];
  v13 = 40;
  if (v7)
  {
    v13 = 24;
  }

  v14 = 32;
  if (v7)
  {
    v14 = 16;
  }

  v15 = *(&self->super.isa + v14);
  v16 = *(&self->super.isa + v13);
  if (v7)
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
    v25 = [(AKTSDShape *)self path];
    [v25 addIntersectionsWithPath:v23 to:v24 allIntersections:0 reversed:v7];

    if ([v24 count])
    {
      [v24 sortUsingSelector:sel_compareSegmentAndT_];
      if (v7)
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

    else if (v7)
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
    *a3 = sub_23F465A48(v31, v32) + -1.57079633;
    v33 = sub_23F4659D0(x, y, v15);
    v35 = *MEMORY[0x277CBF348];
    if (v33 != *MEMORY[0x277CBF348] || v34 != *(MEMORY[0x277CBF348] + 8))
    {
      v36 = sub_23F465A1C(v33, v34);
      v35 = sub_23F4659DC(v36, v37, v22);
    }

    a4->x = sub_23F4659C4(v15, v16, v35);
    a4->y = v38;
    if (v26)
    {
      *a5 = [v26 segment];
      [v26 t];
    }

    else
    {
      *a5 = 0;
      v39 = 0;
    }

    *a6 = v39;
  }

  else
  {
    *a3 = 1.57079633;
    a4->x = v15;
    a4->y = v16;
    *a5 = -1;
    *a6 = 0.0;
  }

  MEMORY[0x2821F96F8]();
}

- (id)_newClippedPath
{
  [(AKTSDShape *)self p_validateHeadLineEnd];
  [(AKTSDShape *)self p_validateTailLineEnd];
  if ((self->mHeadCutSegment & 0x8000000000000000) == 0 || (self->mTailCutSegment & 0x8000000000000000) == 0)
  {
    v3 = [(AKTSDShape *)self stroke];
    [v3 width];
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

      v24 = [(AKTSDShape *)self path];
      [(AKTSDBezierPath *)v6 appendBezierPath:v24 fromSegment:self->mTailCutSegment t:self->mHeadCutSegment toSegment:1 t:self->mTailCutT withoutMove:self->mHeadCutT];

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