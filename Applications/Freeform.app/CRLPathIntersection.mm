@interface CRLPathIntersection
- (CGPoint)point;
- (CRLPathIntersection)initWithSegment:(int64_t)a3 atT:(double)a4 onSegmentB:(int64_t)a5 atT:(double)a6 atPoint:(CGPoint)a7;
- (int64_t)compareSegmentAndT:(id)a3;
- (int64_t)compareT:(id)a3;
@end

@implementation CRLPathIntersection

- (CRLPathIntersection)initWithSegment:(int64_t)a3 atT:(double)a4 onSegmentB:(int64_t)a5 atT:(double)a6 atPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v14.receiver = self;
  v14.super_class = CRLPathIntersection;
  result = [(CRLPathIntersection *)&v14 init];
  if (result)
  {
    result->mSegment = a3;
    result->mT = a4;
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegmentB = a5;
    result->mTB = a6;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)a3
{
  v4 = a3;
  v5 = [(CRLPathIntersection *)self segment];
  v6 = [v4 segment];
  if (v5 >= v6)
  {
    if (v5 <= v6)
    {
      v7 = [(CRLPathIntersection *)self compareT:v4];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)compareT:(id)a3
{
  v4 = a3;
  [(CRLPathIntersection *)self t];
  v6 = v5;
  [v4 t];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end