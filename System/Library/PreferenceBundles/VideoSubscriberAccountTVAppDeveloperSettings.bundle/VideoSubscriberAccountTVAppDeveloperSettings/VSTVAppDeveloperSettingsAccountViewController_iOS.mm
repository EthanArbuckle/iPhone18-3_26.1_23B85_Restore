@interface VSTVAppDeveloperSettingsAccountViewController_iOS
- (VSTVAppDeveloperSettingsAccountViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (id)billingGroupSpecifiers;
- (id)dateGroupSpecifiers;
- (id)deviceGroupSpecifiers;
- (id)groupWithSpecifiers:(id)specifiers;
- (id)infoGroupSpecifiers;
- (id)refreshGroupSpecifiers;
- (id)sourceIdentifierGroupSpecifiers;
- (id)specifiers;
- (void)refreshAccount;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)viewDidLoad;
@end

@implementation VSTVAppDeveloperSettingsAccountViewController_iOS

- (VSTVAppDeveloperSettingsAccountViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
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
  specifier = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifier];
  v4 = [specifier propertyForKey:@"VSTVAppDeveloperSettingsUserAccountKey"];
  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self setAccount:v4];

  [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self reloadSpecifiers];
}

- (id)specifiers
{
  account = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  v4 = account;
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = account == 0;
  }

  if (!v7)
  {
    v8 = [[VSUserAccountFacade alloc] initWithAccount:account];
    [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self setFacade:v8];

    v9 = objc_alloc_init(NSMutableArray);
    sourceIdentifierGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self sourceIdentifierGroupSpecifiers];

    if (sourceIdentifierGroupSpecifiers)
    {
      sourceIdentifierGroupSpecifiers2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self sourceIdentifierGroupSpecifiers];
      [v9 addObjectsFromArray:sourceIdentifierGroupSpecifiers2];
    }

    dateGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self dateGroupSpecifiers];

    if (dateGroupSpecifiers)
    {
      dateGroupSpecifiers2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self dateGroupSpecifiers];
      [v9 addObjectsFromArray:dateGroupSpecifiers2];
    }

    deviceGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self deviceGroupSpecifiers];

    if (deviceGroupSpecifiers)
    {
      deviceGroupSpecifiers2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self deviceGroupSpecifiers];
      [v9 addObjectsFromArray:deviceGroupSpecifiers2];
    }

    infoGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self infoGroupSpecifiers];

    if (infoGroupSpecifiers)
    {
      infoGroupSpecifiers2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self infoGroupSpecifiers];
      [v9 addObjectsFromArray:infoGroupSpecifiers2];
    }

    billingGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self billingGroupSpecifiers];

    if (billingGroupSpecifiers)
    {
      billingGroupSpecifiers2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self billingGroupSpecifiers];
      [v9 addObjectsFromArray:billingGroupSpecifiers2];
    }

    if ([v4 isFromCurrentDevice])
    {
      updateURL = [v4 updateURL];

      if (updateURL)
      {
        refreshGroupSpecifiers = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self refreshGroupSpecifiers];
        [v9 addObjectsFromArray:refreshGroupSpecifiers];
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

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  notifierCopy = notifier;
  infoCopy = info;
  objc_initWeak(&location, self);
  v8 = +[VSUserAccountManager sharedUserAccountManager];
  account = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  sourceIdentifier = [account sourceIdentifier];
  sourceType = [account sourceType];
  deviceIdentifier = [account deviceIdentifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2C68;
  v13[3] = &unk_82C0;
  objc_copyWeak(&v14, &location);
  [v8 fetchUserAccountWithSourceIdentifier:sourceIdentifier sourceType:sourceType deviceIdentifier:deviceIdentifier withCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)refreshAccount
{
  v4 = +[VSUserAccountManager sharedUserAccountManager];
  account = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self account];
  [v4 forceRefreshUserAccount:account withCompletion:&stru_8300];
}

- (id)groupWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithName:0];
    [v4 addObject:v5];
    [v4 addObjectsFromArray:specifiersCopy];
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

  facade = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  sourceIdentifier = [facade sourceIdentifier];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:sourceIdentifier details:0 copyable:1];

  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v8];

  return v9;
}

- (id)dateGroupSpecifiers
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_CREATED_ON" value:0 table:0];

  facade = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  created = [facade created];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:created details:0 copyable:1];

  v8 = +[NSBundle vs_frameworkBundle];
  v9 = [v8 localizedStringForKey:@"TV_APP_DEVELOPER_LAST_MODIFIED" value:0 table:0];

  facade2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  lastModified = [facade2 lastModified];
  v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v9 value:lastModified details:0 copyable:1];

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

  facade = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  fromThisDevice = [facade fromThisDevice];
  v7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v4 value:fromThisDevice details:0 copyable:0];

  facade2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  deviceCategory = [facade2 deviceCategory];
  v10 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:@"Device Genre" value:deviceCategory details:0 copyable:0];

  v14[0] = v7;
  v14[1] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:2];
  v12 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v11];

  return v12;
}

