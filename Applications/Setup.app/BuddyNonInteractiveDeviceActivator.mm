@interface BuddyNonInteractiveDeviceActivator
+ (id)activatorUsingWiFi;
- (BOOL)isActivated;
- (BuddyNonInteractiveDeviceActivator)initWithActivationConfiguration:(id)configuration activationEngine:(id)engine;
- (void)activateWithCompletion:(id)completion;
- (void)activateWithData:(id)data headers:(id)headers completion:(id)completion;
- (void)activationFinishedWithData:(id)data responseHeaders:(id)headers error:(id)error completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation BuddyNonInteractiveDeviceActivator

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  activationEngine = [(BuddyNonInteractiveDeviceActivator *)self activationEngine];
  [(BuddyActivationEngine *)activationEngine cancel];

  v3.receiver = selfCopy;
  v3.super_class = BuddyNonInteractiveDeviceActivator;
  [(BuddyNonInteractiveDeviceActivator *)&v3 dealloc];
}

- (BuddyNonInteractiveDeviceActivator)initWithActivationConfiguration:(id)configuration activationEngine:(id)engine
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  obj = 0;
  objc_storeStrong(&obj, engine);
  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyNonInteractiveDeviceActivator;
  selfCopy = [(BuddyNonInteractiveDeviceActivator *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    objc_storeStrong(selfCopy + 3, obj);
  }

  v6 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

+ (id)activatorUsingWiFi
{
  v2 = [self alloc];
  v3 = objc_alloc_init(BuddyActivationConfiguration);
  v4 = [BuddyActivationEngine wifiActivationEngineWithOverrideActivationURL:0 sessionURL:0, a2, self];
  v5 = [v2 initWithActivationConfiguration:v3 activationEngine:v4];

  return v5;
}

- (BOOL)isActivated
{
  v2 = [(BuddyNonInteractiveDeviceActivator *)self activationConfiguration:a2];
  isActivated = [(BuddyActivationConfiguration *)v2 isActivated];

  return isActivated & 1;
}

- (void)activateWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001545A0;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)activationFinishedWithData:(id)data responseHeaders:(id)headers error:(id)error completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v22 = 0;
  objc_storeStrong(&v22, headers);
  v21 = 0;
  objc_storeStrong(&v21, error);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100154A0C;
  v14 = &unk_10032DB28;
  v15 = v21;
  v19 = v20;
  v16 = v22;
  v17 = selfCopy;
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

- (void)activateWithData:(id)data headers:(id)headers completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v18 = 0;
  objc_storeStrong(&v18, headers);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v7 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100154F60;
  v12 = &unk_10032D150;
  v13 = v18;
  v14 = location[0];
  v15 = selfCopy;
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