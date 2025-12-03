@interface APNetworksController
- (APNetworksController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_loadHealthOverrides;
- (void)_notifyAirPortSettingsVisible:(BOOL)visible;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)willBecomeActive;
- (void)willMoveToParentViewController:(id)controller;
- (void)willResignActive;
@end

@implementation APNetworksController

- (APNetworksController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = APNetworksController;
  v4 = [(APNetworksController *)&v8 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(APNetworksController *)v4 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  return v5;
}

- (void)loadView
{
  v49.receiver = self;
  v49.super_class = APNetworksController;
  [(APNetworksController *)&v49 loadView];
  v3 = _os_feature_enabled_impl();
  v4 = WFLogForCategory();
  v5 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel())
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v3)
  {
    if (v7 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v51 = "[APNetworksController loadView]";
      _os_log_impl(&dword_0, v4, v5, "%s: Using WiFiSettingsKit View", buf, 0xCu);
    }

    v8 = objc_alloc_init(WFSettingsKitViewController);
    v9 = WFLogForCategory();
    v10 = OSLogForWFLogLevel();
    if (WFCurrentLogLevel() && v9)
    {
      v11 = v9;
      if (os_log_type_enabled(v11, v10))
      {
        view = [(WFSettingsKitViewController *)v8 view];
        *buf = 136315394;
        v51 = "[APNetworksController loadView]";
        v52 = 2112;
        v53 = view;
        _os_log_impl(&dword_0, v11, v10, "%s: viewController view %@", buf, 0x16u);
      }
    }

    [(APNetworksController *)self addChildViewController:v8];
    view2 = [(APNetworksController *)self view];
    view3 = [(WFSettingsKitViewController *)v8 view];
    [view2 addSubview:view3];

    view4 = [(APNetworksController *)self view];
    [view4 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    view5 = [(WFSettingsKitViewController *)v8 view];
    [view5 setFrame:{v17, v19, v21, v23}];
  }

  else
  {
    if (v7 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v51 = "[APNetworksController loadView]";
      _os_log_impl(&dword_0, v4, v5, "%s: Using WFAirPortViewController View", buf, 0xCu);
    }

    self->_viewLoaded = 1;
    v25 = objc_alloc_init(WFAirportViewController);
    settingsViewController = self->_settingsViewController;
    self->_settingsViewController = v25;
    v27 = v25;

    objc_storeStrong(&qword_11C00, self);
    v28 = [[WFNetworkListController alloc] initWithViewController:v27];
    airportController = self->_airportController;
    self->_airportController = v28;

    [(APNetworksController *)self addChildViewController:v27];
    view6 = [(APNetworksController *)self view];
    view7 = [(WFAirportViewController *)v27 view];
    [view6 addSubview:view7];

    view8 = [(APNetworksController *)self view];
    [view8 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    view9 = [(WFAirportViewController *)v27 view];

    [view9 setFrame:{v34, v36, v38, v40}];
    [(APNetworksController *)self _loadHealthOverrides];
    healthOverrides = [(APNetworksController *)self healthOverrides];

    if (healthOverrides)
    {
      healthOverrides2 = [(APNetworksController *)self healthOverrides];
      airportController = [(APNetworksController *)self airportController];
      [airportController setHealthRecommendationOverrides:healthOverrides2];
    }

    else
    {
      healthOverrides2 = [(APNetworksController *)self airportController];
      [healthOverrides2 setHealthRecommendationOverrides:0];
    }

    if (self->_pushDataUsage)
    {
      airportController2 = [(APNetworksController *)self airportController];
      [airportController2 pushDataUsageViewController];

      self->_pushDataUsage = 0;
    }

    deferredURL = [(APNetworksController *)self deferredURL];

    if (deferredURL)
    {
      airportController3 = [(APNetworksController *)self airportController];
      deferredURL2 = [(APNetworksController *)self deferredURL];
      [airportController3 handleURL:deferredURL2];

      [(APNetworksController *)self setDeferredURL:0];
    }
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v12.receiver = self;
  v12.super_class = APNetworksController;
  [(APNetworksController *)&v12 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(APNetworksController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(APNetworksController *)self navigationItem];
    [navigationItem2 setTitleView:0];

    navigationItem3 = [(APNetworksController *)self navigationItem];
    [navigationItem3 setBackButtonTitle:0];

    parentViewController2 = [(APNetworksController *)self parentViewController];
    navigationItem4 = [parentViewController2 navigationItem];
    [navigationItem4 setRightBarButtonItem:0];

    navigationItem5 = [(APNetworksController *)self navigationItem];
    [navigationItem5 setRightBarButtonItem:0];
  }
}

- (void)willResignActive
{
  [(APNetworksController *)self _notifyAirPortSettingsVisible:0];
  v3.receiver = self;
  v3.super_class = APNetworksController;
  [(APNetworksController *)&v3 willResignActive];
}

- (void)willBecomeActive
{
  v3 = WFLogForCategory();
  v4 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315138;
    v7 = "[APNetworksController willBecomeActive]";
    _os_log_impl(&dword_0, v3, v4, "%s: APNetworksController view will become active", buf, 0xCu);
  }

  [(APNetworksController *)self _notifyAirPortSettingsVisible:1];
  v5.receiver = self;
  v5.super_class = APNetworksController;
  [(APNetworksController *)&v5 willBecomeActive];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  if (_os_feature_enabled_impl())
  {
    v5 = WFLogForCategory();
    v6 = OSLogForWFLogLevel();
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      *buf = 136315394;
      v38 = "[APNetworksController handleURL:]";
      v39 = 2112;
      v40 = lCopy;
      _os_log_impl(&dword_0, v5, v6, "%s:Should call into WSK VC handle URL %@", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    selfCopy = self;
    childViewControllers = [(APNetworksController *)self childViewControllers];
    v8 = [childViewControllers countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(childViewControllers);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = WFLogForCategory();
            v16 = OSLogForWFLogLevel();
            if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
            {
              *buf = 136315394;
              v38 = "[APNetworksController handleURL:]";
              v39 = 2112;
              v40 = v12;
              _os_log_impl(&dword_0, v15, v16, "%s: Found VC %@", buf, 0x16u);
            }

            [v12 handleURL:lCopy];
          }
        }

        v9 = [childViewControllers countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  v17 = [lCopy objectForKey:@"path"];
  v18 = WFLogForCategory();
  v19 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
  {
    *buf = 136315394;
    v38 = "[APNetworksController handleURL:]";
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&dword_0, v18, v19, "%s: path param %@", buf, 0x16u);
  }

  if ([v17 length])
  {
    if ([v17 isEqualToString:@"WIRELESS_APP_DATA_USAGE_ID"])
    {
      self->_pushDataUsage = 1;
      if (self->_viewLoaded)
      {
        airportController = [(APNetworksController *)self airportController];
        [airportController pushDataUsageViewController];

        self->_pushDataUsage = 0;
      }
    }

    else
    {
      v21 = [@"prefs:root=WIFI&path=" stringByAppendingString:v17];
      v22 = [NSURL URLWithString:v21];
      viewLoaded = self->_viewLoaded;
      v24 = WFLogForCategory();
      v25 = OSLogForWFLogLevel();
      if (WFCurrentLogLevel())
      {
        v26 = v24 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      if (viewLoaded)
      {
        if (v27 && os_log_type_enabled(v24, v25))
        {
          *buf = 136315394;
          v38 = "[APNetworksController handleURL:]";
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&dword_0, v24, v25, "%s: sending the URL to ap controller %@", buf, 0x16u);
        }

        deferredURL = [(APNetworksController *)self airportController];
        v29 = [NSURL URLWithString:v21];
        [deferredURL handleURL:v29];
      }

      else
      {
        if (v27 && os_log_type_enabled(v24, v25))
        {
          *buf = 136315394;
          v38 = "[APNetworksController handleURL:]";
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&dword_0, v24, v25, "%s: deferring URl %@", buf, 0x16u);
        }

        v30 = v22;
        deferredURL = self->_deferredURL;
        self->_deferredURL = v30;
      }
    }
  }
}

- (void)_notifyAirPortSettingsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = WFLogForCategory();
  v5 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[APNetworksController _notifyAirPortSettingsVisible:]";
    v9 = 1024;
    v10 = visibleCopy;
    _os_log_impl(&dword_0, v4, v5, "%s: air port settings visible: %d", &v7, 0x12u);
  }

  v6 = dword_11770;
  if (dword_11770 != -1 || (notify_register_check("com.apple.airportsettingsvisible", &dword_11770), v6 = dword_11770, dword_11770 != -1))
  {
    notify_set_state(v6, visibleCopy);
    notify_post("com.apple.airportsettingsvisible");
  }
}

