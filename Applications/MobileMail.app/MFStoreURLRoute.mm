@interface MFStoreURLRoute
- (MFStoreURLRoute)initWithPresenterProvider:(id)provider;
- (MFStoreURLRoute)initWithPresenterProvider:(id)provider storeControllerClass:(Class)class;
- (id)routeRequest:(id)request;
@end

@implementation MFStoreURLRoute

- (MFStoreURLRoute)initWithPresenterProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(MFStoreURLRoute *)self initWithPresenterProvider:providerCopy storeControllerClass:objc_opt_class()];

  return v5;
}

- (MFStoreURLRoute)initWithPresenterProvider:(id)provider storeControllerClass:(Class)class
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = MFStoreURLRoute;
  v7 = [(MFStoreURLRoute *)&v11 init];
  if (v7)
  {
    v8 = objc_retainBlock(providerCopy);
    presenterProvider = v7->_presenterProvider;
    v7->_presenterProvider = v8;

    v7->_storeClass = class;
    v7->_priority = 1;
  }

  return v7;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  +[EFPromise promise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100218718;
  v10[3] = &unk_10064C6B0;
  v5 = v10[4] = self;
  v11 = v5;
  v6 = requestCopy;
  v12 = v6;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v10];

  future = [v5 future];

  return future;
}

@end