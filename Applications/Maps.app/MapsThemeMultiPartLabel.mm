@interface MapsThemeMultiPartLabel
- (void)_updateTextColor;
- (void)didMoveToWindow;
- (void)setTextColorProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MapsThemeMultiPartLabel

- (void)_updateTextColor
{
  v3 = [(MapsThemeMultiPartLabel *)self textColorProvider];
  if (v3)
  {
    v4 = v3;
    v5 = [(MapsThemeMultiPartLabel *)self window];

    if (v5)
    {
      v8 = [(MapsThemeMultiPartLabel *)self textColorProvider];
      v6 = [(MapsThemeMultiPartLabel *)self theme];
      v7 = v8[2](v8, v6);
      [(MapsThemeMultiPartLabel *)self setTextColor:v7];
    }
  }
}

- (void)setTextColorProvider:(id)a3
{
  if (self->_textColorProvider != a3)
  {
    v4 = [a3 copy];
    textColorProvider = self->_textColorProvider;
    self->_textColorProvider = v4;

    [(MapsThemeMultiPartLabel *)self _updateTextColor];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeMultiPartLabel;
  [(MapsThemeMultiPartLabel *)&v4 didMoveToWindow];
  v3 = [(MapsThemeMultiPartLabel *)self window];

  if (v3)
  {
    [(MapsThemeMultiPartLabel *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeMultiPartLabel;
  [(MapsThemeMultiPartLabel *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeMultiPartLabel traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeMultiPartLabel *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeMultiPartLabel *)self updateTheme];
    }
  }
}

@end