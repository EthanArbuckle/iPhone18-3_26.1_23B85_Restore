@interface GSSCredXPCHelperClient
+ (id)createXPCConnection:(unsigned int)a3;
+ (int)acquireForCred:(HeimCred_s *)a3 expireTime:(int64_t *)a4;
+ (int)refreshForCred:(HeimCred_s *)a3 expireTime:(int64_t *)a4;
+ (void)sendWakeup:(id)a3;
@end

@implementation GSSCredXPCHelperClient

+ (id)createXPCConnection:(unsigned int)a3
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.GSSCred" options:4096];

  [v7 setInterruptionHandler:?];
  [v7 setInvalidationHandler:?];
  memset(uu, 0, sizeof(uu));
  uuid_parse("D58511E6-6A96-41F0-B5CB-885DF4E3A531", uu);
  if (v8)
  {
    *uu = v8;
    v6 = [v7 _xpcConnection];
    xpc_connection_set_oneshot_instance();
  }

  [v7 resume];
  v5 = v7;
  objc_storeStrong(location, 0);

  return v5;
}

+ (void)sendWakeup:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "wakeup");
  v3 = [location[0] _xpcConnection];
  xpc_connection_send_message(v3, v4);

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

+ (int)acquireForCred:(HeimCred_s *)a3 expireTime:(int64_t *)a4
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = sub_10000E120();
  v30 = 2;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    log = v31;
    type = v30;
    v38 = CFUUIDCreateString(0, v33->var1);
    v4 = v38;
    v14 = v38;
    v29 = v14;
    sub_100003F54(v40, v29);
    _os_log_debug_impl(&_mh_execute_header, log, type, "gsscred_cache_acquire: %@", v40, 0xCu);

    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v31, 0);
  v28 = [v35 createXPCConnection:v33->var11];
  [v35 sendWakeup:v28];
  v27[1] = v33->var2;
  v27[0] = _CFXPCCreateXPCObjectFromCFObject();
  if (v27[0])
  {
    v25 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v25, "command", "acquire");
    xpc_dictionary_set_value(v25, "attributes", v27[0]);
    v11 = [v28 _xpcConnection];
    v24 = xpc_connection_send_message_with_reply_sync(v11, v25);

    [v28 invalidate];
    if (!v24)
    {
      v23 = sub_10000E120();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v9 = v23;
        v10 = v22;
        sub_100001A10(v21);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "server did not return any data", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
    }

    if (xpc_get_type(v24) == &_xpc_type_error)
    {
      v20 = sub_10000E120();
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100003F54(v39, v24);
        _os_log_error_impl(&_mh_execute_header, v20, v19, "server returned an error: %@", v39, 0xCu);
      }

      objc_storeStrong(&v20, 0);
    }

    if (xpc_get_type(v24) == &_xpc_type_dictionary)
    {
      v37 = _CFXPCCreateCFObjectFromXPCObject();
      v8 = v37;
      v5 = v37;
      v18 = v8;
      v17 = [v18 objectForKeyedSubscript:@"result"];
      v16 = [v17 objectForKeyedSubscript:@"status"];
      v15 = [v17 objectForKeyedSubscript:@"expire"];
      v6 = [v15 longValue];
      *v32 = v6;
      v36 = [v16 intValue];
      v26 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v36 = 1;
      v26 = 1;
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v36 = -1765328188;
    v26 = 1;
  }

  objc_storeStrong(v27, 0);
  objc_storeStrong(&v28, 0);
  return v36;
}

+ (int)refreshForCred:(HeimCred_s *)a3 expireTime:(int64_t *)a4
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = sub_10000E120();
  v27 = 2;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    log = v28;
    type = v27;
    v35 = CFUUIDCreateString(0, v30->var1);
    v4 = v35;
    v12 = v35;
    v26 = v12;
    sub_100003F54(v38, v26);
    _os_log_debug_impl(&_mh_execute_header, log, type, "gsscred_cache_refresh: %@", v38, 0xCu);

    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v28, 0);
  v25 = [v32 createXPCConnection:v30->var11];
  [v32 sendWakeup:v25];
  v24[1] = v30->var2;
  v24[0] = _CFXPCCreateXPCObjectFromCFObject();
  if (v24[0])
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v22, "command", "refresh");
    xpc_dictionary_set_value(v22, "attributes", v24[0]);
    v9 = [v25 _xpcConnection];
    v21 = xpc_connection_send_message_with_reply_sync(v9, v22);

    [v25 invalidate];
    if (!v21)
    {
      v20 = sub_10000E120();
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100003F54(v37, v21);
        _os_log_error_impl(&_mh_execute_header, v20, v19, "server returned an error during wakeup: %@", v37, 0xCu);
      }

      objc_storeStrong(&v20, 0);
    }

    if (xpc_get_type(v21) == &_xpc_type_error)
    {
      oslog = sub_10000E120();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100003F54(v36, v21);
        _os_log_error_impl(&_mh_execute_header, oslog, v17, "server returned an error: %@", v36, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (xpc_get_type(v21) == &_xpc_type_dictionary)
    {
      v34 = _CFXPCCreateCFObjectFromXPCObject();
      v8 = v34;
      v5 = v34;
      v16 = v8;
      v15 = [v16 objectForKeyedSubscript:@"result"];
      v14 = [v15 objectForKeyedSubscript:@"status"];
      v13 = [v15 objectForKeyedSubscript:@"expire"];
      v6 = [v13 longValue];
      *v29 = v6;
      v33 = [v14 intValue];
      v23 = 1;
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v33 = 1;
      v23 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v33 = -1765328188;
    v23 = 1;
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  return v33;
}

@end