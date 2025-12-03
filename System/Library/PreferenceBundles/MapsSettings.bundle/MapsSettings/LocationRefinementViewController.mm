@interface LocationRefinementViewController
- (BOOL)delegateProtocolHasInstanceMethod:(SEL)method;
- (BOOL)protocol:(id)protocol hasInstanceMethod:(SEL)method;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture;
- (CLLocationCoordinate2D)selectedCoordinate;
- (LocationRefinementViewController)initWithCamera:(id)camera crosshairType:(unint64_t)type;
- (LocationRefinementViewController)initWithCamera:(id)camera showCrosshair:(BOOL)crosshair;
- (LocationRefinementViewControllerDelegate)delegate;
- (MKMapViewDelegate)mapViewDelegate;
- (id)crosshairImage;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_contentSizeChanged;
- (void)applyInitialCameraPosition;
- (void)applyInitialZoomLevel;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishLoadingMap:(id)map;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)recenterMapView;
- (void)setInstructionsText:(id)text;
- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;
- (void)updateCrosshairConstraints;
- (void)updateLocateMeButtonState;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LocationRefinementViewController

- (LocationRefinementViewController)initWithCamera:(id)camera showCrosshair:(BOOL)crosshair
{
  if (crosshair)
  {
    return [(LocationRefinementViewController *)self initWithCamera:camera crosshairType:0];
  }

  else
  {
    return [(LocationRefinementViewController *)self initWithCamera:camera crosshairType:4];
  }
}

