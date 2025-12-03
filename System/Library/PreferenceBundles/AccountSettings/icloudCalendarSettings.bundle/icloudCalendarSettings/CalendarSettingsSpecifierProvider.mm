@interface CalendarSettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (CalendarSettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_dataclassState:(id)state;
- (id)account;
- (id)accountForServiceType:(id)type primaryAltDSID:(id)d primaryDSID:(id)iD;
- (id)accountsForAccountManager:(id)manager;
- (id)serviceOwnersManager;
- (void)onCalendarTapWithDeeplink:(id)deeplink;
@end

@implementation CalendarSettingsSpecifierProvider

- (CalendarSettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = CalendarSettingsSpecifierProvider;
  v9 = [(CalendarSettingsSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_presenter, presenterCopy);
  }

  return v10;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

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
    accounts = [(AIDAAccountManager *)self->_accountManager accounts];
    v11 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

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

- (id)_dataclassState:(id)state
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  LODWORD(accounts) = [v4 isEnabledForDataclass:ACAccountDataclassCalendars];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (accounts)
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

- (id)accountsForAccountManager:(id)manager
{
  v4 = objc_alloc_init(NSMutableDictionary);
  serviceOwnersManager = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v6 = AIDAServiceTypeCloud;
  v7 = [serviceOwnersManager accountForService:AIDAServiceTypeCloud];

  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:v6];
    serviceOwnersManager2 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v9 = [serviceOwnersManager2 altDSIDForAccount:v7 service:v6];

    serviceOwnersManager3 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v11 = [serviceOwnersManager3 DSIDForAccount:v7 service:v6];

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

  serviceOwnersManager4 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v16 = AIDAServiceTypeStore;
  v17 = [serviceOwnersManager4 accountForService:AIDAServiceTypeStore];

  if (v17)
  {
    [v4 setObject:v17 forKeyedSubscript:v16];
  }

  return v4;
}

- (id)accountForServiceType:(id)type primaryAltDSID:(id)d primaryDSID:(id)iD
{
  typeCopy = type;
  dCopy = d;
  iDCopy = iD;
  serviceOwnersManager = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
  v12 = [serviceOwnersManager accountForService:typeCopy];

  if (v12)
  {
    serviceOwnersManager2 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
    v14 = [serviceOwnersManager2 altDSIDForAccount:v12 service:typeCopy];

    if (v14 && [v14 isEqualToString:dCopy])
    {
      v15 = v12;
    }

    else
    {
      serviceOwnersManager3 = [(CalendarSettingsSpecifierProvider *)self serviceOwnersManager];
      v17 = [serviceOwnersManager3 DSIDForAccount:v12 service:typeCopy];

      if (v17 && [v17 isEqualToString:iDCopy])
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

- (void)onCalendarTapWithDeeplink:(id)deeplink
{
  account = [(CalendarSettingsSpecifierProvider *)self account];
  v5 = account;
  if (account && [account isProvisionedForDataclass:ACAccountDataclassCalendars])
  {
    specifiers = [(CalendarSettingsSpecifierProvider *)self specifiers];
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