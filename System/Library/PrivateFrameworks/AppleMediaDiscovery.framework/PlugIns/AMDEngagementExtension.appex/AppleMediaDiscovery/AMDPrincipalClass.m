@interface AMDPrincipalClass
+ (void)performRequestWithObject:(id)a3 completion:(id)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation AMDPrincipalClass

+ (void)performRequestWithObject:(id)a3 completion:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  queue = dispatch_get_global_queue(25, 0);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100000E04;
  v10 = &unk_1000040A8;
  v11 = location[0];
  v12 = v13;
  dispatch_async(queue, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end