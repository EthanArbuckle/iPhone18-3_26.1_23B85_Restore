@interface AKSizing
+ (CGSize)size:(CGSize)a3 scaledForHeight:(double)a4;
+ (CGSize)size:(CGSize)a3 scaledForWidth:(double)a4;
@end

@implementation AKSizing

+ (CGSize)size:(CGSize)a3 scaledForWidth:(double)a4
{
  CGSizeMake_2();
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)size:(CGSize)a3 scaledForHeight:(double)a4
{
  CGSizeMake_2();
  result.height = v5;
  result.width = v4;
  return result;
}

@end