@interface MapsProgressBarButton
- (MapsProgressBarButton)initWithFrame:(CGRect)frame;
- (void)_customInit;
- (void)_insertProgressBarViewIfNecessary;
- (void)_updateProgressConstraints;
- (void)didMoveToWindow;
- (void)setProgressStyle:(int64_t)style;
@end

@implementation MapsProgressBarButton

- (void)setProgressStyle:(int64_t)style
{
  if (self->_progressStyle != style)
  {
    self->_progressStyle = style;
    [(MapsProgressBarButton *)self _updateProgressConstraints];
  }
}

- (void)_updateProgressConstraints
{
  progressStyle = [(MapsProgressBarButton *)self progressStyle];
  if (progressStyle)
  {
    if (progressStyle != 1)
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
  superview = [(MapsProgressBarView *)self->_progressBarView superview];

  if (!superview)
  {
    [(MapsProgressBarButton *)self addSubview:self->_progressBarView];
    titleLabel = [(MapsProgressBarButton *)self titleLabel];
    [(MapsProgressBarButton *)self bringSubviewToFront:titleLabel];

    heightAnchor = [(MapsProgressBarView *)self->_progressBarView heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:0.0];
    progressHeightConstraint = self->_progressHeightConstraint;
    self->_progressHeightConstraint = v6;

    bottomAnchor = [(MapsProgressBarView *)self->_progressBarView bottomAnchor];
    bottomAnchor2 = [(MapsProgressBarButton *)self bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    progressBottomConstraint = self->_progressBottomConstraint;
    self->_progressBottomConstraint = v10;

    [(MapsProgressBarButton *)self _updateProgressConstraints];
    leadingAnchor = [(MapsProgressBarView *)self->_progressBarView leadingAnchor];
    leadingAnchor2 = [(MapsProgressBarButton *)self leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
    v20[0] = v14;
    trailingAnchor = [(MapsProgressBarView *)self->_progressBarView trailingAnchor];
    trailingAnchor2 = [(MapsProgressBarButton *)self trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-22.0];
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

- (MapsProgressBarButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MapsProgressBarButton;
  v3 = [(MapsProgressBarButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarButton *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

@end