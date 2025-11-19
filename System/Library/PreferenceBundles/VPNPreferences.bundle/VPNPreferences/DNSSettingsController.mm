@interface DNSSettingsController
- (DNSSettingsController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)disableAllDNSSettings;
- (void)showDNSSettingsPrivacyPage;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleDNSSettingsForSpecifier:(id)a3;
@end

@implementation DNSSettingsController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = DNSSettingsController;
  [(DNSSettingsController *)&v5 dealloc];
}

- (DNSSettingsController)init
{
  v6.receiver = self;
  v6.super_class = DNSSettingsController;
  v2 = [(DNSSettingsController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"someStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"someConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  [(DNSSettingsController *)self setCurrentDNSSettingsSpecifiers:v4];

  v5 = objc_alloc_init(NSMutableArray);
  [(DNSSettingsController *)self setPerAppSpecifiers:v5];

  [(DNSSettingsController *)self setHasDNSProxyProhibitDisablement:0];
  [(DNSSettingsController *)self setHasDNSSettingsProhibitDisablement:0];
  v6 = objc_alloc_init(NSMutableArray);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v7 = +[VPNConnectionStore sharedInstance];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_3340;
  v33[3] = &unk_40A80;
  v33[4] = self;
  v35 = &v41;
  v8 = v6;
  v34 = v8;
  v36 = &v37;
  [v7 iterateDNSServicesWithBlock:v33];

  v9 = +[PSSpecifier emptyGroupSpecifier];
  v45 = PSFooterTextGroupKey;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DNS_SETTINGS_FOOTER" value:&stru_411E8 table:@"MobileVPN"];
  v46 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [v9 setProperties:v12];

  [v3 addObject:v9];
  v13 = [(DNSSettingsController *)self perAppSpecifiers];
  LOBYTE(v11) = [v13 count] == 0;

  if ((v11 & 1) == 0)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"APP_DNS_PROXY_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v16 = [PSSpecifier groupSpecifierWithName:v15];
    [v3 addObject:v16];

    v17 = [(DNSSettingsController *)self perAppSpecifiers];
    [v3 addObjectsFromArray:v17];
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"DNS_PROXY_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
  v20 = [PSSpecifier groupSpecifierWithName:v19];
  [v3 addObject:v20];

  if (*(v38 + 24) == 1)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"AUTOMATIC_DNS" value:&stru_411E8 table:@"MobileVPN"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:3 edit:0];

    if (*(v42 + 24))
    {
      v24 = &off_43530;
    }

    else
    {
      v24 = &off_43518;
    }

    [v23 setProperty:v24 forKey:PSAccessoryKey];
    [v23 setProperty:&off_43500 forKey:PSEnabledKey];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    [v23 setProperty:@"Ethernet" forKey:PSBundleIconPathKey];
    [v23 setupIconImageWithBundle:v25];
    [(DNSSettingsController *)self setAutomaticDNSSettingsSpecifier:v23];
    v26 = [(DNSSettingsController *)self automaticDNSSettingsSpecifier];
    [v3 addObject:v26];
  }

  v27 = [(DNSSettingsController *)self currentDNSSettingsSpecifiers];
  [v3 addObjectsFromArray:v27];

  v28 = OBJC_IVAR___PSListController__specifiers;
  v29 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v30 = v3;

  v31 = *&self->PSListController_opaque[v28];
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v31;
}

- (void)showDNSSettingsPrivacyPage
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"https://www.apple.com/privacy"];
  [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)disableAllDNSSettings
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = +[VPNConnectionStore sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3C68;
  v4[3] = &unk_40AA8;
  v4[4] = &v5;
  [v3 iterateDNSServicesWithBlock:1 iterBlock:v4];

  if (*(v6 + 24) == 1)
  {
    [(DNSSettingsController *)self reloadSpecifiers];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)toggleDNSSettingsForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"vpn-service-id"];
  v6 = [v4 propertyForKey:@"service-grade"];
  v7 = [v6 unsignedIntegerValue];

  v8 = +[VPNConnectionStore sharedInstance];
  v9 = [v8 optionsForServiceID:v5 withGrade:v7];

  v10 = [v9 objectForKeyedSubscript:@"dnsProhibitDisablement"];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v12 = +[VPNConnectionStore sharedInstance];
    v13 = [v12 isEnabledWithServiceID:v5 withGrade:v7];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v14 = +[VPNConnectionStore sharedInstance];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_3F68;
    v21 = &unk_40AD0;
    v15 = v5;
    v22 = v15;
    v23 = &v24;
    [v14 iterateDNSServicesWithBlock:1 iterBlock:&v18];

    if (v13)
    {
      if (*(v25 + 24) == 1)
      {
        v16 = [VPNConnectionStore sharedInstance:v18];
        [v16 enable:0 serviceID:v15 withGrade:v7];
LABEL_11:

        [(DNSSettingsController *)self reloadSpecifiers];
      }

LABEL_12:

      _Block_object_dispose(&v24, 8);
      goto LABEL_13;
    }

    if (v7 == (&dword_4 + 1))
    {
      v17 = [(DNSSettingsController *)self hasDNSSettingsProhibitDisablement:v18];
    }

    else
    {
      if (v7 != &dword_4)
      {
        goto LABEL_10;
      }

      v17 = [(DNSSettingsController *)self hasDNSProxyProhibitDisablement:v18];
    }

    if (v17)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16 = [VPNConnectionStore sharedInstance:v18];
    [v16 enable:1 serviceID:v15 withGrade:v7];
    goto LABEL_11;
  }

LABEL_13:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DNSSettingsController *)self indexForIndexPath:v7];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [(DNSSettingsController *)self automaticDNSSettingsSpecifier];

  if (v9 == v10)
  {
    [(DNSSettingsController *)self disableAllDNSSettings];
    v16 = self;
    v13 = &v16;
  }

  else
  {
    v11 = [(DNSSettingsController *)self currentDNSSettingsSpecifiers];
    v12 = [v11 containsObject:v9];

    if (v12)
    {
      [(DNSSettingsController *)self toggleDNSSettingsForSpecifier:v9];
      v15 = self;
      v13 = &v15;
    }

    else
    {
      v14 = self;
      v13 = &v14;
    }
  }

  v13[1] = DNSSettingsController;
  objc_msgSendSuper2(v13, "tableView:didSelectRowAtIndexPath:", v6, v7, v14);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v22.receiver = self;
  v22.super_class = DNSSettingsController;
  v6 = a4;
  v7 = [(DNSSettingsController *)&v22 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(DNSSettingsController *)self indexForIndexPath:v6, v22.receiver, v22.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [(DNSSettingsController *)self automaticDNSSettingsSpecifier];

  if (v9 != v10)
  {
    v11 = [v9 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"vpn-organization"];

    if ([v12 length])
    {
      v13 = [v7 detailTextLabel];
      [v13 setText:v12];
      v14 = +[UIColor secondaryLabelColor];
      [v13 setTextColor:v14];
    }
  }

  v15 = [v9 userInfo];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 objectForKey:@"service-grade"];
    v18 = [v17 unsignedIntegerValue];

    if (v18 == &dword_4 + 1)
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [v16 objectForKey:@"vpn-organization"];
        [v7 setSubtitle:v19];
      }

      if (objc_opt_respondsToSelector())
      {
        v20 = [v16 objectForKey:@"vpn-status"];
        [v7 setVpnPrimaryTableCellStatus:v20];
      }
    }
  }

  return v7;
}

@end