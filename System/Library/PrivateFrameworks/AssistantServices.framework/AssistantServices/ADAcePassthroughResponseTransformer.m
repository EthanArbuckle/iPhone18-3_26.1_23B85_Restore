@interface ADAcePassthroughResponseTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
@end

@implementation ADAcePassthroughResponseTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      [v9 ad_aceResponseCommandRepresentationWithErrorCode:objc_msgSend(v8 reason:{"code"), 0}];
    }

    else
    {
      [v7 replyCommand];
    }
    v10 = ;
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADAcePassthroughResponseTransformer aceCommandForSiriResponse:responseError:forRequestCommand:]";
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unexpected response %@", &v14, 0x16u);
    }

    v10 = [v9 ad_aceResponseCommandGenericErrorRepresentation];
  }

  v12 = v10;

  return v12;
}

@end