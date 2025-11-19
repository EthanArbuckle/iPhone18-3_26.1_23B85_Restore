@interface VPNController
- (BOOL)shouldHideAddVPNButton;
- (VPNController)init;
- (id)dnsStatusForSpecifier:(id)a3;
- (id)getAOVPNEnabledForSpecifier:(id)a3;
- (id)getDNSSummary:(id)a3;
- (id)getDeviceRelayStateForSpecifier:(id)a3;
- (id)getEnterpriseConnectionStateForSpecifier:(id)a3;
- (id)getPersonalConnectionStateForSpecifier:(id)a3;
- (id)messageForConnection:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)addListForGrade:(unint64_t)a3 toSpecifiers:(id)a4;
- (void)addVPNConfiguration:(id)a3;
- (void)changeActiveVPN:(id)a3;
- (void)confirmAirplaneModeDisable:(id)a3;
- (void)dealloc;
- (void)handleURL:(id)a3;
- (void)loadView;
- (void)privacyLinkAction;
- (void)setAOVPNEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setEnterpriseConnectionState:(id)a3 forSpecifier:(id)a4;
- (void)setEnterpriseVPNActive:(BOOL)a3 specifier:(id)a4;
- (void)setPersonalConnectionState:(id)a3 forSpecifier:(id)a4;
- (void)setPersonalVPNActive:(BOOL)a3 specifier:(id)a4;
- (void)someVPNStatusChanged:(id)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)vpnEnterpriseStatusChanged:(id)a3;
- (void)vpnPersonalStatusChanged:(id)a3;
- (void)willBecomeActive;
@end

@implementation VPNController

- (void)someVPNStatusChanged:(id)a3
{
  v5 = a3;
  v4 = [v5 object];
  if ([v4 grade] == &dword_0 + 1)
  {
    [(VPNController *)self vpnPersonalStatusChanged:v5];
  }

  else if ([v4 grade])
  {
    if ([v4 grade] == &dword_0 + 2 || objc_msgSend(v4, "grade") == &dword_0 + 3)
    {
      [(VPNController *)self reloadSpecifiers];
    }
  }

  else
  {
    [(VPNController *)self vpnEnterpriseStatusChanged:v5];
  }
}

- (id)messageForConnection:(id)a3
{
  v3 = a3;
  v4 = +[VPNConnectionStore sharedInstance];
  v5 = [v3 serviceID];
  v6 = [v4 optionsForServiceID:v5 withGrade:0];

  v7 = [v6 objectForKey:@"VPNOnDemandCapable"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [v6 objectForKey:@"VPNOnDemandEnabled"];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v22 = 0;
  v11 = [v3 serviceID];
  v12 = [v4 isTypeEnabledWithServiceID:v11 withGrade:0 outProviderAvailable:&v22];

  if ([v3 vpnConnectionType] != &dword_0 + 3)
  {
    goto LABEL_7;
  }

  if ((v22 & 1) == 0)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v14 localizedStringForKey:@"MISSING_PROVIDER_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
    v17 = [v3 serviceID];
    v19 = [v4 appNameForServiceID:v17 withGrade:0];
    v20 = [v3 displayName];
    [NSString stringWithFormat:v16, v19, v20];
    v18 = LABEL_15:;

    goto LABEL_16;
  }

  if ((v12 & v8 & 1) == 0)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v14 localizedStringForKey:@"SSL_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
    v17 = [v3 displayName];
    v19 = [v3 serviceID];
    v20 = [v4 appNameForServiceID:v19 withGrade:0];
    [NSString stringWithFormat:v16, v17, v20];
    goto LABEL_15;
  }

LABEL_7:
  if ([v3 onDemandAction] == &dword_0 + 2)
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"ON_DEMAND_DISCONNECT";
  }

  else
  {
    if (!v10 || [v3 onDemandAction] == &dword_4)
    {
      v18 = 0;
      goto LABEL_17;
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"ON_DEMAND_TEXT";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_411E8 table:@"MobileVPN"];
  v17 = [v3 displayName];
  v18 = [NSString stringWithFormat:v16, v17];
LABEL_16:

LABEL_17:

  return v18;
}

- (void)vpnPersonalStatusChanged:(id)a3
{
  v4 = a3;
  v5 = +[VPNConnectionStore sharedInstance];
  v6 = [v5 currentConnectionWithGrade:1];

  v27 = v4;
  v7 = [v4 object];
  v25 = [v6 isEqual:v7];
  if (v25)
  {
    [(VPNController *)self beginUpdates];
    v8 = [(VPNController *)self connectPersonalSpecifier];
    v9 = [v8 propertyForKey:PSTableCellKey];

    v10 = [v6 statusText];
    v11 = [v9 detailTextLabel];
    [v11 setText:v10];

    v12 = [(VPNController *)self connectPersonalSpecifier];
    [(VPNController *)self reloadSpecifier:v12 animated:0];
  }

  v26 = v6;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(VPNController *)self currentPersonalVPNSpecifiers];
  v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v28 = PSTableCellKey;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 userInfo];
        v19 = [v18 objectForKey:@"vpn-service-id"];
        v20 = [v7 serviceID];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          v22 = [v17 propertyForKey:v28];
          v23 = [v7 alertText];
          [v22 setAlert:v23];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  if (v25)
  {
    [v24 endUpdates];
  }
}

- (void)vpnEnterpriseStatusChanged:(id)a3
{
  v4 = a3;
  v5 = +[VPNConnectionStore sharedInstance];
  v6 = [v5 currentConnectionWithGrade:0];

  v27 = v4;
  v7 = [v4 object];
  v25 = [v6 isEqual:v7];
  if (v25)
  {
    [(VPNController *)self beginUpdates];
    v8 = [(VPNController *)self connectEnterpriseSpecifier];
    v9 = [v8 propertyForKey:PSTableCellKey];

    v10 = [v6 statusText];
    v11 = [v9 detailTextLabel];
    [v11 setText:v10];

    v12 = [(VPNController *)self connectEnterpriseSpecifier];
    [(VPNController *)self reloadSpecifier:v12 animated:0];
  }

  v26 = v6;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(VPNController *)self currentEnterpriseVPNSpecifiers];
  v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v28 = PSTableCellKey;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 userInfo];
        v19 = [v18 objectForKey:@"vpn-service-id"];
        v20 = [v7 serviceID];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          v22 = [v17 propertyForKey:v28];
          v23 = [v7 alertText];
          [v22 setAlert:v23];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  if (v25)
  {
    [v24 endUpdates];
  }
}