- (LocationRefinementViewController)initWithCamera:(id)camera crosshairType:(unint64_t)type
{
  cameraCopy = camera;
  v11.receiver = self;
  v11.super_class = LocationRefinementViewController;
  v7 = [(LocationRefinementViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    if (cameraCopy)
    {
      [cameraCopy centerCoordinate];
      if (CLLocationCoordinate2DIsValid(v12))
      {
        v8 = [cameraCopy copy];
        initialCamera = v7->_initialCamera;
        v7->_initialCamera = v8;

        [(MKMapCamera *)v7->_initialCamera setPitch:0.0];
      }
    }

    v7->_needsInitialCameraPosition = v7->_initialCamera != 0;
    v7->_initialMapViewZoomLevel = -1.0;
    v7->_crosshairType = type;
  }

  return v7;
}

- (void)viewDidLoad
{
  v160.receiver = self;
  v160.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v160 viewDidLoad];
  v3 = objc_alloc_init(MKMapView);
  mapView = self->_mapView;
  self->_mapView = v3;

  [(MKMapView *)self->_mapView _setEdgeInsets:44.0, 0.0, 0.0, 0.0];
  [(MKMapView *)self->_mapView setShowsAttribution:0];
  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  [(MKMapView *)self->_mapView setPitchEnabled:0];
  [(MKMapView *)self->_mapView setDelegate:self];
  _panningGestureRecognizer = [(MKMapView *)self->_mapView _panningGestureRecognizer];
  [_panningGestureRecognizer setMaximumNumberOfTouches:1];

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setStaysCenteredDuringPinch:1];

  _mapLayer2 = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer2 setStaysCenteredDuringRotation:1];

  view = [(LocationRefinementViewController *)self view];
  [view addSubview:self->_mapView];

  v9 = objc_alloc_init(UIView);
  instructionsContainer = self->_instructionsContainer;
  self->_instructionsContainer = v9;

  instructionsContainer = [(LocationRefinementViewController *)self instructionsContainer];
  [instructionsContainer setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(LocationRefinementViewController *)self view];
  instructionsContainer2 = [(LocationRefinementViewController *)self instructionsContainer];
  [view2 addSubview:instructionsContainer2];

  v14 = [UIVisualEffectView alloc];
  v15 = [UIBlurEffect effectWithStyle:6];
  v158 = [v14 initWithEffect:v15];

  [v158 setTranslatesAutoresizingMaskIntoConstraints:0];
  instructionsContainer3 = [(LocationRefinementViewController *)self instructionsContainer];
  [instructionsContainer3 addSubview:v158];

  v159 = objc_alloc_init(NSMutableArray);
  instructionsContainer4 = [(LocationRefinementViewController *)self instructionsContainer];
  topAnchor = [instructionsContainer4 topAnchor];
  view3 = [(LocationRefinementViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v128 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v167[0] = v128;
  instructionsContainer5 = [(LocationRefinementViewController *)self instructionsContainer];
  leadingAnchor = [instructionsContainer5 leadingAnchor];
  view4 = [(LocationRefinementViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v167[1] = v19;
  instructionsContainer6 = [(LocationRefinementViewController *)self instructionsContainer];
  trailingAnchor = [instructionsContainer6 trailingAnchor];
  view5 = [(LocationRefinementViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v167[2] = v24;
  v25 = [NSArray arrayWithObjects:v167 count:3];
  [v159 addObjectsFromArray:v25];

  v26 = objc_alloc_init(UILabel);
  instructionsLabel = self->_instructionsLabel;
  self->_instructionsLabel = v26;

  [(UILabel *)self->_instructionsLabel setTextAlignment:1];
  [(UILabel *)self->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  instructionsText = [(LocationRefinementViewController *)self instructionsText];
  [(UILabel *)self->_instructionsLabel setText:instructionsText];

  v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [(UILabel *)self->_instructionsLabel setFont:v29];

  [(UILabel *)self->_instructionsLabel setLineBreakMode:0];
  v30 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_instructionsLabel setTextColor:v30];

  [(UILabel *)self->_instructionsLabel setNumberOfLines:0];
  font = [(UILabel *)self->_instructionsLabel font];
  [font _scaledValueForValue:27.0];
  if (v31 <= 27.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 - (v31 + -27.0) * 0.5;
  }

  [(UILabel *)self->_instructionsLabel setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)self->_instructionsLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_instructionsLabel setMinimumScaleFactor:0.5];
  [(UIView *)self->_instructionsContainer addSubview:self->_instructionsLabel];
  bottomAnchor = [(UIView *)self->_instructionsContainer bottomAnchor];
  lastBaselineAnchor = [(UILabel *)self->_instructionsLabel lastBaselineAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:16.0];
  instructionsContainerBottomConstraint = self->_instructionsContainerBottomConstraint;
  self->_instructionsContainerBottomConstraint = v35;

  leadingAnchor3 = [(UILabel *)self->_instructionsLabel leadingAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v133 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v166[0] = v133;
  trailingAnchor3 = [(UILabel *)self->_instructionsLabel trailingAnchor];
  safeAreaLayoutGuide3 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v166[1] = v40;
  firstBaselineAnchor = [(UILabel *)self->_instructionsLabel firstBaselineAnchor];
  topAnchor3 = [(UIView *)self->_instructionsContainer topAnchor];
  v43 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v32];
  v44 = self->_instructionsContainerBottomConstraint;
  v166[2] = v43;
  v166[3] = v44;
  v45 = [NSArray arrayWithObjects:v166 count:4];
  [v159 addObjectsFromArray:v45];

  topAnchor4 = [v158 topAnchor];
  instructionsContainer7 = [(LocationRefinementViewController *)self instructionsContainer];
  topAnchor5 = [instructionsContainer7 topAnchor];
  v139 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v165[0] = v139;
  leadingAnchor5 = [v158 leadingAnchor];
  instructionsContainer8 = [(LocationRefinementViewController *)self instructionsContainer];
  leadingAnchor6 = [instructionsContainer8 leadingAnchor];
  v121 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v165[1] = v121;
  trailingAnchor5 = [v158 trailingAnchor];
  instructionsContainer9 = [(LocationRefinementViewController *)self instructionsContainer];
  trailingAnchor6 = [instructionsContainer9 trailingAnchor];
  v49 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v165[2] = v49;
  bottomAnchor2 = [v158 bottomAnchor];
  instructionsContainer10 = [(LocationRefinementViewController *)self instructionsContainer];
  bottomAnchor3 = [instructionsContainer10 bottomAnchor];
  v53 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v165[3] = v53;
  v54 = [NSArray arrayWithObjects:v165 count:4];
  [v159 addObjectsFromArray:v54];

  leadingAnchor7 = [(MKMapView *)self->_mapView leadingAnchor];
  view6 = [(LocationRefinementViewController *)self view];
  leadingAnchor8 = [view6 leadingAnchor];
  v140 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v164[0] = v140;
  trailingAnchor7 = [(MKMapView *)self->_mapView trailingAnchor];
  view7 = [(LocationRefinementViewController *)self view];
  trailingAnchor8 = [view7 trailingAnchor];
  v122 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v164[1] = v122;
  topAnchor6 = [(MKMapView *)self->_mapView topAnchor];
  view8 = [(LocationRefinementViewController *)self view];
  topAnchor7 = [view8 topAnchor];
  v57 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v164[2] = v57;
  bottomAnchor4 = [(MKMapView *)self->_mapView bottomAnchor];
  view9 = [(LocationRefinementViewController *)self view];
  bottomAnchor5 = [view9 bottomAnchor];
  v61 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v164[3] = v61;
  v62 = [NSArray arrayWithObjects:v164 count:4];
  [(LocationRefinementViewController *)self setMapViewConstraints:v62];

  mapViewConstraints = [(LocationRefinementViewController *)self mapViewConstraints];
  [v159 addObjectsFromArray:mapViewConstraints];

  if (self->_crosshairType != 4)
  {
    v64 = [UIImageView alloc];
    crosshairImage = [(LocationRefinementViewController *)self crosshairImage];
    v66 = [v64 initWithImage:crosshairImage];
    crosshairImageView = self->_crosshairImageView;
    self->_crosshairImageView = v66;

    [(UIImageView *)self->_crosshairImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_crosshairImageView setHidden:1];
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView addSubview:self->_crosshairImageView];

    centerXAnchor = [(UIImageView *)self->_crosshairImageView centerXAnchor];
    centerXAnchor2 = [(MKMapView *)self->_mapView centerXAnchor];
    v71 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    crosshairXConstraint = self->_crosshairXConstraint;
    self->_crosshairXConstraint = v71;

    centerYAnchor = [(UIImageView *)self->_crosshairImageView centerYAnchor];
    centerYAnchor2 = [(MKMapView *)self->_mapView centerYAnchor];
    v75 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    crosshairYConstraint = self->_crosshairYConstraint;
    self->_crosshairYConstraint = v75;

    [(LocationRefinementViewController *)self updateCrosshairConstraints];
    v77 = self->_crosshairYConstraint;
    v163[0] = self->_crosshairXConstraint;
    v163[1] = v77;
    v78 = [NSArray arrayWithObjects:v163 count:2];
    [v159 addObjectsFromArray:v78];
  }

  v79 = [MapsTheme visualEffectViewAllowingBlur:1];
  buttonContainerView = self->_buttonContainerView;
  self->_buttonContainerView = v79;

  [(UIVisualEffectView *)self->_buttonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_buttonContainerView setClipsToBounds:1];
  layer = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [layer setCornerRadius:10.0];

  layer2 = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [layer2 setMaskedCorners:15];

  view10 = [(LocationRefinementViewController *)self view];
  [view10 addSubview:self->_buttonContainerView];

  objc_storeStrong(&self->_snapToUserLocationContainerView, self->_buttonContainerView);
  bottomAnchor6 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  safeAreaLayoutGuide4 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  bottomAnchor7 = [safeAreaLayoutGuide4 bottomAnchor];
  v87 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-12.0];
  userLocationButtonBottomConstraint = self->_userLocationButtonBottomConstraint;
  self->_userLocationButtonBottomConstraint = v87;

  leadingAnchor9 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  safeAreaLayoutGuide5 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  leadingAnchor10 = [safeAreaLayoutGuide5 leadingAnchor];
  v92 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:12.0];
  v93 = self->_userLocationButtonBottomConstraint;
  v162[0] = v92;
  v162[1] = v93;
  v94 = [NSArray arrayWithObjects:v162 count:2];
  [v159 addObjectsFromArray:v94];

  v95 = [UIButton buttonWithType:0];
  snapToUserLocationButton = self->_snapToUserLocationButton;
  self->_snapToUserLocationButton = v95;

  [(UIButton *)self->_snapToUserLocationButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v97 = self->_snapToUserLocationButton;
  v98 = +[MapsTheme locationImage];
  [(UIButton *)v97 setImage:v98 forState:0];

  [(UIButton *)self->_snapToUserLocationButton _setContinuousCornerRadius:10.0];
  v99 = +[UIScreen mainScreen];
  [v99 nativeScale];
  v101 = 1.0 / v100;
  layer3 = [(UIButton *)self->_snapToUserLocationButton layer];
  [layer3 setBorderWidth:v101];

  theme = [(UIButton *)self->_snapToUserLocationButton theme];
  hairlineColor = [theme hairlineColor];
  cGColor = [hairlineColor CGColor];
  layer4 = [(UIButton *)self->_snapToUserLocationButton layer];
  [layer4 setBorderColor:cGColor];

  [(UIButton *)self->_snapToUserLocationButton addTarget:self action:"recenterMapView" forControlEvents:64];
  contentView = [(UIVisualEffectView *)self->_buttonContainerView contentView];
  [contentView addSubview:self->_snapToUserLocationButton];

  leadingAnchor11 = [(UIButton *)self->_snapToUserLocationButton leadingAnchor];
  leadingAnchor12 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  v151 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v161[0] = v151;
  trailingAnchor9 = [(UIButton *)self->_snapToUserLocationButton trailingAnchor];
  trailingAnchor10 = [(UIVisualEffectView *)self->_buttonContainerView trailingAnchor];
  v136 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v161[1] = v136;
  topAnchor8 = [(UIButton *)self->_snapToUserLocationButton topAnchor];
  topAnchor9 = [(UIVisualEffectView *)self->_buttonContainerView topAnchor];
  v123 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v161[2] = v123;
  bottomAnchor8 = [(UIButton *)self->_snapToUserLocationButton bottomAnchor];
  bottomAnchor9 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  v108 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v161[3] = v108;
  heightAnchor = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v110 = [heightAnchor constraintEqualToConstant:50.0];
  v161[4] = v110;
  widthAnchor = [(UIButton *)self->_snapToUserLocationButton widthAnchor];
  heightAnchor2 = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v113 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v161[5] = v113;
  v114 = [NSArray arrayWithObjects:v161 count:6];
  [v159 addObjectsFromArray:v114];

  [NSLayoutConstraint activateConstraints:v159];
  v115 = +[NSNotificationCenter defaultCenter];
  [v115 addObserver:self selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(LocationRefinementViewController *)self updateLocateMeButtonState];
  [(LocationRefinementViewController *)self setViewDidLoadComplete:1];
  v116 = +[NSNotificationCenter defaultCenter];
  [v116 addObserver:self selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_contentSizeChanged
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [(UILabel *)self->_instructionsLabel setFont:v3];
}

- (void)updateTheme
{
  v7.receiver = self;
  v7.super_class = LocationRefinementViewController;
  [(MapsThemeViewController *)&v7 updateTheme];
  theme = [(LocationRefinementViewController *)self theme];
  controlBackgroundColor = [theme controlBackgroundColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setBackgroundColor:controlBackgroundColor];

  theme2 = [(LocationRefinementViewController *)self theme];
  controlTintColor = [theme2 controlTintColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setTintColor:controlTintColor];
}

- (id)crosshairImage
{
  crosshairType = [(LocationRefinementViewController *)self crosshairType];
  v3 = @"crosshair_marker";
  if (crosshairType == 2)
  {
    v3 = @"crosshair_work";
  }

  if (crosshairType == 1)
  {
    v4 = @"crosshair_home";
  }

  else
  {
    v4 = v3;
  }

  return [UIImage imageNamed:v4];
}

- (void)viewDidLayoutSubviews
{
  if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    instructionsContainer = [(LocationRefinementViewController *)self instructionsContainer];
    [instructionsContainer frame];
    MaxY = CGRectGetMaxY(v9);
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView frame];
    v6 = MaxY - CGRectGetMinY(v10);
    mapView2 = [(LocationRefinementViewController *)self mapView];
    [mapView2 _setEdgeInsets:{v6, 0.0, 0.0, 0.0}];
  }

  [(LocationRefinementViewController *)self applyInitialCameraPosition];
  [(LocationRefinementViewController *)self applyInitialZoomLevel];
  v8.receiver = self;
  v8.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v8 viewDidLayoutSubviews];
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
}

