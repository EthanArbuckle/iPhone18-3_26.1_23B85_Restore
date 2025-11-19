@interface ADiOSGeneralProperties
- (BOOL)_getHasPairedAppleWatch;
- (BOOL)_getHasTvOSDeviceInHome;
- (id)getODDiOSGeneralProperties;
@end

@implementation ADiOSGeneralProperties

- (BOOL)_getHasPairedAppleWatch
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 deviceHasPairedWatches];

  return v3;
}

- (BOOL)_getHasTvOSDeviceInHome
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 deviceHasAtvOrHomepodInHome];

  return v3;
}

- (id)getODDiOSGeneralProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADiOSGeneralProperties getODDiOSGeneralProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDiOSGeneralProperties);
  [v4 setHasTvOSDeviceInHome:{-[ADiOSGeneralProperties _getHasTvOSDeviceInHome](self, "_getHasTvOSDeviceInHome")}];
  [v4 setHasPairedAppleWatch:{-[ADiOSGeneralProperties _getHasPairedAppleWatch](self, "_getHasPairedAppleWatch")}];

  return v4;
}

@end