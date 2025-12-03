@interface PedestrianARFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (PedestrianARFloatingDebugViewController)sharedInstance;
- (PedestrianARFloatingDebugViewController)init;
- (PedestrianARSessionTask)pedestrianARSessionTask;
- (id)additionalLongPressActions;
- (id)debugText;
- (id)platformController;
- (id)tintColor;
- (void)attach;
- (void)composeTTR;
- (void)dealloc;
- (void)detach;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)setSession:(id)session;
- (void)startDebugInfoRefreshTimer;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation PedestrianARFloatingDebugViewController

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EDD67C;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EDD8EC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)additionalLongPressActions
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100EDDA74;
  v8 = &unk_101658AF0;
  objc_copyWeak(&v9, &location);
  v2 = [UIAlertAction actionWithTitle:@"File a radar" style:0 handler:&v5];
  v11 = v2;
  v3 = [NSArray arrayWithObjects:&v11 count:1, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

- (void)startDebugInfoRefreshTimer
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100EDDBB8;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:0.5];
  [(PedestrianARFloatingDebugViewController *)self setDebugInfoRefreshTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateDebugText
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[PedestrianARFloatingDebugViewController updateDebugText]";
        v14 = 2080;
        v15 = "PedestrianARFloatingDebugViewController.m";
        v16 = 1024;
        v17 = 372;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  view = [(PedestrianARFloatingDebugViewController *)self view];
  [view setHidden:0];

  debugText = [(PedestrianARFloatingDebugViewController *)self debugText];
  debugLabel = [(PedestrianARFloatingDebugViewController *)self debugLabel];
  [debugLabel setAttributedText:debugText];
}

