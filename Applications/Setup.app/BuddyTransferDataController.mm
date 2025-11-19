@interface BuddyTransferDataController
- (BuddyTransferDataController)init;
- (BuddyTransferDataFlowDelegate)transferFlowDelegate;
- (void)_continueTapped:(id)a3;
- (void)_otherOptionsTapped:(id)a3;
- (void)_setupButtons;
- (void)_updateAnalyticsWithChoice:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BuddyTransferDataController

- (BuddyTransferDataController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyTransferDataController;
  location = [(BuddyTransferDataController *)&v4 initWithTitle:&stru_10032F900 detailText:0 icon:0];
  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewDidLoad
{
  v33 = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = BuddyTransferDataController;
  [(BuddyTransferDataController *)&v31 viewDidLoad];
  v30 = 0;
  v2 = +[BYDevice currentDevice];
  v3 = [v2 hasHomeButton];

  v29 = v3;
  v4 = [(BuddyTransferDataController *)v33 proximitySetupController];
  v5 = [(ProximitySetupController *)v4 information];
  v6 = [(SASProximityInformation *)v5 hasHomeButton];

  v28 = v6;
  v7 = [(BuddyTransferDataController *)v33 miscState];
  v8 = [(BuddyMiscState *)v7 migrationManager];
  v9 = [(BuddyTargetDeviceMigrationManager *)v8 connectionInfo];
  v10 = [v9 connectionType];

  if (v10 == 1)
  {
    if (v29)
    {
      if (v28)
      {
        v11 = [UIImage imageNamed:@"Transfer Data Migration Wired Both with Home Button"];
      }

      else
      {
        v11 = [UIImage imageNamed:@"Transfer Data Migration Wired with Home Button"];
      }
    }

    else if (v28)
    {
      v11 = [UIImage imageNamed:@"Transfer Data Migration Wired without Home Button"];
    }

    else
    {
      v11 = [UIImage imageNamed:@"Transfer Data Migration Wired Both without Home Button"];
    }

    v12 = v30;
    v30 = v11;
  }

  else
  {
    v13 = [UIImage imageNamed:@"Transfer Options Migrate Wireless"];
    v14 = v30;
    v30 = v13;
  }

  v15 = [(BuddyTransferDataController *)v33 headerView];
  [v15 setIcon:v30 accessibilityLabel:0];

  v16 = [(BuddyTransferDataController *)v33 proximitySetupController];
  location = [(ProximitySetupController *)v16 deviceName];

  v17 = +[NSBundle mainBundle];
  v18 = [(NSBundle *)v17 localizedStringForKey:@"TRANSFER_DATA_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v19 = [NSString localizedStringWithFormat:v18, location];
  v20 = [(BuddyTransferDataController *)v33 headerView];
  [v20 setTitle:v19];

  v21 = +[NSBundle mainBundle];
  v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_DATA_DESCRIPTION"];
  v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
  v24 = [(BuddyTransferDataController *)v33 estimatedMigrationDuration];
  v25 = [NSString localizedStringWithFormat:v23, location, v24];
  v26 = [(BuddyTransferDataController *)v33 headerView];
  [v26 setDetailText:v25];

  [(BuddyTransferDataController *)v33 _setupButtons];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v30, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = BuddyTransferDataController;
  [(BuddyTransferDataController *)&v13 viewWillDisappear:a3];
  v11 = 0;
  v9 = 0;
  v3 = 0;
  if (([(BuddyTransferDataController *)v16 isMovingFromParentViewController]& 1) == 0)
  {
    v12 = [(BuddyTransferDataController *)v16 navigationController];
    v11 = 1;
    v10 = [v12 topViewController];
    v9 = 1;
    v3 = v10 != v16;
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  if (v3)
  {
    v4 = [(BuddyTransferDataController *)v16 deferredMigrationWork];

    if (!v4)
    {
      v7 = [NSException exceptionWithName:v6 reason:0 userInfo:0];
      v8 = v7;

      objc_exception_throw(v7);
    }

    v5 = [(BuddyTransferDataController *)v16 deferredMigrationWork];
    v5[2](v5);

    [(BuddyTransferDataController *)v16 setDeferredMigrationWork:0];
  }
}

- (void)_setupButtons
{
  v10 = self;
  location[1] = a2;
  location[0] = +[OBBoldTrayButton boldButton];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitle:v3 forState:0];

  [location[0] addTarget:v10 action:"_continueTapped:" forControlEvents:64];
  v4 = [(BuddyTransferDataController *)v10 buttonTray];
  [v4 addButton:location[0]];

  v8 = +[OBLinkTrayButton linkButton];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"TRANSFER_OPTIONS_OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [v8 setTitle:v6 forState:0];

  [v8 addTarget:v10 action:"_otherOptionsTapped:" forControlEvents:64];
  v7 = [(BuddyTransferDataController *)v10 buttonTray];
  [v7 addButton:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_continueTapped:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTransferDataController *)v13 transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)v3 prepareUserSignalToMigrate:1];

  objc_initWeak(&from, v13);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001F48A0;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferDataController *)v13 setDeferredMigrationWork:&v5];
  v4 = [(BuddyWelcomeController *)v13 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v13];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTransferDataController *)v13 transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)v3 prepareUserSignalToMigrate:0];

  objc_initWeak(&from, v13);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001F4B5C;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferDataController *)v13 setDeferredMigrationWork:&v5];
  v4 = [(BuddyWelcomeController *)v13 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v13];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_updateAnalyticsWithChoice:(id)a3
{
  v6 = self;
  v5[1] = a2;
  v5[0] = 0;
  objc_storeStrong(v5, a3);
  v3 = [(BuddyTransferDataController *)v6 analyticsManager];
  v7[0] = @"choice";
  v8[0] = v5[0];
  v7[1] = @"type";
  v8[1] = @"heavy";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(BYAnalyticsManager *)v3 addEvent:@"com.apple.setupassistant.ios.migrationUpsell" withPayload:v4 persist:1];

  objc_storeStrong(v5, 0);
}

- (BuddyTransferDataFlowDelegate)transferFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transferFlowDelegate);

  return WeakRetained;
}

@end