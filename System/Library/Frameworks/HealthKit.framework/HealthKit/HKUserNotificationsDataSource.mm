@interface HKUserNotificationsDataSource
- (BOOL)areNotificationsAuthorizedWithBundleIdentifier:(id)identifier;
@end

@implementation HKUserNotificationsDataSource

- (BOOL)areNotificationsAuthorizedWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E6983308];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  notificationSettings = [v5 notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];

  v9 = authorizationStatus == 4 || (authorizationStatus & 0xFFFFFFFFFFFFFFFELL) == 2;
  return v9;
}

@end