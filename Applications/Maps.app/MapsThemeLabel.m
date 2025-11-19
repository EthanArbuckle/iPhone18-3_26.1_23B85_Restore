@interface MapsThemeLabel
- (void)_updateAttributedText;
- (void)_updateTextColor;
- (void)didMoveToWindow;
- (void)setAttributedTextProvider:(id)a3;
- (void)setTextColorProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
@end

@implementation MapsThemeLabel

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeLabel;
  [(MapsThemeLabel *)&v4 didMoveToWindow];
  v3 = [(MapsThemeLabel *)self window];

  if (v3)
  {
    [(MapsThemeLabel *)self updateTheme];
  }
}

- (void)updateTheme
{
  [(MapsThemeLabel *)self _updateAttributedText];

  [(MapsThemeLabel *)self _updateTextColor];
}

- (void)_updateAttributedText
{
  v3 = [(MapsThemeLabel *)self attributedTextProvider];

  if (v3)
  {
    v6 = [(MapsThemeLabel *)self attributedTextProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = v6[2](v6, v4);
    [(MapsThemeLabel *)self setAttributedText:v5];
  }
}

- (void)_updateTextColor
{
  v3 = [(MapsThemeLabel *)self textColorProvider];

  if (v3)
  {
    v6 = [(MapsThemeLabel *)self textColorProvider];
    v4 = +[MapsTheme sharedTheme];
    v5 = v6[2](v6, v4);
    [(MapsThemeLabel *)self setTextColor:v5];
  }
}

- (void)setTextColorProvider:(id)a3
{
  if (self->_textColorProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    textColorProvider = self->_textColorProvider;
    self->_textColorProvider = v4;

    [(MapsThemeLabel *)self _updateTextColor];
  }
}

- (void)setAttributedTextProvider:(id)a3
{
  if (self->_attributedTextProvider != a3)
  {
    v4 = objc_retainBlock(a3);
    attributedTextProvider = self->_attributedTextProvider;
    self->_attributedTextProvider = v4;

    [(MapsThemeLabel *)self _updateAttributedText];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsThemeLabel;
  [(MapsThemeLabel *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[MapsThemeLabel traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(MapsThemeLabel *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(MapsThemeLabel *)self updateTheme];
    }
  }
}

@end