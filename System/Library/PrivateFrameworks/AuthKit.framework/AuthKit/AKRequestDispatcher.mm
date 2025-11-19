@interface AKRequestDispatcher
+ (id)sharedDispatcher;
- (BOOL)_executeScheduledRequest:(id)a3;
- (void)submitDispatchableRequest:(id)a3;
@end

@implementation AKRequestDispatcher

+ (id)sharedDispatcher
{
  v11 = a1;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10016CE98;
  v8 = &unk_100322AA0;
  v9 = a1;
  v13 = &unk_1003748B0;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003748A8;

  return v2;
}

- (void)submitDispatchableRequest:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] dispatchingInfo];
  v3 = [_AKScheduledRequest scheduledRequestForRequest:location[0] info:v4];
  [(AKRequestDispatcher *)v6 _executeScheduledRequest:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_executeScheduledRequest:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v23;
      v5 = [location[0] request];
      sub_10001B098(v25, v6, v5);
      _os_log_impl(&_mh_execute_header, v18, v17, "%@: Executing request (%@)", v25, 0x16u);
      _objc_release(v5);
    }

    objc_storeStrong(&v18, 0);
    objc_initWeak(&from, v23);
    v4 = [location[0] request];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10016D3A4;
    v13 = &unk_1003250B0;
    objc_copyWeak(&v15, &from);
    v14 = _objc_retain(location[0]);
    [v4 executeWithResponseHandler:&v9];
    _objc_release(v4);
    v24 = 1;
    v19 = 1;
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v8 = v23;
      v7 = [location[0] request];
      sub_10001B098(v26, v8, v7);
      _os_log_debug_impl(&_mh_execute_header, v21, v20, "%@: Unable to execute request (%@)", v26, 0x16u);
      _objc_release(v7);
    }

    objc_storeStrong(&v21, 0);
    v24 = 0;
    v19 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

@end