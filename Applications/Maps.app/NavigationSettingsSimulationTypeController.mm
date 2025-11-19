@interface NavigationSettingsSimulationTypeController
+ (id)_descriptionForSimulationType:(int64_t)a3;
- (void)prepareContent;
@end

@implementation NavigationSettingsSimulationTypeController

- (void)prepareContent
{
  Integer = GEOConfigGetInteger();
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B42CA0;
  v14[3] = &unk_10163A7A8;
  objc_copyWeak(v15, &location);
  v15[1] = Integer;
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Simulation Type" content:v14];
  if (Integer == 4)
  {
    v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Follow Current Route => Off Route" content:&stru_10163A7C8];
  }

  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Search for Parking" content:&stru_10163A7E8];
  v7 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10163A828];
  v8 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10163A848];
  v9 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10163A868];
  v10 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10163A888];
  [v10 setFooter:@"These settings only apply if Override Simulation Speed is unset."];

  v11 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10163A8C8];
  [v11 setFooter:@"Overrides the default simulation speed derived from Routing's estimates with a fixed speed."];

  v12 = objc_alloc_init(MapsDebugTableSection);
  v13 = [(MapsDebugTableSection *)v12 addSwitchRowWithTitle:@"Simulate geofences for transit routes" geoConfigKey:NavigationConfig_SimulationSimulateGeoFences[0] switchOnStateIfUnset:NavigationConfig_SimulationSimulateGeoFences[1] changeHandler:1, &stru_10163A908];
  [(MapsDebugTableSection *)v12 setVisible:GEOConfigGetInteger() != -1];
  [(MapsDebugValuesViewController *)self addSection:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

+ (id)_descriptionForSimulationType:(int64_t)a3
{
  if ((a3 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_10163A9B8 + a3 + 1);
  }
}

@end