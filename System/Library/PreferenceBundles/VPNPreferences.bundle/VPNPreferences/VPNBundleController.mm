@interface VPNBundleController
+ (BOOL)networkingIsDisabled;
+ (id)navigationTitle;
+ (void)disableAirplaneMode;
- (VPNBundleController)initWithParentListController:(id)a3 properties:(id)a4;
- (id)contentFilterStatusForSpecifier:(id)a3;
- (id)getContentFilterSummary:(id)a3;
- (id)getDNSSummary:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (id)statusForSpecifier:(id)a3;
- (id)urlFilterStatusForSpecifier:(id)a3;
- (id)vpnActiveForSpecifier:(id)a3;
- (void)cancelAirplaneModeDisable:(id)a3;
- (void)confirmAirplaneModeDisable:(id)a3;
- (void)dealloc;
- (void)setVPNActive:(BOOL)a3;
- (void)setVPNActive:(id)a3 forSpecifier:(id)a4;
- (void)updateVPNSwitchStatus;
- (void)vpnConfigurationChanged:(id)a3;
- (void)vpnStatusChanged:(id)a3;
@end

@implementation VPNBundleController

+ (BOOL)networkingIsDisabled
{
  os_unfair_lock_lock(&unk_4A0A0);
  v2 = qword_4A098;
  if (!qword_4A098)
  {
    v3 = objc_alloc_init(RadiosPreferences);
    v4 = qword_4A098;
    qword_4A098 = v3;

    v2 = qword_4A098;
  }

  [v2 refresh];
  os_unfair_lock_assert_owner(&unk_4A0A0);
  v5 = qword_4A0A8;
  if (!qword_4A0A8)
  {
    v5 = SCPreferencesCreate(0, @"com.apple.mobilevpn", @"com.apple.wifi.plist");
    qword_4A0A8 = v5;
  }

  SCPreferencesSynchronize(v5);
  v6 = [SCPreferencesGetValue(qword_4A0A8 @"AllowEnable")];
  NSLog(@"%s: Airplane mode: %d, WiFi Enabled: %d", "+[VPNBundleController networkingIsDisabled]", [qword_4A098 airplaneMode], v6);
  v7 = [qword_4A098 airplaneMode];
  os_unfair_lock_unlock(&unk_4A0A0);
  return v7 & (v6 ^ 1);
}

+ (void)disableAirplaneMode
{
  os_unfair_lock_lock(&unk_4A0A0);
  v2 = qword_4A098;
  os_unfair_lock_unlock(&unk_4A0A0);
  [v2 setAirplaneMode:0];
}

+ (id)navigationTitle
{
  v2 = +[VPNConnectionStore sharedInstance];
  if ([v2 gradePresent:8])
  {

    v3 = @"VPN_AND_RELAYS";
  }

  else
  {
    v4 = +[VPNConnectionStore sharedInstance];
    v5 = [v4 gradePresent:7];

    if (v5)
    {
      v3 = @"VPN_AND_RELAYS";
    }

    else
    {
      v3 = @"VPN";
    }
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v3 value:&stru_411E8 table:@"MobileVPN"];

  return v7;
}

- (void)dealloc
{
  if ([(VPNBundleController *)self isRegistered])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"VPNConnectionsChangedNotification" object:0];
  }

  v6.receiver = self;
  v6.super_class = VPNBundleController;
  [(VPNBundleController *)&v6 dealloc];
}

- (id)vpnActiveForSpecifier:(id)a3
{
  v3 = a3;
  v4 = +[VPNConnectionStore sharedInstance];
  v5 = [v4 aggregateStatus];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [NSNumber numberWithInt:1];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v5 == 2)
    {
      v9 = @"VPN_CONNECTING";
    }

    else
    {
      v9 = @"VPN";
    }
  }

  else
  {
    v6 = [NSNumber numberWithInt:0];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = v7;
    v9 = @"VPN";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_411E8 table:@"MobileVPN"];

  [v3 setName:v10];
  [v3 setProperty:v6 forKey:PSValueKey];

  return v6;
}

- (id)statusForSpecifier:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 aggregateStatusText];

  return v4;
}