- (void)applyInitialCameraPosition
{
  if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    [(LocationRefinementViewController *)self setNeedsInitialCameraPosition:0];
    initialCamera = self->_initialCamera;
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView setCamera:initialCamera];
  }
}

- (void)applyInitialZoomLevel
{
  [(LocationRefinementViewController *)self initialMapViewZoomLevel];
  if (v3 != -1.0)
  {
    initialCamera = self->_initialCamera;
    if (initialCamera)
    {
      [(MKMapCamera *)initialCamera centerCoordinate];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      mapView = [(LocationRefinementViewController *)self mapView];
      [mapView centerCoordinate];
      v6 = v10;
      v8 = v11;
    }

    mapView2 = [(LocationRefinementViewController *)self mapView];
    [(LocationRefinementViewController *)self initialMapViewZoomLevel];
    [mapView2 setCenterCoordinate:0 zoomLevel:v6 animated:{v8, v13}];

    [(LocationRefinementViewController *)self setInitialMapViewZoomLevel:-1.0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillAppear:appear];
  [(LocationRefinementViewController *)self updateLocateMeButtonState];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(LocationRefinementViewController *)self setVisible:1];
  [(LocationRefinementViewController *)self applyInitialCameraPosition];
  [(LocationRefinementViewController *)self applyInitialZoomLevel];
  v5.receiver = self;
  v5.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v5 viewDidAppear:appearCopy];
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillDisappear:disappear];
  [(LocationRefinementViewController *)self setVisible:0];
}

