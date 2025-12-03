@interface VMRoundButton
- (VMRoundButton)initWithType:(unint64_t)type;
- (void)_updateButtonState;
- (void)configureButtonUsingAudioRoute:(id)route;
- (void)layoutSubviews;
- (void)setActualBackgroundColor:(id)color;
- (void)setActualTintColor:(id)color;
- (void)setButtonType:(unint64_t)type enabled:(BOOL)enabled;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation VMRoundButton

- (VMRoundButton)initWithType:(unint64_t)type
{
  v4 = [(VMRoundButton *)self initWithSize:37.0, 37.0];
  v5 = v4;
  if (v4)
  {
    [(VMRoundButton *)v4 setClipsToBounds:1];
    layer = [(VMRoundButton *)v5 layer];
    [layer setMasksToBounds:1];

    [(VMRoundButton *)v5 bounds];
    v8 = v7 * 0.5;
    layer2 = [(VMRoundButton *)v5 layer];
    [layer2 setCornerRadius:v8];

    [(VMRoundButton *)v5 setAdjustsImageWhenDisabled:0];
    [(VMRoundButton *)v5 setButtonType:type enabled:1];
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
  layer = [(VMRoundButton *)self layer];
  [layer setCornerRadius:v4];
}

- (void)setButtonType:(unint64_t)type enabled:(BOOL)enabled
{
  [(VMRoundButton *)self setEnabled:enabled];
  if (self->_type == type)
  {
    return;
  }

  self->_type = type;
  if (type > 2)
  {
    if (type == 3)
    {
      v6 = +[UIColor systemRedColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailDeleteGlyphImage];
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    v9 = 0;
    if (type == 4)
    {
      v6 = +[UIColor systemRedColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailUndeleteGlyphImage];
      goto LABEL_11;
    }
  }

  else
  {
    if (type == 1)
    {
      v6 = +[UIColor systemLightGrayColor];
      v9 = +[UIColor systemWhiteColor];
      v8 = +[UIImage voicemailAudioRouteGlyphImage];
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    v9 = 0;
    if (type == 2)
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

- (void)configureButtonUsingAudioRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy isReceiver])
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v5 = ;
  if ([routeCopy deviceType])
  {
    +[UIImage routeGlyphForDeviceType:displayStyle:color:](UIImage, "routeGlyphForDeviceType:displayStyle:color:", [routeCopy deviceType], 0, v5);
  }

  else
  {
    +[UIImage voicemailAudioRouteGlyphImage];
  }
  v6 = ;
  if ([routeCopy isReceiver])
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
    v10 = routeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuring audio route button using route: %@", &v9, 0xCu);
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = VMRoundButton;
  [(VMRoundButton *)&v8 setHighlighted:?];
  actualBackgroundColor = [(VMRoundButton *)self actualBackgroundColor];
  v6 = actualBackgroundColor;
  if (highlightedCopy)
  {
    v7 = [actualBackgroundColor colorWithAlphaComponent:0.6];
    [(VMRoundButton *)self setBackgroundColor:v7];
  }

  else
  {
    [(VMRoundButton *)self setBackgroundColor:actualBackgroundColor];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11.receiver = self;
  v11.super_class = VMRoundButton;
  [(VMRoundButton *)&v11 setEnabled:?];
  if (enabledCopy)
  {
    actualBackgroundColor = [(VMRoundButton *)self actualBackgroundColor];
    [(VMRoundButton *)self setBackgroundColor:actualBackgroundColor];

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

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = VMRoundButton;
  [(VMRoundButton *)&v4 setSelected:selected];
  [(VMRoundButton *)self _updateButtonState];
}

- (void)setActualBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_actualBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_actualBackgroundColor, color);
    [(VMRoundButton *)self setBackgroundColor:self->_actualBackgroundColor];
  }
}

- (void)setActualTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_actualTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_actualTintColor, color);
    [(VMRoundButton *)self setTintColor:self->_actualTintColor];
  }
}

- (void)_updateButtonState
{
  type = [(VMRoundButton *)self type];
  if (type - 3 < 2)
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
    if (type - 1 > 1)
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