@interface MapsThemeTableViewCell
- (MapsThemeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateSelectedBackgroundColor;
- (void)didMoveToWindow;
- (void)setSelectedBackgroundColorProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
@end

@implementation MapsThemeTableViewCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewCell;
  [(MapsThemeTableViewCell *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeTableViewCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeTableViewCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeTableViewCell *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeTableViewCell;
  [(MapsThemeTableViewCell *)&v4 didMoveToWindow];
  v3 = [(MapsThemeTableViewCell *)self window];

  if (v3)
  {
    [(MapsThemeTableViewCell *)self updateTheme];
  }
}

- (MapsThemeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIView alloc];
    [(MapsThemeTableViewCell *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    [(MapsThemeTableViewCell *)v4 setSelectedBackgroundView:v6];

    v7 = v4;
  }

  return v4;
}

- (void)updateTheme
{
  v3 = [(MapsThemeTableViewCell *)self theme];
  v4 = [v3 tableViewCellHighlightedOverlayColor];
  v5 = [(MapsThemeTableViewCell *)self selectedBackgroundView];
  [v5 setBackgroundColor:v4];

  [(MapsThemeTableViewCell *)self _updateSelectedBackgroundColor];
}

- (void)setSelectedBackgroundColorProvider:(id)a3
{
  if (self->_selectedBackgroundColorProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    selectedBackgroundColorProvider = self->_selectedBackgroundColorProvider;
    self->_selectedBackgroundColorProvider = v4;

    [(MapsThemeTableViewCell *)self _updateSelectedBackgroundColor];
  }
}

- (void)_updateSelectedBackgroundColor
{
  v3 = [(MapsThemeTableViewCell *)self selectedBackgroundColorProvider];

  if (v3)
  {
    v7 = [(MapsThemeTableViewCell *)self selectedBackgroundColorProvider];
    v4 = [(MapsThemeTableViewCell *)self theme];
    v5 = v7[2](v7, v4);
    v6 = [(MapsThemeTableViewCell *)self selectedBackgroundView];
    [v6 setBackgroundColor:v5];
  }
}

@end