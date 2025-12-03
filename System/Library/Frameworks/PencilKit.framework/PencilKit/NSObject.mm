@interface NSObject
- (id)_pkDebugStringRepresentation;
@end

@implementation NSObject

- (id)_pkDebugStringRepresentation
{
  if (self)
  {
    self = PKDebugStringRepresentation(self);
    v1 = vars8;
  }

  return self;
}

@end