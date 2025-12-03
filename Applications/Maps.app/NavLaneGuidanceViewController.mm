@interface NavLaneGuidanceViewController
- (BOOL)hasLaneGuidance;
- (MUBlurView)backgroundView;
- (NavLaneGuidanceViewController)initWithDelegate:(id)delegate blurGroup:(id)group;
- (NavLaneGuidanceViewControllerDelegate)delegate;
- (void)_insertBackgroundView;
- (void)_updateLaneGuidanceAnimated:(BOOL)animated;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)pressedLaneGuidance;
- (void)setCornerMask:(unint64_t)mask;
- (void)setCornerRadius:(double)radius;
- (void)setLayoutProgress:(double)progress;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation NavLaneGuidanceViewController

- (BOOL)hasLaneGuidance
{
  laneGuidanceInfo = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  v3 = laneGuidanceInfo != 0;

  return v3;
}

- (NavLaneGuidanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (vabdd_f64(self->_cornerRadius, radius) > 2.22044605e-16)
  {
    self->_cornerRadius = radius;
    cornerMask = self->_cornerMask;
    if (cornerMask)
    {
      radiusCopy2 = radius;
    }

    else
    {
      radiusCopy2 = 0.0;
    }

    if ((cornerMask & 2) != 0)
    {
      radiusCopy3 = radius;
    }

    else
    {
      radiusCopy3 = 0.0;
    }

    if ((cornerMask & 4) != 0)
    {
      radiusCopy4 = radius;
    }

    else
    {
      radiusCopy4 = 0.0;
    }

    if ((cornerMask & 8) != 0)
    {
      radiusCopy5 = radius;
    }

    else
    {
      radiusCopy5 = 0.0;
    }

    viewIfLoaded = [(NavLaneGuidanceViewController *)self viewIfLoaded];
    layer = [viewIfLoaded layer];
    v17 = radiusCopy4;
    v18 = radiusCopy4;
    v19 = radiusCopy5;
    v20 = radiusCopy5;
    v21 = radiusCopy3;
    v22 = radiusCopy3;
    v23 = radiusCopy2;
    v24 = radiusCopy2;
    [layer setCornerRadii:&v17];

    v12 = self->_cornerMask;
    if (v12)
    {
      v13 = radiusCopy;
    }

    else
    {
      v13 = 0.0;
    }

    if ((v12 & 2) != 0)
    {
      v14 = radiusCopy;
    }

    else
    {
      v14 = 0.0;
    }

    if ((v12 & 4) != 0)
    {
      v15 = radiusCopy;
    }

    else
    {
      v15 = 0.0;
    }

    if ((v12 & 8) == 0)
    {
      radiusCopy = 0.0;
    }

    layer2 = [(MUBlurView *)self->_backgroundView layer];
    v17 = v15;
    v18 = v15;
    v19 = radiusCopy;
    v20 = radiusCopy;
    v21 = v14;
    v22 = v14;
    v23 = v13;
    v24 = v13;
    [layer2 setCornerRadii:&v17];
  }
}

- (void)setCornerMask:(unint64_t)mask
{
  if (self->_cornerMask != mask)
  {
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v37 = v5;
    v38 = v3;
    v39 = v4;
    maskCopy = mask;
    self->_cornerMask = mask;
    v13 = 0.0;
    if (mask)
    {
      cornerRadius = self->_cornerRadius;
    }

    else
    {
      cornerRadius = 0.0;
    }

    if ((mask & 2) != 0)
    {
      v15 = self->_cornerRadius;
    }

    else
    {
      v15 = 0.0;
    }

    if ((mask & 4) != 0)
    {
      v16 = self->_cornerRadius;
    }

    else
    {
      v16 = 0.0;
    }

    if ((mask & 8) != 0)
    {
      v17 = self->_cornerRadius;
    }

    else
    {
      v17 = 0.0;
    }

    viewIfLoaded = [(NavLaneGuidanceViewController *)self viewIfLoaded];
    layer = [viewIfLoaded layer];
    v24 = v16;
    v25 = v16;
    v26 = v17;
    v27 = v17;
    v28 = v15;
    v29 = v15;
    v30 = cornerRadius;
    v31 = cornerRadius;
    [layer setCornerRadii:&v24];

    if (maskCopy)
    {
      v20 = self->_cornerRadius;
    }

    else
    {
      v20 = 0.0;
    }

    if ((maskCopy & 2) != 0)
    {
      v21 = self->_cornerRadius;
    }

    else
    {
      v21 = 0.0;
    }

    if ((maskCopy & 4) != 0)
    {
      v22 = self->_cornerRadius;
    }

    else
    {
      v22 = 0.0;
    }

    if ((maskCopy & 8) != 0)
    {
      v13 = self->_cornerRadius;
    }

    layer2 = [(MUBlurView *)self->_backgroundView layer];
    v24 = v22;
    v25 = v22;
    v26 = v13;
    v27 = v13;
    v28 = v21;
    v29 = v21;
    v30 = v20;
    v31 = v20;
    [layer2 setCornerRadii:&v24];
  }
}

