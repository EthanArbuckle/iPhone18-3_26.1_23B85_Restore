@interface ENUIAnalyticsDataDetailViewController
- (void)viewDidLoad;
@end

@implementation ENUIAnalyticsDataDetailViewController

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = ENUIAnalyticsDataDetailViewController;
  [(ENUIAnalyticsDataDetailViewController *)&v49 viewDidLoad];
  specifier = [(ENUIAnalyticsDataDetailViewController *)self specifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [specifier propertyForKey:v5];

  v48 = 0;
  v7 = [NSString stringWithContentsOfURL:v6 encoding:4 error:&v48];
  v8 = v48;
  if (v8)
  {
    v9 = ENUILogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1C430(v6, v8, v9);
    }
  }

  lastPathComponent = [v6 lastPathComponent];
  [(ENUIAnalyticsDataDetailViewController *)self setTitle:lastPathComponent];

  v11 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ENUIAnalyticsDataDetailViewController *)self setTextView:v11];

  v12 = +[UIColor systemBackgroundColor];
  [(ENUIAnalyticsDataDetailViewController *)self textView];
  v13 = v47 = v8;
  [v13 setBackgroundColor:v12];

  textView = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [textView setAlwaysBounceVertical:1];

  textView2 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [textView2 setText:v7];

  textView3 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [textView3 setEditable:0];

  textView4 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [textView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(ENUIAnalyticsDataDetailViewController *)self view];
  textView5 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [view addSubview:textView5];

  textView6 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  leadingAnchor = [textView6 leadingAnchor];
  view2 = [(ENUIAnalyticsDataDetailViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[0] = v41;
  textView7 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  trailingAnchor = [textView7 trailingAnchor];
  view3 = [(ENUIAnalyticsDataDetailViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[1] = v33;
  textView8 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  topAnchor = [textView8 topAnchor];
  view4 = [(ENUIAnalyticsDataDetailViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  [safeAreaLayoutGuide3 topAnchor];
  v21 = v39 = v6;
  v22 = [topAnchor constraintEqualToAnchor:v21];
  v50[2] = v22;
  [(ENUIAnalyticsDataDetailViewController *)self textView];
  v23 = v35 = v7;
  bottomAnchor = [v23 bottomAnchor];
  view5 = [(ENUIAnalyticsDataDetailViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[3] = v28;
  v29 = [NSArray arrayWithObjects:v50 count:4];
  [NSLayoutConstraint activateConstraints:v29];
}

@end