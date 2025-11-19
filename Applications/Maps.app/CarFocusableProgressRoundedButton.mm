@interface CarFocusableProgressRoundedButton
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (void)_insertFillViewIfNecessary;
- (void)_updateColors;
- (void)_updateProgressConstraint;
- (void)didMoveToWindow;
- (void)focusDidChange:(BOOL)a3;
- (void)setProgress:(double)a3;
- (void)setProgressFillColor:(id)a3;
- (void)setProgressFillFocusedColor:(id)a3;
- (void)setProgressionHidden:(BOOL)a3;
@end

@implementation CarFocusableProgressRoundedButton

- (void)_updateProgressConstraint
{
  if (self->_fillView)
  {
    [(UIView *)self->_barView bounds];
    CGRectGetWidth(v14);
    UIRoundToViewScale();
    v4 = v3;
    [(NSLayoutConstraint *)self->_horizontalConstraint constant];
    if (vabdd_f64(v4, v5) > 2.22044605e-16)
    {
      [(NSLayoutConstraint *)self->_horizontalConstraint setConstant:v4];
    }

    v6 = [NSString stringWithFormat:@"%@%.2f", @"FillView.Progress=", *&self->_progress];
    [(UIView *)self->_fillView setAccessibilityIdentifier:v6];

    v7 = [(UIView *)self->_fillView layer];
    [v7 removeAnimationForKey:@"backgroundColor"];

    v8 = [(CarFocusableProgressRoundedButton *)self layer];
    [v8 removeAnimationForKey:@"backgroundColor"];

    v9 = [(CarFocusableProgressRoundedButton *)self titleLabel];
    v10 = [v9 layer];
    [v10 removeAnimationForKey:@"backgroundColor"];

    v12 = [(CarFocusableProgressRoundedButton *)self titleLabel];
    v11 = [v12 layer];
    [v11 removeAnimationForKey:@"contents"];
  }
}

- (void)_updateColors
{
  if ([(CarFocusableProgressRoundedButton *)self isFocused])
  {
    v3 = +[UIColor _carSystemTertiaryColor];
    [(UIView *)self->_barView setBackgroundColor:v3];

    [(CarFocusableProgressRoundedButton *)self progressFillFocusedColor];
  }

  else
  {
    v4 = +[UIColor _carSystemQuaternaryColor];
    [(UIView *)self->_barView setBackgroundColor:v4];

    [(CarFocusableProgressRoundedButton *)self progressFillColor];
  }
  v5 = ;
  [(UIView *)self->_fillView setBackgroundColor:v5];
}

- (void)focusDidChange:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressRoundedButton;
  [(CarFocusableButton *)&v4 focusDidChange:a3];
  [(CarFocusableProgressRoundedButton *)self _updateColors];
  [(CarFocusableProgressRoundedButton *)self _updateProgressConstraint];
}

- (void)setProgressionHidden:(BOOL)a3
{
  if (self->_progressionHidden != a3)
  {
    v4 = a3;
    self->_progressionHidden = a3;
    [(UIView *)self->_fillView setHidden:?];
    [(UIView *)self->_barView setHidden:v4];
    [(CarFocusableProgressRoundedButton *)self setNeedsLayout];

    [(CarFocusableProgressRoundedButton *)self layoutIfNeeded];
  }
}

- (void)setProgressFillFocusedColor:(id)a3
{
  objc_storeStrong(&self->_progressFillFocusedColor, a3);

  [(CarFocusableProgressRoundedButton *)self _updateColors];
}

- (void)setProgressFillColor:(id)a3
{
  objc_storeStrong(&self->_progressFillColor, a3);

  [(CarFocusableProgressRoundedButton *)self _updateColors];
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    v9 = v3;
    v8 = fmin(fmax(a3, 0.0), 1.0);
    if (a3 < 0.0 || a3 > 1.0)
    {
      a3 = v8;
    }

    self->_progress = a3;
    [(CarFocusableProgressRoundedButton *)self _updateProgressConstraint:v4];

    [(CarFocusableProgressRoundedButton *)self layoutIfNeeded];
  }
}

