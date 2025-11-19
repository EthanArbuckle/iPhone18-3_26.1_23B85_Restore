@interface MapsThemeCollectionViewListCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeCollectionViewListCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewListCell;
  [(MapsThemeCollectionViewListCell *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeCollectionViewListCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeCollectionViewListCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeCollectionViewListCell *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewListCell;
  [(MapsThemeCollectionViewListCell *)&v4 didMoveToWindow];
  v3 = [(MapsThemeCollectionViewListCell *)self window];

  if (v3)
  {
    [(MapsThemeCollectionViewListCell *)self updateTheme];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _maps_overridePreferredLayoutAttributesWithCompressedSize])
  {
    v5 = [v4 copy];
    [v5 frame];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    [(MapsThemeCollectionViewListCell *)self _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v12)];
    [v5 setFrame:{x, y, width, v9}];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end