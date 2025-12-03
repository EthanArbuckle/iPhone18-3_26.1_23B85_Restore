@interface BYODChooseYouOrFamilyViewController
+ (id)log;
- (BYODChooseYouOrFamilyViewController)initWithACAccount:(id)account domainPurchase:(BOOL)purchase domainName:(id)name;
- (id)_createOnlyForYouView;
- (id)_createYouAndFamilyView;
- (void)_addDataCardsView:(id)view;
- (void)_createOnlyForYouWasTapped:(id)tapped;
- (void)_forYouAndOthersWasTapped:(id)tapped;
- (void)_showAlertWithTitle:(id)title message:(id)message;
- (void)_showErrorAlert;
- (void)_updateDomainShareStatus:(BOOL)status;
- (void)viewDidLoad;
@end

@implementation BYODChooseYouOrFamilyViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A3D4;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D64A0 != -1)
  {
    dispatch_once(&qword_D64A0, block);
  }

  v2 = qword_D6498;

  return v2;
}

- (BYODChooseYouOrFamilyViewController)initWithACAccount:(id)account domainPurchase:(BOOL)purchase domainName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BYODChooseYouOrFamilyViewController;
  v10 = [(BYODBaseViewController *)&v13 initWithACAccount:account];
  v11 = v10;
  if (v10)
  {
    v10->_domainPurchase = purchase;
    objc_storeStrong(&v10->_domainName, name);
  }

  return v11;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = BYODChooseYouOrFamilyViewController;
  [(BYODBaseViewController *)&v10 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_SHARE_DOMAIN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_SHARE_DOMAIN_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];

  v7 = +[BYODIcon customEmailDomainIcon];
  [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:v6 icon:v7];
  if (!self->_domainPurchase)
  {
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancelButton:"];
    navigationItem = [(BYODChooseYouOrFamilyViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];
  }
}

- (void)_addDataCardsView:(id)view
{
  viewCopy = view;
  v5 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setSpacing:10.0];
  _createOnlyForYouView = [(BYODChooseYouOrFamilyViewController *)self _createOnlyForYouView];
  [v5 addArrangedSubview:_createOnlyForYouView];

  _createYouAndFamilyView = [(BYODChooseYouOrFamilyViewController *)self _createYouAndFamilyView];
  [v5 addArrangedSubview:_createYouAndFamilyView];

  contentView = [viewCopy contentView];
  [contentView addSubview:v5];

  contentView2 = [viewCopy contentView];
  contentView3 = [viewCopy contentView];
  topAnchor = [contentView3 topAnchor];
  topAnchor2 = [v5 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:?];
  v27[0] = v21;
  contentView4 = [viewCopy contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:?];
  v27[1] = v18;
  contentView5 = [viewCopy contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[2] = v11;
  contentView6 = [viewCopy contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v15;
  v16 = [NSArray arrayWithObjects:v27 count:4];
  [contentView2 addConstraints:v16];
}

- (id)_createOnlyForYouView
{
  if (MUISolariumFeatureEnabled())
  {
    v3 = @"person";
  }

  else
  {
    v3 = @"person.fill";
  }

  v4 = [UIImage systemImageNamed:v3];
  v5 = [BYODDataCardView alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_SHARE_DOMAIN_ONLY_YOU" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_SHARE_DOMAIN_ONLY_YOU_SUBTEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [(BYODDataCardView *)v5 initWithTitle:v7 subtitle:v9 icon:v4];

  [(BYODStackView *)v10 addTarget:self action:"_createOnlyForYouWasTapped:" forControlEvents:1];

  return v10;
}

- (id)_createYouAndFamilyView
{
  if (MUISolariumFeatureEnabled())
  {
    v3 = @"person.3";
  }

  else
  {
    v3 = @"person.3.fill";
  }

  v4 = [UIImage systemImageNamed:v3];
  v5 = [BYODDataCardView alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_SHARE_DOMAIN_YOU_AND_OTHERS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_SHARE_DOMAIN_YOU_AND_OTHERS_SUBTEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [(BYODDataCardView *)v5 initWithTitle:v7 subtitle:v9 icon:v4];

  [(BYODStackView *)v10 addTarget:self action:"_forYouAndOthersWasTapped:" forControlEvents:1];

  return v10;
}

- (void)_createOnlyForYouWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_domainPurchase)
  {
    spinner = self->_spinner;
    if (!spinner)
    {
      v5 = [[BYODSpinner alloc] initWithViewController:self];
      v6 = self->_spinner;
      self->_spinner = v5;

      spinner = self->_spinner;
    }

    [(BYODSpinner *)spinner startSpinner];
    [(BYODChooseYouOrFamilyViewController *)self _updateDomainShareStatus:0];
  }

  else
  {
    v7 = [BYODChooseEmailAddressViewController alloc];
    userAccount = [(BYODBaseViewController *)self userAccount];
    v9 = [(BYODChooseEmailAddressViewController *)v7 initWithACAccount:userAccount familyFlow:0];

    navigationController = [(BYODChooseYouOrFamilyViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

- (void)_forYouAndOthersWasTapped:(id)tapped
{
  tappedCopy = tapped;
  spinner = self->_spinner;
  if (!spinner)
  {
    v6 = [[BYODSpinner alloc] initWithViewController:self];
    v7 = self->_spinner;
    self->_spinner = v6;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  if (self->_domainPurchase)
  {
    [(BYODChooseYouOrFamilyViewController *)self _updateDomainShareStatus:1];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2B0BC;
    v9[3] = &unk_B8EB0;
    v9[4] = self;
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:v9];
  }
}

- (void)_showAlertWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = [messageCopy length];
  if (v8)
  {
    v9 = titleCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = messageCopy;
  }

  else
  {
    v10 = titleCopy;
  }

  v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

  [v11 addAction:v14];
  selfCopy = self;
  v15 = v11;
  v19 = v15;
  v16 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v16 performBlock:&v17];
}

- (void)_updateDomainShareStatus:(BOOL)status
{
  statusCopy = status;
  v5 = [BYODUpdateDomainShareStatusRequest alloc];
  userAccount = [(BYODBaseViewController *)self userAccount];
  userAccount2 = [(BYODBaseViewController *)self userAccount];
  accountStore = [userAccount2 accountStore];
  v9 = [(BYODUpdateDomainShareStatusRequest *)v5 initWithAccount:userAccount accountStore:accountStore domain:self->_domainName domainShared:statusCopy];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2B500;
  v10[3] = &unk_B91F0;
  objc_copyWeak(&v11, &location);
  [(BYODUpdateDomainShareStatusRequest *)v9 performRequestWithCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_showErrorAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v5 addAction:v8];
  selfCopy = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end