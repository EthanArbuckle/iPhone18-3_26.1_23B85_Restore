@interface VOTElementFetcherSearchParameters
- (CGPoint)hitTestPoint;
- (_NSRange)startingRange;
@end

@implementation VOTElementFetcherSearchParameters

- (_NSRange)startingRange
{
  length = self->_startingRange.length;
  location = self->_startingRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGPoint)hitTestPoint
{
  x = self->_hitTestPoint.x;
  y = self->_hitTestPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end