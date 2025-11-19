@interface MapsThemeView
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeView;
  [(MapsThemeView *)&v4 didMoveToWindow];
  v3 = [(MapsThemeView *)self window];

  if (v3)
  {
    [(MapsThemeView *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeView;
  [(MapsThemeView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeView *)self updateTheme];
    }
  }
}

@end