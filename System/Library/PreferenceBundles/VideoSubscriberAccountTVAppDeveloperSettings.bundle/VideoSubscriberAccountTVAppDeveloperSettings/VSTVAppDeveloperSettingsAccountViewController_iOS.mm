@interface VSTVAppDeveloperSettingsAccountViewController_iOS
- (VSTVAppDeveloperSettingsAccountViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (id)billingGroupSpecifiers;
- (id)dateGroupSpecifiers;
- (id)deviceGroupSpecifiers;
- (id)groupWithSpecifiers:(id)a3;
- (id)infoGroupSpecifiers;
- (id)refreshGroupSpecifiers;
- (id)sourceIdentifierGroupSpecifiers;
- (id)specifiers;
- (void)refreshAccount;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)viewDidLoad;
@end

@implementation VSTVAppDeveloperSettingsAccountViewController_iOS

- (VSTVAppDeveloperSettingsAccountViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = VSTVAppDeveloperSettingsAccountViewController_iOS;
  v4 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)&v9 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [VSRemoteNotifier alloc];
    v6 = [v5 initWithNotificationName:VSUserAccountsDidChangeNotification];
    remoteNotifier = v4->_remoteNotifier;
    v4->_remoteNotifier = v6;

    [(VSRemoteNotifier *)v4->_remoteNotifier setDelegate:v4];
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VSTVAppDeveloperSettingsAccountViewController_iOS;
  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)&v5 viewDidLoad];
  v3 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifier];
  v4 = [v3 propertyForKey:@"VSTVAppDeveloperSettingsUserAccountKey"];
  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self setAccount:v4];

  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  v4 = v3;
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (!v7)
  {
    v8 = [[VSUserAccountFacade alloc] initWithAccount:v3];
    [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self setFacade:v8];

    v9 = objc_alloc_init(NSMutableArray);
    v10 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self sourceIdentifierGroupSpecifiers];

    if (v10)
    {
      v11 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self sourceIdentifierGroupSpecifiers];
      [v9 addObjectsFromArray:v11];
    }

    v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self dateGroupSpecifiers];

    if (v12)
    {
      v13 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self dateGroupSpecifiers];
      [v9 addObjectsFromArray:v13];
    }

    v14 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self deviceGroupSpecifiers];

    if (v14)
    {
      v15 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self deviceGroupSpecifiers];
      [v9 addObjectsFromArray:v15];
    }

    v16 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self infoGroupSpecifiers];

    if (v16)
    {
      v17 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self infoGroupSpecifiers];
      [v9 addObjectsFromArray:v17];
    }

    v18 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self billingGroupSpecifiers];

    if (v18)
    {
      v19 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self billingGroupSpecifiers];
      [v9 addObjectsFromArray:v19];
    }

    if ([v4 isFromCurrentDevice])
    {
      v20 = [v4 updateURL];

      if (v20)
      {
        v21 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self refreshGroupSpecifiers];
        [v9 addObjectsFromArray:v21];
      }
    }

    v22 = [v9 copy];
    v23 = *&self->PSListController_opaque[v5];
    *&self->PSListController_opaque[v5] = v22;

    v6 = *&self->PSListController_opaque[v5];
  }

  v24 = v6;

  return v6;
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[VSUserAccountManager sharedUserAccountManager];
  v9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  v10 = [v9 sourceIdentifier];
  v11 = [v9 sourceType];
  v12 = [v9 deviceIdentifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2C68;
  v13[3] = &unk_82C0;
  objc_copyWeak(&v14, &location);
  [v8 fetchUserAccountWithSourceIdentifier:v10 sourceType:v11 deviceIdentifier:v12 withCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)refreshAccount
{
  v4 = +[VSUserAccountManager sharedUserAccountManager];
  v3 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  [v4 forceRefreshUserAccount:v3 withCompletion:&stru_8300];
}

- (id)groupWithSpecifiers:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithName:0];
    [v4 addObject:v5];
    [v4 addObjectsFromArray:v3];
    v6 = [v4 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sourceIdentifierGroupSpecifiers
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_SOURCE_IDENTIFIER" value:0 table:0];

  v5 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v6 = [v5 sourceIdentifier];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:v6 details:0 copyable:1];

  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v8];

  return v9;
}

- (id)dateGroupSpecifiers
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_CREATED_ON" value:0 table:0];

  v5 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v6 = [v5 created];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:v6 details:0 copyable:1];

  v8 = +[NSBundle vs_frameworkBundle];
  v9 = [v8 localizedStringForKey:@"TV_APP_DEVELOPER_LAST_MODIFIED" value:0 table:0];

  v10 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v11 = [v10 lastModified];
  v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v9 value:v11 details:0 copyable:1];

  v16[0] = v7;
  v16[1] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:2];
  v14 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v13];

  return v14;
}

