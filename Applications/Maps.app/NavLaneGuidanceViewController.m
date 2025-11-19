@interface NavLaneGuidanceViewController
- (BOOL)hasLaneGuidance;
- (MUBlurView)backgroundView;
- (NavLaneGuidanceViewController)initWithDelegate:(id)a3 blurGroup:(id)a4;
- (NavLaneGuidanceViewControllerDelegate)delegate;
- (void)_insertBackgroundView;
- (void)_updateLaneGuidanceAnimated:(BOOL)a3;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)pressedLaneGuidance;
- (void)setCornerMask:(unint64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setLayoutProgress:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation NavLaneGuidanceViewController

- (BOOL)hasLaneGuidance
{
  v2 = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  v3 = v2 != 0;

  return v3;
}

- (NavLaneGuidanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCornerRadius:(double)a3
{
  v3 = a3;
  if (vabdd_f64(self->_cornerRadius, a3) > 2.22044605e-16)
  {
    self->_cornerRadius = a3;
    cornerMask = self->_cornerMask;
    if (cornerMask)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0.0;
    }

    if ((cornerMask & 2) != 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0.0;
    }

    if ((cornerMask & 4) != 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0.0;
    }

    if ((cornerMask & 8) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [(NavLaneGuidanceViewController *)self viewIfLoaded];
    v11 = [v10 layer];
    v17 = v8;
    v18 = v8;
    v19 = v9;
    v20 = v9;
    v21 = v7;
    v22 = v7;
    v23 = v6;
    v24 = v6;
    [v11 setCornerRadii:&v17];

    v12 = self->_cornerMask;
    if (v12)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0.0;
    }

    if ((v12 & 2) != 0)
    {
      v14 = v3;
    }

    else
    {
      v14 = 0.0;
    }

    if ((v12 & 4) != 0)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0.0;
    }

    if ((v12 & 8) == 0)
    {
      v3 = 0.0;
    }

    v16 = [(MUBlurView *)self->_backgroundView layer];
    v17 = v15;
    v18 = v15;
    v19 = v3;
    v20 = v3;
    v21 = v14;
    v22 = v14;
    v23 = v13;
    v24 = v13;
    [v16 setCornerRadii:&v17];
  }
}

