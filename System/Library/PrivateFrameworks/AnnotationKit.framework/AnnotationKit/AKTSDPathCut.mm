@interface AKTSDPathCut
- (AKTSDPathCut)initWithSegment:(int64_t)segment atT:(double)t withSkew:(double)skew;
@end

@implementation AKTSDPathCut

- (AKTSDPathCut)initWithSegment:(int64_t)segment atT:(double)t withSkew:(double)skew
{
  v9.receiver = self;
  v9.super_class = AKTSDPathCut;
  result = [(AKTSDPathCut *)&v9 init];
  if (result)
  {
    result->mSegment = segment;
    result->mT = t;
    result->mSkew = skew;
  }

  return result;
}

@end