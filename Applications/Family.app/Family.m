void sub_1000018F8(id a1, FAFamilyCircle *a2, NSError *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000198C;
  block[3] = &unk_100008288;
  v5 = a2;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000198C(uint64_t a1)
{
  v1 = [[FACacheImageMarqueeOperationWrapper alloc] initWithFamilyCircle:*(a1 + 32)];
  [v1 createAndCacheDataWithCompletion:&stru_100008260];
}

void sub_1000019EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UISceneDelegate _handleFamilyURL error: %@", &v4, 0xCu);
    }
  }
}

void sub_100001CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 loadSuccess];
  v5 = _FALogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100002884(v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000027EC(v3, v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001DE0;
  block[3] = &unk_100008288;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100001DE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);

  return [v4 _destroyCurrentSceneSession];
}

void sub_100001EA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error destroying sceneSession: %@", &v4, 0xCu);
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100002650(void *a1, NSObject *a2)
{
  v4 = [a1 scheme];
  sub_100002194();
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unsupported scheme (%{public}@) from url: %{private}@", v5, 0x16u);
}

void sub_1000026F4()
{
  sub_100002194();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to handle aaaction (%{public}@) with components: %{private}@", v2, 0x16u);
}

void sub_100002770()
{
  sub_100002194();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Handling event type (%{public}@) with components: %{private}@", v2, 0x16u);
}

void sub_1000027EC(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to perform circle operation, error: %{public}@", &v4, 0xCu);
}