@interface MFStoreURLRoute
- (MFStoreURLRoute)initWithPresenterProvider:(id)a3;
- (MFStoreURLRoute)initWithPresenterProvider:(id)a3 storeControllerClass:(Class)a4;
- (id)routeRequest:(id)a3;
@end

@implementation MFStoreURLRoute

- (MFStoreURLRoute)initWithPresenterProvider:(id)a3
{
  v4 = a3;
  v5 = [(MFStoreURLRoute *)self initWithPresenterProvider:v4 storeControllerClass:objc_opt_class()];

  return v5;
}

- (MFStoreURLRoute)initWithPresenterProvider:(id)a3 storeControllerClass:(Class)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MFStoreURLRoute;
  v7 = [(MFStoreURLRoute *)&v11 init];
  if (v7)
  {
    v8 = objc_retainBlock(v6);
    presenterProvider = v7->_presenterProvider;
    v7->_presenterProvider = v8;

    v7->_storeClass = a4;
    v7->_priority = 1;
  }

  return v7;
}

- (id)routeRequest:(id)a3
{
  v4 = a3;
  +[EFPromise promise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100218718;
  v10[3] = &unk_10064C6B0;
  v5 = v10[4] = self;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v10];

  v8 = [v5 future];

  return v8;
}

@end