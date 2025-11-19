@interface ADSiriAnalyticsAssistantConfiguration
- (BOOL)assistantEnabled;
- (BOOL)dictationEnabled;
- (BOOL)optedInToDataSharing;
- (BOOL)removePersistentIdentifiers;
@end

@implementation ADSiriAnalyticsAssistantConfiguration

- (BOOL)assistantEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

- (BOOL)removePersistentIdentifiers
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 longLivedIdentifierUploadingEnabled];

  return v3 ^ 1;
}

- (BOOL)optedInToDataSharing
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 siriDataSharingOptInStatus] == 1;

  return v3;
}

- (BOOL)dictationEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

@end