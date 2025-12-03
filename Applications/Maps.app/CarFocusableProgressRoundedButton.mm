@interface CarFocusableProgressRoundedButton
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (void)_insertFillViewIfNecessary;
- (void)_updateColors;
- (void)_updateProgressConstraint;
- (void)didMoveToWindow;
- (void)focusDidChange:(BOOL)change;
- (void)setProgress:(double)progress;
- (void)setProgressFillColor:(id)color;
- (void)setProgressFillFocusedColor:(id)color;
- (void)setProgressionHidden:(BOOL)hidden;
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

    layer = [(UIView *)self->_fillView layer];
    [layer removeAnimationForKey:@"backgroundColor"];

    layer2 = [(CarFocusableProgressRoundedButton *)self layer];
    [layer2 removeAnimationForKey:@"backgroundColor"];

    titleLabel = [(CarFocusableProgressRoundedButton *)self titleLabel];
    layer3 = [titleLabel layer];
    [layer3 removeAnimationForKey:@"backgroundColor"];

    titleLabel2 = [(CarFocusableProgressRoundedButton *)self titleLabel];
    layer4 = [titleLabel2 layer];
    [layer4 removeAnimationForKey:@"contents"];
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

- (void)focusDidChange:(BOOL)change
{
  v4.receiver = self;
  v4.super_class = CarFocusableProgressRoundedButton;
  [(CarFocusableButton *)&v4 focusDidChange:change];
  [(CarFocusableProgressRoundedButton *)self _updateColors];
  [(CarFocusableProgressRoundedButton *)self _updateProgressConstraint];
}

- (void)setProgressionHidden:(BOOL)hidden
{
  if (self->_progressionHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_progressionHidden = hidden;
    [(UIView *)self->_fillView setHidden:?];
    [(UIView *)self->_barView setHidden:hiddenCopy];
    [(CarFocusableProgressRoundedButton *)self setNeedsLayout];

    [(CarFocusableProgressRoundedButton *)self layoutIfNeeded];
  }
}

- (void)setProgressFillFocusedColor:(id)color
{
  objc_storeStrong(&self->_progressFillFocusedColor, color);

  [(CarFocusableProgressRoundedButton *)self _updateColors];
}

- (void)setProgressFillColor:(id)color
{
  objc_storeStrong(&self->_progressFillColor, color);

  [(CarFocusableProgressRoundedButton *)self _updateColors];
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    v9 = v3;
    v8 = fmin(fmax(progress, 0.0), 1.0);
    if (progress < 0.0 || progress > 1.0)
    {
      progress = v8;
    }

    self->_progress = progress;
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
    layer = [(UIView *)self->_barView layer];
    [layer setCornerRadius:2.0];

    layer2 = [(UIView *)self->_barView layer];
    [layer2 setMasksToBounds:1];

    [(UIView *)self->_barView setHidden:self->_progressionHidden];
    [(CarFocusableProgressRoundedButton *)self addSubview:self->_barView];
    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    fillView = self->_fillView;
    self->_fillView = v12;

    [(UIView *)self->_fillView setAccessibilityIdentifier:@"FillView"];
    [(UIView *)self->_fillView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_fillView setUserInteractionEnabled:0];
    progressFillColor = [(CarFocusableProgressRoundedButton *)self progressFillColor];
    [(UIView *)self->_fillView setBackgroundColor:progressFillColor];

    layer3 = [(UIView *)self->_fillView layer];
    [layer3 setCornerRadius:2.0];

    layer4 = [(UIView *)self->_fillView layer];
    [layer4 setMasksToBounds:1];

    [(UIView *)self->_fillView setHidden:self->_progressionHidden];
    [(UIView *)self->_barView addSubview:self->_fillView];
    titleLabel = [(CarFocusableProgressRoundedButton *)self titleLabel];
    [(CarFocusableProgressRoundedButton *)self bringSubviewToFront:titleLabel];

    trailingAnchor = [(UIView *)self->_fillView trailingAnchor];
    leadingAnchor = [(UIView *)self->_barView leadingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];
    horizontalConstraint = self->_horizontalConstraint;
    self->_horizontalConstraint = v20;

    bottomAnchor = [(UIView *)self->_barView bottomAnchor];
    bottomAnchor2 = [(CarFocusableProgressRoundedButton *)self bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v44[0] = v41;
    leadingAnchor2 = [(UIView *)self->_barView leadingAnchor];
    leadingAnchor3 = [(CarFocusableProgressRoundedButton *)self leadingAnchor];
    v38 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:8.0];
    v44[1] = v38;
    trailingAnchor2 = [(UIView *)self->_barView trailingAnchor];
    trailingAnchor3 = [(CarFocusableProgressRoundedButton *)self trailingAnchor];
    v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
    v44[2] = v35;
    heightAnchor = [(UIView *)self->_barView heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:4.0];
    v44[3] = v33;
    topAnchor = [(UIView *)self->_fillView topAnchor];
    topAnchor2 = [(UIView *)self->_barView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[4] = v23;
    bottomAnchor3 = [(UIView *)self->_fillView bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_barView bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v44[5] = v26;
    leadingAnchor4 = [(UIView *)self->_fillView leadingAnchor];
    leadingAnchor5 = [(UIView *)self->_barView leadingAnchor];
    v29 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v30 = self->_horizontalConstraint;
    v44[6] = v29;
    v44[7] = v30;
    v31 = [NSArray arrayWithObjects:v44 count:8];
    [NSLayoutConstraint activateConstraints:v31];
  }
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  v8.receiver = self;
  v8.super_class = CarFocusableProgressRoundedButton;
  [(CarCardRoundedButton *)&v8 titleRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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