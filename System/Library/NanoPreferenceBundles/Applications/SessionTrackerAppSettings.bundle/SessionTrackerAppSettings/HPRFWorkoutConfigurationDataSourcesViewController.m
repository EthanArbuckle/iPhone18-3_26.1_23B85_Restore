@interface HPRFWorkoutConfigurationDataSourcesViewController
- (id)getConfigurationStateWithSpecifier:(id)a3;
- (id)model;
- (id)providerForSpecifier:(id)a3;
- (id)specifiers;
- (void)_setAndResizeImage:(id)a3 forSpecifier:(id)a4;
- (void)setConfigurationState:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFWorkoutConfigurationDataSourcesViewController

- (id)model
{
  v2 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self specifier];
  v3 = [v2 userInfo];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HPRFWorkoutConfigurationDataSourcesViewController;
  [(HPRFWorkoutConfigurationDataSourcesViewController *)&v4 viewDidLoad];
  v3 = [objc_opt_class() title];
  [(HPRFWorkoutConfigurationDataSourcesViewController *)self setTitle:v3];
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
    v8 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self model];
    v9 = [v8 bridgedExternalProviders];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          v15 = [v14 sourceName];
          v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setConfigurationState:specifier:" get:"getConfigurationStateWithSpecifier:" detail:0 cell:6 edit:0];

          v28 = @"externalProviderSpecifier";
          v29 = v14;
          v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          [v16 setUserInfo:v17];

          v18 = [v14 sourceImageData];
          [(HPRFWorkoutConfigurationDataSourcesViewController *)self _setAndResizeImage:v18 forSpecifier:v16];

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

- (id)providerForSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"externalProviderSpecifier"];

  return v4;
}

- (void)setConfigurationState:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self providerForSpecifier:a4];
  v7 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self model];
  v8 = [v6 BOOLValue];

  [v7 updateExternalProvider:v9 enable:v8];
}

- (id)getConfigurationStateWithSpecifier:(id)a3
{
  v3 = [(HPRFWorkoutConfigurationDataSourcesViewController *)self providerForSpecifier:a3];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabled]);

  return v4;
}

- (void)_setAndResizeImage:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UIImage alloc] initWithData:v7];

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

  [v6 setProperty:v8 forKey:PSIconImageKey];
  [(HPRFWorkoutConfigurationDataSourcesViewController *)self reloadSpecifier:v6];
}

@end