@interface RecoveryViewController
- (RecoveryViewController)init;
- (RecoveryViewControllerDelegate)delegate;
- (void)_notifyDelegateOnBegin;
- (void)viewDidLoad;
@end

@implementation RecoveryViewController

- (RecoveryViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"RECOVERY_SCREEN_TITLE" value:&stru_100028E90 table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RECOVERY_SCREEN_DESCRIPTION" value:&stru_100028E90 table:0];

  v49.receiver = self;
  v49.super_class = RecoveryViewController;
  v7 = [(RecoveryViewController *)&v49 initWithTitle:v4 detailText:v6 symbolName:@"cross.circle"];
  if (v7)
  {
    v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(RecoveryViewController *)v7 setActivityView:v8];

    activityView = [(RecoveryViewController *)v7 activityView];
    [activityView setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"RECOVERING_LABEL" value:&stru_100028E90 table:0];
    [v10 setText:v12];

    [v10 setTextAlignment:0];
    v13 = +[UIColor grayColor];
    v47 = v10;
    [v10 setTextColor:v13];

    v48 = v4;
    v14 = [UIStackView alloc];
    activityView2 = [(RecoveryViewController *)v7 activityView];
    v52[0] = activityView2;
    v52[1] = v10;
    v16 = [NSArray arrayWithObjects:v52 count:2];
    v17 = [v14 initWithArrangedSubviews:v16];
    [(RecoveryViewController *)v7 setStackView:v17];

    stackView = [(RecoveryViewController *)v7 stackView];
    [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(RecoveryViewController *)v7 stackView];
    [stackView2 setAxis:0];

    stackView3 = [(RecoveryViewController *)v7 stackView];
    [stackView3 setAlignment:1];

    stackView4 = [(RecoveryViewController *)v7 stackView];
    [stackView4 setDistribution:0];

    stackView5 = [(RecoveryViewController *)v7 stackView];
    [stackView5 setSpacing:10.0];

    v23 = [UIStackView alloc];
    stackView6 = [(RecoveryViewController *)v7 stackView];
    v51 = stackView6;
    v25 = [NSArray arrayWithObjects:&v51 count:1];
    v26 = [v23 initWithArrangedSubviews:v25];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAxis:1];
    [v26 setAlignment:1];
    [v26 setDistribution:0];
    contentView = [(RecoveryViewController *)v7 contentView];
    [contentView addSubview:v26];

    topAnchor = [v26 topAnchor];
    contentView2 = [(RecoveryViewController *)v7 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v43;
    leftAnchor = [v26 leftAnchor];
    contentView3 = [(RecoveryViewController *)v7 contentView];
    leftAnchor2 = [contentView3 leftAnchor];
    v39 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v50[1] = v39;
    rightAnchor = [v26 rightAnchor];
    contentView4 = [(RecoveryViewController *)v7 contentView];
    rightAnchor2 = [contentView4 rightAnchor];
    v29 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v50[2] = v29;
    bottomAnchor = [v26 bottomAnchor];
    contentView5 = [(RecoveryViewController *)v7 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34 = v33 = v6;
    v50[3] = v34;
    v35 = [NSArray arrayWithObjects:v50 count:4];
    [NSLayoutConstraint activateConstraints:v35];

    v6 = v33;
    v4 = v48;
  }

  return v7;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = RecoveryViewController;
  [(RecoveryViewController *)&v2 viewDidLoad];
}

- (void)_notifyDelegateOnBegin
{
  delegate = [(RecoveryViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(RecoveryViewController *)self delegate];
    [delegate2 recoveryViewControllerDidBegin:self];
  }
}

- (RecoveryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end