@interface TMDataMigrator
- (BOOL)performMigration;
@end

@implementation TMDataMigrator

- (BOOL)performMigration
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"automatic-time", @"com.apple.preferences.datetime", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    TMSetAutomaticTimeEnabled();
    TMSetAutomaticTimeZoneEnabled();
    CFPreferencesSetAppValue(@"automatic-time", 0, @"com.apple.preferences.datetime");
    CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
  }

  return 1;
}

@end