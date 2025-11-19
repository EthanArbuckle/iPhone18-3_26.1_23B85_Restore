@interface BYODChooseBuyOrOwnedDomainViewController
+ (id)log;
- (BYODChooseBuyOrOwnedDomainViewController)initWithACAccount:(id)a3 maxDomainsAllowed:(int64_t)a4 domainPurchaseProviderName:(id)a5;
- (void)_addDataCardsView:(id)a3;
- (void)_buyDomainWasTapped:(id)a3;
- (void)_useOwnWasTapped:(id)a3;
- (void)learnMoreWasTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODChooseBuyOrOwnedDomainViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_28390;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6490 != -1)
  {
    dispatch_once(&qword_D6490, block);
  }

  v2 = qword_D6488;

  return v2;
}

- (BYODChooseBuyOrOwnedDomainViewController)initWithACAccount:(id)a3 maxDomainsAllowed:(int64_t)a4 domainPurchaseProviderName:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BYODChooseBuyOrOwnedDomainViewController;
  v10 = [(BYODBaseViewController *)&v13 initWithACAccount:a3];
  v11 = v10;
  if (v10)
  {
    v10->_maxDomainsAllowed = a4;
    objc_storeStrong(&v10->_domainPurchaseProviderName, a5);
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
  v9 = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationItem];
  [v9 setHidesBackButton:1];

  v10 = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationItem];
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelWasTapped:"];
  [v10 setLeftBarButtonItem:v11];
}

- (void)_addDataCardsView:(id)a3
{
  v53 = a3;
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

  v21 = [v52 titleLabel];
  [v21 setTextAlignment:1];

  [v52 addTarget:self action:"learnMoreWasTapped:" forControlEvents:1];
  [v4 addArrangedSubview:v52];
  v22 = [v53 contentView];
  [v22 addSubview:v4];

  v44 = [v53 contentView];
  v41 = [v53 contentView];
  v48 = [v41 topAnchor];
  v40 = [v4 topAnchor];
  v39 = [v48 constraintEqualToAnchor:?];
  v54[0] = v39;
  v38 = [v53 contentView];
  v47 = [v38 leadingAnchor];
  v37 = [v4 leadingAnchor];
  v36 = [v47 constraintEqualToAnchor:?];
  v54[1] = v36;
  v35 = [v53 contentView];
  v46 = [v35 trailingAnchor];
  v34 = [v4 trailingAnchor];
  v33 = [v46 constraintEqualToAnchor:?];
  v54[2] = v33;
  v32 = [v53 contentView];
  v45 = [v32 bottomAnchor];
  v23 = [v4 bottomAnchor];
  v24 = [v45 constraintEqualToAnchor:v23];
  v54[3] = v24;
  v25 = [v52 leadingAnchor];
  v26 = [v4 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v54[4] = v27;
  v28 = [v52 trailingAnchor];
  v29 = [v4 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v54[5] = v30;
  v31 = [NSArray arrayWithObjects:v54 count:6];
  [v44 addConstraints:v31];
}

- (void)learnMoreWasTapped:(id)a3
{
  v6 = +[UIApplication sharedApplication];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_BUY_OR_OWNED_LEARN_MORE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [NSURL URLWithString:v4];
  [v6 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)_buyDomainWasTapped:(id)a3
{
  v4 = [[BYODSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v4;

  [(BYODSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v6 = [BYODDomainPurchaseEligibilityRequest alloc];
  v7 = [(BYODBaseViewController *)self userAccount];
  v8 = [(BYODBaseViewController *)self userAccount];
  v9 = [v8 accountStore];
  v10 = [(BYODDomainPurchaseEligibilityRequest *)v6 initWithAccount:v7 accountStore:v9];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2929C;
  v11[3] = &unk_B91A0;
  objc_copyWeak(&v12, &location);
  [(BYODDomainPurchaseEligibilityRequest *)v10 performRequestWithCallback:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)_useOwnWasTapped:(id)a3
{
  v4 = [BYODChooseYouOrFamilyViewController alloc];
  v5 = [(BYODBaseViewController *)self userAccount];
  v7 = [(BYODBaseViewController *)v4 initWithACAccount:v5];

  v6 = [(BYODChooseBuyOrOwnedDomainViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

@end