- (void)updateLocateMeButtonState
{
  v3 = +[MKLocationManager sharedLocationManager];
  isLocationServicesEnabled = [v3 isLocationServicesEnabled];

  v5 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v5 isAuthorizedForPreciseLocation];

  [(UIVisualEffectView *)self->_buttonContainerView setHidden:isLocationServicesEnabled & isAuthorizedForPreciseLocation ^ 1];
  snapToUserLocationButton = self->_snapToUserLocationButton;
  mapView = [(LocationRefinementViewController *)self mapView];
  -[UIButton setEnabled:](snapToUserLocationButton, "setEnabled:", [mapView hasUserLocation]);
}

- (void)setInstructionsText:(id)text
{
  objc_storeStrong(&self->_instructionsText, text);
  textCopy = text;
  instructionsLabel = [(LocationRefinementViewController *)self instructionsLabel];
  [instructionsLabel setText:textCopy];
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  mapView = [(LocationRefinementViewController *)self mapView];
  [mapView centerCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(LocationRefinementViewController *)self visible])
  {
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView setCenterCoordinate:animatedCopy animated:{latitude, longitude}];
  }

  else if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    mapView = [(LocationRefinementViewController *)self initialCamera];
    [mapView setCenterCoordinate:{latitude, longitude}];
  }

  else
  {
    mapView = objc_alloc_init(MKMapCamera);
    initialCamera = [(LocationRefinementViewController *)self initialCamera];
    if (initialCamera)
    {
      initialCamera2 = [(LocationRefinementViewController *)self initialCamera];
      [initialCamera2 altitude];
      [mapView setAltitude:?];
    }

    else
    {
      [mapView setAltitude:1000.0];
    }

    [(LocationRefinementViewController *)self setInitialCamera:mapView];
    [(LocationRefinementViewController *)self setNeedsInitialCameraPosition:1];
    [mapView setCenterCoordinate:{latitude, longitude}];
  }
}

