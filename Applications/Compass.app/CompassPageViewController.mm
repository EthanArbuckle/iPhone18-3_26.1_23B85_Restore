@interface CompassPageViewController
+ (void)initialize;
- (BOOL)_shouldHideCoordinateLabel;
- (CompassPageViewController)init;
- (void)_enableIdleTimer;
- (void)_forceCalibration;
- (void)_geocodeIfNecessary;
- (void)_openMaps;
- (void)_updateCoordinateLabel;
- (void)_updateDegreesLabel:(BOOL)label;
- (void)_updateDirectionLabel:(BOOL)label;
- (void)_updatePlaceLabelLayout;
- (void)_updatePlaceLabels;
- (void)activateConstraintSetForFontSize:(double)size;
- (void)addConstraints;
- (void)configureForTestingWithOptions:(id)options;
- (void)dealloc;
- (void)localeDidChange:(id)change;
- (void)locationAuthorizationDidChange:(int)change;
- (void)preferredFontSizeDidChange:(id)change;
- (void)setSharedLocationManager:(id)manager;
- (void)setUserLocation:(id)location;
- (void)startMotionManager;
- (void)testCleanup;
- (void)updateConsole;
- (void)updateDisplay:(id)display;
- (void)userDefaultsChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation CompassPageViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (MGGetBoolAnswer())
    {
      byte_10001B430 = 1;
    }

    else
    {
      v2 = +[NSUserDefaults standardUserDefaults];
      byte_10001B430 = [v2 BOOLForKey:@"DisplayAltitude"];
    }

    v3 = +[NSUserDefaults standardUserDefaults];
    v5 = @"kCompassHeadingFilterKey";
    v6 = &off_100014BB8;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [v3 registerDefaults:v4];
  }
}

- (CompassPageViewController)init
{
  v16.receiver = self;
  v16.super_class = CompassPageViewController;
  v2 = [(CompassPageViewController *)&v16 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 floatForKey:@"kCompassHeadingFilterKey"];
    v2->_headingFilter = v4;

    v5 = objc_alloc_init(NSMutableDictionary);
    formattedDegreeText = v2->_formattedDegreeText;
    v2->_formattedDegreeText = v5;

    v7 = +[NSUserDefaults standardUserDefaults];
    v2->_usesTrueNorth = [v7 BOOLForKey:@"kMagneticNorth"];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 addObserver:v2 forKeyPath:@"kMagneticNorth" options:1 context:0];

    v9 = objc_alloc_init(CompassMotionManager);
    manager = v2->_manager;
    v2->_manager = v9;

    [(CompassMotionManager *)v2->_manager setDeviceMotionUpdateInterval:0.0166666667];
    v2->_currentCompassAngle = 0.0;
    v11 = [[UIImpactFeedbackGenerator alloc] initWithStyle:2];
    heavyImpact = v2->_heavyImpact;
    v2->_heavyImpact = v11;

    v13 = [[UIImpactFeedbackGenerator alloc] initWithStyle:0];
    lightImpact = v2->_lightImpact;
    v2->_lightImpact = v13;
  }

  return v2;
}

