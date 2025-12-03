@interface AKTSDPathIntersection
- (AKTSDPathIntersection)initWithSegment:(int64_t)segment atT:(double)t onSegmentB:(int64_t)b atT:(double)atT atPoint:(CGPoint)point;
- (CGPoint)point;
- (int64_t)compareSegmentAndT:(id)t;
- (int64_t)compareT:(id)t;
@end

@implementation AKTSDPathIntersection

- (AKTSDPathIntersection)initWithSegment:(int64_t)segment atT:(double)t onSegmentB:(int64_t)b atT:(double)atT atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v14.receiver = self;
  v14.super_class = AKTSDPathIntersection;
  result = [(AKTSDPathIntersection *)&v14 init];
  if (result)
  {
    result->mPoint.x = x;
    result->mPoint.y = y;
    result->mSegment = segment;
    result->mSegmentB = b;
    result->mT = t;
    result->mTB = atT;
  }

  return result;
}

- (int64_t)compareSegmentAndT:(id)t
{
  tCopy = t;
  segment = [(AKTSDPathIntersection *)self segment];
  segment2 = [tCopy segment];
  if (segment >= segment2)
  {
    if (segment <= segment2)
    {
      v7 = [(AKTSDPathIntersection *)self compareT:tCopy];
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

- (int64_t)compareT:(id)t
{
  tCopy = t;
  [(AKTSDPathIntersection *)self t];
  v6 = v5;
  [tCopy t];
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