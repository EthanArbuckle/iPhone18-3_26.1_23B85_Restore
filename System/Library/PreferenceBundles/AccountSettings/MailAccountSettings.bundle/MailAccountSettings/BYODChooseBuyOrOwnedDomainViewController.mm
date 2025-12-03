@interface BYODChooseBuyOrOwnedDomainViewController
+ (id)log;
- (BYODChooseBuyOrOwnedDomainViewController)initWithACAccount:(id)account maxDomainsAllowed:(int64_t)allowed domainPurchaseProviderName:(id)name;
- (void)_addDataCardsView:(id)view;
- (void)_buyDomainWasTapped:(id)tapped;
- (void)_useOwnWasTapped:(id)tapped;
- (void)learnMoreWasTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BYODChooseBuyOrOwnedDomainViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28390;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6490 != -1)
  {
    dispatch_once(&qword_D6490, block);
  }

  v2 = qword_D6488;

  return v2;
}

- (BYODChooseBuyOrOwnedDomainViewController)initWithACAccount:(id)account maxDomainsAllowed:(int64_t)allowed domainPurchaseProviderName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BYODChooseBuyOrOwnedDomainViewController;
  v10 = [(BYODBaseViewController *)&v13 initWithACAccount:account];
  v11 = v10;
  if (v10)
  {
    v10->_maxDomainsAllowed = allowed;
    objc_storeStrong(&v10->_domainPurchaseProviderName, name);
  }

  return v11;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = BYODChooseBuyOrOwnedDomainViewController;
  [(BYODBaseViewController *)&v12 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_BUY_OR_OWNED_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_BUY_OR_OWNED_BODY%1$ld" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSString localizedStringWithFormat:v6, self->_maxDomainsAllowed];

  v8 = +[BYODIcon customEmailDomainIcon];
  [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:v7 icon:v8];
  navigationItem = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationItem2 = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationItem];
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelWasTapped:"];
  [navigationItem2 setLeftBarButtonItem:v11];
}

- (void)_addDataCardsView:(id)view
{
  viewCopy = view;
  v4 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAxis:1];
  [v4 setSpacing:10.0];
  if (MUISolariumFeatureEnabled())
  {
    v5 = @"dollarsign.circle";
  }

  else
  {
    v5 = @"dollarsign.circle.fill";
  }

  v51 = [UIImage systemImageNamed:v5];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_BUY_OR_OWNED_BUY_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v50 = [NSString stringWithFormat:v7, self->_domainPurchaseProviderName];

  v8 = [BYODDataCardView alloc];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_BUY_OR_OWNED_BUY_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [(BYODDataCardView *)v8 initWithTitle:v10 subtitle:v50 icon:v51];

  v43 = v11;
  [(BYODDataCardView *)v11 setHideChevron:0];
  [(BYODStackView *)v11 addTarget:self action:"_buyDomainWasTapped:" forControlEvents:1];
  [v4 addArrangedSubview:v11];
  if (MUISolariumFeatureEnabled())
  {
    v12 = @"square.and.arrow.down.on.square";
  }

  else
  {
    v12 = @"square.and.arrow.down.on.square.fill";
  }

  v49 = [UIImage systemImageNamed:v12];
  v13 = [BYODDataCardView alloc];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BYOD_BUY_OR_OWNED_USE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BYOD_BUY_OR_OWNED_USE_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18 = [(BYODDataCardView *)v13 initWithTitle:v15 subtitle:v17 icon:v49];

  v42 = v18;
  [(BYODDataCardView *)v18 setHideChevron:0];
  [(BYODStackView *)v18 addTarget:self action:"_useOwnWasTapped:" forControlEvents:1];
  [v4 addArrangedSubview:v18];
  v52 = +[OBTextSectionAccessoryButton accessoryButton];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v52 setTitle:v20 forState:0];

  titleLabel = [v52 titleLabel];
  [titleLabel setTextAlignment:1];

  [v52 addTarget:self action:"learnMoreWasTapped:" forControlEvents:1];
  [v4 addArrangedSubview:v52];
  contentView = [viewCopy contentView];
  [contentView addSubview:v4];

  contentView2 = [viewCopy contentView];
  contentView3 = [viewCopy contentView];
  topAnchor = [contentView3 topAnchor];
  topAnchor2 = [v4 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:?];
  v54[0] = v39;
  contentView4 = [viewCopy contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:?];
  v54[1] = v36;
  contentView5 = [viewCopy contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:?];
  v54[2] = v33;
  contentView6 = [viewCopy contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v54[3] = v24;
  leadingAnchor3 = [v52 leadingAnchor];
  leadingAnchor4 = [v4 leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v54[4] = v27;
  trailingAnchor3 = [v52 trailingAnchor];
  trailingAnchor4 = [v4 trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v54[5] = v30;
  v31 = [NSArray arrayWithObjects:v54 count:6];
  [contentView2 addConstraints:v31];
}

- (void)learnMoreWasTapped:(id)tapped
{
  v6 = +[UIApplication sharedApplication];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_BUY_OR_OWNED_LEARN_MORE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [NSURL URLWithString:v4];
  [v6 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)_buyDomainWasTapped:(id)tapped
{
  v4 = [[BYODSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v4;

  [(BYODSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v6 = [BYODDomainPurchaseEligibilityRequest alloc];
  userAccount = [(BYODBaseViewController *)self userAccount];
  userAccount2 = [(BYODBaseViewController *)self userAccount];
  accountStore = [userAccount2 accountStore];
  v10 = [(BYODDomainPurchaseEligibilityRequest *)v6 initWithAccount:userAccount accountStore:accountStore];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2929C;
  v11[3] = &unk_B91A0;
  objc_copyWeak(&v12, &location);
  [(BYODDomainPurchaseEligibilityRequest *)v10 performRequestWithCallback:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)_useOwnWasTapped:(id)tapped
{
  v4 = [BYODChooseYouOrFamilyViewController alloc];
  userAccount = [(BYODBaseViewController *)self userAccount];
  v7 = [(BYODBaseViewController *)v4 initWithACAccount:userAccount];

  navigationController = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

@end