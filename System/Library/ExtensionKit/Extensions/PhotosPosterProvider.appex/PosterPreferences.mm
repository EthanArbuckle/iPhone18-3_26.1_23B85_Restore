@interface PosterPreferences
- (BOOL)px_contentOcclusionRectangleUpdatesRequested;
- (CGRect)px_preferredSalientContentRectangle;
- (unint64_t)px_adaptiveTimeMode;
@end

@implementation PosterPreferences

- (CGRect)px_preferredSalientContentRectangle
{
  sub_100007314(self, a2, sub_100007AA4);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)px_contentOcclusionRectangleUpdatesRequested
{
  v2 = self;
  v3 = sub_100007AF8();

  return v3 & 1;
}

- (unint64_t)px_adaptiveTimeMode
{
  v2 = self;
  v3 = sub_100007B50();

  return v3;
}

@end