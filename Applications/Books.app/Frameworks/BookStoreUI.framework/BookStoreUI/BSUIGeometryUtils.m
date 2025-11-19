@interface BSUIGeometryUtils
+ (CGRect)centeredCGRectFromRect:(CGRect)result centerHorizontally:(BOOL)a4 centerVertically:(BOOL)a5 bounds:(CGRect)a6 scale:(double)a7;
@end

@implementation BSUIGeometryUtils

+ (CGRect)centeredCGRectFromRect:(CGRect)result centerHorizontally:(BOOL)a4 centerVertically:(BOOL)a5 bounds:(CGRect)a6 scale:(double)a7
{
  v7 = a5;
  if (a4)
  {
    UIRectCenteredXInRectScale();
  }

  if (v7)
  {
    UIRectCenteredYInRectScale();
  }

  return result;
}

@end