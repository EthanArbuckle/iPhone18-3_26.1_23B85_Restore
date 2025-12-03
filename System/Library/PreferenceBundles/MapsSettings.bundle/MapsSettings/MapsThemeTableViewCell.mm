@interface MapsThemeTableViewCell
- (MapsThemeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateSelectedBackgroundColor;
- (void)didMoveToWindow;
- (void)setSelectedBackgroundColorProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
@end

@implementation MapsThemeTableViewCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewCell;
  [(MapsThemeTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeTableViewCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeTableViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
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
  window = [(MapsThemeTableViewCell *)self window];

  if (window)
  {
    [(MapsThemeTableViewCell *)self updateTheme];
  }
}

- (MapsThemeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = MapsThemeTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
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
  theme = [(MapsThemeTableViewCell *)self theme];
  tableViewCellHighlightedOverlayColor = [theme tableViewCellHighlightedOverlayColor];
  selectedBackgroundView = [(MapsThemeTableViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellHighlightedOverlayColor];

  [(MapsThemeTableViewCell *)self _updateSelectedBackgroundColor];
}

- (void)setSelectedBackgroundColorProvider:(id)provider
{
  if (self->_selectedBackgroundColorProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    selectedBackgroundColorProvider = self->_selectedBackgroundColorProvider;
    self->_selectedBackgroundColorProvider = v4;

    [(MapsThemeTableViewCell *)self _updateSelectedBackgroundColor];
  }
}

- (void)_updateSelectedBackgroundColor
{
  selectedBackgroundColorProvider = [(MapsThemeTableViewCell *)self selectedBackgroundColorProvider];

  if (selectedBackgroundColorProvider)
  {
    selectedBackgroundColorProvider2 = [(MapsThemeTableViewCell *)self selectedBackgroundColorProvider];
    theme = [(MapsThemeTableViewCell *)self theme];
    v5 = selectedBackgroundColorProvider2[2](selectedBackgroundColorProvider2, theme);
    selectedBackgroundView = [(MapsThemeTableViewCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v5];
  }
}

@end