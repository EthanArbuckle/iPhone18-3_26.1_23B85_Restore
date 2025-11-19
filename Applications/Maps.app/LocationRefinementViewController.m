@interface LocationRefinementViewController
- (BOOL)delegateProtocolHasInstanceMethod:(SEL)a3;
- (BOOL)protocol:(id)a3 hasInstanceMethod:(SEL)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5;
- (CLLocationCoordinate2D)selectedCoordinate;
- (LocationRefinementViewController)initWithCamera:(id)a3 crosshairType:(unint64_t)a4;
- (LocationRefinementViewController)initWithCamera:(id)a3 showCrosshair:(BOOL)a4;
- (LocationRefinementViewControllerDelegate)delegate;
- (MKMapViewDelegate)mapViewDelegate;
- (id)crosshairImage;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_contentSizeChanged;
- (void)applyInitialCameraPosition;
- (void)applyInitialZoomLevel;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishLoadingMap:(id)a3;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)recenterMapView;
- (void)setInstructionsText:(id)a3;
- (void)setSelectedCoordinate:(CLLocationCoordinate2D)a3 animated:(BOOL)a4;
- (void)updateCrosshairConstraints;
- (void)updateLocateMeButtonState;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LocationRefinementViewController

- (MKMapViewDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (LocationRefinementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)recenterMapView
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:4001 onTarget:623 eventValue:0];

  v4 = [(MKMapView *)self->_mapView userLocation];
  [v4 coordinate];
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

- (void)updateCrosshairConstraints
{
  v3 = [(LocationRefinementViewController *)self crosshairImageView];

  if (v3)
  {
    v4 = [(LocationRefinementViewController *)self mapView];
    v5 = [(LocationRefinementViewController *)self mapView];
    [v5 centerCoordinate];
    v7 = v6;
    v9 = v8;
    v10 = [(LocationRefinementViewController *)self mapView];
    [v4 convertCoordinate:v10 toPointToView:{v7, v9}];
    v12 = v11;
    v14 = v13;

    v15 = [(LocationRefinementViewController *)self mapView];
    v16 = [(LocationRefinementViewController *)self mapView];
    [v16 center];
    v18 = v17;
    v20 = v19;
    v21 = [(LocationRefinementViewController *)self mapView];
    v22 = [v21 superview];
    [v15 convertPoint:v22 fromView:{v18, v20}];
    v24 = v23;
    v26 = v25;

    v27 = v12 - v24;
    if (__isfinited())
    {
      v28 = v14 - v26;
      if (__isfinited())
      {
        v29 = [(LocationRefinementViewController *)self crosshairXConstraint];
        [v29 setConstant:v27];

        v30 = [(LocationRefinementViewController *)self crosshairYConstraint];
        [v30 setConstant:v28];
      }
    }
  }
}

