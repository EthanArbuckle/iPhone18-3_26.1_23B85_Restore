@interface MapsProgressBarView
- (MapsProgressBarView)initWithFrame:(CGRect)a3;
- (void)_customInit;
- (void)_updateFillConstraint;
- (void)_updateFillTintColor;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
- (void)tintColorDidChange;
- (void)updateTheme;
@end

@implementation MapsProgressBarView

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MapsProgressBarView;
  [(MapsProgressBarView *)&v3 tintColorDidChange];
  [(MapsProgressBarView *)self _updateFillTintColor];
}

- (void)_updateFillTintColor
{
  v3 = [(MapsProgressBarView *)self window];

  if (!v3)
  {
    return;
  }

  v4 = [(MapsProgressBarView *)self theme];
  fillStyle = self->_fillStyle;
  switch(fillStyle)
  {
    case 2uLL:
      v8 = v4;
      v6 = [(MapsProgressBarView *)self tintColor];
      goto LABEL_9;
    case 1uLL:
      v8 = v4;
      v6 = [v4 progressBarLightFillTintColor];
      goto LABEL_9;
    case 0uLL:
      v8 = v4;
      v6 = [v4 progressBarDarkFillTintColor];
LABEL_9:
      v7 = v6;
      [(UIView *)self->_fillView setBackgroundColor:v6];

      v4 = v8;
      break;
  }
}

- (void)_updateFillConstraint
{
  if (self->_fillView)
  {
    [(MapsProgressBarView *)self bounds];
    CGRectGetWidth(v8);
    UIRoundToViewScale();
    v4 = v3;
    [(NSLayoutConstraint *)self->_progressFillConstraint constant];
    if (vabdd_f64(v4, v5) > 2.22044605e-16)
    {
      progressFillConstraint = self->_progressFillConstraint;

      [(NSLayoutConstraint *)progressFillConstraint setConstant:v4];
    }
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MapsProgressBarView;
  [(MapsProgressBarView *)&v7 layoutSubviews];
  [(MapsProgressBarView *)self bounds];
  v3 = CGRectGetHeight(v8) * 0.5;
  v4 = [(MapsProgressBarView *)self layer];
  [v4 setCornerRadius:v3];

  [(UIView *)self->_fillView bounds];
  v5 = CGRectGetHeight(v9) * 0.5;
  v6 = [(UIView *)self->_fillView layer];
  [v6 setCornerRadius:v5];

  [(MapsProgressBarView *)self _updateFillConstraint];
}

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    v3 = fmin(fmax(a3, 0.0), 1.0);
    if (a3 < 0.0 || a3 > 1.0)
    {
      a3 = v3;
    }

    self->_progress = a3;
    [(MapsProgressBarView *)self _updateFillConstraint];
  }
}

- (void)updateTheme
{
  v4 = [(MapsProgressBarView *)self theme];
  v3 = [v4 progressBarTrackTintColor];
  [(MapsProgressBarView *)self setBackgroundColor:v3];

  [(MapsProgressBarView *)self _updateFillTintColor];
}

- (void)_customInit
{
  [(MapsProgressBarView *)self setClipsToBounds:1];
  self->_fillStyle = 0;
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  fillView = self->_fillView;
  self->_fillView = v3;

  [(UIView *)self->_fillView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsProgressBarView *)self addSubview:self->_fillView];
  v5 = [(UIView *)self->_fillView trailingAnchor];
  v6 = [(MapsProgressBarView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  progressFillConstraint = self->_progressFillConstraint;
  self->_progressFillConstraint = v7;

  v19 = [(UIView *)self->_fillView topAnchor];
  v9 = [(MapsProgressBarView *)self topAnchor];
  v10 = [v19 constraintEqualToAnchor:v9];
  v20[0] = v10;
  v11 = [(UIView *)self->_fillView bottomAnchor];
  v12 = [(MapsProgressBarView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v20[1] = v13;
  v14 = [(UIView *)self->_fillView leadingAnchor];
  v15 = [(MapsProgressBarView *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v17 = self->_progressFillConstraint;
  v20[2] = v16;
  v20[3] = v17;
  v18 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (MapsProgressBarView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MapsProgressBarView;
  v3 = [(MapsProgressBarView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarView *)v3 _customInit];
    v5 = v4;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [0 setAccessibilityIdentifier:v7];
  }

  return v4;
}

@end