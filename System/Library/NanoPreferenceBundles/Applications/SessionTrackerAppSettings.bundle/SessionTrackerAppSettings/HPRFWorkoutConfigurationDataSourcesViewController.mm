@interface HPRFWorkoutConfigurationDataSourcesViewController
- (id)getConfigurationStateWithSpecifier:(id)specifier;
- (id)model;
- (id)providerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_setAndResizeImage:(id)image forSpecifier:(id)specifier;
- (void)setConfigurationState:(id)state specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation HPRFWorkoutConfigurationDataSourcesViewController

- (id)model
{
  specifier = [(HPRFWorkoutConfigurationDataSourcesViewController *)self specifier];
  userInfo = [specifier userInfo];

  return userInfo;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HPRFWorkoutConfigurationDataSourcesViewController;
  [(HPRFWorkoutConfigurationDataSourcesViewController *)&v4 viewDidLoad];
  title = [objc_opt_class() title];
  [(HPRFWorkoutConfigurationDataSourcesViewController *)self setTitle:title];
}

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_opt_new();
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = +[WOWorkoutConfigurationDataSourcesBridgedModel localizedInformationalFooterText];
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v21 = v5;
    [v4 addObject:v5];
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v7];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    model = [(HPRFWorkoutConfigurationDataSourcesViewController *)self model];
    bridgedExternalProviders = [model bridgedExternalProviders];

    obj = bridgedExternalProviders;
    v10 = [bridgedExternalProviders countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          sourceName = [v14 sourceName];
          v16 = [PSSpecifier preferenceSpecifierNamed:sourceName target:self set:"setConfigurationState:specifier:" get:"getConfigurationStateWithSpecifier:" detail:0 cell:6 edit:0];

          v28 = @"externalProviderSpecifier";
          v29 = v14;
          v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          [v16 setUserInfo:v17];

          sourceImageData = [v14 sourceImageData];
          [(HPRFWorkoutConfigurationDataSourcesViewController *)self _setAndResizeImage:sourceImageData forSpecifier:v16];

          [v4 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }

    v19 = *&self->BPSListController_opaque[v22];
    *&self->BPSListController_opaque[v22] = v4;

    v3 = *&self->BPSListController_opaque[v22];
  }

  return v3;
}

- (id)providerForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"externalProviderSpecifier"];

  return v4;
}

- (void)setConfigurationState:(id)state specifier:(id)specifier
{
  stateCopy = state;
  v9 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self providerForSpecifier:specifier];
  model = [(HPRFWorkoutConfigurationDataSourcesViewController *)self model];
  bOOLValue = [stateCopy BOOLValue];

  [model updateExternalProvider:v9 enable:bOOLValue];
}

- (id)getConfigurationStateWithSpecifier:(id)specifier
{
  v3 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self providerForSpecifier:specifier];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabled]);

  return v4;
}

- (void)_setAndResizeImage:(id)image forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  imageCopy = image;
  v8 = [[UIImage alloc] initWithData:imageCopy];

  [v8 size];
  if (v9 > 29.0 || ([v8 size], v10 > 29.0))
  {
    [v8 size];
    v12 = v11;
    [v8 size];
    v14 = v13;
    [v8 size];
    if (v12 <= v14)
    {
      v15 = v16;
    }

    v17 = 29.0 / v15;
    v18 = [[UIGraphicsImageRenderer alloc] initWithSize:{29.0, 29.0}];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_17568;
    v19[3] = &unk_35518;
    v20 = v8;
    v21 = v17;
    v8 = [v18 imageWithActions:v19];
  }

  [specifierCopy setProperty:v8 forKey:PSIconImageKey];
  [(HPRFWorkoutConfigurationDataSourcesViewController *)self reloadSpecifier:specifierCopy];
}

@end