@interface ENUIRegionManagementViewController
- (ENUIRegionManagementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_activeRegion;
- (id)_addRegionSpecifiers;
- (id)_authorizedRegions;
- (id)_availableRegions;
- (id)specifiers;
- (id)specifiersForHealthAgencyModels:(id)models;
- (void)didTapAddRegion:(id)region;
@end

@implementation ENUIRegionManagementViewController

- (ENUIRegionManagementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = ENUIRegionManagementViewController;
  v4 = [(ENUIRegionManagementViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = ENUILocalizedString();
    [(ENUIRegionManagementViewController *)v4 setTitle:v5];

    v6 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    [(ENUIRegionManagementViewController *)v4 setAdapter:v6];

    v7 = v4;
  }

  return v4;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    _activeRegion = [(ENUIRegionManagementViewController *)self _activeRegion];
    [v6 addObjectsFromArray:_activeRegion];

    v8 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel authorizedRegions];
    v9 = [v8 count];

    if (v9)
    {
      _authorizedRegions = [(ENUIRegionManagementViewController *)self _authorizedRegions];
      [v6 addObjectsFromArray:_authorizedRegions];
    }

    v11 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel availableRegions];
    v12 = [v11 count];

    if (v12)
    {
      _availableRegions = [(ENUIRegionManagementViewController *)self _availableRegions];
      [v6 addObjectsFromArray:_availableRegions];
    }

    _addRegionSpecifiers = [(ENUIRegionManagementViewController *)self _addRegionSpecifiers];
    [v6 addObjectsFromArray:_addRegionSpecifiers];

    v15 = [v6 copy];
    v16 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v15;

    v4 = *&self->PSListController_opaque[v2];
  }

  return v4;
}

- (id)_activeRegion
{
  v3 = ENUILocalizedString();
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

  if (v5)
  {
    v6 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
    v15 = v6;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
    v8 = [(ENUIRegionManagementViewController *)self specifiersForHealthAgencyModels:v7];
    firstObject = [v8 firstObject];

    v10 = ENUILocalizedString();
    [v4 setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];
  }

  else
  {
    v11 = ENUILocalizedString();
    firstObject = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [firstObject setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
  }

  v14[0] = v4;
  v14[1] = firstObject;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (id)_authorizedRegions
{
  v3 = ENUILocalizedString();
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = ENUILocalizedString();
  [v4 setObject:v5 forKeyedSubscript:PSFooterTextGroupKey];

  v6 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel authorizedRegions];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count] + 1);

  [v7 addObject:v4];
  v8 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel authorizedRegions];
  v9 = [(ENUIRegionManagementViewController *)self specifiersForHealthAgencyModels:v8];
  [v7 addObjectsFromArray:v9];

  v10 = [v7 copy];

  return v10;
}

- (id)_availableRegions
{
  v3 = ENUILocalizedString();
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel availableRegions];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count] + 1);

  [v6 addObject:v4];
  v7 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel availableRegions];
  v8 = [(ENUIRegionManagementViewController *)self specifiersForHealthAgencyModels:v7];
  [v6 addObjectsFromArray:v8];

  v9 = [v6 copy];

  return v9;
}

- (id)_addRegionSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"add-region-group"];
  v4 = ENUILocalizedString();
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:"didTapAddRegion:"];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)didTapAddRegion:(id)region
{
  regionCopy = region;
  v5 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  objc_initWeak(&location, self);
  v6 = +[ENUIViewControllerFactory sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1A84;
  v8[3] = &unk_2C6C0;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v7 = [v6 createOnboardingStackForAgencyModel:0 exposureManager:v5 fromAvailabilityAlert:0 fromDeepLink:0 subsequentFlow:0 completion:v8];

  [(ENUIRegionManagementViewController *)self presentViewController:v7 animated:1 completion:&stru_2C700];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)specifiersForHealthAgencyModels:(id)models
{
  modelsCopy = models;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [modelsCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = modelsCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = PSCellClassKey;
    v9 = PSTitleKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        name = [v11 name];
        v13 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        region = [v11 region];
        regionCode = [region regionCode];
        [v13 setIdentifier:regionCode];

        [v13 setUserInfo:v11];
        [v13 setObject:objc_opt_class() forKeyedSubscript:v8];
        name2 = [v11 name];
        [v13 setObject:name2 forKeyedSubscript:v9];

        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

@end