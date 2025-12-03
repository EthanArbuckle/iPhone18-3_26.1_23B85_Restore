@interface MapsSettingBaseController
- (MapsSettingBaseController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateSettingsFromCurrentGeoCountryConfiguration;
- (void)contryConfigurationDidChange:(id)change;
- (void)dealloc;
- (void)synchronizeSettingsUpdateViews:(id)views;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MapsSettingBaseController

- (MapsSettingBaseController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = MapsSettingBaseController;
  v4 = [(MapsSettingBaseController *)&v12 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(MapsSettingBaseController *)v4 _updateSettingsFromCurrentGeoCountryConfiguration];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"contryConfigurationDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"contryConfigurationDidChange:" name:GEOCountryConfigurationProvidersDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"contryConfigurationDidChange:" name:MapsUserDefaultsDidChangeExternallyNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"synchronizeSettingsUpdateViews:" name:UIApplicationWillEnterForegroundNotification object:0];

    if ([(MapsSettingBaseController *)v5 wantsUniqueEntityUpdateNotifications])
    {
      _GEOConfigAddDelegateListenerForKey();
    }

    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:GEOCountryConfigurationProvidersDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:MapsUserDefaultsDidChangeExternallyNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  if ([(MapsSettingBaseController *)self wantsUniqueEntityUpdateNotifications])
  {
    GEOConfigRemoveDelegateListenerForKey();
  }

  v7.receiver = self;
  v7.super_class = MapsSettingBaseController;
  [(MapsSettingBaseController *)&v7 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MapsSettingBaseController;
  [(MapsSettingBaseController *)&v4 viewWillAppear:appear];
  [(MapsSettingBaseController *)self reloadSpecifiers];
}

- (void)synchronizeSettingsUpdateViews:(id)views
{
  [(MapsSettingBaseController *)self _updateSettingsFromCurrentGeoCountryConfiguration];

  [(MapsSettingBaseController *)self reloadSpecifiers];
}

- (void)_updateSettingsFromCurrentGeoCountryConfiguration
{
  v3 = +[GEOCountryConfiguration sharedConfiguration];
  self->_canLocalizeLabels = GEOConfigGetBOOL();
  self->_supportsNavigation = [v3 currentCountrySupportsNavigation];
}

- (void)contryConfigurationDidChange:(id)change
{
  [(MapsSettingBaseController *)self _updateSettingsFromCurrentGeoCountryConfiguration];

  [(MapsSettingBaseController *)self reload];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  var0 = key.var0;
  if ([(MapsSettingBaseController *)self wantsUniqueEntityUpdateNotifications])
  {
    if (var0 == 736 && var1 == &unk_76AF0)
    {

      [(MapsSettingBaseController *)self reloadSpecifiers];
    }
  }
}

@end