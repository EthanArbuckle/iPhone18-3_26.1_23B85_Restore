@interface RequestBroker
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RequestBroker)init;
@end

@implementation RequestBroker

- (RequestBroker)init
{
  v10.receiver = self;
  v10.super_class = RequestBroker;
  v2 = [(RequestBroker *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v3;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      *buf = 138412290;
      v12 = v5;
      v6 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Starting request broker", buf, 0xCu);
    }

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.appstored.xpc.request"];
    [v7 setDelegate:v2];
    [v7 resume];
    objc_setProperty_atomic(v2, v8, v7, 16);
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v35 = a3;
  v5 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [&off_100549458 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v6)
  {
    v36 = *v44;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v44 != v36)
      {
        objc_enumerationMutation(&off_100549458);
      }

      v8 = *(*(&v43 + 1) + 8 * v7);
      v9 = v5;
      v10 = v8;
      objc_opt_self();
      v11 = [v9 processIdentifier];
      *location = 0u;
      v49 = 0u;
      if (v5)
      {
        [v9 auditToken];
      }

      *token = *location;
      *&token[16] = v49;
      v12 = SecTaskCreateWithAuditToken(0, token);
      v13 = v12;
      if (v12)
      {
        error = 0;
        v14 = SecTaskCopyValueForEntitlement(v12, v10, &error);
        if (error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          *token = 138413058;
          *&token[4] = v21;
          *&token[12] = 2112;
          *&token[14] = v10;
          *&token[22] = 1024;
          *&token[24] = v11;
          *&token[28] = 2112;
          *&token[30] = error;
          v22 = v21;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ for pid: %i error: %@", token, 0x26u);
        }

        if (v14)
        {
          TypeID = CFBooleanGetTypeID();
          v16 = TypeID == CFGetTypeID(v14) && CFBooleanGetValue(v14) != 0;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *token = 138413058;
            *&token[4] = v19;
            *&token[12] = 2112;
            *&token[14] = v10;
            *&token[22] = 1024;
            *&token[24] = v11;
            *&token[28] = 1024;
            *&token[30] = v16;
            v20 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: We have the entitlement: %@ for pid: %i result: %d", token, 0x22u);
          }

          CFRelease(v14);
          CFRelease(v13);

          if (v16)
          {
            v25 = sub_1003ED3B4([RequestBrokerClient alloc], v9);
            v26 = self;
            objc_sync_enter(v26);
            [(NSMutableSet *)v26->_clients addObject:v25];
            objc_sync_exit(v26);

            [v9 setExportedObject:v25];
            v27 = +[ASDRequestBroker interface];
            [v9 setExportedInterface:v27];

            objc_initWeak(location, v26);
            objc_initWeak(&error, v25);
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1002CD298;
            v40[3] = &unk_10051E598;
            objc_copyWeak(&v41, location);
            objc_copyWeak(&v42, &error);
            [v9 setInvalidationHandler:v40];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_1002CD418;
            v37[3] = &unk_10051E598;
            objc_copyWeak(&v38, location);
            objc_copyWeak(&v39, &error);
            [v9 setInterruptionHandler:v37];
            [v9 resume];
            v28 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              v29 = objc_opt_class();
              *token = 138412546;
              *&token[4] = v29;
              *&token[12] = 2112;
              *&token[14] = v25;
              v30 = v29;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Broker client connected: %@", token, 0x16u);
            }

            objc_destroyWeak(&v39);
            objc_destroyWeak(&v38);
            objc_destroyWeak(&v42);
            objc_destroyWeak(&v41);
            objc_destroyWeak(&error);
            objc_destroyWeak(location);

            v24 = 1;
            goto LABEL_31;
          }

          goto LABEL_23;
        }

        CFRelease(v13);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *token = 138412802;
        *&token[4] = v17;
        *&token[12] = 2112;
        *&token[14] = v10;
        *&token[22] = 1024;
        *&token[24] = v11;
        v18 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@ pid: %i", token, 0x1Cu);
      }

LABEL_23:
      if (v6 == ++v7)
      {
        v6 = [&off_100549458 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = [v5 processIdentifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v32 = objc_opt_class();
    *token = 138412546;
    *&token[4] = v32;
    *&token[12] = 1024;
    *&token[14] = v23;
    v33 = v32;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Connection denied for pid: %i for non entitled client", token, 0x12u);
  }

  v24 = 0;
LABEL_31:

  return v24;
}

@end