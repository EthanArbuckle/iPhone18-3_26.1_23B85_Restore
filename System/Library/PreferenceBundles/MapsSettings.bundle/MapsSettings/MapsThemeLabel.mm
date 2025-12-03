@interface MapsThemeLabel
- (void)_updateAttributedText;
- (void)_updateTextColor;
- (void)didMoveToWindow;
- (void)setAttributedTextProvider:(id)provider;
- (void)setTextColorProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
@end

@implementation MapsThemeLabel

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeLabel;
  [(MapsThemeLabel *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeLabel traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeLabel *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeLabel *)self updateTheme];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeLabel;
  [(MapsThemeLabel *)&v4 didMoveToWindow];
  window = [(MapsThemeLabel *)self window];

  if (window)
  {
    [(MapsThemeLabel *)self updateTheme];
  }
}

- (void)updateTheme
{
  [(MapsThemeLabel *)self _updateAttributedText];

  [(MapsThemeLabel *)self _updateTextColor];
}

- (void)setAttributedTextProvider:(id)provider
{
  if (self->_attributedTextProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    attributedTextProvider = self->_attributedTextProvider;
    self->_attributedTextProvider = v4;

    [(MapsThemeLabel *)self _updateAttributedText];
  }
}

- (void)_updateAttributedText
{
  attributedTextProvider = [(MapsThemeLabel *)self attributedTextProvider];

  if (attributedTextProvider)
  {
    attributedTextProvider2 = [(MapsThemeLabel *)self attributedTextProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = attributedTextProvider2[2](attributedTextProvider2, v4);
    [(MapsThemeLabel *)self setAttributedText:v5];
  }
}

- (void)setTextColorProvider:(id)provider
{
  if (self->_textColorProvider != provider)
  {
    v4 = objc_retainBlock(provider);
    textColorProvider = self->_textColorProvider;
    self->_textColorProvider = v4;

    [(MapsThemeLabel *)self _updateTextColor];
  }
}

- (void)_updateTextColor
{
  textColorProvider = [(MapsThemeLabel *)self textColorProvider];

  if (textColorProvider)
  {
    textColorProvider2 = [(MapsThemeLabel *)self textColorProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = textColorProvider2[2](textColorProvider2, v4);
    [(MapsThemeLabel *)self setTextColor:v5];
  }
}

@end