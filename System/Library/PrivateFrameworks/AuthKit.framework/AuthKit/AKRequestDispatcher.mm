@interface AKRequestDispatcher
+ (id)sharedDispatcher;
- (BOOL)_executeScheduledRequest:(id)request;
- (void)submitDispatchableRequest:(id)request;
@end

@implementation AKRequestDispatcher

+ (id)sharedDispatcher
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10016CE98;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
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

- (void)submitDispatchableRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  dispatchingInfo = [location[0] dispatchingInfo];
  v3 = [_AKScheduledRequest scheduledRequestForRequest:location[0] info:dispatchingInfo];
  [(AKRequestDispatcher *)selfCopy _executeScheduledRequest:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&dispatchingInfo, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_executeScheduledRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  if (location[0])
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v6 = selfCopy;
      request = [location[0] request];
      sub_10001B098(v25, v6, request);
      _os_log_impl(&_mh_execute_header, v18, v17, "%@: Executing request (%@)", v25, 0x16u);
      _objc_release(request);
    }

    objc_storeStrong(&v18, 0);
    objc_initWeak(&from, selfCopy);
    request2 = [location[0] request];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10016D3A4;
    v13 = &unk_1003250B0;
    objc_copyWeak(&v15, &from);
    v14 = _objc_retain(location[0]);
    [request2 executeWithResponseHandler:&v9];
    _objc_release(request2);
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
      v8 = selfCopy;
      request3 = [location[0] request];
      sub_10001B098(v26, v8, request3);
      _os_log_debug_impl(&_mh_execute_header, v21, v20, "%@: Unable to execute request (%@)", v26, 0x16u);
      _objc_release(request3);
    }

    objc_storeStrong(&v21, 0);
    v24 = 0;
    v19 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

@end