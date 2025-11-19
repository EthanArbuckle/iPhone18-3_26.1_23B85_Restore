@interface NavSignFooterView
- (NavSignFooterView)initWithFrame:(CGRect)a3 action:(id)a4;
- (double)currentHeight;
- (double)maximumHeight;
- (double)minimumHeight;
- (void)_updateGrabberPosition;
- (void)setLayoutProgress:(double)a3;
- (void)setShouldShowEndButton:(BOOL)a3;
- (void)setShowingSecondaryManeuver:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NavSignFooterView

- (double)minimumHeight
{
  v2 = [(NavSignFooterView *)self showingSecondaryManeuver];
  result = 80.0;
  if (!v2)
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

  v4 = [(NavSignFooterView *)self shouldShowEndButton];
  v5 = 32.0;
  if (!v4)
  {
    v5 = 16.0;
  }

  return v5 + v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = NavSignFooterView;
  v4 = a3;
  [(NavSignFooterView *)&v10 traitCollectionDidChange:v4];
  v5 = [(NavSignFooterView *)self traitCollection:v10.receiver];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(NavSignFooterView *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9 = 0.300000012;
    if (!v8)
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

- (void)setShowingSecondaryManeuver:(BOOL)a3
{
  if (self->_showingSecondaryManeuver != a3)
  {
    self->_showingSecondaryManeuver = a3;
    [(NavSignFooterView *)self _updateGrabberPosition];
  }
}

- (void)setShouldShowEndButton:(BOOL)a3
{
  if (self->_shouldShowEndButton != a3)
  {
    self->_shouldShowEndButton = a3;
    v3 = 0.0;
    if (a3)
    {
      v3 = 1.0;
    }

    [(UIView *)self->_endButton setAlpha:v3];
  }
}

- (void)setLayoutProgress:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  if (vabdd_f64(self->_layoutProgress, v4) > 2.22044605e-16)
  {
    self->_layoutProgress = v4;
    [(MUBendableGrabberView *)self->_grabber setLayoutProgress:?];

    [(NavSignFooterView *)self _updateGrabberPosition];
  }
}

- (NavSignFooterView)initWithFrame:(CGRect)a3 action:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v53.receiver = self;
  v53.super_class = NavSignFooterView;
  v10 = [(NavSignFooterView *)&v53 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(NavSignFooterView *)v10 setAccessibilityIdentifier:v12];

    [(NavSignFooterView *)v10 setClipsToBounds:1];
    v13 = [(NavSignFooterView *)v10 layer];
    [v13 setMasksToBounds:1];

    v14 = objc_opt_new();
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setUserInteractionEnabled:0];
    [v14 setOverrideUserInterfaceStyle:2];
    [(NavSignFooterView *)v10 addSubview:v14];
    grabber = v10->_grabber;
    v10->_grabber = v14;
    v16 = v14;

    v17 = objc_opt_new();
    contentAreaGuide = v10->_contentAreaGuide;
    v10->_contentAreaGuide = v17;

    [(NavSignFooterView *)v10 addLayoutGuide:v10->_contentAreaGuide];
    v19 = [[_TtC4Maps13NavTrayButton alloc] initWithStyle:0 action:v9];
    endButton = v10->_endButton;
    v10->_endButton = &v19->super;

    [(UIView *)v10->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_endButton setAlpha:0.0];
    [(UIView *)v10->_endButton setAccessibilityIdentifier:@"EndButton"];
    [(NavSignFooterView *)v10 addSubview:v10->_endButton];
    v42 = v16;
    v21 = [v16 topAnchor];
    v22 = [(NavSignFooterView *)v10 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v52 = v9;
    grabberTopConstraint = v10->_grabberTopConstraint;
    v10->_grabberTopConstraint = v23;

    [(NavSignFooterView *)v10 _updateGrabberPosition];
    v51 = [v16 centerXAnchor];
    v50 = [(NavSignFooterView *)v10 centerXAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v54[0] = v49;
    v54[1] = v10->_grabberTopConstraint;
    v48 = [(UILayoutGuide *)v10->_contentAreaGuide leadingAnchor];
    v47 = [(NavSignFooterView *)v10 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v54[2] = v46;
    v45 = [(UILayoutGuide *)v10->_contentAreaGuide trailingAnchor];
    v44 = [(NavSignFooterView *)v10 trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v54[3] = v43;
    v41 = [(UILayoutGuide *)v10->_contentAreaGuide topAnchor];
    v40 = [(NavSignFooterView *)v10 topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
    v54[4] = v39;
    v38 = [(UILayoutGuide *)v10->_contentAreaGuide bottomAnchor];
    v37 = [(NavSignFooterView *)v10 bottomAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:-16.0];
    v54[5] = v36;
    v35 = [(UIView *)v10->_endButton leadingAnchor];
    v25 = [(NavSignFooterView *)v10 leadingAnchor];
    v26 = [v35 constraintEqualToAnchor:v25 constant:16.0];
    v54[6] = v26;
    v27 = [(UIView *)v10->_endButton trailingAnchor];
    v28 = [(NavSignFooterView *)v10 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-16.0];
    v54[7] = v29;
    v30 = [(UIView *)v10->_endButton centerYAnchor];
    v31 = [(UILayoutGuide *)v10->_contentAreaGuide centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v54[8] = v32;
    v33 = [NSArray arrayWithObjects:v54 count:9];
    [NSLayoutConstraint activateConstraints:v33];

    v9 = v52;
  }

  return v10;
}

@end