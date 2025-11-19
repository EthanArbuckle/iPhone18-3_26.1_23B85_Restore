@interface ACUIRemoteDeviceFetchSettingsViewController
- (id)specifiers;
- (id)title;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ACUIRemoteDeviceFetchSettingsViewController

- (id)title
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"FETCH" value:&stru_1C810 table:@"Localizable"];

  return v4;
}

- (void)viewDidLoad
{
  v6 = self;
  location[1] = a2;
  v3 = [(ACUIRemoteDeviceFetchSettingsViewController *)self specifier];
  v2 = [v3 userInfo];
  location[0] = [v2 objectForKeyedSubscript:ACUIRemoteSettingsControllerKey];

  if (location[0])
  {
    objc_storeStrong(&v6->_settingsController, location[0]);
  }

  v4.receiver = v6;
  v4.super_class = ACUIRemoteDeviceFetchSettingsViewController;
  [(ACUIRemoteDeviceFetchSettingsViewController *)&v4 viewDidLoad];
  objc_storeStrong(location, 0);
}

- (id)specifiers
{
  v23 = self;
  v22[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v22[0] = objc_opt_new();
    v21 = [PSSpecifier groupSpecifierWithID:@"fetchSettingPicker"];
    [v21 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v22[0] addObject:v21];
    memset(__b, 0, 0x40uLL);
    obj = [(ACUIRemoteDeviceFetchSettingsViewController *)v23 _options];
    v17 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
    if (v17)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        __b[8] = *(__b[1] + 8 * v14);
        v19 = ACUIFetchSettingFromNumber();
        v9 = ACUIFetchSettingTitle();
        v18 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];

        v10 = [(ACUIRemoteDeviceFetchSettingsViewController *)v23 settingsController];
        v11 = [(ACUIRemoteDeviceSettingsController *)v10 pollInterval];

        if (v19 == v11)
        {
          [v21 setProperty:v18 forKey:PSRadioGroupCheckedSpecifierKey];
        }

        v7 = v18;
        v8 = [NSNumber numberWithInt:v19];
        [v7 setProperty:? forKey:?];

        [v22[0] addObject:v18];
        objc_storeStrong(&v18, 0);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    v2 = [v22[0] copy];
    v3 = &v23->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v4 = *v3;
    *v3 = v2;

    objc_storeStrong(&v21, 0);
    objc_storeStrong(v22, 0);
  }

  v5 = *&v23->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(ACUIRemoteDeviceFetchSettingsViewController *)v14 specifierAtIndexPath:v12];
  v10 = [v11 propertyForKey:PSValueKey];
  v9 = _ACUILogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_1C78(v15, "[ACUIRemoteDeviceFetchSettingsViewController tableView:didSelectRowAtIndexPath:]", 72, v10);
    _os_log_impl(&dword_0, v9, v8, "%s (%d) @User selected new fetch setting: %{public}@", v15, 0x1Cu);
  }

  objc_storeStrong(&v9, 0);
  v7 = ACUIFetchSettingFromNumber();
  v4 = [(ACUIRemoteDeviceFetchSettingsViewController *)v14 settingsController];
  [(ACUIRemoteDeviceSettingsController *)v4 setPollInterval:v7];

  v6.receiver = v14;
  v6.super_class = ACUIRemoteDeviceFetchSettingsViewController;
  [(ACUIRemoteDeviceFetchSettingsViewController *)&v6 tableView:location[0] didSelectRowAtIndexPath:v12];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end