- (void)setVPNActive:(BOOL)a3
{
  v3 = a3;
  v5 = +[VPNConnectionStore sharedInstance];
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v5 currentConnectionWithGrade:{objc_msgSend(v6, "currentOnlyConnectionGrade")}];

  v8 = [v7 serviceID];
  v9 = [v7 displayName];
  v10 = [v7 vpnConnectionType];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    [v7 disconnect];
    goto LABEL_15;
  }

  if (v10 != &dword_0 + 3)
  {
    goto LABEL_6;
  }

  v34 = 0;
  v11 = +[VPNConnectionStore sharedInstance];
  v12 = +[VPNConnectionStore sharedInstance];
  v13 = [v11 isTypeEnabledWithServiceID:v8 withGrade:objc_msgSend(v12 outProviderAvailable:{"currentOnlyConnectionGrade"), &v34}];

  if (v13)
  {
    if (v34)
    {
LABEL_6:
      [v7 connect];
LABEL_7:
      [(VPNBundleController *)self vpnStatusChanged:0];
      goto LABEL_15;
    }
  }

  NSLog(@"%s: Trying to start an SSL VPN service that is not eligible", "[VPNBundleController setVPNActive:]");
  v14 = +[VPNConnectionStore sharedInstance];
  v15 = +[VPNConnectionStore sharedInstance];
  v16 = [v14 appNameForServiceID:v8 withGrade:{objc_msgSend(v15, "currentOnlyConnectionGrade")}];

  v17 = v34;
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = v18;
  v32 = v16;
  if (v17 == 1)
  {
    v20 = [v18 localizedStringForKey:@"SSL_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v20, v9, v16];
  }

  else
  {
    v20 = [v18 localizedStringForKey:@"MISSING_PROVIDER_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v20, v16, v9];
  }
  v33 = ;

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"VPN_CONNECTION" value:&stru_411E8 table:@"MobileVPN"];
  v23 = [UIAlertController alertControllerWithTitle:v22 message:v33 preferredStyle:1];

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
  v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];
  [v23 addAction:v26];

  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
  v28 = [WeakRetained rootController];
  v29 = [v28 topViewController];
  [v29 presentViewController:v23 animated:1 completion:0];

  v30 = [(VPNBundleController *)self vpnSpecifier];
  v31 = [(VPNBundleController *)self toggleVPNSpecifier];

  if (v30 == v31)
  {
    [(VPNBundleController *)self vpnStatusChanged:0];
  }

LABEL_15:
}

- (void)setVPNActive:(id)a3 forSpecifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
  v8 = [WeakRetained rootController];

  v9 = [v6 propertyForKey:PSValueKey];
  v10 = [v9 intValue];
  v11 = [v13 intValue];

  if (v10 != v11)
  {
    if ([v13 BOOLValue] && +[VPNBundleController networkingIsDisabled](VPNBundleController, "networkingIsDisabled"))
    {
      v12 = [v8 topViewController];
      [v12 showConfirmationViewForSpecifier:v6];
    }

    else
    {
      -[VPNBundleController setVPNActive:](self, "setVPNActive:", [v13 BOOLValue]);
    }
  }
}

- (id)contentFilterStatusForSpecifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = +[VPNConnectionStore sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12748;
  v8[3] = &unk_40AA8;
  v8[4] = &v9;
  [v4 iterateContentFilterServicesWithBlock:v8];

  if (*(v10 + 24) == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"RUNNING" value:&stru_411E8 table:@"MobileVPN"];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"INVALID" value:&stru_411E8 table:@"MobileVPN"];
  }
  v6 = ;

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)urlFilterStatusForSpecifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = +[VPNConnectionStore sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1296C;
  v8[3] = &unk_40AA8;
  v8[4] = &v9;
  [v4 iterateURLFilterServicesWithBlock:v8];

  if (*(v10 + 24) == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"RUNNING" value:&stru_411E8 table:@"MobileVPN"];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"INVALID" value:&stru_411E8 table:@"MobileVPN"];
  }
  v6 = ;

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = &MGGetBoolAnswer_ptr;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = +[NSMutableArray array];
  v7 = [(VPNBundleController *)self toggleVPNSpecifier];

  if (!v7)
  {
    [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8 = v5;
    v10 = [v9 localizedStringForKey:@"VPN" value:&stru_411E8 table:@"MobileVPN"];
    v11 = [PSConfirmationSpecifier preferenceSpecifierNamed:v10 target:self set:"setVPNActive:forSpecifier:" get:"vpnActiveForSpecifier:" detail:0 cell:6 edit:0];
    [(VPNBundleController *)self setToggleVPNSpecifier:v11];

    v12 = [(VPNBundleController *)self toggleVPNSpecifier];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"AIRPLANE_SHEET_CANCEL" value:&stru_411E8 table:@"MobileVPN"];
    [v12 setCancelButton:v14];

    v15 = [(VPNBundleController *)self toggleVPNSpecifier];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"AIRPLANE_SHEET_OK_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
    [v15 setOkButton:v17];

    v18 = [(VPNBundleController *)self toggleVPNSpecifier];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"AIRPLANE_SHEET_OK" value:&stru_411E8 table:@"MobileVPN"];
    [v18 setTitle:v20];

    v21 = [(VPNBundleController *)self toggleVPNSpecifier];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"AIRPLANE_SHEET_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    [v21 setPrompt:v23];

    v5 = v8;
    v24 = [(VPNBundleController *)self toggleVPNSpecifier];
    v25 = [NSNumber numberWithBool:1];
    [v24 setProperty:v25 forKey:PSConfirmationDestructiveKey];

    v26 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v26 setConfirmationAction:"confirmAirplaneModeDisable:"];

    v27 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v27 setConfirmationCancelAction:"cancelAirplaneModeDisable:"];

    v28 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v28 setProperty:kCFBooleanTrue forKey:@"restoreState"];

    v29 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v29 setProperty:@"VPN" forKey:PSIDKey];

    v30 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v30 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];

    v31 = [(VPNBundleController *)self toggleVPNSpecifier];
    [v31 setProperty:@"com.apple.graphic-icon.vpn" forKey:PSIconUTTypeIdentifierKey];
  }

  v32 = [(VPNBundleController *)self linkVPNSpecifier];

  if (!v32)
  {
    v70 = [NSBundle bundleForClass:objc_opt_class()];
    v71 = [v70 localizedStringForKey:@"VPN" value:&stru_411E8 table:@"MobileVPN"];
    v72 = [PSSpecifier preferenceSpecifierNamed:v71 target:self set:0 get:"statusForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
    [(VPNBundleController *)self setLinkVPNSpecifier:v72];

    v73 = [(VPNBundleController *)self linkVPNSpecifier];
    [v73 setProperty:@"VPN" forKey:PSIDKey];

    if (![(VPNBundleController *)self isRootMenuItem]&& ![(VPNBundleController *)self isDeviceManagement])
    {
      v74 = [(VPNBundleController *)self linkVPNSpecifier];
      v118 = @"vpn-show-dns";
      v119 = &off_43620;
      v75 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      [v74 setUserInfo:v75];
    }

    if ([(VPNBundleController *)self isRootMenuItem]|| [(VPNBundleController *)self isDeviceManagement])
    {
      v76 = [(VPNBundleController *)self linkVPNSpecifier];
      [v76 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];

      v77 = [(VPNBundleController *)self linkVPNSpecifier];
      [v77 setProperty:@"com.apple.graphic-icon.vpn" forKey:PSIconUTTypeIdentifierKey];

      v78 = +[UIDevice currentDevice];
      v79 = [v78 userInterfaceIdiom];

      if ((v79 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v80 = [(VPNBundleController *)self toggleVPNSpecifier];
        v81 = [NSNumber numberWithBool:1];
        v82 = PSHidesDisclosureIndicatorKey;
        [v80 setProperty:v81 forKey:PSHidesDisclosureIndicatorKey];

        v83 = [(VPNBundleController *)self linkVPNSpecifier];
        v84 = [NSNumber numberWithBool:1];
        [v83 setProperty:v84 forKey:v82];
      }
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v33 = [(VPNBundleController *)self dnsSpecifier];

    if (!v33)
    {
      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DNS_SETTINGS" value:&stru_411E8 table:@"MobileVPN"];
      v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:"getDNSSummary:" detail:objc_opt_class() cell:2 edit:0];
      [(VPNBundleController *)self setDnsSpecifier:v36];

      v37 = [(VPNBundleController *)self dnsSpecifier];
      [v37 setProperty:@"Ethernet" forKey:PSBundleIconPathKey];

      v38 = [(VPNBundleController *)self dnsSpecifier];
      [v38 setupIconImageWithBundle:v5];
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v39 = [(VPNBundleController *)self contentFilterSpecifier];

    if (!v39)
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"CONTENT_FILTER" value:&stru_411E8 table:@"MobileVPN"];
      v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:"contentFilterStatusForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
      [(VPNBundleController *)self setContentFilterSpecifier:v42];

      v43 = [(VPNBundleController *)self contentFilterSpecifier];
      [v43 setProperty:@"Ethernet" forKey:PSBundleIconPathKey];

      v44 = [(VPNBundleController *)self contentFilterSpecifier];
      [v44 setupIconImageWithBundle:v5];
    }
  }

  v45 = +[VPNConnectionStore sharedInstance];
  if ([v45 gradePresent:8])
  {

    v46 = @"VPN_AND_RELAYS";
  }

  else
  {
    v47 = +[VPNConnectionStore sharedInstance];
    v48 = [v47 gradePresent:7];

    if (v48)
    {
      v46 = @"VPN_AND_RELAYS";
    }

    else
    {
      v46 = @"VPN";
    }
  }

  v49 = [NSBundle bundleForClass:objc_opt_class()];
  v50 = [v49 localizedStringForKey:v46 value:&stru_411E8 table:@"MobileVPN"];
  v51 = [(VPNBundleController *)self linkVPNSpecifier];
  [v51 setName:v50];

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v52 = [(VPNBundleController *)self urlFilterSpecifier];

    if (!v52)
    {
      v53 = [NSBundle bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:@"URL_FILTER" value:&stru_411E8 table:@"MobileVPN"];
      v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:self set:0 get:"urlFilterStatusForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
      [(VPNBundleController *)self setUrlFilterSpecifier:v55];

      v56 = [(VPNBundleController *)self urlFilterSpecifier];
      [v56 setProperty:@"Ethernet" forKey:PSBundleIconPathKey];

      v57 = [(VPNBundleController *)self urlFilterSpecifier];
      [v57 setupIconImageWithBundle:v5];
    }
  }

  if ([(VPNBundleController *)self isRootMenuItem])
  {
    v58 = +[VPNConnectionStore sharedInstance];
    v59 = [v58 vpnServiceTotalCount];
    [(VPNBundleController *)self setLastServiceCount:v59];

    v60 = +[VPNConnectionStore sharedInstance];
    if (([v60 gradePresent:3] & 1) == 0)
    {
      v61 = +[VPNConnectionStore sharedInstance];
      if (([v61 gradePresent:2] & 1) == 0)
      {
        v62 = +[VPNConnectionStore sharedInstance];
        if (([v62 gradePresent:8] & 1) == 0)
        {
          v63 = +[VPNConnectionStore sharedInstance];
          if (([v63 gradePresent:7] & 1) == 0)
          {
            v116 = v6;
            v64 = v5;
            v65 = +[VPNConnectionStore sharedInstance];
            if (([v65 disableToggle] & 1) == 0)
            {
              v110 = [(VPNBundleController *)self lastServiceCount];
              v115 = [v110 intValue];

              if (v115 == 1)
              {
                v111 = [(VPNBundleController *)self statusForSpecifier:0];
                v112 = [NSBundle bundleForClass:objc_opt_class()];
                v113 = [v112 localizedStringForKey:@"CONNECTION_FAILURE" value:&stru_411E8 table:@"MobileVPN"];
                v114 = [v111 isEqualToString:v113];

                v5 = v64;
                v4 = &MGGetBoolAnswer_ptr;
                v6 = v116;
                if (v114)
                {
                  goto LABEL_30;
                }

                v66 = 1;
              }

              else
              {
                v66 = 0;
                v5 = v64;
                v4 = &MGGetBoolAnswer_ptr;
                v6 = v116;
              }

              goto LABEL_29;
            }

            v5 = v64;
            v6 = v116;
          }
        }
      }
    }

    v66 = 0;
LABEL_29:
    [(VPNBundleController *)self setToggleSwitchInRootMenu:v66];
  }

