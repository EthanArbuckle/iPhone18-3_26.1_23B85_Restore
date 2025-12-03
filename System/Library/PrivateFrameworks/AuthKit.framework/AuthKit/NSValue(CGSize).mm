@interface NSValue(CGSize)
- (__n128)CGSizeValue;
@end

@implementation NSValue(CGSize)

- (__n128)CGSizeValue
{
  selfCopy = self;
  v4 = a2;
  v3 = 0uLL;
  _getNSValueBytes(self, &v3, 16, "CGSize");
  return v3;
}

@end