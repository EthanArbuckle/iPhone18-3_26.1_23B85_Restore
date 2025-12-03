@interface MapsThemeCollectionViewListCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeCollectionViewListCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([objc_opt_class() _maps_overridePreferredLayoutAttributesWithCompressedSize])
  {
    v5 = [attributesCopy copy];
    [v5 frame];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    [(MapsThemeCollectionViewListCell *)self _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v12)];
    [v5 setFrame:{x, y, width, v9}];
  }

  else
  {
    v5 = attributesCopy;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewListCell;
  [(MapsThemeCollectionViewListCell *)&v4 didMoveToWindow];
  window = [(MapsThemeCollectionViewListCell *)self window];

  if (window)
  {
    [(MapsThemeCollectionViewListCell *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewListCell;
  [(MapsThemeCollectionViewListCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeCollectionViewListCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeCollectionViewListCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeCollectionViewListCell *)self updateTheme];
    }
  }
}

@end