- (void)viewDidLoad
{
  v77.receiver = self;
  v77.super_class = CompassPageViewController;
  [(CompassPageViewController *)&v77 viewDidLoad];
  v3 = sub_1000022DC();
  v4 = sub_1000024B4();
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = [[CompassView alloc] initWithFrame:0.0, 0.0, v7, v7];
  compassView = self->_compassView;
  self->_compassView = v8;

  [(CompassView *)self->_compassView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v14 = [v10 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  compassContainer = self->_compassContainer;
  self->_compassContainer = v14;

  v16 = +[UIColor blackColor];
  [(UIView *)self->_compassContainer setBackgroundColor:v16];

  [(UIView *)self->_compassContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_compassContainer setOpaque:1];
  LODWORD(v17) = 1148846080;
  [(UIView *)self->_compassContainer setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(UIView *)self->_compassContainer setContentCompressionResistancePriority:1 forAxis:v18];
  [(UIView *)self->_compassContainer addSubview:self->_compassView];
  view = [(CompassPageViewController *)self view];
  [view addSubview:self->_compassContainer];

  v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  labelContainer = self->_labelContainer;
  self->_labelContainer = v20;

  v22 = +[UIColor blackColor];
  [(UIView *)self->_labelContainer setBackgroundColor:v22];

  [(UIView *)self->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_labelContainer setOpaque:1];
  [(UIView *)self->_labelContainer _setVisualAltitude:_UIVisualAltitudeFloatAboveSuperview * 1.5];
  [(UIView *)self->_labelContainer _setVisualAltitudeBias:1.0, 0.660000026];
  view2 = [(CompassPageViewController *)self view];
  [view2 addSubview:self->_labelContainer];

  v24 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  degreesLabel = self->_degreesLabel;
  self->_degreesLabel = v24;

  v26 = +[UIColor whiteColor];
  [(UILabel *)self->_degreesLabel setTextColor:v26];

  v27 = +[UIColor blackColor];
  [(UILabel *)self->_degreesLabel setBackgroundColor:v27];

  [(UILabel *)self->_degreesLabel setLineBreakMode:2];
  [(UILabel *)self->_degreesLabel setFont:v3];
  [(UILabel *)self->_degreesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_degreesLabel setOpaque:1];
  [(UILabel *)self->_degreesLabel setHidden:1];
  LODWORD(v28) = 1148846080;
  [(UILabel *)self->_degreesLabel setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [(UILabel *)self->_degreesLabel setContentCompressionResistancePriority:1 forAxis:v29];
  [(UIView *)self->_labelContainer addSubview:self->_degreesLabel];
  v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  degreesSymbolLabel = self->_degreesSymbolLabel;
  self->_degreesSymbolLabel = v30;

  v32 = +[UIColor whiteColor];
  [(UILabel *)self->_degreesSymbolLabel setTextColor:v32];

  v33 = +[UIColor blackColor];
  [(UILabel *)self->_degreesSymbolLabel setBackgroundColor:v33];

  [(UILabel *)self->_degreesSymbolLabel setLineBreakMode:2];
  [(UILabel *)self->_degreesSymbolLabel setFont:v3];
  [(UILabel *)self->_degreesSymbolLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_degreesSymbolLabel setOpaque:1];
  [(UILabel *)self->_degreesSymbolLabel setHidden:1];
  LODWORD(v34) = 1148846080;
  [(UILabel *)self->_degreesSymbolLabel setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [(UILabel *)self->_degreesSymbolLabel setContentCompressionResistancePriority:1 forAxis:v35];
  [(UIView *)self->_labelContainer addSubview:self->_degreesSymbolLabel];
  v36 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  directionLabel = self->_directionLabel;
  self->_directionLabel = v36;

  v38 = +[UIColor whiteColor];
  [(UILabel *)self->_directionLabel setTextColor:v38];

  v39 = +[UIColor blackColor];
  [(UILabel *)self->_directionLabel setBackgroundColor:v39];

  v76 = v3;
  [(UILabel *)self->_directionLabel setFont:v3];
  [(UILabel *)self->_directionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_directionLabel setOpaque:1];
  [(UILabel *)self->_directionLabel setHidden:1];
  [(UILabel *)self->_directionLabel setAdjustsFontSizeToFitWidth:1];
  [(UIView *)self->_labelContainer addSubview:self->_directionLabel];
  v40 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v40;

  [(UIStackView *)self->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_labelStackView setAxis:1];
  [(UIStackView *)self->_labelStackView setBaselineRelativeArrangement:1];
  [v4 _compass_scaledValueForValue:20.0];
  [(UIStackView *)self->_labelStackView setSpacing:?];
  [(UIStackView *)self->_labelStackView setDistribution:0];
  [(UIStackView *)self->_labelStackView setAlignment:0];
  [(UIView *)self->_labelContainer addSubview:self->_labelStackView];
  [v4 lineHeight];
  v43 = [[CompassCopyableLabel alloc] initWithFrame:0.0, 0.0, v7, v42];
  coordinatesLabel = self->_coordinatesLabel;
  self->_coordinatesLabel = v43;

  v45 = +[UIColor whiteColor];
  [(CompassCopyableLabel *)self->_coordinatesLabel setTextColor:v45];

  [(CompassCopyableLabel *)self->_coordinatesLabel setTextAlignment:1];
  v46 = +[UIColor blackColor];
  [(CompassCopyableLabel *)self->_coordinatesLabel setBackgroundColor:v46];

  [(CompassCopyableLabel *)self->_coordinatesLabel setFont:v4];
  [(CompassCopyableLabel *)self->_coordinatesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CompassCopyableLabel *)self->_coordinatesLabel setOpaque:1];
  [(CompassCopyableLabel *)self->_coordinatesLabel setHidden:1];
  [(CompassCopyableLabel *)self->_coordinatesLabel setUserInteractionEnabled:1];
  v75 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_openMaps"];
  [(CompassCopyableLabel *)self->_coordinatesLabel addGestureRecognizer:?];
  [(UIStackView *)self->_labelStackView addArrangedSubview:self->_coordinatesLabel];
  v47 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  placeLabel = self->_placeLabel;
  self->_placeLabel = v47;

  v49 = +[UIColor whiteColor];
  [(UILabel *)self->_placeLabel setTextColor:v49];

  [(UILabel *)self->_placeLabel setTextAlignment:1];
  v50 = +[UIColor blackColor];
  [(UILabel *)self->_placeLabel setBackgroundColor:v50];

  [(UILabel *)self->_placeLabel setFont:v4];
  [(UILabel *)self->_placeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_placeLabel setOpaque:1];
  [(UILabel *)self->_placeLabel setHidden:1];
  [(UIStackView *)self->_labelStackView addArrangedSubview:self->_placeLabel];
  if (byte_10001B430 == 1)
  {
    [v4 lineHeight];
    v52 = [[UILabel alloc] initWithFrame:{0.0, 0.0, v7, v51}];
    altitudeLabel = self->_altitudeLabel;
    self->_altitudeLabel = v52;

    v54 = +[UIColor whiteColor];
    [(UILabel *)self->_altitudeLabel setTextColor:v54];

    [(UILabel *)self->_altitudeLabel setTextAlignment:1];
    v55 = +[UIColor blackColor];
    [(UILabel *)self->_altitudeLabel setBackgroundColor:v55];

    [(UILabel *)self->_altitudeLabel setFont:v4];
    [(UILabel *)self->_altitudeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_altitudeLabel setOpaque:1];
    [(UILabel *)self->_altitudeLabel setHidden:1];
    [(UIStackView *)self->_labelStackView addArrangedSubview:self->_altitudeLabel];
  }

  v56 = objc_alloc_init(UILayoutGuide);
  compassToTopLayoutGuide = self->_compassToTopLayoutGuide;
  self->_compassToTopLayoutGuide = v56;

  view3 = [(CompassPageViewController *)self view];
  [view3 addLayoutGuide:self->_compassToTopLayoutGuide];

  v59 = objc_alloc_init(UILayoutGuide);
  labelsToCompassLayoutGuide = self->_labelsToCompassLayoutGuide;
  self->_labelsToCompassLayoutGuide = v59;

  view4 = [(CompassPageViewController *)self view];
  [view4 addLayoutGuide:self->_labelsToCompassLayoutGuide];

  v62 = objc_alloc_init(UILayoutGuide);
  bottomToLabelsLayoutGuide = self->_bottomToLabelsLayoutGuide;
  self->_bottomToLabelsLayoutGuide = v62;

  view5 = [(CompassPageViewController *)self view];
  [view5 addLayoutGuide:self->_bottomToLabelsLayoutGuide];

  v65 = +[GEOPlatform sharedPlatform];
  if ([v65 isInternalInstall])
  {
    v66 = +[NSUserDefaults standardUserDefaults];
    v67 = [v66 BOOLForKey:@"CalibrationGestureEnabled"];

    if (!v67)
    {
      goto LABEL_7;
    }

    v65 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_forceCalibration"];
    [(CompassView *)self->_compassView addGestureRecognizer:v65];
  }

LABEL_7:
  v68 = +[NSUserDefaults standardUserDefaults];
  v69 = [v68 BOOLForKey:@"ConsoleEnabled"];

  if (v69)
  {
    v70 = [[UILabel alloc] initWithFrame:{0.0, 20.0, v7, 20.0}];
    consoleLabel = self->_consoleLabel;
    self->_consoleLabel = v70;

    v72 = [UIFont systemFontOfSize:10.0];
    [(UILabel *)self->_consoleLabel setFont:v72];

    v73 = +[UIColor orangeColor];
    [(UILabel *)self->_consoleLabel setTextColor:v73];

    [(UILabel *)self->_consoleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    view6 = [(CompassPageViewController *)self view];
    [view6 addSubview:self->_consoleLabel];
  }

  else
  {
    view6 = self->_consoleLabel;
    self->_consoleLabel = 0;
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    [(UILabel *)self->_degreesLabel setHidden:1];
    [(UILabel *)self->_degreesSymbolLabel setHidden:1];
    [(CompassCopyableLabel *)self->_coordinatesLabel setHidden:1];
    [(UILabel *)self->_altitudeLabel setHidden:1];
    [(UILabel *)self->_directionLabel setHidden:1];
    [(UILabel *)self->_placeLabel setHidden:1];
    [(UILabel *)self->_consoleLabel setHidden:1];
  }

  [(CompassPageViewController *)self addConstraints];
}

- (void)addConstraints
{
  if (!self->_constraints)
  {
    v3 = objc_alloc_init(NSMutableArray);
    constraints = self->_constraints;
    self->_constraints = v3;
  }

  heightAnchor = [(UILayoutGuide *)self->_compassToTopLayoutGuide heightAnchor];
  heightAnchor2 = [(UILayoutGuide *)self->_bottomToLabelsLayoutGuide heightAnchor];
  v7 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v8) = 1144750080;
  [v7 setPriority:v8];
  v74 = self->_constraints;
  leadingAnchor = [(UIView *)self->_compassContainer leadingAnchor];
  view = [(CompassPageViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v107 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v112[0] = v107;
  widthAnchor = [(UIView *)self->_compassContainer widthAnchor];
  view2 = [(CompassPageViewController *)self view];
  widthAnchor2 = [view2 widthAnchor];
  v103 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v112[1] = v103;
  widthAnchor3 = [(CompassView *)self->_compassView widthAnchor];
  widthAnchor4 = [(UIView *)self->_compassContainer widthAnchor];
  v100 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v112[2] = v100;
  topAnchor = [(CompassView *)self->_compassView topAnchor];
  topAnchor2 = [(UIView *)self->_compassContainer topAnchor];
  v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v112[3] = v97;
  bottomAnchor = [(CompassView *)self->_compassView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_compassContainer bottomAnchor];
  v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v112[4] = v94;
  heightAnchor3 = [(CompassView *)self->_compassView heightAnchor];
  widthAnchor5 = [(CompassView *)self->_compassView widthAnchor];
  v91 = [heightAnchor3 constraintEqualToAnchor:widthAnchor5];
  v112[5] = v91;
  leadingAnchor3 = [(UIView *)self->_labelContainer leadingAnchor];
  view3 = [(CompassPageViewController *)self view];
  leadingAnchor4 = [view3 leadingAnchor];
  v87 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v112[6] = v87;
  widthAnchor6 = [(UIView *)self->_labelContainer widthAnchor];
  view4 = [(CompassPageViewController *)self view];
  widthAnchor7 = [view4 widthAnchor];
  v83 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
  v112[7] = v83;
  topAnchor3 = [(UILayoutGuide *)self->_compassToTopLayoutGuide topAnchor];
  view5 = [(CompassPageViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v78 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v112[8] = v78;
  topAnchor5 = [(UIView *)self->_compassContainer topAnchor];
  bottomAnchor3 = [(UILayoutGuide *)self->_compassToTopLayoutGuide bottomAnchor];
  v75 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v112[9] = v75;
  topAnchor6 = [(UILayoutGuide *)self->_labelsToCompassLayoutGuide topAnchor];
  bottomAnchor4 = [(UIView *)self->_compassContainer bottomAnchor];
  v71 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v112[10] = v71;
  topAnchor7 = [(UIView *)self->_labelContainer topAnchor];
  bottomAnchor5 = [(UILayoutGuide *)self->_labelsToCompassLayoutGuide bottomAnchor];
  v68 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5];
  v112[11] = v68;
  topAnchor8 = [(UILayoutGuide *)self->_bottomToLabelsLayoutGuide topAnchor];
  bottomAnchor6 = [(UIView *)self->_labelContainer bottomAnchor];
  v65 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6];
  v112[12] = v65;
  view6 = [(CompassPageViewController *)self view];
  safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
  bottomAnchor7 = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor8 = [(UILayoutGuide *)self->_bottomToLabelsLayoutGuide bottomAnchor];
  v60 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v112[13] = v60;
  heightAnchor4 = [(UILayoutGuide *)self->_compassToTopLayoutGuide heightAnchor];
  heightAnchor5 = [(UILayoutGuide *)self->_labelsToCompassLayoutGuide heightAnchor];
  v57 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v112[14] = v57;
  heightAnchor6 = [(UILayoutGuide *)self->_bottomToLabelsLayoutGuide heightAnchor];
  v55 = [heightAnchor6 constraintGreaterThanOrEqualToConstant:40.0];
  v112[15] = v55;
  v111 = v7;
  v112[16] = v7;
  leadingAnchor5 = [(UILabel *)self->_degreesLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_labelContainer leadingAnchor];
  v52 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  v112[17] = v52;
  leadingAnchor7 = [(UILabel *)self->_degreesSymbolLabel leadingAnchor];
  trailingAnchor = [(UILabel *)self->_degreesLabel trailingAnchor];
  v49 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor];
  v112[18] = v49;
  leadingAnchor8 = [(UILabel *)self->_directionLabel leadingAnchor];
  trailingAnchor2 = [(UILabel *)self->_degreesSymbolLabel trailingAnchor];
  v46 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor2 constant:15.0];
  v112[19] = v46;
  view7 = [(CompassPageViewController *)self view];
  trailingAnchor3 = [view7 trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_directionLabel trailingAnchor];
  v42 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v112[20] = v42;
  centerXAnchor = [(UILabel *)self->_degreesSymbolLabel centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_labelContainer centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v112[21] = v39;
  topAnchor9 = [(UILabel *)self->_degreesLabel topAnchor];
  topAnchor10 = [(UIView *)self->_labelContainer topAnchor];
  v36 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v112[22] = v36;
  firstBaselineAnchor = [(UILabel *)self->_degreesSymbolLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_degreesLabel firstBaselineAnchor];
  v33 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v112[23] = v33;
  firstBaselineAnchor3 = [(UILabel *)self->_directionLabel firstBaselineAnchor];
  firstBaselineAnchor4 = [(UILabel *)self->_degreesLabel firstBaselineAnchor];
  v30 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
  v112[24] = v30;
  widthAnchor8 = [(UIStackView *)self->_labelStackView widthAnchor];
  widthAnchor9 = [(UIView *)self->_labelContainer widthAnchor];
  v10 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9];
  v112[25] = v10;
  topAnchor11 = [(UIStackView *)self->_labelStackView topAnchor];
  lastBaselineAnchor = [(UILabel *)self->_degreesLabel lastBaselineAnchor];
  v13 = [topAnchor11 constraintEqualToAnchor:lastBaselineAnchor constant:33.0];
  v112[26] = v13;
  bottomAnchor9 = [(UIView *)self->_labelContainer bottomAnchor];
  bottomAnchor10 = [(UIStackView *)self->_labelStackView bottomAnchor];
  v16 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v112[27] = v16;
  v17 = [NSArray arrayWithObjects:v112 count:28];
  [(NSMutableArray *)v74 addObjectsFromArray:v17];

  consoleLabel = self->_consoleLabel;
  if (consoleLabel)
  {
    v19 = self->_constraints;
    topAnchor12 = [(UILabel *)consoleLabel topAnchor];
    view8 = [(CompassPageViewController *)self view];
    safeAreaLayoutGuide3 = [view8 safeAreaLayoutGuide];
    topAnchor13 = [safeAreaLayoutGuide3 topAnchor];
    v24 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
    [(NSMutableArray *)v19 addObject:v24];
  }

  view9 = [(CompassPageViewController *)self view];
  [view9 addConstraints:self->_constraints];

  v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v26 pointSize];
  v28 = v27;

  [(CompassPageViewController *)self activateConstraintSetForFontSize:v28];
}

- (void)startMotionManager
{
  if (self->_usesTrueNorth && self->_canUseLocation)
  {
    v2 = 8;
  }

  else
  {
    v2 = 4;
  }

  [(CompassMotionManager *)self->_manager startDeviceMotionUpdatesUsingReferenceFrame:v2];
}

- (void)_updatePlaceLabels
{
  userLocation = self->_userLocation;
  if (userLocation)
  {
    objc_storeStrong(&self->_lastGeocodeLocation, userLocation);
    v4 = [[GEOLocation alloc] initWithCLLocation:self->_userLocation];
    latLng = [v4 latLng];
    [latLng setGtLog:1];

    v6 = +[GEOMapService sharedService];
    v7 = +[GEOMapService sharedService];
    defaultTraits = [v7 defaultTraits];
    v9 = [v6 ticketForReverseGeocodeLocation:v4 traits:defaultTraits];

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007A80;
    v11[3] = &unk_1000144D8;
    objc_copyWeak(&v12, &location);
    v10 = &_dispatch_main_q;
    [v9 submitWithHandler:v11 networkActivity:0 queue:&_dispatch_main_q];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UILabel *)self->_placeLabel setText:0];
    [(CompassPageViewController *)self _updatePlaceLabelLayout];

    [(CompassPageViewController *)self _updateCoordinateLabel];
  }
}

