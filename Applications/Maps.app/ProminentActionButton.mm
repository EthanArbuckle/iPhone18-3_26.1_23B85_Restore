@interface ProminentActionButton
+ (id)button;
+ (id)invertedButton;
+ (void)_setAttributesForProminentActionButton:(id)a3 inverted:(BOOL)a4;
- (void)awakeFromNib;
- (void)setSpinnerHidden:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateTheme;
@end

@implementation ProminentActionButton

+ (id)invertedButton
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ProminentActionButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", 1);
  [a1 _setAttributesForProminentActionButton:v3 inverted:1];

  return v3;
}

+ (id)button
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ProminentActionButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", 1);
  [a1 _setAttributesForProminentActionButton:v3 inverted:0];

  return v3;
}

+ (void)_setAttributesForProminentActionButton:(id)a3 inverted:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  [v17 setInverted:v4];
  v5 = [v17 layer];
  [v5 setCornerRadius:8.0];

  [v17 setClipsToBounds:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v17 titleLabel];
  [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10165DAC8];

  if (v4)
  {
    v7 = +[UIColor clearColor];
    [v17 setBackgroundColor:v7];

    v8 = [v17 layer];
    [v8 setBorderWidth:1.0];

    v9 = [v17 tintColor];
    v10 = [v9 CGColor];
    v11 = [v17 layer];
    [v11 setBorderColor:v10];

    [v17 tintColor];
  }

  else
  {
    v12 = [v17 tintColor];
    [v17 setBackgroundColor:v12];

    +[UIColor whiteColor];
  }
  v13 = ;
  [v17 setTitleColor:v13 forState:0];

  [v17 setContentEdgeInsets:{5.0, 15.0, 5.0, 15.0}];
  v14 = [v17 titleLabel];
  [v14 setLineBreakMode:0];

  v15 = [v17 titleLabel];
  [v15 setTextAlignment:1];

  v16 = [v17 titleLabel];
  [v16 setNumberOfLines:0];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = ProminentActionButton;
  [(MapsThemeButton *)&v9 updateTheme];
  v3 = [(ProminentActionButton *)self inverted];
  v4 = [(ProminentActionButton *)self theme];
  v5 = [v4 keyColor];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 CGColor];
    v8 = [(ProminentActionButton *)self layer];
    [v8 setBorderColor:v7];

    v4 = [(ProminentActionButton *)self theme];
    v6 = [v4 keyColor];
    [(ProminentActionButton *)self setTitleColor:v6 forState:0];
  }

  else
  {
    [(ProminentActionButton *)self setBackgroundColor:v5];
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
  v3 = [(ProminentActionButton *)self inverted];
  v4 = [(ProminentActionButton *)self tintColor];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 CGColor];
    v7 = [(ProminentActionButton *)self layer];
    [v7 setBorderColor:v6];

    v5 = [(ProminentActionButton *)self tintColor];
    [(ProminentActionButton *)self setTitleColor:v5 forState:0];
  }

  else
  {
    [(ProminentActionButton *)self setBackgroundColor:v4];
  }
}

- (void)setSpinnerHidden:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
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