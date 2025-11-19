@interface MapsProgressBarButton
- (MapsProgressBarButton)initWithFrame:(CGRect)a3;
- (void)_customInit;
- (void)_insertProgressBarViewIfNecessary;
- (void)_updateProgressConstraints;
- (void)didMoveToWindow;
- (void)setProgressStyle:(int64_t)a3;
@end

@implementation MapsProgressBarButton

- (void)setProgressStyle:(int64_t)a3
{
  if (self->_progressStyle != a3)
  {
    self->_progressStyle = a3;
    [(MapsProgressBarButton *)self _updateProgressConstraints];
  }
}

- (void)_updateProgressConstraints
{
  v3 = [(MapsProgressBarButton *)self progressStyle];
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = -8.0;
    v5 = 4.0;
  }

  else
  {
    v4 = -4.0;
    v5 = 8.0;
  }

  [(NSLayoutConstraint *)self->_progressHeightConstraint setConstant:v5];
  progressBottomConstraint = self->_progressBottomConstraint;

  [(NSLayoutConstraint *)progressBottomConstraint setConstant:v4];
}

- (void)_insertProgressBarViewIfNecessary
{
  v3 = [(MapsProgressBarView *)self->_progressBarView superview];

  if (!v3)
  {
    [(MapsProgressBarButton *)self addSubview:self->_progressBarView];
    v4 = [(MapsProgressBarButton *)self titleLabel];
    [(MapsProgressBarButton *)self bringSubviewToFront:v4];

    v5 = [(MapsProgressBarView *)self->_progressBarView heightAnchor];
    v6 = [v5 constraintEqualToConstant:0.0];
    progressHeightConstraint = self->_progressHeightConstraint;
    self->_progressHeightConstraint = v6;

    v8 = [(MapsProgressBarView *)self->_progressBarView bottomAnchor];
    v9 = [(MapsProgressBarButton *)self bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];
    progressBottomConstraint = self->_progressBottomConstraint;
    self->_progressBottomConstraint = v10;

    [(MapsProgressBarButton *)self _updateProgressConstraints];
    v12 = [(MapsProgressBarView *)self->_progressBarView leadingAnchor];
    v13 = [(MapsProgressBarButton *)self leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:22.0];
    v20[0] = v14;
    v15 = [(MapsProgressBarView *)self->_progressBarView trailingAnchor];
    v16 = [(MapsProgressBarButton *)self trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-22.0];
    v18 = self->_progressBottomConstraint;
    v20[1] = v17;
    v20[2] = v18;
    v20[3] = self->_progressHeightConstraint;
    v19 = [NSArray arrayWithObjects:v20 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MapsProgressBarButton;
  [(MapsThemeButton *)&v3 didMoveToWindow];
  [(MapsProgressBarButton *)self _insertProgressBarViewIfNecessary];
}

- (void)_customInit
{
  v3 = [[MapsProgressBarView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  progressBarView = self->_progressBarView;
  self->_progressBarView = v3;

  [(MapsProgressBarView *)self->_progressBarView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsProgressBarView *)self->_progressBarView setUserInteractionEnabled:0];
  v5 = self->_progressBarView;

  [(MapsProgressBarView *)v5 setHidden:1];
}

- (MapsProgressBarButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MapsProgressBarButton;
  v3 = [(MapsProgressBarButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarButton *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

@end