- (void)updateCrosshairConstraints
{
  crosshairImageView = [(LocationRefinementViewController *)self crosshairImageView];

  if (crosshairImageView)
  {
    mapView = [(LocationRefinementViewController *)self mapView];
    mapView2 = [(LocationRefinementViewController *)self mapView];
    [mapView2 centerCoordinate];
    v7 = v6;
    v9 = v8;
    mapView3 = [(LocationRefinementViewController *)self mapView];
    [mapView convertCoordinate:mapView3 toPointToView:{v7, v9}];
    v12 = v11;
    v14 = v13;

    mapView4 = [(LocationRefinementViewController *)self mapView];
    mapView5 = [(LocationRefinementViewController *)self mapView];
    [mapView5 center];
    v18 = v17;
    v20 = v19;
    mapView6 = [(LocationRefinementViewController *)self mapView];
    superview = [mapView6 superview];
    [mapView4 convertPoint:superview fromView:{v18, v20}];
    v24 = v23;
    v26 = v25;

    v27 = v12 - v24;
    v28 = v14 - v26;
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      crosshairXConstraint = [(LocationRefinementViewController *)self crosshairXConstraint];
      [crosshairXConstraint setConstant:v27];

      crosshairYConstraint = [(LocationRefinementViewController *)self crosshairYConstraint];
      [crosshairYConstraint setConstant:v28];
    }
  }
}