- (void)setCornerMask:(unint64_t)a3
{
  if (self->_cornerMask != a3)
  {
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v37 = v5;
    v38 = v3;
    v39 = v4;
    v11 = a3;
    self->_cornerMask = a3;
    v13 = 0.0;
    if (a3)
    {
      cornerRadius = self->_cornerRadius;
    }

    else
    {
      cornerRadius = 0.0;
    }

    if ((a3 & 2) != 0)
    {
      v15 = self->_cornerRadius;
    }

    else
    {
      v15 = 0.0;
    }

    if ((a3 & 4) != 0)
    {
      v16 = self->_cornerRadius;
    }

    else
    {
      v16 = 0.0;
    }

    if ((a3 & 8) != 0)
    {
      v17 = self->_cornerRadius;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = [(NavLaneGuidanceViewController *)self viewIfLoaded];
    v19 = [v18 layer];
    v24 = v16;
    v25 = v16;
    v26 = v17;
    v27 = v17;
    v28 = v15;
    v29 = v15;
    v30 = cornerRadius;
    v31 = cornerRadius;
    [v19 setCornerRadii:&v24];

    if (v11)
    {
      v20 = self->_cornerRadius;
    }

    else
    {
      v20 = 0.0;
    }

    if ((v11 & 2) != 0)
    {
      v21 = self->_cornerRadius;
    }

    else
    {
      v21 = 0.0;
    }

    if ((v11 & 4) != 0)
    {
      v22 = self->_cornerRadius;
    }

    else
    {
      v22 = 0.0;
    }

    if ((v11 & 8) != 0)
    {
      v13 = self->_cornerRadius;
    }

    v23 = [(MUBlurView *)self->_backgroundView layer];
    v24 = v22;
    v25 = v22;
    v26 = v13;
    v27 = v13;
    v28 = v21;
    v29 = v21;
    v30 = v20;
    v31 = v20;
    [v23 setCornerRadii:&v24];
  }
}

- (void)_insertBackgroundView
{
  [(MUBlurView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  v4 = [(NavLaneGuidanceViewController *)self view];
  v5 = [(NavLaneGuidanceViewController *)self backgroundView];
  [v4 insertSubview:v5 atIndex:0];

  v10 = [(NavLaneGuidanceViewController *)self backgroundView];
  v6 = [(NavLaneGuidanceViewController *)self view];
  LODWORD(v7) = 1148846080;
  v8 = [v10 _maps_constraintsEqualToEdgesOfView:v6 priority:v7];
  v9 = [v8 allConstraints];
  [NSLayoutConstraint activateConstraints:v9];
}

- (void)_updateLaneGuidanceAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NavLaneGuidanceViewController *)self view];
  v6 = [v5 superview];
  [v6 layoutIfNeeded];

  v7 = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  if (v7)
  {
    v8 = 76.0;
  }

  else
  {
    v8 = 0.0;
  }

  v10[1] = 3221225472;
  v9 = 0.25;
  v10[0] = _NSConcreteStackBlock;
  v10[2] = sub_1008B54D0;
  v10[3] = &unk_101661650;
  if (!v3)
  {
    v9 = 0.0;
  }

  v10[4] = self;
  *&v10[5] = v8;
  [UIView animateWithDuration:117440512 delay:v10 options:0 animations:v9 completion:0.0];
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  [(NavLaneGuidanceViewController *)self setLaneGuidanceInfo:0, a4];

  [(NavLaneGuidanceViewController *)self _updateLaneGuidanceAnimated:1];
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  v6 = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  v7 = v6 == 0;

  v8 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:v5];
  [(NavLaneGuidanceViewController *)self setLaneGuidanceInfo:v8];

  v9 = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  v10 = [v9 lanes];
  v11 = [(NavLaneGuidanceViewController *)self laneGuidanceView];
  [v11 setLanes:v10];

  [(NavLaneGuidanceViewController *)self _updateLaneGuidanceAnimated:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = NavLaneGuidanceViewController;
  v4 = a3;
  [(NavLaneGuidanceViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [(NavLaneGuidanceViewController *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(NavLaneGuidanceViewController *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008B57B4;
    v9[3] = &unk_101661AE0;
    v10 = v8;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:v8 animations:v9];
  }
}

- (void)setLayoutProgress:(double)a3
{
  if (self->_layoutProgress != a3)
  {
    self->_layoutProgress = a3;
    v4 = [(NavLaneGuidanceViewController *)self traitCollection];
    v5 = [v4 isLuminanceReduced];

    if ((v5 & 1) == 0)
    {
      v8 = sub_1000808D8();
      [(NavLaneGuidanceViewController *)self layoutProgress];
      v7 = [v8 colorWithAlphaComponent:v6 * 0.239999995];
      [(MUBlurView *)self->_backgroundView setOverlayColor:v7];
    }
  }
}

- (MUBlurView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    if (_UISolariumEnabled())
    {
      v4 = [[MUBlurView alloc] initGlassBlurWithTintColor:0 glassStyle:GEOConfigGetBOOL()];
      v5 = 0;
    }

    else
    {
      v4 = [[MUBlurView alloc] initWithBlurEffectStyle:19];
      v5 = 2;
    }

    v6 = self->_backgroundView;
    self->_backgroundView = v4;

    [(MUBlurView *)self->_backgroundView setStyle:v5];
    [(MUBlurView *)self->_backgroundView setOverrideUserInterfaceStyle:2];
    v7 = sub_1000808D8();
    [(NavLaneGuidanceViewController *)self layoutProgress];
    v9 = [v7 colorWithAlphaComponent:v8 * 0.239999995];
    [(MUBlurView *)self->_backgroundView setOverlayColor:v9];

    [(MUBlurView *)self->_backgroundView setBlurGroupName:self->_blurGroup];
    v10 = sub_100A5FD30();
    [(MUBlurView *)self->_backgroundView setNonBlurredColor:v10];

    [(MUBlurView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(MUBlurView *)self->_backgroundView layer];
    [v11 setCornerCurve:kCACornerCurveContinuous];

    cornerMask = self->_cornerMask;
    if (cornerMask)
    {
      cornerRadius = self->_cornerRadius;
    }

    else
    {
      cornerRadius = 0.0;
    }

    if ((cornerMask & 2) != 0)
    {
      v14 = self->_cornerRadius;
    }

    else
    {
      v14 = 0.0;
    }

    if ((cornerMask & 4) != 0)
    {
      v15 = self->_cornerRadius;
    }

    else
    {
      v15 = 0.0;
    }

    if ((cornerMask & 8) != 0)
    {
      v16 = self->_cornerRadius;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = [(MUBlurView *)self->_backgroundView layer];
    *v20 = v15;
    *&v20[1] = v15;
    *&v20[2] = v16;
    *&v20[3] = v16;
    *&v20[4] = v14;
    *&v20[5] = v14;
    *&v20[6] = cornerRadius;
    *&v20[7] = cornerRadius;
    [v17 setCornerRadii:v20];

    v18 = [(MUBlurView *)self->_backgroundView layer];
    [v18 setMasksToBounds:1];

    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)pressedLaneGuidance
{
  v2 = [(NavLaneGuidanceViewController *)self delegate];
  [v2 didTapLaneGuidance];
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = NavLaneGuidanceViewController;
  [(NavLaneGuidanceViewController *)&v35 viewDidLoad];
  v3 = [(NavLaneGuidanceViewController *)self view];
  v4 = [v3 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  cornerMask = self->_cornerMask;
  if (cornerMask)
  {
    cornerRadius = self->_cornerRadius;
  }

  else
  {
    cornerRadius = 0.0;
  }

  if ((cornerMask & 2) != 0)
  {
    v7 = self->_cornerRadius;
  }

  else
  {
    v7 = 0.0;
  }

  if ((cornerMask & 4) != 0)
  {
    v8 = self->_cornerRadius;
  }

  else
  {
    v8 = 0.0;
  }

  if ((cornerMask & 8) != 0)
  {
    v9 = self->_cornerRadius;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(NavLaneGuidanceViewController *)self view];
  v11 = [v10 layer];
  *v34 = v8;
  *&v34[1] = v8;
  *&v34[2] = v9;
  *&v34[3] = v9;
  *&v34[4] = v7;
  *&v34[5] = v7;
  *&v34[6] = cornerRadius;
  *&v34[7] = cornerRadius;
  [v11 setCornerRadii:v34];

  v12 = [(NavLaneGuidanceViewController *)self view];
  v13 = [v12 layer];
  [v13 setMasksToBounds:1];

  [(NavLaneGuidanceViewController *)self _insertBackgroundView];
  v14 = [[NavSignLaneGuidanceView alloc] initWithLaneStyle:0];
  laneGuidanceView = self->_laneGuidanceView;
  self->_laneGuidanceView = v14;

  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setEdgeInsets:0.0, 0.0, 0.0, 0.0];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setUserInteractionEnabled:1];
  v16 = self->_laneGuidanceView;
  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"pressedLaneGuidance"];
  [(NavSignLaneGuidanceView *)v16 addGestureRecognizer:v17];

  v18 = [(NavLaneGuidanceViewController *)self view];
  [v18 addSubview:self->_laneGuidanceView];

  v32 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView leadingAnchor];
  v33 = [(NavLaneGuidanceViewController *)self view];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v36[0] = v30;
  v29 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView trailingAnchor];
  v19 = [(NavLaneGuidanceViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v29 constraintEqualToAnchor:v20];
  v36[1] = v21;
  v22 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView bottomAnchor];
  v23 = [(NavLaneGuidanceViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:-8.0];
  v36[2] = v25;
  v26 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView heightAnchor];
  v27 = [v26 constraintEqualToConstant:76.0];
  v36[3] = v27;
  v28 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (NavLaneGuidanceViewController)initWithDelegate:(id)a3 blurGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NavLaneGuidanceViewController;
  v8 = [(NavLaneGuidanceViewController *)&v13 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(NavLaneGuidanceViewController *)v8 setAccessibilityIdentifier:v10];

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_blurGroup, a4);
    v11 = +[MNNavigationService sharedService];
    [v11 registerObserver:v8];
  }

  return v8;
}

@end