- (void)_insertFillViewIfNecessary
{
  if (!self->_fillView)
  {
    v3 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    barView = self->_barView;
    self->_barView = v7;

    [(UIView *)self->_barView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_barView setUserInteractionEnabled:0];
    v9 = +[UIColor _carSystemQuaternaryColor];
    [(UIView *)self->_barView setBackgroundColor:v9];

    [(UIView *)self->_barView setAccessibilityIdentifier:@"BarView"];
    v10 = [(UIView *)self->_barView layer];
    [v10 setCornerRadius:2.0];

    v11 = [(UIView *)self->_barView layer];
    [v11 setMasksToBounds:1];

    [(UIView *)self->_barView setHidden:self->_progressionHidden];
    [(CarFocusableProgressRoundedButton *)self addSubview:self->_barView];
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    fillView = self->_fillView;
    self->_fillView = v12;

    [(UIView *)self->_fillView setAccessibilityIdentifier:@"FillView"];
    [(UIView *)self->_fillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_fillView setUserInteractionEnabled:0];
    v14 = [(CarFocusableProgressRoundedButton *)self progressFillColor];
    [(UIView *)self->_fillView setBackgroundColor:v14];

    v15 = [(UIView *)self->_fillView layer];
    [v15 setCornerRadius:2.0];

    v16 = [(UIView *)self->_fillView layer];
    [v16 setMasksToBounds:1];

    [(UIView *)self->_fillView setHidden:self->_progressionHidden];
    [(UIView *)self->_barView addSubview:self->_fillView];
    v17 = [(CarFocusableProgressRoundedButton *)self titleLabel];
    [(CarFocusableProgressRoundedButton *)self bringSubviewToFront:v17];

    v18 = [(UIView *)self->_fillView trailingAnchor];
    v19 = [(UIView *)self->_barView leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    horizontalConstraint = self->_horizontalConstraint;
    self->_horizontalConstraint = v20;

    v43 = [(UIView *)self->_barView bottomAnchor];
    v42 = [(CarFocusableProgressRoundedButton *)self bottomAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:-5.0];
    v44[0] = v41;
    v40 = [(UIView *)self->_barView leadingAnchor];
    v39 = [(CarFocusableProgressRoundedButton *)self leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:8.0];
    v44[1] = v38;
    v37 = [(UIView *)self->_barView trailingAnchor];
    v36 = [(CarFocusableProgressRoundedButton *)self trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-8.0];
    v44[2] = v35;
    v34 = [(UIView *)self->_barView heightAnchor];
    v33 = [v34 constraintEqualToConstant:4.0];
    v44[3] = v33;
    v32 = [(UIView *)self->_fillView topAnchor];
    v22 = [(UIView *)self->_barView topAnchor];
    v23 = [v32 constraintEqualToAnchor:v22];
    v44[4] = v23;
    v24 = [(UIView *)self->_fillView bottomAnchor];
    v25 = [(UIView *)self->_barView bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v44[5] = v26;
    v27 = [(UIView *)self->_fillView leadingAnchor];
    v28 = [(UIView *)self->_barView leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v30 = self->_horizontalConstraint;
    v44[6] = v29;
    v44[7] = v30;
    v31 = [NSArray arrayWithObjects:v44 count:8];
    [NSLayoutConstraint activateConstraints:v31];
  }
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CarFocusableProgressRoundedButton;
  [(CarCardRoundedButton *)&v8 titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!self->_progressionHidden)
  {
    v5 = v5 + -4.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CarFocusableProgressRoundedButton;
  [(CarFocusableButton *)&v3 didMoveToWindow];
  [(CarFocusableProgressRoundedButton *)self _insertFillViewIfNecessary];
}

@end