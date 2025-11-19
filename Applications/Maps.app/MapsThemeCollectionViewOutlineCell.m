@interface MapsThemeCollectionViewOutlineCell
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeCollectionViewOutlineCell

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewOutlineCell;
  [(MapsThemeCollectionViewOutlineCell *)&v4 didMoveToWindow];
  v3 = [(MapsThemeCollectionViewOutlineCell *)self window];

  if (v3)
  {
    [(MapsThemeCollectionViewOutlineCell *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewOutlineCell;
  [(MapsThemeCollectionViewOutlineCell *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeCollectionViewOutlineCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeCollectionViewOutlineCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeCollectionViewOutlineCell *)self updateTheme];
    }
  }
}

@end