- (void)setSelectedCoordinate:(CLLocationCoordinate2D)a3 animated:(BOOL)a4
{
  v4 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  if ([(LocationRefinementViewController *)self visible])
  {
    v10 = [(LocationRefinementViewController *)self mapView];
    [v10 setCenterCoordinate:v4 animated:{latitude, longitude}];
  }

  else if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    v10 = [(LocationRefinementViewController *)self initialCamera];
    [v10 setCenterCoordinate:{latitude, longitude}];
  }

  else
  {
    v10 = objc_alloc_init(MKMapCamera);
    v8 = [(LocationRefinementViewController *)self initialCamera];
    if (v8)
    {
      v9 = [(LocationRefinementViewController *)self initialCamera];
      [v9 altitude];
      [v10 setAltitude:?];
    }

    else
    {
      [v10 setAltitude:1000.0];
    }

    [(LocationRefinementViewController *)self setInitialCamera:v10];
    [(LocationRefinementViewController *)self setNeedsInitialCameraPosition:1];
    [v10 setCenterCoordinate:{latitude, longitude}];
  }
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  v2 = [(LocationRefinementViewController *)self mapView];
  [v2 centerCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setInstructionsText:(id)a3
{
  objc_storeStrong(&self->_instructionsText, a3);
  v5 = a3;
  v6 = [(LocationRefinementViewController *)self instructionsLabel];
  [v6 setText:v5];
}

- (void)updateLocateMeButtonState
{
  v3 = +[MKLocationManager sharedLocationManager];
  v4 = [v3 isLocationServicesEnabled];

  v5 = +[MKLocationManager sharedLocationManager];
  v6 = [v5 isAuthorizedForPreciseLocation];

  [(UIVisualEffectView *)self->_buttonContainerView setHidden:v4 & v6 ^ 1];
  snapToUserLocationButton = self->_snapToUserLocationButton;
  v8 = [(LocationRefinementViewController *)self mapView];
  -[UIButton setEnabled:](snapToUserLocationButton, "setEnabled:", [v8 hasUserLocation]);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillDisappear:a3];
  [(LocationRefinementViewController *)self setVisible:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(LocationRefinementViewController *)self setVisible:1];
  [(LocationRefinementViewController *)self applyInitialCameraPosition];
  [(LocationRefinementViewController *)self applyInitialZoomLevel];
  v5.receiver = self;
  v5.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v5 viewDidAppear:v3];
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillAppear:a3];
  [(LocationRefinementViewController *)self updateLocateMeButtonState];
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
      v9 = [(LocationRefinementViewController *)self mapView];
      [v9 centerCoordinate];
      v6 = v10;
      v8 = v11;
    }

    v12 = [(LocationRefinementViewController *)self mapView];
    [(LocationRefinementViewController *)self initialMapViewZoomLevel];
    [v12 setCenterCoordinate:0 zoomLevel:v6 animated:{v8, v13}];

    [(LocationRefinementViewController *)self setInitialMapViewZoomLevel:-1.0];
  }
}

- (void)applyInitialCameraPosition
{
  if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    [(LocationRefinementViewController *)self setNeedsInitialCameraPosition:0];
    initialCamera = self->_initialCamera;
    v4 = [(LocationRefinementViewController *)self mapView];
    [v4 setCamera:initialCamera];
  }
}

- (void)viewDidLayoutSubviews
{
  if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    v3 = [(LocationRefinementViewController *)self instructionsContainer];
    [v3 frame];
    MaxY = CGRectGetMaxY(v9);
    v5 = [(LocationRefinementViewController *)self mapView];
    [v5 frame];
    v6 = MaxY - CGRectGetMinY(v10);
    v7 = [(LocationRefinementViewController *)self mapView];
    [v7 _setEdgeInsets:{v6, 0.0, 0.0, 0.0}];
  }

  [(LocationRefinementViewController *)self applyInitialCameraPosition];
  [(LocationRefinementViewController *)self applyInitialZoomLevel];
  v8.receiver = self;
  v8.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v8 viewDidLayoutSubviews];
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
}

- (id)crosshairImage
{
  v2 = [(LocationRefinementViewController *)self crosshairType];
  v3 = @"crosshair_marker";
  if (v2 == 2)
  {
    v3 = @"crosshair_work";
  }

  if (v2 == 1)
  {
    v4 = @"crosshair_home";
  }

  else
  {
    v4 = v3;
  }

  return [UIImage imageNamed:v4];
}

- (void)updateTheme
{
  v7.receiver = self;
  v7.super_class = LocationRefinementViewController;
  [(MapsThemeViewController *)&v7 updateTheme];
  v3 = [(LocationRefinementViewController *)self theme];
  v4 = [v3 controlBackgroundColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setBackgroundColor:v4];

  v5 = [(LocationRefinementViewController *)self theme];
  v6 = [v5 controlTintColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setTintColor:v6];
}

- (void)_contentSizeChanged
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [(UILabel *)self->_instructionsLabel setFont:v3];
}

