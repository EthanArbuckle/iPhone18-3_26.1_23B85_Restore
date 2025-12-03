@interface MapsThemeTableViewHeaderFooterView
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeTableViewHeaderFooterView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewHeaderFooterView;
  [(MapsThemeTableViewHeaderFooterView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeTableViewHeaderFooterView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeTableViewHeaderFooterView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeTableViewHeaderFooterView *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeTableViewHeaderFooterView;
  [(MapsThemeTableViewHeaderFooterView *)&v4 didMoveToWindow];
  window = [(MapsThemeTableViewHeaderFooterView *)self window];

  if (window)
  {
    [(MapsThemeTableViewHeaderFooterView *)self updateTheme];
  }
}

@end