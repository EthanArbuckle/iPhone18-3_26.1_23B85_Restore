@interface PHASEEnvelopeSegment
- (PHASEEnvelopeSegment)init;
- (PHASEEnvelopeSegment)initWithEndPoint:(simd_double2)endPoint curveType:(PHASECurveType)curveType;
@end

@implementation PHASEEnvelopeSegment

- (PHASEEnvelopeSegment)init
{
  v3.receiver = self;
  v3.super_class = PHASEEnvelopeSegment;
  result = [(PHASEEnvelopeSegment *)&v3 init];
  if (result)
  {
    *result->_endPoint = 0;
    *&result->_endPoint[8] = 0;
    result->_curveType = 1668435054;
  }

  return result;
}

- (PHASEEnvelopeSegment)initWithEndPoint:(simd_double2)endPoint curveType:(PHASECurveType)curveType
{
  v7.receiver = self;
  v7.super_class = PHASEEnvelopeSegment;
  result = [(PHASEEnvelopeSegment *)&v7 init];
  if (result)
  {
    *result->_endPoint = endPoint;
    result->_curveType = curveType;
  }

  return result;
}

@end