@interface MapsARSessionIndoorOutdoorFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (MapsARSessionIndoorOutdoorFloatingDebugViewController)sharedInstance;
- (MapsARSessionIndoorOutdoorFloatingDebugViewController)init;
- (id)tintColor;
- (void)attach;
- (void)dealloc;
- (void)detach;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership;
- (void)setSession:(id)session;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation MapsARSessionIndoorOutdoorFloatingDebugViewController

- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership
{
  ownershipCopy = ownership;
  if ([ownershipCopy state] != 1)
  {
    v4 = objc_opt_new();
    [ownershipCopy runWithConfiguration:v4];
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = +[NSDate date];
  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 doubleForKey:@"PedestrianARIndoorOutdoorDetectionInterval"];
  v12 = v11;

  lastUIUpdate = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)selfCopy lastUIUpdate];
  if (!lastUIUpdate || (-[MapsARSessionIndoorOutdoorFloatingDebugViewController lastUIUpdate](selfCopy, "lastUIUpdate"), v14 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceDate:v14], v16 = v15, v14, lastUIUpdate, v16 >= v12))
  {
    confidenceRingBuffer = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)selfCopy confidenceRingBuffer];
    v24[0] = @"indoor";
    [frameCopy indoorConfidence];
    v18 = [NSNumber numberWithFloat:?];
    v24[1] = @"outdoor";
    v25[0] = v18;
    [frameCopy outdoorConfidence];
    v19 = [NSNumber numberWithFloat:?];
    v25[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    [confidenceRingBuffer push:v20];

    [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)selfCopy setLastUIUpdate:v9];
    objc_initWeak(&location, selfCopy);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C6CEA8;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v22, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = selfCopy;
  confidenceRingBuffer = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)selfCopy confidenceRingBuffer];
  v12 = [confidenceRingBuffer countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(confidenceRingBuffer);
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

      v12 = [confidenceRingBuffer countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  objc_sync_exit(obj);
  debugLabel = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)obj debugLabel];
  [debugLabel setAttributedText:v5];
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  session = self->_session;
  if (session != sessionCopy)
  {
    v8 = sessionCopy;
    [(ARSession *)session _removeObserver:self];
    objc_storeStrong(&self->_session, session);
    isAttached = [(MapsFloatingDebugViewController *)self isAttached];
    sessionCopy = v8;
    if (isAttached)
    {
      [(ARSession *)self->_session _addObserver:self];
      sessionCopy = v8;
    }
  }
}

- (void)updateViewForCurrentState
{
  v5.receiver = self;
  v5.super_class = MapsARSessionIndoorOutdoorFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v5 updateViewForCurrentState];
  viewState = [(MapsFloatingDebugViewController *)self viewState];
  if (viewState)
  {
    if (viewState != 1)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  confidenceRingBuffer = [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)selfCopy confidenceRingBuffer];
  lastObject = [confidenceRingBuffer lastObject];

  v5 = [lastObject objectForKey:@"indoor"];
  v6 = [lastObject objectForKey:@"outdoor"];
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

  objc_sync_exit(selfCopy);

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
    session = [v6 session];
    [(MapsARSessionIndoorOutdoorFloatingDebugViewController *)v2 setSession:session];
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