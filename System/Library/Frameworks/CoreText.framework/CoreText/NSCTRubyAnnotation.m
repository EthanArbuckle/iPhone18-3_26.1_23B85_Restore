@interface NSCTRubyAnnotation
- (BOOL)isEqual:(id)a3;
@end

@implementation NSCTRubyAnnotation

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

@end