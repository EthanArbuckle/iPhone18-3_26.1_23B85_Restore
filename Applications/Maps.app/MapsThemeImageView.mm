@interface MapsThemeImageView
- (void)_updateImage;
- (void)didMoveToWindow;
- (void)setImageProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeImageView

- (void)_updateImage
{
  imageProvider = [(MapsThemeImageView *)self imageProvider];

  if (imageProvider)
  {
    imageProvider2 = [(MapsThemeImageView *)self imageProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = imageProvider2[2](imageProvider2, v4);
    [(MapsThemeImageView *)self setImage:v5];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeImageView;
  [(MapsThemeImageView *)&v4 didMoveToWindow];
  window = [(MapsThemeImageView *)self window];

  if (window)
  {
    [(MapsThemeImageView *)self updateTheme];
  }
}

- (void)setImageProvider:(id)provider
{
  if (self->_imageProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    imageProvider = self->_imageProvider;
    self->_imageProvider = v4;

    [(MapsThemeImageView *)self _updateImage];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeImageView;
  [(MapsThemeImageView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeImageView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeImageView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeImageView *)self updateTheme];
    }
  }
}

@end