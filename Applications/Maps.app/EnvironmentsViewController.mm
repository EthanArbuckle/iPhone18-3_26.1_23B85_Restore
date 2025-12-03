@interface EnvironmentsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (EnvironmentsViewController)initWithStyle:(int64_t)style;
- (id)_environmentForIndexPath:(id)path;
- (id)_featureForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addSimpleEnvironmentFor:(id)for atIndexPath:(id)path;
- (void)_done:(id)_done;
- (void)_toggleUseProductionURLs:(id)ls;
- (void)dealloc;
- (void)environmentsController:(id)controller didUpdateEnvironmentInfo:(id)info inSection:(int64_t)section;
- (void)environmentsController:(id)controller didUpdateEnvironmentsSection:(int64_t)section;
- (void)errorButtonTapped:(id)tapped withEvent:(id)event;
- (void)featuresControllerDidReloadFeatureList:(id)list;
- (void)mapsAuthTokenRequestDidFinish:(id)finish;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)switchToRequestedEnvironment;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EnvironmentsViewController

- (void)featuresControllerDidReloadFeatureList:(id)list
{
  if (self->_showingCustomEnvironments)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  tableView = [(EnvironmentsViewController *)self tableView];
  v4 = [NSIndexSet indexSetWithIndex:v3];
  [tableView reloadSections:v4 withRowAnimation:100];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    if (path)
    {
      pathCopy = path;
      tableView = [(EnvironmentsViewController *)self tableView];
      [tableView beginUpdates];

      v8 = [(GEOEnvironmentsController *)self->_environmentsController environmentInfosForSection:1];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      [v9 delete];
      [(GEOEnvironmentsController *)self->_environmentsController removeCustomEnvironment:v9];
      tableView2 = [(EnvironmentsViewController *)self tableView];
      v13 = pathCopy;
      v11 = [NSArray arrayWithObjects:&v13 count:1];

      [tableView2 deleteRowsAtIndexPaths:v11 withRowAnimation:100];
      tableView3 = [(EnvironmentsViewController *)self tableView];
      [tableView3 endUpdates];
    }
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  if (self->_showingCustomEnvironments && [pathCopy section] == 1)
  {
    v7 = [(GEOEnvironmentsController *)self->_environmentsController environmentInfosForSection:1];
    v8 = [v6 row];
    v9 = v8 < [v7 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[EnvironmentsViewController _isSectionForEnvironments:](self, "_isSectionForEnvironments:", [pathCopy section]);
  v6 = pathCopy;
  if (v5)
  {
    v7 = [(EnvironmentsViewController *)self _environmentForIndexPath:pathCopy];
    if ([v7 state] == 3)
    {
      lastLoadingError = [v7 lastLoadingError];
      v9 = [(EnvironmentInfoViewController *)lastLoadingError description];
      navigationController = [UIAlertController alertControllerWithTitle:@"Error" message:v9 preferredStyle:1];

      v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [navigationController addAction:v11];

      [(EnvironmentsViewController *)self presentViewController:navigationController animated:1 completion:0];
    }

    else
    {
      if ([v7 state] != 2)
      {
LABEL_10:

        v6 = pathCopy;
        goto LABEL_11;
      }

      v12 = self->_showingCustomEnvironments && [pathCopy section] == 1;
      lastLoadingError = [[EnvironmentInfoViewController alloc] initWithStyle:1 environment:v7 editable:v12];
      navigationController = [(EnvironmentsViewController *)self navigationController];
      [navigationController pushViewController:lastLoadingError animated:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_addSimpleEnvironmentFor:(id)for atIndexPath:(id)path
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F7E9DC;
  v9[3] = &unk_10165EF00;
  v9[4] = self;
  pathCopy = path;
  forCopy = for;
  v8 = [EnvironmentsCreationAlertController alertControllerWithTitle:@"Add Environment" message:@"What's the name of the environment you would like to add?" nameSelectionHandler:v9];
  [(EnvironmentsViewController *)self presentViewController:v8 animated:1 completion:0];
  [forCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v7 = +[GEOPlatform sharedPlatform];
    if ([v7 isInternalInstall])
    {
      v8 = [pathCopy row];
      v9 = [(EnvironmentsViewController *)self tableView:viewCopy numberOfRowsInSection:0]- 1;

      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (self->_showingCustomEnvironments && [pathCopy section] == 1 && (v10 = objc_msgSend(pathCopy, "row"), v10 == -[EnvironmentsViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", viewCopy, 1) - 1))
  {
    [(EnvironmentsViewController *)self _addSimpleEnvironmentFor:viewCopy atIndexPath:pathCopy];
  }

  else if (-[EnvironmentsViewController _isSectionForEnvironments:](self, "_isSectionForEnvironments:", [pathCopy section]))
  {
    v11 = [(EnvironmentsViewController *)self _environmentForIndexPath:pathCopy];
    [(EnvironmentsViewController *)self setRequestedEnvironment:v11];

    requestedEnvironment = [(EnvironmentsViewController *)self requestedEnvironment];
    state = [requestedEnvironment state];

    if (state == 2)
    {
      [(EnvironmentsViewController *)self switchToRequestedEnvironment];
    }
  }

LABEL_13:
}

- (void)switchToRequestedEnvironment
{
  v3 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v3 activeTileGroup];

  requestedEnvironment = [(EnvironmentsViewController *)self requestedEnvironment];
  resourceManifest = [requestedEnvironment resourceManifest];
  resources = [resourceManifest resources];
  dataSet = [activeTileGroup dataSet];
  v8 = [resources preferedURLSetFor:dataSet];

  v9 = GEOConfigGetString();
  if (([v9 isEqualToString:GEOMapsAuthUseProxyNever] & 1) == 0 && ((objc_msgSend(v8, "hasAuthProxyURL") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", GEOMapsAuthUseProxyAlways)))
  {
    authProxyURL = [v8 authProxyURL];
    nsURL = [authProxyURL nsURL];

    v12 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
    [v12 addMapsAuthDidFinishObserver:self forRequestType:GEOMapsAuthEnvironmentSwitch];
    requestedEnvironment2 = [(EnvironmentsViewController *)self requestedEnvironment];
    name = [requestedEnvironment2 name];
    [v12 doEnvironmentSwitchCheck:name authProxyURL:nsURL suppressNotification:1];
  }

  else
  {
    nsURL = [(EnvironmentsViewController *)self requestedEnvironment];
    [nsURL makeActive];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_showingCustomEnvironments && [pathCopy section] == 1)
  {
    v9 = [v8 row];
    if (v9 == [(EnvironmentsViewController *)self tableView:viewCopy numberOfRowsInSection:1]- 1)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      textLabel = [(EnvironmentTableViewCell *)v10 textLabel];
      [textLabel setText:@"Add Environment"];

      v12 = [UIButton buttonWithType:5];
      v13 = +[UIColor systemGreenColor];
      [v12 setTintColor:v13];

      [v12 setUserInteractionEnabled:0];
      [(EnvironmentTableViewCell *)v10 setAccessoryView:v12];
      goto LABEL_20;
    }
  }

  if (![v8 section])
  {
    v14 = +[GEOPlatform sharedPlatform];
    if ([v14 isInternalInstall])
    {
      v15 = [v8 row];
      v16 = [(EnvironmentsViewController *)self tableView:viewCopy numberOfRowsInSection:0]- 1;

      if (v15 == v16)
      {
        v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        [(EnvironmentTableViewCell *)v10 setSelectionStyle:0];
        v12 = objc_alloc_init(UILabel);
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v12 setText:@"Use Production URLs"];
        contentView = [(EnvironmentTableViewCell *)v10 contentView];
        [contentView addSubview:v12];

        v18 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v18 setOn:GEOConfigGetBOOL()];
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v18 addTarget:self action:"_toggleUseProductionURLs:" forControlEvents:4096];
        contentView2 = [(EnvironmentTableViewCell *)v10 contentView];
        [contentView2 addSubview:v18];

        contentView3 = [(EnvironmentTableViewCell *)v10 contentView];
        v21 = _NSDictionaryOfVariableBindings(@"useProductionSwitch, titleLabel", v18, v12, 0);
        v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[useProductionSwitch]-[titleLabel]", 0, 0, v21);
        [contentView3 addConstraints:v22];

        contentView4 = [(EnvironmentTableViewCell *)v10 contentView];
        contentView5 = [(EnvironmentTableViewCell *)v10 contentView];
        v25 = [NSLayoutConstraint constraintWithItem:v18 attribute:5 relatedBy:0 toItem:contentView5 attribute:17 multiplier:1.0 constant:0.0];
        [contentView4 addConstraint:v25];

        contentView6 = [(EnvironmentTableViewCell *)v10 contentView];
        contentView7 = [(EnvironmentTableViewCell *)v10 contentView];
        v28 = [NSLayoutConstraint constraintWithItem:v18 attribute:10 relatedBy:0 toItem:contentView7 attribute:10 multiplier:1.0 constant:0.0];
        [contentView6 addConstraint:v28];

        contentView8 = [(EnvironmentTableViewCell *)v10 contentView];
        contentView9 = [(EnvironmentTableViewCell *)v10 contentView];
        v31 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:contentView9 attribute:10 multiplier:1.0 constant:0.0];
        [contentView8 addConstraint:v31];

        contentView10 = [(EnvironmentTableViewCell *)v10 contentView];
        contentView11 = [(EnvironmentTableViewCell *)v10 contentView];
        v34 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:-1 toItem:contentView11 attribute:18 multiplier:1.0 constant:0.0];
        [contentView10 addConstraint:v34];

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if (-[EnvironmentsViewController _isSectionForEnvironments:](self, "_isSectionForEnvironments:", [v8 section]))
  {
    v12 = [(EnvironmentsViewController *)self _environmentForIndexPath:v8];
    if (v12)
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"EnvironmentCell"];
      if (!v10)
      {
        v10 = [[EnvironmentTableViewCell alloc] initWithReuseIdentifier:@"EnvironmentCell"];
        errorButton = [(EnvironmentTableViewCell *)v10 errorButton];
        [errorButton addTarget:self action:"errorButtonTapped:withEvent:" forControlEvents:64];
      }

      displayName = [v12 displayName];
      textLabel2 = [(EnvironmentTableViewCell *)v10 textLabel];
      [textLabel2 setText:displayName];

      releaseName = [v12 releaseName];
      detailTextLabel = [(EnvironmentTableViewCell *)v10 detailTextLabel];
      [detailTextLabel setText:releaseName];

      [(EnvironmentTableViewCell *)v10 configureFromEnvironment:v12];
      goto LABEL_20;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v12 = [(EnvironmentsViewController *)self _featureForIndexPath:v8];
  if (!v12)
  {
    goto LABEL_19;
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"FeatureCell"];
  if (!v10)
  {
    v10 = [[FeatureTableViewCell alloc] initWithReuseIdentifier:@"FeatureCell"];
  }

  [(EnvironmentTableViewCell *)v10 configureFromFeature:v12];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100F7F4C4;
  v41[3] = &unk_101661B18;
  v42 = v12;
  [(EnvironmentTableViewCell *)v10 setToggleFeatureBlock:v41];

LABEL_20:

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 2)
  {
    return @"If you have questions about features, please contact Maps Feature Delivery (Maps-Feature-Delivery@group.apple.com).";
  }

  else
  {
    return &stru_1016631F0;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(EnvironmentsViewController *)self _isSectionForEnvironments:section])
  {
    features = [(GEOEnvironmentsController *)self->_environmentsController environmentInfosForSection:section];
    v7 = [features count];
    if (section)
    {
      isInternalInstall = section == 1 && self->_showingCustomEnvironments;
    }

    else
    {
      v10 = +[GEOPlatform sharedPlatform];
      isInternalInstall = [v10 isInternalInstall];
    }

    v9 = &v7[isInternalInstall];
  }

  else
  {
    features = [(GEOFeaturesController *)self->_featuresController features];
    v9 = [features count];
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_showingCustomEnvironments)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)environmentsController:(id)controller didUpdateEnvironmentInfo:(id)info inSection:(int64_t)section
{
  environmentsController = self->_environmentsController;
  infoCopy = info;
  v9 = [(GEOEnvironmentsController *)environmentsController environmentInfosForSection:section];
  v10 = [v9 indexOfObject:infoCopy];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(EnvironmentsViewController *)self tableView];
    v12 = [NSIndexPath indexPathForRow:v10 inSection:section];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [tableView reloadRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (void)environmentsController:(id)controller didUpdateEnvironmentsSection:(int64_t)section
{
  tableView = [(EnvironmentsViewController *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:section];
  [tableView reloadSections:v5 withRowAnimation:100];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == GeoServicesConfig_ClientAuthFeatureFlagsStateInfo && key.var1 == *(&GeoServicesConfig_ClientAuthFeatureFlagsStateInfo + 1))
  {
    tableView = [(EnvironmentsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)mapsAuthTokenRequestDidFinish:(id)finish
{
  finishCopy = finish;
  userInfo = [finishCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:GEOMapsAuthRequestTypeKey];

  v7 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v7 removeMapsAuthDidFinishObserver:self forRequestType:v6];

  userInfo2 = [finishCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:GEOMapsAuthSuccessKey];
  bOOLValue = [v9 BOOLValue];

  if (!bOOLValue)
  {
    if (![v6 isEqualToString:GEOMapsAuthEnvironmentSwitch])
    {
      goto LABEL_34;
    }

    userInfo3 = [finishCopy userInfo];
    v12 = [userInfo3 objectForKeyedSubscript:GEOMapsAuthFailReasonKey];
    integerValue = [v12 integerValue];

    if (integerValue != 4 && !self->_hasAttemptedAuth)
    {
      self->_hasAttemptedAuth = 1;
      v19 = +[GEOResourceManifestManager modernManager];
      activeTileGroup = [v19 activeTileGroup];

      requestedEnvironment = [(EnvironmentsViewController *)self requestedEnvironment];
      resourceManifest = [requestedEnvironment resourceManifest];
      resources = [resourceManifest resources];
      dataSet = [activeTileGroup dataSet];
      v24 = [resources preferedURLSetFor:dataSet];

      v25 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
      [v25 addMapsAuthDidFinishObserver:self forRequestType:GEOMapsAuthACToken];

      authProxyURL = [(__CFString *)v24 authProxyURL];
      nsURL = [authProxyURL nsURL];
      [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:self withProxyURL:nsURL];

LABEL_33:
      goto LABEL_34;
    }

    userInfo4 = [finishCopy userInfo];
    activeTileGroup = [userInfo4 objectForKeyedSubscript:GEOMapsAuthEnvironmentKey];

    if (integerValue <= 2)
    {
      if (integerValue <= 0)
      {
        if (integerValue != -1)
        {
          v16 = @"Authentication failed for an unknown reason";
          v17 = integerValue == 0;
          goto LABEL_22;
        }

        goto LABEL_27;
      }

      if (integerValue != 1)
      {
        v17 = integerValue == 2;
        v16 = @"Invalid Authentication Session (MRT)";
LABEL_22:
        if (v17)
        {
          v24 = v16;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_32;
      }

      v24 = @"Invalid Authentication Session (MAT)";
      goto LABEL_32;
    }

    if (integerValue > 4)
    {
      if (integerValue != 5)
      {
        v24 = 0;
        if (integerValue == 6)
        {
LABEL_27:
          v24 = @"Invalid error";
        }

LABEL_32:
        v28 = [UIAlertController alertControllerWithTitle:@"Environment Auth Failed" message:v24 preferredStyle:1];
        v29 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
        [v28 addAction:v29];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100F81328;
        v30[3] = &unk_101661B18;
        v30[4] = self;
        [(EnvironmentsViewController *)self presentViewController:v28 animated:1 completion:v30];

        goto LABEL_33;
      }

      [NSString stringWithFormat:@"The environment %@ does not have the proper URL(s)", activeTileGroup];
    }

    else
    {
      if (integerValue == 3)
      {
        v24 = @"You do not have permissions to access this environment";
        goto LABEL_32;
      }

      [NSString stringWithFormat:@"You are missing the required group access for %@. You can request access and try again when granted access.", activeTileGroup];
    }
    v24 = ;
    goto LABEL_32;
  }

  if (![v6 isEqualToString:GEOMapsAuthACToken])
  {
    if ([v6 isEqualToString:GEOMapsAuthEnvironmentSwitch])
    {
      requestedEnvironment2 = [(EnvironmentsViewController *)self requestedEnvironment];
      [requestedEnvironment2 makeActive];
    }

    else
    {
      if (![v6 isEqualToString:GEOMapsAuthFeatureFlags])
      {
        goto LABEL_34;
      }

      requestedEnvironment2 = [(EnvironmentsViewController *)self tableView];
      [requestedEnvironment2 reloadData];
    }

    goto LABEL_34;
  }

  [(EnvironmentsViewController *)self switchToRequestedEnvironment];
LABEL_34:
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  v4 = [@"com.apple.geoservices" stringByAppendingString:@".siri_data_changed"];
  notify_post([v4 UTF8String]);

  tableView = [(EnvironmentsViewController *)self tableView];
  [tableView reloadData];
}

- (void)_toggleUseProductionURLs:(id)ls
{
  [ls isOn];
  GEOConfigSetSyncBOOL();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  v3 = +[GEONetworkDefaults sharedNetworkDefaults];
  [v3 updateNetworkDefaults:0];
}

- (void)errorButtonTapped:(id)tapped withEvent:(id)event
{
  eventCopy = event;
  tappedCopy = tapped;
  tableView = [(EnvironmentsViewController *)self tableView];
  v9 = [eventCopy touchesForView:tappedCopy];

  anyObject = [v9 anyObject];
  tableView2 = [(EnvironmentsViewController *)self tableView];
  [anyObject locationInView:tableView2];
  v13 = [tableView indexPathForRowAtPoint:?];

  if (v13)
  {
    tableView3 = [(EnvironmentsViewController *)self tableView];
    [(EnvironmentsViewController *)self tableView:tableView3 accessoryButtonTappedForRowWithIndexPath:v13];
  }
}

- (id)_featureForIndexPath:(id)path
{
  featuresController = self->_featuresController;
  pathCopy = path;
  features = [(GEOFeaturesController *)featuresController features];
  v6 = [pathCopy row];

  v7 = [features objectAtIndexedSubscript:v6];

  return v7;
}

- (id)_environmentForIndexPath:(id)path
{
  environmentsController = self->_environmentsController;
  pathCopy = path;
  v5 = -[GEOEnvironmentsController environmentInfosForSection:](environmentsController, "environmentInfosForSection:", [pathCopy section]);
  v6 = [pathCopy row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[GEOResourceManifestManager modernManager];
  [v4 removeTileGroupObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v9 viewWillAppear:appear];
  self->_hasAttemptedAuth = 0;
  [(GEOEnvironmentsController *)self->_environmentsController reloadEnvironments];
  tableView = [(EnvironmentsViewController *)self tableView];
  [tableView reloadData];

  presentingViewController = [(EnvironmentsViewController *)self presentingViewController];

  if (presentingViewController)
  {
    navigationItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done:"];
    navigationItem = [(EnvironmentsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2];
  }

  else
  {
    navigationItem2 = [(EnvironmentsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }

  v8 = +[GEOResourceManifestManager modernManager];
  [v8 addTileGroupObserver:self queue:&_dispatch_main_q];
}

- (void)_done:(id)_done
{
  presentingViewController = [(EnvironmentsViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  [(GEOEnvironmentsController *)self->_environmentsController setDelegate:0];
  v3.receiver = self;
  v3.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v3 dealloc];
}

- (EnvironmentsViewController)initWithStyle:(int64_t)style
{
  v15.receiver = self;
  v15.super_class = EnvironmentsViewController;
  v3 = [(EnvironmentsViewController *)&v15 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(EnvironmentsViewController *)v3 setTitle:@"Environments"];
    tableView = [(EnvironmentsViewController *)v4 tableView];
    [tableView setRowHeight:UITableViewAutomaticDimension];

    tableView2 = [(EnvironmentsViewController *)v4 tableView];
    [tableView2 setSectionFooterHeight:UITableViewAutomaticDimension];

    tableView3 = [(EnvironmentsViewController *)v4 tableView];
    [tableView3 setSectionHeaderHeight:UITableViewAutomaticDimension];

    v8 = +[NSUserDefaults standardUserDefaults];
    v4->_showingCustomEnvironments = [v8 BOOLForKey:@"EnableCustomEnvironmentsInSettings"];

    v9 = [[GEOEnvironmentsController alloc] initEnablingCustomEnvironments:v4->_showingCustomEnvironments];
    environmentsController = v4->_environmentsController;
    v4->_environmentsController = v9;

    [(GEOEnvironmentsController *)v4->_environmentsController setDelegate:v4];
    v11 = objc_alloc_init(GEOFeaturesController);
    featuresController = v4->_featuresController;
    v4->_featuresController = v11;

    [(GEOFeaturesController *)v4->_featuresController setDelegate:v4];
    _GEOConfigAddDelegateListenerForKey();
    v13 = v4;
  }

  return v4;
}

@end