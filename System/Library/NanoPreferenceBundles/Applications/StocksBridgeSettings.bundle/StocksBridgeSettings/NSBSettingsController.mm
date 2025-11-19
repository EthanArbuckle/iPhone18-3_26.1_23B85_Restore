@interface NSBSettingsController
- (id)specifiers;
- (void)_setSelectedMetric:(unint64_t)a3;
- (void)preferencesObservedUpdate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NSBSettingsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NSBSettingsController;
  [(NSBSettingsController *)&v6 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STOCKS_TITLE" value:&stru_C5A0 table:@"StocksBridgeSettings"];
  [(NSBSettingsController *)self setTitle:v4];

  v5 = +[StocksSyncComplicationPreferences sharedPreferences];
  [v5 addPreferencesObserver:self];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v27 = OBJC_IVAR___PSListController__specifiers;
    v30 = +[NSMutableArray array];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CURRENT_PRICE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"POINTS_CHANGE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"PERCENTAGE_CHANGE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MARKET_CAP" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v29 = v5;
    v12 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v33[0] = v12;
    v28 = v7;
    v13 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v33[1] = v13;
    v14 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v33[2] = v14;
    v15 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v33[3] = v15;
    v16 = [NSArray arrayWithObjects:v33 count:4];

    v17 = +[StocksSyncComplicationPreferences sharedPreferences];
    v18 = [v17 complicationDisplayMode];

    v19 = stocks_bridge_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Selected complication metric: %lu.", buf, 0xCu);
    }

    v20 = [v16 objectAtIndexedSubscript:v18];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"COMPLICATION_SHOWS" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v23 = [PSSpecifier groupSpecifierWithName:v22];
    [v23 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v23 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];

    [v30 addObject:v23];
    [v30 addObjectsFromArray:v16];
    v24 = [v30 copy];
    v25 = *&self->PSListController_opaque[v27];
    *&self->PSListController_opaque[v27] = v24;

    v3 = *&self->PSListController_opaque[v27];
  }

  return v3;
}

- (void)_setSelectedMetric:(unint64_t)a3
{
  v4 = stocks_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Selecting complication metric: %lu.", &v6, 0xCu);
  }

  v5 = +[StocksSyncComplicationPreferences sharedPreferences];
  [v5 setComplicationDisplayMode:a3];

  +[StocksSyncAppLauncher launchPhoneApp];
}

- (void)preferencesObservedUpdate:(id)a3
{
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(NSBSettingsController *)self reloadSpecifiers];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = NSBSettingsController;
  [(NSBSettingsController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  if (![v6 section])
  {
    v7 = [(NSBSettingsController *)self indexForIndexPath:v6];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CURRENT_PRICE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v10 = [(NSBSettingsController *)self indexOfSpecifierID:v9];
    if (v7 >= v10)
    {
      [(NSBSettingsController *)self _setSelectedMetric:v7 - v10];
    }
  }
}

@end