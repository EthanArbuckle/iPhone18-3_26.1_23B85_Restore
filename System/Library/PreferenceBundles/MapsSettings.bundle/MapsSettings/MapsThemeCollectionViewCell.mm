@interface MapsThemeCollectionViewCell
- (MapsThemeCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeCollectionViewCell

- (MapsThemeCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MapsThemeCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MapsThemeCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(MapsThemeCollectionViewCell *)v3 setBackgroundView:v5];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeCollectionViewCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeCollectionViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeCollectionViewCell *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v4 didMoveToWindow];
  window = [(MapsThemeCollectionViewCell *)self window];

  if (window)
  {
    [(MapsThemeCollectionViewCell *)self updateTheme];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([objc_opt_class() _maps_overridePreferredLayoutAttributesWithCompressedSize])
  {
    v5 = [attributesCopy copy];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentView = [(MapsThemeCollectionViewCell *)self contentView];
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    [contentView _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v19)];
    v16 = v15;

    [v5 setFrame:{v7, v9, v11, v16}];
  }

  else
  {
    v5 = attributesCopy;
  }

  return v5;
}

@end