- (id)debugText
{
  if (qword_10195F5F0 != -1)
  {
    dispatch_once(&qword_10195F5F0, &stru_101658A88);
  }

  v155[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor cyanColor];
  v156[0] = v3;
  v155[1] = NSFontAttributeName;
  v4 = [UIFont systemFontOfSize:17.0];
  v156[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:2];

  v6 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0 attributes:v5];
  v7 = +[NSDate date];
  v8 = [NSAttributedString alloc];
  v9 = [qword_10195F5F8 stringFromDate:v7];
  v10 = [v8 initWithString:v9 attributes:v5];
  [v6 appendAttributedString:v10];

  platformController = [(PedestrianARFloatingDebugViewController *)self platformController];
  chromeViewController = [platformController chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = topContext;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = 0;
  if (objc_opt_respondsToSelector())
  {
    fullscreenViewController = [v15 fullscreenViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = fullscreenViewController;
    }

    else
    {
      v18 = 0;
    }

    v16 = v18;
  }

  v142 = v6;
  mapView = [v16 mapView];
  selfCopy = self;
  if (mapView)
  {
    mapView2 = mapView;
    v139 = v15;
  }

  else
  {
    platformController2 = [(PedestrianARFloatingDebugViewController *)self platformController];
    auxiliaryTasksManager = [platformController2 auxiliaryTasksManager];
    v23 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    mapView2 = [v23 mapView];

    v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v25 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    if (!mapView2)
    {
      goto LABEL_16;
    }

    v139 = v15;
  }

  v153[0] = NSForegroundColorAttributeName;
  v26 = +[UIColor cyanColor];
  v153[1] = NSFontAttributeName;
  v154[0] = v26;
  v27 = [UIFont systemFontOfSize:15.0];
  v154[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v154 forKeys:v153 count:2];

  v29 = [NSAttributedString alloc];
  v25 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  arWalkingDebugOutput = [mapView2 arWalkingDebugOutput];
  v31 = [NSString stringWithFormat:@"\nVKMapView:\n%@", arWalkingDebugOutput];
  v32 = [v29 initWithString:v31 attributes:v28];
  [v6 appendAttributedString:v32];

  v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v15 = v139;
LABEL_16:

  v33 = objc_alloc(v24[408]);
  v34 = v25[459];
  v35 = +[MNNavigationService sharedService];
  [v35 distanceUntilManeuver];
  v37 = [v34 stringWithFormat:@"\nDistance to end of current maneuver: %f", v36];
  v38 = [v33 initWithString:v37 attributes:v5];
  [v6 appendAttributedString:v38];

  heading2 = selfCopy;
  session = [(PedestrianARFloatingDebugViewController *)selfCopy session];
  configuration = [session configuration];
  objc_opt_class();
  LOBYTE(v35) = objc_opt_isKindOfClass();

  v42 = v25;
  if (v35)
  {
    session2 = [(PedestrianARFloatingDebugViewController *)selfCopy session];
    configuration2 = [session2 configuration];
    fileURL = [configuration2 fileURL];
    path = [fileURL path];

    v47 = objc_alloc(v24[408]);
    v48 = [v25[459] stringWithFormat:@"\nAR Recording: %@", path];
    v49 = [v47 initWithString:v48 attributes:v5];
    [v6 appendAttributedString:v49];
  }

  session3 = [(PedestrianARFloatingDebugViewController *)selfCopy session];
  configuration3 = [session3 configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    session4 = [(PedestrianARFloatingDebugViewController *)selfCopy session];
    configuration4 = [session4 configuration];
    fileURL2 = [configuration4 fileURL];
    path2 = [fileURL2 path];

    v57 = objc_alloc(v24[408]);
    v58 = [v25[459] stringWithFormat:@"\nAR Replay: %@", path2];
    v59 = [v57 initWithString:v58 attributes:v5];
    [v6 appendAttributedString:v59];
  }

  v60 = +[MapsARSessionManager sharedManager];
  currentSessionOwner = [v60 currentSessionOwner];

  v62 = objc_alloc(v24[408]);
  v63 = [v25[459] stringWithFormat:@"\nCurrent session owner: %@\n", currentSessionOwner];
  v64 = [v62 initWithString:v63 attributes:v5];
  [v6 appendAttributedString:v64];

  v65 = [objc_alloc(v24[408]) initWithString:@"\nAll session owners:\n" attributes:v5];
  [v6 appendAttributedString:v65];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v66 = +[MapsARSessionManager sharedManager];
  allSessionOwners = [v66 allSessionOwners];

  v68 = [allSessionOwners countByEnumeratingWithState:&v147 objects:v152 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v148;
    do
    {
      for (i = 0; i != v69; i = i + 1)
      {
        if (*v148 != v70)
        {
          objc_enumerationMutation(allSessionOwners);
        }

        heading2 = *(*(&v147 + 1) + 8 * i);
        v72 = objc_alloc(v24[408]);
        v73 = [v42[459] stringWithFormat:@"%@\n", heading2];
        v74 = [v72 initWithString:v73 attributes:v5];
        [v142 appendAttributedString:v74];

        v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      }

      v69 = [allSessionOwners countByEnumeratingWithState:&v147 objects:v152 count:16];
    }

    while (v69);
  }

  v75 = selfCopy;
  session5 = [(PedestrianARFloatingDebugViewController *)selfCopy session];
  currentFrame = [session5 currentFrame];

  if (currentFrame)
  {
    v78 = objc_alloc(v24[408]);
    v79 = v42[459];
    [currentFrame heading];
    v81 = v80;
    v82 = +[MKLocationManager sharedLocationManager];
    heading = [v82 heading];
    if (heading)
    {
      v24 = +[MKLocationManager sharedLocationManager];
      heading2 = [(Class *)v24 heading];
      [heading2 trueHeading];
    }

    else
    {
      v84 = -1.0;
    }

    v85 = [v79 stringWithFormat:@"\nHeading: ARKit %0.0f, CL %0.0f", v81, *&v84];
    v86 = [v78 initWithString:v85 attributes:v5];
    [v142 appendAttributedString:v86];

    v75 = selfCopy;
    if (heading)
    {
    }

    camera = [currentFrame camera];
    [camera transform];
    v140 = v88;

    v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v89 = [NSAttributedString alloc];
    v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v90 = [NSString stringWithFormat:@"\nAR Pos(%.3f, %.3f, %.3f)", *&v140, *(&v140 + 1), *(&v140 + 2)];
    v91 = [v89 initWithString:v90 attributes:v5];
    [v142 appendAttributedString:v91];

    location = [currentFrame location];

    if (location)
    {
      v93 = [NSAttributedString alloc];
      location2 = [currentFrame location];
      [location2 coordinate];
      v96 = v95;
      location3 = [currentFrame location];
      [location3 coordinate];
      v99 = v98;
      location4 = [currentFrame location];
      [location4 altitude];
      v101 = [NSString stringWithFormat:@" Coord(%.6f, %.6f, %.6f)", v96, v99, v101];;
      v103 = [v93 initWithString:v101 attributes:v5];
      [v142 appendAttributedString:v103];

      v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    v104 = [NSAttributedString alloc];
    vlState = [currentFrame vlState];
    [vlState timeSinceLastLocalization];
    v106 = [NSString stringWithFormat:@"\nlast VL localization: %f", v106];
    v108 = [v104 initWithString:v106 attributes:v5];
    [v142 appendAttributedString:v108];
  }

  v109 = objc_alloc(v24[408]);
  v110 = v42[459];
  pedestrianARSessionTask = [(PedestrianARFloatingDebugViewController *)v75 pedestrianARSessionTask];
  stateManager = [pedestrianARSessionTask stateManager];
  shouldShowPedestrianAR = [stateManager shouldShowPedestrianAR];
  v114 = @"🔴";
  if (shouldShowPedestrianAR)
  {
    v114 = @"🟢";
  }

  v114 = [v110 stringWithFormat:@"\nCurrent UI state: \n%@\n", v114];
  v116 = [v109 initWithString:v114 attributes:v5];
  [v142 appendAttributedString:v116];

  pedestrianARSessionTask2 = [(PedestrianARFloatingDebugViewController *)v75 pedestrianARSessionTask];
  stateManager2 = [pedestrianARSessionTask2 stateManager];
  allMonitors = [stateManager2 allMonitors];
  allObjects = [allMonitors allObjects];
  v121 = [allObjects sortedArrayUsingComparator:&stru_101658AC8];

  v122 = v5;
  v123 = [objc_alloc(v24[408]) initWithString:@"\nState monitors:\n" attributes:v5];
  [v142 appendAttributedString:v123];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v124 = v121;
  v125 = [v124 countByEnumeratingWithState:&v143 objects:v151 count:16];
  if (v125)
  {
    v126 = v125;
    v127 = *v144;
    do
    {
      for (j = 0; j != v126; j = j + 1)
      {
        if (*v144 != v127)
        {
          objc_enumerationMutation(v124);
        }

        v129 = *(*(&v143 + 1) + 8 * j);
        v130 = objc_alloc(v24[408]);
        v131 = v42[459];
        shouldShowPedestrianAR2 = [v129 shouldShowPedestrianAR];
        v133 = @"🔴";
        if (shouldShowPedestrianAR2)
        {
          v133 = @"🟢";
        }

        v134 = v133;
        v135 = [v129 debugDescription];
        v135 = [v131 stringWithFormat:@"%@ %@\n", v134, v135];

        v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        v137 = [v130 initWithString:v135 attributes:v122];
        [v142 appendAttributedString:v137];

        v24 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      }

      v126 = [v124 countByEnumeratingWithState:&v143 objects:v151 count:16];
    }

    while (v126);
  }

  return v142;
}

- (PedestrianARSessionTask)pedestrianARSessionTask
{
  platformController = [(PedestrianARFloatingDebugViewController *)self platformController];
  auxiliaryTasksManager = [platformController auxiliaryTasksManager];
  v4 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

  return v4;
}

- (id)platformController
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController = [v2 platformController];

  return platformController;
}

