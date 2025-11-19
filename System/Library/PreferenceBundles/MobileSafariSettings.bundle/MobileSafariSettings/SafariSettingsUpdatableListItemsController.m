@interface SafariSettingsUpdatableListItemsController
- (SafariSettingsUpdatableListItemsController)init;
@end

@implementation SafariSettingsUpdatableListItemsController

- (SafariSettingsUpdatableListItemsController)init
{
  v13.receiver = self;
  v13.super_class = SafariSettingsUpdatableListItemsController;
  v2 = [(SafariSettingsUpdatableListItemsController *)&v13 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    v4 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFOpenLinksInBackgroundDefaultsKey];
    [v3 addObserver:v2 selector:"_reload" name:v4 object:0];

    v5 = +[NSDistributedNotificationCenter defaultCenter];
    v6 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:WBSCloseTabsAutomaticallyDefaultsKey];
    [v5 addObserver:v2 selector:"_reload" name:v6 object:0];

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    v8 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFSearchEngineStringDefaultsKey];
    [v7 addObserver:v2 selector:"_reload" name:v8 object:0];

    v9 = +[NSDistributedNotificationCenter defaultCenter];
    v10 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFPrivateSearchEngineStringDefaultsKey];
    [v9 addObserver:v2 selector:"_reload" name:v10 object:0];

    v11 = v2;
  }

  return v2;
}

@end