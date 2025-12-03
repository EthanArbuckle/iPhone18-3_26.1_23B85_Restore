@interface VIOSessionStateFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (VIOSessionStateFloatingDebugViewController)sharedInstance;
- (ARSession)session;
- (VIOSessionTask)vioSessionTask;
- (id)tintColor;
- (void)attach;
- (void)dealloc;
- (void)detach;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)startDebugInfoRefreshTimer;
- (void)updateCameraFrame;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation VIOSessionStateFloatingDebugViewController

- (void)session:(id)session didChangeState:(unint64_t)state
{
  if (state != 1)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F78E24;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateCameraFrame
{
  session = [(VIOSessionStateFloatingDebugViewController *)self session];
  state = [session state];

  if (state == 1)
  {
    session2 = [(VIOSessionStateFloatingDebugViewController *)self session];
    currentFrame = [session2 currentFrame];

    if (currentFrame)
    {
      memset(&v22, 0, sizeof(v22));
      contentView = [(MapsFloatingDebugViewController *)self contentView];
      window = [contentView window];
      windowScene = [window windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];
      cameraFeedImageView = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
      [cameraFeedImageView bounds];
      [currentFrame displayTransformForOrientation:interfaceOrientation viewportSize:{v12, v13}];

      v20 = v22;
      CGAffineTransformInvert(&v21, &v20);
      v22 = v21;
      v14 = +[CIImage imageWithCVPixelBuffer:](CIImage, "imageWithCVPixelBuffer:", [currentFrame capturedImage]);
      v21 = v22;
      v15 = [v14 imageByApplyingTransform:&v21];

      v16 = [CIContext contextWithOptions:0];
      [v15 extent];
      v17 = [v16 createCGImage:v15 fromRect:?];
      v18 = [UIImage imageWithCGImage:v17];
      CGImageRelease(v17);
      cameraFeedImageView2 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
      [cameraFeedImageView2 setImage:v18];
    }
  }
}

- (void)startDebugInfoRefreshTimer
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100F79188;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:0.5];
  [(VIOSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateDebugText
{
  vioSessionTask = [(VIOSessionStateFloatingDebugViewController *)self vioSessionTask];
  activeMonitors = [vioSessionTask activeMonitors];

  if ([activeMonitors count])
  {
    v5 = +[NSMutableString string];
    [v5 appendFormat:@"Currently active monitors:\n"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = activeMonitors;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          [v5 appendFormat:@"%@\n", v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    [v5 appendFormat:@"\n"];
    anyObject = [v6 anyObject];
    stateManager = [anyObject stateManager];

    if ([stateManager isThrottling])
    {
      throttleEventReason = [stateManager throttleEventReason];
      v16 = @"VIOSessionThrottleEventDeviceMotion";
      if (!throttleEventReason)
      {
        v16 = @"VIOSessionThrottleEventARTrackingState";
      }

      [v5 appendFormat:@"VIO session is currently being throttled for the following reason:\n%@\n", v16];
      [stateManager remainingThrottleTime];
      v17 = [NSNumber numberWithDouble:?];
      stringValue = [v17 stringValue];
      [v5 appendFormat:@"Throttle time remaining: %@", stringValue];
    }

    else if ([stateManager isDisabled])
    {
      [v5 appendFormat:@"VIO session is currently disabled for the following reasons:\n"];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      disableEventReasons = [stateManager disableEventReasons];
      v21 = [disableEventReasons countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(disableEventReasons);
            }

            integerValue = [*(*(&v28 + 1) + 8 * j) integerValue];
            v26 = @"VIOSessionDisableEventLowPowerMode";
            if ((integerValue - 1) <= 9)
            {
              v26 = *(&off_10165ECF0 + (integerValue - 1));
            }

            [v5 appendFormat:@"%@\n", v26];
          }

          v22 = [disableEventReasons countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v22);
      }
    }

    else
    {
      [v5 appendFormat:@"VIO session is currently neither throttled nor disabled"];
    }

    debugInfoLabel = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
    [debugInfoLabel setText:v5];
  }

  else
  {
    debugInfoLabel2 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
    [debugInfoLabel2 setText:@"There are currently no running monitors"];
  }
}

- (ARSession)session
{
  v2 = +[MapsARSessionManager sharedManager];
  session = [v2 session];

  return session;
}

- (VIOSessionTask)vioSessionTask
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
  v3.super_class = VIOSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 detach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:@"kVIOSessionStateFloatingDebugViewControllerAttachedKey"];
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = VIOSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 attach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"kVIOSessionStateFloatingDebugViewControllerAttachedKey"];
}

- (id)tintColor
{
  v2 = +[UIColor redColor];
  v3 = [v2 colorWithAlphaComponent:0.699999988];

  return v3;
}

