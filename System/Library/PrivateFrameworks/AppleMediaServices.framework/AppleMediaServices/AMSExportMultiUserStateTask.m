@interface AMSExportMultiUserStateTask
- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)a3 options:(unint64_t)a4;
- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)a3 options:(unint64_t)a4 multiUserService:(id)a5;
- (id)performTask;
@end

@implementation AMSExportMultiUserStateTask

- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = +[AMSMultiUserService proxyObjectAsync];
  v8 = [(AMSExportMultiUserStateTask *)self initWithHomeIdentifier:v6 options:a4 multiUserService:v7];

  return v8;
}

- (AMSExportMultiUserStateTask)initWithHomeIdentifier:(id)a3 options:(unint64_t)a4 multiUserService:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AMSExportMultiUserStateTask;
  v11 = [(AMSTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeIdentifier, a3);
    v12->_options = a4;
    objc_storeStrong(&v12->_multiUserService, a5);
  }

  return v12;
}

- (id)performTask
{
  v3 = [(AMSExportMultiUserStateTask *)self options];
  v4 = [(AMSExportMultiUserStateTask *)self options];
  v5 = [(AMSExportMultiUserStateTask *)self multiUserService];
  if (v5)
  {
    v6 = (v4 >> 1) & 1;
    v7 = objc_alloc_init(AMSPromise);
    v8 = [(AMSExportMultiUserStateTask *)self homeIdentifier];
    v9 = [v8 UUIDString];
    v10 = [(AMSPromise *)v7 completionHandlerAdapter];
    [v5 exportMultiUserTokenForHomeIdentifier:v9 generateIfMissing:v3 & 1 generateIfInvalid:v6 completion:v10];
  }

  else
  {
    v8 = AMSError(0, @"Could not create proxy object", @"We couldn't create the proxy object.", 0);
    v7 = [AMSPromise promiseWithError:v8];
  }

  return v7;
}

@end