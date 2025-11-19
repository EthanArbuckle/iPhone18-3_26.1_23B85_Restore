@interface ADAlarmTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
@end

@implementation ADAlarmTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADAlarmTransformer aceCommandForSiriResponse:responseError:forRequestCommand:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Got alarm response %@ for request %@", &v14, 0x20u);
  }

  if (v8)
  {
    v11 = [v9 ad_aceResponseCommandGenericErrorRepresentation];
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = [v9 _ad_alarmResponseForResponse:v7];
  }

  else
  {
    v11 = objc_alloc_init(SACommandFailed);
  }

  v12 = v11;

  return v12;
}

@end