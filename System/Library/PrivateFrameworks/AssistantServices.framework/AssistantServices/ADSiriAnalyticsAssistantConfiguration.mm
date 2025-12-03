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
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled;
}

- (BOOL)removePersistentIdentifiers
{
  v2 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v2 longLivedIdentifierUploadingEnabled];

  return longLivedIdentifierUploadingEnabled ^ 1;
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
  dictationIsEnabled = [v2 dictationIsEnabled];

  return dictationIsEnabled;
}

@end