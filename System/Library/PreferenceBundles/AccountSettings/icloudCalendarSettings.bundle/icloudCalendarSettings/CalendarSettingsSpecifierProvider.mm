@interface CalendarSettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (CalendarSettingsSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_dataclassState:(id)a3;
- (id)account;
- (id)accountForServiceType:(id)a3 primaryAltDSID:(id)a4 primaryDSID:(id)a5;
- (id)accountsForAccountManager:(id)a3;
- (id)serviceOwnersManager;
- (void)onCalendarTapWithDeeplink:(id)a3;
@end

@implementation CalendarSettingsSpecifierProvider

- (CalendarSettingsSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalendarSettingsSpecifierProvider;
  v9 = [(CalendarSettingsSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_presenter, v8);
  }

  return v10;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (NSArray)specifiers
{
  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    if (!self->_accountManager)
    {
      v5 = [AIDAAccountManager alloc];
      v6 = +[ACAccountStore defaultStore];
      v7 = [v5 initWithAccountStore:v6];
      accountManager = self->_accountManager;
      self->_accountManager = v7;

      [(AIDAAccountManager *)self->_accountManager setDelegate:self];
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = [(AIDAAccountManager *)self->_accountManager accounts];
    v11 = [v10 objectForKeyedSubscript:AIDAServiceTypeCloud];

    v12 = ACAccountDataclassCalendars;
    v13 = [PSSpecifier acui_linkListCellSpecifierForDataclass:ACAccountDataclassCalendars account:v11 target:self set:0 get:"_dataclassState:" detail:0];
    iCloudCalendarSettingSpecifier = self->_iCloudCalendarSettingSpecifier;
    self->_iCloudCalendarSettingSpecifier = v13;

    v26 = ACUIAccountKey;
    v27 = v11;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    [(PSSpecifier *)self->_iCloudCalendarSettingSpecifier setUserInfo:v16];
    [(PSSpecifier *)self->_iCloudCalendarSettingSpecifier setIdentifier:v12];
    [(PSSpecifier *)self->_iCloudCalendarSettingSpecifier setDetailControllerClass:objc_opt_class()];
    v17 = self->_iCloudCalendarSettingSpecifier;
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CALENDAR_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
    [(PSSpecifier *)v17 setName:v19];

    [v9 addObject:self->_iCloudCalendarSettingSpecifier];
    v20 = [v9 copy];
    v21 = self->_specifiers;
    self->_specifiers = v20;

    v22 = _CalLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "loading calendar specifier", v25, 2u);
    }

    v23 = _CalLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_B2E0(p_specifiers, v23);
    }

    specifiers = *p_specifiers;
  }

  return specifiers;
}

- (id)_dataclassState:(id)a3
{
  v3 = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [v3 objectForKeyedSubscript:AIDAServiceTypeCloud];

  LODWORD(v3) = [v4 isEnabledForDataclass:ACAccountDataclassCalendars];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_14AB8 table:@"calendarSettings"];

  return v8;
}

- (id)serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = [AIDAServiceOwnersManager alloc];
    v5 = +[ACAccountStore defaultStore];
    v6 = [v4 initWithAccountStore:v5];
    v7 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v6;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  v8 = serviceOwnersManager;

  return v8;
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v6 = AIDAServiceTypeCloud;
  v7 = [v5 accountForService:AIDAServiceTypeCloud];

  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:v6];
    v8 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v9 = [v8 altDSIDForAccount:v7 service:v6];

    v10 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v11 = [v10 DSIDForAccount:v7 service:v6];

    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = AIDAServiceTypeGameCenter;
      v14 = [(CalendarSettingsSpecifierProvider *)self accountForServiceType:AIDAServiceTypeGameCenter primaryAltDSID:v9 primaryDSID:v11];
      if (v14)
      {
        [v4 setObject:v14 forKeyedSubscript:v13];
      }
    }
  }

  v15 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v16 = AIDAServiceTypeStore;
  v17 = [v15 accountForService:AIDAServiceTypeStore];

  if (v17)
  {
    [v4 setObject:v17 forKeyedSubscript:v16];
  }

  return v4;
}

- (id)accountForServiceType:(id)a3 primaryAltDSID:(id)a4 primaryDSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v12 = [v11 accountForService:v8];

  if (v12)
  {
    v13 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v14 = [v13 altDSIDForAccount:v12 service:v8];

    if (v14 && [v14 isEqualToString:v9])
    {
      v15 = v12;
    }

    else
    {
      v16 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
      v17 = [v16 DSIDForAccount:v12 service:v8];

      if (v17 && [v17 isEqualToString:v10])
      {
        v15 = v12;
      }

      else
      {

        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)onCalendarTapWithDeeplink:(id)a3
{
  v4 = [(CalendarSettingsSpecifierProvider *)self account];
  v5 = v4;
  if (v4 && [v4 isProvisionedForDataclass:ACAccountDataclassCalendars])
  {
    v6 = [(CalendarSettingsSpecifierProvider *)self specifiers];
    v7 = objc_alloc_init(CalendarSettingsController);
    [(CalendarSettingsController *)v7 setSpecifier:self->_iCloudCalendarSettingSpecifier];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_loadWeakRetained(&self->_presenter);
      [v10 showController:v7];
    }

    else
    {
      v10 = _CalLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_B35C(v10);
      }
    }
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end