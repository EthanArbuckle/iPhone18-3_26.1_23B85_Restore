@interface ENUIAnalyticsDataDetailViewController
- (void)viewDidLoad;
@end

@implementation ENUIAnalyticsDataDetailViewController

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = ENUIAnalyticsDataDetailViewController;
  [(ENUIAnalyticsDataDetailViewController *)&v49 viewDidLoad];
  v3 = [(ENUIAnalyticsDataDetailViewController *)self specifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 propertyForKey:v5];

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

  v10 = [v6 lastPathComponent];
  [(ENUIAnalyticsDataDetailViewController *)self setTitle:v10];

  v11 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ENUIAnalyticsDataDetailViewController *)self setTextView:v11];

  v12 = +[UIColor systemBackgroundColor];
  [(ENUIAnalyticsDataDetailViewController *)self textView];
  v13 = v47 = v8;
  [v13 setBackgroundColor:v12];

  v14 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [v14 setAlwaysBounceVertical:1];

  v15 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [v15 setText:v7];

  v16 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [v16 setEditable:0];

  v17 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(ENUIAnalyticsDataDetailViewController *)self view];
  v19 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  [v18 addSubview:v19];

  v46 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  v44 = [v46 leadingAnchor];
  v45 = [(ENUIAnalyticsDataDetailViewController *)self view];
  v43 = [v45 safeAreaLayoutGuide];
  v42 = [v43 leadingAnchor];
  v41 = [v44 constraintEqualToAnchor:v42];
  v50[0] = v41;
  v40 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  v37 = [v40 trailingAnchor];
  v38 = [(ENUIAnalyticsDataDetailViewController *)self view];
  v36 = [v38 safeAreaLayoutGuide];
  v34 = [v36 trailingAnchor];
  v33 = [v37 constraintEqualToAnchor:v34];
  v50[1] = v33;
  v32 = [(ENUIAnalyticsDataDetailViewController *)self textView];
  v30 = [v32 topAnchor];
  v31 = [(ENUIAnalyticsDataDetailViewController *)self view];
  v20 = [v31 safeAreaLayoutGuide];
  [v20 topAnchor];
  v21 = v39 = v6;
  v22 = [v30 constraintEqualToAnchor:v21];
  v50[2] = v22;
  [(ENUIAnalyticsDataDetailViewController *)self textView];
  v23 = v35 = v7;
  v24 = [v23 bottomAnchor];
  v25 = [(ENUIAnalyticsDataDetailViewController *)self view];
  v26 = [v25 safeAreaLayoutGuide];
  v27 = [v26 bottomAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];
  v50[3] = v28;
  v29 = [NSArray arrayWithObjects:v50 count:4];
  [NSLayoutConstraint activateConstraints:v29];
}

@end