@interface ADAlarmTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
@end

@implementation ADAlarmTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADAlarmTransformer aceCommandForSiriResponse:responseError:forRequestCommand:]";
    v16 = 2112;
    v17 = responseCopy;
    v18 = 2112;
    v19 = commandCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Got alarm response %@ for request %@", &v14, 0x20u);
  }

  if (errorCopy)
  {
    ad_aceResponseCommandGenericErrorRepresentation = [commandCopy ad_aceResponseCommandGenericErrorRepresentation];
  }

  else if (objc_opt_respondsToSelector())
  {
    ad_aceResponseCommandGenericErrorRepresentation = [commandCopy _ad_alarmResponseForResponse:responseCopy];
  }

  else
  {
    ad_aceResponseCommandGenericErrorRepresentation = objc_alloc_init(SACommandFailed);
  }

  v12 = ad_aceResponseCommandGenericErrorRepresentation;

  return v12;
}

@end