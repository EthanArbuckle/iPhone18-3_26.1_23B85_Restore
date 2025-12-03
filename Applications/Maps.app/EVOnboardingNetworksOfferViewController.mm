@interface EVOnboardingNetworksOfferViewController
- (EVOnboardingNetworksOfferViewController)initWithDelegate:(id)delegate vehicleName:(id)name;
- (id)obViewController;
- (void)_chooseNetworks;
- (void)_setUpLaterPressed;
@end

@implementation EVOnboardingNetworksOfferViewController

- (void)_setUpLaterPressed
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(EVOnboardingNetworksOfferViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2080;
    v15 = "[EVOnboardingNetworksOfferViewController _setUpLaterPressed]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s", buf, 0x16u);
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:440 onTarget:123 eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networksOfferViewControllerDidSelectSetupLater:self];
}

- (void)_chooseNetworks
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(EVOnboardingNetworksOfferViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2080;
    v15 = "[EVOnboardingNetworksOfferViewController _chooseNetworks]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s", buf, 0x16u);
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:452 onTarget:123 eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networksOfferViewControllerDidSelectSetupNow:self];
}

- (id)obViewController
{
  if (self->_vehicleName)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"[EV Onboarding] Preferred Networks for Your vehicle title" value:@"localized string not found" table:0];
    v5 = [NSString stringWithFormat:v4, self->_vehicleName];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v5 = [v3 localizedStringForKey:@"[EV Onboarding] Preferred Networks title" value:@"localized string not found" table:0];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[EV Onboarding] Preferred Networks subtitle" value:@"localized string not found" table:0];

  v8 = [UIImage imageNamed:@"PreferredNetworks"];
  v9 = [[OBWelcomeController alloc] initWithTitle:v5 detailText:v7 icon:v8];
  [v9 setModalPresentationStyle:2];
  headerView = [v9 headerView];
  [headerView setAllowFullWidthIcon:1];

  v11 = +[OBBoldTrayButton boldButton];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[EV Onboarding] Choose Networks" value:@"localized string not found" table:0];
  [v11 setTitle:v13 forState:0];

  [v11 addTarget:self action:"_chooseNetworks" forControlEvents:64];
  [v11 setAccessibilityIdentifier:@"ConnectButton"];
  buttonTray = [v9 buttonTray];
  [buttonTray addButton:v11];

  v15 = +[OBLinkTrayButton linkButton];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"[EV Onboarding] Set Up Later" value:@"localized string not found" table:0];
  [v15 setTitle:v17 forState:0];

  [v15 addTarget:self action:"_setUpLaterPressed" forControlEvents:64];
  [v15 setAccessibilityIdentifier:@"SetUpLaterButton"];
  buttonTray2 = [v9 buttonTray];
  [buttonTray2 addButton:v15];

  return v9;
}

- (EVOnboardingNetworksOfferViewController)initWithDelegate:(id)delegate vehicleName:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = EVOnboardingNetworksOfferViewController;
  v8 = [(EVOnboardingBaseViewController *)&v13 initWithDelegate:delegateCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [nameCopy copy];
    vehicleName = v9->_vehicleName;
    v9->_vehicleName = v10;
  }

  return v9;
}

@end