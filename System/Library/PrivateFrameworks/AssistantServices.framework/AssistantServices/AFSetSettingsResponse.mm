@interface AFSetSettingsResponse
- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)a3;
@end

@implementation AFSetSettingsResponse

- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)a3
{
  v4 = a3;
  v5 = [(AFSetSettingsResponse *)self settingChanges];
  if ([v5 count] >= 2)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v11 = 136315394;
      v12 = "[AFSetSettingsResponse(ADSettingsTransformer) _ad_aceSettingsResponseRepresentationForSetValueCommand:]";
      v13 = 2048;
      v14 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s has %ld setting changes, but can only handle one. Dropping all but the first on the floor.", &v11, 0x16u);
    }
  }

  v8 = [v5 firstObject];
  v9 = [v8 _ad_aceSettingsResponseRepresentationForSetValueCommand:v4];

  return v9;
}

@end