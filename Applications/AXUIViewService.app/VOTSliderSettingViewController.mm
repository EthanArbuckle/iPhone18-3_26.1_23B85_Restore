@interface VOTSliderSettingViewController
- (id)specifierValue:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setSpecifierValue:(id)value specifier:(id)specifier;
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
    selfCopy = self;
    v11 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:"setSpecifierValue:specifier:" get:"specifierValue:" detail:0 cell:5 edit:0];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = VOTSliderSettingViewController;
  v8 = [(VOTSliderSettingViewController *)&v14 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    control = [v8 control];
    objc_initWeak(&location, control);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D2E0;
    v11[3] = &unk_100028C38;
    objc_copyWeak(&v12, &location);
    [control setAccessibilityValueBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)specifierValue:(id)value
{
  v3 = [value propertyForKey:@"VOSSettingsItem"];
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v4 valueForSettingsItem:v3];

  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 scaledValue:v5 withItem:v3];

  return v7;
}

- (void)setSpecifierValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v7 = [specifier propertyForKey:@"VOSSettingsItem"];
  v6 = +[VOSSettingsHelper sharedInstance];
  [v6 setValue:valueCopy forSettingsItem:v7];
}

@end