@interface ADSettingsRequestHandler
- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ADSettingsRequestHandler

- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (requestCopy)
  {
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"ADSettingsRequestHandler.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"request"}];

  if (handlerCopy)
  {
LABEL_3:
    handlerCopy[2](handlerCopy);
  }

LABEL_4:
  [requestCopy _ad_handleSettingsRequestWithCompletionHandler:completionHandlerCopy];
}

@end