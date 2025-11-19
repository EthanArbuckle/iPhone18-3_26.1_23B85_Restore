@interface CarUnspecifiedViewController
- (void)_addDebugView;
- (void)_tappedWidget:(id)a3;
- (void)viewDidLoad;
@end

@implementation CarUnspecifiedViewController

- (void)_tappedWidget:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarUnspecifiedViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] _tappedMapWidget", buf, 0xCu);
  }

  [MapsCarPlayServicesShim openMapsCarPlayApplicationWithCompletion:0];
}

- (void)_addDebugView
{
  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [UIFont systemFontOfSize:17.0];
  [v8 setFont:v3];

  [v8 setAdjustsFontSizeToFitWidth:1];
  [v8 setMinimumScaleFactor:0.600000024];
  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:1];
  v4 = +[UIColor labelColor];
  [v8 setTextColor:v4];

  v5 = [(CarUnspecifiedViewController *)self view];
  [v5 addSubview:v8];

  v6 = [(CarUnspecifiedViewController *)self view];
  v7 = [v8 _maps_constraintsForCenteringInView:v6 edgeInsets:{6.0, 6.0, 6.0, 6.0}];
  [NSLayoutConstraint activateConstraints:v7];

  [v8 setText:@"Internal Only: Unspecified dashboard widget style. Please file a radar on PEP CarPlay System App | 1.0"];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CarUnspecifiedViewController;
  [(CarUnspecifiedViewController *)&v9 viewDidLoad];
  v3 = +[UIColor crsui_dashboardWidgetBackgroundColor];
  v4 = [(CarUnspecifiedViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[GEOPlatform sharedPlatform];
  LODWORD(v4) = [v5 isInternalInstall];

  if (v4)
  {
    [(CarUnspecifiedViewController *)self _addDebugView];
  }

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedWidget:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v6;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  v8 = [(CarUnspecifiedViewController *)self view];
  [v8 addGestureRecognizer:self->_tapGesture];
}

@end