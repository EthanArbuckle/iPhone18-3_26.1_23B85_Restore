@interface CRLPathCut
- (CRLPathCut)initWithSegment:(int64_t)a3 atT:(double)a4 withSkew:(double)a5;
@end

@implementation CRLPathCut

- (CRLPathCut)initWithSegment:(int64_t)a3 atT:(double)a4 withSkew:(double)a5
{
  v9.receiver = self;
  v9.super_class = CRLPathCut;
  result = [(CRLPathCut *)&v9 init];
  if (result)
  {
    result->mSegment = a3;
    result->mT = a4;
    result->mSkew = a5;
  }

  return result;
}

@end