@interface AKPasswordResetController
- (void)presentPasswordResetForRequest:(id)request completion:(id)completion;
@end

@implementation AKPasswordResetController

- (void)presentPasswordResetForRequest:(id)request completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v15 setNeedsCredentialRecovery:1];
  [v15 setIsNativeTakeover:1];
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v6 = v14;
  v5 = v15;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100001324;
  v10 = &unk_1000182A8;
  v13 = v16;
  v11 = location[0];
  v12 = v14;
  [v6 performPasswordResetWithContext:v5 completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end