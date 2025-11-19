@interface NSValue(CGSize)
- (__n128)CGSizeValue;
@end

@implementation NSValue(CGSize)

- (__n128)CGSizeValue
{
  v5 = a1;
  v4 = a2;
  v3 = 0uLL;
  _getNSValueBytes(a1, &v3, 16, "CGSize");
  return v3;
}

@end