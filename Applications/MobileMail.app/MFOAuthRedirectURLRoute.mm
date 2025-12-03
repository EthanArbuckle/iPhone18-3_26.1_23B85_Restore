@interface MFOAuthRedirectURLRoute
- (BOOL)canRouteRequest:(id)request;
- (MFOAuthRedirectURLRoute)init;
- (MFOAuthRedirectURLRoute)initWithRedirectController:(id)controller;
- (id)routeRequest:(id)request;
@end

@implementation MFOAuthRedirectURLRoute

- (MFOAuthRedirectURLRoute)init
{
  v3 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v4 = [(MFOAuthRedirectURLRoute *)self initWithRedirectController:v3];

  return v4;
}

- (MFOAuthRedirectURLRoute)initWithRedirectController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MFOAuthRedirectURLRoute;
  v6 = [(MFOAuthRedirectURLRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_priority = 1;
    objc_storeStrong(&v6->_redirectController, controller);
  }

  return v7;
}

- (BOOL)canRouteRequest:(id)request
{
  v3 = [request URL];
  mf_isOAuthRedirectURL = [v3 mf_isOAuthRedirectURL];

  return mf_isOAuthRedirectURL;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  v5 = +[EFPromise promise];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10020425C;
  v11[3] = &unk_10064C6B0;
  v11[4] = self;
  v6 = requestCopy;
  v12 = v6;
  v7 = v5;
  v13 = v7;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v11];

  future = [v7 future];

  return future;
}

@end