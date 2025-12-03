@interface BuddyTransferDataController
- (BuddyTransferDataController)init;
- (BuddyTransferDataFlowDelegate)transferFlowDelegate;
- (void)_continueTapped:(id)tapped;
- (void)_otherOptionsTapped:(id)tapped;
- (void)_setupButtons;
- (void)_updateAnalyticsWithChoice:(id)choice;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = BuddyTransferDataController;
  [(BuddyTransferDataController *)&v31 viewDidLoad];
  v30 = 0;
  v2 = +[BYDevice currentDevice];
  hasHomeButton = [v2 hasHomeButton];

  v29 = hasHomeButton;
  proximitySetupController = [(BuddyTransferDataController *)selfCopy proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController information];
  hasHomeButton2 = [(SASProximityInformation *)information hasHomeButton];

  v28 = hasHomeButton2;
  miscState = [(BuddyTransferDataController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  connectionInfo = [(BuddyTargetDeviceMigrationManager *)migrationManager connectionInfo];
  connectionType = [connectionInfo connectionType];

  if (connectionType == 1)
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

  headerView = [(BuddyTransferDataController *)selfCopy headerView];
  [headerView setIcon:v30 accessibilityLabel:0];

  proximitySetupController2 = [(BuddyTransferDataController *)selfCopy proximitySetupController];
  location = [(ProximitySetupController *)proximitySetupController2 deviceName];

  v17 = +[NSBundle mainBundle];
  v18 = [(NSBundle *)v17 localizedStringForKey:@"TRANSFER_DATA_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = [NSString localizedStringWithFormat:v18, location];
  headerView2 = [(BuddyTransferDataController *)selfCopy headerView];
  [headerView2 setTitle:location];

  v21 = +[NSBundle mainBundle];
  v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_DATA_DESCRIPTION"];
  v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
  estimatedMigrationDuration = [(BuddyTransferDataController *)selfCopy estimatedMigrationDuration];
  v25 = [NSString localizedStringWithFormat:v23, location, estimatedMigrationDuration];
  headerView3 = [(BuddyTransferDataController *)selfCopy headerView];
  [headerView3 setDetailText:v25];

  [(BuddyTransferDataController *)selfCopy _setupButtons];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v30, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v15 = a2;
  disappearCopy = disappear;
  v13.receiver = self;
  v13.super_class = BuddyTransferDataController;
  [(BuddyTransferDataController *)&v13 viewWillDisappear:disappear];
  v11 = 0;
  v9 = 0;
  v3 = 0;
  if (([(BuddyTransferDataController *)selfCopy isMovingFromParentViewController]& 1) == 0)
  {
    navigationController = [(BuddyTransferDataController *)selfCopy navigationController];
    v11 = 1;
    topViewController = [navigationController topViewController];
    v9 = 1;
    v3 = topViewController != selfCopy;
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  if (v3)
  {
    deferredMigrationWork = [(BuddyTransferDataController *)selfCopy deferredMigrationWork];

    if (!deferredMigrationWork)
    {
      v7 = [NSException exceptionWithName:v6 reason:0 userInfo:0];
      v8 = v7;

      objc_exception_throw(v7);
    }

    deferredMigrationWork2 = [(BuddyTransferDataController *)selfCopy deferredMigrationWork];
    deferredMigrationWork2[2](deferredMigrationWork2);

    [(BuddyTransferDataController *)selfCopy setDeferredMigrationWork:0];
  }
}

- (void)_setupButtons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[OBBoldTrayButton boldButton];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitle:v3 forState:0];

  [location[0] addTarget:selfCopy action:"_continueTapped:" forControlEvents:64];
  buttonTray = [(BuddyTransferDataController *)selfCopy buttonTray];
  [buttonTray addButton:location[0]];

  v8 = +[OBLinkTrayButton linkButton];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"TRANSFER_OPTIONS_OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [v8 setTitle:v6 forState:0];

  [v8 addTarget:selfCopy action:"_otherOptionsTapped:" forControlEvents:64];
  buttonTray2 = [(BuddyTransferDataController *)selfCopy buttonTray];
  [buttonTray2 addButton:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_continueTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  transferFlowDelegate = [(BuddyTransferDataController *)selfCopy transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)transferFlowDelegate prepareUserSignalToMigrate:1];

  objc_initWeak(&from, selfCopy);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001F48A0;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferDataController *)selfCopy setDeferredMigrationWork:&v5];
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  transferFlowDelegate = [(BuddyTransferDataController *)selfCopy transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)transferFlowDelegate prepareUserSignalToMigrate:0];

  objc_initWeak(&from, selfCopy);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001F4B5C;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferDataController *)selfCopy setDeferredMigrationWork:&v5];
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)_updateAnalyticsWithChoice:(id)choice
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = 0;
  objc_storeStrong(v5, choice);
  analyticsManager = [(BuddyTransferDataController *)selfCopy analyticsManager];
  v7[0] = @"choice";
  v8[0] = v5[0];
  v7[1] = @"type";
  v8[1] = @"heavy";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.migrationUpsell" withPayload:v4 persist:1];

  objc_storeStrong(v5, 0);
}

- (BuddyTransferDataFlowDelegate)transferFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transferFlowDelegate);

  return WeakRetained;
}

@end