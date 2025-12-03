@interface BuddyTransferOptionsController
- (BFFFlowItemDelegate)delegate;
- (BuddyTransferDataFlowDelegate)transferFlowDelegate;
- (BuddyTransferOptionsController)init;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_otherOptionsTapped:(id)tapped;
- (void)_updateAnalyticsWithChoice:(id)choice;
- (void)startOver;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BuddyTransferOptionsController

- (BuddyTransferOptionsController)init
{
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"TRANSFER_OPTIONS_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"TRANSFER_OPTIONS_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyTransferOptionsController;
  location = [(BuddyTransferOptionsController *)&v9 initWithTitle:v4 detailText:v6 icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v18 viewDidLoad];
  if ([(BuddyTransferOptionsController *)selfCopy hasMegaBackup])
  {
    headerView = [(BuddyTransferOptionsController *)selfCopy headerView];
    v3 = +[NSBundle mainBundle];
    sourceDeviceClass = [(BuddyTransferOptionsController *)selfCopy sourceDeviceClass];
    v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"TRANSFER_OPTIONS_BACKUP_DESCRIPTION" deviceClass:sourceDeviceClass];
    v6 = [(NSBundle *)v3 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];
    [headerView setDetailText:v6];
  }

  v7 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyTransferOptionsController *)selfCopy setTableView:v7];

  v8 = selfCopy;
  tableView = [(BuddyTransferOptionsController *)selfCopy tableView];
  [tableView setDelegate:v8];

  v10 = selfCopy;
  tableView2 = [(BuddyTransferOptionsController *)selfCopy tableView];
  [tableView2 setDataSource:v10];

  tableView3 = [(BuddyTransferOptionsController *)selfCopy tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView4 = [(BuddyTransferOptionsController *)selfCopy tableView];
  [tableView4 setSeparatorStyle:0];

  location = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [(NSBundle *)v14 localizedStringForKey:@"TRANSFER_OPTIONS_OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v15 forState:0];

  [location addTarget:selfCopy action:"_otherOptionsTapped:" forControlEvents:64];
  buttonTray = [(BuddyTransferOptionsController *)selfCopy buttonTray];
  [buttonTray addButton:location];

  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v4 viewWillAppear:appear];
  tableView = [(BuddyTransferOptionsController *)selfCopy tableView];
  [tableView reloadData];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v15 = a2;
  disappearCopy = disappear;
  v13.receiver = self;
  v13.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v13 viewWillDisappear:disappear];
  v11 = 0;
  v9 = 0;
  v3 = 0;
  if (([(BuddyTransferOptionsController *)selfCopy isMovingFromParentViewController]& 1) == 0)
  {
    navigationController = [(BuddyTransferOptionsController *)selfCopy navigationController];
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
    deferredMigrationWork = [(BuddyTransferOptionsController *)selfCopy deferredMigrationWork];

    if (!deferredMigrationWork)
    {
      v7 = [NSException exceptionWithName:v6 reason:0 userInfo:0];
      v8 = v7;

      objc_exception_throw(v7);
    }

    deferredMigrationWork2 = [(BuddyTransferOptionsController *)selfCopy deferredMigrationWork];
    deferredMigrationWork2[2](deferredMigrationWork2);

    [(BuddyTransferOptionsController *)selfCopy setDeferredMigrationWork:0];
  }
}

