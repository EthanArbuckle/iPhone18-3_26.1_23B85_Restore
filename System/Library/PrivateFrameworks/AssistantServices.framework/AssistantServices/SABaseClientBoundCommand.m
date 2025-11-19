@interface SABaseClientBoundCommand
- (id)_ad_settingsRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)a3;
- (id)ad_OTTRequestRepresentation;
- (id)ad_aceResponseCommandRepresentationWithErrorCode:(int64_t)a3 reason:(id)a4;
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3;
- (void)_ad_getOTTRepresentationWithCompletionHandler:(id)a3;
- (void)_ad_handleAceDomainSignalRequest:(id)a3 completionHandler:(id)a4;
- (void)_ad_handleAppLaunchCommandWithRequest:(id)a3 completion:(id)a4;
@end

@implementation SABaseClientBoundCommand

- (id)_ad_timerResponseForResponse:(id)a3
{
  v3 = objc_alloc_init(SACommandFailed);

  return v3;
}

- (void)_ad_handleAppLaunchCommandWithRequest:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = kAFAssistantErrorDomain;
    v6 = a4;
    v7 = [NSError errorWithDomain:v5 code:700 userInfo:0];
    (*(a4 + 2))(v6, 0, 0, v7);
  }
}

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (id)_ad_settingsRequestRepresentation
{
  v3 = [NSException alloc];
  v4 = [[NSString alloc] initWithFormat:@"Unable to generate settings request representation for %@", self];
  v5 = [v3 initWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)ad_aceResponseCommandRepresentationWithErrorCode:(int64_t)a3 reason:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(SACommandFailed);
  v8 = [(SABaseClientBoundCommand *)self aceId];
  [v7 setRefId:v8];

  [v7 setErrorCode:a3];
  [v7 setReason:v6];

  return v7;
}

- (void)_ad_handleAceDomainSignalRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[SABaseClientBoundCommand(ADAceDomainSignalRequestHandler) _ad_handleAceDomainSignalRequest:completionHandler:]";
    v12 = 2112;
    v13 = self;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ACE domain signal request handler asked to handle request %@, but didn't know how", &v10, 0x16u);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
    v7[2](v7, 0, v9);
  }

LABEL_4:
}

- (void)_ad_getOTTRepresentationWithCompletionHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(SABaseClientBoundCommand *)self ad_OTTRequestRepresentation];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)ad_OTTRequestRepresentation
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SABaseClientBoundCommand(ADMessageTransformer) ad_OTTRequestRepresentation]";
    v7 = 2112;
    v8 = self;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s No OTT-request representation for %@", &v5, 0x16u);
  }

  return 0;
}

@end