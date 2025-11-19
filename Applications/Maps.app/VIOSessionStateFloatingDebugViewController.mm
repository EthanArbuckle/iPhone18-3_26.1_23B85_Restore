@interface VIOSessionStateFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (VIOSessionStateFloatingDebugViewController)sharedInstance;
- (ARSession)session;
- (VIOSessionTask)vioSessionTask;
- (id)tintColor;
- (void)attach;
- (void)dealloc;
- (void)detach;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)startDebugInfoRefreshTimer;
- (void)updateCameraFrame;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation VIOSessionStateFloatingDebugViewController

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 != 1)
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
  v3 = [(VIOSessionStateFloatingDebugViewController *)self session];
  v4 = [v3 state];

  if (v4 == 1)
  {
    v5 = [(VIOSessionStateFloatingDebugViewController *)self session];
    v6 = [v5 currentFrame];

    if (v6)
    {
      memset(&v22, 0, sizeof(v22));
      v7 = [(MapsFloatingDebugViewController *)self contentView];
      v8 = [v7 window];
      v9 = [v8 windowScene];
      v10 = [v9 interfaceOrientation];
      v11 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
      [v11 bounds];
      [v6 displayTransformForOrientation:v10 viewportSize:{v12, v13}];

      v20 = v22;
      CGAffineTransformInvert(&v21, &v20);
      v22 = v21;
      v14 = +[CIImage imageWithCVPixelBuffer:](CIImage, "imageWithCVPixelBuffer:", [v6 capturedImage]);
      v21 = v22;
      v15 = [v14 imageByApplyingTransform:&v21];

      v16 = [CIContext contextWithOptions:0];
      [v15 extent];
      v17 = [v16 createCGImage:v15 fromRect:?];
      v18 = [UIImage imageWithCGImage:v17];
      CGImageRelease(v17);
      v19 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
      [v19 setImage:v18];
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
  v3 = [(VIOSessionStateFloatingDebugViewController *)self vioSessionTask];
  v4 = [v3 activeMonitors];

  if ([v4 count])
  {
    v5 = +[NSMutableString string];
    [v5 appendFormat:@"Currently active monitors:\n"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v4;
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
    v13 = [v6 anyObject];
    v14 = [v13 stateManager];

    if ([v14 isThrottling])
    {
      v15 = [v14 throttleEventReason];
      v16 = @"VIOSessionThrottleEventDeviceMotion";
      if (!v15)
      {
        v16 = @"VIOSessionThrottleEventARTrackingState";
      }

      [v5 appendFormat:@"VIO session is currently being throttled for the following reason:\n%@\n", v16];
      [v14 remainingThrottleTime];
      v17 = [NSNumber numberWithDouble:?];
      v18 = [v17 stringValue];
      [v5 appendFormat:@"Throttle time remaining: %@", v18];
    }

    else if ([v14 isDisabled])
    {
      [v5 appendFormat:@"VIO session is currently disabled for the following reasons:\n"];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = [v14 disableEventReasons];
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v28 + 1) + 8 * j) integerValue];
            v26 = @"VIOSessionDisableEventLowPowerMode";
            if ((v25 - 1) <= 9)
            {
              v26 = *(&off_10165ECF0 + (v25 - 1));
            }

            [v5 appendFormat:@"%@\n", v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v22);
      }
    }

    else
    {
      [v5 appendFormat:@"VIO session is currently neither throttled nor disabled"];
    }

    v27 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
    [v27 setText:v5];
  }

  else
  {
    v19 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
    [v19 setText:@"There are currently no running monitors"];
  }
}

- (ARSession)session
{
  v2 = +[MapsARSessionManager sharedManager];
  v3 = [v2 session];

  return v3;
}

- (VIOSessionTask)vioSessionTask
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
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (v3 == 1)
  {
    v5 = [(VIOSessionStateFloatingDebugViewController *)self session];
    [v5 _addObserver:self];

    [(VIOSessionStateFloatingDebugViewController *)self updateDebugText];
    [(VIOSessionStateFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!v3)
  {
    [(VIOSessionStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
    v4 = [(VIOSessionStateFloatingDebugViewController *)self session];
    [v4 _removeObserver:self];
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
  v5 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v5 setBackgroundColor:v4];

  v6 = +[UIColor whiteColor];
  v7 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v7 setTextColor:v6];

  v8 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v8 setNumberOfLines:0];

  v9 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];

  v12 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];

  v14 = [(MapsFloatingDebugViewController *)self contentView];
  v15 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  [v14 addSubview:v15];

  v69 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v65 = [v69 leadingAnchor];
  v67 = [(MapsFloatingDebugViewController *)self contentView];
  v63 = [v67 leadingAnchor];
  v61 = [v65 constraintEqualToAnchor:v63];
  v73[0] = v61;
  v59 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v56 = [v59 trailingAnchor];
  v16 = [(MapsFloatingDebugViewController *)self contentView];
  v17 = [v16 trailingAnchor];
  v18 = [v56 constraintEqualToAnchor:v17];
  v73[1] = v18;
  v19 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v20 = [v19 topAnchor];
  v21 = [(MapsFloatingDebugViewController *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v73[2] = v23;
  v24 = [NSArray arrayWithObjects:v73 count:3];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [UIImageView alloc];
  v26 = [UIImage systemImageNamed:@"questionmark.video"];
  v27 = [v25 initWithImage:v26];
  [(VIOSessionStateFloatingDebugViewController *)self setCameraFeedImageView:v27];

  v28 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [v28 setContentMode:1];

  v29 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  LODWORD(v31) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];

  v32 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:0 forAxis:v33];

  v34 = [(MapsFloatingDebugViewController *)self contentView];
  v35 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  [v34 addSubview:v35];

  v70 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v66 = [v70 topAnchor];
  v68 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v64 = [v68 bottomAnchor];
  v62 = [v66 constraintEqualToAnchor:v64 constant:5.0];
  v72[0] = v62;
  v60 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v57 = [v60 centerXAnchor];
  v58 = [(VIOSessionStateFloatingDebugViewController *)self debugInfoLabel];
  v55 = [v58 centerXAnchor];
  v54 = [v57 constraintEqualToAnchor:v55];
  v72[1] = v54;
  v53 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v52 = [v53 widthAnchor];
  v51 = [v52 constraintEqualToConstant:200.0];
  v72[2] = v51;
  v50 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v49 = [v50 heightAnchor];
  v36 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v37 = [v36 widthAnchor];
  v38 = [v49 constraintEqualToAnchor:v37];
  v72[3] = v38;
  v39 = [(VIOSessionStateFloatingDebugViewController *)self cameraFeedImageView];
  v40 = [v39 bottomAnchor];
  v41 = [(MapsFloatingDebugViewController *)self contentView];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v72[4] = v43;
  v44 = [NSArray arrayWithObjects:v72 count:5];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v46 = [UIImage systemImageNamed:@"arkit" withConfiguration:v45];
  v47 = [v46 imageWithRenderingMode:2];
  v48 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v48 setImage:v47];
}

- (void)dealloc
{
  v3 = [(VIOSessionStateFloatingDebugViewController *)self session];
  [v3 _removeObserver:self];

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