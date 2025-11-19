@interface BYODChooseYouOrFamilyViewController
+ (id)log;
- (BYODChooseYouOrFamilyViewController)initWithACAccount:(id)a3 domainPurchase:(BOOL)a4 domainName:(id)a5;
- (id)_createOnlyForYouView;
- (id)_createYouAndFamilyView;
- (void)_addDataCardsView:(id)a3;
- (void)_createOnlyForYouWasTapped:(id)a3;
- (void)_forYouAndOthersWasTapped:(id)a3;
- (void)_showAlertWithTitle:(id)a3 message:(id)a4;
- (void)_showErrorAlert;
- (void)_updateDomainShareStatus:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BYODChooseYouOrFamilyViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A3D4;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D64A0 != -1)
  {
    dispatch_once(&qword_D64A0, block);
  }

  v2 = qword_D6498;

  return v2;
}

- (BYODChooseYouOrFamilyViewController)initWithACAccount:(id)a3 domainPurchase:(BOOL)a4 domainName:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = BYODChooseYouOrFamilyViewController;
  v10 = [(BYODBaseViewController *)&v13 initWithACAccount:a3];
  v11 = v10;
  if (v10)
  {
    v10->_domainPurchase = a4;
    objc_storeStrong(&v10->_domainName, a5);
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
    v9 = [(BYODChooseYouOrFamilyViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:v8];
  }
}

- (void)_addDataCardsView:(id)a3
{
  v4 = a3;
  v5 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setSpacing:10.0];
  v6 = [(BYODChooseYouOrFamilyViewController *)self _createOnlyForYouView];
  [v5 addArrangedSubview:v6];

  v7 = [(BYODChooseYouOrFamilyViewController *)self _createYouAndFamilyView];
  [v5 addArrangedSubview:v7];

  v8 = [v4 contentView];
  [v8 addSubview:v5];

  v24 = [v4 contentView];
  v23 = [v4 contentView];
  v26 = [v23 topAnchor];
  v22 = [v5 topAnchor];
  v21 = [v26 constraintEqualToAnchor:?];
  v27[0] = v21;
  v20 = [v4 contentView];
  v25 = [v20 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v18 = [v25 constraintEqualToAnchor:?];
  v27[1] = v18;
  v17 = [v4 contentView];
  v9 = [v17 trailingAnchor];
  v10 = [v5 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v27[2] = v11;
  v12 = [v4 contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v5 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v27[3] = v15;
  v16 = [NSArray arrayWithObjects:v27 count:4];
  [v24 addConstraints:v16];
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

- (void)_createOnlyForYouWasTapped:(id)a3
{
  v11 = a3;
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
    v8 = [(BYODBaseViewController *)self userAccount];
    v9 = [(BYODChooseEmailAddressViewController *)v7 initWithACAccount:v8 familyFlow:0];

    v10 = [(BYODChooseYouOrFamilyViewController *)self navigationController];
    [v10 pushViewController:v9 animated:1];
  }
}

- (void)_forYouAndOthersWasTapped:(id)a3
{
  v4 = a3;
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

- (void)_showAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

  [v11 addAction:v14];
  v18 = self;
  v15 = v11;
  v19 = v15;
  v16 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v16 performBlock:&v17];
}

- (void)_updateDomainShareStatus:(BOOL)a3
{
  v3 = a3;
  v5 = [BYODUpdateDomainShareStatusRequest alloc];
  v6 = [(BYODBaseViewController *)self userAccount];
  v7 = [(BYODBaseViewController *)self userAccount];
  v8 = [v7 accountStore];
  v9 = [(BYODUpdateDomainShareStatusRequest *)v5 initWithAccount:v6 accountStore:v8 domain:self->_domainName domainShared:v3];

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
  v12 = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end