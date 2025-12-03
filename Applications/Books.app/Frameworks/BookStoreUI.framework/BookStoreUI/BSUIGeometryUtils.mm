@interface BSUIGeometryUtils
+ (CGRect)centeredCGRectFromRect:(CGRect)result centerHorizontally:(BOOL)horizontally centerVertically:(BOOL)vertically bounds:(CGRect)bounds scale:(double)scale;
@end

@implementation BSUIGeometryUtils

+ (CGRect)centeredCGRectFromRect:(CGRect)result centerHorizontally:(BOOL)horizontally centerVertically:(BOOL)vertically bounds:(CGRect)bounds scale:(double)scale
{
  verticallyCopy = vertically;
  if (horizontally)
  {
    UIRectCenteredXInRectScale();
  }

  if (verticallyCopy)
  {
    UIRectCenteredYInRectScale();
  }

  return result;
}

@end