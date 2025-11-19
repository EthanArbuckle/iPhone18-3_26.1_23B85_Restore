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
  v158 = [v14 initWithEffect:v15];

  [v158 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(LocationRefinementViewController *)self instructionsContainer];
  [v16 addSubview:v158];

  v159 = objc_alloc_init(NSMutableArray);
  v156 = [(LocationRefinementViewController *)self instructionsContainer];
  v142 = [v156 topAnchor];
  v147 = [(LocationRefinementViewController *)self view];
  v137 = [v147 safeAreaLayoutGuide];
  v132 = [v137 topAnchor];
  v128 = [v142 constraintEqualToAnchor:v132];
  v167[0] = v128;
  v124 = [(LocationRefinementViewController *)self instructionsContainer];
  v120 = [v124 leadingAnchor];
  v17 = [(LocationRefinementViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v120 constraintEqualToAnchor:v18];
  v167[1] = v19;
  v20 = [(LocationRefinementViewController *)self instructionsContainer];
  v21 = [v20 trailingAnchor];
  v22 = [(LocationRefinementViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v167[2] = v24;
  v25 = [NSArray arrayWithObjects:v167 count:3];
  [v159 addObjectsFromArray:v25];

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
  v157 = [(UILabel *)self->_instructionsLabel font];
  [v157 _scaledValueForValue:27.0];
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
  v33 = [(UIView *)self->_instructionsContainer bottomAnchor];
  v34 = [(UILabel *)self->_instructionsLabel lastBaselineAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:16.0];
  instructionsContainerBottomConstraint = self->_instructionsContainerBottomConstraint;
  self->_instructionsContainerBottomConstraint = v35;

  v143 = [(UILabel *)self->_instructionsLabel leadingAnchor];
  v148 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  v138 = [v148 leadingAnchor];
  v133 = [v143 constraintEqualToAnchor:v138];
  v166[0] = v133;
  v37 = [(UILabel *)self->_instructionsLabel trailingAnchor];
  v38 = [(UIView *)self->_instructionsContainer safeAreaLayoutGuide];
  v39 = [v38 trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v166[1] = v40;
  v41 = [(UILabel *)self->_instructionsLabel firstBaselineAnchor];
  v42 = [(UIView *)self->_instructionsContainer topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v32];
  v44 = self->_instructionsContainerBottomConstraint;
  v166[2] = v43;
  v166[3] = v44;
  v45 = [NSArray arrayWithObjects:v166 count:4];
  [v159 addObjectsFromArray:v45];

  v149 = [v158 topAnchor];
  v152 = [(LocationRefinementViewController *)self instructionsContainer];
  v144 = [v152 topAnchor];
  v139 = [v149 constraintEqualToAnchor:v144];
  v165[0] = v139;
  v129 = [v158 leadingAnchor];
  v134 = [(LocationRefinementViewController *)self instructionsContainer];
  v125 = [v134 leadingAnchor];
  v121 = [v129 constraintEqualToAnchor:v125];
  v165[1] = v121;
  v46 = [v158 trailingAnchor];
  v47 = [(LocationRefinementViewController *)self instructionsContainer];
  v48 = [v47 trailingAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  v165[2] = v49;
  v50 = [v158 bottomAnchor];
  v51 = [(LocationRefinementViewController *)self instructionsContainer];
  v52 = [v51 bottomAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  v165[3] = v53;
  v54 = [NSArray arrayWithObjects:v165 count:4];
  [v159 addObjectsFromArray:v54];

  v150 = [(MKMapView *)self->_mapView leadingAnchor];
  v153 = [(LocationRefinementViewController *)self view];
  v145 = [v153 leadingAnchor];
  v140 = [v150 constraintEqualToAnchor:v145];
  v164[0] = v140;
  v130 = [(MKMapView *)self->_mapView trailingAnchor];
  v135 = [(LocationRefinementViewController *)self view];
  v126 = [v135 trailingAnchor];
  v122 = [v130 constraintEqualToAnchor:v126];
  v164[1] = v122;
  v118 = [(MKMapView *)self->_mapView topAnchor];
  v55 = [(LocationRefinementViewController *)self view];
  v56 = [v55 topAnchor];
  v57 = [v118 constraintEqualToAnchor:v56];
  v164[2] = v57;
  v58 = [(MKMapView *)self->_mapView bottomAnchor];
  v59 = [(LocationRefinementViewController *)self view];
  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  v164[3] = v61;
  v62 = [NSArray arrayWithObjects:v164 count:4];
  [(LocationRefinementViewController *)self setMapViewConstraints:v62];

  v63 = [(LocationRefinementViewController *)self mapViewConstraints];
  [v159 addObjectsFromArray:v63];

  if (self->_crosshairType != 4)
  {
    v64 = [UIImageView alloc];
    v65 = [(LocationRefinementViewController *)self crosshairImage];
    v66 = [v64 initWithImage:v65];
    crosshairImageView = self->_crosshairImageView;
    self->_crosshairImageView = v66;

    [(UIImageView *)self->_crosshairImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_crosshairImageView setHidden:1];
    v68 = [(LocationRefinementViewController *)self mapView];
    [v68 addSubview:self->_crosshairImageView];

    v69 = [(UIImageView *)self->_crosshairImageView centerXAnchor];
    v70 = [(MKMapView *)self->_mapView centerXAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    crosshairXConstraint = self->_crosshairXConstraint;
    self->_crosshairXConstraint = v71;

    v73 = [(UIImageView *)self->_crosshairImageView centerYAnchor];
    v74 = [(MKMapView *)self->_mapView centerYAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
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
  v81 = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [v81 setCornerRadius:10.0];

  v82 = [(UIVisualEffectView *)self->_buttonContainerView layer];
  [v82 setMaskedCorners:15];

  v83 = [(LocationRefinementViewController *)self view];
  [v83 addSubview:self->_buttonContainerView];

  objc_storeStrong(&self->_snapToUserLocationContainerView, self->_buttonContainerView);
  v84 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  v85 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  v86 = [v85 bottomAnchor];
  v87 = [v84 constraintEqualToAnchor:v86 constant:-12.0];
  userLocationButtonBottomConstraint = self->_userLocationButtonBottomConstraint;
  self->_userLocationButtonBottomConstraint = v87;

  v89 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  v90 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  v91 = [v90 leadingAnchor];
  v92 = [v89 constraintEqualToAnchor:v91 constant:12.0];
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
  v102 = [(UIButton *)self->_snapToUserLocationButton layer];
  [v102 setBorderWidth:v101];

  v103 = [(UIButton *)self->_snapToUserLocationButton theme];
  v104 = [v103 hairlineColor];
  v105 = [v104 CGColor];
  v106 = [(UIButton *)self->_snapToUserLocationButton layer];
  [v106 setBorderColor:v105];

  [(UIButton *)self->_snapToUserLocationButton addTarget:self action:"recenterMapView" forControlEvents:64];
  v107 = [(UIVisualEffectView *)self->_buttonContainerView contentView];
  [v107 addSubview:self->_snapToUserLocationButton];

  v155 = [(UIButton *)self->_snapToUserLocationButton leadingAnchor];
  v154 = [(UIVisualEffectView *)self->_buttonContainerView leadingAnchor];
  v151 = [v155 constraintEqualToAnchor:v154];
  v161[0] = v151;
  v146 = [(UIButton *)self->_snapToUserLocationButton trailingAnchor];
  v141 = [(UIVisualEffectView *)self->_buttonContainerView trailingAnchor];
  v136 = [v146 constraintEqualToAnchor:v141];
  v161[1] = v136;
  v131 = [(UIButton *)self->_snapToUserLocationButton topAnchor];
  v127 = [(UIVisualEffectView *)self->_buttonContainerView topAnchor];
  v123 = [v131 constraintEqualToAnchor:v127];
  v161[2] = v123;
  v119 = [(UIButton *)self->_snapToUserLocationButton bottomAnchor];
  v117 = [(UIVisualEffectView *)self->_buttonContainerView bottomAnchor];
  v108 = [v119 constraintEqualToAnchor:v117];
  v161[3] = v108;
  v109 = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v110 = [v109 constraintEqualToConstant:50.0];
  v161[4] = v110;
  v111 = [(UIButton *)self->_snapToUserLocationButton widthAnchor];
  v112 = [(UIButton *)self->_snapToUserLocationButton heightAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];
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
  v3 = [(LocationRefinementViewController *)self theme];
  v4 = [v3 controlBackgroundColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setBackgroundColor:v4];

  v5 = [(LocationRefinementViewController *)self theme];
  v6 = [v5 controlTintColor];
  [(UIVisualEffectView *)self->_snapToUserLocationContainerView setTintColor:v6];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillAppear:a3];
  [(LocationRefinementViewController *)self updateLocateMeButtonState];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewWillDisappear:a3];
  [(LocationRefinementViewController *)self setVisible:0];
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

- (void)setInstructionsText:(id)a3
{
  objc_storeStrong(&self->_instructionsText, a3);
  v5 = a3;
  v6 = [(LocationRefinementViewController *)self instructionsLabel];
  [v6 setText:v5];
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
    v28 = v14 - v26;
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v29 = [(LocationRefinementViewController *)self crosshairXConstraint];
      [v29 setConstant:v27];

      v30 = [(LocationRefinementViewController *)self crosshairYConstraint];
      [v30 setConstant:v28];
    }
  }
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

- (BOOL)delegateProtocolHasInstanceMethod:(SEL)a3
{
  if ([(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegate hasInstanceMethod:a3])
  {
    return 1;
  }

  return [(LocationRefinementViewController *)self protocol:&OBJC_PROTOCOL___MKMapViewDelegatePrivate hasInstanceMethod:a3];
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

@end