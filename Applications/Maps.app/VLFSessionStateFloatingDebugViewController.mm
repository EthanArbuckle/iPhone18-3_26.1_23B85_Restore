@interface VLFSessionStateFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (VLFSessionStateFloatingDebugViewController)sharedInstance;
- (ARSession)session;
- (VLFSessionTask)vlfSessionTask;
- (id)additionalLongPressActions;
- (id)tintColor;
- (void)attach;
- (void)detach;
- (void)showVLFDebugUIButtonTapped:(id)tapped;
- (void)startDebugInfoRefreshTimer;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation VLFSessionStateFloatingDebugViewController

- (id)additionalLongPressActions
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100A51ECC;
  v8 = &unk_101658AF0;
  objc_copyWeak(&v9, &location);
  v2 = [UIAlertAction actionWithTitle:@"Show VLF UI" style:0 handler:&v5];
  v11 = v2;
  v3 = [NSArray arrayWithObjects:&v11 count:1, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (void)showVLFDebugUIButtonTapped:(id)tapped
{
  vlfSessionTask = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  [vlfSessionTask showVLFUI];

  v4 = +[VLFSessionUsageTracker sharedInstance];
  [v4 registerUserWasShownCallout];
}

- (void)startDebugInfoRefreshTimer
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100A5208C;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:0.5];
  [(VLFSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateDebugText
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A528D8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = +[NSMutableString string];
  if (qword_10195E288 != -1)
  {
    dispatch_once(&qword_10195E288, &stru_101632790);
  }

  v5 = qword_10195E290;
  v6 = +[NSDate date];
  v7 = [v5 stringFromDate:v6];
  [v4 appendFormat:@"%@\n\n", v7];

  v8 = +[VLFSession lastGeoTrackingStatus];
  [v8 state];
  v9 = NSStringFromARGeoTrackingState();
  v10 = +[VLFSession lastGeoTrackingStatus];
  [v10 stateReason];
  v11 = NSStringFromARGeoTrackingStateReason();
  v12 = +[VLFSession lastGeoTrackingStatus];
  [v12 accuracy];
  v13 = NSStringFromARGeoTrackingAccuracy();
  [v4 appendFormat:@"ARGeoTrackingStatus:\nstate: %@\nreason: %@\naccuracy: %@\n\n", v9, v11, v13];

  UInteger = GEOConfigGetUInteger();
  v15 = @"AND";
  if (!UInteger)
  {
    v15 = @"OR";
  }

  [v4 appendFormat:@"Current VLF success criteria: %@\n\n", v15];
  v16 = +[VLFSession lastLocation];
  if ([v16 isCoordinateFused])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v4 appendFormat:@"Current location: %@\nisCoordinateFused:%@\n\n", v16, v17];
  isConnectedToInternalAppleNetwork = [(VLFSessionStateFloatingDebugViewController *)self isConnectedToInternalAppleNetwork];
  if (isConnectedToInternalAppleNetwork)
  {
    isConnectedToInternalAppleNetwork2 = [(VLFSessionStateFloatingDebugViewController *)self isConnectedToInternalAppleNetwork];
    if ([isConnectedToInternalAppleNetwork2 BOOLValue])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    [v4 appendFormat:@"Connected to internal apple network: %@\n\n", v20];
  }

  else
  {
    [v4 appendFormat:@"Connected to internal apple network: %@\n\n", @"unknown"];
  }

  session = [(VLFSessionStateFloatingDebugViewController *)self session];
  configuration = [session configuration];

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [v4 appendFormat:@"Current configuration: %@\n", v24];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = [configuration templateConfiguration];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v4 appendFormat:@"Template configuration: %@\n", v27];
  }

  v73 = configuration;
  [v4 appendFormat:@"\nCurrent state:"];
  session2 = [(VLFSessionStateFloatingDebugViewController *)self session];
  state = [session2 state];

  if (state <= 2)
  {
    [v4 appendFormat:*(&off_1016327F0 + state)];
  }

  v30 = +[MapsARSessionManager sharedManager];
  currentSessionOwner = [v30 currentSessionOwner];

  [v4 appendFormat:@"\nCurrent session owner: %@\n", currentSessionOwner];
  [v4 appendFormat:@"\nAll session owners:\n"];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v32 = +[MapsARSessionManager sharedManager];
  allSessionOwners = [v32 allSessionOwners];

  v34 = [allSessionOwners countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v81;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v81 != v36)
        {
          objc_enumerationMutation(allSessionOwners);
        }

        [v4 appendFormat:@"%@\n", *(*(&v80 + 1) + 8 * i)];
      }

      v35 = [allSessionOwners countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v35);
  }

  vlfSessionTask = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  stateManager = [vlfSessionTask stateManager];
  currentState = [stateManager currentState];
  v74 = v16;
  v72 = currentSessionOwner;
  if (currentState > 2)
  {
    v41 = @"?";
  }

  else
  {
    v41 = *(&off_101632808 + currentState);
  }

  vlfSessionTask2 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  stateManager2 = [vlfSessionTask2 stateManager];
  currentState2 = [stateManager2 currentState];
  v45 = @"Off";
  if (currentState2 == 1)
  {
    v45 = @"Puck";
  }

  if (currentState2 == 2)
  {
    v45 = @"PuckAndBanner";
  }

  [v4 appendFormat:@"\nCurrent UI state: \n%@ %@\n", v41, v45];

  selfCopy = self;
  vlfSessionTask3 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  stateManager3 = [vlfSessionTask3 stateManager];
  allMonitors = [stateManager3 allMonitors];
  allObjects = [allMonitors allObjects];
  v50 = [allObjects sortedArrayUsingComparator:&stru_1016327D0];

  [v4 appendFormat:@"\nState monitors:\n"];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v51 = v50;
  v52 = [v51 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v77;
    do
    {
      for (j = 0; j != v53; j = j + 1)
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v76 + 1) + 8 * j);
        state2 = [v56 state];
        v58 = @"?";
        if (state2 <= 2)
        {
          v58 = *(&off_101632808 + state2);
        }

        v59 = [v56 debugDescription];
        [v4 appendFormat:@"%@ %@\n", v58, v59];
      }

      v53 = [v51 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v53);
  }

  v60 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController = [v60 platformController];
  chromeViewController = [platformController chromeViewController];
  userLocationView = [chromeViewController userLocationView];
  [userLocationView _locationAccuracyInScreenPoints];
  [v4 appendFormat:@"\nlocationAccuracyInScreenPoints: %f\n", v64];

  v65 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController2 = [v65 platformController];
  chromeViewController2 = [platformController2 chromeViewController];
  mapView = [chromeViewController2 mapView];
  v69 = mapView;
  if (mapView)
  {
    [mapView _userTrackingBehavior];
  }

  v70 = VKStringForAnnotationTrackingBehavior();
  [v4 appendFormat:@"\nuserTrackingBehavior: %@\n", v70];

  debugInfoLabel = [(VLFSessionStateFloatingDebugViewController *)selfCopy debugInfoLabel];
  [debugInfoLabel setText:v4];
}

