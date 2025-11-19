@interface NavSignViewModel
- (_NSRange)stepIndexRange;
@end

@implementation NavSignViewModel

- (_NSRange)stepIndexRange
{
  length = self->_stepIndexRange.length;
  location = self->_stepIndexRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end