@interface AKSymmetricKeyDaemonService
- (AKSymmetricKeyDaemonService)init;
- (AKSymmetricKeyDaemonService)initWithClient:(id)client;
- (void)dealloc;
- (void)registerForSymmetricKeyWithContext:(id)context completion:(id)completion;
@end

@implementation AKSymmetricKeyDaemonService

- (AKSymmetricKeyDaemonService)init
{
  selfCopy = self;
  [(AKSymmetricKeyDaemonService *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKSymmetricKeyDaemonService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKSymmetricKeyDaemonService;
  selfCopy = [(AKSymmetricKeyDaemonService *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v6, selfCopy);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKSymmetricKeyDaemonService;
  [(AKSymmetricKeyDaemonService *)&v2 dealloc];
}

- (void)registerForSymmetricKeyWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
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