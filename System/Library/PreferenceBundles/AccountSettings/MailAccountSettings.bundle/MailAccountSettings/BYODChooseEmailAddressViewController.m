@interface BYODChooseEmailAddressViewController
- (BYODChooseEmailAddressViewController)initWithACAccount:(id)a3 familyFlow:(BOOL)a4;
- (id)_createDoNotHaveAddress;
- (id)_createHaveExistingAddress;
- (void)_addDataCardsView:(id)a3;
- (void)_doNotHaveExistingAddressWasTapped:(id)a3;
- (void)_haveExistingAddressWasTapped:(id)a3;
- (void)backWasTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODChooseEmailAddressViewController

- (BYODChooseEmailAddressViewController)initWithACAccount:(id)a3 familyFlow:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BYODChooseEmailAddressViewController;
  result = [(BYODBaseViewController *)&v6 initWithACAccount:a3];
  if (result)
  {
    _familyFlow = a4;
  }

  return result;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BYODChooseEmailAddressViewController;
  [(BYODBaseViewController *)&v9 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_EMAIL_ADDRESSES_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_EMAIL_ADDRESSES_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];

  v7 = +[BYODIcon customEmailDomainIcon];
  [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:v6 icon:v7];
  v8 = [(BYODChooseEmailAddressViewController *)self navigationItem];
  [v8 setHidesBackButton:0];
}

- (void)_addDataCardsView:(id)a3
{
  v4 = a3;
  v5 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setSpacing:10.0];
  v6 = [(BYODChooseEmailAddressViewController *)self _createHaveExistingAddress];
  [v5 addArrangedSubview:v6];

  v7 = [(BYODChooseEmailAddressViewController *)self _createDoNotHaveAddress];
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

- (id)_createHaveExistingAddress
{
  if (MUISolariumFeatureEnabled())
  {
    v3 = @"envelope";
  }

  else
  {
    v3 = @"envelope.fill";
  }

  v4 = [UIImage systemImageNamed:v3];
  v5 = [BYODDataCardView alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_HAVE_EXISTING_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_HAVE_EXISTING_ADDRESS_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [(BYODDataCardView *)v5 initWithTitle:v7 subtitle:v9 icon:v4];

  [(BYODStackView *)v10 addTarget:self action:"_haveExistingAddressWasTapped:" forControlEvents:1];

  return v10;
}

- (id)_createDoNotHaveAddress
{
  v3 = MUISolariumFeatureEnabled();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (v3)
  {
    [UIImage imageNamed:@"envelope.badge.minus" inBundle:v4];
  }

  else
  {
    [UIImage imageNamed:@"CustomDomainIconMinus.png" inBundle:v4];
  }
  v5 = ;

  if (_familyFlow == 1)
  {
    v6 = [BYODDataCardView alloc];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_DO_NOT_HAVE_ANY_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    [v9 localizedStringForKey:@"BYOD_DO_NOT_HAVE_ANY_ADDRESS_BODY_FAMILY" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    v6 = [BYODDataCardView alloc];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_DO_NOT_HAVE_ANY_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    [v9 localizedStringForKey:@"BYOD_DO_NOT_HAVE_ANY_ADDRESS_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
  }
  v10 = ;
  v11 = [(BYODDataCardView *)v6 initWithTitle:v8 subtitle:v10 icon:v5];

  [(BYODStackView *)v11 addTarget:self action:"_doNotHaveExistingAddressWasTapped:" forControlEvents:1];

  return v11;
}

- (void)backWasTapped:(id)a3
{
  v4 = [(BYODChooseEmailAddressViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_haveExistingAddressWasTapped:(id)a3
{
  v7 = a3;
  v4 = [BYODExistingAddressViewController alloc];
  v5 = [(BYODBaseViewController *)self userAccount];
  v6 = [(BYODExistingAddressViewController *)v4 initWithACAccount:v5 familyFlow:_familyFlow existingAddress:1];

  [(BYODExistingAddressViewController *)v6 setModalInPresentation:0];
  [(BYODChooseEmailAddressViewController *)self showViewController:v6 sender:v7];
}

- (void)_doNotHaveExistingAddressWasTapped:(id)a3
{
  v4 = [BYODExistingAddressViewController alloc];
  v5 = [(BYODBaseViewController *)self userAccount];
  v7 = [(BYODExistingAddressViewController *)v4 initWithACAccount:v5 familyFlow:_familyFlow existingAddress:0];

  v6 = [(BYODChooseEmailAddressViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

@end