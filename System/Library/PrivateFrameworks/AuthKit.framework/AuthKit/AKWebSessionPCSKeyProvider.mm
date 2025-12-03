@interface AKWebSessionPCSKeyProvider
+ (AKWebSessionPCSKeyProvider)sharedInstance;
- (AKWebSessionPCSKeyProvider)init;
- (AKWebSessionPCSKeyProvider)initWithKeychainManager:(id)manager;
- (id)_keychainItemForContext:(id)context error:(id *)error;
- (void)_removeAllExpiredPCSCredentials;
- (void)_removeCredentialWithDescriptor:(id)descriptor;
- (void)fetchContextForWebSessionIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllPCSCredentials;
- (void)saveContext:(id)context completion:(id)completion;
- (void)updateContext:(id)context completion:(id)completion;
@end

@implementation AKWebSessionPCSKeyProvider

+ (AKWebSessionPCSKeyProvider)sharedInstance
{
  v5 = &unk_100374740;
  location = 0;
  objc_storeStrong(&location, &stru_100321648);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374738;

  return v2;
}

- (AKWebSessionPCSKeyProvider)init
{
  selfCopy = self;
  v4 = +[AKKeychainManager sharedManager];
  selfCopy = 0;
  selfCopy = [(AKWebSessionPCSKeyProvider *)self initWithKeychainManager:?];
  v5 = _objc_retain(selfCopy);
  _objc_release(v4);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKWebSessionPCSKeyProvider)initWithKeychainManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKWebSessionPCSKeyProvider;
  selfCopy = [(AKWebSessionPCSKeyProvider *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_keychainManager, location[0]);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.authkit.PCSKeyProvider", v8);
    keychainQueue = selfCopy->_keychainQueue;
    selfCopy->_keychainQueue = v4;
    _objc_release(keychainQueue);
    _objc_release(v8);
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)saveContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [location[0] description];
    sub_1000194D4(v24, v7);
    _os_log_impl(&_mh_execute_header, v20, v19, "Saving PCS auth context %@.", v24, 0xCu);
    _objc_release(v7);
  }

  objc_storeStrong(&v20, 0);
  [(AKWebSessionPCSKeyProvider *)selfCopy _removeAllExpiredPCSCredentials];
  v18 = 0;
  v16 = 0;
  v6 = [(AKWebSessionPCSKeyProvider *)selfCopy _keychainItemForContext:location[0] error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v6;
  if (v18)
  {
    (*(v21 + 2))(v21, v18);
    v15 = 1;
  }

  else
  {
    keychainManager = selfCopy->_keychainManager;
    v4 = v17;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10008A16C;
    v13 = &unk_100321230;
    v14 = _objc_retain(v21);
    [(AKKeychainManager *)keychainManager addOrUpdateKeychainItem:v4 completion:&v9];
    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)updateContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [location[0] description];
    sub_1000194D4(v24, v7);
    _os_log_impl(&_mh_execute_header, v20, v19, "Updating PCS auth context %@.", v24, 0xCu);
    _objc_release(v7);
  }

  objc_storeStrong(&v20, 0);
  v18 = 0;
  v16 = 0;
  v6 = [(AKWebSessionPCSKeyProvider *)selfCopy _keychainItemForContext:location[0] error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v6;
  if (v18)
  {
    (*(v21 + 2))(v21, v18);
    v15 = 1;
  }

  else
  {
    keychainManager = selfCopy->_keychainManager;
    v4 = v17;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10008A5C4;
    v13 = &unk_100321230;
    v14 = _objc_retain(v21);
    [(AKKeychainManager *)keychainManager updateKeychainItem:v4 completion:&v9];
    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchContextForWebSessionIdentifier:(id)identifier completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v20, location[0]);
    _os_log_impl(&_mh_execute_header, v16, v15, "Fetching PCS auth context with ID %@.", v20, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v14 = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  [v14 setAccount:location[0]];
  keychainManager = selfCopy->_keychainManager;
  v4 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10008A9D8;
  v11 = &unk_100321670;
  v13 = _objc_retain(v17);
  v12 = _objc_retain(selfCopy);
  [(AKKeychainManager *)keychainManager fetchKeychainItemWithDescriptor:v4 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAllPCSCredentials
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_keychainQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10008AF6C;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(self);
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (id)_keychainItemForContext:(id)context error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v11 = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  webSessionIdentifier = [location[0] webSessionIdentifier];
  [v11 setAccount:?];
  _objc_release(webSessionIdentifier);
  v10 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:error];
  if (*error)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v6 = [*errorCopy description];
      sub_1000194D4(v15, v6);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to archive data with error: %@", v15, 0xCu);
      _objc_release(v6);
    }

    objc_storeStrong(&oslog, 0);
    v14 = 0;
  }

  else
  {
    v14 = [[AKKeychainItem alloc] initWithDescriptor:v11 value:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v4 = v14;

  return v4;
}

- (void)_removeAllExpiredPCSCredentials
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  queue = selfCopy->_keychainQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10008B324;
  v7 = &unk_10031F078;
  v8 = _objc_retain(selfCopy);
  v9 = _objc_retain(v10[0]);
  dispatch_async(queue, &v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
}

- (void)_removeCredentialWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  [(AKKeychainManager *)selfCopy->_keychainManager deleteKeychainItemWithDescriptor:location[0] completion:&stru_100321700];
  objc_storeStrong(location, 0);
}

@end