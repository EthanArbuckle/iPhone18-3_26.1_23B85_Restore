@interface FloatingControlsViewController
- (BOOL)shouldShow:(int64_t)a3 withControlOptions:(int64_t)a4;
- (CGRect)floatingButtonsFrame;
- (CGRect)lookAroundButtonFrame;
- (FloatingControlsViewControllerActionCoordination)actionCoordinator;
- (FloatingControlsViewControllerOpenSettingsDelegate)openSettingsDelegate;
- (MKMapView)mapView;
- (MapViewProviding)mapViewProviding;
- (double)compassDiameter;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)_addSubview:(id)a3 withConstraints:(id)a4;
- (void)_updateAlphaAnimated:(BOOL)a3 completion:(id)a4;
- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4;
- (void)setAutomaticallyUpdateCompassInsets:(BOOL)a3;
- (void)setBlurGroupName:(id)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateCompassInsets;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FloatingControlsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FloatingControlsViewController;
  [(FloatingControlsViewController *)&v6 viewDidLoad];
  v3 = [(FloatingControlsViewController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];

  self->_visible = 1;
  self->_isConfigured = 0;
  self->_alpha = 1.0;
  v5 = [(FloatingControlsViewController *)self view];
  [v5 _setHostsLayoutEngine:1];

  [(FloatingControlsViewController *)self setVisibleControls:0];
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProviding);
  v3 = [WeakRetained mapView];

  return v3;
}

- (FloatingControlsViewControllerActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = FloatingControlsViewController;
  [(FloatingControlsViewController *)&v3 viewDidLayoutSubviews];
  [(FloatingControlsViewController *)self updateCompassInsets];
}

- (void)updateCompassInsets
{
  if (![(FloatingControlsViewController *)self automaticallyUpdateCompassInsets])
  {
    return;
  }

  v31 = [(FloatingControlsViewController *)self controlsStackViewIfLoaded];
  if (!v31 || !self->_visible)
  {
    v15 = [(FloatingControlsViewController *)self view];
    v17 = [v15 window];
    [v17 safeAreaInsets];
    v13 = v18;

    goto LABEL_8;
  }

  v3 = [(FloatingControlsViewController *)self mapView];
  [v31 bounds];
  [v3 convertRect:v31 fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  MaxY = CGRectGetMaxY(v33);
  v13 = 0.0;
  if (MaxY > 0.0)
  {
    v14 = sub_100019A44() + MaxY;
    v15 = [(FloatingControlsViewController *)self mapView];
    [v15 _edgeInsets];
    v13 = v14 - v16;
LABEL_8:
  }

  v19 = [(FloatingControlsViewController *)self mapView];
  [v19 _compassInsets];
  v21 = v20;
  v23 = v22;

  v24 = [(FloatingControlsViewController *)self mapView];
  [v24 _compassInsets];
  if (v21 != v28 || v13 != v25 || v23 != v27)
  {

LABEL_15:
    v30 = [(FloatingControlsViewController *)self mapView];
    [v30 _setCompassInsets:{v13, v21, 0.0, v23}];

    goto LABEL_16;
  }

  v29 = v26;

  if (v29 != 0.0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (double)compassDiameter
{
  v2 = [(FloatingControlsViewController *)self mapView];
  [v2 _compassDiameter];
  v4 = v3;

  return v4;
}

- (FloatingControlsViewControllerOpenSettingsDelegate)openSettingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_openSettingsDelegate);

  return WeakRetained;
}

- (CGRect)lookAroundButtonFrame
{
  x = self->_lookAroundButtonFrame.origin.x;
  y = self->_lookAroundButtonFrame.origin.y;
  width = self->_lookAroundButtonFrame.size.width;
  height = self->_lookAroundButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)floatingButtonsFrame
{
  x = self->_floatingButtonsFrame.origin.x;
  y = self->_floatingButtonsFrame.origin.y;
  width = self->_floatingButtonsFrame.size.width;
  height = self->_floatingButtonsFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (MapViewProviding)mapViewProviding
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProviding);

  return WeakRetained;
}

- (int)currentMapViewTargetForAnalytics
{
  v3 = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(FloatingControlsViewController *)self actionCoordinator];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(FloatingControlsViewController *)self actionCoordinator];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateAlphaAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    if (self->_visible)
    {
      v7 = [(FloatingControlsViewController *)self view];
      [v7 setHidden:0];

      v8 = [(FloatingControlsViewController *)self view];
      [v8 setAlpha:0.0];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1008E2CF8;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:v6];
  }

  else
  {
    alpha = 0.0;
    if (self->_visible)
    {
      alpha = self->_alpha;
    }

    v10 = [(FloatingControlsViewController *)self view];
    [v10 setAlpha:alpha];

    [(FloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(FloatingControlsViewController *)self _updateAlphaAnimated:a4 completion:a5];
  }
}

- (void)_addSubview:(id)a3 withConstraints:(id)a4
{
  v8 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(FloatingControlsViewController *)self view];
  [v7 addSubview:v6];

  [NSLayoutConstraint activateConstraints:v8];
}

- (void)hideControlsIfNeeded:(int64_t)a3 animated:(BOOL)a4
{
  v5 = [(FloatingControlsViewController *)self visibleControls:a3];

  [(FloatingControlsViewController *)self setVisibleControls:v5];
}

- (BOOL)shouldShow:(int64_t)a3 withControlOptions:(int64_t)a4
{
  v7 = [(FloatingControlsViewController *)self visibleControls];
  v8 = a4 & a3;
  if (sub_10000FA08(self) == 5)
  {
    return v8 != 0;
  }

  else
  {
    return (v8 | v7 & a3) != 0;
  }
}

- (void)setAutomaticallyUpdateCompassInsets:(BOOL)a3
{
  if (self->_automaticallyUpdateCompassInsets != a3)
  {
    self->_automaticallyUpdateCompassInsets = a3;
    [(FloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)setBlurGroupName:(id)a3
{
  v4 = [a3 copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = FloatingControlsViewController;
  [(FloatingControlsViewController *)&v13 viewWillAppear:a3];
  if (!self->_isConfigured)
  {
    self->_isConfigured = 1;
    [(MapsThemeViewController *)self updateTheme];
  }

  v4 = [(FloatingControlsViewController *)self mapView];
  v5 = [v4 mapType];
  v6 = 0;
  if ((v5 - 1) >= 4 && v5 != 107)
  {
    v7 = [(FloatingControlsViewController *)self traitCollection];
    v6 = [v7 userInterfaceStyle] != 2;
  }

  v8 = [(FloatingControlsViewController *)self mapView];
  [v8 _setCompassViewSize:1 style:v6];

  v9 = [(FloatingControlsViewController *)self view];
  v10 = [v9 effectiveUserInterfaceLayoutDirection];

  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  v12 = [(FloatingControlsViewController *)self mapView];
  [v12 setAttributionCorner:v11];
}

@end