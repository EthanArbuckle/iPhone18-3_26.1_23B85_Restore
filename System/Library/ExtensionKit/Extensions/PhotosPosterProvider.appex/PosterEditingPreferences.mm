@interface PosterEditingPreferences
- (BOOL)isDepthEffectEnabled;
- (CGRect)pu_preferredSalientContentRectangle;
- (UIColor)statusBarTintColor;
- (UIColor)timeColor;
- (UIFont)timeFont;
@end

@implementation PosterEditingPreferences

- (UIFont)timeFont
{
  selfCopy = self;
  v3 = sub_100009370();

  return v3;
}

- (UIColor)timeColor
{
  selfCopy = self;
  v3 = sub_1000093F4();

  return v3;
}

- (UIColor)statusBarTintColor
{
  selfCopy = self;
  v3 = sub_100009478();

  return v3;
}

- (CGRect)pu_preferredSalientContentRectangle
{
  sub_100007314(self, a2, sub_1000094D0);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isDepthEffectEnabled
{
  selfCopy = self;
  v3 = sub_100009524();

  return v3 & 1;
}

@end