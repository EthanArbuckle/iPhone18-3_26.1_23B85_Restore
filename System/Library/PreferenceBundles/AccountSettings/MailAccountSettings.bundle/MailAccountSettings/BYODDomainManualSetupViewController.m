@interface BYODDomainManualSetupViewController
+ (id)log;
- (BYODDomainManualSetupViewController)initWithDomainName:(id)a3 acAccount:(id)a4 showRedBadge:(BOOL)a5;
- (id)specifiers;
- (void)_finishSetupSpecifierWasTapped:(id)a3;
- (void)_loadDnsRecords:(id)a3;
- (void)_refreshDomainResultNotification:(id)a3;
- (void)_viewInstructionSpecifierWasTapped:(id)a3;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation BYODDomainManualSetupViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D61C;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6510 != -1)
  {
    dispatch_once(&qword_D6510, block);
  }

  v2 = qword_D6508;

  return v2;
}

- (BYODDomainManualSetupViewController)initWithDomainName:(id)a3 acAccount:(id)a4 showRedBadge:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BYODDomainManualSetupViewController;
  v10 = [(BYODDomainManualSetupViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(BYODDomainManualSetupViewController *)v10 setDomainName:v8];
    [(BYODDomainManualSetupViewController *)v11 setLoggedInUserAccount:v9];
    [(BYODDomainManualSetupViewController *)v11 setShowRedBadge:v5];
  }

  return v11;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BYODDomainManualSetupViewController;
  [(BYODDomainManualSetupViewController *)&v4 viewDidLoad];
  v3 = [(BYODDomainManualSetupViewController *)self domainName];
  [(BYODDomainManualSetupViewController *)self setTitle:v3];
}

- (id)specifiers
{
  v31 = objc_alloc_init(NSMutableArray);
  v30 = [PSSpecifier groupSpecifierWithID:@"BYOD_MANUAL_SETUP_TITLE_GROUP_ID"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_STEPS_PAGE_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = PSFooterTextGroupKey;
  [v30 setProperty:v4 forKey:PSFooterTextGroupKey];

  [v31 addObject:v30];
  v6 = objc_alloc_init(NSMutableArray);
  v29 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_VIEW_INSTRUCTION_GROUP_SPECIFIER"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_VIEW_INSTRUCTION_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v29 setProperty:v8 forKey:v5];

  [v6 addObject:v29];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_VIEW_INSTRUCTION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v11 setIdentifier:@"BYOD_DOMAIN_VIEW_INSTRUCTION_SPECIFIER_ID"];
  [v11 setControllerLoadAction:"_viewInstructionSpecifierWasTapped:"];
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if ([(BYODDomainManualSetupViewController *)self showRedBadge])
  {
    v12 = [NSNumberFormatter localizedStringFromNumber:&off_C05A8 numberStyle:0];
    [v11 setProperty:v12 forKey:PSBadgeNumberKey];
  }

  [v6 addObject:v11];
  [(BYODDomainManualSetupViewController *)self setViewInstructionSpecifier:v11];
  [v31 addObjectsFromArray:v6];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_FINISH_SETUP_GROUP_SPECIFIER"];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_FINISH_SETUP_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v14 setProperty:v16 forKey:v5];

  [v13 addObject:v14];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_FINISH_SETUP_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v19 setIdentifier:@"BYOD_DOMAIN_FINISH_SETUP_SPECIFIER_ID"];
  [v19 setButtonAction:"_finishSetupSpecifierWasTapped:"];
  v20 = [NSNumber numberWithBool:0];
  [v19 setProperty:v20 forKey:PSEnabledKey];

  [v13 addObject:v19];
  [v31 addObjectsFromArray:v13];
  [(BYODDomainManualSetupViewController *)self setFinishSetupSpecifier:v19];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 removeObserver:self name:@"BYOD_MANUAL_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_refreshDomainResultNotification:" name:@"BYOD_MANUAL_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v23 = [v31 copy];
  v24 = OBJC_IVAR___PSListController__specifiers;
  v25 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v23;

  v26 = *&self->PSListController_opaque[v24];
  v27 = v26;

  return v26;
}

- (void)_viewInstructionSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(BYODDomainManualSetupViewController *)self viewInstructionSpecifier];
  [v5 removePropertyForKey:PSBadgeNumberKey];

  v6 = [(BYODDomainManualSetupViewController *)self viewInstructionSpecifier];
  [(BYODDomainManualSetupViewController *)self reloadSpecifier:v6];

  v7 = [(BYODDomainManualSetupViewController *)self finishSetupSpecifier];
  v8 = [NSNumber numberWithBool:1];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  v9 = [(BYODDomainManualSetupViewController *)self finishSetupSpecifier];
  [(BYODDomainManualSetupViewController *)self reloadSpecifier:v9];

  v13 = self;
  v10 = v4;
  v14 = v10;
  v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v11 performBlock:&v12];
}

- (void)_finishSetupSpecifierWasTapped:(id)a3
{
  v4 = [BYODConfirmFinishSetupViewController alloc];
  v5 = [(BYODDomainManualSetupViewController *)self domainName];
  v6 = [(BYODDomainManualSetupViewController *)self loggedInUserAccount];
  v7 = [(BYODConfirmFinishSetupViewController *)v4 initWithDomainName:v5 acAccount:v6];

  v11 = self;
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  v12 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:&v10];
}

- (void)_loadDnsRecords:(id)a3
{
  v4 = a3;
  v5 = [(BYODDomainManualSetupViewController *)self dnsRecords];
  v6 = [v5 count];

  if (v6)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3E68C;
    v15[3] = &unk_B8EB0;
    v15[4] = self;
    v7 = +[EFScheduler mainThreadScheduler];
    [v7 performBlock:v15];
  }

  else
  {
    [v4 byod_startSpinner];
    objc_initWeak(&location, self);
    v8 = +[BYODDomainManualSetupViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "load DNS records", buf, 2u);
    }

    v9 = [BYODGetDnsRecordsRequest alloc];
    v10 = [(BYODDomainManualSetupViewController *)self loggedInUserAccount];
    v11 = [(BYODDomainManualSetupViewController *)self loggedInUserAccount];
    v12 = [v11 accountStore];
    v13 = [(BYODDomainManualSetupViewController *)self domainName];
    v14 = [(BYODGetDnsRecordsRequest *)v9 initWithAccount:v10 accountStore:v12 domain:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3E3AC;
    v16[3] = &unk_B9360;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    [(BYODGetDnsRecordsRequest *)v14 performRequestWithCallback:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)_refreshDomainResultNotification:(id)a3
{
  v4 = [(BYODDomainManualSetupViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BYODDomainManualSetupViewController;
  [(BYODDomainManualSetupViewController *)&v4 dealloc];
}

@end