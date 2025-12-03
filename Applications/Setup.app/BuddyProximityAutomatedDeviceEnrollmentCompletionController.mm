@interface BuddyProximityAutomatedDeviceEnrollmentCompletionController
- (BuddyProximityAutomatedDeviceEnrollmentCompletionController)init;
- (void)configureViewWithViewModel:(id)model;
- (void)displayVerboseDescriptionButton;
- (void)linkButtonTapped:(id)tapped;
- (void)proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:(id)i;
- (void)removeVerboseDescriptionButton;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller;
- (void)shutdownButtonTapped:(id)tapped;
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

- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_proximityAutomatedDeviceEnrollmentController, location[0]);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy->_proximityAutomatedDeviceEnrollmentController setDelegate:selfCopy];
  completionViewModel = [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy->_proximityAutomatedDeviceEnrollmentController completionViewModel];
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy configureViewWithViewModel:completionViewModel, completionViewModel];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:(id)i
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  SBSPresentPowerDownUI();
  objc_storeStrong(location, 0);
}

- (void)configureViewWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  buttonTray = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy buttonTray];
  [buttonTray removeAllButtons];

  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy removeVerboseDescriptionButton];
  v4 = selfCopy;
  buttonTitle = [location[0] buttonTitle];
  [(BuddyWelcomeController *)v4 addBoldButton:buttonTitle action:"shutdownButtonTapped:"];

  if ([location[0] hasVerboseDescription])
  {
    featureFlags = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy featureFlags];
    isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

    if (isSolariumEnabled)
    {
      v8 = [UIButton buttonWithType:1];
      [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy setVerboseDescriptionButton:v8];

      verboseDescriptionButton = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy verboseDescriptionButton];
      linkButtonTitle = [location[0] linkButtonTitle];
      [(UIButton *)verboseDescriptionButton setTitle:linkButtonTitle forState:0];

      verboseDescriptionButton2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy verboseDescriptionButton];
      [(UIButton *)verboseDescriptionButton2 addTarget:selfCopy action:"linkButtonTapped:" forControlEvents:64];

      verboseDescriptionButton3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy verboseDescriptionButton];
      [(UIButton *)verboseDescriptionButton3 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v13 = selfCopy;
      linkButtonTitle2 = [location[0] linkButtonTitle];
      v15 = [(BuddyWelcomeController *)v13 createLinkButtonWithTitle:linkButtonTitle2 action:"linkButtonTapped:"];
      [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy setVerboseDescriptionButton:v15];
    }

    [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy displayVerboseDescriptionButton];
  }

  headerView = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy headerView];
  title = [location[0] title];
  [headerView setTitle:title];

  headerView2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy headerView];
  detailText = [location[0] detailText];
  [headerView2 setDetailText:detailText];

  headerView3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy headerView];
  symbolName = [location[0] symbolName];
  [headerView3 setSymbol:symbolName accessibilityLabel:0];

  verboseDescriptionText = [location[0] verboseDescriptionText];
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy setVerboseDescriptionText:verboseDescriptionText];

  objc_storeStrong(location, 0);
}

- (void)shutdownButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  proximityAutomatedDeviceEnrollmentController = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy proximityAutomatedDeviceEnrollmentController];
  [(BuddyProximityAutomatedDeviceEnrollmentController *)proximityAutomatedDeviceEnrollmentController shutdownButtonTapped];

  objc_storeStrong(location, 0);
}

- (void)linkButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy removeVerboseDescriptionButton];
  v40 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v40 _setCornerRadius:8.0];
  v3 = +[UIColor systemGroupedBackgroundColor];
  [v40 setBackgroundColor:v3];

  contentView = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  [contentView addSubview:v40];

  v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setNumberOfLines:0];
  v5 = [UIFont monospacedSystemFontOfSize:12.0 weight:UIFontWeightRegular];
  [v39 setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [v39 setTextColor:v6];

  verboseDescriptionText = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy verboseDescriptionText];
  [v39 setText:verboseDescriptionText];

  [v39 sizeToFit];
  [v40 addSubview:v39];
  contentView2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  topAnchor = [v40 topAnchor];
  contentView3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  topAnchor2 = [contentView3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:?];
  v43[0] = v35;
  bottomAnchor = [v40 bottomAnchor];
  contentView4 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:?];
  v43[1] = v30;
  leadingAnchor = [v40 leadingAnchor];
  contentView5 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:?];
  v43[2] = v26;
  trailingAnchor = [v40 trailingAnchor];
  contentView6 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:?];
  v43[3] = v22;
  topAnchor3 = [v39 topAnchor];
  topAnchor4 = [v40 topAnchor];
  v19 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  v43[4] = v19;
  bottomAnchor3 = [v39 bottomAnchor];
  bottomAnchor4 = [v40 bottomAnchor];
  v9 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:-1.0];
  v43[5] = v9;
  leadingAnchor3 = [v39 leadingAnchor];
  leadingAnchor4 = [v40 leadingAnchor];
  v12 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
  v43[6] = v12;
  trailingAnchor3 = [v39 trailingAnchor];
  trailingAnchor4 = [v40 trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:-1.0];
  v43[7] = v15;
  v16 = [NSArray arrayWithObjects:v43 count:8];
  [contentView2 addConstraints:v16];

  view = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy view];
  [view layoutIfNeeded];

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)removeVerboseDescriptionButton
{
  verboseDescriptionButton = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self verboseDescriptionButton];
  [(UIButton *)verboseDescriptionButton removeFromSuperview];

  [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self setVerboseDescriptionButton:0];
}

- (void)displayVerboseDescriptionButton
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)self verboseDescriptionButton];
  contentView = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
  [contentView addSubview:location[0]];

  featureFlags = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    leadingAnchor = [location[0] leadingAnchor];
    contentView2 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:?];
    v47[0] = v32;
    trailingAnchor = [location[0] trailingAnchor];
    contentView3 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v5 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
    v47[1] = v5;
    topAnchor = [location[0] topAnchor];
    contentView4 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    topAnchor2 = [contentView4 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v9;
    bottomAnchor = [location[0] bottomAnchor];
    contentView5 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v47[3] = v13;
    v14 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  else
  {
    contentView6 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    leadingAnchor3 = [location[0] leadingAnchor];
    contentView7 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    leadingAnchor4 = [contentView7 leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:?];
    v46[0] = v40;
    trailingAnchor3 = [location[0] trailingAnchor];
    contentView8 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    trailingAnchor4 = [contentView8 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:?];
    v46[1] = v33;
    topAnchor3 = [location[0] topAnchor];
    contentView9 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    topAnchor4 = [contentView9 topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:?];
    v46[2] = v25;
    bottomAnchor3 = [location[0] bottomAnchor];
    contentView10 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    bottomAnchor4 = [contentView10 bottomAnchor];
    v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v46[3] = v19;
    centerXAnchor = [location[0] centerXAnchor];
    contentView11 = [(BuddyProximityAutomatedDeviceEnrollmentCompletionController *)selfCopy contentView];
    centerXAnchor2 = [contentView11 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v46[4] = v23;
    v24 = [NSArray arrayWithObjects:v46 count:5];
    [contentView6 addConstraints:v24];
  }

  objc_storeStrong(location, 0);
}

@end