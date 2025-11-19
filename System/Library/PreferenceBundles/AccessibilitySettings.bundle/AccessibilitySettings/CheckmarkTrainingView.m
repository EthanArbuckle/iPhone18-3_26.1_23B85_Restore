@interface CheckmarkTrainingView
- (CGSize)intrinsicContentSize;
- (CheckmarkTrainingView)init;
- (id)accessibilityValue;
- (void)_constrainSymbolView;
- (void)_removeSpinner;
- (void)_setUpSymbolView;
- (void)_updateViewWithSpinner;
- (void)_updateViewWithSymbolNamed:(id)a3;
- (void)layoutSubviews;
- (void)setCheckmarkState:(int64_t)a3;
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

- (void)setCheckmarkState:(int64_t)a3
{
  self->_checkmarkState = a3;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v11 = +[UIColor tertiarySystemFillColor];
        v12 = [(CheckmarkTrainingView *)self symbolView];
        [v12 setTintColor:v11];

        v10 = @"circle.fill";
        goto LABEL_22;
      case 1:
        v16 = +[UIColor systemBlueColor];
        v17 = [v16 colorWithAlphaComponent:0.6];
        v18 = [(CheckmarkTrainingView *)self symbolView];
        [v18 setTintColor:v17];

        v10 = @"waveform.circle.fill";
        goto LABEL_22;
      case 2:
        v6 = +[UIColor systemGreenColor];
        v7 = [(CheckmarkTrainingView *)self symbolView];
        [v7 setTintColor:v6];
LABEL_19:

        v10 = @"checkmark.circle.fill";
        goto LABEL_22;
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        v4 = +[UIColor clearColor];
        v5 = [(CheckmarkTrainingView *)self symbolView];
        [v5 setTintColor:v4];

        [(CheckmarkTrainingView *)self _updateViewWithSpinner];
        return;
      }

      v6 = +[UIColor systemBlueColor];
      v7 = [v6 colorWithAlphaComponent:0.6];
      v13 = [(CheckmarkTrainingView *)self symbolView];
      [v13 setTintColor:v7];

      goto LABEL_19;
    }

    if (a3 == 5)
    {
      v14 = +[UIColor systemOrangeColor];
      v15 = [(CheckmarkTrainingView *)self symbolView];
      [v15 setTintColor:v14];

      v10 = @"questionmark.circle.fill";
      goto LABEL_22;
    }

    if (a3 == 6)
    {
      v8 = +[UIColor systemRedColor];
      v9 = [(CheckmarkTrainingView *)self symbolView];
      [v9 setTintColor:v8];

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

  v4 = [(CheckmarkTrainingView *)self spinner];
  [(CheckmarkTrainingView *)self addSubview:v4];

  v5 = [(CheckmarkTrainingView *)self spinner];
  [v5 startAnimating];
}

- (void)_removeSpinner
{
  v3 = [(CheckmarkTrainingView *)self spinner];

  if (v3)
  {
    v4 = [(CheckmarkTrainingView *)self spinner];
    [v4 stopAnimating];

    v5 = [(CheckmarkTrainingView *)self spinner];
    [v5 removeFromSuperview];
  }
}

- (void)_updateViewWithSymbolNamed:(id)a3
{
  v4 = a3;
  [(CheckmarkTrainingView *)self _removeSpinner];
  v5 = [UIImage systemImageNamed:v4];

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:35.0];
  v9 = [v5 imageWithConfiguration:v6];

  v7 = [(CheckmarkTrainingView *)self symbolView];
  [v7 setImage:v9];

  v8 = [(CheckmarkTrainingView *)self symbolView];
  [v8 setNeedsDisplay];
}

- (void)_setUpSymbolView
{
  v3 = [(CheckmarkTrainingView *)self symbolView];
  [v3 setContentMode:2];

  v4 = [(CheckmarkTrainingView *)self symbolView];
  [(CheckmarkTrainingView *)self addSubview:v4];
}

- (void)_constrainSymbolView
{
  v3 = [(CheckmarkTrainingView *)self symbolView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CheckmarkTrainingView *)self symbolView];
  v5 = [v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:35.0];
  [v6 setActive:1];

  v7 = [(CheckmarkTrainingView *)self symbolView];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:35.0];
  [v9 setActive:1];

  v10 = [(CheckmarkTrainingView *)self symbolView];
  v11 = [v10 centerXAnchor];
  v12 = [(CheckmarkTrainingView *)self centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v17 = [(CheckmarkTrainingView *)self symbolView];
  v14 = [v17 centerYAnchor];
  v15 = [(CheckmarkTrainingView *)self centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
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