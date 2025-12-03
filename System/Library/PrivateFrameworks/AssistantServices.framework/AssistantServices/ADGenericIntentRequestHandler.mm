@interface ADGenericIntentRequestHandler
- (void)_handleGenericIntentRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ADGenericIntentRequestHandler

- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ADGenericIntentService.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[request isKindOfClass:[STGenericIntentRequest class]]"}];
  }

  [(ADGenericIntentRequestHandler *)self _handleGenericIntentRequest:requestCopy deliveryHandler:handlerCopy completionHandler:completionHandlerCopy];
}

- (void)_handleGenericIntentRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  v10 = +[AFAnalytics sharedAnalytics];
  _af_analyticsContextDescription = [requestCopy _af_analyticsContextDescription];
  appIdentifier = [requestCopy appIdentifier];
  v13 = sub_100214CD0(appIdentifier);
  [_af_analyticsContextDescription setObject:v13 forKeyedSubscript:AFAnalyticsContextKey[1]];

  [v10 logEventWithType:501 context:_af_analyticsContextDescription contextNoCopy:0];
  appIdentifier2 = [requestCopy appIdentifier];
  v15 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:appIdentifier2];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100295E3C;
  v19[3] = &unk_100519448;
  v20 = requestCopy;
  v21 = v10;
  v22 = completionHandlerCopy;
  v16 = completionHandlerCopy;
  v17 = v10;
  v18 = requestCopy;
  [v15 handleSiriRequest:v18 deliveryHandler:handlerCopy completionHandler:v19];
}

@end