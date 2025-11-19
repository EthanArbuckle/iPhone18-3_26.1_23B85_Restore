@interface BuddyTransferOptionsController
- (BFFFlowItemDelegate)delegate;
- (BuddyTransferDataFlowDelegate)transferFlowDelegate;
- (BuddyTransferOptionsController)init;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_otherOptionsTapped:(id)a3;
- (void)_updateAnalyticsWithChoice:(id)a3;
- (void)startOver;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v20 = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v18 viewDidLoad];
  if ([(BuddyTransferOptionsController *)v20 hasMegaBackup])
  {
    v2 = [(BuddyTransferOptionsController *)v20 headerView];
    v3 = +[NSBundle mainBundle];
    v4 = [(BuddyTransferOptionsController *)v20 sourceDeviceClass];
    v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"TRANSFER_OPTIONS_BACKUP_DESCRIPTION" deviceClass:v4];
    v6 = [(NSBundle *)v3 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];
    [v2 setDetailText:v6];
  }

  v7 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyTransferOptionsController *)v20 setTableView:v7];

  v8 = v20;
  v9 = [(BuddyTransferOptionsController *)v20 tableView];
  [v9 setDelegate:v8];

  v10 = v20;
  v11 = [(BuddyTransferOptionsController *)v20 tableView];
  [v11 setDataSource:v10];

  v12 = [(BuddyTransferOptionsController *)v20 tableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(BuddyTransferOptionsController *)v20 tableView];
  [v13 setSeparatorStyle:0];

  location = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [(NSBundle *)v14 localizedStringForKey:@"TRANSFER_OPTIONS_OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v15 forState:0];

  [location addTarget:v20 action:"_otherOptionsTapped:" forControlEvents:64];
  v16 = [(BuddyTransferOptionsController *)v20 buttonTray];
  [v16 addButton:location];

  objc_storeStrong(&location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyTransferOptionsController *)v7 tableView];
  [v3 reloadData];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = BuddyTransferOptionsController;
  [(BuddyTransferOptionsController *)&v13 viewWillDisappear:a3];
  v11 = 0;
  v9 = 0;
  v3 = 0;
  if (([(BuddyTransferOptionsController *)v16 isMovingFromParentViewController]& 1) == 0)
  {
    v12 = [(BuddyTransferOptionsController *)v16 navigationController];
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
    v4 = [(BuddyTransferOptionsController *)v16 deferredMigrationWork];

    if (!v4)
    {
      v7 = [NSException exceptionWithName:v6 reason:0 userInfo:0];
      v8 = v7;

      objc_exception_throw(v7);
    }

    v5 = [(BuddyTransferOptionsController *)v16 deferredMigrationWork];
    v5[2](v5);

    [(BuddyTransferOptionsController *)v16 setDeferredMigrationWork:0];
  }
}

