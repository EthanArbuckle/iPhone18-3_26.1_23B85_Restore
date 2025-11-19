@interface DNSProxySetupListController
- (DNSProxySetupListController)init;
- (id)bundle;
- (id)connection;
- (id)getDescriptionForApp:(id)a3;
- (id)specifiers;
- (id)statusForConnection:(id)a3;
- (void)appWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setStateForServiceID:(id)a3;
@end

@implementation DNSProxySetupListController

- (void)appWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v5 objectForKeyedSubscript:@"vpn-service-id"];
  v8 = [v6 connectionWithServiceID:v7 withGrade:{-[DNSProxySetupListController vpnGrade](self, "vpnGrade")}];
  objc_initWeak(&location, v8);

  v9 = objc_loadWeakRetained(&location);
  sub_4760(v9);

  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v6.receiver = self;
  v6.super_class = DNSProxySetupListController;
  [(DNSProxySetupListController *)&v6 dealloc];
}

- (DNSProxySetupListController)init
{
  v7.receiver = self;
  v7.super_class = DNSProxySetupListController;
  v2 = [(DNSProxySetupListController *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"vpnStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"vpnConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"appWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)setStateForServiceID:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  [(DNSProxySetupListController *)self setServiceID:v5];

  v6 = OBJC_IVAR___PSViewController__specifier;
  v7 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v8 = [v7 objectForKey:@"service-grade"];
  -[DNSProxySetupListController setVpnGrade:](self, "setVpnGrade:", [v8 unsignedIntegerValue]);

  v9 = +[VPNConnectionStore sharedInstance];
  v15 = [v9 optionsForServiceID:v4 withGrade:{-[DNSProxySetupListController vpnGrade](self, "vpnGrade")}];

  if (v15)
  {
    v10 = [v15 objectForKey:@"dispName"];
    [(DNSProxySetupListController *)self setDisplayName:v10];

    v11 = [v15 objectForKey:@"VPNApplicationName"];
    [(DNSProxySetupListController *)self setAppName:v11];

    v12 = [v15 objectForKey:@"VPNIncludedBundleIDs"];
    [(DNSProxySetupListController *)self setIncludedBundleIDs:v12];

    v13 = [*&self->PSListController_opaque[v6] userInfo];
    v14 = [v13 objectForKey:@"vpn-organization"];
    [(DNSProxySetupListController *)self setOrganization:v14];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = DNSProxySetupListController;
  [(DNSProxySetupListController *)&v5 loadView];
  v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v4 = [v3 objectForKey:@"vpn-service-id"];

  [(DNSProxySetupListController *)self setStateForServiceID:v4];
}

- (id)connection
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [(DNSProxySetupListController *)self serviceID];
  v5 = [v3 connectionWithServiceID:v4 withGrade:{-[DNSProxySetupListController vpnGrade](self, "vpnGrade")}];

  return v5;
}

- (id)statusForConnection:(id)a3
{
  v3 = [(DNSProxySetupListController *)self connection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 statusText];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"INVALID" value:&stru_411E8 table:@"MobileVPN"];
  }

  return v5;
}

- (id)getDescriptionForApp:(id)a3
{
  v3 = [a3 propertyForKey:@"AppDescription"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (id)specifiers
{
  v2 = self;
  if (*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier])
  {
    v3 = [(DNSProxySetupListController *)self displayName];
    [(DNSProxySetupListController *)v2 setTitle:v3];

    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v5];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"VPN_GRADE" value:&stru_411E8 table:@"MobileVPN"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:v2 set:0 get:"vpnGradeNameForSpecifier:" detail:0 cell:4 edit:0];

    v48 = v8;
    [v4 addObject:v8];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"STATUS" value:&stru_411E8 table:@"MobileVPN"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:v2 set:0 get:"statusForConnection:" detail:0 cell:4 edit:0];

    v12 = v11;
    v54 = v4;
    [v4 addObject:v11];
    v13 = [(DNSProxySetupListController *)v2 includedBundleIDs];
    if (v13)
    {
      v14 = v13;
      v15 = [(DNSProxySetupListController *)v2 includedBundleIDs];
      v16 = [v15 count];

      if (v16)
      {
        v46 = v11;
        v47 = v5;
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"INCLUDED_APPS_TITLE" value:&stru_411E8 table:@"MobileVPN"];
        v19 = [PSSpecifier groupSpecifierWithName:v18];
        [v4 addObject:v19];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = [(DNSProxySetupListController *)v2 includedBundleIDs];
        v20 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        v21 = v2;
        if (v20)
        {
          v22 = v20;
          v23 = *v58;
          v53 = PSIDKey;
          v50 = PSLazyIconLoading;
          v51 = PSLazyIconAppID;
          v49 = PSIconImageKey;
          v24 = &MGGetBoolAnswer_ptr;
          v52 = *v58;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v58 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v57 + 1) + 8 * i);
              v27 = objc_alloc(v24[292]);
              v56 = 0;
              v28 = [v27 initWithBundleIdentifier:v26 allowPlaceholder:0 error:&v56];
              v29 = v56;
              v30 = [v28 localizedName];

              if (v30)
              {
                v31 = v29 == 0;
              }

              else
              {
                v31 = 0;
              }

              if (v31)
              {
                v32 = v22;
                v33 = [PSSpecifier preferenceSpecifierNamed:v30 target:v21 set:0 get:"getDescriptionForApp:" detail:0 cell:4 edit:0];
                v34 = [(DNSProxySetupListController *)v21 includedBundleIDs];
                v35 = [v34 objectForKeyedSubscript:v26];
                [v33 setProperty:v35 forKey:@"AppDescription"];

                [v33 setProperty:v26 forKey:v53];
                if ([UIWebClip bundleIdentifierContainsWebClipIdentifier:v26])
                {
                  v36 = v21;
                  v37 = [UIWebClip webClipIdentifierFromBundleIdentifier:v26];
                  v38 = [UIWebClip webClipWithIdentifier:v37];
                  v39 = +[UIScreen mainScreen];
                  [v39 scale];
                  v40 = [v38 generateIconImageForFormat:0 scale:?];

                  if (v40)
                  {
                    [v33 setProperty:v40 forKey:v49];
                  }

                  v21 = v36;
                  v23 = v52;
                }

                else
                {
                  [v33 setProperty:v26 forKey:v51];
                  v37 = [NSNumber numberWithBool:1];
                  [v33 setProperty:v37 forKey:v50];
                }

                v22 = v32;

                [v54 addObject:v33];
                v24 = &MGGetBoolAnswer_ptr;
              }
            }

            v22 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
          }

          while (v22);
        }

        v2 = v21;
        v12 = v46;
        v5 = v47;
      }
    }

    v41 = OBJC_IVAR___PSListController__specifiers;
    v42 = *&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v54;
    v43 = v54;

    v44 = *&v2->PSListController_opaque[v41];
  }

  else
  {
    [(DNSProxySetupListController *)self settingsNavigationProxyPopWithAnimated:1];
    v44 = 0;
  }

  return v44;
}

@end