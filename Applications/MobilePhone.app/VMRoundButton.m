@interface VMRoundButton
- (VMRoundButton)initWithType:(unint64_t)a3;
- (void)_updateButtonState;
- (void)configureButtonUsingAudioRoute:(id)a3;
- (void)layoutSubviews;
- (void)setActualBackgroundColor:(id)a3;
- (void)setActualTintColor:(id)a3;
- (void)setButtonType:(unint64_t)a3 enabled:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation VMRoundButton

- (VMRoundButton)initWithType:(unint64_t)a3
{
  v4 = [(VMRoundButton *)self initWithSize:37.0, 37.0];
  v5 = v4;
  if (v4)
  {
    [(VMRoundButton *)v4 setClipsToBounds:1];
    v6 = [(VMRoundButton *)v5 layer];
    [v6 setMasksToBounds:1];

    [(VMRoundButton *)v5 bounds];
    v8 = v7 * 0.5;
    v9 = [(VMRoundButton *)v5 layer];
    [v9 setCornerRadius:v8];

    [(VMRoundButton *)v5 setAdjustsImageWhenDisabled:0];
    [(VMRoundButton *)v5 setButtonType:a3 enabled:1];
    LODWORD(v10) = 1148846080;
    [(VMRoundButton *)v5 setLayoutSize:37.0 withContentPriority:37.0, v10];
  }

  return v5;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VMRoundButton;
  [(VMRoundButton *)&v6 layoutSubviews];
  [(VMRoundButton *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(VMRoundButton *)self layer];
  [v5 setCornerRadius:v4];
}

- (void)setButtonType:(unint64_t)a3 enabled:(BOOL)a4
{
  [(VMRoundButton *)self setEnabled:a4];
  if (self->_type == a3)
  {
    return;
  }

  self->_type = a3;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = +[UIColor systemRedColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailDeleteGlyphImage];
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    v9 = 0;
    if (a3 == 4)
    {
      v6 = +[UIColor systemRedColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailUndeleteGlyphImage];
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v6 = +[UIColor systemLightGrayColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailAudioRouteGlyphImage];
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    v9 = 0;
    if (a3 == 2)
    {
      v6 = +[UIColor systemBlueColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailDialRequestGlyphImage];
LABEL_11:
      v7 = v8;
    }
  }

  [(VMRoundButton *)self setActualBackgroundColor:v6];
  [(VMRoundButton *)self setActualTintColor:v9];
  [(VMRoundButton *)self setImage:v7 forState:0];
}

- (void)configureButtonUsingAudioRoute:(id)a3
{
  v4 = a3;
  if ([v4 isReceiver])
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v5 = ;
  if ([v4 deviceType])
  {
    +[UIImage routeGlyphForDeviceType:displayStyle:color:](UIImage, "routeGlyphForDeviceType:displayStyle:color:", [v4 deviceType], 0, v5);
  }

  else
  {
    +[UIImage voicemailAudioRouteGlyphImage];
  }
  v6 = ;
  if ([v4 isReceiver])
  {
    +[UIColor systemLightGrayColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v7 = ;
  [(VMRoundButton *)self setActualBackgroundColor:v7];

  [(VMRoundButton *)self setActualTintColor:v5];
  [(VMRoundButton *)self setImage:v6 forState:0];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuring audio route button using route: %@", &v9, 0xCu);
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = VMRoundButton;
  [(VMRoundButton *)&v8 setHighlighted:?];
  v5 = [(VMRoundButton *)self actualBackgroundColor];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 colorWithAlphaComponent:0.6];
    [(VMRoundButton *)self setBackgroundColor:v7];
  }

  else
  {
    [(VMRoundButton *)self setBackgroundColor:v5];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = VMRoundButton;
  [(VMRoundButton *)&v11 setEnabled:?];
  if (v3)
  {
    v5 = [(VMRoundButton *)self actualBackgroundColor];
    [(VMRoundButton *)self setBackgroundColor:v5];

    [(VMRoundButton *)self actualTintColor];
  }

  else
  {
    v6 = +[UIColor secondaryLabelColor];
    v7 = +[UIColor secondaryLabelColor];
    [v7 alphaComponent];
    v9 = [v6 colorWithAlphaComponent:v8 * 0.5];
    [(VMRoundButton *)self setBackgroundColor:v9];

    [UIColor colorWithWhite:1.0 alpha:0.5];
  }
  v10 = ;
  [(VMRoundButton *)self setTintColor:v10];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VMRoundButton;
  [(VMRoundButton *)&v4 setSelected:a3];
  [(VMRoundButton *)self _updateButtonState];
}

- (void)setActualBackgroundColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_actualBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_actualBackgroundColor, a3);
    [(VMRoundButton *)self setBackgroundColor:self->_actualBackgroundColor];
  }
}

- (void)setActualTintColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_actualTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_actualTintColor, a3);
    [(VMRoundButton *)self setTintColor:self->_actualTintColor];
  }
}

- (void)_updateButtonState
{
  v3 = [(VMRoundButton *)self type];
  if (v3 - 3 < 2)
  {
    if (![(VMRoundButton *)self isSelected])
    {
      v8 = +[UIColor systemLightGrayColor];
      [(VMRoundButton *)self setBackgroundColor:v8];

      v6 = +[UIColor systemRedColor];
      goto LABEL_10;
    }

    v4 = +[UIColor systemRedColor];
  }

  else
  {
    if (v3 - 1 > 1)
    {
      return;
    }

    if (![(VMRoundButton *)self isSelected])
    {
      v7 = +[UIColor systemLightGrayColor];
      [(VMRoundButton *)self setBackgroundColor:v7];

      v6 = +[UIColor systemBlueColor];
      goto LABEL_10;
    }

    v4 = +[UIColor systemBlueColor];
  }

  v5 = v4;
  [(VMRoundButton *)self setBackgroundColor:v4];

  v6 = +[UIColor systemWhiteColor];
LABEL_10:
  v9 = v6;
  [(VMRoundButton *)self setTintColor:v6];
}

@end