- (void)recenterMapView
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:4001 onTarget:623 eventValue:0];

  userLocation = [(MKMapView *)self->_mapView userLocation];
  [userLocation coordinate];
  v6 = v5;
  v8 = v7;

  v11.latitude = v6;
  v11.longitude = v8;
  if (CLLocationCoordinate2DIsValid(v11))
  {
    mapView = self->_mapView;

    [(MKMapView *)mapView setCenterCoordinate:1 animated:v6, v8];
  }
}

- (LocationRefinementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKMapViewDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (BOOL)protocol:(id)protocol hasInstanceMethod:(SEL)method
{
  protocolCopy = protocol;
  v6 = 1;
  if (!protocol_getMethodDescription(protocolCopy, method, 1, 1).name)
  {
    v6 = protocol_getMethodDescription(protocolCopy, method, 0, 1).name != 0;
  }

  return v6;
}

- (BOOL)delegateProtocolHasInstanceMethod:(SEL)method
{
  if ([(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegate hasInstanceMethod:method])
  {
    return 1;
  }

  return [(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegatePrivate hasInstanceMethod:method];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = LocationRefinementViewController;
  if ([(LocationRefinementViewController *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([(LocationRefinementViewController *)self delegateProtocolHasInstanceMethod:selector])
  {
    mapViewDelegate = [(LocationRefinementViewController *)self mapViewDelegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([(LocationRefinementViewController *)self delegateProtocolHasInstanceMethod:?]&& ([(LocationRefinementViewController *)self mapViewDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    mapViewDelegate = [(LocationRefinementViewController *)self mapViewDelegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LocationRefinementViewController;
    mapViewDelegate = [(LocationRefinementViewController *)&v9 forwardingTargetForSelector:selector];
  }

  return mapViewDelegate;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  mapViewDelegate = [(LocationRefinementViewController *)self mapViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapViewDelegate2 = [(LocationRefinementViewController *)self mapViewDelegate];
    [mapViewDelegate2 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  }
}

- (void)mapViewDidFinishLoadingMap:(id)map
{
  mapCopy = map;
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  mapViewDelegate = [(LocationRefinementViewController *)self mapViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapViewDelegate2 = [(LocationRefinementViewController *)self mapViewDelegate];
    [mapViewDelegate2 mapViewDidFinishLoadingMap:mapCopy];
  }
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  renderedCopy = rendered;
  mapCopy = map;
  crosshairImageView = [(LocationRefinementViewController *)self crosshairImageView];
  [crosshairImageView setHidden:0];

  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  mapViewDelegate = [(LocationRefinementViewController *)self mapViewDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapViewDelegate2 = [(LocationRefinementViewController *)self mapViewDelegate];
    [mapViewDelegate2 mapViewDidFinishRenderingMap:mapCopy fullyRendered:renderedCopy];
  }
}

- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture
{
  if (gesture == 1)
  {
    v6 = [(LocationRefinementViewController *)self mapView:view];
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView centerCoordinate];
    v9 = v8;
    v11 = v10;
    mapView2 = [(LocationRefinementViewController *)self mapView];
    [v6 convertCoordinate:mapView2 toPointToView:{v9, v11}];
    x = v13;
    y = v15;
  }

  else
  {
    y = point.y;
    x = point.x;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

@end