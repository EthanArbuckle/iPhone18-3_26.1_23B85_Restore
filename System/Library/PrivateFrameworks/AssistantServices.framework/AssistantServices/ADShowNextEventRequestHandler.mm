@interface ADShowNextEventRequestHandler
- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ADShowNextEventRequestHandler

- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  completionHandlerCopy = completionHandler;
  if (handler)
  {
    (*(handler + 2))(handler);
  }

  [requestCopy _ad_handleShowNextEventRequestWithCompletionHandler:completionHandlerCopy];
}

@end