@interface ARLine
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ARLine

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 1) = self->_identifier;
  *(result + 1) = *self->_startPoint;
  *(result + 2) = *self->_endPoint;
  return result;
}

@end