- (void)startOver
{
  v2 = [(BuddyTransferOptionsController *)self proximitySetupController:a2];
  [(ProximitySetupController *)v2 setSkipExpressRestore:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v76 = 0;
  objc_storeStrong(&v76, path);
  v75 = [location[0] dequeueReusableCellWithIdentifier:@"cell"];
  v68 = 0;
  v69 = &v68;
  v70 = 838860800;
  v71 = 48;
  v72 = sub_1001BA0D8;
  v73 = sub_1001BA11C;
  v74 = 0;
  v67 = [v76 section] == 0;
  v5 = +[BYDevice currentDevice];
  hasHomeButton = [v5 hasHomeButton];

  v66 = hasHomeButton & 1;
  proximitySetupController = [(BuddyTransferOptionsController *)selfCopy proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController information];
  hasHomeButton2 = [(SASProximityInformation *)information hasHomeButton];

  v65 = hasHomeButton2 & 1;
  if (!v75)
  {
    v10 = [[BuddyTransferOptionsTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    v11 = v75;
    v75 = v10;
  }

  if (v67)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"TRANSFER_OPTIONS_RESTORE_OPTION_TITLE" value:&stru_10032F900 table:@"Localizable"];
    nameLabel = [v75 nameLabel];
    [nameLabel setText:v13];

    v15 = +[NSBundle mainBundle];
    v16 = SFLocalizableWAPIStringKeyForKey();
    v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:v16];
    v18 = [(NSBundle *)v15 localizedStringForKey:v17 value:&stru_10032F900 table:@"Localizable"];
    descriptionLabel = [v75 descriptionLabel];
    [descriptionLabel setText:v18];

    if (v66)
    {
      objc_storeStrong(v69 + 5, @"Transfer Option Cloud with Home Button");
    }

    else
    {
      objc_storeStrong(v69 + 5, @"Transfer Option Cloud without Home Button");
    }
  }

  else
  {
    v20 = +[NSBundle mainBundle];
    v21 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_OPTIONS_MIGRATE_OPTION_TITLE"];
    v22 = [(NSBundle *)v20 localizedStringForKey:v21 value:&stru_10032F900 table:@"Localizable"];
    nameLabel2 = [v75 nameLabel];
    [nameLabel2 setText:v22];

    v24 = +[NSBundle mainBundle];
    v25 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_OPTIONS_MIGRATE_OPTION_DETAIL"];
    v26 = [(NSBundle *)v24 localizedStringForKey:v25 value:&stru_10032F900 table:@"Localizable"];
    descriptionLabel2 = [v75 descriptionLabel];
    [descriptionLabel2 setText:v26];

    v28 = +[NSBundle mainBundle];
    v29 = [(NSBundle *)v28 localizedStringForKey:@"TRANSFER_OPTIONS_MIGRATE_OPTION_TIME_ESTIMATE_PREFIX" value:&stru_10032F900 table:@"Localizable"];
    estimatedMigrationDuration = [(BuddyTransferOptionsController *)selfCopy estimatedMigrationDuration];
    v31 = [(NSString *)v29 stringByAppendingString:estimatedMigrationDuration];
    footnoteLabel = [v75 footnoteLabel];
    [footnoteLabel setText:v31];

    if (v66)
    {
      if (v65)
      {
        objc_storeStrong(v69 + 5, @"Transfer Options Migration Wireless Both with Home Button");
      }

      else
      {
        objc_storeStrong(v69 + 5, @"Transfer Options Migration Wireless with Home Button");
      }
    }

    else if (v65)
    {
      objc_storeStrong(v69 + 5, @"Transfer Options Migration Wireless without Home Button");
    }

    else
    {
      objc_storeStrong(v69 + 5, @"Transfer Options Migration Wireless Both without Home Button");
    }

    miscState = [(BuddyTransferOptionsController *)selfCopy miscState];
    migrationManager = [(BuddyMiscState *)miscState migrationManager];
    connectionInfo = [(BuddyTargetDeviceMigrationManager *)migrationManager connectionInfo];
    connectionType = [connectionInfo connectionType];

    if (connectionType == 1)
    {
      v37 = [v69[5] stringByReplacingOccurrencesOfString:@"Wireless" withString:@"Wired"];
      v38 = v69[5];
      v69[5] = v37;
    }
  }

  view = [(BuddyTransferOptionsController *)selfCopy view];
  traitCollection = [view traitCollection];
  v59 = _NSConcreteStackBlock;
  v60 = -1073741824;
  v61 = 0;
  v62 = sub_1001BA128;
  v63 = &unk_10032CFC0;
  v64[0] = selfCopy;
  v64[1] = &v68;
  [traitCollection performAsCurrentTraitCollection:&v59];

  proximitySetupController2 = [(BuddyTransferOptionsController *)selfCopy proximitySetupController];
  productVersion = [(ProximitySetupController *)proximitySetupController2 productVersion];
  v43 = [(NSString *)productVersion hasPrefix:@"iPhone15, "];

  v58 = v43 & 1;
  if (v67)
  {
    if (SBUIIsSystemApertureEnabled())
    {
      v44 = [v69[5] stringByAppendingString:@" D7X"];
      v45 = v69[5];
      v69[5] = v44;
    }
  }

  else if (SBUIIsSystemApertureEnabled())
  {
    v57 = @" D7X";
    if ((v65 & 1) == 0 && (v58 & 1) == 0)
    {
      objc_storeStrong(&v57, @" D3X-D7X");
    }

    v46 = [v69[5] stringByAppendingString:v57];
    v47 = v69[5];
    v69[5] = v46;

    objc_storeStrong(&v57, 0);
  }

  else if ((v58 & 1) != 0 && (v66 & 1) == 0)
  {
    v48 = [v69[5] stringByAppendingString:@" D7X-D3X"];
    v49 = v69[5];
    v69[5] = v48;
  }

  v50 = [NSDataAsset alloc];
  v56 = [v50 initWithName:v69[5]];
  v51 = v75;
  data = [v56 data];
  v53 = [CALayer buddy_layerForPackageWithData:data geometryFlipped:0 scale:3.0];
  [v51 setIconLayer:v53];

  v54 = v75;
  objc_storeStrong(&v56, 0);
  objc_storeStrong(v64, 0);
  _Block_object_dispose(&v68, 8);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);

  return v54;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section == 1)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 0.0;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, section}];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, path);
  objc_initWeak(&from, selfCopy);
  if ([v21 section])
  {
    transferFlowDelegate = [(BuddyTransferOptionsController *)selfCopy transferFlowDelegate];
    [(BuddyTransferDataFlowDelegate *)transferFlowDelegate prepareUserSignalToMigrate:1];

    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001BA744;
    v12 = &unk_10032AF58;
    objc_copyWeak(&v13, &from);
    [(BuddyTransferOptionsController *)selfCopy setDeferredMigrationWork:&v8];
    objc_destroyWeak(&v13);
  }

  else
  {
    transferFlowDelegate2 = [(BuddyTransferOptionsController *)selfCopy transferFlowDelegate];
    [(BuddyTransferDataFlowDelegate *)transferFlowDelegate2 prepareUserSignalToMigrate:0];

    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1001BA5C4;
    v18 = &unk_10032AF58;
    objc_copyWeak(&v19, &from);
    [(BuddyTransferOptionsController *)selfCopy setDeferredMigrationWork:&v14];
    objc_destroyWeak(&v19);
  }

  [location[0] deselectRowAtIndexPath:v21 animated:1];
  delegate = [(BuddyTransferOptionsController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_destroyWeak(&from);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v20 = 0;
  objc_storeStrong(&v20, cell);
  v19 = 0;
  objc_storeStrong(&v19, path);
  contentView = [v20 contentView];
  [contentView _setContinuousCornerRadius:10.0];

  selectedBackgroundView = [v20 selectedBackgroundView];
  layer = [selectedBackgroundView layer];
  [layer setMasksToBounds:1];

  contentView2 = [v20 contentView];
  [contentView2 _continuousCornerRadius];
  v12 = v11;
  selectedBackgroundView2 = [v20 selectedBackgroundView];
  [selectedBackgroundView2 _setContinuousCornerRadius:v12];

  v14 = +[UIColor secondarySystemBackgroundColor];
  contentView3 = [v20 contentView];
  [contentView3 setBackgroundColor:v14];

  v16 = +[UIColor systemGray5Color];
  selectedBackgroundView3 = [v20 selectedBackgroundView];
  [selectedBackgroundView3 setBackgroundColor:v16];

  v18 = +[UIColor clearColor];
  [v20 setBackgroundColor:v18];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  transferFlowDelegate = [(BuddyTransferOptionsController *)selfCopy transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)transferFlowDelegate prepareUserSignalToMigrate:0];

  objc_initWeak(&from, selfCopy);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001BAC18;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferOptionsController *)selfCopy setDeferredMigrationWork:&v5];
  delegate = [(BuddyTransferOptionsController *)selfCopy delegate];
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
  analyticsManager = [(BuddyTransferOptionsController *)selfCopy analyticsManager];
  v7[0] = @"choice";
  v8[0] = v5[0];
  v7[1] = @"type";
  v8[1] = @"light";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.migrationUpsell" withPayload:v4 persist:1];

  objc_storeStrong(v5, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyTransferDataFlowDelegate)transferFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transferFlowDelegate);

  return WeakRetained;
}

@end