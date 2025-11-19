@interface VLFSessionStateFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (VLFSessionStateFloatingDebugViewController)sharedInstance;
- (ARSession)session;
- (VLFSessionTask)vlfSessionTask;
- (id)additionalLongPressActions;
- (id)tintColor;
- (void)attach;
- (void)detach;
- (void)showVLFDebugUIButtonTapped:(id)a3;
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

- (void)showVLFDebugUIButtonTapped:(id)a3
{
  v3 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  [v3 showVLFUI];

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
  v18 = [(VLFSessionStateFloatingDebugViewController *)self isConnectedToInternalAppleNetwork];
  if (v18)
  {
    v19 = [(VLFSessionStateFloatingDebugViewController *)self isConnectedToInternalAppleNetwork];
    if ([v19 BOOLValue])
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

  v21 = [(VLFSessionStateFloatingDebugViewController *)self session];
  v22 = [v21 configuration];

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [v4 appendFormat:@"Current configuration: %@\n", v24];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v22 templateConfiguration];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v4 appendFormat:@"Template configuration: %@\n", v27];
  }

  v73 = v22;
  [v4 appendFormat:@"\nCurrent state:"];
  v28 = [(VLFSessionStateFloatingDebugViewController *)self session];
  v29 = [v28 state];

  if (v29 <= 2)
  {
    [v4 appendFormat:*(&off_1016327F0 + v29)];
  }

  v30 = +[MapsARSessionManager sharedManager];
  v31 = [v30 currentSessionOwner];

  [v4 appendFormat:@"\nCurrent session owner: %@\n", v31];
  [v4 appendFormat:@"\nAll session owners:\n"];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v32 = +[MapsARSessionManager sharedManager];
  v33 = [v32 allSessionOwners];

  v34 = [v33 countByEnumeratingWithState:&v80 objects:v86 count:16];
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
          objc_enumerationMutation(v33);
        }

        [v4 appendFormat:@"%@\n", *(*(&v80 + 1) + 8 * i)];
      }

      v35 = [v33 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v35);
  }

  v38 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  v39 = [v38 stateManager];
  v40 = [v39 currentState];
  v74 = v16;
  v72 = v31;
  if (v40 > 2)
  {
    v41 = @"?";
  }

  else
  {
    v41 = *(&off_101632808 + v40);
  }

  v42 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  v43 = [v42 stateManager];
  v44 = [v43 currentState];
  v45 = @"Off";
  if (v44 == 1)
  {
    v45 = @"Puck";
  }

  if (v44 == 2)
  {
    v45 = @"PuckAndBanner";
  }

  [v4 appendFormat:@"\nCurrent UI state: \n%@ %@\n", v41, v45];

  v75 = self;
  v46 = [(VLFSessionStateFloatingDebugViewController *)self vlfSessionTask];
  v47 = [v46 stateManager];
  v48 = [v47 allMonitors];
  v49 = [v48 allObjects];
  v50 = [v49 sortedArrayUsingComparator:&stru_1016327D0];

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
        v57 = [v56 state];
        v58 = @"?";
        if (v57 <= 2)
        {
          v58 = *(&off_101632808 + v57);
        }

        v59 = [v56 debugDescription];
        [v4 appendFormat:@"%@ %@\n", v58, v59];
      }

      v53 = [v51 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v53);
  }

  v60 = +[UIApplication _maps_keyMapsSceneDelegate];
  v61 = [v60 platformController];
  v62 = [v61 chromeViewController];
  v63 = [v62 userLocationView];
  [v63 _locationAccuracyInScreenPoints];
  [v4 appendFormat:@"\nlocationAccuracyInScreenPoints: %f\n", v64];

  v65 = +[UIApplication _maps_keyMapsSceneDelegate];
  v66 = [v65 platformController];
  v67 = [v66 chromeViewController];
  v68 = [v67 mapView];
  v69 = v68;
  if (v68)
  {
    [v68 _userTrackingBehavior];
  }

  v70 = VKStringForAnnotationTrackingBehavior();
  [v4 appendFormat:@"\nuserTrackingBehavior: %@\n", v70];

  v71 = [(VLFSessionStateFloatingDebugViewController *)v75 debugInfoLabel];
  [v71 setText:v4];
}