- (void)_updatePlaceLabelLayout
{
  [(UILabel *)self->_degreesLabel setHidden:0];
  [(UILabel *)self->_degreesSymbolLabel setHidden:0];
  text = [(UILabel *)self->_placeLabel text];

  if (text)
  {
    v4 = !self->_hasCalibration;
  }

  else
  {
    v4 = 0;
  }

  [(UILabel *)self->_directionLabel setHidden:v4];
  placeLabel = self->_placeLabel;

  [(UILabel *)placeLabel setHidden:text == 0];
}

- (void)_updateCoordinateLabel
{
  if ([(CompassPageViewController *)self _shouldHideCoordinateLabel])
  {
    [(CompassCopyableLabel *)self->_coordinatesLabel setHidden:1];
    altitudeLabel = self->_altitudeLabel;

    [(UILabel *)altitudeLabel setHidden:1];
  }

  else
  {
    [(CLLocation *)self->_userLocation coordinate];
    v5 = v4;
    v7 = v6;
    v23 = CreateCoordinateComponentString(0, v4, v6);
    v8 = CreateCoordinateComponentString(1, v5, v7);
    v9 = [NSString alloc];
    v10 = WebLocalizedString();
    v11 = [v9 initWithFormat:v10, v23, v8, 0];

    [(CompassCopyableLabel *)self->_coordinatesLabel setText:v11];
    [(CompassCopyableLabel *)self->_coordinatesLabel setHidden:0];
    if (byte_10001B430 == 1)
    {
      [(UILabel *)self->_altitudeLabel setHidden:0];
      [(CLLocation *)self->_userLocation altitude];
      v13 = v12;
      [(CLLocation *)self->_userLocation verticalAccuracy];
      if (v14 <= 0.0)
      {
        [(UILabel *)self->_altitudeLabel setText:0];
      }

      else
      {
        v15 = +[NSLocale currentLocale];
        v16 = [v15 objectForKey:NSLocaleUsesMetricSystem];
        bOOLValue = [v16 BOOLValue];

        v18 = v13 / 0.3048;
        if (bOOLValue)
        {
          v18 = v13;
        }

        v19 = [NSNumber numberWithInteger:10 * llround(v18 / 10.0)];
        v20 = [NSNumberFormatter localizedStringFromNumber:v19 numberStyle:0];

        v21 = WebLocalizedString();
        v22 = [NSString stringWithFormat:v21, v20];
        [(UILabel *)self->_altitudeLabel setText:v22];
      }
    }
  }
}