LABEL_30:
  if ([(VPNBundleController *)self isRootMenuItem]&& [(VPNBundleController *)self isToggleSwitchInRootMenu])
  {
    v67 = [(VPNBundleController *)self toggleVPNSpecifier];
  }

  else
  {
    v67 = [(VPNBundleController *)self linkVPNSpecifier];
  }

  v68 = v67;
  [(VPNBundleController *)self setVpnSpecifier:v67];

  v69 = [(VPNBundleController *)self lastServiceCount];
  if ([v69 intValue])
  {
  }

  else
  {
    v85 = [(VPNBundleController *)self isRootMenuItem];

    if (v85)
    {
      goto LABEL_45;
    }
  }

  v86 = [(VPNBundleController *)self vpnSpecifier];
  [v6 addObject:v86];

LABEL_45:
  if (![(VPNBundleController *)self isDeviceManagement])
  {
    goto LABEL_60;
  }

  v87 = [(VPNBundleController *)self dnsSpecifier];
  if (v87 || ([(VPNBundleController *)self contentFilterSpecifier], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v109 = [(VPNBundleController *)self urlFilterSpecifier];

    if (!v109)
    {
      goto LABEL_60;
    }
  }

  v117 = v5;
  v88 = +[VPNConnectionStore sharedInstance];
  v89 = [v88 gradePresent:4];

  v90 = +[VPNConnectionStore sharedInstance];
  v91 = [v90 gradePresent:5];

  v92 = +[VPNConnectionStore sharedInstance];
  v93 = [v92 gradePresent:6];

  v94 = +[VPNConnectionStore sharedInstance];
  v95 = [v94 gradePresent:9];

  v96 = v89 | v91;
  if (((v89 | v91) & 1) != 0 || (v93 & 1) != 0 || v95)
  {
    v97 = [v4[214] bundleForClass:objc_opt_class()];
    v98 = [v97 localizedStringForKey:@"PROXY_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v99 = [PSSpecifier groupSpecifierWithName:v98];
    [v6 addObject:v99];
  }

  v100 = [(VPNBundleController *)self dnsSpecifier];
  if (v100)
  {

    if (v96)
    {
      v101 = [(VPNBundleController *)self dnsSpecifier];
      [v6 addObject:v101];
    }
  }

  v102 = [(VPNBundleController *)self contentFilterSpecifier];
  v103 = (v102 != 0) & v93;

  v5 = v117;
  if (v103 == 1)
  {
    v104 = [(VPNBundleController *)self contentFilterSpecifier];
    [v6 addObject:v104];
  }

  v105 = [(VPNBundleController *)self urlFilterSpecifier];
  v106 = (v105 != 0) & v95;

  if (v106 == 1)
  {
    v107 = [(VPNBundleController *)self urlFilterSpecifier];
    [v6 addObject:v107];
  }

LABEL_60:

  return v6;
}

- (VPNBundleController)initWithParentListController:(id)a3 properties:(id)a4
{
  v15.receiver = self;
  v15.super_class = VPNBundleController;
  v5 = a4;
  v6 = [(VPNBundleController *)&v15 initWithParentListController:a3];
  if (v6)
  {
    v7 = [VPNConnectionStore sharedInstance:v15.receiver];

    if (!v7)
    {
      v8 = sub_46D8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_29EB0(v8);
      }
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"vpnStatusChanged:" name:off_49D50 object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v6 selector:"vpnConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v6 selector:"vpnStatusChanged:" name:@"VPNConnectionsChangedNotification" object:0];

    [(VPNBundleController *)v6 setRegistered:1];
  }

  v12 = [v5 objectForKeyedSubscript:{@"isTopLevel", v15.receiver, v15.super_class}];
  -[VPNBundleController setRootMenuItem:](v6, "setRootMenuItem:", [v12 BOOLValue]);

  v13 = [v5 objectForKeyedSubscript:@"isDeviceManagement"];

  -[VPNBundleController setDeviceManagement:](v6, "setDeviceManagement:", [v13 BOOLValue]);
  return v6;
}

- (void)updateVPNSwitchStatus
{
  if ([(VPNBundleController *)self isRootMenuItem])
  {
    v3 = OBJC_IVAR___PSBundleController__parent;
    WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v9 = [WeakRetained specifierForID:@"VPN"];

    v5 = objc_loadWeakRetained(&self->PSBundleController_opaque[v3]);
    v6 = [v5 indexOfSpecifier:v9];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(VPNBundleController *)self vpnActiveForSpecifier:v9];
      v8 = objc_loadWeakRetained(&self->PSBundleController_opaque[v3]);
      [v8 reloadSpecifierAtIndex:v6];
    }
  }
}

