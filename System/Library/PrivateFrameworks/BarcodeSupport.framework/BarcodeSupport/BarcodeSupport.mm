uint64_t start()
{
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100000B88();
  }

  v0 = objc_alloc_init(BCSNotificationServiceDelegate);
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.BarcodeSupport.BarcodeNotificationService"];
  [v1 setDelegate:v0];
  [v1 resume];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004100);
  v2 = +[BCSNotificationManager sharedManager];
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_1000009F4(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string && !strcmp(string, "Region Setting Changed"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Region Setting Changed", v4, 2u);
    }

    v3 = objc_alloc_init(BCSConfigurationManager);
    [v3 setUpQRCodeControlCenterModuleWithCompletionHandler:&stru_100004140];
  }
}

void sub_100000AA0(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000C14(v4);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = @"fail";
    if (v3)
    {
      v5 = @"succeed";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Setting up QR Code Control Center module did %{public}@", &v6, 0xCu);
  }
}

void sub_100000B88()
{
  v0 = __error();
  v1 = strerror(*v0);
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to set user tmp directory suffix: %s", &v2, 0xCu);
}

void sub_100000C14(void *a1)
{
  v1 = [a1 _bcs_privacyPreservingDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to set up QR Code Control Center module %{public}@", &v2, 0xCu);
}