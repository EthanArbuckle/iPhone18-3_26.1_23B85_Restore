@interface HKUserNotificationsDataSource
- (BOOL)areNotificationsAuthorizedWithBundleIdentifier:(id)a3;
@end

@implementation HKUserNotificationsDataSource

- (BOOL)areNotificationsAuthorizedWithBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E6983308];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  v6 = [v5 notificationSettings];
  v7 = [v6 authorizationStatus];

  v9 = v7 == 4 || (v7 & 0xFFFFFFFFFFFFFFFELL) == 2;
  return v9;
}

@end