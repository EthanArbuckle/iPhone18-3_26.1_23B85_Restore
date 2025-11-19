@interface MapsThemeViewController
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeViewController

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeViewController;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeViewController traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeViewController *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeViewController *)self updateTheme];
    }
  }
}

@end