@interface TKAuthContext
- (TKAuthContext)initWithLAContext:(id)context ACMHandle:(id)handle sharedResource:(id)resource;
@end

@implementation TKAuthContext

- (TKAuthContext)initWithLAContext:(id)context ACMHandle:(id)handle sharedResource:(id)resource
{
  contextCopy = context;
  handleCopy = handle;
  resourceCopy = resource;
  v15.receiver = self;
  v15.super_class = TKAuthContext;
  v12 = [(TKAuthContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authContext, context);
    objc_storeStrong(&v13->_ACMHandle, handle);
    objc_storeStrong(&v13->_sharedResource, resource);
  }

  return v13;
}

@end