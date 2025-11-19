@interface MapsSettingsEVRoutingController
- (BOOL)hasInstalledApplications;
- (MapsSettingsEVRoutingController)delegate;
- (MapsSettingsEVRoutingController)init;
- (NSMutableArray)disabledAppIdentifiers;
- (id)_extensionEnabled:(id)a3;
- (id)applicationForIdentifier:(id)a3;
- (id)specifiers;
- (void)OEMAppsUpdated:(id)a3;
- (void)_consumeUpdatedGarage:(id)a3;
- (void)_saveState;
- (void)_setExtensionEnabled:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)setApplications:(id)a3;
- (void)setElectricVehicleCount:(unint64_t)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation MapsSettingsEVRoutingController

- (MapsSettingsEVRoutingController)init
{
  v12.receiver = self;
  v12.super_class = MapsSettingsEVRoutingController;
  v2 = [(MapsSettingsEVRoutingController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    applicationFinder = v2->_applicationFinder;
    v2->_applicationFinder = v3;

    [(VGOEMApplicationFinder *)v2->_applicationFinder setDelegate:v2];
    [(VGOEMApplicationFinder *)v2->_applicationFinder findOEMApplications];
    v5 = +[VGVirtualGarageService sharedService];
    [v5 openForClient:v2];

    v6 = +[VGVirtualGarageService sharedService];
    [v6 registerObserver:v2];

    objc_initWeak(&location, v2);
    v7 = +[VGVirtualGarageService sharedService];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_109B8;
    v9[3] = &unk_7FA88;
    objc_copyWeak(&v10, &location);
    [v7 virtualGarageGetGarageWithReply:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 unregisterObserver:self];

  v4 = +[VGVirtualGarageService sharedService];
  [v4 closeForClient:self];

  v5.receiver = self;
  v5.super_class = MapsSettingsEVRoutingController;
  [(MapsSettingsEVRoutingController *)&v5 dealloc];
}

- (void)setApplications:(id)a3
{
  v4 = a3;
  applications = self->_applications;
  v12 = v4;
  v6 = applications;
  if (v12 | v6)
  {
    v7 = v6;
    v8 = [v12 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      v9 = [v12 sortedArrayUsingComparator:&stru_7FAC8];
      v10 = self->_applications;
      self->_applications = v9;

      v11 = [(MapsSettingsEVRoutingController *)self delegate];
      [v11 didUpdateEVApplications:self->_applications];

      if ([(MapsSettingsEVRoutingController *)self isViewLoaded])
      {
        [(MapsSettingsEVRoutingController *)self reloadSpecifiers];
      }
    }
  }

  _objc_release_x1();
}

- (void)setElectricVehicleCount:(unint64_t)a3
{
  if (self->_electricVehicleCount != a3)
  {
    self->_electricVehicleCount = a3;
    v5 = [(MapsSettingsEVRoutingController *)self delegate];
    [v5 didUpdateElectricVehicleCount:a3];

    if ([(MapsSettingsEVRoutingController *)self isViewLoaded])
    {

      [(MapsSettingsEVRoutingController *)self reloadSpecifiers];
    }
  }
}

- (BOOL)hasInstalledApplications
{
  v2 = [(MapsSettingsEVRoutingController *)self applications];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v5 = [v4 localizedStringForKey:@"EV Routing Extensions Group Title [Settings]" value:@"localized string not found" table:0];
  v6 = v3;
  v7 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v8 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v9 = [v8 localizedStringForKey:@"EV Routing Extensions Footer [Settings]" value:@"localized string not found" table:0];
  [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  v22 = v7;
  [v6 addObject:v7];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MapsSettingsEVRoutingController *)self applications];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = PSIconImageKey;
    v25 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        v13 = v6;
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 identifier];
        v16 = [v14 applicationRecord];
        v17 = [v16 localizedName];
        v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setExtensionEnabled:specifier:" get:"_extensionEnabled:" detail:0 cell:6 edit:0];

        v19 = +[UIScreen mainScreen];
        [v19 scale];
        v20 = [UIImage _applicationIconImageForBundleIdentifier:v15 format:0 scale:?];

        [v18 setProperty:v20 forKey:v24];
        [v18 setIdentifier:v15];
        v6 = v13;
        [v13 addObject:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(MapsSettingsEVRoutingController *)self setSpecifiers:v6];

  return v6;
}

- (NSMutableArray)disabledAppIdentifiers
{
  disabledAppIdentifiers = self->_disabledAppIdentifiers;
  if (!disabledAppIdentifiers)
  {
    v4 = GEOConfigGetString();
    v5 = [v4 componentsSeparatedByString:{@", "}];
    v6 = [v5 mutableCopy];
    v7 = self->_disabledAppIdentifiers;
    self->_disabledAppIdentifiers = v6;

    disabledAppIdentifiers = self->_disabledAppIdentifiers;
  }

  return disabledAppIdentifiers;
}

- (void)_saveState
{
  v3 = [(MapsSettingsEVRoutingController *)self disabledAppIdentifiers];
  v2 = [v3 componentsJoinedByString:{@", "}];
  GEOConfigSetString();
}

- (void)_setExtensionEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = MAPSGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Setting application %@, enabled: %@", &v12, 0x16u);
  }

  v9 = [v6 BOOLValue];
  v10 = [(MapsSettingsEVRoutingController *)self disabledAppIdentifiers];
  v11 = v10;
  if (v9)
  {
    [v10 removeObject:v7];
  }

  else
  {
    [v10 addObject:v7];
  }

  [(MapsSettingsEVRoutingController *)self _saveState];
}

- (id)_extensionEnabled:(id)a3
{
  v4 = a3;
  v5 = [(MapsSettingsEVRoutingController *)self disabledAppIdentifiers];
  v6 = [v4 identifier];

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 containsObject:v6] ^ 1);

  return v7;
}

- (id)applicationForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MapsSettingsEVRoutingController *)self applications];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)OEMAppsUpdated:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11578;
  v4[3] = &unk_7FAF0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_consumeUpdatedGarage:(id)a3
{
  v5 = [a3 vehicles];
  v4 = MapsFilter(v5, &stru_7FB30);
  -[MapsSettingsEVRoutingController setElectricVehicleCount:](self, "setElectricVehicleCount:", [v4 count]);
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11694;
  v4[3] = &unk_7FAF0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (MapsSettingsEVRoutingController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end