@interface ADwatchOSAssistantProperties
- (BOOL)_getIsSiriTryItCompleted;
- (id)getODDwatchOSAssistantProperties;
@end

@implementation ADwatchOSAssistantProperties

- (BOOL)_getIsSiriTryItCompleted
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.SiriCarouselAlert"];
  v3 = [v2 BOOLForKey:@"TryItCompleted"];

  return v3;
}

- (id)getODDwatchOSAssistantProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADwatchOSAssistantProperties getODDwatchOSAssistantProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDwatchOSAssistantProperties);
  [v4 setIsRaiseToSpeakEnabled:{-[ADwatchOSAssistantProperties _getIsRaiseToSpeakEnabled](self, "_getIsRaiseToSpeakEnabled")}];
  [v4 setIsSiriTryItCompleted:{-[ADwatchOSAssistantProperties _getIsSiriTryItCompleted](self, "_getIsSiriTryItCompleted")}];

  return v4;
}

@end