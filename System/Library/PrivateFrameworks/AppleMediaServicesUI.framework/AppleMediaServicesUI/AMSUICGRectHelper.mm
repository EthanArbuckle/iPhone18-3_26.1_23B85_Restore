@interface AMSUICGRectHelper
+ (CGRect)flattenRect:(CGRect)result toParentFrame:(CGRect)frame;
+ (CGRect)rect:(CGRect)rect withFlippedOriginXRelativeTo:(CGRect)to;
@end

@implementation AMSUICGRectHelper

+ (CGRect)rect:(CGRect)rect withFlippedOriginXRelativeTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  rect = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
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

+ (CGRect)flattenRect:(CGRect)result toParentFrame:(CGRect)frame
{
  v4 = result.origin.x + frame.origin.x;
  v5 = result.origin.y + frame.origin.y;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end