- (void)composeTTR
{
  v3 = sub_100EDF210();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Will compose TTR", buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100EDF264;
  v38[3] = &unk_101658A68;
  v38[4] = self;
  v4 = objc_retainBlock(v38);
  v5 = [UIAlertController alertControllerWithTitle:@"What happened?" message:0 preferredStyle:0];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100EDF52C;
  v36[3] = &unk_101660728;
  v6 = v4;
  v37 = v6;
  v7 = [UIAlertAction actionWithTitle:@"Missing AR element" style:0 handler:v36];
  [v5 addAction:v7];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100EDF59C;
  v34[3] = &unk_101660728;
  v8 = v6;
  v35 = v8;
  v9 = [UIAlertAction actionWithTitle:@"Wrong AR placement" style:0 handler:v34];
  [v5 addAction:v9];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100EDF60C;
  v32[3] = &unk_101660728;
  v10 = v8;
  v33 = v10;
  v11 = [UIAlertAction actionWithTitle:@"Wrong instruction text" style:0 handler:v32];
  [v5 addAction:v11];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100EDF67C;
  v30[3] = &unk_101660728;
  v12 = v10;
  v31 = v12;
  v13 = [UIAlertAction actionWithTitle:@"Failed to localize" style:0 handler:v30];
  [v5 addAction:v13];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100EDF6EC;
  v28[3] = &unk_101660728;
  v14 = v12;
  v29 = v14;
  v15 = [UIAlertAction actionWithTitle:@"Slow to localize" style:0 handler:v28];
  [v5 addAction:v15];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100EDF75C;
  v26[3] = &unk_101660728;
  v16 = v14;
  v27 = v16;
  v17 = [UIAlertAction actionWithTitle:@"Performance" style:0 handler:v26];
  [v5 addAction:v17];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100EDF7CC;
  v24[3] = &unk_101660728;
  v25 = v16;
  v18 = v16;
  v19 = [UIAlertAction actionWithTitle:@"Something else" style:0 handler:v24];
  [v5 addAction:v19];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100EDF83C;
  v23[3] = &unk_10165F220;
  v23[4] = self;
  v20 = [UIAlertAction actionWithTitle:@"Nevermind" style:1 handler:v23];
  [v5 addAction:v20];

  v21 = +[UIApplication sharedMapsDelegate];
  chromeViewController = [v21 chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  session = self->_session;
  v7 = sessionCopy;
  if (session != sessionCopy)
  {
    [(ARSession *)session _removeObserver:self];
    objc_storeStrong(&self->_session, session);
    if ([(MapsFloatingDebugViewController *)self isAttached])
    {
      if ([(MapsFloatingDebugViewController *)self viewState]== 1)
      {
        [(ARSession *)self->_session _addObserver:self];
      }
    }
  }
}

- (void)detach
{
  v3.receiver = self;
  v3.super_class = PedestrianARFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 detach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:@"kPedestrianARFloatingDebugViewControllerAttachedKey"];
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = PedestrianARFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 attach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"kPedestrianARFloatingDebugViewControllerAttachedKey"];
}

