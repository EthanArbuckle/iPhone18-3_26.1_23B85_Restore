@interface NavSignFooterView
- (NavSignFooterView)initWithFrame:(CGRect)frame action:(id)action;
- (double)currentHeight;
- (double)maximumHeight;
- (double)minimumHeight;
- (void)_updateGrabberPosition;
- (void)setLayoutProgress:(double)progress;
- (void)setShouldShowEndButton:(BOOL)button;
- (void)setShowingSecondaryManeuver:(BOOL)maneuver;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NavSignFooterView

- (double)minimumHeight
{
  showingSecondaryManeuver = [(NavSignFooterView *)self showingSecondaryManeuver];
  result = 80.0;
  if (!showingSecondaryManeuver)
  {
    return 24.0;
  }

  return result;
}

- (double)currentHeight
{
  [(NavSignFooterView *)self minimumHeight];
  v4 = v3;
  [(NavSignFooterView *)self layoutProgress];
  v6 = v4 - v5 * v4;
  [(NavSignFooterView *)self maximumHeight];
  v8 = v7;
  [(NavSignFooterView *)self layoutProgress];
  return v6 + v9 * v8;
}

- (double)maximumHeight
{
  if ([(NavSignFooterView *)self shouldShowEndButton])
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 48.0;
  }

  shouldShowEndButton = [(NavSignFooterView *)self shouldShowEndButton];
  v5 = 32.0;
  if (!shouldShowEndButton)
  {
    v5 = 16.0;
  }

  return v5 + v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = NavSignFooterView;
  changeCopy = change;
  [(NavSignFooterView *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(NavSignFooterView *)self traitCollection:v10.receiver];
  v6 = sub_100017FE8(changeCopy, v5);

  if (v6)
  {
    traitCollection = [(NavSignFooterView *)self traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    v9 = 0.300000012;
    if (!isLuminanceReduced)
    {
      v9 = 1.0;
    }

    [(MUBendableGrabberView *)self->_grabber setAlpha:v9];
  }
}

- (void)_updateGrabberPosition
{
  if (qword_10195DC30 != -1)
  {
    dispatch_once(&qword_10195DC30, &stru_10162D248);
  }

  [(NavSignFooterView *)self minimumHeight];
  v4 = v3 + -8.0 - MUBendableGrabberViewDefaultHeight;
  [(NavSignFooterView *)self maximumHeight];
  v6 = v5 - *&qword_10195DC28;
  [(NavSignFooterView *)self layoutProgress];
  v8 = 1.0 - v7;
  [(NavSignFooterView *)self layoutProgress];
  v10 = v6 * (0.5 * v9) + v8 * v4;
  grabberTopConstraint = self->_grabberTopConstraint;

  [(NSLayoutConstraint *)grabberTopConstraint setConstant:v10];
}

- (void)setShowingSecondaryManeuver:(BOOL)maneuver
{
  if (self->_showingSecondaryManeuver != maneuver)
  {
    self->_showingSecondaryManeuver = maneuver;
    [(NavSignFooterView *)self _updateGrabberPosition];
  }
}

- (void)setShouldShowEndButton:(BOOL)button
{
  if (self->_shouldShowEndButton != button)
  {
    self->_shouldShowEndButton = button;
    v3 = 0.0;
    if (button)
    {
      v3 = 1.0;
    }

    [(UIView *)self->_endButton setAlpha:v3];
  }
}

- (void)setLayoutProgress:(double)progress
{
  v4 = fmin(fmax(progress, 0.0), 1.0);
  if (vabdd_f64(self->_layoutProgress, v4) > 2.22044605e-16)
  {
    self->_layoutProgress = v4;
    [(MUBendableGrabberView *)self->_grabber setLayoutProgress:?];

    [(NavSignFooterView *)self _updateGrabberPosition];
  }
}

- (NavSignFooterView)initWithFrame:(CGRect)frame action:(id)action
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  v53.receiver = self;
  v53.super_class = NavSignFooterView;
  height = [(NavSignFooterView *)&v53 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(NavSignFooterView *)height setAccessibilityIdentifier:v12];

    [(NavSignFooterView *)height setClipsToBounds:1];
    layer = [(NavSignFooterView *)height layer];
    [layer setMasksToBounds:1];

    v14 = objc_opt_new();
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setUserInteractionEnabled:0];
    [v14 setOverrideUserInterfaceStyle:2];
    [(NavSignFooterView *)height addSubview:v14];
    grabber = height->_grabber;
    height->_grabber = v14;
    v16 = v14;

    v17 = objc_opt_new();
    contentAreaGuide = height->_contentAreaGuide;
    height->_contentAreaGuide = v17;

    [(NavSignFooterView *)height addLayoutGuide:height->_contentAreaGuide];
    v19 = [[_TtC4Maps13NavTrayButton alloc] initWithStyle:0 action:actionCopy];
    endButton = height->_endButton;
    height->_endButton = &v19->super;

    [(UIView *)height->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_endButton setAlpha:0.0];
    [(UIView *)height->_endButton setAccessibilityIdentifier:@"EndButton"];
    [(NavSignFooterView *)height addSubview:height->_endButton];
    v42 = v16;
    topAnchor = [v16 topAnchor];
    topAnchor2 = [(NavSignFooterView *)height topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52 = actionCopy;
    grabberTopConstraint = height->_grabberTopConstraint;
    height->_grabberTopConstraint = v23;

    [(NavSignFooterView *)height _updateGrabberPosition];
    centerXAnchor = [v16 centerXAnchor];
    centerXAnchor2 = [(NavSignFooterView *)height centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v54[0] = v49;
    v54[1] = height->_grabberTopConstraint;
    leadingAnchor = [(UILayoutGuide *)height->_contentAreaGuide leadingAnchor];
    leadingAnchor2 = [(NavSignFooterView *)height leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v54[2] = v46;
    trailingAnchor = [(UILayoutGuide *)height->_contentAreaGuide trailingAnchor];
    trailingAnchor2 = [(NavSignFooterView *)height trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v54[3] = v43;
    topAnchor3 = [(UILayoutGuide *)height->_contentAreaGuide topAnchor];
    topAnchor4 = [(NavSignFooterView *)height topAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
    v54[4] = v39;
    bottomAnchor = [(UILayoutGuide *)height->_contentAreaGuide bottomAnchor];
    bottomAnchor2 = [(NavSignFooterView *)height bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v54[5] = v36;
    leadingAnchor3 = [(UIView *)height->_endButton leadingAnchor];
    leadingAnchor4 = [(NavSignFooterView *)height leadingAnchor];
    v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v54[6] = v26;
    trailingAnchor3 = [(UIView *)height->_endButton trailingAnchor];
    trailingAnchor4 = [(NavSignFooterView *)height trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v54[7] = v29;
    centerYAnchor = [(UIView *)height->_endButton centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)height->_contentAreaGuide centerYAnchor];
    v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v54[8] = v32;
    v33 = [NSArray arrayWithObjects:v54 count:9];
    [NSLayoutConstraint activateConstraints:v33];

    actionCopy = v52;
  }

  return height;
}

@end