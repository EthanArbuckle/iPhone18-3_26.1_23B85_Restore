@interface _NanoRoutePlanningSingleRequester
- (void)processRequest:(id)a3 withCompletion:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4;
- (void)routePlanningSessionDidInvalidate:(id)a3;
@end

@implementation _NanoRoutePlanningSingleRequester

- (void)routePlanningSessionDidInvalidate:(id)a3
{
  v4 = a3;
  v8 = [v4 request];
  v5 = [v4 response];

  v6 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v6[2](v6, v8, v5);
}

- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4
{
  v5 = a3;
  if ([a4 hasReceivedAllExpectedRoutes])
  {
    [v5 invalidate];
  }
}

- (void)processRequest:(id)a3 withCompletion:(id)a4
{
  v11 = a3;
  v6 = [a4 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v8 = objc_alloc_init(NanoRoutePlanningSession);
  session = self->_session;
  self->_session = v8;
  v10 = v8;

  [(NanoRoutePlanningSession *)v10 setShouldBroadcast:0];
  [(NanoRoutePlanningSession *)v10 registerObserver:self];
  [(NanoRoutePlanningSession *)v10 processRequest:v11];
}

@end