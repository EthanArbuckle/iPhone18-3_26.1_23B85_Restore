@interface AAUIOBHeaderView
- (double)bottomPadding;
- (double)topPadding;
@end

@implementation AAUIOBHeaderView

- (double)topPadding
{
  v2 = +[AAUIFeatureFlags isSolariumEnabled];
  result = 60.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (double)bottomPadding
{
  v2 = +[AAUIFeatureFlags isSolariumEnabled];
  result = 48.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

@end