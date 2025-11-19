@interface MapsARSessionIndoorOutdoorFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (MapsARSessionIndoorOutdoorFloatingDebugViewController)sharedInstance;
- (MapsARSessionIndoorOutdoorFloatingDebugViewController)init;
- (id)tintColor;
- (void)attach;
- (void)dealloc;
- (void)detach;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4;
- (void)setSession:(id)a3;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation MapsARSessionIndoorOutdoorFloatingDebugViewController

- (void)sessionManager:(id)a3 didGainSessionOwnership:(id)a4
{
  v5 = a4;
  if ([v5 state] != 1)
  {
    v4 = objc_opt_new();
    [v5 runWithConfiguration:v4];
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = +[NSDate date];
  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 doubleForKey:@"PedestrianARIndoorOutdoorDetectionInterval"];
  v12 = v11;

  v13 = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v8 lastUIUpdate];
  if (!v13 || (-[MapsARSessionIndoorOutdoorFloatingDebugViewController lastUIUpdate](v8, "lastUIUpdate"), v14 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceDate:v14], v16 = v15, v14, v13, v16 >= v12))
  {
    v17 = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v8 confidenceRingBuffer];
    v24[0] = @"indoor";
    [v7 indoorConfidence];
    v18 = [NSNumber numberWithFloat:?];
    v24[1] = @"outdoor";
    v25[0] = v18;
    [v7 outdoorConfidence];
    v19 = [NSNumber numberWithFloat:?];
    v25[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v17 push:v20];

    [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v8 setLastUIUpdate:v9];
    objc_initWeak(&location, v8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C6CEA8;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v22, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v8);
}

- (void)updateDebugText
{
  if (qword_10195ED20 != -1)
  {
    dispatch_once(&qword_10195ED20, &stru_10164F430);
  }

  v32[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor cyanColor];
  v33[0] = v3;
  v32[1] = NSFontAttributeName;
  v4 = [UIFont systemFontOfSize:17.0];
  v33[1] = v4;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v5 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0 attributes:v26];
  v6 = +[NSDate date];
  v7 = [NSAttributedString alloc];
  v8 = [qword_10195ED28 stringFromDate:v6];
  v9 = [v7 initWithString:v8 attributes:v26];
  [v5 appendAttributedString:v9];

  v10 = self;
  objc_sync_enter(v10);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v10;
  v11 = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v10 confidenceRingBuffer];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [NSAttributedString alloc];
        v17 = [v15 objectForKey:@"indoor"];
        [v17 doubleValue];
        v19 = v18;
        v20 = [v15 objectForKey:@"outdoor"];
        [v20 doubleValue];
        v22 = [NSString stringWithFormat:@"\n\nIndoor: %f\nOutdoor: %f", v19, v21];
        v23 = [v16 initWithString:v22 attributes:v26];
        [v5 appendAttributedString:v23];
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  objc_sync_exit(obj);
  v24 = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)obj debugLabel];
  [v24 setAttributedText:v5];
}

- (void)setSession:(id)a3
{
  v5 = a3;
  session = self->_session;
  if (session != v5)
  {
    v8 = v5;
    [(ARSession *)session _removeObserver:self];
    objc_storeStrong(&self->_session, a3);
    v7 = [(MapsFloatingDebugViewController *)self isAttached];
    v5 = v8;
    if (v7)
    {
      [(ARSession *)self->_session _addObserver:self];
      v5 = v8;
    }
  }
}

- (void)updateViewForCurrentState
{
  v5.receiver = self;
  v5.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v5 updateViewForCurrentState];
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = +[MapsARSessionManager sharedManager];
    [v4 requestSessionWithOwner:self];
  }

  else
  {
    v4 = +[MapsARSessionManager sharedManager];
    [v4 resignSessionWithOwner:self];
  }
}

