@interface MFOAuthRedirectURLRoute
- (BOOL)canRouteRequest:(id)a3;
- (MFOAuthRedirectURLRoute)init;
- (MFOAuthRedirectURLRoute)initWithRedirectController:(id)a3;
- (id)routeRequest:(id)a3;
@end

@implementation MFOAuthRedirectURLRoute

- (MFOAuthRedirectURLRoute)init
{
  v3 = +[PSOAuthAccountRedirectURLController sharedInstance];
  v4 = [(MFOAuthRedirectURLRoute *)self initWithRedirectController:v3];

  return v4;
}

- (MFOAuthRedirectURLRoute)initWithRedirectController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFOAuthRedirectURLRoute;
  v6 = [(MFOAuthRedirectURLRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_priority = 1;
    objc_storeStrong(&v6->_redirectController, a3);
  }

  return v7;
}

- (BOOL)canRouteRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 mf_isOAuthRedirectURL];

  return v4;
}

- (id)routeRequest:(id)a3
{
  v4 = a3;
  v5 = +[EFPromise promise];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10020425C;
  v11[3] = &unk_10064C6B0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = v5;
  v13 = v7;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v11];

  v9 = [v7 future];

  return v9;
}

@end