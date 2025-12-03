@interface MapsThemeTableView
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeTableView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeTableView;
  [(MapsThemeTableView *)&v4 didMoveToWindow];
  window = [(MapsThemeTableView *)self window];

  if (window)
  {
    [(MapsThemeTableView *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeTableView;
  [(MapsThemeTableView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeTableView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeTableView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeTableView *)self updateTheme];
    }
  }
}

@end