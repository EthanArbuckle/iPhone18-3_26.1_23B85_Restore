@interface _NanoRoutePlanningSingleRequester
- (void)processRequest:(id)request withCompletion:(id)completion;
- (void)routePlanningSession:(id)session didUpdateWithResponse:(id)response;
- (void)routePlanningSessionDidInvalidate:(id)invalidate;
@end

@implementation _NanoRoutePlanningSingleRequester

- (void)routePlanningSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  request = [invalidateCopy request];
  response = [invalidateCopy response];

  v6 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v6[2](v6, request, response);
}

- (void)routePlanningSession:(id)session didUpdateWithResponse:(id)response
{
  sessionCopy = session;
  if ([response hasReceivedAllExpectedRoutes])
  {
    [sessionCopy invalidate];
  }
}

- (void)processRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  v6 = [completion copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v8 = objc_alloc_init(NanoRoutePlanningSession);
  session = self->_session;
  self->_session = v8;
  v10 = v8;

  [(NanoRoutePlanningSession *)v10 setShouldBroadcast:0];
  [(NanoRoutePlanningSession *)v10 registerObserver:self];
  [(NanoRoutePlanningSession *)v10 processRequest:requestCopy];
}

@end