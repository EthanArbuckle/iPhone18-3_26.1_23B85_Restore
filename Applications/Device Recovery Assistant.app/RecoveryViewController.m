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

    v9 = [(RecoveryViewController *)v7 activityView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

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
    v15 = [(RecoveryViewController *)v7 activityView];
    v52[0] = v15;
    v52[1] = v10;
    v16 = [NSArray arrayWithObjects:v52 count:2];
    v17 = [v14 initWithArrangedSubviews:v16];
    [(RecoveryViewController *)v7 setStackView:v17];

    v18 = [(RecoveryViewController *)v7 stackView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(RecoveryViewController *)v7 stackView];
    [v19 setAxis:0];

    v20 = [(RecoveryViewController *)v7 stackView];
    [v20 setAlignment:1];

    v21 = [(RecoveryViewController *)v7 stackView];
    [v21 setDistribution:0];

    v22 = [(RecoveryViewController *)v7 stackView];
    [v22 setSpacing:10.0];

    v23 = [UIStackView alloc];
    v24 = [(RecoveryViewController *)v7 stackView];
    v51 = v24;
    v25 = [NSArray arrayWithObjects:&v51 count:1];
    v26 = [v23 initWithArrangedSubviews:v25];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAxis:1];
    [v26 setAlignment:1];
    [v26 setDistribution:0];
    v27 = [(RecoveryViewController *)v7 contentView];
    [v27 addSubview:v26];

    v45 = [v26 topAnchor];
    v46 = [(RecoveryViewController *)v7 contentView];
    v44 = [v46 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v50[0] = v43;
    v41 = [v26 leftAnchor];
    v42 = [(RecoveryViewController *)v7 contentView];
    v40 = [v42 leftAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v50[1] = v39;
    v37 = [v26 rightAnchor];
    v38 = [(RecoveryViewController *)v7 contentView];
    v28 = [v38 rightAnchor];
    v29 = [v37 constraintEqualToAnchor:v28];
    v50[2] = v29;
    v30 = [v26 bottomAnchor];
    v31 = [(RecoveryViewController *)v7 contentView];
    v32 = [v31 bottomAnchor];
    [v30 constraintEqualToAnchor:v32];
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
  v3 = [(RecoveryViewController *)self delegate];

  if (v3)
  {
    v4 = [(RecoveryViewController *)self delegate];
    [v4 recoveryViewControllerDidBegin:self];
  }
}

- (RecoveryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end