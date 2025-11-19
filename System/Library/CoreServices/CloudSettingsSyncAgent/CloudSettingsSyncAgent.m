uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CloudSettingsSyncAgent LAUNCHED - In main", buf, 2u);
  }

  v1 = objc_opt_new();
  v2 = v1;
  if (v1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100000C34;
    handler[3] = &unk_100004108;
    v7 = v1;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, handler);
    v3 = +[NSRunLoop currentRunLoop];
    [v3 run];

    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000111C();
    }

    v4 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v0);
  return v4;
}

void sub_100000C34(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = [[NSString alloc] initWithCString:string encoding:4];
    if (v4)
    {
      [*(a1 + 32) handleKeystoreNotification:v4];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ERROR | notificationNamae = nil", v5, 2u);
    }
  }
}