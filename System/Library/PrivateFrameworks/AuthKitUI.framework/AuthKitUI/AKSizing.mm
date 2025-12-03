@interface AKSizing
+ (CGSize)size:(CGSize)size scaledForHeight:(double)height;
+ (CGSize)size:(CGSize)size scaledForWidth:(double)width;
@end

@implementation AKSizing

+ (CGSize)size:(CGSize)size scaledForWidth:(double)width
{
  CGSizeMake_2();
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)size:(CGSize)size scaledForHeight:(double)height
{
  CGSizeMake_2();
  result.height = v5;
  result.width = v4;
  return result;
}

@end