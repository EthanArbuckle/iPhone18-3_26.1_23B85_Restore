@interface DARemoteRunnerManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DADeviceConnectionDelegate)delegate;
- (DARemoteRunnerManager)init;
- (void)_destroyDevice;
- (void)cancelTestWithID:(id)a3 completion:(id)a4;
- (void)createRemoteRunnerDeviceWithSerialNumber:(id)a3 completion:(id)a4;
- (void)destroyRemoteRunnerDeviceWithCompletion:(id)a3;
- (void)end;
- (void)getReportWithComponents:(id)a3 completion:(id)a4;
- (void)initListener;
- (void)ping:(id)a3;
- (void)requestAsset:(id)a3 completion:(id)a4;
- (void)requestUploadAssets:(id)a3 completion:(id)a4;
- (void)runTestWithID:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 completion:(id)a7;
- (void)start;
@end

@implementation DARemoteRunnerManager

+ (id)sharedInstance
{
  if (qword_100202DB8 != -1)
  {
    sub_100158A98();
  }

  v3 = qword_100202DB0;

  return v3;
}

- (DARemoteRunnerManager)init
{
  v5.receiver = self;
  v5.super_class = DARemoteRunnerManager;
  v2 = [(DARemoteRunnerManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DARemoteRunnerManager *)v2 initListener];
  }

  return v3;
}

- (void)initListener
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.diagnostics.remote-runner-service"];
  [(DARemoteRunnerManager *)self setListener:v3];

  v4 = [(DARemoteRunnerManager *)self listener];
  [v4 setDelegate:self];

  v5 = [(DARemoteRunnerManager *)self listener];
  [v5 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection %@ requested for remote runner service", &buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.diagnostics.remote-runner-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 BOOLValue])
  {
    [v7 invalidate];
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DARemoteRunnerServerProtocol];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v32[5] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v32 count:6];
  v11 = [NSSet setWithArray:v10];
  [v20 setClasses:v11 forSelector:"runTestWithID:name:description:parameters:completion:" argumentIndex:3 ofReply:0];

  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v31[3] = objc_opt_class();
  v31[4] = objc_opt_class();
  v31[5] = objc_opt_class();
  v31[6] = objc_opt_class();
  v12 = [NSArray arrayWithObjects:v31 count:7];
  v13 = [NSSet setWithArray:v12];
  [v20 setClasses:v13 forSelector:"runTestWithID:name:description:parameters:completion:" argumentIndex:0 ofReply:1];

  [v7 setExportedObject:self];
  [v7 setExportedInterface:v20];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DARemoteRunnerClientProtocol];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_100017E2C;
  v29 = sub_100017E3C;
  v30 = 0;
  objc_initWeak(&location, v7);
  [v7 setRemoteObjectInterface:v14];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100017E44;
  v21[3] = &unk_1001BD048;
  v21[4] = &buf;
  objc_copyWeak(&v22, &location);
  v15 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v16 = v15;
  if (v15 && !*(*(&buf + 1) + 40))
  {
    [(DARemoteRunnerManager *)self setRemoteClient:v15];
    [v7 resume];
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connection %@ established with remote runner service", v24, 0xCu);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);

    goto LABEL_9;
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)ping:(id)a3
{
  v3 = a3;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote runner is pinging to see if we are alive", v5, 2u);
  }

  v3[2](v3);
}

- (void)createRemoteRunnerDeviceWithSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner create device requested with serial number %@", &v19, 0xCu);
  }

  v9 = [(DARemoteRunnerManager *)self device];

  if (v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote runner create device failed - a remote runner device already exists!", &v19, 2u);
    }

    v7[2](v7, &off_1001CC968);
  }

  else
  {
    v11 = [[DADeviceLocalRemoteRunner alloc] initWithSerialNumber:v6];
    v12 = v11;
    if (v11)
    {
      v13 = [(DADeviceLocal *)v11 state];
      state = self->_state;
      self->_state = v13;

      [(DADeviceState *)self->_state setPhase:0];
      [(DARemoteRunnerManager *)self setDevice:v12];
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 postNotificationName:@"DARemoteRunnerDeviceCreatedNotification" object:v12];

      v16 = [(DARemoteRunnerManager *)self device];
      [v16 start];

      v7[2](v7, &off_1001CC980);
      v17 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remote runner device created successfully", &v19, 2u);
      }
    }

    else
    {
      v18 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Remote runner device creation failed", &v19, 2u);
      }

      v7[2](v7, &off_1001CC998);
    }
  }
}

- (void)destroyRemoteRunnerDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote runner device destroy requested", v9, 2u);
  }

  v6 = [(DARemoteRunnerManager *)self device];

  if (v6)
  {
    v7 = [(DARemoteRunnerManager *)self device];
    [v7 end];

    v8 = &off_1001CC980;
  }

  else
  {
    v8 = &off_1001CC9B0;
  }

  v4[2](v4, v8);
}

