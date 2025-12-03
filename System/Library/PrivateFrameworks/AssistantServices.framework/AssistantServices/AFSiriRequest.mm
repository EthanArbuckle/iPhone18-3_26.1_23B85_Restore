@interface AFSiriRequest
- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)handler;
- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler;
- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler;
- (void)_ad_handleShowNextEventRequestWithCompletionHandler:(id)handler;
- (void)_ad_handleStopwatchRequestWithCompletionHandler:(id)handler;
- (void)_ad_handleTimerRequestWithCompletionHandler:(id)handler;
@end

@implementation AFSiriRequest

- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADSettingsRequestHandler) _ad_handleSettingsRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Settings handler asked to handle request %@, but didn't know how", &v7, 0x16u);
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }

LABEL_4:
}

- (void)_ad_handleTimerRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADTimerRequestHandler) _ad_handleTimerRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Timer handler asked to handle request %@, but didn't know how", &v7, 0x16u);
  }

  v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)_ad_handleStopwatchRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADTimerRequestHandler) _ad_handleStopwatchRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Stopwatch handler asked to handle request %@, but didn't know how", &v7, 0x16u);
  }

  v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADAlarmRequestHandler) _ad_handleAlarmRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Alarm handler asked to handle request %@, but didn't know how", &v7, 0x16u);
  }

  v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)_ad_handleShowNextEventRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADShowNextEventRequestHandler) _ad_handleShowNextEventRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Show next event handler asked to handle request %@, but didn't know how", &v7, 0x16u);
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }

LABEL_4:
}

- (void)_ad_handleAceDomainSignalRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSiriRequest(ADAceDomainSignalRequestHandler) _ad_handleAceDomainSignalRequestWithCompletionHandler:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s ACE domain signal request handler asked to handle request %@, but didn't know how", &v7, 0x16u);
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:700 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }

LABEL_4:
}

@end