@interface EnvironmentsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (EnvironmentsViewController)initWithStyle:(int64_t)a3;
- (id)_environmentForIndexPath:(id)a3;
- (id)_featureForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addSimpleEnvironmentFor:(id)a3 atIndexPath:(id)a4;
- (void)_done:(id)a3;
- (void)_toggleUseProductionURLs:(id)a3;
- (void)dealloc;
- (void)environmentsController:(id)a3 didUpdateEnvironmentInfo:(id)a4 inSection:(int64_t)a5;
- (void)environmentsController:(id)a3 didUpdateEnvironmentsSection:(int64_t)a4;
- (void)errorButtonTapped:(id)a3 withEvent:(id)a4;
- (void)featuresControllerDidReloadFeatureList:(id)a3;
- (void)mapsAuthTokenRequestDidFinish:(id)a3;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
- (void)switchToRequestedEnvironment;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EnvironmentsViewController

- (void)featuresControllerDidReloadFeatureList:(id)a3
{
  if (self->_showingCustomEnvironments)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = [(EnvironmentsViewController *)self tableView];
  v4 = [NSIndexSet indexSetWithIndex:v3];
  [v5 reloadSections:v4 withRowAnimation:100];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    if (a5)
    {
      v6 = a5;
      v7 = [(EnvironmentsViewController *)self tableView];
      [v7 beginUpdates];

      v8 = [(GEOEnvironmentsController *)self->_environmentsController environmentInfosForSection:1];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      [v9 delete];
      [(GEOEnvironmentsController *)self->_environmentsController removeCustomEnvironment:v9];
      v10 = [(EnvironmentsViewController *)self tableView];
      v13 = v6;
      v11 = [NSArray arrayWithObjects:&v13 count:1];

      [v10 deleteRowsAtIndexPaths:v11 withRowAnimation:100];
      v12 = [(EnvironmentsViewController *)self tableView];
      [v12 endUpdates];
    }
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_showingCustomEnvironments && [v5 section] == 1)
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

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v13 = a4;
  v5 = -[EnvironmentsViewController _isSectionForEnvironments:](self, "_isSectionForEnvironments:", [v13 section]);
  v6 = v13;
  if (v5)
  {
    v7 = [(EnvironmentsViewController *)self _environmentForIndexPath:v13];
    if ([v7 state] == 3)
    {
      v8 = [v7 lastLoadingError];
      v9 = [(EnvironmentInfoViewController *)v8 description];
      v10 = [UIAlertController alertControllerWithTitle:@"Error" message:v9 preferredStyle:1];

      v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v10 addAction:v11];

      [(EnvironmentsViewController *)self presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      if ([v7 state] != 2)
      {
LABEL_10:

        v6 = v13;
        goto LABEL_11;
      }

      v12 = self->_showingCustomEnvironments && [v13 section] == 1;
      v8 = [[EnvironmentInfoViewController alloc] initWithStyle:1 environment:v7 editable:v12];
      v10 = [(EnvironmentsViewController *)self navigationController];
      [v10 pushViewController:v8 animated:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_addSimpleEnvironmentFor:(id)a3 atIndexPath:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F7E9DC;
  v9[3] = &unk_10165EF00;
  v9[4] = self;
  v6 = a4;
  v7 = a3;
  v8 = [EnvironmentsCreationAlertController alertControllerWithTitle:@"Add Environment" message:@"What's the name of the environment you would like to add?" nameSelectionHandler:v9];
  [(EnvironmentsViewController *)self presentViewController:v8 animated:1 completion:0];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = +[GEOPlatform sharedPlatform];
    if ([v7 isInternalInstall])
    {
      v8 = [v6 row];
      v9 = [(EnvironmentsViewController *)self tableView:v14 numberOfRowsInSection:0]- 1;

      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (self->_showingCustomEnvironments && [v6 section] == 1 && (v10 = objc_msgSend(v6, "row"), v10 == -[EnvironmentsViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v14, 1) - 1))
  {
    [(EnvironmentsViewController *)self _addSimpleEnvironmentFor:v14 atIndexPath:v6];
  }

  else if (-[EnvironmentsViewController _isSectionForEnvironments:](self, "_isSectionForEnvironments:", [v6 section]))
  {
    v11 = [(EnvironmentsViewController *)self _environmentForIndexPath:v6];
    [(EnvironmentsViewController *)self setRequestedEnvironment:v11];

    v12 = [(EnvironmentsViewController *)self requestedEnvironment];
    v13 = [v12 state];

    if (v13 == 2)
    {
      [(EnvironmentsViewController *)self switchToRequestedEnvironment];
    }
  }

LABEL_13:
}

- (void)switchToRequestedEnvironment
{
  v3 = +[GEOResourceManifestManager modernManager];
  v15 = [v3 activeTileGroup];

  v4 = [(EnvironmentsViewController *)self requestedEnvironment];
  v5 = [v4 resourceManifest];
  v6 = [v5 resources];
  v7 = [v15 dataSet];
  v8 = [v6 preferedURLSetFor:v7];

  v9 = GEOConfigGetString();
  if (([v9 isEqualToString:GEOMapsAuthUseProxyNever] & 1) == 0 && ((objc_msgSend(v8, "hasAuthProxyURL") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", GEOMapsAuthUseProxyAlways)))
  {
    v11 = [v8 authProxyURL];
    v10 = [v11 nsURL];

    v12 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
    [v12 addMapsAuthDidFinishObserver:self forRequestType:GEOMapsAuthEnvironmentSwitch];
    v13 = [(EnvironmentsViewController *)self requestedEnvironment];
    v14 = [v13 name];
    [v12 doEnvironmentSwitchCheck:v14 authProxyURL:v10 suppressNotification:1];
  }

  else
  {
    v10 = [(EnvironmentsViewController *)self requestedEnvironment];
    [v10 makeActive];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_showingCustomEnvironments && [v7 section] == 1)
  {
    v9 = [v8 row];
    if (v9 == [(EnvironmentsViewController *)self tableView:v6 numberOfRowsInSection:1]- 1)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v11 = [(EnvironmentTableViewCell *)v10 textLabel];
      [v11 setText:@"Add Environment"];

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
      v16 = [(EnvironmentsViewController *)self tableView:v6 numberOfRowsInSection:0]- 1;

      if (v15 == v16)
      {
        v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        [(EnvironmentTableViewCell *)v10 setSelectionStyle:0];
        v12 = objc_alloc_init(UILabel);
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v12 setText:@"Use Production URLs"];
        v17 = [(EnvironmentTableViewCell *)v10 contentView];
        [v17 addSubview:v12];

        v18 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v18 setOn:GEOConfigGetBOOL()];
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v18 addTarget:self action:"_toggleUseProductionURLs:" forControlEvents:4096];
        v19 = [(EnvironmentTableViewCell *)v10 contentView];
        [v19 addSubview:v18];

        v20 = [(EnvironmentTableViewCell *)v10 contentView];
        v21 = _NSDictionaryOfVariableBindings(@"useProductionSwitch, titleLabel", v18, v12, 0);
        v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[useProductionSwitch]-[titleLabel]", 0, 0, v21);
        [v20 addConstraints:v22];

        v23 = [(EnvironmentTableViewCell *)v10 contentView];
        v24 = [(EnvironmentTableViewCell *)v10 contentView];
        v25 = [NSLayoutConstraint constraintWithItem:v18 attribute:5 relatedBy:0 toItem:v24 attribute:17 multiplier:1.0 constant:0.0];
        [v23 addConstraint:v25];

        v26 = [(EnvironmentTableViewCell *)v10 contentView];
        v27 = [(EnvironmentTableViewCell *)v10 contentView];
        v28 = [NSLayoutConstraint constraintWithItem:v18 attribute:10 relatedBy:0 toItem:v27 attribute:10 multiplier:1.0 constant:0.0];
        [v26 addConstraint:v28];

        v29 = [(EnvironmentTableViewCell *)v10 contentView];
        v30 = [(EnvironmentTableViewCell *)v10 contentView];
        v31 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v30 attribute:10 multiplier:1.0 constant:0.0];
        [v29 addConstraint:v31];

        v32 = [(EnvironmentTableViewCell *)v10 contentView];
        v33 = [(EnvironmentTableViewCell *)v10 contentView];
        v34 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:-1 toItem:v33 attribute:18 multiplier:1.0 constant:0.0];
        [v32 addConstraint:v34];

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
      v10 = [v6 dequeueReusableCellWithIdentifier:@"EnvironmentCell"];
      if (!v10)
      {
        v10 = [[EnvironmentTableViewCell alloc] initWithReuseIdentifier:@"EnvironmentCell"];
        v35 = [(EnvironmentTableViewCell *)v10 errorButton];
        [v35 addTarget:self action:"errorButtonTapped:withEvent:" forControlEvents:64];
      }

      v36 = [v12 displayName];
      v37 = [(EnvironmentTableViewCell *)v10 textLabel];
      [v37 setText:v36];

      v38 = [v12 releaseName];
      v39 = [(EnvironmentTableViewCell *)v10 detailTextLabel];
      [v39 setText:v38];

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

  v10 = [v6 dequeueReusableCellWithIdentifier:@"FeatureCell"];
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 2)
  {
    return @"If you have questions about features, please contact Maps Feature Delivery (Maps-Feature-Delivery@group.apple.com).";
  }

  else
  {
    return &stru_1016631F0;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(EnvironmentsViewController *)self _isSectionForEnvironments:a4])
  {
    v6 = [(GEOEnvironmentsController *)self->_environmentsController environmentInfosForSection:a4];
    v7 = [v6 count];
    if (a4)
    {
      v8 = a4 == 1 && self->_showingCustomEnvironments;
    }

    else
    {
      v10 = +[GEOPlatform sharedPlatform];
      v8 = [v10 isInternalInstall];
    }

    v9 = &v7[v8];
  }

  else
  {
    v6 = [(GEOFeaturesController *)self->_featuresController features];
    v9 = [v6 count];
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (void)environmentsController:(id)a3 didUpdateEnvironmentInfo:(id)a4 inSection:(int64_t)a5
{
  environmentsController = self->_environmentsController;
  v8 = a4;
  v9 = [(GEOEnvironmentsController *)environmentsController environmentInfosForSection:a5];
  v10 = [v9 indexOfObject:v8];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(EnvironmentsViewController *)self tableView];
    v12 = [NSIndexPath indexPathForRow:v10 inSection:a5];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v11 reloadRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (void)environmentsController:(id)a3 didUpdateEnvironmentsSection:(int64_t)a4
{
  v6 = [(EnvironmentsViewController *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:a4];
  [v6 reloadSections:v5 withRowAnimation:100];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == GeoServicesConfig_ClientAuthFeatureFlagsStateInfo && a3.var1 == *(&GeoServicesConfig_ClientAuthFeatureFlagsStateInfo + 1))
  {
    v5 = [(EnvironmentsViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)mapsAuthTokenRequestDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:GEOMapsAuthRequestTypeKey];

  v7 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v7 removeMapsAuthDidFinishObserver:self forRequestType:v6];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:GEOMapsAuthSuccessKey];
  v10 = [v9 BOOLValue];

  if (!v10)
  {
    if (![v6 isEqualToString:GEOMapsAuthEnvironmentSwitch])
    {
      goto LABEL_34;
    }

    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:GEOMapsAuthFailReasonKey];
    v13 = [v12 integerValue];

    if (v13 != 4 && !self->_hasAttemptedAuth)
    {
      self->_hasAttemptedAuth = 1;
      v19 = +[GEOResourceManifestManager modernManager];
      v15 = [v19 activeTileGroup];

      v20 = [(EnvironmentsViewController *)self requestedEnvironment];
      v21 = [v20 resourceManifest];
      v22 = [v21 resources];
      v23 = [v15 dataSet];
      v24 = [v22 preferedURLSetFor:v23];

      v25 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
      [v25 addMapsAuthDidFinishObserver:self forRequestType:GEOMapsAuthACToken];

      v26 = [(__CFString *)v24 authProxyURL];
      v27 = [v26 nsURL];
      [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:self withProxyURL:v27];

LABEL_33:
      goto LABEL_34;
    }

    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:GEOMapsAuthEnvironmentKey];

    if (v13 <= 2)
    {
      if (v13 <= 0)
      {
        if (v13 != -1)
        {
          v16 = @"Authentication failed for an unknown reason";
          v17 = v13 == 0;
          goto LABEL_22;
        }

        goto LABEL_27;
      }

      if (v13 != 1)
      {
        v17 = v13 == 2;
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

    if (v13 > 4)
    {
      if (v13 != 5)
      {
        v24 = 0;
        if (v13 == 6)
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

      [NSString stringWithFormat:@"The environment %@ does not have the proper URL(s)", v15];
    }

    else
    {
      if (v13 == 3)
      {
        v24 = @"You do not have permissions to access this environment";
        goto LABEL_32;
      }

      [NSString stringWithFormat:@"You are missing the required group access for %@. You can request access and try again when granted access.", v15];
    }
    v24 = ;
    goto LABEL_32;
  }

  if (![v6 isEqualToString:GEOMapsAuthACToken])
  {
    if ([v6 isEqualToString:GEOMapsAuthEnvironmentSwitch])
    {
      v18 = [(EnvironmentsViewController *)self requestedEnvironment];
      [v18 makeActive];
    }

    else
    {
      if (![v6 isEqualToString:GEOMapsAuthFeatureFlags])
      {
        goto LABEL_34;
      }

      v18 = [(EnvironmentsViewController *)self tableView];
      [v18 reloadData];
    }

    goto LABEL_34;
  }

  [(EnvironmentsViewController *)self switchToRequestedEnvironment];
LABEL_34:
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v4 = [@"com.apple.geoservices" stringByAppendingString:@".siri_data_changed"];
  notify_post([v4 UTF8String]);

  v5 = [(EnvironmentsViewController *)self tableView];
  [v5 reloadData];
}

- (void)_toggleUseProductionURLs:(id)a3
{
  [a3 isOn];
  GEOConfigSetSyncBOOL();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  _GEOConfigRemoveValueSync();
  v3 = +[GEONetworkDefaults sharedNetworkDefaults];
  [v3 updateNetworkDefaults:0];
}

- (void)errorButtonTapped:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EnvironmentsViewController *)self tableView];
  v9 = [v6 touchesForView:v7];

  v10 = [v9 anyObject];
  v11 = [(EnvironmentsViewController *)self tableView];
  [v10 locationInView:v11];
  v13 = [v8 indexPathForRowAtPoint:?];

  if (v13)
  {
    v12 = [(EnvironmentsViewController *)self tableView];
    [(EnvironmentsViewController *)self tableView:v12 accessoryButtonTappedForRowWithIndexPath:v13];
  }
}