- (ARSession)session
{
  v2 = +[MapsARSessionManager sharedManager];
  v3 = [v2 session];

  return v3;
}

- (VLFSessionTask)vlfSessionTask
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  v3 = [v2 platformController];
  v4 = [v3 auxiliaryTasksManager];
  v5 = [v4 auxilaryTaskForClass:objc_opt_class()];

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
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (v3 == 1)
  {
    v5 = [(VLFSessionStateFloatingDebugViewController *)self session];
    [v5 _addObserver:self];

    [(VLFSessionStateFloatingDebugViewController *)self updateDebugText];
    [(VLFSessionStateFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!v3)
  {
    [(VLFSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
    v4 = [(VLFSessionStateFloatingDebugViewController *)self session];
    [v4 _removeObserver:self];
  }
}

- (void)viewDidLoad
{
  v73.receiver = self;
  v73.super_class = VLFSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v73 viewDidLoad];
  v3 = [UIButton buttonWithType:1];
  [(VLFSessionStateFloatingDebugViewController *)self setShowVLFDebugUIButton:v3];

  v4 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [v4 setTitle:@"Show VLF UI" forState:0];

  v5 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v6 = +[UIColor whiteColor];
  [v5 setTitleColor:v6 forState:0];

  v7 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v8 = [v7 layer];
  [v8 setCornerRadius:5.0];

  v9 = +[UIColor grayColor];
  v10 = [v9 colorWithAlphaComponent:0.600000024];
  v11 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [v11 setBackgroundColor:v10];

  v12 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [v12 addTarget:self action:"showVLFDebugUIButtonTapped:" forControlEvents:64];

  v13 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(MapsFloatingDebugViewController *)self contentView];
  v15 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  [v14 addSubview:v15];

  v71 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v67 = [v71 leadingAnchor];
  v69 = [(MapsFloatingDebugViewController *)self contentView];
  v65 = [v69 leadingAnchor];
  v63 = [v67 constraintEqualToAnchor:v65];
  v75[0] = v63;
  v61 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v57 = [v61 trailingAnchor];
  v59 = [(MapsFloatingDebugViewController *)self contentView];
  v55 = [v59 trailingAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v75[1] = v53;
  v16 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v17 = [v16 topAnchor];
  v18 = [(MapsFloatingDebugViewController *)self contentView];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v75[2] = v20;
  v21 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v22 = [v21 heightAnchor];
  v23 = [v22 constraintEqualToConstant:44.0];
  v75[3] = v23;
  v24 = [NSArray arrayWithObjects:v75 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(VLFSessionStateFloatingDebugViewController *)self setDebugInfoLabel:v25];

  v26 = +[UIColor clearColor];
  v27 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v27 setBackgroundColor:v26];

  v28 = +[UIColor whiteColor];
  v29 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v29 setTextColor:v28];

  v30 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v30 setNumberOfLines:0];

  v31 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v35) = 1148846080;
  [v34 setContentCompressionResistancePriority:0 forAxis:v35];

  v36 = [(MapsFloatingDebugViewController *)self contentView];
  v37 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v36 addSubview:v37];

  v72 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v68 = [v72 leadingAnchor];
  v70 = [(MapsFloatingDebugViewController *)self contentView];
  v66 = [v70 leadingAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v74[0] = v64;
  v62 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v58 = [v62 trailingAnchor];
  v60 = [(MapsFloatingDebugViewController *)self contentView];
  v56 = [v60 trailingAnchor];
  v54 = [v58 constraintEqualToAnchor:v56];
  v74[1] = v54;
  v52 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v51 = [v52 topAnchor];
  v38 = [(VLFSessionStateFloatingDebugViewController *)self showVLFDebugUIButton];
  v39 = [v38 bottomAnchor];
  v40 = [v51 constraintEqualToAnchor:v39];
  v74[2] = v40;
  v41 = [(VLFSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v42 = [v41 bottomAnchor];
  v43 = [(MapsFloatingDebugViewController *)self contentView];
  v44 = [v43 bottomAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  v74[3] = v45;
  v46 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v46];

  v47 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v48 = [UIImage systemImageNamed:@"arkit" withConfiguration:v47];
  v49 = [v48 imageWithRenderingMode:2];
  v50 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v50 setImage:v49];
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