@interface MapsThemeMultiPartLabel
- (void)_updateTextColor;
- (void)didMoveToWindow;
- (void)setTextColorProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeMultiPartLabel

- (void)_updateTextColor
{
  textColorProvider = [(MapsThemeMultiPartLabel *)self textColorProvider];
  if (textColorProvider)
  {
    v4 = textColorProvider;
    window = [(MapsThemeMultiPartLabel *)self window];

    if (window)
    {
      textColorProvider2 = [(MapsThemeMultiPartLabel *)self textColorProvider];
      theme = [(MapsThemeMultiPartLabel *)self theme];
      v7 = textColorProvider2[2](textColorProvider2, theme);
      [(MapsThemeMultiPartLabel *)self setTextColor:v7];
    }
  }
}

- (void)setTextColorProvider:(id)provider
{
  if (self->_textColorProvider != provider)
  {
    v4 = [provider copy];
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
  window = [(MapsThemeMultiPartLabel *)self window];

  if (window)
  {
    [(MapsThemeMultiPartLabel *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeMultiPartLabel;
  [(MapsThemeMultiPartLabel *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeMultiPartLabel traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeMultiPartLabel *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeMultiPartLabel *)self updateTheme];
    }
  }
}

@end