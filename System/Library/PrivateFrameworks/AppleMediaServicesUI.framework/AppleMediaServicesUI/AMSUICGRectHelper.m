@interface AMSUICGRectHelper
+ (CGRect)flattenRect:(CGRect)result toParentFrame:(CGRect)a4;
+ (CGRect)rect:(CGRect)a3 withFlippedOriginXRelativeTo:(CGRect)a4;
@end

@implementation AMSUICGRectHelper

+ (CGRect)rect:(CGRect)a3 withFlippedOriginXRelativeTo:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  rect = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, -1.0, 1.0);
  memset(&v15, 0, sizeof(v15));
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxX = CGRectGetMaxX(v18);
  v14 = v16;
  CGAffineTransformTranslate(&v15, &v14, -(MinX + MaxX), 0.0);
  v14 = v15;
  v19.origin.x = v10;
  v19.origin.y = v9;
  v19.size.width = v8;
  v19.size.height = rect;
  return CGRectApplyAffineTransform(v19, &v14);
}

+ (CGRect)flattenRect:(CGRect)result toParentFrame:(CGRect)a4
{
  v4 = result.origin.x + a4.origin.x;
  v5 = result.origin.y + a4.origin.y;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end