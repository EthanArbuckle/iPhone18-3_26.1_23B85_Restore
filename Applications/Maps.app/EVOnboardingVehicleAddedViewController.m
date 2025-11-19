@interface EVOnboardingVehicleAddedViewController
- (EVOnboardingVehicleAddedViewController)initWithVehicle:(id)a3 isLastPresentedController:(BOOL)a4 delegate:(id)a5;
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

  v4 = self;
  v40 = self;
  v5 = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v43 = [NSString stringWithFormat:v45, v5];

  v6 = +[NSBundle mainBundle];
  v44 = [v6 localizedStringForKey:@"[EV Onboarding] Vehicle added subtitle" value:@"localized string not found" table:0];

  v7 = [(VGVehicle *)v4->_vehicle combinedDisplayName];
  v42 = [NSString stringWithFormat:v44, v7];

  v39 = [[OBWelcomeController alloc] initWithTitle:v43 detailText:v42 icon:0];
  [v39 setModalPresentationStyle:2];
  v8 = [UIImage systemImageNamed:@"bolt.car.fill"];
  v41 = [v8 imageWithoutBaseline];

  v9 = [[PersonalizedImageView alloc] initWithMainImage:v41 mainImageSize:135.0 userImageDiameter:100.0 userImageExtensionPastMainImage:48.0, 3.0];
  [(PersonalizedImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v39 headerView];
  v11 = [v10 customIconContainerView];

  [v11 addSubview:v9];
  v38 = [(PersonalizedImageView *)v9 topAnchor];
  v37 = [v11 topAnchor];
  v36 = [v38 constraintGreaterThanOrEqualToAnchor:v37];
  v46[0] = v36;
  v35 = [(PersonalizedImageView *)v9 leadingAnchor];
  v34 = [v11 leadingAnchor];
  v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34];
  v46[1] = v33;
  v32 = [(PersonalizedImageView *)v9 trailingAnchor];
  v31 = [v11 trailingAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31];
  v46[2] = v30;
  v29 = [(PersonalizedImageView *)v9 bottomAnchor];
  v28 = [v11 bottomAnchor];
  v12 = [v29 constraintLessThanOrEqualToAnchor:v28];
  v46[3] = v12;
  v13 = [(PersonalizedImageView *)v9 centerXAnchor];
  v14 = [v11 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v46[4] = v15;
  v16 = [(PersonalizedImageView *)v9 centerYAnchor];
  v17 = [v11 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v46[5] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:6];
  [NSLayoutConstraint activateConstraints:v19];

  v20 = [v39 headerView];
  [v20 setTitleTrailingSymbol:@"checkmark"];

  v21 = +[OBBoldTrayButton boldButton];
  v22 = v21;
  if (v40->_isLastPresentedController)
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
  v26 = [v39 buttonTray];
  [v26 addButton:v22];

  return v39;
}

- (EVOnboardingVehicleAddedViewController)initWithVehicle:(id)a3 isLastPresentedController:(BOOL)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EVOnboardingVehicleAddedViewController;
  v11 = [(EVOnboardingBaseViewController *)&v14 initWithDelegate:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vehicle, a3);
    v12->_isLastPresentedController = a4;
    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

@end