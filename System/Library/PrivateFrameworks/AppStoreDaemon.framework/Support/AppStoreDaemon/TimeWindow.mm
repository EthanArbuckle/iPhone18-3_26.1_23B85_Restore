@interface TimeWindow
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TimeWindow

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[TimeWindow allocWithZone:?]];
  *(result + 1) = *&self->_endTime;
  *(result + 2) = *&self->_startTime;
  return result;
}

@end