- (void)viewDidLoad
{
  v161.receiver = self;
  v161.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v161 viewDidLoad];
  v3 = objc_alloc_init(MKMapView);
  mapView = self->_mapView;
  self->_mapView = v3;

  [(MKMapView *)self->_mapView _setEdgeInsets:44.0, 0.0, 0.0, 0.0];
  [(MKMapView *)self->_mapView setShowsAttribution:0];
  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  [(MKMapView *)self->_mapView setPitchEnabled:0];
  [(MKMapView *)self->_mapView setDelegate:self];
  v5 = [(MKMapView *)self->_mapView _panningGestureRecognizer];
  [v5 setMaximumNumberOfTouches:1];

  v6 = [(MKMapView *)self->_mapView _mapLayer];
  [v6 setStaysCenteredDuringPinch:1];

  v7 = [(MKMapView *)self->_mapView _mapLayer];
  [v7 setStaysCenteredDuringRotation:1];

  v8 = [(LocationRefinementViewController *)self view];
  [v8 addSubview:self->_mapView];

  v9 = objc_alloc_init(UIView);
  instructionsContainer = self->_instructionsContainer;
  self->_instructionsContainer = v9;

  v11 = [(LocationRefinementViewController *)self instructionsContainer];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(LocationRefinementViewController *)self view];
  v13 = [(LocationRefinementViewController *)self instructionsContainer];
  [v12 addSubview:v13];

  v14 = [UIVisualEffectView alloc];
  v15 = [UIBlurEffect effectWithStyle:6];
  v159 = [v14 initWithEffect:v15];

  [v159 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(LocationRefinementViewController *)self instructionsContainer];
  [v16 addSubview:v159];

  v160 = objc_alloc_init(NSMutableArray);
  v157 = [(LocationRefinementViewController *)self instructionsContainer];
  v143 = [v157 topAnchor];
  v148 = [(LocationRefinementViewController *)self view];
  v138 = [v148 safeAreaLayoutGuide];
  v133 = [v138 topAnchor];
  v129 = [v143 constraintEqualToAnchor:v133];
  v168[0] = v129;
  v125 = [(LocationRefinementViewController *)self instructionsContainer];
  v121 = [v125 leadingAnchor];
  v17 = [(LocationRefinementViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v121 constraintEqualToAnchor:v18];
  v168[1] = v19;
  v20 = [(LocationRefinementViewController *)self instructionsContainer];
  v21 = [v20 trailingAnchor];
  v22 = [(LocationRefinementViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v168[2] = v24;
  v25 = [NSArray arrayWithObjects:v168 count:3];
  [v160 addObjectsFromArray:v25];

  v26 = objc_alloc_init(UILabel);
  instructionsLabel = self->_instructionsLabel;
  self->_instructionsLabel = v26;

  [(UILabel *)self->_instructionsLabel setTextAlignment:1];
  [(UILabel *)self->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [(LocationRefinementViewController *)self instructionsText];
  [(UILabel *)self->_instructionsLabel setText:v28];

  v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [(UILabel *)self->_instructionsLabel setFont:v29];

  [(UILabel *)self->_instructionsLabel setLineBreakMode:0];
  v30 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_instructionsLabel setTextColor:v30];

  [(UILabel *)self->_instructionsLabel setNumberOfLines:0];
  v158 = [(UILabel *)self->_instructionsLabel font];
  [v158 _scaledValueForValue:27.0];
  v32 = v31 * 0.5 + -13.5;
  if (v31 <= 27.0)
  {
    v32 = 0.0;
  }

  v33 = v31 - v32;
  [(UILabel *)self->_instructionsLabel setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)self->_instructionsLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_instructionsLabel setMinimumScaleFactor:0.5];
  [(UIView *)self->_instructionsContainer addSubview:self->_instructionsLabel];
  v34 = [(UIView *)self->_instructionsContainer bottomAnchor];
  v35 = [(UILabel *)self->_instructionsLabel lastBaselineAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];
  instructionsContainerBottomConstraint = self->_instructionsContainerBottomConstraint;
  self->_instructionsContainerBottomConstraint = v36;

  v144 = [(UILabel *)self->_instructionsLabel leadingAnchor];
  v149 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  v139 = [v149 leadingAnchor];
  v134 = [v144 constraintEqualToAnchor:v139];
  v167[0] = v134;
  v38 = [(UILabel *)self->_instructionsLabel trailingAnchor];
  v39 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  v40 = [v39 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  v167[1] = v41;
  v42 = [(UILabel *)self->_instructionsLabel firstBaselineAnchor];
  v43 = [(UIView *)self->_instructionsContainer topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v33];
  v45 = self->_instructionsContainerBottomConstraint;
  v167[2] = v44;
  v167[3] = v45;
  v46 = [NSArray arrayWithObjects:v167 count:4];
  [v160 addObjectsFromArray:v46];

  v150 = [v159 topAnchor];
  v153 = [(LocationRefinementViewController *)self instructionsContainer];
  v145 = [v153 topAnchor];
  v140 = [v150 constraintEqualToAnchor:v145];
  v166[0] = v140;
  v130 = [v159 leadingAnchor];
  v135 = [(LocationRefinementViewController *)self instructionsContainer];
  v126 = [v135 leadingAnchor];
  v122 = [v130 constraintEqualToAnchor:v126];
  v166[1] = v122;
  v47 = [v159 trailingAnchor];
  v48 = [(LocationRefinementViewController *)self instructionsContainer];
  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  v166[2] = v50;
  v51 = [v159 bottomAnchor];
  v52 = [(LocationRefinementViewController *)self instructionsContainer];
  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];
  v166[3] = v54;
  v55 = [NSArray arrayWithObjects:v166 count:4];
  [v160 addObjectsFromArray:v55];

  v151 = [(MKMapView *)self->_mapView leadingAnchor];
  v154 = [(LocationRefinementViewController *)self view];
  v146 = [v154 leadingAnchor];
  v141 = [v151 constraintEqualToAnchor:v146];
  v165[0] = v141;
  v131 = [(MKMapView *)self->_mapView trailingAnchor];
  v136 = [(LocationRefinementViewController *)self view];
  v127 = [v136 trailingAnchor];
  v123 = [v131 constraintEqualToAnchor:v127];
  v165[1] = v123;
  v119 = [(MKMapView *)self->_mapView topAnchor];
  v56 = [(LocationRefinementViewController *)self view];
  v57 = [v56 topAnchor];
  v58 = [v119 constraintEqualToAnchor:v57];
  v165[2] = v58;
  v59 = [(MKMapView *)self->_mapView bottomAnchor];
  v60 = [(LocationRefinementViewController *)self view];
  v61 = [v60 bottomAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];
  v165[3] = v62;
  v63 = [NSArray arrayWithObjects:v165 count:4];
  [(LocationRefinementViewController *)self setMapViewConstraints:v63];

  v64 = [(LocationRefinementViewController *)self mapViewConstraints];
  [v160 addObjectsFromArray:v64];

  if (self->_crosshairType != 4)
  {
    v65 = [UIImageView alloc];
    v66 = [(LocationRefinementViewController *)self crosshairImage];
    v67 = [v65 initWithImage:v66];
    crosshairImageView = self->_crosshairImageView;
    self->_crosshairImageView = v67;

    [(UIImageView *)self->_crosshairImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_crosshairImageView setHidden:1];
    v69 = [(LocationRefinementViewController *)self mapView];
    [v69 addSubview:self->_crosshairImageView];

    v70 = [(UIImageView *)self->_crosshairImageView centerXAnchor];
    v71 = [(MKMapView *)self->_mapView centerXAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    crosshairXConstraint = self->_crosshairXConstraint;
    self->_crosshairXConstraint = v72;

    v74 = [(UIImageView *)self->_crosshairImageView centerYAnchor];
    v75 = [(MKMapView *)self->_mapView centerYAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    crosshairYConstraint = self->_crosshairYConstraint;
    self->_crosshairYConstraint = v76;

    [(LocationRefinementViewController *)self updateCrosshairConstraints];
    v78 = self->_crosshairYConstraint;
    v164[0] = self->_crosshairXConstraint;
    v164[1] = v78;
    v79 = [NSArray arrayWithObjects:v164 count:2];
    [v160 addObjectsFromArray:v79];
  }

  v80 = [MapsTheme visualEffectViewAllowingBlur:1];
  buttonContainerView = self->_buttonContainerView;
  self->_buttonContainerView = v80;

  [(UIVisualEffectView *)self->_buttonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_buttonContainerView setClipsToBounds:1];
  v82 = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [v82 setCornerRadius:10.0];

  v83 = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [v83 setMaskedCorners:15];

  v84 = [(LocationRefinementViewController *)self view];
  [v84 addSubview:self->_buttonContainerView];

  objc_storeStrong(&self->_snapToUserLocationContainerView, self->_buttonContainerView);
  v85 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  v86 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToAnchor:v87 constant:-12.0];
  userLocationButtonBottomConstraint = self->_userLocationButtonBottomConstraint;
  self->_userLocationButtonBottomConstraint = v88;

  v90 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  v91 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  v92 = [v91 leadingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92 constant:12.0];
  v94 = self->_userLocationButtonBottomConstraint;
  v163[0] = v93;
  v163[1] = v94;
  v95 = [NSArray arrayWithObjects:v163 count:2];
  [v160 addObjectsFromArray:v95];

  v96 = [UIButton buttonWithType:0];
  snapToUserLocationButton = self->_snapToUserLocationButton;
  self->_snapToUserLocationButton = v96;

  [(UIButton *)self->_snapToUserLocationButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v98 = self->_snapToUserLocationButton;
  v99 = +[MapsTheme locationImage];
  [(UIButton *)v98 setImage:v99 forState:0];

  [(UIButton *)self->_snapToUserLocationButton _setContinuousCornerRadius:10.0];
  v100 = +[UIScreen mainScreen];
  [v100 nativeScale];
  v102 = 1.0 / v101;
  v103 = [(UIButton *)self->_snapToUserLocationButton layer];
  [v103 setBorderWidth:v102];

  v104 = [(UIButton *)self->_snapToUserLocationButton theme];
  v105 = [v104 hairlineColor];
  v106 = [v105 CGColor];
  v107 = [(UIButton *)self->_snapToUserLocationButton layer];
  [v107 setBorderColor:v106];

  [(UIButton *)self->_snapToUserLocationButton addTarget:self action:"recenterMapView" forControlEvents:64];
  v108 = [(UIVisualEffectView *)self->_buttonContainerView contentView];
  [v108 addSubview:self->_snapToUserLocationButton];

  v156 = [(UIButton *)self->_snapToUserLocationButton leadingAnchor];
  v155 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  v152 = [v156 constraintEqualToAnchor:v155];
  v162[0] = v152;
  v147 = [(UIButton *)self->_snapToUserLocationButton trailingAnchor];
  v142 = [(UIVisualEffectView *)self->_buttonContainerView trailingAnchor];
  v137 = [v147 constraintEqualToAnchor:v142];
  v162[1] = v137;
  v132 = [(UIButton *)self->_snapToUserLocationButton topAnchor];
  v128 = [(UIVisualEffectView *)self->_buttonContainerView topAnchor];
  v124 = [v132 constraintEqualToAnchor:v128];
  v162[2] = v124;
  v120 = [(UIButton *)self->_snapToUserLocationButton bottomAnchor];
  v118 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  v109 = [v120 constraintEqualToAnchor:v118];
  v162[3] = v109;
  v110 = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v111 = [v110 constraintEqualToConstant:50.0];
  v162[4] = v111;
  v112 = [(UIButton *)self->_snapToUserLocationButton widthAnchor];
  v113 = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];
  v162[5] = v114;
  v115 = [NSArray arrayWithObjects:v162 count:6];
  [v160 addObjectsFromArray:v115];

  [NSLayoutConstraint activateConstraints:v160];
  v116 = +[NSNotificationCenter defaultCenter];
  [v116 addObserver:self selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(LocationRefinementViewController *)self updateLocateMeButtonState];
  [(LocationRefinementViewController *)self setViewDidLoadComplete:1];
  v117 = +[NSNotificationCenter defaultCenter];
  [v117 addObserver:self selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (LocationRefinementViewController)initWithCamera:(id)a3 crosshairType:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = LocationRefinementViewController;
  v7 = [(LocationRefinementViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    if (v6)
    {
      [v6 centerCoordinate];
      if (CLLocationCoordinate2DIsValid(v12))
      {
        v8 = [v6 copy];
        initialCamera = v7->_initialCamera;
        v7->_initialCamera = v8;

        [(MKMapCamera *)v7->_initialCamera setPitch:0.0];
      }
    }

    v7->_needsInitialCameraPosition = v7->_initialCamera != 0;
    v7->_initialMapViewZoomLevel = -1.0;
    v7->_crosshairType = a4;
  }

  return v7;
}

- (LocationRefinementViewController)initWithCamera:(id)a3 showCrosshair:(BOOL)a4
{
  if (a4)
  {
    return [(LocationRefinementViewController *)self initWithCamera:a3 crosshairType:0];
  }

  else
  {
    return [(LocationRefinementViewController *)self initWithCamera:a3 crosshairType:4];
  }
}

- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5
{
  if (a5 == 1)
  {
    v6 = [(LocationRefinementViewController *)self mapView:a3];
    v7 = [(LocationRefinementViewController *)self mapView];
    [v7 centerCoordinate];
    v9 = v8;
    v11 = v10;
    v12 = [(LocationRefinementViewController *)self mapView];
    [v6 convertCoordinate:v12 toPointToView:{v9, v11}];
    x = v13;
    y = v15;
  }

  else
  {
    y = a4.y;
    x = a4.x;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(LocationRefinementViewController *)self crosshairImageView];
  [v6 setHidden:0];

  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  v7 = [(LocationRefinementViewController *)self mapViewDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(LocationRefinementViewController *)self mapViewDelegate];
    [v9 mapViewDidFinishRenderingMap:v10 fullyRendered:v4];
  }
}

- (void)mapViewDidFinishLoadingMap:(id)a3
{
  v7 = a3;
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  v4 = [(LocationRefinementViewController *)self mapViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(LocationRefinementViewController *)self mapViewDelegate];
    [v6 mapViewDidFinishLoadingMap:v7];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  [(LocationRefinementViewController *)self updateCrosshairConstraints];
  v6 = [(LocationRefinementViewController *)self mapViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(LocationRefinementViewController *)self mapViewDelegate];
    [v8 mapView:v9 regionDidChangeAnimated:v4];
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([(LocationRefinementViewController *)self delegateProtocolHasInstanceMethod:?]&& ([(LocationRefinementViewController *)self mapViewDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(LocationRefinementViewController *)self mapViewDelegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LocationRefinementViewController;
    v7 = [(LocationRefinementViewController *)&v9 forwardingTargetForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = LocationRefinementViewController;
  if ([(LocationRefinementViewController *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([(LocationRefinementViewController *)self delegateProtocolHasInstanceMethod:a3])
  {
    v6 = [(LocationRefinementViewController *)self mapViewDelegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)delegateProtocolHasInstanceMethod:(SEL)a3
{
  if ([(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegate hasInstanceMethod:a3])
  {
    return 1;
  }

  return [(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegatePrivate hasInstanceMethod:a3];
}

- (BOOL)protocol:(id)a3 hasInstanceMethod:(SEL)a4
{
  v5 = a3;
  v6 = 1;
  if (!protocol_getMethodDescription(v5, a4, 1, 1).name)
  {
    v6 = protocol_getMethodDescription(v5, a4, 0, 1).name != 0;
  }

  return v6;
}

@end