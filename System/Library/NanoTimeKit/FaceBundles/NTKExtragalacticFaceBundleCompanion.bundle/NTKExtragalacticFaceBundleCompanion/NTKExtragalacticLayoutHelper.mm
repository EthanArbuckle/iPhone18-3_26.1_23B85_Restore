@interface NTKExtragalacticLayoutHelper
+ (CGPoint)digitCenterPositionForCorner:(unint64_t)corner unifiedGlyphSize:(CGSize)size cornerFrame:(CGRect)frame;
+ (CGRect)frameForCorner:(unint64_t)corner screenBounds:(CGRect)bounds;
@end

@implementation NTKExtragalacticLayoutHelper

+ (CGRect)frameForCorner:(unint64_t)corner screenBounds:(CGRect)bounds
{
  v5 = bounds.size.width * 0.5;
  v6 = bounds.size.height * 0.5;
  v7 = [NTKExtragalacticLayoutHelper colForCorner:?];
  v8 = [NTKExtragalacticLayoutHelper rowForCorner:corner];
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

+ (CGPoint)digitCenterPositionForCorner:(unint64_t)corner unifiedGlyphSize:(CGSize)size cornerFrame:(CGRect)frame
{
  v5 = frame.origin.x + frame.size.width - size.width;
  v6 = frame.size.height - size.height;
  if (corner)
  {
    y = frame.origin.y;
  }

  else
  {
    y = v6;
  }

  if (corner)
  {
    x = frame.origin.x;
  }

  else
  {
    x = v5;
  }

  if (corner != 1)
  {
    v6 = y;
    frame.origin.x = x;
  }

  if (corner == 2)
  {
    v6 = frame.origin.y;
  }

  else
  {
    v5 = frame.origin.x;
  }

  v9 = frame.size.width * 0.5 + v5;
  v10 = frame.size.height * 0.5 + v6;
  result.y = v10;
  result.x = v9;
  return result;
}

@end