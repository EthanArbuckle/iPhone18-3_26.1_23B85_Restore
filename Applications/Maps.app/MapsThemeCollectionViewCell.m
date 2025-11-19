@interface MapsThemeCollectionViewCell
- (MapsThemeCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeCollectionViewCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _maps_overridePreferredLayoutAttributesWithCompressedSize])
  {
    v5 = [v4 copy];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(MapsThemeCollectionViewCell *)self contentView];
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    [v14 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v19)];
    v16 = v15;

    [v5 setFrame:{v7, v9, v11, v16}];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v4 didMoveToWindow];
  v3 = [(MapsThemeCollectionViewCell *)self window];

  if (v3)
  {
    [(MapsThemeCollectionViewCell *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionViewCell;
  [(MapsThemeCollectionViewCell *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeCollectionViewCell traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeCollectionViewCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeCollectionViewCell *)self updateTheme];
    }
  }
}

- (MapsThemeCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MapsThemeCollectionViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MapsThemeCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(MapsThemeCollectionViewCell *)v3 setBackgroundView:v5];
  }

  return v3;
}

@end