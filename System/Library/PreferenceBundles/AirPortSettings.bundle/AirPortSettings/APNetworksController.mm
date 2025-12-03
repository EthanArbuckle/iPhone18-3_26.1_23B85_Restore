@interface APNetworksController
- (APNetworksController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_loadHealthOverrides;
- (void)_notifyAirPortSettingsVisible:(BOOL)visible;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation APNetworksController

- (APNetworksController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = APNetworksController;
  v4 = [(APNetworksController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = WFWiFiTitleString();
    [(APNetworksController *)v4 setTitle:v5];

    navigationItem = [(APNetworksController *)v4 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  return v4;
}

- (void)loadView
{
  v28.receiver = self;
  v28.super_class = APNetworksController;
  [(APNetworksController *)&v28 loadView];
  self->_viewLoaded = 1;
  v3 = objc_alloc_init(MEMORY[0x277D7B978]);
  settingsViewController = self->_settingsViewController;
  self->_settingsViewController = v3;
  v5 = v3;

  v6 = WFWiFiTitleString();
  [(APNetworksController *)self setTitle:v6];

  v7 = [objc_alloc(MEMORY[0x277D7B968]) initWithViewController:v5];
  airportController = self->_airportController;
  self->_airportController = v7;

  [(APNetworksController *)self addChildViewController:v5];
  view = [(APNetworksController *)self view];
  view2 = [(WFAirportViewController *)v5 view];
  [view addSubview:view2];

  view3 = [(APNetworksController *)self view];
  [view3 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view4 = [(WFAirportViewController *)v5 view];

  [view4 setFrame:{v13, v15, v17, v19}];
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

- (void)willResignActive
{
  [(APNetworksController *)self _notifyAirPortSettingsVisible:0];
  v3.receiver = self;
  v3.super_class = APNetworksController;
  [(APNetworksController *)&v3 willResignActive];
}

- (void)willBecomeActive
{
  [(APNetworksController *)self _notifyAirPortSettingsVisible:1];
  v3.receiver = self;
  v3.super_class = APNetworksController;
  [(APNetworksController *)&v3 willBecomeActive];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v15 = [lCopy objectForKey:@"path"];
  v5 = [lCopy objectForKey:@"root"];

  if ([v15 length])
  {
    if ([v15 isEqualToString:@"WIRELESS_APP_DATA_USAGE_ID"])
    {
      self->_pushDataUsage = 1;
      if (self->_viewLoaded)
      {
        airportController = [(APNetworksController *)self airportController];
        [airportController pushDataUsageViewController];

        self->_pushDataUsage = 0;
      }
    }

    else if (v5)
    {
      lowercaseString = [v5 lowercaseString];
      v8 = [lowercaseString isEqualToString:@"wifi"];

      if (v8)
      {
        v9 = [@"prefs:root=WIFI&path=" stringByAppendingString:v15];
        v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
        v11 = v10;
        if (self->_viewLoaded)
        {
          deferredURL = [(APNetworksController *)self airportController];
          v13 = [MEMORY[0x277CBEBC0] URLWithString:v9];
          [deferredURL handleURL:v13];
        }

        else
        {
          v14 = v10;
          deferredURL = self->_deferredURL;
          self->_deferredURL = v14;
        }
      }
    }
  }
}

- (void)_notifyAirPortSettingsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = _notifyAirPortSettingsVisible__token;
  if (_notifyAirPortSettingsVisible__token != -1 || (notify_register_check("com.apple.airportsettingsvisible", &_notifyAirPortSettingsVisible__token), v4 = _notifyAirPortSettingsVisible__token, _notifyAirPortSettingsVisible__token != -1))
  {
    notify_set_state(v4, visibleCopy);

    notify_post("com.apple.airportsettingsvisible");
  }
}

- (void)_loadHealthOverrides
{
  v3 = objc_alloc_init(MEMORY[0x277D7B960]);
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

  v21 = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideHiddenNetwork", @"com.apple.settings.airport", &v21);
  if (v21 && AppBooleanValue)
  {
    [v3 setHiddenNetwork:1];
  }

  v20 = 0;
  v7 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideLegacyPHY", @"com.apple.settings.airport", &v20);
  if (v20 && v7)
  {
    v5 = 1;
    [v3 setLegacyPHY:1];
  }

  v19 = 0;
  v8 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideCommonSSID", @"com.apple.settings.airport", &v19);
  if (v19 && v8)
  {
    v5 = 1;
    [v3 setCommonSSID:1];
  }

  v18 = 0;
  v9 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideDNSFiltered", @"com.apple.settings.airport", &v18);
  if (v18 && v9)
  {
    v5 = 1;
    [v3 setDnsFiltered:1];
  }

  v17 = 0;
  v10 = CFPreferencesGetAppBooleanValue(@"kWiFiHealthOverrideCarrierNetwork", @"com.apple.settings.airport", &v17);
  if (v17 && v10)
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
          CFRelease(v15);
          if ((v5 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        v16 = 3;
      }

      else
      {
        v16 = 2;
      }
    }

    [v3 setPrivateAddressOverride:v16];
    CFRelease(v15);
  }

  else if (!v5)
  {
    goto LABEL_44;
  }

LABEL_43:
  objc_storeStrong(&self->_healthOverrides, v3);
LABEL_44:
}

@end