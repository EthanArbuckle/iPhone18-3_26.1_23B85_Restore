@interface MapsThemeButton
- (void)_updateImage;
- (void)_updateTintColor;
- (void)_updateTitleColor;
- (void)didMoveToWindow;
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
- (void)setImageProvider:(id)provider;
- (void)setTintColorProvider:(id)provider;
- (void)setTitleColorProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
@end

@implementation MapsThemeButton

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeButton;
  [(MapsThemeButton *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeButton traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeButton *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeButton *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeButton;
  [(MapsThemeButton *)&v4 didMoveToWindow];
  window = [(MapsThemeButton *)self window];

  if (window)
  {
    [(MapsThemeButton *)self updateTheme];
  }
}

- (void)updateTheme
{
  [(MapsThemeButton *)self _updateImage];
  [(MapsThemeButton *)self _updateTitleColor];
  [(MapsThemeButton *)self _updateTintColor];
  v4 = +[MapsTheme sharedTheme];
  disabledTitleColor = [v4 disabledTitleColor];
  [(MapsThemeButton *)self setTitleColor:disabledTitleColor forState:2];
}

- (void)setImageProvider:(id)provider
{
  if (self->_imageProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    imageProvider = self->_imageProvider;
    self->_imageProvider = v4;

    [(MapsThemeButton *)self _updateImage];
  }
}

- (void)setTitleColorProvider:(id)provider
{
  if (self->_titleColorProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    titleColorProvider = self->_titleColorProvider;
    self->_titleColorProvider = v4;

    [(MapsThemeButton *)self _updateTitleColor];
  }
}

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = MapsThemeButton;
  [(MapsThemeButton *)&v5 setAttributedTitle:title forState:state];
  [(MapsThemeButton *)self _updateTitleColor];
}

- (void)setTintColorProvider:(id)provider
{
  if (self->_tintColorProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    tintColorProvider = self->_tintColorProvider;
    self->_tintColorProvider = v4;

    [(MapsThemeButton *)self _updateTintColor];
  }
}

- (void)_updateImage
{
  imageProvider = [(MapsThemeButton *)self imageProvider];

  if (imageProvider)
  {
    imageProvider2 = [(MapsThemeButton *)self imageProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = imageProvider2[2](imageProvider2, v4);
    [(MapsThemeButton *)self setImage:v5 forState:0];
  }
}

- (void)_updateTitleColor
{
  titleColorProvider = [(MapsThemeButton *)self titleColorProvider];

  if (titleColorProvider)
  {
    titleColorProvider2 = [(MapsThemeButton *)self titleColorProvider];
    v5 = +[MapsTheme sharedTheme];
    v6 = (titleColorProvider2)[2](titleColorProvider2, v5);

    [(MapsThemeButton *)self setTitleColor:v6 forState:0];
    v7 = [(MapsThemeButton *)self attributedTitleForState:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 length];
      v10 = [v8 mutableCopy];
      [v10 removeAttribute:NSForegroundColorAttributeName range:{0, v9}];
      [v10 addAttribute:NSForegroundColorAttributeName value:v6 range:{0, v9}];
      v11 = [v10 copy];
      v12.receiver = self;
      v12.super_class = MapsThemeButton;
      [(MapsThemeButton *)&v12 setAttributedTitle:v11 forState:0];
    }
  }
}

- (void)_updateTintColor
{
  tintColorProvider = [(MapsThemeButton *)self tintColorProvider];

  if (tintColorProvider)
  {
    tintColorProvider2 = [(MapsThemeButton *)self tintColorProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = tintColorProvider2[2](tintColorProvider2, v4);
    [(MapsThemeButton *)self setTintColor:v5];
  }
}

@end