- (id)deviceGroupSpecifiers
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_FROM_THIS_DEVICE" value:0 table:0];

  v5 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v6 = [v5 fromThisDevice];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:v6 details:0 copyable:0];

  v8 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v9 = [v8 deviceCategory];
  v10 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:@"Device Genre" value:v9 details:0 copyable:0];

  v14[0] = v7;
  v14[1] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:2];
  v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v11];

  return v12;
}

- (id)infoGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v5 = [v4 identifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = +[NSBundle vs_frameworkBundle];
    v8 = [v7 localizedStringForKey:@"TV_APP_DEVELOPER_IDENTIFIER" value:0 table:0];

    v9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v10 = [v9 identifier];
    v11 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v8 value:v10 details:0 copyable:1];

    [v3 addObject:v11];
  }

  v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v13 = [v12 tvProviderIdentifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = +[NSBundle vs_frameworkBundle];
    v16 = [v15 localizedStringForKey:@"TV_APP_DEVELOPER_TV_PROVIDER_IDENTIFIER" value:0 table:0];

    v17 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v18 = [v17 tvProviderIdentifier];
    v19 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v16 value:v18 details:0 copyable:1];

    [v3 addObject:v19];
  }

  v20 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v21 = [v20 updateURLString];
  v22 = [v21 length];

  if (v22)
  {
    v23 = +[NSBundle vs_frameworkBundle];
    v24 = [v23 localizedStringForKey:@"TV_APP_DEVELOPER_UPDATE_URL" value:0 table:0];

    v25 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v26 = [v25 updateURLString];
    v46 = v26;
    v27 = [NSArray arrayWithObjects:&v46 count:1];

    v28 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v24 value:0 details:v27 copyable:0];
    [v3 addObject:v28];
  }

  v29 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v30 = [v29 authenticationDataString];
  v31 = [v30 length];

  if (v31)
  {
    v32 = +[NSBundle vs_frameworkBundle];
    v33 = [v32 localizedStringForKey:@"TV_APP_DEVELOPER_AUTH_DATA" value:0 table:0];

    v34 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v35 = [v34 authenticationDataString];
    v45 = v35;
    v36 = [NSArray arrayWithObjects:&v45 count:1];

    v37 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v33 value:0 details:v36 copyable:0];
    [v3 addObject:v37];
  }

  v38 = +[NSBundle vs_frameworkBundle];
  v39 = [v38 localizedStringForKey:@"TV_APP_DEVELOPER_SYSTEM_TRUST" value:0 table:0];

  v40 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v41 = [v40 requiresSystemTrust];
  v42 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v39 value:v41 details:0 copyable:0];

  [v3 addObject:v42];
  v43 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v3];

  return v43;
}

- (id)billingGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NSBundle vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"TV_APP_DEVELOPER_ACCOUNT_TYPE" value:0 table:0];

  v6 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v7 = [v6 accountType];
  v8 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v5 value:v7 details:0 copyable:1];

  [v3 addObject:v8];
  v9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v10 = [v9 billingIdentifier];
  v11 = [v10 length];

  if (v11)
  {
    v12 = +[NSBundle vs_frameworkBundle];
    v13 = [v12 localizedStringForKey:@"TV_APP_DEVELOPER_BILLING_ID" value:0 table:0];

    v14 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v15 = [v14 billingIdentifier];
    v16 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v13 value:v15 details:0 copyable:1];

    [v3 addObject:v16];
  }

  v17 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v18 = [v17 billingCycleEndDate];
  v19 = [v18 length];

  if (v19)
  {
    v20 = +[NSBundle vs_frameworkBundle];
    v21 = [v20 localizedStringForKey:@"TV_APP_DEVELOPER_BILLING_CYCLE_END_DATE" value:0 table:0];

    v22 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v23 = [v22 billingCycleEndDate];
    v24 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v21 value:v23 details:0 copyable:1];

    [v3 addObject:v24];
  }

  v25 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  v26 = [v25 tierIdentifiers];
  v27 = [v26 count];

  if (v27)
  {
    v28 = +[NSBundle vs_frameworkBundle];
    v29 = [v28 localizedStringForKey:@"TV_APP_DEVELOPER_TIERS" value:0 table:0];

    v30 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    v31 = [v30 tierIdentifiers];
    v32 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v29 value:0 details:v31 copyable:0];

    [v3 addObject:v32];
  }

  v33 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v3];

  return v33;
}

- (id)refreshGroupSpecifiers
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_REFRESH_ACCOUNT" value:0 table:0];

  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v5 setButtonAction:"refreshAccount"];
  [v5 setProperty:&off_8780 forKey:PSAlignmentKey];
  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self setRefreshSpecifier:v5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v6];

  return v7;
}

@end