- (id)infoGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  facade = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  identifier = [facade identifier];
  v6 = [identifier length];

  if (v6)
  {
    v7 = +[NSBundle vs_frameworkBundle];
    v8 = [v7 localizedStringForKey:@"TV_APP_DEVELOPER_IDENTIFIER" value:0 table:0];

    facade2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    identifier2 = [facade2 identifier];
    v11 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v8 value:identifier2 details:0 copyable:1];

    [v3 addObject:v11];
  }

  facade3 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  tvProviderIdentifier = [facade3 tvProviderIdentifier];
  v14 = [tvProviderIdentifier length];

  if (v14)
  {
    v15 = +[NSBundle vs_frameworkBundle];
    v16 = [v15 localizedStringForKey:@"TV_APP_DEVELOPER_TV_PROVIDER_IDENTIFIER" value:0 table:0];

    facade4 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    tvProviderIdentifier2 = [facade4 tvProviderIdentifier];
    v19 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v16 value:tvProviderIdentifier2 details:0 copyable:1];

    [v3 addObject:v19];
  }

  facade5 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  updateURLString = [facade5 updateURLString];
  v22 = [updateURLString length];

  if (v22)
  {
    v23 = +[NSBundle vs_frameworkBundle];
    v24 = [v23 localizedStringForKey:@"TV_APP_DEVELOPER_UPDATE_URL" value:0 table:0];

    facade6 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    updateURLString2 = [facade6 updateURLString];
    v46 = updateURLString2;
    v27 = [NSArray arrayWithObjects:&v46 count:1];

    v28 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v24 value:0 details:v27 copyable:0];
    [v3 addObject:v28];
  }

  facade7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  authenticationDataString = [facade7 authenticationDataString];
  v31 = [authenticationDataString length];

  if (v31)
  {
    v32 = +[NSBundle vs_frameworkBundle];
    v33 = [v32 localizedStringForKey:@"TV_APP_DEVELOPER_AUTH_DATA" value:0 table:0];

    facade8 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    authenticationDataString2 = [facade8 authenticationDataString];
    v45 = authenticationDataString2;
    v36 = [NSArray arrayWithObjects:&v45 count:1];

    v37 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v33 value:0 details:v36 copyable:0];
    [v3 addObject:v37];
  }

  v38 = +[NSBundle vs_frameworkBundle];
  v39 = [v38 localizedStringForKey:@"TV_APP_DEVELOPER_SYSTEM_TRUST" value:0 table:0];

  facade9 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  requiresSystemTrust = [facade9 requiresSystemTrust];
  v42 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v39 value:requiresSystemTrust details:0 copyable:0];

  [v3 addObject:v42];
  v43 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self groupWithSpecifiers:v3];

  return v43;
}

- (id)billingGroupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NSBundle vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"TV_APP_DEVELOPER_ACCOUNT_TYPE" value:0 table:0];

  facade = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  accountType = [facade accountType];
  v8 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v5 value:accountType details:0 copyable:1];

  [v3 addObject:v8];
  facade2 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  billingIdentifier = [facade2 billingIdentifier];
  v11 = [billingIdentifier length];

  if (v11)
  {
    v12 = +[NSBundle vs_frameworkBundle];
    v13 = [v12 localizedStringForKey:@"TV_APP_DEVELOPER_BILLING_ID" value:0 table:0];

    facade3 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    billingIdentifier2 = [facade3 billingIdentifier];
    v16 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v13 value:billingIdentifier2 details:0 copyable:1];

    [v3 addObject:v16];
  }

  facade4 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  billingCycleEndDate = [facade4 billingCycleEndDate];
  v19 = [billingCycleEndDate length];

  if (v19)
  {
    v20 = +[NSBundle vs_frameworkBundle];
    v21 = [v20 localizedStringForKey:@"TV_APP_DEVELOPER_BILLING_CYCLE_END_DATE" value:0 table:0];

    facade5 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    billingCycleEndDate2 = [facade5 billingCycleEndDate];
    v24 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v21 value:billingCycleEndDate2 details:0 copyable:1];

    [v3 addObject:v24];
  }

  facade6 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
  tierIdentifiers = [facade6 tierIdentifiers];
  v27 = [tierIdentifiers count];

  if (v27)
  {
    v28 = +[NSBundle vs_frameworkBundle];
    v29 = [v28 localizedStringForKey:@"TV_APP_DEVELOPER_TIERS" value:0 table:0];

    facade7 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self facade];
    tierIdentifiers2 = [facade7 tierIdentifiers];
    v32 = [(VSTVAppDeveloperSettingsAccountViewController_iOS *)self specifierWithTitle:v29 value:0 details:tierIdentifiers2 copyable:0];

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