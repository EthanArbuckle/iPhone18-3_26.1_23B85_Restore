@interface AMDPrincipalClass
+ (void)performRequestWithObject:(id)object completion:(id)completion;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation AMDPrincipalClass

+ (void)performRequestWithObject:(id)object completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v13 = 0;
  objc_storeStrong(&v13, completion);
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

- (void)beginRequestWithExtensionContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  objc_storeStrong(location, 0);
}

@end