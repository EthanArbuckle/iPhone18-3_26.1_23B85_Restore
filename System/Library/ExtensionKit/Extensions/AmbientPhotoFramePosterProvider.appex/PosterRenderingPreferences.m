@interface PosterRenderingPreferences
- (CGRect)px_preferredSalientContentRectangle;
@end

@implementation PosterRenderingPreferences

- (CGRect)px_preferredSalientContentRectangle
{
  v2 = sub_100006E3C();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end