@interface NSCTRubyAnnotation
- (BOOL)isEqual:(id)equal;
@end

@implementation NSCTRubyAnnotation

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

@end