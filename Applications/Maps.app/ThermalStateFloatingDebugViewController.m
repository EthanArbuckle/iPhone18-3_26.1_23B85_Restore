@interface ThermalStateFloatingDebugViewController
+ (BOOL)shouldAttachOnLaunch;
+ (ThermalStateFloatingDebugViewController)sharedInstance;
- (ThermalStateFloatingDebugViewController)init;
- (id)additionalLongPressActions;
- (id)debugText;
- (id)iconText;
- (id)tintColor;
- (void)attach;
- (void)composeTTR;
- (void)dealloc;
- (void)detach;
- (void)didUpdateThermalPressureLevel:(int)a3;
- (void)startDebugInfoRefreshTimer;
- (void)updateDebugText;
- (void)updateViewForCurrentState;
- (void)viewDidLoad;
@end

@implementation ThermalStateFloatingDebugViewController

- (void)didUpdateThermalPressureLevel:(int)a3
{
  v5 = sub_100ACF1B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v9 = self;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Thermal state changed: %llu", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100ACF204;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)composeTTR
{
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Launching TTR", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  v6 = +[NSDate date];
  v7 = [v4 stringFromDate:v6];
  v8 = [NSString stringWithFormat:@"Timestamp: %@\n\nSummary:\n\nSteps to Reproduce:\n\nResults:\n", v7];

  v9 = objc_opt_new();
  [v9 setTitle:@"[Thermal]: "];
  [v9 addNote:v8];
  [v9 setClassification:4];
  v10 = +[MapsRadarComponent mapsClientComponent];
  [v9 setComponent:v10];

  v11 = +[MapsRadarController sharedInstance];
  [v11 launchTTRWithRadar:v9];
}

- (id)additionalLongPressActions
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100ACF5BC;
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
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Starting periodic refresh timer", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ACF788;
  v6[3] = &unk_1016616E8;
  objc_copyWeak(&v7, buf);
  v5 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:0.5];
  [(ThermalStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)updateDebugText
{
  v3 = [(ThermalStateFloatingDebugViewController *)self view];
  [v3 setHidden:0];

  v5 = [(ThermalStateFloatingDebugViewController *)self debugText];
  v4 = [(ThermalStateFloatingDebugViewController *)self debugLabel];
  [v4 setAttributedText:v5];
}

- (void)updateViewForCurrentState
{
  v6.receiver = self;
  v6.super_class = ThermalStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v6 updateViewForCurrentState];
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(MapsFloatingDebugViewController *)self viewState];
    *buf = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Updating view for state: %ld", buf, 0x16u);
  }

  v5 = [(MapsFloatingDebugViewController *)self viewState];
  if (v5 == 1)
  {
    [(ThermalStateFloatingDebugViewController *)self updateDebugText];
    [(ThermalStateFloatingDebugViewController *)self startDebugInfoRefreshTimer];
  }

  else if (!v5)
  {
    [(ThermalStateFloatingDebugViewController *)self setDebugInfoRefreshTimer:0];
  }
}