- (void)updateViewForCurrentState
{
  v6.receiver = self;
  v6.super_class = VIOSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v6 updateViewForCurrentState];
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (viewState == 1)
  {
    session = [(VIOSessionStateFloatingDebugViewController *)self session];
    [session _addObserver:self];

    [(VIOSessionStateFloatingDebugViewController *)self updateDebugText];
    [(VIOSessionStateFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!viewState)
  {
    [(VIOSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
    session2 = [(VIOSessionStateFloatingDebugViewController *)self session];
    [session2 _removeObserver:self];
  }
}

- (void)viewDidLoad
{
  v71.receiver = self;
  v71.super_class = VIOSessionStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v71 viewDidLoad];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(VIOSessionStateFloatingDebugViewController *)self setDebugInfoLabel:v3];

  v4 = +[UIColor clearColor];
  debugInfoLabel = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel setBackgroundColor:v4];

  v6 = +[UIColor whiteColor];
  debugInfoLabel2 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel2 setTextColor:v6];

  debugInfoLabel3 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel3 setNumberOfLines:0];

  debugInfoLabel4 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [debugInfoLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  debugInfoLabel5 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v11) = 1148846080;
  [debugInfoLabel5 setContentCompressionResistancePriority:1 forAxis:v11];

  debugInfoLabel6 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v13) = 1148846080;
  [debugInfoLabel6 setContentCompressionResistancePriority:0 forAxis:v13];

  contentView = [(MapsFloatingDebugViewController *)self contentView];
  debugInfoLabel7 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [contentView addSubview:debugInfoLabel7];

  debugInfoLabel8 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  leadingAnchor = [debugInfoLabel8 leadingAnchor];
  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v73[0] = v61;
  debugInfoLabel9 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  trailingAnchor = [debugInfoLabel9 trailingAnchor];
  contentView3 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v73[1] = v18;
  debugInfoLabel10 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  topAnchor = [debugInfoLabel10 topAnchor];
  contentView4 = [(MapsFloatingDebugViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[2] = v23;
  v24 = [NSArray arrayWithObjects:v73 count:3];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [UIImageView alloc];
  v26 = [UIImage systemImageNamed:@"questionmark.video"];
  v27 = [v25 initWithImage:v26];
  [(VIOSessionStateFloatingDebugViewController *)self setCameraFeedImageView:v27];

  cameraFeedImageView = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [cameraFeedImageView setContentMode:1];

  cameraFeedImageView2 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [cameraFeedImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  cameraFeedImageView3 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  LODWORD(v31) = 1148846080;
  [cameraFeedImageView3 setContentCompressionResistancePriority:1 forAxis:v31];

  cameraFeedImageView4 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  LODWORD(v33) = 1148846080;
  [cameraFeedImageView4 setContentCompressionResistancePriority:0 forAxis:v33];

  contentView5 = [(MapsFloatingDebugViewController *)self contentView];
  cameraFeedImageView5 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [contentView5 addSubview:cameraFeedImageView5];

  cameraFeedImageView6 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  topAnchor3 = [cameraFeedImageView6 topAnchor];
  debugInfoLabel11 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  bottomAnchor = [debugInfoLabel11 bottomAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
  v72[0] = v62;
  cameraFeedImageView7 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  centerXAnchor = [cameraFeedImageView7 centerXAnchor];
  debugInfoLabel12 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  centerXAnchor2 = [debugInfoLabel12 centerXAnchor];
  v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v72[1] = v54;
  cameraFeedImageView8 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  widthAnchor = [cameraFeedImageView8 widthAnchor];
  v51 = [widthAnchor constraintEqualToConstant:200.0];
  v72[2] = v51;
  cameraFeedImageView9 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  heightAnchor = [cameraFeedImageView9 heightAnchor];
  cameraFeedImageView10 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  widthAnchor2 = [cameraFeedImageView10 widthAnchor];
  v38 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v72[3] = v38;
  cameraFeedImageView11 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  bottomAnchor2 = [cameraFeedImageView11 bottomAnchor];
  contentView6 = [(MapsFloatingDebugViewController *)self contentView];
  bottomAnchor3 = [contentView6 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v72[4] = v43;
  v44 = [NSArray arrayWithObjects:v72 count:5];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v46 = [UIImage systemImageNamed:@"arkit" withConfiguration:v45];
  v47 = [v46 imageWithRenderingMode:2];
  thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView setImage:v47];
}

- (void)dealloc
{
  session = [(VIOSessionStateFloatingDebugViewController *)self session];
  [session _removeObserver:self];

  v4.receiver = self;
  v4.super_class = VIOSessionStateFloatingDebugViewController;
  [(VIOSessionStateFloatingDebugViewController *)&v4 dealloc];
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kVIOSessionStateFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (VIOSessionStateFloatingDebugViewController)sharedInstance
{
  if (qword_10195F868 != -1)
  {
    dispatch_once(&qword_10195F868, &stru_10165ECD0);
  }

  v3 = qword_10195F860;

  return v3;
}

@end