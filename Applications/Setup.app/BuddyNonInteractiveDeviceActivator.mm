@interface BuddyNonInteractiveDeviceActivator
+ (id)activatorUsingWiFi;
- (BOOL)isActivated;
- (BuddyNonInteractiveDeviceActivator)initWithActivationConfiguration:(id)a3 activationEngine:(id)a4;
- (void)activateWithCompletion:(id)a3;
- (void)activateWithData:(id)a3 headers:(id)a4 completion:(id)a5;
- (void)activationFinishedWithData:(id)a3 responseHeaders:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
@end

@implementation BuddyNonInteractiveDeviceActivator

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(BuddyNonInteractiveDeviceActivator *)self activationEngine];
  [(BuddyActivationEngine *)v2 cancel];

  v3.receiver = v5;
  v3.super_class = BuddyNonInteractiveDeviceActivator;
  [(BuddyNonInteractiveDeviceActivator *)&v3 dealloc];
}

- (BuddyNonInteractiveDeviceActivator)initWithActivationConfiguration:(id)a3 activationEngine:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyNonInteractiveDeviceActivator;
  v11 = [(BuddyNonInteractiveDeviceActivator *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(v11 + 2, location[0]);
    objc_storeStrong(v11 + 3, obj);
  }

  v6 = v11;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

+ (id)activatorUsingWiFi
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(BuddyActivationConfiguration);
  v4 = [BuddyActivationEngine wifiActivationEngineWithOverrideActivationURL:0 sessionURL:0, a2, a1];
  v5 = [v2 initWithActivationConfiguration:v3 activationEngine:v4];

  return v5;
}

- (BOOL)isActivated
{
  v2 = [(BuddyNonInteractiveDeviceActivator *)self activationConfiguration:a2];
  v3 = [(BuddyActivationConfiguration *)v2 isActivated];

  return v3 & 1;
}

- (void)activateWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001545A0;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)activationFinishedWithData:(id)a3 responseHeaders:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100154A0C;
  v14 = &unk_10032DB28;
  v15 = v21;
  v19 = v20;
  v16 = v22;
  v17 = v24;
  v18 = location[0];
  dispatch_async(v9, &block);

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)activateWithData:(id)a3 headers:(id)a4 completion:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v7 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100154F60;
  v12 = &unk_10032D150;
  v13 = v18;
  v14 = location[0];
  v15 = v20;
  v16 = v17;
  dispatch_async(v7, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end