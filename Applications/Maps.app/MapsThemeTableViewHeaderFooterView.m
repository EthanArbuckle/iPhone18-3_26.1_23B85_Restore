@interface MapsThemeTableViewHeaderFooterView
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeTableViewHeaderFooterView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeTableViewHeaderFooterView;
  [(MapsThemeTableViewHeaderFooterView *)&v4 didMoveToWindow];
  v3 = [(MapsThemeTableViewHeaderFooterView *)self window];

  if (v3)
  {
    [(MapsThemeTableViewHeaderFooterView *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewHeaderFooterView;
  [(MapsThemeTableViewHeaderFooterView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeTableViewHeaderFooterView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeTableViewHeaderFooterView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeTableViewHeaderFooterView *)self updateTheme];
    }
  }
}

@end