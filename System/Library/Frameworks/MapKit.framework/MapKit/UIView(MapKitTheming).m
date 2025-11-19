@interface UIView(MapKitTheming)
- (id)mk_theme;
@end

@implementation UIView(MapKitTheming)

- (id)mk_theme
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3)
  {
    v4 = [a1 traitCollection];
    if ([v4 userInterfaceStyle] == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [MKInfoCardThemeManager setTheme:v5];
  }

  return +[MKInfoCardThemeManager currentTheme];
}

@end