- (id)_featureForIndexPath:(id)a3
{
  featuresController = self->_featuresController;
  v4 = a3;
  v5 = [(GEOFeaturesController *)featuresController features];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (id)_environmentForIndexPath:(id)a3
{
  environmentsController = self->_environmentsController;
  v4 = a3;
  v5 = -[GEOEnvironmentsController environmentInfosForSection:](environmentsController, "environmentInfosForSection:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v5 viewWillDisappear:a3];
  v4 = +[GEOResourceManifestManager modernManager];
  [v4 removeTileGroupObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v9 viewWillAppear:a3];
  self->_hasAttemptedAuth = 0;
  [(GEOEnvironmentsController *)self->_environmentsController reloadEnvironments];
  v4 = [(EnvironmentsViewController *)self tableView];
  [v4 reloadData];

  v5 = [(EnvironmentsViewController *)self presentingViewController];

  if (v5)
  {
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done:"];
    v7 = [(EnvironmentsViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = [(EnvironmentsViewController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }

  v8 = +[GEOResourceManifestManager modernManager];
  [v8 addTileGroupObserver:self queue:&_dispatch_main_q];
}

- (void)_done:(id)a3
{
  v3 = [(EnvironmentsViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  [(GEOEnvironmentsController *)self->_environmentsController setDelegate:0];
  v3.receiver = self;
  v3.super_class = EnvironmentsViewController;
  [(EnvironmentsViewController *)&v3 dealloc];
}

- (EnvironmentsViewController)initWithStyle:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = EnvironmentsViewController;
  v3 = [(EnvironmentsViewController *)&v15 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(EnvironmentsViewController *)v3 setTitle:@"Environments"];
    v5 = [(EnvironmentsViewController *)v4 tableView];
    [v5 setRowHeight:UITableViewAutomaticDimension];

    v6 = [(EnvironmentsViewController *)v4 tableView];
    [v6 setSectionFooterHeight:UITableViewAutomaticDimension];

    v7 = [(EnvironmentsViewController *)v4 tableView];
    [v7 setSectionHeaderHeight:UITableViewAutomaticDimension];

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