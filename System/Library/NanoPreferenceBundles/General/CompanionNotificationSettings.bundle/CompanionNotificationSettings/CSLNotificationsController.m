@interface CSLNotificationsController
- (id)specifiers;
- (void)_subscribeToNotificationsForSpecifiers:(id)a3;
- (void)_unsubscribeFromNotificationsForSpecifiers:(id)a3;
- (void)dealloc;
@end

@implementation CSLNotificationsController

- (id)specifiers
{
  [(CSLNotificationsController *)self _unsubscribeFromNotificationsForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  v5.receiver = self;
  v5.super_class = CSLNotificationsController;
  v3 = [(CSLNotificationsController *)&v5 specifiers];
  [(CSLNotificationsController *)self _subscribeToNotificationsForSpecifiers:v3];

  return v3;
}

- (void)dealloc
{
  [(CSLNotificationsController *)self _unsubscribeFromNotificationsForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  v3.receiver = self;
  v3.super_class = CSLNotificationsController;
  [(CSLNotificationsController *)&v3 dealloc];
}

- (void)_subscribeToNotificationsForSpecifiers:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = PSValueChangedNotificationKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v7];
        if (v10)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_2198, v10, 0, 1028);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_unsubscribeFromNotificationsForSpecifiers:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = PSValueChangedNotificationKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v7];
        if (v10)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v9, v10, 0);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

@end