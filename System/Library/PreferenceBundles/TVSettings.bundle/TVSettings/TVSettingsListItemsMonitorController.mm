@interface TVSettingsListItemsMonitorController
- (TVSettingsListItemsMonitorController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)externalPreferencesDidUpdate;
@end

@implementation TVSettingsListItemsMonitorController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsListItemsMonitorController;
  [(TVSettingsListItemsMonitorController *)&v4 dealloc];
}

- (TVSettingsListItemsMonitorController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = TVSettingsListItemsMonitorController;
  v4 = [(TVSettingsListItemsMonitorController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [TVSettingsListMonitorUtilities subscribeToNotifications:v4 token:&v4->_preferencesDidChangeNotificationToken];
  }

  return v4;
}

- (void)externalPreferencesDidUpdate
{
  v3 = objc_opt_class();
  NSLog(@"TVSettingsLog - External preferences did update for PSListItemsController. Reloading specifiers in class %@", v3);

  [(TVSettingsListItemsMonitorController *)self reloadSpecifiers];
}

@end