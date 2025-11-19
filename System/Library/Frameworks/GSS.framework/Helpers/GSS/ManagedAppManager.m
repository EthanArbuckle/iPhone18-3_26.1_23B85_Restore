@interface ManagedAppManager
- (BOOL)isManagedApp:(id)a3 auditToken:(id *)a4;
- (ManagedAppManager)init;
- (void)dealloc;
- (void)listenForChanges;
- (void)updateManagedApps:(id)a3;
@end

@implementation ManagedAppManager

- (ManagedAppManager)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = ManagedAppManager;
  v6 = [(ManagedAppManager *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    objc_storeStrong(&v6->managedApps, &__NSArray0__struct);
  }

  v3 = v6;
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = ManagedAppManager;
  [(ManagedAppManager *)&v3 dealloc];
}

- (BOOL)isManagedApp:(id)a3 auditToken:(id *)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14[1] = a4;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000132C0;
  v13 = &unk_100025070;
  v14[0] = v16;
  v18 = &unk_100028E98;
  v17 = 0;
  objc_storeStrong(&v17, &v9);
  if (*v18 != -1)
  {
    dispatch_once(v18, v17);
  }

  objc_storeStrong(&v17, 0);
  v7 = v16;
  objc_sync_enter(v7);
  v5 = [(ManagedAppManager *)v16 managedApps];
  v6 = [(NSArray *)v5 containsObject:location[0]];

  objc_sync_exit(v7);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)updateManagedApps:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = sub_10000E120();
  v14 = 1;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    log = v15;
    type = v14;
    sub_100001A10(v13);
    _os_log_impl(&_mh_execute_header, log, type, "Updating Managed App list", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v12 = sub_10000E120();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(ManagedAppManager *)v17 managedApps];
    sub_10000586C(v19, v7);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Old Managed App list: %{private}@", v19, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  obj = v17;
  objc_sync_enter(obj);
  v5 = [sub_1000136C0() sharedConnection];
  v4 = [v5 managedAppBundleIDs];
  [(ManagedAppManager *)v17 setManagedApps:?];

  objc_sync_exit(obj);
  v10 = sub_10000E120();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v3 = [(ManagedAppManager *)v17 managedApps];
    sub_10000586C(v18, v3);
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "New Managed App list: %{private}@", v18, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)listenForChanges
{
  v7 = self;
  v6[1] = a2;
  v6[0] = sub_1000138C4();
  v5 = +[NSNotificationCenter defaultCenter];
  v2 = v7;
  v3 = v6[0];
  v4 = [sub_1000136C0() sharedConnection];
  [(NSNotificationCenter *)v5 addObserver:v2 selector:"updateManagedApps:" name:v3 object:?];

  objc_storeStrong(v6, 0);
}

@end