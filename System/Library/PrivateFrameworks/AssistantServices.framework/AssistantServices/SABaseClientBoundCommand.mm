@interface SABaseClientBoundCommand
- (id)_ad_settingsRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
- (id)ad_OTTRequestRepresentation;
- (id)ad_aceResponseCommandRepresentationWithErrorCode:(int64_t)code reason:(id)reason;
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler;
- (void)_ad_getOTTRepresentationWithCompletionHandler:(id)handler;
- (void)_ad_handleAceDomainSignalRequest:(id)request completionHandler:(id)handler;
- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion;
@end

@implementation SABaseClientBoundCommand

- (id)_ad_timerResponseForResponse:(id)response
{
  v3 = objc_alloc_init(SACommandFailed);

  return v3;
}

- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion
{
  if (completion)
  {
    v5 = kAFAssistantErrorDomain;
    completionCopy = completion;
    v7 = [NSError errorWithDomain:v5 code:700 userInfo:0];
    (*(completion + 2))(completionCopy, 0, 0, v7);
  }
}

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
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

- (id)ad_aceResponseCommandRepresentationWithErrorCode:(int64_t)code reason:(id)reason
{
  reasonCopy = reason;
  v7 = objc_alloc_init(SACommandFailed);
  aceId = [(SABaseClientBoundCommand *)self aceId];
  [v7 setRefId:aceId];

  [v7 setErrorCode:code];
  [v7 setReason:reasonCopy];

  return v7;
}

- (void)_ad_handleAceDomainSignalRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[SABaseClientBoundCommand(ADAceDomainSignalRequestHandler) _ad_handleAceDomainSignalRequest:completionHandler:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ACE domain signal request handler asked to handle request %@, but didn't know how", &v10, 0x16u);
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
  }

LABEL_4:
}

- (void)_ad_getOTTRepresentationWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    ad_OTTRequestRepresentation = [(SABaseClientBoundCommand *)self ad_OTTRequestRepresentation];
    (*(handler + 2))(handlerCopy, ad_OTTRequestRepresentation);
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
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s No OTT-request representation for %@", &v5, 0x16u);
  }

  return 0;
}

@end