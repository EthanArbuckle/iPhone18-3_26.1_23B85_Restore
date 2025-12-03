@interface EVOnboardingVehicleAddedViewController
- (EVOnboardingVehicleAddedViewController)initWithVehicle:(id)vehicle isLastPresentedController:(BOOL)controller delegate:(id)delegate;
- (id)obViewController;
- (void)_donePressed;
- (void)_nextPressed;
@end

@implementation EVOnboardingVehicleAddedViewController

- (void)_nextPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained vehicleAddedViewControllerDidSelectNext:self];
}

- (void)_donePressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained vehicleAddedViewControllerDidSelectDone:self];
}

- (id)obViewController
{
  v3 = +[NSBundle mainBundle];
  v45 = [v3 localizedStringForKey:@"[EV Onboarding] Vehicle added title" value:@"localized string not found" table:0];

  selfCopy = self;
  selfCopy2 = self;
  combinedDisplayName = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v43 = [NSString stringWithFormat:v45, combinedDisplayName];

  v6 = +[NSBundle mainBundle];
  v44 = [v6 localizedStringForKey:@"[EV Onboarding] Vehicle added subtitle" value:@"localized string not found" table:0];

  combinedDisplayName2 = [(VGVehicle *)selfCopy->_vehicle combinedDisplayName];
  v42 = [NSString stringWithFormat:v44, combinedDisplayName2];

  v39 = [[OBWelcomeController alloc] initWithTitle:v43 detailText:v42 icon:0];
  [v39 setModalPresentationStyle:2];
  v8 = [UIImage systemImageNamed:@"bolt.car.fill"];
  imageWithoutBaseline = [v8 imageWithoutBaseline];

  v9 = [[PersonalizedImageView alloc] initWithMainImage:imageWithoutBaseline mainImageSize:135.0 userImageDiameter:100.0 userImageExtensionPastMainImage:48.0, 3.0];
  [(PersonalizedImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerView = [v39 headerView];
  customIconContainerView = [headerView customIconContainerView];

  [customIconContainerView addSubview:v9];
  topAnchor = [(PersonalizedImageView *)v9 topAnchor];
  topAnchor2 = [customIconContainerView topAnchor];
  v36 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v46[0] = v36;
  leadingAnchor = [(PersonalizedImageView *)v9 leadingAnchor];
  leadingAnchor2 = [customIconContainerView leadingAnchor];
  v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v46[1] = v33;
  trailingAnchor = [(PersonalizedImageView *)v9 trailingAnchor];
  trailingAnchor2 = [customIconContainerView trailingAnchor];
  v30 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v46[2] = v30;
  bottomAnchor = [(PersonalizedImageView *)v9 bottomAnchor];
  bottomAnchor2 = [customIconContainerView bottomAnchor];
  v12 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v46[3] = v12;
  centerXAnchor = [(PersonalizedImageView *)v9 centerXAnchor];
  centerXAnchor2 = [customIconContainerView centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[4] = v15;
  centerYAnchor = [(PersonalizedImageView *)v9 centerYAnchor];
  centerYAnchor2 = [customIconContainerView centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[5] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:6];
  [NSLayoutConstraint activateConstraints:v19];

  headerView2 = [v39 headerView];
  [headerView2 setTitleTrailingSymbol:@"checkmark"];

  v21 = +[OBBoldTrayButton boldButton];
  v22 = v21;
  if (selfCopy2->_isLastPresentedController)
  {
    v23 = @"[EV Onboarding] Done button";
  }

  else
  {
    v23 = @"[EV Onboarding] Next button";
  }

  [v21 addTarget:? action:? forControlEvents:?];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:v23 value:@"localized string not found" table:0];
  [v22 setTitle:v25 forState:0];

  [v22 setAccessibilityIdentifier:@"ConnectButton"];
  buttonTray = [v39 buttonTray];
  [buttonTray addButton:v22];

  return v39;
}

- (EVOnboardingVehicleAddedViewController)initWithVehicle:(id)vehicle isLastPresentedController:(BOOL)controller delegate:(id)delegate
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = EVOnboardingVehicleAddedViewController;
  v11 = [(EVOnboardingBaseViewController *)&v14 initWithDelegate:delegateCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vehicle, vehicle);
    v12->_isLastPresentedController = controller;
    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

@end