- (BOOL)shouldHideAddVPNButton
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureVPNCreationAllowed];

  return v3 == 2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = VPNController;
  [(VPNController *)&v5 dealloc];
}

- (VPNController)init
{
  v6.receiver = self;
  v6.super_class = VPNController;
  v2 = [(VPNController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"someVPNStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"vpnConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];
  }

  return v2;
}

- (void)setPersonalVPNActive:(BOOL)a3 specifier:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 currentConnectionWithGrade:1];

  if (v7)
  {
    if (v4)
    {
      if (+[VPNBundleController networkingIsDisabled])
      {
        v8 = [(VPNController *)self rootController];
        v9 = [v8 topViewController];

        [v9 showConfirmationViewForSpecifier:v10];
      }

      else
      {
        [v7 connect];
      }
    }

    else
    {
      [v7 disconnect];
    }

    [(VPNController *)self vpnPersonalStatusChanged:0];
  }
}

- (void)setEnterpriseVPNActive:(BOOL)a3 specifier:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 currentConnectionWithGrade:0];

  if (v7)
  {
    if (v4)
    {
      if (+[VPNBundleController networkingIsDisabled])
      {
        v8 = [(VPNController *)self rootController];
        v9 = [v8 topViewController];

        [v9 showConfirmationViewForSpecifier:v10];
      }

      else
      {
        [v7 connect];
      }
    }

    else
    {
      [v7 disconnect];
    }

    [(VPNController *)self vpnEnterpriseStatusChanged:0];
  }
}

- (void)setEnterpriseConnectionState:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  -[VPNController setEnterpriseVPNActive:specifier:](self, "setEnterpriseVPNActive:specifier:", [a3 BOOLValue], v6);
}

- (id)getEnterpriseConnectionStateForSpecifier:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 currentConnectionWithGrade:0];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 notDisconnectedOrDisconnecting]);

  return v5;
}

- (id)getDeviceRelayStateForSpecifier:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 currentConnectionWithGrade:7];

  v5 = [v4 statusText];

  return v5;
}

- (void)setAOVPNEnabled:(id)a3 forSpecifier:(id)a4
{
  v4 = a3;
  v10 = +[VPNConnectionStore sharedInstance];
  v5 = [v10 currentConnectionWithGrade:3];
  v6 = [v4 BOOLValue];

  v7 = [v5 serviceID];
  v8 = [v10 isEnabledWithServiceID:v7 withGrade:3];

  if (v6 != v8)
  {
    v9 = [v5 serviceID];
    [v10 enable:v6 serviceID:v9 withGrade:3];
  }
}

- (id)getAOVPNEnabledForSpecifier:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 currentConnectionWithGrade:3];
  v5 = [v4 serviceID];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledWithServiceID:v5 withGrade:3]);

  return v6;
}

- (void)setPersonalConnectionState:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  -[VPNController setPersonalVPNActive:specifier:](self, "setPersonalVPNActive:specifier:", [a3 BOOLValue], v6);
}

- (id)getPersonalConnectionStateForSpecifier:(id)a3
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 currentConnectionWithGrade:1];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 notDisconnectedOrDisconnecting]);

  return v5;
}

- (void)addVPNConfiguration:(id)a3
{
  v4 = *(a3 + OBJC_IVAR___PSSpecifier_detailControllerClass);
  v5 = a3;
  v6 = objc_alloc_init(v4);
  if (!v6)
  {
    v6 = objc_alloc_init(PSDetailController);
  }

  v8 = v6;
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  [v8 setRootController:WeakRetained];

  [v8 setParentController:self];
  [v8 setSpecifier:v5];

  [(VPNController *)self showController:v8];
}

- (void)willBecomeActive
{
  v2.receiver = self;
  v2.super_class = VPNController;
  [(VPNController *)&v2 willBecomeActive];
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = VPNController;
  [(VPNController *)&v2 loadView];
}

- (void)addListForGrade:(unint64_t)a3 toSpecifiers:(id)a4
{
  v36 = a4;
  v5 = &selRef_setImageHidden_;
  v6 = +[VPNConnectionStore sharedInstance];
  v42 = a3;
  v7 = [v6 vpnServicesForCurrentSetWithGrade:a3];

  if (v7)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v41 = *v44;
      v35 = PSSetupCustomClassKey;
      v34 = PSCellClassKey;
      v32 = PSEnabledKey;
      v33 = PSDetailControllerClassKey;
      do
      {
        v10 = 0;
        v37 = v9;
        do
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * v10);
          v12 = [v5 + 241 sharedInstance];
          v13 = [v12 connectionWithServiceID:v11 withGrade:v42];

          if (v13)
          {
            v14 = [v13 displayName];
            v15 = [v5 + 241 sharedInstance];
            v16 = [v15 isUserCreatedVPN:v11];

            v17 = [v5 + 241 sharedInstance];
            v18 = [v17 isProfileBacked:v11];

            v19 = [v5 + 241 sharedInstance];
            v20 = [v19 organizationForServiceID:v11];

            v21 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
            [v21 setIdentifier:v14];
            if (v21)
            {
              v50[0] = @"VPNSetupListController";
              v49[0] = v35;
              v49[1] = v34;
              v50[1] = objc_opt_class();
              v50[2] = @"VPNSetupListController";
              v49[2] = v33;
              v49[3] = v32;
              v22 = [v13 vpnConnectionType];
              v23 = &off_43650;
              if (v22 == &dword_0 + 1)
              {
                v23 = &off_43638;
              }

              v50[3] = v23;
              v40 = v14;
              v24 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
              [v21 setProperties:v24];

              v48[0] = v11;
              v47[0] = @"vpn-service-id";
              v47[1] = @"vpn-user-created";
              v25 = [NSNumber numberWithBool:v16];
              v48[1] = v25;
              v48[2] = v20;
              v47[2] = @"vpn-organization";
              v47[3] = @"service-grade";
              v26 = [NSNumber numberWithUnsignedInteger:v42];
              v48[3] = v26;
              v47[4] = @"overview-mode";
              v27 = [NSNumber numberWithBool:1];
              v48[4] = v27;
              v47[5] = @"vpn-alert";
              v28 = [v13 alertText];
              v48[5] = v28;
              v47[6] = @"vpn-profile-backed";
              v29 = [NSNumber numberWithBool:v18];
              v48[6] = v29;
              v30 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
              [v21 setUserInfo:v30];

              v14 = v40;
              v9 = v37;

              v5 = &selRef_setImageHidden_;
              [v36 addObject:v21];
            }
          }

          v10 = v10 + 1;
        }

        while (v9 != v10);
        v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v9);
    }

    v7 = v31;
  }
}

