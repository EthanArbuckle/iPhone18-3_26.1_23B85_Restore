@interface TVSettingsListMonitorController
- (TVSettingsListMonitorController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)externalPreferencesDidUpdate;
@end

@implementation TVSettingsListMonitorController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsListMonitorController;
  [(TVSettingsListMonitorController *)&v4 dealloc];
}

- (TVSettingsListMonitorController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = TVSettingsListMonitorController;
  v4 = [(TVSettingsListMonitorController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [TVSettingsListMonitorUtilities subscribeToNotifications:v4 token:&v4->_preferencesDidChangeNotificationToken];
  }

  return v4;
}

- (void)externalPreferencesDidUpdate
{
  v3 = objc_opt_class();
  NSLog(@"TVSettingsLog - External preferences did update for PSListController. Reloading specifiers in class %@", v3);

  [(TVSettingsListMonitorController *)self reloadSpecifiers];
}

@end