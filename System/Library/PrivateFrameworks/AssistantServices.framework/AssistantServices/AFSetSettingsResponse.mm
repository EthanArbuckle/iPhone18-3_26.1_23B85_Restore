@interface AFSetSettingsResponse
- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)command;
@end

@implementation AFSetSettingsResponse

- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)command
{
  commandCopy = command;
  settingChanges = [(AFSetSettingsResponse *)self settingChanges];
  if ([settingChanges count] >= 2)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v11 = 136315394;
      v12 = "[AFSetSettingsResponse(ADSettingsTransformer) _ad_aceSettingsResponseRepresentationForSetValueCommand:]";
      v13 = 2048;
      v14 = [settingChanges count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s has %ld setting changes, but can only handle one. Dropping all but the first on the floor.", &v11, 0x16u);
    }
  }

  firstObject = [settingChanges firstObject];
  v9 = [firstObject _ad_aceSettingsResponseRepresentationForSetValueCommand:commandCopy];

  return v9;
}

@end