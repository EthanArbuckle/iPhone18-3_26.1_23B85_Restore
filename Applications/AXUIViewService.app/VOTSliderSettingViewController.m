@interface VOTSliderSettingViewController
- (id)specifierValue:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setSpecifierValue:(id)a3 specifier:(id)a4;
@end

@implementation VOTSliderSettingViewController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"VOSSettingsItem"];
    v6 = +[NSMutableArray array];
    v7 = +[VOSSettingsHelper sharedInstance];
    v8 = [v7 nameForItem:v5];
    v9 = [PSSpecifier groupSpecifierWithName:v8];

    [v6 addObject:v9];
    v10 = self;
    v11 = [PSSpecifier preferenceSpecifierNamed:0 target:v10 set:"setSpecifierValue:specifier:" get:"specifierValue:" detail:0 cell:5 edit:0];

    [v11 setProperty:v5 forKey:@"VOSSettingsItem"];
    [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v12 = +[VOSSettingsItem Volume];

    if (v5 == v12)
    {
      [v11 setProperty:&off_10002A070 forKey:PSControlMinimumKey];
      [v11 setProperty:&off_10002A080 forKey:PSControlMaximumKey];
    }

    [v6 addObject:v11];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VOTSliderSettingViewController;
  v8 = [(VOTSliderSettingViewController *)&v14 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 control];
    objc_initWeak(&location, v9);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D2E0;
    v11[3] = &unk_100028C38;
    objc_copyWeak(&v12, &location);
    [v9 setAccessibilityValueBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)specifierValue:(id)a3
{
  v3 = [a3 propertyForKey:@"VOSSettingsItem"];
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v4 valueForSettingsItem:v3];

  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 scaledValue:v5 withItem:v3];

  return v7;
}

- (void)setSpecifierValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [a4 propertyForKey:@"VOSSettingsItem"];
  v6 = +[VOSSettingsHelper sharedInstance];
  [v6 setValue:v5 forSettingsItem:v7];
}

@end