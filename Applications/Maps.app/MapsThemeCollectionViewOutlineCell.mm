@interface MapsThemeCollectionViewOutlineCell
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeCollectionViewOutlineCell

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewOutlineCell;
  [(MapsThemeCollectionViewOutlineCell *)&v4 didMoveToWindow];
  window = [(MapsThemeCollectionViewOutlineCell *)self window];

  if (window)
  {
    [(MapsThemeCollectionViewOutlineCell *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewOutlineCell;
  [(MapsThemeCollectionViewOutlineCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeCollectionViewOutlineCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeCollectionViewOutlineCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeCollectionViewOutlineCell *)self updateTheme];
    }
  }
}

@end