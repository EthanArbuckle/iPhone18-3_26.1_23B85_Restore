@interface AFGetSettingsResponse
- (id)_ad_aceSettingsGetBooleanResponseRepresentation;
@end

@implementation AFGetSettingsResponse

- (id)_ad_aceSettingsGetBooleanResponseRepresentation
{
  settings = [(AFGetSettingsResponse *)self settings];
  if ([settings count] >= 2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v9 = 136315394;
      v10 = "[AFGetSettingsResponse(ADSettingsTransformer) _ad_aceSettingsGetBooleanResponseRepresentation]";
      v11 = 2048;
      v12 = [settings count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s has %ld settings, but can only handle one. Dropping all but the first on the floor.", &v9, 0x16u);
    }
  }

  firstObject = [settings firstObject];
  v6 = objc_alloc_init(SASettingGetBoolResponse);
  _ad_aceSettingBooleanEntityRepresentation = [firstObject _ad_aceSettingBooleanEntityRepresentation];
  [v6 setSetting:_ad_aceSettingBooleanEntityRepresentation];

  return v6;
}

@end