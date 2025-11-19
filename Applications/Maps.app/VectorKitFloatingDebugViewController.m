@interface VectorKitFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (VectorKitFloatingDebugViewController)sharedInstance;
- (VectorKitFloatingDebugViewController)init;
- (id)debugText;
- (id)tintColor;
- (void)attach;
- (void)detach;
- (void)startDebugInfoRefreshTimer;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation VectorKitFloatingDebugViewController

- (void)startDebugInfoRefreshTimer
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100C7C0B8;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:0.5];
  [(VectorKitFloatingDebugViewController *)self setDebugInfoRefreshTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateDebugText
{
  v3 = [(VectorKitFloatingDebugViewController *)self view];
  [v3 setHidden:0];

  v5 = [(VectorKitFloatingDebugViewController *)self debugText];
  v4 = [(VectorKitFloatingDebugViewController *)self debugLabel];
  [v4 setAttributedText:v5];
}

- (id)debugText
{
  if (qword_10195ED70 != -1)
  {
    dispatch_once(&qword_10195ED70, &stru_10164F768);
  }

  v25[0] = NSForegroundColorAttributeName;
  v3 = +[UIColor whiteColor];
  v26[0] = v3;
  v25[1] = NSFontAttributeName;
  v4 = [UIFont systemFontOfSize:17.0];
  v26[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  v6 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0 attributes:v5];
  v7 = +[NSDate date];
  v8 = [NSAttributedString alloc];
  v9 = [qword_10195ED78 stringFromDate:v7];
  v10 = [v8 initWithString:v9 attributes:v5];
  [v6 appendAttributedString:v10];

  v11 = [(VectorKitFloatingDebugViewController *)self platformController];
  v12 = [v11 chromeViewController];
  v13 = [v12 mapView];
  v14 = [v13 _mapLayer];

  v23[0] = NSForegroundColorAttributeName;
  v15 = +[UIColor whiteColor];
  v23[1] = NSFontAttributeName;
  v24[0] = v15;
  v16 = [UIFont systemFontOfSize:15.0];
  v24[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  v18 = [NSAttributedString alloc];
  v19 = [v14 debugLabelString:1];
  v20 = [NSString stringWithFormat:@"\nVKMapView:\n%@", v19];
  v21 = [v18 initWithString:v20 attributes:v17];
  [v6 appendAttributedString:v21];

  return v6;
}

- (id)tintColor
{
  v2 = +[UIColor magentaColor];
  v3 = [v2 colorWithAlphaComponent:0.699999988];

  return v3;
}

- (void)updateViewForCurrentState
{
  v4.receiver = self;
  v4.super_class = VectorKitFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v4 updateViewForCurrentState];
  v3 = [(MapsFloatingDebugViewController *)self viewState];
  if (v3 == 1)
  {
    [(VectorKitFloatingDebugViewController *)self updateDebugText];
    [(VectorKitFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!v3)
  {
    [(VectorKitFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
  }
}

- (void)detach
{
  v3.receiver = self;
  v3.super_class = VectorKitFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 detach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:@"kVectorKitFloatingDebugViewControllerAttachedKey"];
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = VectorKitFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v3 attach];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"kVectorKitFloatingDebugViewControllerAttachedKey"];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VectorKitFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v29 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v4 = [UIImage systemImageNamed:@"map.fill" withConfiguration:v3];
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

- (VectorKitFloatingDebugViewController)init
{
  v7.receiver = self;
  v7.super_class = VectorKitFloatingDebugViewController;
  v2 = [(MapsFloatingDebugViewController *)&v7 init];
  if (v2)
  {
    v3 = +[UIApplication _maps_keyMapsSceneDelegate];
    v4 = [v3 platformController];
    platformController = v2->_platformController;
    v2->_platformController = v4;
  }

  return v2;
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kVectorKitFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (VectorKitFloatingDebugViewController)sharedInstance
{
  if (qword_10195ED68 != -1)
  {
    dispatch_once(&qword_10195ED68, &stru_10164F748);
  }

  v3 = qword_10195ED60;

  return v3;
}

@end