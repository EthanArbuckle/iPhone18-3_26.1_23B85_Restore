@interface ADAcePassthroughResponseTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
@end

@implementation ADAcePassthroughResponseTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (errorCopy)
    {
      [commandCopy ad_aceResponseCommandRepresentationWithErrorCode:objc_msgSend(errorCopy reason:{"code"), 0}];
    }

    else
    {
      [responseCopy replyCommand];
    }
    ad_aceResponseCommandGenericErrorRepresentation = ;
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADAcePassthroughResponseTransformer aceCommandForSiriResponse:responseError:forRequestCommand:]";
      v16 = 2112;
      v17 = responseCopy;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unexpected response %@", &v14, 0x16u);
    }

    ad_aceResponseCommandGenericErrorRepresentation = [commandCopy ad_aceResponseCommandGenericErrorRepresentation];
  }

  v12 = ad_aceResponseCommandGenericErrorRepresentation;

  return v12;
}

@end