- (BOOL)_shouldHideCoordinateLabel
{
  [(CLLocation *)self->_userLocation coordinate];
  v3 = ([GEOLocationShifter isLocationShiftRequiredForCoordinate:?]& 1) != 0 || [(CLLocation *)self->_userLocation referenceFrame]== 2;
  if (self->_userLocation)
  {
    v4 = [(CLLocationManager *)self->_sharedLocationManager _limitsPrecision]| v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (void)updateConsole
{
  if (!self->_consoleLabel)
  {
    return;
  }

  userLocation = self->_userLocation;
  if (userLocation)
  {
    [(CLLocation *)userLocation horizontalAccuracy];
    v5 = v4;
    timestamp = [(CLLocation *)self->_userLocation timestamp];
    [timestamp timeIntervalSinceNow];
    v8 = [NSString stringWithFormat:@"± %.2fm %.0fs", v5, -v7];
  }

  else
  {
    v8 = @"No Location";
  }

  heading = [(CLLocationManager *)self->_sharedLocationManager heading];

  if (heading)
  {
    heading2 = [(CLLocationManager *)self->_sharedLocationManager heading];
    shortDescription = [heading2 shortDescription];
LABEL_13:
    v16 = shortDescription;

    goto LABEL_14;
  }

  deviceMotion = [(CompassMotionManager *)self->_manager deviceMotion];
  magneticFieldCalibrationLevel = [deviceMotion magneticFieldCalibrationLevel];

  if (magneticFieldCalibrationLevel != -1)
  {
    v20 = 0u;
    deviceMotion2 = [(CompassMotionManager *)self->_manager deviceMotion];
    v15 = deviceMotion2;
    if (deviceMotion2)
    {
      [deviceMotion2 magneticField];
    }

    else
    {
      v20 = 0u;
    }

    heading2 = [(CompassMotionManager *)self->_manager deviceMotion];
    shortDescription = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d, (%.2f, %.2f, %.2f)µT", [heading2 magneticFieldCalibrationLevel], v20, 0);
    goto LABEL_13;
  }

  v16 = 0;
LABEL_14:
  v17 = @"No Heading";
  if (v16)
  {
    v17 = v16;
  }

  v18 = v17;

  v19 = [NSString stringWithFormat:@"%@ : %@", v18, v8];

  [(UILabel *)self->_consoleLabel setText:v19];
}

- (void)_geocodeIfNecessary
{
  if (!self->_lastGeocodeLocation)
  {
    goto LABEL_4;
  }

  [(CLLocation *)self->_userLocation distanceFromLocation:?];
  v4 = v3;
  timestamp = [(CLLocation *)self->_userLocation timestamp];
  timestamp2 = [(CLLocation *)self->_lastGeocodeLocation timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v8 = fabs(v7);

  if (v8 > 60.0 || v4 > 1000.0)
  {
LABEL_4:

    [(CompassPageViewController *)self _updatePlaceLabels];
  }
}

- (void)preferredFontSizeDidChange:(id)change
{
  v6 = sub_1000024B4();
  [v6 pointSize];
  v5 = v4;
  [v6 _compass_scaledValueForValue:20.0];
  [(UIStackView *)self->_labelStackView setSpacing:?];
  [(UILabel *)self->_placeLabel setFont:v6];
  [(CompassCopyableLabel *)self->_coordinatesLabel setFont:v6];
  [(UILabel *)self->_altitudeLabel setFont:v6];
  [(CompassPageViewController *)self _updatePlaceLabelLayout];
  [(CompassPageViewController *)self activateConstraintSetForFontSize:v5];
  [(CompassView *)self->_compassView layoutSubviews];
}

- (void)localeDidChange:(id)change
{
  [(NSMutableDictionary *)self->_formattedDegreeText removeAllObjects];
  [(CompassPageViewController *)self _updateCoordinateLabel];

  [(CompassPageViewController *)self _updateHeadingLabels:1];
}

- (void)activateConstraintSetForFontSize:(double)size
{
  if (size <= 21.0)
  {
    altitudeLabel = self->_altitudeLabel;
  }

  else
  {
    view = [(CompassPageViewController *)self view];
    [view bounds];
    v6 = v5;
    view2 = [(CompassPageViewController *)self view];
    [view2 bounds];
    v9 = v6 / v8;

    altitudeLabel = self->_altitudeLabel;
    if (v9 >= 0.47)
    {
      v11 = 0.0;
      goto LABEL_6;
    }
  }

  v11 = 1.0;
LABEL_6:

  [(UILabel *)altitudeLabel setAlpha:v11];
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"kMagneticNorth"];

  [(NSTimer *)self->_compassIdleTimer invalidate];
  compassIdleTimer = self->_compassIdleTimer;
  self->_compassIdleTimer = 0;

  [(CompassMotionManager *)self->_manager stopDeviceMotionUpdates];
  v5.receiver = self;
  v5.super_class = CompassPageViewController;
  [(CompassPageViewController *)&v5 dealloc];
}

- (void)userDefaultsChanged:(id)changed
{
  v4 = +[NSUserDefaults standardUserDefaults];
  self->_usesTrueNorth = [v4 BOOLForKey:@"kMagneticNorth"];

  [(CompassPageViewController *)self startMotionManager];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 floatForKey:@"kCompassHeadingFilterKey"];
  self->_headingFilter = v5;
}

- (void)updateDisplay:(id)display
{
  deviceMotion = [(CompassMotionManager *)self->_manager deviceMotion];
  v4 = [deviceMotion magneticFieldCalibrationLevel] != 0;
  hasCalibration = self->_hasCalibration;
  if (hasCalibration != v4)
  {
    self->_hasCalibration = v4;
    [(CompassPageViewController *)self _updatePlaceLabelLayout];
  }

  [deviceMotion heading];
  [(CompassPageViewController *)self setCompassToAngle:hasCalibration != v4 force:?];
  [deviceMotion gravity];
  [(CompassPageViewController *)self setCrosshairLevelForData:?];
}

- (void)setSharedLocationManager:(id)manager
{
  managerCopy = manager;
  if (self->_sharedLocationManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_sharedLocationManager, manager);
    managerCopy = v6;
  }
}

