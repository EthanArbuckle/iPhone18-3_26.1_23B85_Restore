@interface AMSExportMultiUserStateTask
- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)identifier options:(unint64_t)options;
- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)identifier options:(unint64_t)options multiUserService:(id)service;
- (id)performTask;
@end

@implementation AMSExportMultiUserStateTask

- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)identifier options:(unint64_t)options
{
  identifierCopy = identifier;
  v7 = +[AMSMultiUserService proxyObjectAsync];
  v8 = [(AMSExportMultiUserStateTask *)self initWithHomeIdentifier:identifierCopy options:options multiUserService:v7];

  return v8;
}

- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)identifier options:(unint64_t)options multiUserService:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = AMSExportMultiUserStateTask;
  v11 = [(AMSTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, identifier);
    v12->_options = options;
    objc_storeStrong(&v12->_multiUserService, service);
  }

  return v12;
}

- (id)performTask
{
  options = [(AMSExportMultiUserStateTask *)self options];
  options2 = [(AMSExportMultiUserStateTask *)self options];
  multiUserService = [(AMSExportMultiUserStateTask *)self multiUserService];
  if (multiUserService)
  {
    v6 = (options2 >> 1) & 1;
    v7 = objc_alloc_init(AMSPromise);
    homeIdentifier = [(AMSExportMultiUserStateTask *)self homeIdentifier];
    uUIDString = [homeIdentifier UUIDString];
    completionHandlerAdapter = [(AMSPromise *)v7 completionHandlerAdapter];
    [multiUserService exportMultiUserTokenForHomeIdentifier:uUIDString generateIfMissing:options & 1 generateIfInvalid:v6 completion:completionHandlerAdapter];
  }

  else
  {
    homeIdentifier = AMSError(0, @"Could not create proxy object", @"We couldn't create the proxy object.", 0);
    v7 = [AMSPromise promiseWithError:homeIdentifier];
  }

  return v7;
}

@end