- (ARSession)session
{
  v2 = +[MapsARSessionManager sharedManager];
  session = [v2 session];

  return session;
}

- (VLFSessionTask)vlfSessionTask
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController = [v2 platformController];
  auxiliaryTasksManager = [platformController auxiliaryTasksManager];
  v5 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

  return v5;
}

- (void)detach
{
  v3.receiver = self;
  v3.super_class = VLFSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 detach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:@"kVLFSessionStateFloatingDebugViewControllerAttachedKey"];
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = VLFSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 attach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"kVLFSessionStateFloatingDebugViewControllerAttachedKey"];
}

- (id)tintColor
{
  v2 = +[UIColor blueColor];
  v3 = [v2 colorWithAlphaComponent:0.699999988];

  return v3;
}

- (void)updateViewForCurrentState
{
  v6.receiver = self;
  v6.super_class = VLFSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v6 updateViewForCurrentState];
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (viewState == 1)
  {
    session = [(VLFSessionStateFloatingDebugViewController *)self session];
    [session _addObserver:self];

    [(VLFSessionStateFloatingDebugViewController *)self updateDebugText];
    [(VLFSessionStateFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!viewState)
  {
    [(VLFSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
    session2 = [(VLFSessionStateFloatingDebugViewController *)self session];
    [session2 _removeObserver:self];
  }
}

- (void)viewDidLoad
{
  v73.receiver = self;
  v73.super_class = VLFSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v73 viewDidLoad];
  v3 = [UIButton buttonWithType:1];
  [(VLFSessionStateFloatingDebugViewController *)self setShowVLFDebugUIButton:v3];

  showVLFDebugUIButton = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [showVLFDebugUIButton setTitle:@"Show VLF UI" forState:0];

  showVLFDebugUIButton2 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v6 = +[UIColor whiteColor];
  [showVLFDebugUIButton2 setTitleColor:v6 forState:0];

  showVLFDebugUIButton3 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  layer = [showVLFDebugUIButton3 layer];
  [layer setCornerRadius:5.0];

  v9 = +[UIColor grayColor];
  v10 = [v9 colorWithAlphaComponent:0.600000024];
  showVLFDebugUIButton4 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [showVLFDebugUIButton4 setBackgroundColor:v10];

  showVLFDebugUIButton5 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [showVLFDebugUIButton5 addTarget:self action:"showVLFDebugUIButtonTapped:" forControlEvents:64];

  showVLFDebugUIButton6 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [showVLFDebugUIButton6 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MapsFloatingDebugViewController *)self contentView];
  showVLFDebugUIButton7 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [contentView addSubview:showVLFDebugUIButton7];

  showVLFDebugUIButton8 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  leadingAnchor = [showVLFDebugUIButton8 leadingAnchor];
  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[0] = v63;
  showVLFDebugUIButton9 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  trailingAnchor = [showVLFDebugUIButton9 trailingAnchor];
  contentView3 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v75[1] = v53;
  showVLFDebugUIButton10 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  topAnchor = [showVLFDebugUIButton10 topAnchor];
  contentView4 = [(MapsFloatingDebugViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v75[2] = v20;
  showVLFDebugUIButton11 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  heightAnchor = [showVLFDebugUIButton11 heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:44.0];
  v75[3] = v23;
  v24 = [NSArray arrayWithObjects:v75 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(VLFSessionStateFloatingDebugViewController *)self setDebugInfoLabel:v25];

  v26 = +[UIColor clearColor];
  debugInfoLabel = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel setBackgroundColor:v26];

  v28 = +[UIColor whiteColor];
  debugInfoLabel2 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel2 setTextColor:v28];

  debugInfoLabel3 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel3 setNumberOfLines:0];

  debugInfoLabel4 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  debugInfoLabel5 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v33) = 1148846080;
  [debugInfoLabel5 setContentCompressionResistancePriority:1 forAxis:v33];

  debugInfoLabel6 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v35) = 1148846080;
  [debugInfoLabel6 setContentCompressionResistancePriority:0 forAxis:v35];

  contentView5 = [(MapsFloatingDebugViewController *)self contentView];
  debugInfoLabel7 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [contentView5 addSubview:debugInfoLabel7];

  debugInfoLabel8 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  leadingAnchor3 = [debugInfoLabel8 leadingAnchor];
  contentView6 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v74[0] = v64;
  debugInfoLabel9 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  trailingAnchor3 = [debugInfoLabel9 trailingAnchor];
  contentView7 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor4 = [contentView7 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v74[1] = v54;
  debugInfoLabel10 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  topAnchor3 = [debugInfoLabel10 topAnchor];
  showVLFDebugUIButton12 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  bottomAnchor = [showVLFDebugUIButton12 bottomAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v74[2] = v40;
  debugInfoLabel11 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  bottomAnchor2 = [debugInfoLabel11 bottomAnchor];
  contentView8 = [(MapsFloatingDebugViewController *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v74[3] = v45;
  v46 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v46];

  v47 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v48 = [UIImage systemImageNamed:@"arkit" withConfiguration:v47];
  v49 = [v48 imageWithRenderingMode:2];
  thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView setImage:v49];
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kVLFSessionStateFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (VLFSessionStateFloatingDebugViewController)sharedInstance
{
  if (qword_10195E280 != -1)
  {
    dispatch_once(&qword_10195E280, &stru_101632770);
  }

  v3 = qword_10195E278;

  return v3;
}

@end