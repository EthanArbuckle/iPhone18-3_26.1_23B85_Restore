@interface TimeWindow
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TimeWindow

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[TimeWindow allocWithZone:?]];
  *(result + 1) = *&self->_endTime;
  *(result + 2) = *&self->_startTime;
  return result;
}

@end