- (void)vpnStatusChanged:(id)a3
{
  if ([(VPNBundleController *)self isRootMenuItem]&& [(VPNBundleController *)self isToggleSwitchInRootMenu])
  {
    if (a3)
    {
      [(VPNBundleController *)self updateVPNSwitchStatus];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    [WeakRetained reloadSpecifierID:@"VPN"];
  }

  v6 = +[VPNConnectionStore sharedInstance];
  v7 = +[VPNConnectionStore sharedInstance];
  v20 = [v6 currentConnectionWithGrade:{objc_msgSend(v7, "currentOnlyConnectionGrade")}];

  if (v20)
  {
    v8 = [v20 password];
    if ([v8 length])
    {
      v9 = [v20 disconnected];

      if (v9)
      {
        [v20 setPassword:0];
      }
    }

    else
    {
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v10 = OBJC_IVAR___PSBundleController__parent;
    v11 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v12 = [(VPNBundleController *)self contentFilterSpecifier];
    v13 = [v11 indexOfSpecifier:v12];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = objc_loadWeakRetained(&self->PSBundleController_opaque[v10]);
      [v14 reloadSpecifierAtIndex:v13];
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v15 = OBJC_IVAR___PSBundleController__parent;
    v16 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v17 = [(VPNBundleController *)self urlFilterSpecifier];
    v18 = [v16 indexOfSpecifier:v17];

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = objc_loadWeakRetained(&self->PSBundleController_opaque[v15]);
      [v19 reloadSpecifierAtIndex:v18];
    }
  }
}

- (void)vpnConfigurationChanged:(id)a3
{
  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v4 = +[VPNBundleController navigationTitle];
    v5 = [(VPNBundleController *)self linkVPNSpecifier];
    [v5 setName:v4];
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v6 = OBJC_IVAR___PSBundleController__parent;
    WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v8 = [(VPNBundleController *)self dnsSpecifier];
    v9 = [WeakRetained indexOfSpecifier:v8];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_loadWeakRetained(&self->PSBundleController_opaque[v6]);
      [v10 reloadSpecifierAtIndex:v9];
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v11 = OBJC_IVAR___PSBundleController__parent;
    v12 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v13 = [(VPNBundleController *)self contentFilterSpecifier];
    v14 = [v12 indexOfSpecifier:v13];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = objc_loadWeakRetained(&self->PSBundleController_opaque[v11]);
      [v15 reloadSpecifierAtIndex:v14];
    }
  }

  if ([(VPNBundleController *)self isDeviceManagement])
  {
    v16 = OBJC_IVAR___PSBundleController__parent;
    v17 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v18 = [(VPNBundleController *)self urlFilterSpecifier];
    v19 = [v17 indexOfSpecifier:v18];

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = objc_loadWeakRetained(&self->PSBundleController_opaque[v16]);
      [v20 reloadSpecifierAtIndex:v19];
    }
  }

  if ([(VPNBundleController *)self isRootMenuItem])
  {
    v21 = +[VPNConnectionStore sharedInstance];
    v54 = [v21 vpnServiceTotalCount];

    v53 = OBJC_IVAR___PSBundleController__parent;
    v22 = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
    v23 = [v22 specifierForID:@"VPN"];

    v24 = [(VPNBundleController *)self lastServiceCount];
    v25 = [v24 intValue];

    v26 = [v54 intValue];
    if (v23)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v28 = [(VPNBundleController *)self isToggleSwitchInRootMenu];
    v29 = +[VPNConnectionStore sharedInstance];
    v30 = 0;
    if (([v29 gradePresent:3] & 1) == 0)
    {
      v31 = +[VPNConnectionStore sharedInstance];
      if ([v31 gradePresent:2])
      {
        v30 = 0;
      }

      else
      {
        v32 = +[VPNConnectionStore sharedInstance];
        if ([v32 gradePresent:7])
        {
          v30 = 0;
        }

        else
        {
          v52 = +[VPNConnectionStore sharedInstance];
          if ([v52 gradePresent:8])
          {
            v30 = 0;
          }

          else
          {
            v33 = +[VPNConnectionStore sharedInstance];
            v30 = ([v33 disableToggle] & 1) == 0 && objc_msgSend(v54, "intValue") == 1;
          }
        }
      }
    }

    v34 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"VPN" value:&stru_411E8 table:@"MobileVPN"];
    v36 = [(VPNBundleController *)self linkVPNSpecifier];
    [v36 setName:v35];

    if (v27 == v26 && v28 == v30)
    {
      goto LABEL_54;
    }

    [(VPNBundleController *)self setLastServiceCount:v54];
    [(VPNBundleController *)self setToggleSwitchInRootMenu:v30];
    if ([(VPNBundleController *)self isToggleSwitchInRootMenu])
    {
      [(VPNBundleController *)self toggleVPNSpecifier];
    }

    else
    {
      [(VPNBundleController *)self linkVPNSpecifier];
    }
    v37 = ;
    [(VPNBundleController *)self setVpnSpecifier:v37];

    if (v23 || v26 < 1)
    {
      if (v23)
      {
        if (v26 && ([(VPNBundleController *)self vpnSpecifier], v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
        {
          v48 = [(VPNBundleController *)self vpnSpecifier];

          if (v23 == v48)
          {
            goto LABEL_54;
          }

          v45 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
          v49 = [NSArray arrayWithObject:v23];
          v50 = [(VPNBundleController *)self vpnSpecifier];
          v51 = [NSArray arrayWithObject:v50];
          [v45 replaceContiguousSpecifiers:v49 withSpecifiers:v51 animated:1];
        }

        else
        {
          v45 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
          [v45 removeSpecifier:v23 animated:1];
        }

LABEL_53:
      }
    }

    else
    {
      v38 = [(VPNBundleController *)self vpnSpecifier];

      if (v38)
      {
        v39 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
        v40 = [v39 indexOfSpecifierID:@"INTERNET_TETHERING"];

        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
          v40 = [v41 indexOfSpecifierID:@"MOBILE_DATA_SETTINGS_ID"];

          if (v40 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v42 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
            v40 = [v42 indexOfSpecifierID:@"Bluetooth"];

            if (v40 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
              v40 = [v43 indexOfSpecifierID:@"WIFI"];
            }
          }
        }

        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = 1;
        }

        else
        {
          v44 = v40 + 1;
        }

        v45 = objc_loadWeakRetained(&self->PSBundleController_opaque[v53]);
        v46 = [(VPNBundleController *)self vpnSpecifier];
        [v45 insertSpecifier:v46 atIndex:v44 animated:1];

        goto LABEL_53;
      }
    }