- (void)getReportWithComponents:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v9 = [v6 debugDescription];
    }

    else
    {
      v9 = @"all";
    }

    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device run test requested system report with components: %@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v10 = [(DARemoteRunnerManager *)self device];

  if (v10)
  {
    if (v6 && [v6 count])
    {
      v11 = objc_alloc_init(DADeviceConnectionProfileCommand);
      v12 = objc_alloc_init(ASTProfileResult);
      [(DADeviceConnectionProfileCommand *)v11 setProfile:v12];

      [(DADeviceConnectionProfileCommand *)v11 setComponents:v6];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100018590;
      v15[3] = &unk_1001BD070;
      v16 = v7;
      [(DADeviceConnectionProfileCommand *)v11 setCompletion:v15];
      v13 = [(DARemoteRunnerManager *)self delegate];
      [v13 deviceConnection:self didRecieveCommand:v11];
    }
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remote runner device run test failed - a remote runner device does not exist.", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)runTestWithID:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remote runner device run test requested with ID: %@ name: %@ description: %@", buf, 0x20u);
  }

  v18 = [(DARemoteRunnerManager *)self device];
  v19 = v18 == 0;

  if (v19)
  {
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Remote runner device run test failed - a remote runner device does not exist.", buf, 2u);
    }

    v25 = [NSError errorWithDomain:@"DADiagnosticsRemoteRunner" code:-3 userInfo:0];
    v16[2](v16, 0, v25);
  }

  else
  {
    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100018B54;
    v32[3] = &unk_1001BD0D8;
    objc_copyWeak(&v34, buf);
    v33 = v16;
    v20 = objc_retainBlock(v32);
    v21 = objc_alloc_init(DADeviceConnectionStartTestCommand);
    [(DADeviceConnectionStartTestCommand *)v21 setTestID:v12];
    [(DADeviceConnectionStartTestCommand *)v21 setParameters:v15];
    [(DADeviceConnectionStartTestCommand *)v21 setCompletion:v20];
    v22 = [(DARemoteRunnerManager *)self state];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100018CCC;
    v29 = &unk_1001BC820;
    v30 = v13;
    v31 = v14;
    [v22 transactionWithBlock:&v26];

    v23 = [(DARemoteRunnerManager *)self delegate:v26];
    [v23 deviceConnection:self didRecieveCommand:v21];

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }
}

- (void)cancelTestWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device cancel test requested for ID: %@", &v13, 0xCu);
  }

  v9 = [(DARemoteRunnerManager *)self device];

  if (!v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote runner device cancel test failed - a remote runner device does not exist.", &v13, 2u);
    }

    v7[2](v7, &off_1001CC9B0);
  }

  v11 = objc_alloc_init(DADeviceConnectionCancelTestCommand);
  [(DADeviceConnectionCancelTestCommand *)v11 setTestID:v6];
  v12 = [(DARemoteRunnerManager *)self delegate];
  [v12 deviceConnection:self didRecieveCommand:v11];

  v7[2](v7, &off_1001CC980);
}

- (void)start
{
  v3 = [(DARemoteRunnerManager *)self state];
  v4 = [NSSet setWithObjects:&off_1001CC9C8, &off_1001CC9E0, &off_1001CC9F8, 0];
  [v3 removeErrorCodes:v4];

  v5 = [(DARemoteRunnerManager *)self state];
  [v5 setPhase:4];
}

- (void)end
{
  v3 = [(DARemoteRunnerManager *)self remoteClient];

  if (v3)
  {
    v4 = [(DARemoteRunnerManager *)self remoteClient];
    [v4 remoteRunnerDeviceEnded];
  }

  [(DARemoteRunnerManager *)self _destroyDevice];
}

- (void)requestAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device requesting asset %@", &v11, 0xCu);
  }

  v9 = [(DARemoteRunnerManager *)self remoteClient];

  if (v9)
  {
    v10 = [(DARemoteRunnerManager *)self remoteClient];
    [v10 requestAsset:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)requestUploadAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device requesting to upload assets: %@", &v11, 0xCu);
  }

  v9 = [(DARemoteRunnerManager *)self remoteClient];

  if (v9)
  {
    v10 = [(DARemoteRunnerManager *)self remoteClient];
    [v10 requestUploadAssets:v6 completion:v7];
  }

  else
  {
    v10 = [NSError errorWithDomain:@"DADiagnosticsRemoteRunner" code:-6 userInfo:0];
    v7[2](v7, &off_1001CCD68, v10);
  }
}

- (void)_destroyDevice
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(DARemoteRunnerManager *)self device];
  [v3 postNotificationName:@"DARemoteRunnerDeviceDestroyedNotification" object:v4];

  [(DARemoteRunnerManager *)self setDevice:0];
}

- (DADeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end