- (void)detach
{
  v4.receiver = self;
  v4.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v4 detach];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:0 forKey:@"kMapsARSessionIndoorOutdoorFloatingDebugViewControllerAttachedKey"];

  [(ARSession *)self->_session _removeObserver:self];
}

- (void)attach
{
  v4.receiver = self;
  v4.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v4 attach];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:@"kMapsARSessionIndoorOutdoorFloatingDebugViewControllerAttachedKey"];

  [(ARSession *)self->_session _addObserver:self];
  [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)self updateDebugText];
}

- (id)tintColor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v2 confidenceRingBuffer];
  v4 = [v3 lastObject];

  v5 = [v4 objectForKey:@"indoor"];
  v6 = [v4 objectForKey:@"outdoor"];
  [v5 floatValue];
  if (v7 >= 0.9)
  {
    v9 = +[UIColor brownColor];
    v10 = [v9 colorWithAlphaComponent:0.699999988];
  }

  else
  {
    [v6 floatValue];
    if (v8 >= 0.9)
    {
      +[UIColor systemDarkGreenColor];
    }

    else
    {
      +[UIColor grayColor];
    }
    v9 = ;
    v10 = [v9 colorWithAlphaComponent:0.699999988];
  }

  v11 = v10;

  objc_sync_exit(v2);

  return v11;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v29 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v4 = [UIImage systemImageNamed:@"camera.metering.unknown" withConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];
  v6 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v6 setImage:v5];

  v28 = +[NSMutableArray array];
  v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v8 = [UIFont monospacedSystemFontOfSize:9.0 weight:UIFontWeightRegular];
  [(UILabel *)v7 setFont:v8];

  [(UILabel *)v7 setNumberOfLines:0];
  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  debugLabel = self->_debugLabel;
  self->_debugLabel = v7;

  v10 = [(MapsFloatingDebugViewController *)self contentView];
  [v10 addSubview:self->_debugLabel];

  v26 = [(UILabel *)self->_debugLabel topAnchor];
  v27 = [(MapsFloatingDebugViewController *)self contentView];
  v25 = [v27 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:5.0];
  v30[0] = v24;
  v22 = [(UILabel *)self->_debugLabel bottomAnchor];
  v23 = [(MapsFloatingDebugViewController *)self contentView];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:-5.0];
  v30[1] = v20;
  v11 = [(UILabel *)self->_debugLabel leadingAnchor];
  v12 = [(MapsFloatingDebugViewController *)self contentView];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:5.0];
  v30[2] = v14;
  v15 = [(UILabel *)self->_debugLabel trailingAnchor];
  v16 = [(MapsFloatingDebugViewController *)self contentView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:-5.0];
  v30[3] = v18;
  v19 = [NSArray arrayWithObjects:v30 count:4];
  [v28 addObjectsFromArray:v19];

  [NSLayoutConstraint activateConstraints:v28];
}

- (void)dealloc
{
  [(ARSession *)self->_session _removeObserver:self];
  v3.receiver = self;
  v3.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)&v3 dealloc];
}

- (MapsARSessionIndoorOutdoorFloatingDebugViewController)init
{
  v9.receiver = self;
  v9.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  v2 = [(MapsFloatingDebugViewController *)&v9 init];
  if (v2)
  {
    v3 = [[MapsRingBuffer alloc] initWithLength:10];
    confidenceRingBuffer = v2->_confidenceRingBuffer;
    v2->_confidenceRingBuffer = v3;

    lastUIUpdate = v2->_lastUIUpdate;
    v2->_lastUIUpdate = 0;

    v6 = +[MapsARSessionManager sharedManager];
    v7 = [v6 session];
    [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v2 setSession:v7];
  }

  return v2;
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kMapsARSessionIndoorOutdoorFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (MapsARSessionIndoorOutdoorFloatingDebugViewController)sharedInstance
{
  if (qword_10195ED18 != -1)
  {
    dispatch_once(&qword_10195ED18, &stru_10164F410);
  }

  v3 = qword_10195ED10;

  return v3;
}

@end