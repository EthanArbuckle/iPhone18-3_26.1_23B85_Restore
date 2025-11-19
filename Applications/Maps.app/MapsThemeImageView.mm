@interface MapsThemeImageView
- (void)_updateImage;
- (void)didMoveToWindow;
- (void)setImageProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeImageView

- (void)_updateImage
{
  v3 = [(MapsThemeImageView *)self imageProvider];

  if (v3)
  {
    v6 = [(MapsThemeImageView *)self imageProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = v6[2](v6, v4);
    [(MapsThemeImageView *)self setImage:v5];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeImageView;
  [(MapsThemeImageView *)&v4 didMoveToWindow];
  v3 = [(MapsThemeImageView *)self window];

  if (v3)
  {
    [(MapsThemeImageView *)self updateTheme];
  }
}

- (void)setImageProvider:(id)a3
{
  if (self->_imageProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    imageProvider = self->_imageProvider;
    self->_imageProvider = v4;

    [(MapsThemeImageView *)self _updateImage];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeImageView;
  [(MapsThemeImageView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeImageView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeImageView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeImageView *)self updateTheme];
    }
  }
}

@end