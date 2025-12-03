@interface UIViewController(MapKitTheming)
- (id)mk_theme;
@end

@implementation UIViewController(MapKitTheming)

- (id)mk_theme
{
  traitCollection = [self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle)
  {
    traitCollection2 = [self traitCollection];
    if ([traitCollection2 userInterfaceStyle] == 1)
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