@interface CARAirPlayAnalyticsPanel
- (void)_fetchAnalytics;
- (void)viewDidLoad;
@end

@implementation CARAirPlayAnalyticsPanel

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = CARAirPlayAnalyticsPanel;
  [(CARSettingsTablePanel *)&v28 viewDidLoad];
  v3 = [(CARAirPlayAnalyticsPanel *)self view];
  v4 = objc_alloc_init(UITextView);
  [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)v4 setText:&stru_1000DE3D8];
  [(UITextView *)v4 setTextAlignment:4];
  v5 = +[UIColor labelColor];
  [(UITextView *)v4 setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UITextView *)v4 setFont:v6];

  [(UITextView *)v4 setEditable:0];
  [(UITextView *)v4 setSelectable:0];
  v7 = [v3 backgroundColor];
  [(UITextView *)v4 setBackgroundColor:v7];

  [(UITextView *)v4 setTextContainerInset:0.0, 0.0, 0.0, 30.0];
  v27 = self;
  analyticsTextView = self->_analyticsTextView;
  self->_analyticsTextView = v4;
  v9 = v4;

  [v3 addSubview:v9];
  v25 = [(UITextView *)v9 topAnchor];
  v26 = [v3 safeAreaLayoutGuide];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToSystemSpacingBelowAnchor:v24 multiplier:1.0];
  v29[0] = v23;
  v22 = [v3 safeAreaLayoutGuide];
  v21 = [v22 bottomAnchor];
  v20 = [(UITextView *)v9 bottomAnchor];
  v19 = [v21 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:1.0];
  v29[1] = v19;
  v18 = [(UITextView *)v9 leadingAnchor];
  v10 = [v3 safeAreaLayoutGuide];
  v11 = [v10 leadingAnchor];
  v12 = [v18 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:2.0];
  v29[2] = v12;
  v13 = [v3 safeAreaLayoutGuide];
  v14 = [v13 trailingAnchor];
  v15 = [(UITextView *)v9 trailingAnchor];
  v16 = [v14 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:2.0];
  v29[3] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:4];

  [v3 addConstraints:v17];
  [(CARAirPlayAnalyticsPanel *)v27 _fetchAnalytics];
}

- (void)_fetchAnalytics
{
  v3 = [(CARSettingsPanel *)self panelController];
  v4 = [v3 vehicleVideoSettings];

  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012E9C;
  v5[3] = &unk_1000DB1A8;
  objc_copyWeak(&v6, &location);
  [v4 fetchAnalyticsDataWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end