- (id)specifiers
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [v3 vpnServiceCountWithGrade:3];
  v265 = [v4 intValue];

  v5 = [v3 vpnServiceCountWithGrade:0];
  v6 = [v5 intValue];

  v7 = [v3 vpnServiceCountWithGrade:7];
  v8 = [v7 intValue];

  v9 = [v3 vpnServiceCountWithGrade:8];
  v10 = [v9 intValue];

  v11 = [v3 vpnServiceCountWithGrade:2];
  v12 = [v11 intValue];

  v13 = [v3 vpnServiceCountWithGrade:1];
  v14 = [v13 intValue];

  v15 = [v3 vpnServiceCountWithGrade:4];
  v16 = [v15 intValue];

  v17 = [v3 vpnServiceCountWithGrade:5];
  v18 = [v17 intValue];

  v19 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v19)
  {
    goto LABEL_111;
  }

  v262 = v10;
  v244 = v12;
  v245 = v14;
  v246 = __PAIR64__(v16, v18);
  v247 = OBJC_IVAR___PSListController__specifiers;
  v20 = objc_alloc_init(NSMutableArray);
  v270 = v3;
  v271 = self;
  v255 = v20;
  if (v265)
  {
    v21 = [(VPNController *)self alwaysOnGroupTitleSpecifier];

    if (!v21)
    {
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"ALWAYS_ON_VPN_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
      v24 = [PSSpecifier groupSpecifierWithName:v23];
      [(VPNController *)self setAlwaysOnGroupTitleSpecifier:v24];
    }

    v25 = [(VPNController *)self alwaysOnGroupTitleSpecifier];
    [v20 addObject:v25];

    v26 = [v3 currentConnectionWithGrade:3];
    if (v26)
    {
      v27 = [v3 currentConnectionWithGrade:3];
      v28 = [v27 displayName];
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      v335[0] = @"VPNSetupListController";
      v334[0] = PSSetupCustomClassKey;
      v334[1] = PSCellClassKey;
      v30 = objc_opt_class();
      v334[2] = PSDetailControllerClassKey;
      v335[1] = v30;
      v335[2] = @"VPNSetupListController";
      v31 = [NSDictionary dictionaryWithObjects:v335 forKeys:v334 count:3];
      [v29 setProperties:v31];

      v332[0] = @"vpn-service-id";
      v266 = [v26 serviceID];
      v333[0] = v266;
      v332[1] = @"vpn-user-created";
      v32 = [NSNumber numberWithInteger:0];
      v333[1] = v32;
      v332[2] = @"vpn-organization";
      v33 = [v26 serviceID];
      v34 = [v270 organizationForServiceID:v33];
      v333[2] = v34;
      v332[3] = @"vpn-status";
      v35 = [v26 statusText];
      v333[3] = v35;
      v332[4] = @"service-grade";
      v36 = [NSNumber numberWithInteger:3];
      v333[4] = v36;
      v332[5] = @"overview-mode";
      v37 = [NSNumber numberWithBool:1];
      v333[5] = v37;
      v332[6] = @"vpn-profile-backed";
      [NSNumber numberWithBool:1];
      v39 = v38 = v26;
      v333[6] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v333 forKeys:v332 count:7];
      [v29 setUserInfo:v40];

      v26 = v38;
      self = v271;

      v3 = v270;
      [(VPNController *)v271 setCurrentAOVPNSpecifier:v29];
      v41 = [(VPNController *)v271 currentAOVPNSpecifier];
      [v255 addObject:v41];

      v42 = [v38 serviceID];
      LODWORD(v36) = [v270 alwaysOnToggleEnabledForServiceID:v42];

      if (v36)
      {
        v43 = [NSBundle bundleForClass:objc_opt_class()];
        v44 = [v43 localizedStringForKey:@"CONNECT_AUTOMATICALLY" value:&stru_411E8 table:@"MobileVPN"];
        v45 = [PSConfirmationSpecifier preferenceSpecifierNamed:v44 target:v271 set:"setAOVPNEnabled:forSpecifier:" get:"getAOVPNEnabledForSpecifier:" detail:0 cell:6 edit:0];

        [v255 addObject:v45];
      }

      v46 = [v38 serviceID];
      v47 = [v270 isEnabledWithServiceID:v46 withGrade:3];
      v48 = [NSBundle bundleForClass:objc_opt_class()];
      v49 = v48;
      if (v47)
      {
        v50 = @"ALWAYS_ON_TEXT";
      }

      else
      {
        v50 = @"ALWAYS_ON_DISABLED_TEXT";
      }

      v51 = [v48 localizedStringForKey:v50 value:&stru_411E8 table:@"MobileVPN"];
      v52 = [v38 displayName];
      v53 = [NSString stringWithFormat:v51, v52];

      v54 = [(VPNController *)v271 alwaysOnGroupTitleSpecifier];
      v330 = PSFooterTextGroupKey;
      v331 = v53;
      v55 = [NSDictionary dictionaryWithObjects:&v331 forKeys:&v330 count:1];
      [v54 setProperties:v55];
    }

    goto LABEL_106;
  }

  [(VPNController *)self setCurrentEnterpriseVPNSpecifiers:0];
  v56 = v8;
  v57 = v6;
  v243 = v6;
  if (v6 | v56)
  {
    v58 = [(VPNController *)self enterpriseGroupTitleSpecifier];

    if (!v58)
    {
      v59 = +[PSSpecifier emptyGroupSpecifier];
      [(VPNController *)self setEnterpriseGroupTitleSpecifier:v59];
    }

    v60 = [(VPNController *)self enterpriseGroupTitleSpecifier];
    [v20 addObject:v60];

    if (v6)
    {
      v61 = [v3 currentConnectionWithGrade:0];
      if (v61)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v56)
    {
      v61 = [v3 currentConnectionWithGrade:7];
    }

LABEL_21:
    if (v61)
    {
LABEL_35:
      v69 = [v61 grade];
      v70 = [NSBundle bundleForClass:objc_opt_class()];
      v71 = v70;
      if (v69 == &dword_4 + 3)
      {
        v72 = [v70 localizedStringForKey:@"RELAY_STATUS" value:&stru_411E8 table:@"MobileVPN"];

        v73 = [PSSpecifier preferenceSpecifierNamed:v72 target:self set:0 get:"getDeviceRelayStateForSpecifier:" detail:0 cell:4 edit:0];
        [(VPNController *)self setConnectEnterpriseSpecifier:v73];
        v74 = [(VPNController *)self connectEnterpriseSpecifier];
        [v20 addObject:v74];

        v75 = [(VPNController *)self enterpriseGroupTitleSpecifier];
        [v75 removePropertyForKey:PSFooterTextGroupKey];
      }

      else
      {
        v76 = [v70 localizedStringForKey:@"VPN_STATUS" value:&stru_411E8 table:@"MobileVPN"];

        v267 = v76;
        v73 = [PSConfirmationSpecifier preferenceSpecifierNamed:v76 target:self set:"setEnterpriseConnectionState:forSpecifier:" get:"getEnterpriseConnectionStateForSpecifier:" detail:0 cell:6 edit:0];
        v77 = [NSBundle bundleForClass:objc_opt_class()];
        v78 = [v77 localizedStringForKey:@"AIRPLANE_SHEET_CANCEL" value:&stru_411E8 table:@"MobileVPN"];
        [v73 setCancelButton:v78];

        v79 = [NSBundle bundleForClass:objc_opt_class()];
        v80 = [v79 localizedStringForKey:@"AIRPLANE_SHEET_OK_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
        [v73 setOkButton:v80];

        v81 = [NSBundle bundleForClass:objc_opt_class()];
        v82 = [v81 localizedStringForKey:@"AIRPLANE_SHEET_OK" value:&stru_411E8 table:@"MobileVPN"];
        [v73 setTitle:v82];

        v83 = [NSBundle bundleForClass:objc_opt_class()];
        v84 = [v83 localizedStringForKey:@"AIRPLANE_SHEET_TITLE" value:&stru_411E8 table:@"MobileVPN"];
        [v73 setPrompt:v84];

        v326[0] = PSConfirmationDestructiveKey;
        v85 = [NSNumber numberWithBool:1];
        v327[0] = v85;
        v326[1] = PSCellClassKey;
        v327[1] = objc_opt_class();
        v326[2] = PSEnabledKey;
        if ([v61 onDemandAction] == &dword_0 + 2)
        {
          v86 = 0;
        }

        else
        {
          v86 = [v61 isProviderAvailable];
        }

        v87 = [NSNumber numberWithInt:v86];
        v327[2] = v87;
        v88 = [NSDictionary dictionaryWithObjects:v327 forKeys:v326 count:3];
        [v73 setProperties:v88];

        v324 = @"vpn-status";
        v89 = [v61 statusText];
        v325 = v89;
        v90 = [NSDictionary dictionaryWithObjects:&v325 forKeys:&v324 count:1];
        [v73 setUserInfo:v90];

        [v73 setConfirmationAction:"confirmAirplaneModeDisable:"];
        [v73 setConfirmationCancelAction:"cancelAirplaneModeDisable:"];
        [(VPNController *)self setConnectEnterpriseSpecifier:v73];
        v91 = [(VPNController *)self connectEnterpriseSpecifier];
        [v20 addObject:v91];

        v75 = [(VPNController *)self messageForConnection:v61];
        v92 = [(VPNController *)self enterpriseGroupTitleSpecifier];
        v93 = v92;
        if (v75)
        {
          v322 = PSFooterTextGroupKey;
          v323 = v75;
          v94 = [NSDictionary dictionaryWithObjects:&v323 forKeys:&v322 count:1];
          [v93 setProperties:v94];
        }

        else
        {
          [v92 removePropertyForKey:PSFooterTextGroupKey];
        }

        v72 = v267;
      }

      v57 = v243;
      goto LABEL_45;
    }

    if (v57)
    {
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      v62 = [v3 vpnServicesForCurrentSetWithGrade:0];
      v63 = [v62 countByEnumeratingWithState:&v292 objects:v329 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v293;
        while (2)
        {
          for (i = 0; i != v64; i = i + 1)
          {
            if (*v293 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v292 + 1) + 8 * i);
            if (v67)
            {
              [v3 setActiveVPNID:v67 withGrade:0];
              goto LABEL_33;
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v292 objects:v329 count:16];
          if (v64)
          {
            continue;
          }

          break;
        }
      }

LABEL_33:
      v68 = 0;
    }

    else
    {
      if (!v56)
      {
        goto LABEL_45;
      }

      v290 = 0u;
      v291 = 0u;
      v288 = 0u;
      v289 = 0u;
      v68 = 7;
      v62 = [v3 vpnServicesForCurrentSetWithGrade:7];
      v238 = [v62 countByEnumeratingWithState:&v288 objects:v328 count:16];
      if (v238)
      {
        v239 = v238;
        v240 = *v289;
        v68 = 7;
        while (2)
        {
          for (j = 0; j != v239; j = j + 1)
          {
            if (*v289 != v240)
            {
              objc_enumerationMutation(v62);
            }

            v242 = *(*(&v288 + 1) + 8 * j);
            if (v242)
            {
              v68 = 7;
              [v3 setActiveVPNID:v242 withGrade:7];
              goto LABEL_123;
            }
          }

          v239 = [v62 countByEnumeratingWithState:&v288 objects:v328 count:16];
          if (v239)
          {
            continue;
          }

          break;
        }

LABEL_123:
        v57 = v243;
      }
    }

    v61 = [v3 currentConnectionWithGrade:v68];
    if (v61)
    {
      goto LABEL_35;
    }

LABEL_45:
    v95 = objc_alloc_init(NSMutableArray);
    [(VPNController *)self setCurrentEnterpriseVPNSpecifiers:v95];

    v96 = [NSBundle bundleForClass:objc_opt_class()];
    v97 = [v96 localizedStringForKey:@"ENTERPRISE_VPN_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];

    if (v56)
    {
      v98 = [NSBundle bundleForClass:objc_opt_class()];
      v99 = v98;
      if (v57)
      {
        v100 = @"ENTERPRISE_VPN_AND_RELAYS_GROUP_TITLE";
      }

      else
      {
        v100 = @"ENTERPRISE_RELAYS_GROUP_TITLE";
      }

      v101 = [v98 localizedStringForKey:v100 value:&stru_411E8 table:@"MobileVPN"];

      v97 = v101;
    }

    v102 = [(VPNController *)self currentEnterpriseVPNSpecifiers];
    v103 = [PSSpecifier groupSpecifierWithName:v97];
    [v102 addObject:v103];

    v104 = [(VPNController *)self currentEnterpriseVPNSpecifiers];
    [(VPNController *)self addListForGrade:0 toSpecifiers:v104];

    v105 = [(VPNController *)self currentEnterpriseVPNSpecifiers];
    [(VPNController *)self addListForGrade:7 toSpecifiers:v105];

    v106 = [(VPNController *)self currentEnterpriseVPNSpecifiers];
    [v20 addObjectsFromArray:v106];
  }

  [(VPNController *)self setCurrentPersonalVPNSpecifiers:0];
  v107 = v262;
  if (v14)
  {
    v108 = [(VPNController *)self personalGroupTitleSpecifier];

    if (!v108)
    {
      v109 = [NSBundle bundleForClass:objc_opt_class()];
      v110 = [v109 localizedStringForKey:@"PERSONAL_VPN_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
      v111 = [PSSpecifier groupSpecifierWithName:v110];
      [(VPNController *)self setPersonalGroupTitleSpecifier:v111];
    }

    v112 = [(VPNController *)self personalGroupTitleSpecifier];
    [v20 addObject:v112];

    v113 = [v3 currentConnectionWithGrade:1];
    if (v113)
    {
      goto LABEL_66;
    }

    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    v114 = [v3 vpnServicesForCurrentSetWithGrade:1];
    v115 = [v114 countByEnumeratingWithState:&v284 objects:v321 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v285;
      while (2)
      {
        for (k = 0; k != v116; k = k + 1)
        {
          if (*v285 != v117)
          {
            objc_enumerationMutation(v114);
          }

          v119 = *(*(&v284 + 1) + 8 * k);
          if (v119)
          {
            [v3 setActiveVPNID:v119 withGrade:1];
            goto LABEL_65;
          }
        }

        v116 = [v114 countByEnumeratingWithState:&v284 objects:v321 count:16];
        if (v116)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:

    v113 = [v3 currentConnectionWithGrade:1];
    if (v113)
    {
LABEL_66:
      v120 = v113;
      v121 = [NSBundle bundleForClass:objc_opt_class()];
      v122 = [v121 localizedStringForKey:@"STATUS" value:&stru_411E8 table:@"MobileVPN"];

      v123 = v122;
      v124 = [PSConfirmationSpecifier preferenceSpecifierNamed:v122 target:self set:"setPersonalConnectionState:forSpecifier:" get:"getPersonalConnectionStateForSpecifier:" detail:0 cell:6 edit:0];
      v125 = [NSBundle bundleForClass:objc_opt_class()];
      v126 = [v125 localizedStringForKey:@"AIRPLANE_SHEET_CANCEL" value:&stru_411E8 table:@"MobileVPN"];
      [v124 setCancelButton:v126];

      v127 = [NSBundle bundleForClass:objc_opt_class()];
      v128 = [v127 localizedStringForKey:@"AIRPLANE_SHEET_OK_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
      [v124 setOkButton:v128];

      v129 = [NSBundle bundleForClass:objc_opt_class()];
      v130 = [v129 localizedStringForKey:@"AIRPLANE_SHEET_OK" value:&stru_411E8 table:@"MobileVPN"];
      [v124 setTitle:v130];

      v131 = [NSBundle bundleForClass:objc_opt_class()];
      v132 = [v131 localizedStringForKey:@"AIRPLANE_SHEET_TITLE" value:&stru_411E8 table:@"MobileVPN"];
      [v124 setPrompt:v132];

      v319[0] = PSConfirmationDestructiveKey;
      v133 = [NSNumber numberWithBool:1];
      v320[0] = v133;
      v319[1] = PSCellClassKey;
      v320[1] = objc_opt_class();
      v319[2] = PSEnabledKey;
      v134 = [v120 onDemandAction];
      v135 = &off_43650;
      if (v134 == &dword_0 + 2)
      {
        v135 = &off_43638;
      }

      v320[2] = v135;
      v136 = [NSDictionary dictionaryWithObjects:v320 forKeys:v319 count:3];
      [v124 setProperties:v136];

      v317 = @"vpn-status";
      v137 = [v120 statusText];
      v318 = v137;
      v138 = [NSDictionary dictionaryWithObjects:&v318 forKeys:&v317 count:1];
      [v124 setUserInfo:v138];

      [v124 setConfirmationAction:"confirmAirplaneModeDisable:"];
      [v124 setConfirmationCancelAction:"cancelAirplaneModeDisable:"];
      [(VPNController *)self setConnectPersonalSpecifier:v124];
      v139 = [(VPNController *)self connectPersonalSpecifier];
      [v20 addObject:v139];

      v140 = [(VPNController *)self messageForConnection:v120];
      v141 = [(VPNController *)self personalGroupTitleSpecifier];
      v142 = v141;
      if (v140)
      {
        v315 = PSFooterTextGroupKey;
        v316 = v140;
        v143 = [NSDictionary dictionaryWithObjects:&v316 forKeys:&v315 count:1];
        [v142 setProperties:v143];
      }

      else
      {
        [v141 removePropertyForKey:PSFooterTextGroupKey];
      }

      v57 = v243;

      v107 = v262;
    }

    v144 = objc_alloc_init(NSMutableArray);
    [(VPNController *)self setCurrentPersonalVPNSpecifiers:v144];

    v145 = [(VPNController *)self currentPersonalVPNSpecifiers];
    v146 = +[PSSpecifier emptyGroupSpecifier];
    [v145 addObject:v146];

    v147 = [(VPNController *)self currentPersonalVPNSpecifiers];
    [(VPNController *)self addListForGrade:1 toSpecifiers:v147];

    v148 = [(VPNController *)self currentPersonalVPNSpecifiers];
    [v20 addObjectsFromArray:v148];
  }

  if (v107)
  {
    v149 = [NSBundle bundleForClass:objc_opt_class()];
    v150 = [v149 localizedStringForKey:@"APP_RELAY_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v151 = [PSSpecifier groupSpecifierWithName:v150];
    [v20 addObject:v151];

    [v3 vpnServicesForCurrentSetWithGrade:8];
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    obj = v283 = 0u;
    v263 = [obj countByEnumeratingWithState:&v280 objects:v314 count:16];
    if (v263)
    {
      v258 = PSSetupCustomClassKey;
      v260 = *v281;
      v256 = PSCellClassKey;
      v253 = PSDetailControllerClassKey;
      do
      {
        for (m = 0; m != v263; m = m + 1)
        {
          if (*v281 != v260)
          {
            objc_enumerationMutation(obj);
          }

          v153 = *(*(&v280 + 1) + 8 * m);
          v154 = +[VPNConnectionStore sharedInstance];
          v155 = [v154 connectionWithServiceID:v153 withGrade:8];

          v156 = +[VPNConnectionStore sharedInstance];
          v157 = [v156 isProfileBacked:v153];

          v158 = [v155 displayName];
          v159 = [PSSpecifier preferenceSpecifierNamed:v158 target:v271 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          v313[0] = @"VPNSetupListController";
          v312[0] = v258;
          v312[1] = v256;
          v160 = objc_opt_class();
          v312[2] = v253;
          v313[1] = v160;
          v313[2] = @"VPNSetupListController";
          v161 = [NSDictionary dictionaryWithObjects:v313 forKeys:v312 count:3];
          [v159 setProperties:v161];

          v310[0] = @"vpn-service-id";
          v268 = [v155 serviceID];
          v311[0] = v268;
          v311[1] = &off_43638;
          v310[1] = @"vpn-user-created";
          v310[2] = @"vpn-organization";
          v162 = [v155 serviceID];
          v163 = [v270 organizationForServiceID:v162];
          v311[2] = v163;
          v310[3] = @"vpn-status";
          v164 = [v155 statusText];
          v311[3] = v164;
          v310[4] = @"vpn-status-value";
          v165 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v155 status]);
          v311[4] = v165;
          v311[5] = &off_43668;
          v310[5] = @"service-grade";
          v310[6] = @"overview-mode";
          v311[6] = &off_43650;
          v310[7] = @"vpn-profile-backed";
          v166 = [NSNumber numberWithBool:v157];
          v311[7] = v166;
          v310[8] = @"vpn-alert";
          v167 = [v155 alertText];
          v311[8] = v167;
          v168 = [NSDictionary dictionaryWithObjects:v311 forKeys:v310 count:9];
          [v159 setUserInfo:v168];

          [v255 addObject:v159];
        }

        v263 = [obj countByEnumeratingWithState:&v280 objects:v314 count:16];
      }

      while (v263);
    }

    v3 = v270;
    self = v271;
    v20 = v255;
    v57 = v243;
  }

  v169 = v245;
  if (v244)
  {
    v170 = [(VPNController *)self appGroupTitleSpecifier];

    if (!v170)
    {
      v171 = [NSBundle bundleForClass:objc_opt_class()];
      v172 = [v171 localizedStringForKey:@"APP_VPN_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
      v173 = [PSSpecifier groupSpecifierWithName:v172];
      [(VPNController *)self setAppGroupTitleSpecifier:v173];
    }

    v174 = [(VPNController *)self appGroupTitleSpecifier];
    [v20 addObject:v174];

    [(VPNController *)self setCurrentAppVPNSpecifiers:0];
    [v3 vpnServicesForCurrentSetWithGrade:2];
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v248 = v279 = 0u;
    v257 = [v248 countByEnumeratingWithState:&v276 objects:v309 count:16];
    if (v257)
    {
      obja = PSSetupCustomClassKey;
      v254 = *v277;
      v249 = PSDetailControllerClassKey;
      v250 = PSCellClassKey;
      do
      {
        for (n = 0; n != v257; n = n + 1)
        {
          if (*v277 != v254)
          {
            objc_enumerationMutation(v248);
          }

          v176 = *(*(&v276 + 1) + 8 * n);
          v177 = +[VPNConnectionStore sharedInstance];
          v178 = [v177 connectionWithServiceID:v176 withGrade:2];

          v179 = +[VPNConnectionStore sharedInstance];
          v269 = [v179 isProfileBacked:v176];

          v180 = [v178 displayName];
          v181 = [PSSpecifier preferenceSpecifierNamed:v180 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          v308[0] = @"VPNSetupListController";
          v307[0] = obja;
          v307[1] = v250;
          v182 = objc_opt_class();
          v307[2] = v249;
          v308[1] = v182;
          v308[2] = @"VPNSetupListController";
          v183 = [NSDictionary dictionaryWithObjects:v308 forKeys:v307 count:3];
          [v181 setProperties:v183];

          v305[0] = @"vpn-service-id";
          v264 = [v178 serviceID];
          v306[0] = v264;
          v305[1] = @"vpn-user-created";
          v261 = [NSNumber numberWithInteger:0];
          v306[1] = v261;
          v305[2] = @"vpn-organization";
          v259 = [v178 serviceID];
          v184 = [v3 organizationForServiceID:v259];
          v306[2] = v184;
          v305[3] = @"vpn-status";
          v185 = [v178 statusText];
          v306[3] = v185;
          v305[4] = @"vpn-status-value";
          v186 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v178 status]);
          v306[4] = v186;
          v305[5] = @"service-grade";
          v187 = [NSNumber numberWithInteger:2];
          v306[5] = v187;
          v305[6] = @"overview-mode";
          v188 = [NSNumber numberWithBool:1];
          v306[6] = v188;
          v305[7] = @"vpn-profile-backed";
          v189 = [NSNumber numberWithBool:v269];
          v306[7] = v189;
          v190 = [NSDictionary dictionaryWithObjects:v306 forKeys:v305 count:8];
          [v181 setUserInfo:v190];

          self = v271;
          v191 = [(VPNController *)v271 currentAppVPNSpecifiers];

          if (!v191)
          {
            v192 = objc_alloc_init(NSMutableArray);
            [(VPNController *)v271 setCurrentAppVPNSpecifiers:v192];
          }

          v193 = [(VPNController *)v271 currentAppVPNSpecifiers];
          [v193 addObject:v181];

          v3 = v270;
        }

        v257 = [v248 countByEnumeratingWithState:&v276 objects:v309 count:16];
      }

      while (v257);
    }

    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v194 = [(VPNController *)self currentAppVPNSpecifiers];
    v195 = [v194 countByEnumeratingWithState:&v272 objects:v304 count:16];
    v169 = v245;
    if (v195)
    {
      v196 = v195;
      v197 = *v273;
      do
      {
        for (ii = 0; ii != v196; ii = ii + 1)
        {
          if (*v273 != v197)
          {
            objc_enumerationMutation(v194);
          }

          [v255 addObject:*(*(&v272 + 1) + 8 * ii)];
        }

        v196 = [v194 countByEnumeratingWithState:&v272 objects:v304 count:16];
      }

      while (v196);
    }

    v57 = v243;
  }

  if ([(VPNController *)self shouldHideAddVPNButton])
  {
    if (v244 | v57 | v169)
    {
      goto LABEL_107;
    }

    v26 = +[PSSpecifier emptyGroupSpecifier];
    v302 = PSFooterTextGroupKey;
    v199 = [NSBundle bundleForClass:objc_opt_class()];
    v200 = [v199 localizedStringForKey:@"VPN_RESTRICTED" value:&stru_411E8 table:@"MobileVPN"];
    v303 = v200;
    v201 = [NSDictionary dictionaryWithObjects:&v303 forKeys:&v302 count:1];
    [v26 setProperties:v201];

    [v255 addObject:v26];
  }

  else
  {
    v202 = [NSBundle bundleForClass:objc_opt_class()];
    v203 = [v202 localizedStringForKey:@"PRIVACY_BLURB" value:&stru_411E8 table:@"MobileVPN"];
    v204 = [NSBundle bundleForClass:objc_opt_class()];
    v205 = [v204 localizedStringForKey:@"PRIVACY_LINK" value:&stru_411E8 table:@"MobileVPN"];
    v206 = [v203 stringByAppendingString:v205];

    v207 = +[PSSpecifier emptyGroupSpecifier];
    [(VPNController *)v271 setPrivacyLinkSpecifier:v207];

    v208 = [(VPNController *)v271 privacyLinkSpecifier];
    v300[0] = PSFooterCellClassGroupKey;
    v209 = objc_opt_class();
    v210 = NSStringFromClass(v209);
    v301[0] = v210;
    v301[1] = v206;
    v300[1] = PSFooterHyperlinkViewTitleKey;
    v300[2] = PSFooterHyperlinkViewLinkRangeKey;
    v211 = [NSBundle bundleForClass:objc_opt_class()];
    v212 = [v211 localizedStringForKey:@"PRIVACY_LINK" value:&stru_411E8 table:@"MobileVPN"];
    v336.location = [v206 rangeOfString:v212];
    v213 = NSStringFromRange(v336);
    v301[2] = v213;
    v300[3] = PSFooterHyperlinkViewTargetKey;
    v214 = [NSValue valueWithNonretainedObject:v271];
    v301[3] = v214;
    v300[4] = PSFooterHyperlinkViewActionKey;
    v215 = NSStringFromSelector("privacyLinkAction");
    v301[4] = v215;
    v216 = [NSDictionary dictionaryWithObjects:v301 forKeys:v300 count:5];
    [v208 setProperties:v216];

    v26 = v206;
    self = v271;

    v3 = v270;
    v217 = [(VPNController *)v271 privacyLinkSpecifier];
    [v255 addObject:v217];

    v218 = [NSBundle bundleForClass:objc_opt_class()];
    v219 = [v218 localizedStringForKey:@"OTHER" value:&stru_411E8 table:@"MobileVPN"];
    v220 = [PSSpecifier preferenceSpecifierNamed:v219 target:v271 set:0 get:0 detail:objc_opt_class() cell:13 edit:0];
    [(VPNController *)v271 setAddVPNButtonSpecifier:v220];

    v221 = [(VPNController *)v271 addVPNButtonSpecifier];
    v298[0] = @"service-grade";
    v222 = [NSNumber numberWithInteger:0];
    v299[0] = v222;
    v298[1] = @"overview-mode";
    v223 = [NSNumber numberWithBool:0];
    v299[1] = v223;
    v224 = [NSDictionary dictionaryWithObjects:v299 forKeys:v298 count:2];
    [v221 setUserInfo:v224];

    v225 = [(VPNController *)v271 addVPNButtonSpecifier];
    v296 = PSSetupCustomClassKey;
    v297 = @"VPNSetupListController";
    v226 = [NSDictionary dictionaryWithObjects:&v297 forKeys:&v296 count:1];
    [v225 setProperties:v226];

    v227 = [(VPNController *)v271 addVPNButtonSpecifier];
    [v227 setButtonAction:"addVPNConfiguration:"];

    v228 = [(VPNController *)v271 addVPNButtonSpecifier];
    [v255 addObject:v228];
  }

LABEL_106:

LABEL_107:
  if (v246)
  {
    v229 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v230 = [v229 objectForKey:@"vpn-show-dns"];

    if (v230)
    {
      v231 = +[PSSpecifier emptyGroupSpecifier];
      [v255 addObject:v231];
      v232 = [NSBundle bundleForClass:objc_opt_class()];
      v233 = [v232 localizedStringForKey:@"DNS_SETTINGS" value:&stru_411E8 table:@"MobileVPN"];
      v234 = [PSSpecifier preferenceSpecifierNamed:v233 target:self set:0 get:"getDNSSummary:" detail:objc_opt_class() cell:2 edit:0];

      [v255 addObject:v234];
    }
  }

  v235 = *&self->PSListController_opaque[v247];
  *&self->PSListController_opaque[v247] = v255;

  v19 = *&self->PSListController_opaque[v247];
LABEL_111:
  v236 = v19;

  return v19;
}

- (id)getDNSSummary:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18710;
  v15 = sub_18720;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v4 localizedStringForKey:@"AUTOMATIC_DNS" value:&stru_411E8 table:@"MobileVPN"];

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v5 = +[VPNConnectionStore sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_18728;
  v8[3] = &unk_41008;
  v8[4] = v9;
  v8[5] = &v11;
  [v5 iterateDNSServicesWithBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)dnsStatusForSpecifier:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18710;
  v15 = sub_18720;
  v16 = 0;
  v4 = +[VPNConnectionStore sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_189BC;
  v8[3] = &unk_40AD0;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 iterateDNSServicesWithBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VPNController *)self indexForIndexPath:v6];
  v36.receiver = self;
  v36.super_class = VPNController;
  v9 = [(VPNController *)&v36 tableView:v7 cellForRowAtIndexPath:v6];

  v10 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v11 = [v10 userInfo];
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = [(VPNController *)self connectEnterpriseSpecifier];

  if (v10 == v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(VPNController *)self connectPersonalSpecifier];

    if (v10 != v13)
    {
      goto LABEL_7;
    }

    v14 = 1;
  }

  v15 = +[VPNConnectionStore sharedInstance];
  v16 = [v15 currentConnectionWithGrade:v14];

  v17 = [v16 statusText];
  v18 = [v9 detailTextLabel];
  [v18 setText:v17];

LABEL_7:
  v19 = [(VPNController *)self addVPNButtonSpecifier];
  if (v10 != v19)
  {
    v20 = [(VPNController *)self connectEnterpriseSpecifier];
    v21 = v20;
    if (v10 != v20)
    {
      v22 = [(VPNController *)self connectPersonalSpecifier];

      if (v10 != v22)
      {
        [v9 setAccessoryType:4];
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v23 = [v10 propertyForKey:PSCellClassKey];
  v24 = objc_opt_class();

  if (v23 == v24 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v25 = [v11 objectForKey:@"vpn-service-id"];
    v26 = +[VPNConnectionStore sharedInstance];
    v27 = [v11 objectForKey:@"service-grade"];
    v28 = [v26 isActiveVPNID:v25 withGrade:{objc_msgSend(v27, "unsignedIntegerValue")}];

    [v9 setChecked:v28];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v11 objectForKey:@"vpn-organization"];
    [v9 setSubtitle:v29];
  }

  if (objc_opt_respondsToSelector())
  {
    v30 = [v11 objectForKey:@"vpn-alert"];
    [v9 setAlert:v30];
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [v11 objectForKey:@"vpn-status"];
    [v9 setVpnPrimaryTableCellStatus:v31];
  }

  if (objc_opt_respondsToSelector())
  {
    v32 = [v11 objectForKey:@"vpn-status-value"];
    if (v32)
    {
      v33 = [v11 objectForKey:@"vpn-status-value"];
      v34 = [v33 unsignedIntegerValue] == &dword_4 + 1;
    }

    else
    {
      v34 = 0;
    }

    [v9 setDisabled:v34];
  }

LABEL_27:

  return v9;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = [(VPNController *)self indexForIndexPath:a4];
  v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
  v6 = objc_alloc_init(*&v8[OBJC_IVAR___PSSpecifier_detailControllerClass]);
  if (!v6)
  {
    v6 = objc_alloc_init(PSDetailController);
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  [v6 setRootController:WeakRetained];

  [v6 setParentController:self];
  [v6 setSpecifier:v8];
  [(VPNController *)self showController:v6];
}

- (void)changeActiveVPN:(id)a3
{
  v10 = [a3 userInfo];
  v4 = [v10 objectForKey:@"vpn-service-id"];
  v5 = [v10 objectForKey:@"service-grade"];
  v6 = [v5 unsignedIntegerValue];

  v7 = +[VPNConnectionStore sharedInstance];
  v8 = [v7 isActiveVPNID:v4 withGrade:v6];

  if ((v8 & 1) == 0)
  {
    v9 = +[VPNConnectionStore sharedInstance];
    [v9 setActiveVPNID:v4 withGrade:v6];
  }

  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] selectRowAtIndexPath:0 animated:0 scrollPosition:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VPNController *)self indexForIndexPath:v7];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSCellClassKey];
  v11 = objc_opt_class();

  if (v10 == v11)
  {
    v14 = [v9 userInfo];
    v12 = v14;
    if (v14)
    {
      v15 = [v14 objectForKey:@"vpn-service-id"];

      if (v15)
      {
        [(VPNController *)self changeActiveVPN:v9];
      }
    }

    goto LABEL_8;
  }

  v12 = [(VPNController *)self connectEnterpriseSpecifier];
  if (v9 == v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = [(VPNController *)self connectPersonalSpecifier];

  if (v9 != v13)
  {
    v16.receiver = self;
    v16.super_class = VPNController;
    [(VPNController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7];
  }

LABEL_9:
}

- (void)confirmAirplaneModeDisable:(id)a3
{
  v7 = a3;
  +[VPNBundleController disableAirplaneMode];
  v4 = [(VPNController *)self connectPersonalSpecifier];

  if (v4 == v7)
  {
    [(VPNController *)self setPersonalVPNActive:1 specifier:0];
  }

  else
  {
    v5 = [(VPNController *)self connectEnterpriseSpecifier];

    v6 = v7;
    if (v5 != v7)
    {
      goto LABEL_6;
    }

    [(VPNController *)self setEnterpriseVPNActive:1 specifier:0];
  }

  v6 = v7;
LABEL_6:
}

- (void)handleURL:(id)a3
{
  v7 = a3;
  v3 = [v7 objectForKeyedSubscript:@"path"];
  if ([v3 isEqualToString:@"LocalAuthenticationTrigger"])
  {
    v4 = [v7 objectForKeyedSubscript:@"configID"];
    v5 = [v7 objectForKeyedSubscript:@"sender"];
    v6 = +[VPNConnectionStore sharedInstance];
    [v6 triggerLocalAuthenticationForConfigurationIdentifier:v4 requestedByApp:v5];
  }
}

- (void)privacyLinkAction
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.vpn"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = VPNController;
  [(VPNController *)&v13 viewDidLoad];
  v3 = +[VPNBundleController navigationTitle];
  [(VPNController *)self setTitle:v3];

  v4 = [(VPNController *)self table];
  v5 = objc_opt_class();
  v6 = +[VPNToggleCell cellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [(VPNController *)self table];
  v8 = objc_opt_class();
  v9 = +[VPNTableCell cellReuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(VPNController *)self table];
  v11 = objc_opt_class();
  v12 = +[VPNPrimaryTableCell cellReuseIdentifier];
  [v10 registerClass:v11 forCellReuseIdentifier:v12];
}

@end