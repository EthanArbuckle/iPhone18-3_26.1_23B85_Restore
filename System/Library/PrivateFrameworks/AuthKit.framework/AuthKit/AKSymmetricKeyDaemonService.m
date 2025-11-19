@interface AKSymmetricKeyDaemonService
- (AKSymmetricKeyDaemonService)init;
- (AKSymmetricKeyDaemonService)initWithClient:(id)a3;
- (void)dealloc;
- (void)registerForSymmetricKeyWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKSymmetricKeyDaemonService

- (AKSymmetricKeyDaemonService)init
{
  v3 = self;
  [(AKSymmetricKeyDaemonService *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v3, 0);
  return 0;
}

- (AKSymmetricKeyDaemonService)initWithClient:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKSymmetricKeyDaemonService;
  v8 = [(AKSymmetricKeyDaemonService *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_client, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)dealloc
{
  v5 = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v6, v5);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = v5;
  v2.super_class = AKSymmetricKeyDaemonService;
  [(AKSymmetricKeyDaemonService *)&v2 dealloc];
}

- (void)registerForSymmetricKeyWithContext:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  v6 = +[AKSecurePakeManager sharedManager];
  v7 = v9;
  v5 = [(AKSecurePakeManager *)v6 fetchSharedKeyWithError:&v7];
  objc_storeStrong(&v9, v7);
  v8 = v5;
  _objc_release(v6);
  if (v10)
  {
    (*(v10 + 2))(v10, v8, v9);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end