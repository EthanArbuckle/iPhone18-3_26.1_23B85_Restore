@interface VSTVAppDeveloperSettingsViewController_iOS
- (VSTVAppDeveloperSettingsViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)fetchAccounts;
- (void)viewDidLoad;
@end

@implementation VSTVAppDeveloperSettingsViewController_iOS

- (VSTVAppDeveloperSettingsViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = VSTVAppDeveloperSettingsViewController_iOS;
  v4 = [(VSTVAppDeveloperSettingsViewController_iOS *)&v9 initWithNibName:0 bundle:0];
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
  v3.receiver = self;
  v3.super_class = VSTVAppDeveloperSettingsViewController_iOS;
  [(VSTVAppDeveloperSettingsViewController_iOS *)&v3 viewDidLoad];
  [(VSTVAppDeveloperSettingsViewController_iOS *)self fetchAccounts];
}

- (id)specifiers
{
  v37 = objc_alloc_init(NSMutableArray);
  v3 = [(VSTVAppDeveloperSettingsViewController_iOS *)self groupedDeveloperAccounts];
  if ([v3 count])
  {
    v36 = self;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = v3;
    obj = v3;
    v31 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v31)
    {
      v30 = *v43;
      v4 = PSCellClassKey;
      v5 = PSTitleKey;
      v6 = PSTableCellSubtitleTextKey;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v7;
          v8 = *(*(&v42 + 1) + 8 * v7);
          v33 = [PSSpecifier groupSpecifierWithName:v8];
          [v37 addObject:?];
          v9 = [obj objectForKey:v8];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v9;
          v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v39;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(v35);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                v15 = [[VSUserAccountFacade alloc] initWithAccount:v14];
                v16 = [(VSUserAccountFacade *)v15 displayName];
                v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:v36 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

                [v17 setProperty:v14 forKey:@"VSTVAppDeveloperSettingsUserAccountKey"];
                [v17 setProperty:objc_opt_class() forKey:v4];
                v18 = [(VSUserAccountFacade *)v15 displayNameWithSynchedToThisDeviceIndicator];
                [v17 setProperty:v18 forKey:v5];
                v19 = [(VSUserAccountFacade *)v15 lastModifiedLong];
                [v17 setProperty:v19 forKey:v6];

                [v37 addObject:v17];
              }

              v11 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v11);
          }

          v7 = v34 + 1;
        }

        while ((v34 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    self = v36;
    v3 = v29;
  }

  else if (![(VSTVAppDeveloperSettingsViewController_iOS *)self loading])
  {
    v20 = +[NSBundle vs_frameworkBundle];
    v21 = [v20 localizedStringForKey:@"TV_APP_DEVELOPER_NO_ACCOUNTS_PLACEHOLDER" value:0 table:0];

    v22 = [PSSpecifier groupSpecifierWithName:0];
    [v22 setProperty:v21 forKey:PSFooterTextGroupKey];
    [v22 setProperty:&off_8768 forKey:PSFooterAlignmentGroupKey];
    [v37 addObject:v22];
  }

  v23 = [v37 copy];
  v24 = OBJC_IVAR___PSListController__specifiers;
  v25 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v23;

  v26 = *&self->PSListController_opaque[v24];
  v27 = v26;

  return v26;
}

- (void)fetchAccounts
{
  [(VSTVAppDeveloperSettingsViewController_iOS *)self setLoading:1];
  v3 = +[VSUserAccountManager sharedUserAccountManager];
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1988;
  v4[3] = &unk_8288;
  objc_copyWeak(&v5, &location);
  [v3 fetchDeveloperUserAccountsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end