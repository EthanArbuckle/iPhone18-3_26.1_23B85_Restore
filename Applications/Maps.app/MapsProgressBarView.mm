@interface MapsProgressBarView
- (MapsProgressBarView)initWithFrame:(CGRect)frame;
- (void)_customInit;
- (void)_updateFillConstraint;
- (void)_updateFillTintColor;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
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
  window = [(MapsProgressBarView *)self window];

  if (!window)
  {
    return;
  }

  theme = [(MapsProgressBarView *)self theme];
  fillStyle = self->_fillStyle;
  switch(fillStyle)
  {
    case 2uLL:
      v8 = theme;
      tintColor = [(MapsProgressBarView *)self tintColor];
      goto LABEL_9;
    case 1uLL:
      v8 = theme;
      tintColor = [theme progressBarLightFillTintColor];
      goto LABEL_9;
    case 0uLL:
      v8 = theme;
      tintColor = [theme progressBarDarkFillTintColor];
LABEL_9:
      v7 = tintColor;
      [(UIView *)self->_fillView setBackgroundColor:tintColor];

      theme = v8;
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
  layer = [(MapsProgressBarView *)self layer];
  [layer setCornerRadius:v3];

  [(UIView *)self->_fillView bounds];
  v5 = CGRectGetHeight(v9) * 0.5;
  layer2 = [(UIView *)self->_fillView layer];
  [layer2 setCornerRadius:v5];

  [(MapsProgressBarView *)self _updateFillConstraint];
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    v3 = fmin(fmax(progress, 0.0), 1.0);
    if (progress < 0.0 || progress > 1.0)
    {
      progress = v3;
    }

    self->_progress = progress;
    [(MapsProgressBarView *)self _updateFillConstraint];
  }
}

- (void)updateTheme
{
  theme = [(MapsProgressBarView *)self theme];
  progressBarTrackTintColor = [theme progressBarTrackTintColor];
  [(MapsProgressBarView *)self setBackgroundColor:progressBarTrackTintColor];

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
  trailingAnchor = [(UIView *)self->_fillView trailingAnchor];
  leadingAnchor = [(MapsProgressBarView *)self leadingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];
  progressFillConstraint = self->_progressFillConstraint;
  self->_progressFillConstraint = v7;

  topAnchor = [(UIView *)self->_fillView topAnchor];
  topAnchor2 = [(MapsProgressBarView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v10;
  bottomAnchor = [(UIView *)self->_fillView bottomAnchor];
  bottomAnchor2 = [(MapsProgressBarView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[1] = v13;
  leadingAnchor2 = [(UIView *)self->_fillView leadingAnchor];
  leadingAnchor3 = [(MapsProgressBarView *)self leadingAnchor];
  v16 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v17 = self->_progressFillConstraint;
  v20[2] = v16;
  v20[3] = v17;
  v18 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (MapsProgressBarView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MapsProgressBarView;
  v3 = [(MapsProgressBarView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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