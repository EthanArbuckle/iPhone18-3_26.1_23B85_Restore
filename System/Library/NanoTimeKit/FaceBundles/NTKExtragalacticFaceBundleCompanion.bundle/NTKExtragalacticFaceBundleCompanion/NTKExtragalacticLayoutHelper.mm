@interface NTKExtragalacticLayoutHelper
+ (CGPoint)digitCenterPositionForCorner:(unint64_t)a3 unifiedGlyphSize:(CGSize)a4 cornerFrame:(CGRect)a5;
+ (CGRect)frameForCorner:(unint64_t)a3 screenBounds:(CGRect)a4;
@end

@implementation NTKExtragalacticLayoutHelper

+ (CGRect)frameForCorner:(unint64_t)a3 screenBounds:(CGRect)a4
{
  v5 = a4.size.width * 0.5;
  v6 = a4.size.height * 0.5;
  v7 = [NTKExtragalacticLayoutHelper colForCorner:?];
  v8 = [NTKExtragalacticLayoutHelper rowForCorner:a3];
  v9 = v5 * v7;
  v10 = v6 * v8;
  v11 = v5;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (CGPoint)digitCenterPositionForCorner:(unint64_t)a3 unifiedGlyphSize:(CGSize)a4 cornerFrame:(CGRect)a5
{
  v5 = a5.origin.x + a5.size.width - a4.width;
  v6 = a5.size.height - a4.height;
  if (a3)
  {
    y = a5.origin.y;
  }

  else
  {
    y = v6;
  }

  if (a3)
  {
    x = a5.origin.x;
  }

  else
  {
    x = v5;
  }

  if (a3 != 1)
  {
    v6 = y;
    a5.origin.x = x;
  }

  if (a3 == 2)
  {
    v6 = a5.origin.y;
  }

  else
  {
    v5 = a5.origin.x;
  }

  v9 = a5.size.width * 0.5 + v5;
  v10 = a5.size.height * 0.5 + v6;
  result.y = v10;
  result.x = v9;
  return result;
}

@end