- (void)_insertBackgroundView
{
  [(MUBlurView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  view = [(NavLaneGuidanceViewController *)self view];
  backgroundView = [(NavLaneGuidanceViewController *)self backgroundView];
  [view insertSubview:backgroundView atIndex:0];

  backgroundView2 = [(NavLaneGuidanceViewController *)self backgroundView];
  view2 = [(NavLaneGuidanceViewController *)self view];
  LODWORD(v7) = 1148846080;
  v8 = [backgroundView2 _maps_constraintsEqualToEdgesOfView:view2 priority:v7];
  allConstraints = [v8 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)_updateLaneGuidanceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(NavLaneGuidanceViewController *)self view];
  superview = [view superview];
  [superview layoutIfNeeded];

  laneGuidanceInfo = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  if (laneGuidanceInfo)
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
  if (!animatedCopy)
  {
    v9 = 0.0;
  }

  v10[4] = self;
  *&v10[5] = v8;
  [UIView animateWithDuration:117440512 delay:v10 options:0 animations:v9 completion:0.0];
}

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  [(NavLaneGuidanceViewController *)self setLaneGuidanceInfo:0, id];

  [(NavLaneGuidanceViewController *)self _updateLaneGuidanceAnimated:1];
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  laneGuidanceInfo = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  v7 = laneGuidanceInfo == 0;

  v8 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:directionsCopy];
  [(NavLaneGuidanceViewController *)self setLaneGuidanceInfo:v8];

  laneGuidanceInfo2 = [(NavLaneGuidanceViewController *)self laneGuidanceInfo];
  lanes = [laneGuidanceInfo2 lanes];
  laneGuidanceView = [(NavLaneGuidanceViewController *)self laneGuidanceView];
  [laneGuidanceView setLanes:lanes];

  [(NavLaneGuidanceViewController *)self _updateLaneGuidanceAnimated:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = NavLaneGuidanceViewController;
  changeCopy = change;
  [(NavLaneGuidanceViewController *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(NavLaneGuidanceViewController *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  if (v6)
  {
    traitCollection2 = [(NavLaneGuidanceViewController *)self traitCollection];
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008B57B4;
    v9[3] = &unk_101661AE0;
    v10 = isLuminanceReduced;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v9];
  }
}

- (void)setLayoutProgress:(double)progress
{
  if (self->_layoutProgress != progress)
  {
    self->_layoutProgress = progress;
    traitCollection = [(NavLaneGuidanceViewController *)self traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    if ((isLuminanceReduced & 1) == 0)
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
    layer = [(MUBlurView *)self->_backgroundView layer];
    [layer setCornerCurve:kCACornerCurveContinuous];

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

    layer2 = [(MUBlurView *)self->_backgroundView layer];
    *v20 = v15;
    *&v20[1] = v15;
    *&v20[2] = v16;
    *&v20[3] = v16;
    *&v20[4] = v14;
    *&v20[5] = v14;
    *&v20[6] = cornerRadius;
    *&v20[7] = cornerRadius;
    [layer2 setCornerRadii:v20];

    layer3 = [(MUBlurView *)self->_backgroundView layer];
    [layer3 setMasksToBounds:1];

    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)pressedLaneGuidance
{
  delegate = [(NavLaneGuidanceViewController *)self delegate];
  [delegate didTapLaneGuidance];
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = NavLaneGuidanceViewController;
  [(NavLaneGuidanceViewController *)&v35 viewDidLoad];
  view = [(NavLaneGuidanceViewController *)self view];
  layer = [view layer];
  [layer setCornerCurve:kCACornerCurveContinuous];

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

  view2 = [(NavLaneGuidanceViewController *)self view];
  layer2 = [view2 layer];
  *v34 = v8;
  *&v34[1] = v8;
  *&v34[2] = v9;
  *&v34[3] = v9;
  *&v34[4] = v7;
  *&v34[5] = v7;
  *&v34[6] = cornerRadius;
  *&v34[7] = cornerRadius;
  [layer2 setCornerRadii:v34];

  view3 = [(NavLaneGuidanceViewController *)self view];
  layer3 = [view3 layer];
  [layer3 setMasksToBounds:1];

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

  view4 = [(NavLaneGuidanceViewController *)self view];
  [view4 addSubview:self->_laneGuidanceView];

  leadingAnchor = [(NavSignLaneGuidanceView *)self->_laneGuidanceView leadingAnchor];
  view5 = [(NavLaneGuidanceViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v30;
  trailingAnchor = [(NavSignLaneGuidanceView *)self->_laneGuidanceView trailingAnchor];
  view6 = [(NavLaneGuidanceViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v21;
  bottomAnchor = [(NavSignLaneGuidanceView *)self->_laneGuidanceView bottomAnchor];
  view7 = [(NavLaneGuidanceViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v36[2] = v25;
  heightAnchor = [(NavSignLaneGuidanceView *)self->_laneGuidanceView heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:76.0];
  v36[3] = v27;
  v28 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (NavLaneGuidanceViewController)initWithDelegate:(id)delegate blurGroup:(id)group
{
  delegateCopy = delegate;
  groupCopy = group;
  v13.receiver = self;
  v13.super_class = NavLaneGuidanceViewController;
  v8 = [(NavLaneGuidanceViewController *)&v13 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(NavLaneGuidanceViewController *)v8 setAccessibilityIdentifier:v10];

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_blurGroup, group);
    v11 = +[MNNavigationService sharedService];
    [v11 registerObserver:v8];
  }

  return v8;
}

@end