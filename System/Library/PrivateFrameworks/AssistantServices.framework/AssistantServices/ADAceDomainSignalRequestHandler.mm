@interface ADAceDomainSignalRequestHandler
- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ADAceDomainSignalRequestHandler

- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  _ad_preheatableServiceDomainForDomainSignalRequest = [requestCopy _ad_preheatableServiceDomainForDomainSignalRequest];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADAceDomainSignalRequestHandler handleSiriRequest:deliveryHandler:completionHandler:]";
    v15 = 2112;
    v16 = requestCopy;
    v17 = 2112;
    v18 = _ad_preheatableServiceDomainForDomainSignalRequest;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  if (_ad_preheatableServiceDomainForDomainSignalRequest)
  {
    v12 = +[ADCommandCenter sharedCommandCenter];
    [v12 preheatServicesForDomain:_ad_preheatableServiceDomainForDomainSignalRequest];
  }

  [requestCopy _ad_handleAceDomainSignalRequestWithCompletionHandler:completionHandlerCopy];
}

@end