- (void)_loadHealthOverrides
{
  v3 = objc_alloc_init(WFHealthIssueOverrides);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideNoInternet", @"com.apple.settings.airport", &keyExistsAndHasValidFormat))
  {
    v4 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    [v3 setNoInternetConnection:1];
  }

  v23 = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideHiddenNetwork", @"com.apple.settings.airport", &v23);
  if (v23 && AppBooleanValue)
  {
    [v3 setHiddenNetwork:1];
  }

  v22 = 0;
  v7 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideLegacyPHY", @"com.apple.settings.airport", &v22);
  if (v22 && v7)
  {
    v5 = 1;
    [v3 setLegacyPHY:1];
  }

  v21 = 0;
  v8 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideCommonSSID", @"com.apple.settings.airport", &v21);
  if (v21 && v8)
  {
    v5 = 1;
    [v3 setCommonSSID:1];
  }

  v20 = 0;
  v9 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideDNSFiltered", @"com.apple.settings.airport", &v20);
  if (v20 && v9)
  {
    v5 = 1;
    [v3 setDnsFiltered:1];
  }

  v19 = 0;
  v10 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideCarrierNetwork", @"com.apple.settings.airport", &v19);
  if (v19 && v10)
  {
    v5 = 1;
    [v3 setCarrierNetwork:1];
  }

  v11 = CFPreferencesCopyAppValue(@"kWiFiHealthOverrideSecurityType", @"com.apple.settings.airport");
  if (v11)
  {
    v12 = v11;
    v13 = 1;
    if (CFStringCompare(v11, @"kWiFiHealthOverrideOpenSecurity", 1uLL))
    {
      if (CFStringCompare(v12, @"kWiFiHealthOverrideWEPSecurity", 1uLL))
      {
        if (CFStringCompare(v12, @"kWiFiHealthOverrideWPASecurity", 1uLL))
        {
LABEL_31:
          CFRelease(v12);
          goto LABEL_32;
        }

        v13 = 3;
      }

      else
      {
        v13 = 2;
      }
    }

    [v3 setSecurityOverride:v13];
    v5 = 1;
    goto LABEL_31;
  }

LABEL_32:
  v14 = CFPreferencesCopyAppValue(@"kWiFiHealthOverridePrivateMACDisabled", @"com.apple.settings.airport");
  if (v14)
  {
    v15 = v14;
    v16 = 1;
    if (CFStringCompare(v14, @"kWiFiHealthOverridePrivateMACDisabledBySystem", 1uLL))
    {
      if (CFStringCompare(v15, @"kWiFiHealthOverridePrivateMACDisabledByCarrier", 1uLL))
      {
        if (CFStringCompare(v15, @"kWiFiHealthOverridePrivateMACDisabledByProfile", 1uLL))
        {
LABEL_39:
          CFRelease(v15);
          goto LABEL_40;
        }

        v16 = 3;
      }

      else
      {
        v16 = 2;
      }
    }

    [v3 setPrivateAddressOverride:v16];
    v5 = 1;
    goto LABEL_39;
  }

LABEL_40:
  v18 = 0;
  v17 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverridePoorCoverage", @"com.apple.settings.airport", &v18);
  if (v18 && v17)
  {
    [v3 setPoorCoverageOverride:1];
LABEL_44:
    objc_storeStrong(&self->_healthOverrides, v3);
    goto LABEL_45;
  }

  if (v5)
  {
    goto LABEL_44;
  }

LABEL_45:
}

@end