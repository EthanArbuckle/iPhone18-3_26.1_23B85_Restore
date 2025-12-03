@interface ADSiriAppLaunchRequestHandler
- (ADSiriAppLaunchRequestHandlerDelegate)delegate;
- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ADSiriAppLaunchRequestHandler

- (ADSiriAppLaunchRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleSiriRequest:(id)request deliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADSiriAppLaunchRequestHandler.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"[request isKindOfClass:[ADAcePassthroughSiriRequest class]]"}];

    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    handlerCopy[2](handlerCopy);
  }

LABEL_4:
  v12 = requestCopy;
  clientBoundCommand = [v12 clientBoundCommand];
  _refId = [v12 _refId];
  v15 = [_refId copy];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014A100;
  v19[3] = &unk_100513060;
  v19[4] = self;
  v20 = v15;
  v21 = completionHandlerCopy;
  v16 = completionHandlerCopy;
  v17 = v15;
  [clientBoundCommand _ad_handleAppLaunchCommandWithRequest:v12 completion:v19];
}

@end