- (id)tintColor
{
  v2 = +[UIColor orangeColor];
  v3 = [v2 colorWithAlphaComponent:0.699999988];

  return v3;
}

- (void)updateViewForCurrentState
{
  v6.receiver = self;
  v6.super_class = PedestrianARFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v6 updateViewForCurrentState];
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (viewState == 1)
  {
    session = [(PedestrianARFloatingDebugViewController *)self session];
    [session _addObserver:self];

    [(PedestrianARFloatingDebugViewController *)self updateDebugText];
    [(PedestrianARFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!viewState)
  {
    [(PedestrianARFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
    session2 = [(PedestrianARFloatingDebugViewController *)self session];
    [session2 _removeObserver:self];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PedestrianARFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v29 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v4 = [UIImage systemImageNamed:@"arkit" withConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];
  thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView setImage:v5];

  v28 = +[NSMutableArray array];
  v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v8 = [UIFont monospacedSystemFontOfSize:9.0 weight:UIFontWeightRegular];
  [(UILabel *)v7 setFont:v8];

  [(UILabel *)v7 setNumberOfLines:0];
  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  debugLabel = self->_debugLabel;
  self->_debugLabel = v7;

  contentView = [(MapsFloatingDebugViewController *)self contentView];
  [contentView addSubview:self->_debugLabel];

  topAnchor = [(UILabel *)self->_debugLabel topAnchor];
  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v30[0] = v24;
  bottomAnchor = [(UILabel *)self->_debugLabel bottomAnchor];
  contentView3 = [(MapsFloatingDebugViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v30[1] = v20;
  leadingAnchor = [(UILabel *)self->_debugLabel leadingAnchor];
  contentView4 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v30[2] = v14;
  trailingAnchor = [(UILabel *)self->_debugLabel trailingAnchor];
  contentView5 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v30[3] = v18;
  v19 = [NSArray arrayWithObjects:v30 count:4];
  [v28 addObjectsFromArray:v19];

  [NSLayoutConstraint activateConstraints:v28];
}

- (void)dealloc
{
  [(ARSession *)self->_session _removeObserver:self];
  v3.receiver = self;
  v3.super_class = PedestrianARFloatingDebugViewController;
  [(PedestrianARFloatingDebugViewController *)&v3 dealloc];
}

- (PedestrianARFloatingDebugViewController)init
{
  v5.receiver = self;
  v5.super_class = PedestrianARFloatingDebugViewController;
  v2 = [(MapsFloatingDebugViewController *)&v5 init];
  if (v2)
  {
    v3 = +[MapsRadarController sharedInstance];
    [v3 addAttachmentProvider:v2];
  }

  return v2;
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kPedestrianARFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (PedestrianARFloatingDebugViewController)sharedInstance
{
  if (qword_10195F5E8 != -1)
  {
    dispatch_once(&qword_10195F5E8, &stru_101658A40);
  }

  v3 = qword_10195F5E0;

  return v3;
}

@end