LABEL_54:
  }
}

- (id)getDNSSummary:(id)a3
{
  v22 = a3;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTOMATIC_DNS" value:&stru_411E8 table:@"MobileVPN"];

  v5 = +[VPNConnectionStore sharedInstance];
  v6 = [v5 vpnServicesForCurrentSetWithGrade:4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = +[VPNConnectionStore sharedInstance];
        v15 = [v14 isEnabledWithServiceID:v13 withGrade:4];

        if (v15)
        {
          if (v10)
          {
            v19 = [NSBundle bundleForClass:objc_opt_class()];
            v20 = [v19 localizedStringForKey:@"MULTIPLE_DNS" value:&stru_411E8 table:@"MobileVPN"];

            v4 = v20;
            goto LABEL_15;
          }

          v16 = +[VPNConnectionStore sharedInstance];
          v17 = [v16 optionsForServiceID:v13 withGrade:4];

          if (v17)
          {
            v18 = [v17 objectForKeyedSubscript:@"dispName"];

            v4 = v18;
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

- (id)getContentFilterSummary:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 aggregateStatusText:6];

  return v4;
}

- (void)confirmAirplaneModeDisable:(id)a3
{
  +[VPNBundleController disableAirplaneMode];

  [(VPNBundleController *)self setVPNActive:1];
}

- (void)cancelAirplaneModeDisable:(id)a3
{
  v4 = OBJC_IVAR___PSBundleController__parent;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[v4]);
  [WeakRetained reloadSpecifier:v5];
}

@end