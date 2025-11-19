@interface MapsSettingBaseController
- (MapsSettingBaseController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_updateSettingsFromCurrentGeoCountryConfiguration;
- (void)contryConfigurationDidChange:(id)a3;
- (void)dealloc;
- (void)synchronizeSettingsUpdateViews:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MapsSettingBaseController

- (MapsSettingBaseController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = MapsSettingBaseController;
  v4 = [(MapsSettingBaseController *)&v12 initWithNibName:a3 bundle:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsSettingBaseController;
  [(MapsSettingBaseController *)&v4 viewWillAppear:a3];
  [(MapsSettingBaseController *)self reloadSpecifiers];
}

- (void)synchronizeSettingsUpdateViews:(id)a3
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

- (void)contryConfigurationDidChange:(id)a3
{
  [(MapsSettingBaseController *)self _updateSettingsFromCurrentGeoCountryConfiguration];

  [(MapsSettingBaseController *)self reload];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(MapsSettingBaseController *)self wantsUniqueEntityUpdateNotifications])
  {
    if (var0 == 736 && var1 == &unk_76AF0)
    {

      [(MapsSettingBaseController *)self reloadSpecifiers];
    }
  }
}

@end