- (void)startOver
{
  v2 = [(BuddyTransferOptionsController *)self proximitySetupController:a2];
  [(ProximitySetupController *)v2 setSkipExpressRestore:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v78 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v76 = 0;
  objc_storeStrong(&v76, a4);
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
  v6 = [v5 hasHomeButton];

  v66 = v6 & 1;
  v7 = [(BuddyTransferOptionsController *)v78 proximitySetupController];
  v8 = [(ProximitySetupController *)v7 information];
  v9 = [(SASProximityInformation *)v8 hasHomeButton];

  v65 = v9 & 1;
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
    v14 = [v75 nameLabel];
    [v14 setText:v13];

    v15 = +[NSBundle mainBundle];
    v16 = SFLocalizableWAPIStringKeyForKey();
    v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:v16];
    v18 = [(NSBundle *)v15 localizedStringForKey:v17 value:&stru_10032F900 table:@"Localizable"];
    v19 = [v75 descriptionLabel];
    [v19 setText:v18];

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
    v23 = [v75 nameLabel];
    [v23 setText:v22];

    v24 = +[NSBundle mainBundle];
    v25 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRANSFER_OPTIONS_MIGRATE_OPTION_DETAIL"];
    v26 = [(NSBundle *)v24 localizedStringForKey:v25 value:&stru_10032F900 table:@"Localizable"];
    v27 = [v75 descriptionLabel];
    [v27 setText:v26];

    v28 = +[NSBundle mainBundle];
    v29 = [(NSBundle *)v28 localizedStringForKey:@"TRANSFER_OPTIONS_MIGRATE_OPTION_TIME_ESTIMATE_PREFIX" value:&stru_10032F900 table:@"Localizable"];
    v30 = [(BuddyTransferOptionsController *)v78 estimatedMigrationDuration];
    v31 = [(NSString *)v29 stringByAppendingString:v30];
    v32 = [v75 footnoteLabel];
    [v32 setText:v31];

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

    v33 = [(BuddyTransferOptionsController *)v78 miscState];
    v34 = [(BuddyMiscState *)v33 migrationManager];
    v35 = [(BuddyTargetDeviceMigrationManager *)v34 connectionInfo];
    v36 = [v35 connectionType];

    if (v36 == 1)
    {
      v37 = [v69[5] stringByReplacingOccurrencesOfString:@"Wireless" withString:@"Wired"];
      v38 = v69[5];
      v69[5] = v37;
    }
  }

  v39 = [(BuddyTransferOptionsController *)v78 view];
  v40 = [v39 traitCollection];
  v59 = _NSConcreteStackBlock;
  v60 = -1073741824;
  v61 = 0;
  v62 = sub_1001BA128;
  v63 = &unk_10032CFC0;
  v64[0] = v78;
  v64[1] = &v68;
  [v40 performAsCurrentTraitCollection:&v59];

  v41 = [(BuddyTransferOptionsController *)v78 proximitySetupController];
  v42 = [(ProximitySetupController *)v41 productVersion];
  v43 = [(NSString *)v42 hasPrefix:@"iPhone15, "];

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
  v52 = [v56 data];
  v53 = [CALayer buddy_layerForPackageWithData:v52 geometryFlipped:0 scale:3.0];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 == 1)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a4}];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  objc_initWeak(&from, v23);
  if ([v21 section])
  {
    v6 = [(BuddyTransferOptionsController *)v23 transferFlowDelegate];
    [(BuddyTransferDataFlowDelegate *)v6 prepareUserSignalToMigrate:1];

    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001BA744;
    v12 = &unk_10032AF58;
    objc_copyWeak(&v13, &from);
    [(BuddyTransferOptionsController *)v23 setDeferredMigrationWork:&v8];
    objc_destroyWeak(&v13);
  }

  else
  {
    v5 = [(BuddyTransferOptionsController *)v23 transferFlowDelegate];
    [(BuddyTransferDataFlowDelegate *)v5 prepareUserSignalToMigrate:0];

    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1001BA5C4;
    v18 = &unk_10032AF58;
    objc_copyWeak(&v19, &from);
    [(BuddyTransferOptionsController *)v23 setDeferredMigrationWork:&v14];
    objc_destroyWeak(&v19);
  }

  [location[0] deselectRowAtIndexPath:v21 animated:1];
  v7 = [(BuddyTransferOptionsController *)v23 delegate];
  [(BFFFlowItemDelegate *)v7 flowItemDone:v23];

  objc_destroyWeak(&from);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v7 = [v20 contentView];
  [v7 _setContinuousCornerRadius:10.0];

  v8 = [v20 selectedBackgroundView];
  v9 = [v8 layer];
  [v9 setMasksToBounds:1];

  v10 = [v20 contentView];
  [v10 _continuousCornerRadius];
  v12 = v11;
  v13 = [v20 selectedBackgroundView];
  [v13 _setContinuousCornerRadius:v12];

  v14 = +[UIColor secondarySystemBackgroundColor];
  v15 = [v20 contentView];
  [v15 setBackgroundColor:v14];

  v16 = +[UIColor systemGray5Color];
  v17 = [v20 selectedBackgroundView];
  [v17 setBackgroundColor:v16];

  v18 = +[UIColor clearColor];
  [v20 setBackgroundColor:v18];

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTransferOptionsController *)v13 transferFlowDelegate];
  [(BuddyTransferDataFlowDelegate *)v3 prepareUserSignalToMigrate:0];

  objc_initWeak(&from, v13);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001BAC18;
  v9 = &unk_10032AF58;
  objc_copyWeak(&v10, &from);
  [(BuddyTransferOptionsController *)v13 setDeferredMigrationWork:&v5];
  v4 = [(BuddyTransferOptionsController *)v13 delegate];
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
  v3 = [(BuddyTransferOptionsController *)v6 analyticsManager];
  v7[0] = @"choice";
  v8[0] = v5[0];
  v7[1] = @"type";
  v8[1] = @"light";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(BYAnalyticsManager *)v3 addEvent:@"com.apple.setupassistant.ios.migrationUpsell" withPayload:v4 persist:1];

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