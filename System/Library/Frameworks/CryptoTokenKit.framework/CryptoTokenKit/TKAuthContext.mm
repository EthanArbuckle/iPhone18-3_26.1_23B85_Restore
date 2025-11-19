@interface TKAuthContext
- (TKAuthContext)initWithLAContext:(id)a3 ACMHandle:(id)a4 sharedResource:(id)a5;
@end

@implementation TKAuthContext

- (TKAuthContext)initWithLAContext:(id)a3 ACMHandle:(id)a4 sharedResource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TKAuthContext;
  v12 = [(TKAuthContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authContext, a3);
    objc_storeStrong(&v13->_ACMHandle, a4);
    objc_storeStrong(&v13->_sharedResource, a5);
  }

  return v13;
}

@end