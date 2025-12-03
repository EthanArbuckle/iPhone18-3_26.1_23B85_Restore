@interface CheckmarkTrainingView
- (CGSize)intrinsicContentSize;
- (CheckmarkTrainingView)init;
- (id)accessibilityValue;
- (void)_constrainSymbolView;
- (void)_removeSpinner;
- (void)_setUpSymbolView;
- (void)_updateViewWithSpinner;
- (void)_updateViewWithSymbolNamed:(id)named;
- (void)layoutSubviews;
- (void)setCheckmarkState:(int64_t)state;
@end

@implementation CheckmarkTrainingView

- (CheckmarkTrainingView)init
{
  v5.receiver = self;
  v5.super_class = CheckmarkTrainingView;
  v2 = [(CheckmarkTrainingView *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIImageView);
    [(CheckmarkTrainingView *)v2 setSymbolView:v3];

    [(CheckmarkTrainingView *)v2 setCheckmarkState:0];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CheckmarkTrainingView;
  [(CheckmarkTrainingView *)&v3 layoutSubviews];
  [(CheckmarkTrainingView *)self _setUpSymbolView];
  [(CheckmarkTrainingView *)self _constrainSymbolView];
}

- (CGSize)intrinsicContentSize
{
  v2 = 35.0;
  v3 = 35.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setCheckmarkState:(int64_t)state
{
  self->_checkmarkState = state;
  if (state <= 2)
  {
    switch(state)
    {
      case 0:
        v11 = +[UIColor tertiarySystemFillColor];
        symbolView = [(CheckmarkTrainingView *)self symbolView];
        [symbolView setTintColor:v11];

        v10 = @"circle.fill";
        goto LABEL_22;
      case 1:
        v16 = +[UIColor systemBlueColor];
        v17 = [v16 colorWithAlphaComponent:0.6];
        symbolView2 = [(CheckmarkTrainingView *)self symbolView];
        [symbolView2 setTintColor:v17];

        v10 = @"waveform.circle.fill";
        goto LABEL_22;
      case 2:
        v6 = +[UIColor systemGreenColor];
        symbolView3 = [(CheckmarkTrainingView *)self symbolView];
        [symbolView3 setTintColor:v6];
LABEL_19:

        v10 = @"checkmark.circle.fill";
        goto LABEL_22;
    }
  }

  else
  {
    if (state <= 4)
    {
      if (state != 3)
      {
        v4 = +[UIColor clearColor];
        symbolView4 = [(CheckmarkTrainingView *)self symbolView];
        [symbolView4 setTintColor:v4];

        [(CheckmarkTrainingView *)self _updateViewWithSpinner];
        return;
      }

      v6 = +[UIColor systemBlueColor];
      symbolView3 = [v6 colorWithAlphaComponent:0.6];
      symbolView5 = [(CheckmarkTrainingView *)self symbolView];
      [symbolView5 setTintColor:symbolView3];

      goto LABEL_19;
    }

    if (state == 5)
    {
      v14 = +[UIColor systemOrangeColor];
      symbolView6 = [(CheckmarkTrainingView *)self symbolView];
      [symbolView6 setTintColor:v14];

      v10 = @"questionmark.circle.fill";
      goto LABEL_22;
    }

    if (state == 6)
    {
      v8 = +[UIColor systemRedColor];
      symbolView7 = [(CheckmarkTrainingView *)self symbolView];
      [symbolView7 setTintColor:v8];

      v10 = @"exclamationmark.circle.fill";
LABEL_22:

      [(CheckmarkTrainingView *)self _updateViewWithSymbolNamed:v10];
      return;
    }
  }

  v19 = +[UIColor tertiarySystemFillColor];
  [(CheckmarkTrainingView *)self setBackgroundColor:v19];
}

- (void)_updateViewWithSpinner
{
  v3 = [[UIActivityIndicatorView alloc] initWithFrame:{0.0, 0.0, 35.0, 35.0}];
  [(CheckmarkTrainingView *)self setSpinner:v3];

  spinner = [(CheckmarkTrainingView *)self spinner];
  [(CheckmarkTrainingView *)self addSubview:spinner];

  spinner2 = [(CheckmarkTrainingView *)self spinner];
  [spinner2 startAnimating];
}

- (void)_removeSpinner
{
  spinner = [(CheckmarkTrainingView *)self spinner];

  if (spinner)
  {
    spinner2 = [(CheckmarkTrainingView *)self spinner];
    [spinner2 stopAnimating];

    spinner3 = [(CheckmarkTrainingView *)self spinner];
    [spinner3 removeFromSuperview];
  }
}

- (void)_updateViewWithSymbolNamed:(id)named
{
  namedCopy = named;
  [(CheckmarkTrainingView *)self _removeSpinner];
  v5 = [UIImage systemImageNamed:namedCopy];

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:35.0];
  v9 = [v5 imageWithConfiguration:v6];

  symbolView = [(CheckmarkTrainingView *)self symbolView];
  [symbolView setImage:v9];

  symbolView2 = [(CheckmarkTrainingView *)self symbolView];
  [symbolView2 setNeedsDisplay];
}

- (void)_setUpSymbolView
{
  symbolView = [(CheckmarkTrainingView *)self symbolView];
  [symbolView setContentMode:2];

  symbolView2 = [(CheckmarkTrainingView *)self symbolView];
  [(CheckmarkTrainingView *)self addSubview:symbolView2];
}

- (void)_constrainSymbolView
{
  symbolView = [(CheckmarkTrainingView *)self symbolView];
  [symbolView setTranslatesAutoresizingMaskIntoConstraints:0];

  symbolView2 = [(CheckmarkTrainingView *)self symbolView];
  widthAnchor = [symbolView2 widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:35.0];
  [v6 setActive:1];

  symbolView3 = [(CheckmarkTrainingView *)self symbolView];
  heightAnchor = [symbolView3 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:35.0];
  [v9 setActive:1];

  symbolView4 = [(CheckmarkTrainingView *)self symbolView];
  centerXAnchor = [symbolView4 centerXAnchor];
  centerXAnchor2 = [(CheckmarkTrainingView *)self centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v13 setActive:1];

  symbolView5 = [(CheckmarkTrainingView *)self symbolView];
  centerYAnchor = [symbolView5 centerYAnchor];
  centerYAnchor2 = [(CheckmarkTrainingView *)self centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v16 setActive:1];
}

- (id)accessibilityValue
{
  v2 = [(CheckmarkTrainingView *)self checkmarkState]- 1;
  if (v2 > 5)
  {
    v3 = @"INCOMPLETE";
  }

  else
  {
    v3 = off_259280[v2];
  }

  v4 = settingsLocString(v3, @"SoundDetection");

  return v4;
}

@end