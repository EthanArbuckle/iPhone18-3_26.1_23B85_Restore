@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 6;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "got new xpc connection!", buf, 2u);
  }

  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCBluetoothPairingServiceProtocol];
  [v6 setExportedInterface:v10];

  v11 = objc_opt_new();
  [v6 setExportedObject:v11];
  objc_initWeak(buf, v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_10000C378;
  objc_copyWeak(&v14, buf);
  [v6 setInvalidationHandler:v13];
  [v6 resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  return 1;
}

void __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 6;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = 138412290;
    v14 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated: %@", &v13, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 exportedObject];

  if (v8)
  {
    [v8 cleanup];
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setExportedObject:0];

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v10 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "END - XPC connection invalidated: %@", &v13, 0xCu);
  }
}

@end