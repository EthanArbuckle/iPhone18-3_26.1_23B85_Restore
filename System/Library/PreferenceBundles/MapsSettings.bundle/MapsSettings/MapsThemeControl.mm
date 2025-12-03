@interface MapsThemeControl
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeControl

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeControl;
  [(MapsThemeControl *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeControl traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeControl *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeControl *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeControl;
  [(MapsThemeControl *)&v4 didMoveToWindow];
  window = [(MapsThemeControl *)self window];

  if (window)
  {
    [(MapsThemeControl *)self updateTheme];
  }
}

@end