@interface BuddyProximityAutomatedDeviceEnrollmentCompletionController
- (BuddyProximityAutomatedDeviceEnrollmentCompletionController)init;
- (void)configureViewWithViewModel:(id)a3;
- (void)displayVerboseDescriptionButton;
- (void)linkButtonTapped:(id)a3;
- (void)proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:(id)a3;
- (void)removeVerboseDescriptionButton;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3;
- (void)shutdownButtonTapped:(id)a3;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentCompletionController

- (BuddyProximityAutomatedDeviceEnrollmentCompletionController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentCompletionController;
  location = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)&v4 initWithTitle:&stru_10032F900 detailText:0 symbolName:0];
  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_proximityAutomatedDeviceEnrollmentController, location[0]);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)v6->_proximityAutomatedDeviceEnrollmentController setDelegate:v6];
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v6->_proximityAutomatedDeviceEnrollmentController completionViewModel];
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v6 configureViewWithViewModel:v3, v3];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  SBSPresentPowerDownUI();
  objc_storeStrong(location, 0);
}

- (void)configureViewWithViewModel:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 buttonTray];
  [v3 removeAllButtons];

  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 removeVerboseDescriptionButton];
  v4 = v24;
  v5 = [location[0] buttonTitle];
  [(BuddyWelcomeController *)v4 addBoldButton:v5 action:"shutdownButtonTapped:"];

  if ([location[0] hasVerboseDescription])
  {
    v6 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 featureFlags];
    v7 = [(BuddyFeatureFlags *)v6 isSolariumEnabled];

    if (v7)
    {
      v8 = [UIButton buttonWithType:1];
      [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 setVerboseDescriptionButton:v8];

      v9 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 verboseDescriptionButton];
      v10 = [location[0] linkButtonTitle];
      [(UIButton *)v9 setTitle:v10 forState:0];

      v11 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 verboseDescriptionButton];
      [(UIButton *)v11 addTarget:v24 action:"linkButtonTapped:" forControlEvents:64];

      v12 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 verboseDescriptionButton];
      [(UIButton *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v13 = v24;
      v14 = [location[0] linkButtonTitle];
      v15 = [(BuddyWelcomeController *)v13 createLinkButtonWithTitle:v14 action:"linkButtonTapped:"];
      [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 setVerboseDescriptionButton:v15];
    }

    [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 displayVerboseDescriptionButton];
  }

  v16 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 headerView];
  v17 = [location[0] title];
  [v16 setTitle:v17];

  v18 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 headerView];
  v19 = [location[0] detailText];
  [v18 setDetailText:v19];

  v20 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 headerView];
  v21 = [location[0] symbolName];
  [v20 setSymbol:v21 accessibilityLabel:0];

  v22 = [location[0] verboseDescriptionText];
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v24 setVerboseDescriptionText:v22];

  objc_storeStrong(location, 0);
}

- (void)shutdownButtonTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v5 proximityAutomatedDeviceEnrollmentController];
  [(BuddyProximityAutomatedDeviceEnrollmentController *)v3 shutdownButtonTapped];

  objc_storeStrong(location, 0);
}

- (void)linkButtonTapped:(id)a3
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 removeVerboseDescriptionButton];
  v40 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v40 _setCornerRadius:8.0];
  v3 = +[UIColor systemGroupedBackgroundColor];
  [v40 setBackgroundColor:v3];

  v4 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  [v4 addSubview:v40];

  v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setNumberOfLines:0];
  v5 = [UIFont monospacedSystemFontOfSize:12.0 weight:UIFontWeightRegular];
  [v39 setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [v39 setTextColor:v6];

  v7 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 verboseDescriptionText];
  [v39 setText:v7];

  [v39 sizeToFit];
  [v40 addSubview:v39];
  v31 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  v37 = [v40 topAnchor];
  v38 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:?];
  v43[0] = v35;
  v33 = [v40 bottomAnchor];
  v34 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  v32 = [v34 bottomAnchor];
  v30 = [v33 constraintEqualToAnchor:?];
  v43[1] = v30;
  v28 = [v40 leadingAnchor];
  v29 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:?];
  v43[2] = v26;
  v24 = [v40 trailingAnchor];
  v25 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 contentView];
  v23 = [v25 trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:?];
  v43[3] = v22;
  v21 = [v39 topAnchor];
  v20 = [v40 topAnchor];
  v19 = [v21 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  v43[4] = v19;
  v18 = [v39 bottomAnchor];
  v8 = [v40 bottomAnchor];
  v9 = [v18 constraintEqualToSystemSpacingBelowAnchor:v8 multiplier:-1.0];
  v43[5] = v9;
  v10 = [v39 leadingAnchor];
  v11 = [v40 leadingAnchor];
  v12 = [v10 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:1.0];
  v43[6] = v12;
  v13 = [v39 trailingAnchor];
  v14 = [v40 trailingAnchor];
  v15 = [v13 constraintEqualToSystemSpacingAfterAnchor:v14 multiplier:-1.0];
  v43[7] = v15;
  v16 = [NSArray arrayWithObjects:v43 count:8];
  [v31 addConstraints:v16];

  v17 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v42 view];
  [v17 layoutIfNeeded];

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)removeVerboseDescriptionButton
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self verboseDescriptionButton];
  [(UIButton *)v2 removeFromSuperview];

  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self setVerboseDescriptionButton:0];
}

- (void)displayVerboseDescriptionButton
{
  v45 = self;
  location[1] = a2;
  location[0] = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self verboseDescriptionButton];
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
  [v2 addSubview:location[0]];

  v3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isSolariumEnabled];

  if (v4)
  {
    v36 = [location[0] leadingAnchor];
    v38 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v34 = [v38 leadingAnchor];
    v32 = [v36 constraintEqualToAnchor:?];
    v47[0] = v32;
    v28 = [location[0] trailingAnchor];
    v30 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v26 = [v30 trailingAnchor];
    v5 = [v28 constraintLessThanOrEqualToAnchor:?];
    v47[1] = v5;
    v6 = [location[0] topAnchor];
    v7 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v8 = [v7 topAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v47[2] = v9;
    v10 = [location[0] bottomAnchor];
    v11 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintLessThanOrEqualToAnchor:v12];
    v47[3] = v13;
    v14 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  else
  {
    v15 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v42 = [location[0] leadingAnchor];
    v43 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v41 = [v43 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:?];
    v46[0] = v40;
    v37 = [location[0] trailingAnchor];
    v39 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v35 = [v39 trailingAnchor];
    v33 = [v37 constraintEqualToAnchor:?];
    v46[1] = v33;
    v29 = [location[0] topAnchor];
    v31 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v27 = [v31 topAnchor];
    v25 = [v29 constraintEqualToAnchor:?];
    v46[2] = v25;
    v16 = [location[0] bottomAnchor];
    v17 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v46[3] = v19;
    v20 = [location[0] centerXAnchor];
    v21 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)v45 contentView];
    v22 = [v21 centerXAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v46[4] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:5];
    [v15 addConstraints:v24];
  }

  objc_storeStrong(location, 0);
}

@end