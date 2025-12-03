@interface ProminentActionButton
+ (id)button;
+ (id)invertedButton;
+ (void)_setAttributesForProminentActionButton:(id)button inverted:(BOOL)inverted;
- (void)awakeFromNib;
- (void)setSpinnerHidden:(BOOL)hidden;
- (void)tintColorDidChange;
- (void)updateTheme;
@end

@implementation ProminentActionButton

+ (id)invertedButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ProminentActionButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", 1);
  [self _setAttributesForProminentActionButton:v3 inverted:1];

  return v3;
}

+ (id)button
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ProminentActionButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", 1);
  [self _setAttributesForProminentActionButton:v3 inverted:0];

  return v3;
}

+ (void)_setAttributesForProminentActionButton:(id)button inverted:(BOOL)inverted
{
  invertedCopy = inverted;
  buttonCopy = button;
  [buttonCopy setInverted:invertedCopy];
  layer = [buttonCopy layer];
  [layer setCornerRadius:8.0];

  [buttonCopy setClipsToBounds:1];
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [buttonCopy titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DAC8];

  if (invertedCopy)
  {
    v7 = +[UIColor clearColor];
    [buttonCopy setBackgroundColor:v7];

    layer2 = [buttonCopy layer];
    [layer2 setBorderWidth:1.0];

    tintColor = [buttonCopy tintColor];
    cGColor = [tintColor CGColor];
    layer3 = [buttonCopy layer];
    [layer3 setBorderColor:cGColor];

    [buttonCopy tintColor];
  }

  else
  {
    tintColor2 = [buttonCopy tintColor];
    [buttonCopy setBackgroundColor:tintColor2];

    +[UIColor whiteColor];
  }
  v13 = ;
  [buttonCopy setTitleColor:v13 forState:0];

  [buttonCopy setContentEdgeInsets:{5.0, 15.0, 5.0, 15.0}];
  titleLabel2 = [buttonCopy titleLabel];
  [titleLabel2 setLineBreakMode:0];

  titleLabel3 = [buttonCopy titleLabel];
  [titleLabel3 setTextAlignment:1];

  titleLabel4 = [buttonCopy titleLabel];
  [titleLabel4 setNumberOfLines:0];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = ProminentActionButton;
  [(MapsThemeButton *)&v9 updateTheme];
  inverted = [(ProminentActionButton *)self inverted];
  theme = [(ProminentActionButton *)self theme];
  keyColor = [theme keyColor];
  keyColor2 = keyColor;
  if (inverted)
  {
    cGColor = [keyColor CGColor];
    layer = [(ProminentActionButton *)self layer];
    [layer setBorderColor:cGColor];

    theme = [(ProminentActionButton *)self theme];
    keyColor2 = [theme keyColor];
    [(ProminentActionButton *)self setTitleColor:keyColor2 forState:0];
  }

  else
  {
    [(ProminentActionButton *)self setBackgroundColor:keyColor];
  }
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = ProminentActionButton;
  [(ProminentActionButton *)&v3 awakeFromNib];
  [objc_opt_class() _setAttributesForProminentActionButton:self inverted:0];
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = ProminentActionButton;
  [(ProminentActionButton *)&v8 tintColorDidChange];
  inverted = [(ProminentActionButton *)self inverted];
  tintColor = [(ProminentActionButton *)self tintColor];
  tintColor2 = tintColor;
  if (inverted)
  {
    cGColor = [tintColor CGColor];
    layer = [(ProminentActionButton *)self layer];
    [layer setBorderColor:cGColor];

    tintColor2 = [(ProminentActionButton *)self tintColor];
    [(ProminentActionButton *)self setTitleColor:tintColor2 forState:0];
  }

  else
  {
    [(ProminentActionButton *)self setBackgroundColor:tintColor];
  }
}

- (void)setSpinnerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (!self->_spinner)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v5;

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    [(ProminentActionButton *)self addSubview:self->_spinner];
    v7 = [(UIActivityIndicatorView *)self->_spinner _maps_constraintsForCenteringInView:self];
    [NSLayoutConstraint activateConstraints:v7];
  }

  if (hiddenCopy)
  {
    [(ProminentActionButton *)self setEnabled:1];
    if ([(ProminentActionButton *)self inverted])
    {
      [(ProminentActionButton *)self tintColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v10 = ;
    [(ProminentActionButton *)self setTitleColor:v10 forState:0];

    v11 = self->_spinner;

    [(UIActivityIndicatorView *)v11 stopAnimating];
  }

  else
  {
    [(ProminentActionButton *)self setEnabled:0];
    v8 = +[UIColor clearColor];
    [(ProminentActionButton *)self setTitleColor:v8 forState:0];

    v9 = self->_spinner;

    [(UIActivityIndicatorView *)v9 startAnimating];
  }
}

@end