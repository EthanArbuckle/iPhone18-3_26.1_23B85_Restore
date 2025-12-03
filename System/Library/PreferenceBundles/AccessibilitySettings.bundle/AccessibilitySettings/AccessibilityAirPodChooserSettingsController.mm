@interface AccessibilityAirPodChooserSettingsController
- (id)_deviceConnected:(id)connected;
- (id)specifiers;
@end

@implementation AccessibilityAirPodChooserSettingsController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[AXAirPodSettingsManager sharedInstance];
    disambiguationString = [v5 disambiguationString];
    v7 = [PSSpecifier groupSpecifierWithName:disambiguationString];

    v20 = v7;
    [v4 addObject:v7];
    specifier = [(AccessibilityAirPodChooserSettingsController *)self specifier];
    v9 = [specifier propertyForKey:@"AirPods"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          name = [v14 name];
          v16 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:"_deviceConnected:" detail:objc_opt_class() cell:2 edit:0];

          v27 = v14;
          v17 = [NSArray arrayWithObjects:&v27 count:1];
          [v16 setProperty:v17 forKey:@"AirPods"];

          [v4 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v18 = *&self->AXUISettingsBaseListController_opaque[v21];
    *&self->AXUISettingsBaseListController_opaque[v21] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v21];
  }

  return v3;
}

- (id)_deviceConnected:(id)connected
{
  v3 = [connected propertyForKey:@"AirPods"];
  firstObject = [v3 firstObject];

  if ([firstObject connected])
  {
    v5 = AXAirPodsLocalizedStringForKey();
  }

  else
  {
    v5 = &stru_25D420;
  }

  return v5;
}

@end