- (id)debugText
{
  if (qword_10195E4A0 != -1)
  {
    dispatch_once(&qword_10195E4A0, &stru_101637480);
  }

  v55[0] = NSForegroundColorAttributeName;
  v2 = +[UIColor whiteColor];
  v56[0] = v2;
  v55[1] = NSFontAttributeName;
  v3 = [UIFont systemFontOfSize:17.0];
  v56[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];

  v5 = [[NSMutableAttributedString alloc] initWithString:&stru_1016631F0 attributes:v4];
  v6 = +[NSDate date];
  v7 = [NSAttributedString alloc];
  v8 = [qword_10195E4A8 stringFromDate:v6];
  v42 = v4;
  v9 = [v7 initWithString:v8 attributes:v4];
  [v5 appendAttributedString:v9];

  v53[0] = NSForegroundColorAttributeName;
  v10 = +[UIColor whiteColor];
  v53[1] = NSFontAttributeName;
  v54[0] = v10;
  v11 = [UIFont systemFontOfSize:15.0];
  v54[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

  v13 = [NSAttributedString alloc];
  v14 = +[MapsThermalPressureController sharedController];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\nThermal state: %d", [v14 currentThermalPressureLevel]);
  v16 = [v13 initWithString:v15 attributes:v12];
  v45 = v5;
  [v5 appendAttributedString:v16];

  v51[0] = NSForegroundColorAttributeName;
  v17 = +[UIColor whiteColor];
  v51[1] = NSFontAttributeName;
  v52[0] = v17;
  v18 = [UIFont systemFontOfSize:15.0];
  v52[1] = v18;
  v44 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v19 = +[UIApplication sharedApplication];
  v20 = [v19 connectedScenes];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    v43 = v21;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
          v28 = [v27 delegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v30 = [v27 delegate];
          v31 = v30;
          if (isKindOfClass)
          {
            v32 = [v30 chromeViewController];
            v33 = [v32 mapView];

            if (v33)
            {
              v34 = @"\n\n📱VKMapView[%p]\nDisplay rate: %ld";
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          objc_opt_class();
          v35 = objc_opt_isKindOfClass();

          if (v35)
          {
            v31 = [v27 delegate];
            v36 = [v31 carChromeViewController];
            v33 = [v36 mapView];

            if (v33)
            {
              v34 = @"\n\n🚗VKMapView[%p]\nDisplay rate: %ld";
LABEL_15:
              v37 = [v33 _mapLayer];
              v38 = [NSAttributedString alloc];
              v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v34, v37, [v37 displayRate]);
              v40 = [v38 initWithString:v39 attributes:v44];
              [v45 appendAttributedString:v40];

              v21 = v43;
            }

LABEL_16:
          }

          continue;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v23);
  }

  return v45;
}

- (id)iconText
{
  v2 = +[MapsThermalPressureController sharedController];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Thermal: %d", [v2 currentThermalPressureLevel]);

  return v3;
}

- (id)tintColor
{
  v2 = +[MapsThermalPressureController sharedController];
  v3 = [v2 currentThermalPressureLevel];

  if (v3 < 0x1E)
  {
    v5 = +[MapsThermalPressureController sharedController];
    v6 = [v5 currentThermalPressureLevel];

    if (v6 < 0x14)
    {
      v7 = +[MapsThermalPressureController sharedController];
      v8 = [v7 currentThermalPressureLevel];

      if (v8 < 0xA)
      {
        +[UIColor greenColor];
      }

      else
      {
        +[UIColor yellowColor];
      }
      v4 = ;
    }

    else
    {
      v4 = +[UIColor orangeColor];
    }
  }

  else
  {
    v4 = +[UIColor redColor];
  }

  v9 = v4;
  v10 = [v4 colorWithAlphaComponent:0.699999988];

  return v10;
}

- (void)detach
{
  v5.receiver = self;
  v5.super_class = ThermalStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v5 detach];
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Detaching", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:0 forKey:@"kThermalStateFloatingDebugViewControllerAttachedKey"];
}

- (void)attach
{
  v5.receiver = self;
  v5.super_class = ThermalStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v5 attach];
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Attaching", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:1 forKey:@"kThermalStateFloatingDebugViewControllerAttachedKey"];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = ThermalStateFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v29 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v4 = [UIImage systemImageNamed:@"flame" withConfiguration:v3];
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
  v3 = sub_100ACF1B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[MapsThermalPressureController sharedController];
  [v4 removeThermalPressureObserver:self];

  v5.receiver = self;
  v5.super_class = ThermalStateFloatingDebugViewController;
  [(ThermalStateFloatingDebugViewController *)&v5 dealloc];
}

- (ThermalStateFloatingDebugViewController)init
{
  v8.receiver = self;
  v8.super_class = ThermalStateFloatingDebugViewController;
  v2 = [(MapsFloatingDebugViewController *)&v8 init];
  if (v2)
  {
    v3 = sub_100ACF1B0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = +[MapsThermalPressureController sharedController];
      v5 = [v4 currentThermalPressureLevel];
      *buf = 134349312;
      v10 = v2;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with thermal level: %d", buf, 0x12u);
    }

    v6 = +[MapsThermalPressureController sharedController];
    [v6 addThermalPressureObserver:v2];
  }

  return v2;
}

+ (BOOL)shouldAttachOnLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kThermalStateFloatingDebugViewControllerAttachedKey"];

  return v3;
}

+ (ThermalStateFloatingDebugViewController)sharedInstance
{
  if (qword_10195E498 != -1)
  {
    dispatch_once(&qword_10195E498, &stru_101637460);
  }

  v3 = qword_10195E490;

  return v3;
}

@end