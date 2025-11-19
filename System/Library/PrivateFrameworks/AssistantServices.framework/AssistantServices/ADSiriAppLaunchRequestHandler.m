@interface ADSiriAppLaunchRequestHandler
- (ADSiriAppLaunchRequestHandlerDelegate)delegate;
- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation ADSiriAppLaunchRequestHandler

- (ADSiriAppLaunchRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADSiriAppLaunchRequestHandler.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"[request isKindOfClass:[ADAcePassthroughSiriRequest class]]"}];

    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v10)
  {
LABEL_3:
    v10[2](v10);
  }

LABEL_4:
  v12 = v9;
  v13 = [v12 clientBoundCommand];
  v14 = [v12 _refId];
  v15 = [v14 copy];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014A100;
  v19[3] = &unk_100513060;
  v19[4] = self;
  v20 = v15;
  v21 = v11;
  v16 = v11;
  v17 = v15;
  [v13 _ad_handleAppLaunchCommandWithRequest:v12 completion:v19];
}

@end