@interface AKWebSessionPCSKeyProvider
+ (AKWebSessionPCSKeyProvider)sharedInstance;
- (AKWebSessionPCSKeyProvider)init;
- (AKWebSessionPCSKeyProvider)initWithKeychainManager:(id)a3;
- (id)_keychainItemForContext:(id)a3 error:(id *)a4;
- (void)_removeAllExpiredPCSCredentials;
- (void)_removeCredentialWithDescriptor:(id)a3;
- (void)fetchContextForWebSessionIdentifier:(id)a3 completion:(id)a4;
- (void)removeAllPCSCredentials;
- (void)saveContext:(id)a3 completion:(id)a4;
- (void)updateContext:(id)a3 completion:(id)a4;
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
  v6 = self;
  v4 = +[AKKeychainManager sharedManager];
  v6 = 0;
  v6 = [(AKWebSessionPCSKeyProvider *)self initWithKeychainManager:?];
  v5 = _objc_retain(v6);
  _objc_release(v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (AKWebSessionPCSKeyProvider)initWithKeychainManager:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKWebSessionPCSKeyProvider;
  v11 = [(AKWebSessionPCSKeyProvider *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_keychainManager, location[0]);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.authkit.PCSKeyProvider", v8);
    keychainQueue = v11->_keychainQueue;
    v11->_keychainQueue = v4;
    _objc_release(keychainQueue);
    _objc_release(v8);
  }

  v7 = _objc_retain(v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)saveContext:(id)a3 completion:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
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
  [(AKWebSessionPCSKeyProvider *)v23 _removeAllExpiredPCSCredentials];
  v18 = 0;
  v16 = 0;
  v6 = [(AKWebSessionPCSKeyProvider *)v23 _keychainItemForContext:location[0] error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v6;
  if (v18)
  {
    (*(v21 + 2))(v21, v18);
    v15 = 1;
  }

  else
  {
    keychainManager = v23->_keychainManager;
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

- (void)updateContext:(id)a3 completion:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
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
  v6 = [(AKWebSessionPCSKeyProvider *)v23 _keychainItemForContext:location[0] error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v6;
  if (v18)
  {
    (*(v21 + 2))(v21, v18);
    v15 = 1;
  }

  else
  {
    keychainManager = v23->_keychainManager;
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

- (void)fetchContextForWebSessionIdentifier:(id)a3 completion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
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
  keychainManager = v19->_keychainManager;
  v4 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10008A9D8;
  v11 = &unk_100321670;
  v13 = _objc_retain(v17);
  v12 = _objc_retain(v19);
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

- (id)_keychainItemForContext:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  v8 = [location[0] webSessionIdentifier];
  [v11 setAccount:?];
  _objc_release(v8);
  v10 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:a4];
  if (*a4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v6 = [*v12 description];
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
  v11 = self;
  v10[1] = a2;
  v10[0] = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  queue = v11->_keychainQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10008B324;
  v7 = &unk_10031F078;
  v8 = _objc_retain(v11);
  v9 = _objc_retain(v10[0]);
  dispatch_async(queue, &v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
}

- (void)_removeCredentialWithDescriptor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKKeychainManager *)v4->_keychainManager deleteKeychainItemWithDescriptor:location[0] completion:&stru_100321700];
  objc_storeStrong(location, 0);
}

@end