- (void)locationAuthorizationDidChange:(int)change
{
  self->_canUseLocation = (change - 3) < 0xFFFFFFFE;
  [(CompassMotionManager *)self->_manager stopDeviceMotionUpdates];
  [(CompassPageViewController *)self startMotionManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007434;
  v5[3] = &unk_1000144B0;
  changeCopy = change;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_enableIdleTimer
{
  v2 = +[UIApplication sharedApplication];
  [v2 setIdleTimerDisabled:0];
}

- (void)setUserLocation:(id)location
{
  locationCopy = location;
  userLocation = self->_userLocation;
  if (userLocation != locationCopy)
  {
    self->_userLocation = 0;
    v7 = locationCopy;

    objc_storeStrong(&self->_userLocation, location);
    [(CompassPageViewController *)self _updateCoordinateLabel];
    if (v7 && userLocation)
    {
      [(CompassPageViewController *)self _geocodeIfNecessary];
    }

    else
    {
      [(CompassPageViewController *)self startMotionManager];
      [(CompassPageViewController *)self _updatePlaceLabels];
    }

    locationCopy = v7;
  }
}

- (void)_updateDegreesLabel:(BOOL)label
{
  LODWORD(v3) = vcvtmd_s64_f64(self->_currentCompassAngle);
  if (self->_currentDisplayHeading == v3 && !label)
  {
    return;
  }

  if (self->_hasCalibration)
  {
    self->_currentDisplayHeading = v3;
    v6 = [NSNumber numberWithUnsignedShort:v3];
    v14 = [(NSMutableDictionary *)self->_formattedDegreeText objectForKeyedSubscript:v6];
    if (!v14)
    {
      v7 = sub_100005FB0();
      v8 = [NSNumber numberWithUnsignedShort:v3];
      v14 = [v7 stringFromNumber:v8];

      [(NSMutableDictionary *)self->_formattedDegreeText setObject:v14 forKeyedSubscript:v6];
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_formattedDegreeText objectForKeyedSubscript:@"uncalibrated"];
    if (v9)
    {
      goto LABEL_12;
    }

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"--" value:&stru_1000148D0 table:0];

    [(NSMutableDictionary *)self->_formattedDegreeText setObject:v14 forKeyedSubscript:@"uncalibrated"];
  }

  v9 = v14;
LABEL_12:
  v15 = v9;
  [(UILabel *)self->_degreesLabel setText:v9];
  degreesSymbolLabel = self->_degreesSymbolLabel;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"°" value:&stru_1000148D0 table:0];
  [(UILabel *)degreesSymbolLabel setText:v12];
}

