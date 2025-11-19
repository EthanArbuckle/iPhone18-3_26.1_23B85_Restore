@interface ADmacOSAssistantProperties
- (BOOL)_getIsExternalMicrophoneHSEnabled;
- (id)getODDmacOSAssistantProperties;
@end

@implementation ADmacOSAssistantProperties

- (BOOL)_getIsExternalMicrophoneHSEnabled
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = [v2 voiceTriggerEnabledWithDeviceType:3 endpointId:0];

  return v3;
}

- (id)getODDmacOSAssistantProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADmacOSAssistantProperties getODDmacOSAssistantProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDmacOSAssistantProperties);
  [v4 setIsExternalMicrophoneHSEnabled:{-[ADmacOSAssistantProperties _getIsExternalMicrophoneHSEnabled](self, "_getIsExternalMicrophoneHSEnabled")}];

  return v4;
}

@end