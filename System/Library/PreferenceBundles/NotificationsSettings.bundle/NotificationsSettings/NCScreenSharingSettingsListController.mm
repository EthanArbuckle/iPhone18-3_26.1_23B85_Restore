@interface NCScreenSharingSettingsListController
- (id)allowNotifications:(id)notifications;
- (id)specifiers;
- (void)setAllowNotifications:(id)notifications specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation NCScreenSharingSettingsListController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCScreenSharingSettingsListController;
  [(NCScreenSharingSettingsListController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v4 = [v3 localizedStringForKey:@"SCREEN_SHARING" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCScreenSharingSettingsListController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"SCREEN_SHARING_ALLOW_NOTIFICATIONS_GROUP_ID"];
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"SCREEN_SHARING_ALLOW_NOTIFICATIONS_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"ALLOW_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

    [v11 setIdentifier:@"SCREEN_SHARING_ALLOW_NOTIFICATION_ID"];
    [v5 addObject:v11];
    v12 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)allowNotifications:(id)notifications
{
  v3 = NCGetAllowNotificationsDuringScreenSharing();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowNotifications:(id)notifications specifier:(id)specifier
{
  bOOLValue = [notifications BOOLValue];

  NCSetAllowNotificationsDuringScreenSharing(bOOLValue);
}

@end