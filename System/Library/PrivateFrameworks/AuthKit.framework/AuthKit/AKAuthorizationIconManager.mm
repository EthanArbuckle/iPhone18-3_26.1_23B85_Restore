@interface AKAuthorizationIconManager
+ (id)sharedManager;
- (AKAuthorizationIconManager)init;
- (BOOL)_isFetchingIconWithRequestContext:(id)a3;
- (id)_dataBlockForKey:(id)a3;
- (id)_serviceIDForRequestContext:(id)a3;
- (id)_startFetchingIconForBundleID:(id)a3 size:(id)a4 scale:(id)a5;
- (void)_removeDataBlockForKey:(id)a3;
- (void)_setDataBlock:(id)a3 forKey:(id)a4;
- (void)continueFetchingIconWithRequestContext:(id)a3 completion:(id)a4;
- (void)setFetchIconBlockForPresenter:(id)a3 withContext:(id)a4;
- (void)startFetchingIconWithRequestContext:(id)a3;
@end

@implementation AKAuthorizationIconManager

- (AKAuthorizationIconManager)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthorizationIconManager;
  v6 = [(AKAuthorizationIconManager *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_dataBlocksLock._os_unfair_lock_opaque = 0;
  }

  v3 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

+ (id)sharedManager
{
  v5 = &unk_1003744E8;
  location = 0;
  objc_storeStrong(&location, &stru_10031EF60);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003744E0;

  return v2;
}

- (void)startFetchingIconWithRequestContext:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [(AKAuthorizationIconManager *)v26 _serviceIDForRequestContext:location[0]];
  v23 = [location[0] _proxiedClientBundleID];
  v12 = [location[0] _iconScale];
  if (v12)
  {
    v3 = _objc_retain(v12);
  }

  else
  {
    v3 = _objc_retain(off_100370600);
  }

  v22 = v3;
  _objc_release(v12);
  v21 = [location[0] _iconSize];
  v11 = 0;
  if (v24)
  {
    v11 = 0;
    if (v23)
    {
      v11 = v22 != 0;
    }
  }

  v20 = v11;
  v4 = [location[0] _iconData];
  v9 = v4 != 0;
  _objc_release(v4);
  v19 = v9;
  v10 = 1;
  if (([location[0] _isWebLogin] & 1) == 0)
  {
    v10 = [location[0] _isSubscriptionLogin];
  }

  v18 = v10 & 1;
  v8 = 0;
  if (!v19)
  {
    v8 = 0;
    if (v18)
    {
      v8 = v20;
    }
  }

  v17 = v8;
  if (v8)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v28, v26, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, type, "%@: Starting to fetch icon for request context (%@)", v28, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v14 = [(AKAuthorizationIconManager *)v26 _startFetchingIconForBundleID:v23 size:v21 scale:v22];
    [(AKAuthorizationIconManager *)v26 _setDataBlock:v14 forKey:v24];
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (v20)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      if (v19)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      if (v18)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      sub_10001B0E8(v27, v26, location[0], v5, v6, v7);
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@: Determined request context (%@) is not eligible for remotely fetching icon (hasParameters: %@, hasData: %@, hasFetchContext: %@)", v27, 0x34u);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)setFetchIconBlockForPresenter:(id)a3 withContext:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v8 = v23;
  v9 = [v21 credentialRequestContext];
  v10 = [(AKAuthorizationIconManager *)v8 _isFetchingIconWithRequestContext:?];
  _objc_release(v9);
  if (v10)
  {
    v4 = v23;
    v5 = [v21 credentialRequestContext];
    v19 = [(AKAuthorizationIconManager *)v4 _serviceIDForRequestContext:?];
    _objc_release(v5);
    objc_initWeak(&v18, v23);
    v6 = location[0];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10001B3A4;
    v15 = &unk_10031EFB0;
    objc_copyWeak(&v17, &v18);
    v16 = _objc_retain(v19);
    [v6 setFetchIconBlock:&v11];
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v18);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)continueFetchingIconWithRequestContext:(id)a3 completion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if ([(AKAuthorizationIconManager *)v14 _isFetchingIconWithRequestContext:location[0]])
  {
    v10 = _os_activity_create(&_mh_execute_header, "authkit/icon-fetching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v11 = v10;
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    v8 = [(AKAuthorizationIconManager *)v14 _serviceIDForRequestContext:location[0]];
    v7 = [(AKAuthorizationIconManager *)v14 _dataBlockForKey:v8];
    [v7 setCompletion:v12];
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    os_activity_scope_leave(&state);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v4 = v12;
    v5 = [NSError ak_errorWithCode:-7044];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_startFetchingIconForBundleID:(id)a3 size:(id)a4 scale:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v19 = _os_activity_create(&_mh_execute_header, "authkit/icon-fetching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v20 = v19;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10001BAD4;
  v13 = &unk_10031F000;
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v22);
  v16 = _objc_retain(v21);
  v17 = [AKCoordinatedDataBlock startCoordinatingBlock:&v9];
  v6 = _objc_retain(v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_isFetchingIconWithRequestContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(AKAuthorizationIconManager *)v9 _serviceIDForRequestContext:location[0]];
  v5 = 0;
  v4 = 0;
  if (v7)
  {
    v6 = [(AKAuthorizationIconManager *)v9 _dataBlockForKey:v7];
    v5 = 1;
    v4 = v6 != 0;
  }

  v10 = v4;
  if (v5)
  {
    _objc_release(v6);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (id)_serviceIDForRequestContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] _isSubscriptionLogin])
  {
    v7 = [location[0] _proxiedClientBundleID];
  }

  else
  {
    v5 = [location[0] authorizationRequest];
    v7 = [v5 clientID];
    _objc_release(v5);
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (id)_dataBlockForKey:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v14;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10001C110;
  v10 = &unk_10031F028;
  v11 = _objc_retain(v14);
  v12 = _objc_retain(location[0]);
  v5 = sub_10001C060(&v4->_dataBlocksLock, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_setDataBlock:(id)a3 forKey:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = v16;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10001C314;
  v10 = &unk_10031F050;
  v11 = _objc_retain(v16);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  sub_10001C2B0(&v5->_dataBlocksLock, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeDataBlockForKey:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10001C4BC;
  v8 = &unk_10031F078;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  sub_10001C2B0(&v3->_dataBlocksLock, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end