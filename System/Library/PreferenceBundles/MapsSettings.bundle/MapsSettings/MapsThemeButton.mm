@interface MapsThemeButton
- (void)_updateImage;
- (void)_updateTintColor;
- (void)_updateTitleColor;
- (void)didMoveToWindow;
- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4;
- (void)setImageProvider:(id)a3;
- (void)setTintColorProvider:(id)a3;
- (void)setTitleColorProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
@end

@implementation MapsThemeButton

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeButton;
  [(MapsThemeButton *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeButton traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeButton *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
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
  v3 = [(MapsThemeButton *)self window];

  if (v3)
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
  v3 = [v4 disabledTitleColor];
  [(MapsThemeButton *)self setTitleColor:v3 forState:2];
}

- (void)setImageProvider:(id)a3
{
  if (self->_imageProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    imageProvider = self->_imageProvider;
    self->_imageProvider = v4;

    [(MapsThemeButton *)self _updateImage];
  }
}

- (void)setTitleColorProvider:(id)a3
{
  if (self->_titleColorProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    titleColorProvider = self->_titleColorProvider;
    self->_titleColorProvider = v4;

    [(MapsThemeButton *)self _updateTitleColor];
  }
}

- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MapsThemeButton;
  [(MapsThemeButton *)&v5 setAttributedTitle:a3 forState:a4];
  [(MapsThemeButton *)self _updateTitleColor];
}

- (void)setTintColorProvider:(id)a3
{
  if (self->_tintColorProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    tintColorProvider = self->_tintColorProvider;
    self->_tintColorProvider = v4;

    [(MapsThemeButton *)self _updateTintColor];
  }
}

- (void)_updateImage
{
  v3 = [(MapsThemeButton *)self imageProvider];

  if (v3)
  {
    v6 = [(MapsThemeButton *)self imageProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = v6[2](v6, v4);
    [(MapsThemeButton *)self setImage:v5 forState:0];
  }
}

- (void)_updateTitleColor
{
  v3 = [(MapsThemeButton *)self titleColorProvider];

  if (v3)
  {
    v4 = [(MapsThemeButton *)self titleColorProvider];
    v5 = +[MapsTheme sharedTheme];
    v6 = (v4)[2](v4, v5);

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
  v3 = [(MapsThemeButton *)self tintColorProvider];

  if (v3)
  {
    v6 = [(MapsThemeButton *)self tintColorProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = v6[2](v6, v4);
    [(MapsThemeButton *)self setTintColor:v5];
  }
}

@end