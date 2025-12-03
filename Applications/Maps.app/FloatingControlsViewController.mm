@interface FloatingControlsViewController
- (BOOL)shouldShow:(int64_t)show withControlOptions:(int64_t)options;
- (CGRect)floatingButtonsFrame;
- (CGRect)lookAroundButtonFrame;
- (FloatingControlsViewControllerActionCoordination)actionCoordinator;
- (FloatingControlsViewControllerOpenSettingsDelegate)openSettingsDelegate;
- (MKMapView)mapView;
- (MapViewProviding)mapViewProviding;
- (double)compassDiameter;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)_addSubview:(id)subview withConstraints:(id)constraints;
- (void)_updateAlphaAnimated:(BOOL)animated completion:(id)completion;
- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated;
- (void)setAutomaticallyUpdateCompassInsets:(BOOL)insets;
- (void)setBlurGroupName:(id)name;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)updateCompassInsets;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FloatingControlsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FloatingControlsViewController;
  [(FloatingControlsViewController *)&v6 viewDidLoad];
  view = [(FloatingControlsViewController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:0];

  self->_visible = 1;
  self->_isConfigured = 0;
  self->_alpha = 1.0;
  view2 = [(FloatingControlsViewController *)self view];
  [view2 _setHostsLayoutEngine:1];

  [(FloatingControlsViewController *)self setVisibleControls:0];
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewProviding);
  mapView = [WeakRetained mapView];

  return mapView;
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

  controlsStackViewIfLoaded = [(FloatingControlsViewController *)self controlsStackViewIfLoaded];
  if (!controlsStackViewIfLoaded || !self->_visible)
  {
    view = [(FloatingControlsViewController *)self view];
    window = [view window];
    [window safeAreaInsets];
    v13 = v18;

    goto LABEL_8;
  }

  mapView = [(FloatingControlsViewController *)self mapView];
  [controlsStackViewIfLoaded bounds];
  [mapView convertRect:controlsStackViewIfLoaded fromView:?];
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
    view = [(FloatingControlsViewController *)self mapView];
    [view _edgeInsets];
    v13 = v14 - v16;
LABEL_8:
  }

  mapView2 = [(FloatingControlsViewController *)self mapView];
  [mapView2 _compassInsets];
  v21 = v20;
  v23 = v22;

  mapView3 = [(FloatingControlsViewController *)self mapView];
  [mapView3 _compassInsets];
  if (v21 != v28 || v13 != v25 || v23 != v27)
  {

LABEL_15:
    mapView4 = [(FloatingControlsViewController *)self mapView];
    [mapView4 _setCompassInsets:{v13, v21, 0.0, v23}];

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
  mapView = [(FloatingControlsViewController *)self mapView];
  [mapView _compassDiameter];
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
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = [actionCoordinator conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [actionCoordinator2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  actionCoordinator = [(FloatingControlsViewController *)self actionCoordinator];
  v4 = [actionCoordinator conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  actionCoordinator2 = [(FloatingControlsViewController *)self actionCoordinator];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [actionCoordinator2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (void)_updateAlphaAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  if (animated)
  {
    if (self->_visible)
    {
      view = [(FloatingControlsViewController *)self view];
      [view setHidden:0];

      view2 = [(FloatingControlsViewController *)self view];
      [view2 setAlpha:0.0];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1008E2CF8;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:completionCopy];
  }

  else
  {
    alpha = 0.0;
    if (self->_visible)
    {
      alpha = self->_alpha;
    }

    view3 = [(FloatingControlsViewController *)self view];
    [view3 setAlpha:alpha];

    [(FloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    [(FloatingControlsViewController *)self _updateAlphaAnimated:animated completion:completion];
  }
}

- (void)_addSubview:(id)subview withConstraints:(id)constraints
{
  constraintsCopy = constraints;
  subviewCopy = subview;
  [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(FloatingControlsViewController *)self view];
  [view addSubview:subviewCopy];

  [NSLayoutConstraint activateConstraints:constraintsCopy];
}

- (void)hideControlsIfNeeded:(int64_t)needed animated:(BOOL)animated
{
  v5 = [(FloatingControlsViewController *)self visibleControls:needed];

  [(FloatingControlsViewController *)self setVisibleControls:v5];
}

- (BOOL)shouldShow:(int64_t)show withControlOptions:(int64_t)options
{
  visibleControls = [(FloatingControlsViewController *)self visibleControls];
  v8 = options & show;
  if (sub_10000FA08(self) == 5)
  {
    return v8 != 0;
  }

  else
  {
    return (v8 | visibleControls & show) != 0;
  }
}

- (void)setAutomaticallyUpdateCompassInsets:(BOOL)insets
{
  if (self->_automaticallyUpdateCompassInsets != insets)
  {
    self->_automaticallyUpdateCompassInsets = insets;
    [(FloatingControlsViewController *)self updateCompassInsets];
  }
}

- (void)setBlurGroupName:(id)name
{
  v4 = [name copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = FloatingControlsViewController;
  [(FloatingControlsViewController *)&v13 viewWillAppear:appear];
  if (!self->_isConfigured)
  {
    self->_isConfigured = 1;
    [(MapsThemeViewController *)self updateTheme];
  }

  mapView = [(FloatingControlsViewController *)self mapView];
  mapType = [mapView mapType];
  v6 = 0;
  if ((mapType - 1) >= 4 && mapType != 107)
  {
    traitCollection = [(FloatingControlsViewController *)self traitCollection];
    v6 = [traitCollection userInterfaceStyle] != 2;
  }

  mapView2 = [(FloatingControlsViewController *)self mapView];
  [mapView2 _setCompassViewSize:1 style:v6];

  view = [(FloatingControlsViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  mapView3 = [(FloatingControlsViewController *)self mapView];
  [mapView3 setAttributionCorner:v11];
}

@end