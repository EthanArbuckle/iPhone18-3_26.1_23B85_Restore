@interface AKSRPAuthorizationContextHelper
- (AKSRPAuthorizationContextHelper)initWithContext:(id)a3;
- (void)authenticationParametersWithCompletion:(id)a3;
@end

@implementation AKSRPAuthorizationContextHelper

- (AKSRPAuthorizationContextHelper)initWithContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPAuthorizationContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 initWithContext:location[0]];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_authContext, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)authenticationParametersWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10016113C;
  v9 = &unk_100320A58;
  v10 = _objc_retain(v13);
  v11 = _objc_retain(location[0]);
  v4.receiver = v3;
  v4.super_class = AKSRPAuthorizationContextHelper;
  [(AKSRPContextHelper *)&v4 authenticationParametersWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end