- (void)_updateDirectionLabel:(BOOL)label
{
  v4 = StringWithLocationDirection(self->_currentCompassAngle);
  [(UILabel *)self->_directionLabel setText:v4];
}

- (void)_openMaps
{
  [(CLLocation *)self->_userLocation coordinate];
  v4 = v3;
  [(CLLocation *)self->_userLocation coordinate];
  v6 = v5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v7 = qword_10001B438;
  v21 = qword_10001B438;
  if (!qword_10001B438)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10000823C;
    v16 = &unk_100014528;
    v17 = &v18;
    sub_10000823C(&v13);
    v7 = v19[3];
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  v9 = [[v7 alloc] initForMapFrameWithCenter:{v4, v6}];
  [v9 setUserTrackingMode:2];
  buildForWeb = [v9 buildForWeb];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v11 = qword_10001B448;
  v21 = qword_10001B448;
  if (!qword_10001B448)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000083FC;
    v16 = &unk_100014528;
    v17 = &v18;
    sub_1000083FC(&v13);
    v11 = v19[3];
  }

  v12 = v11;
  _Block_object_dispose(&v18, 8);
  [v11 _openDefaultNavigationWithURL:buildForWeb fromScene:0 completionHandler:0];
}

- (void)_forceCalibration
{
  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  if (isInternalInstall)
  {

    +[CUICalibration showCalibrationAlert];
  }
}

- (void)configureForTestingWithOptions:(id)options
{
  manager = self->_manager;
  optionsCopy = options;
  [(CompassMotionManager *)manager setConfiguredForTesting:1];
  LODWORD(manager) = [optionsCopy shouldSetBearing];

  if (manager)
  {
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 250000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007FA4;
    v7[3] = &unk_100014500;
    objc_copyWeak(&v8, &location);
    dispatch_after(v6, &_dispatch_main_q, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)testCleanup
{
  [(CompassMotionManager *)self->_manager setConfiguredForTesting:0];
  compassView = self->_compassView;

  [(CompassView *)compassView unsetBearing];
}

@end