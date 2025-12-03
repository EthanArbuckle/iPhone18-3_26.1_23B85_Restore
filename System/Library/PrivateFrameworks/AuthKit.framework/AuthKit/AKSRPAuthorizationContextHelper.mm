@interface AKSRPAuthorizationContextHelper
- (AKSRPAuthorizationContextHelper)initWithContext:(id)context;
- (void)authenticationParametersWithCompletion:(id)completion;
@end

@implementation AKSRPAuthorizationContextHelper

- (AKSRPAuthorizationContextHelper)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPAuthorizationContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 initWithContext:location[0]];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_authContext, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)authenticationParametersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10016113C;
  v9 = &unk_100320A58;
  v10 = _objc_retain(selfCopy);
  v11 = _objc_retain(location[0]);
  v4.receiver = v3;
  v4.super_class = AKSRPAuthorizationContextHelper;
  [(AKSRPContextHelper *)&v4 authenticationParametersWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end