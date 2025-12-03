@interface ARLine
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARLine

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  *(result + 1) = self->_identifier;
  *(result + 1) = *self->_startPoint;
  *(result + 2) = *self->_endPoint;
  return result;
}

@end