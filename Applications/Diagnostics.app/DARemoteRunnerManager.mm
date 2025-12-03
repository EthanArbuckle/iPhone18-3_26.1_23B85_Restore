@interface DARemoteRunnerManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DADeviceConnectionDelegate)delegate;
- (DARemoteRunnerManager)init;
- (void)_destroyDevice;
- (void)cancelTestWithID:(id)d completion:(id)completion;
- (void)createRemoteRunnerDeviceWithSerialNumber:(id)number completion:(id)completion;
- (void)destroyRemoteRunnerDeviceWithCompletion:(id)completion;
- (void)end;
- (void)getReportWithComponents:(id)components completion:(id)completion;
- (void)initListener;
- (void)ping:(id)ping;
- (void)requestAsset:(id)asset completion:(id)completion;
- (void)requestUploadAssets:(id)assets completion:(id)completion;
- (void)runTestWithID:(id)d name:(id)name description:(id)description parameters:(id)parameters completion:(id)completion;
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

  listener = [(DARemoteRunnerManager *)self listener];
  [listener setDelegate:self];

  listener2 = [(DARemoteRunnerManager *)self listener];
  [listener2 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection %@ requested for remote runner service", &buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.diagnostics.remote-runner-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 BOOLValue])
  {
    [connectionCopy invalidate];
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

  [connectionCopy setExportedObject:self];
  [connectionCopy setExportedInterface:v20];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DARemoteRunnerClientProtocol];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_100017E2C;
  v29 = sub_100017E3C;
  v30 = 0;
  objc_initWeak(&location, connectionCopy);
  [connectionCopy setRemoteObjectInterface:v14];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100017E44;
  v21[3] = &unk_1001BD048;
  v21[4] = &buf;
  objc_copyWeak(&v22, &location);
  v15 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v21];
  v16 = v15;
  if (v15 && !*(*(&buf + 1) + 40))
  {
    [(DARemoteRunnerManager *)self setRemoteClient:v15];
    [connectionCopy resume];
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 138412290;
      v25 = connectionCopy;
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

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote runner is pinging to see if we are alive", v5, 2u);
  }

  pingCopy[2](pingCopy);
}

- (void)createRemoteRunnerDeviceWithSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = numberCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner create device requested with serial number %@", &v19, 0xCu);
  }

  device = [(DARemoteRunnerManager *)self device];

  if (device)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote runner create device failed - a remote runner device already exists!", &v19, 2u);
    }

    completionCopy[2](completionCopy, &off_1001CC968);
  }

  else
  {
    v11 = [[DADeviceLocalRemoteRunner alloc] initWithSerialNumber:numberCopy];
    v12 = v11;
    if (v11)
    {
      state = [(DADeviceLocal *)v11 state];
      state = self->_state;
      self->_state = state;

      [(DADeviceState *)self->_state setPhase:0];
      [(DARemoteRunnerManager *)self setDevice:v12];
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 postNotificationName:@"DARemoteRunnerDeviceCreatedNotification" object:v12];

      device2 = [(DARemoteRunnerManager *)self device];
      [device2 start];

      completionCopy[2](completionCopy, &off_1001CC980);
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

      completionCopy[2](completionCopy, &off_1001CC998);
    }
  }
}

- (void)destroyRemoteRunnerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote runner device destroy requested", v9, 2u);
  }

  device = [(DARemoteRunnerManager *)self device];

  if (device)
  {
    device2 = [(DARemoteRunnerManager *)self device];
    [device2 end];

    v8 = &off_1001CC980;
  }

  else
  {
    v8 = &off_1001CC9B0;
  }

  completionCopy[2](completionCopy, v8);
}

- (void)getReportWithComponents:(id)components completion:(id)completion
{
  componentsCopy = components;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (componentsCopy)
    {
      v9 = [componentsCopy debugDescription];
    }

    else
    {
      v9 = @"all";
    }

    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device run test requested system report with components: %@", buf, 0xCu);
    if (componentsCopy)
    {
    }
  }

  device = [(DARemoteRunnerManager *)self device];

  if (device)
  {
    if (componentsCopy && [componentsCopy count])
    {
      v11 = objc_alloc_init(DADeviceConnectionProfileCommand);
      v12 = objc_alloc_init(ASTProfileResult);
      [(DADeviceConnectionProfileCommand *)v11 setProfile:v12];

      [(DADeviceConnectionProfileCommand *)v11 setComponents:componentsCopy];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100018590;
      v15[3] = &unk_1001BD070;
      v16 = completionCopy;
      [(DADeviceConnectionProfileCommand *)v11 setCompletion:v15];
      delegate = [(DARemoteRunnerManager *)self delegate];
      [delegate deviceConnection:self didRecieveCommand:v11];
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

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)runTestWithID:(id)d name:(id)name description:(id)description parameters:(id)parameters completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  descriptionCopy = description;
  parametersCopy = parameters;
  completionCopy = completion;
  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v36 = dCopy;
    v37 = 2112;
    v38 = nameCopy;
    v39 = 2112;
    v40 = descriptionCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remote runner device run test requested with ID: %@ name: %@ description: %@", buf, 0x20u);
  }

  device = [(DARemoteRunnerManager *)self device];
  v19 = device == 0;

  if (v19)
  {
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Remote runner device run test failed - a remote runner device does not exist.", buf, 2u);
    }

    v25 = [NSError errorWithDomain:@"DADiagnosticsRemoteRunner" code:-3 userInfo:0];
    completionCopy[2](completionCopy, 0, v25);
  }

  else
  {
    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100018B54;
    v32[3] = &unk_1001BD0D8;
    objc_copyWeak(&v34, buf);
    v33 = completionCopy;
    v20 = objc_retainBlock(v32);
    v21 = objc_alloc_init(DADeviceConnectionStartTestCommand);
    [(DADeviceConnectionStartTestCommand *)v21 setTestID:dCopy];
    [(DADeviceConnectionStartTestCommand *)v21 setParameters:parametersCopy];
    [(DADeviceConnectionStartTestCommand *)v21 setCompletion:v20];
    state = [(DARemoteRunnerManager *)self state];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100018CCC;
    v29 = &unk_1001BC820;
    v30 = nameCopy;
    v31 = descriptionCopy;
    [state transactionWithBlock:&v26];

    v23 = [(DARemoteRunnerManager *)self delegate:v26];
    [v23 deviceConnection:self didRecieveCommand:v21];

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }
}

- (void)cancelTestWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device cancel test requested for ID: %@", &v13, 0xCu);
  }

  device = [(DARemoteRunnerManager *)self device];

  if (!device)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote runner device cancel test failed - a remote runner device does not exist.", &v13, 2u);
    }

    completionCopy[2](completionCopy, &off_1001CC9B0);
  }

  v11 = objc_alloc_init(DADeviceConnectionCancelTestCommand);
  [(DADeviceConnectionCancelTestCommand *)v11 setTestID:dCopy];
  delegate = [(DARemoteRunnerManager *)self delegate];
  [delegate deviceConnection:self didRecieveCommand:v11];

  completionCopy[2](completionCopy, &off_1001CC980);
}

- (void)start
{
  state = [(DARemoteRunnerManager *)self state];
  v4 = [NSSet setWithObjects:&off_1001CC9C8, &off_1001CC9E0, &off_1001CC9F8, 0];
  [state removeErrorCodes:v4];

  state2 = [(DARemoteRunnerManager *)self state];
  [state2 setPhase:4];
}

- (void)end
{
  remoteClient = [(DARemoteRunnerManager *)self remoteClient];

  if (remoteClient)
  {
    remoteClient2 = [(DARemoteRunnerManager *)self remoteClient];
    [remoteClient2 remoteRunnerDeviceEnded];
  }

  [(DARemoteRunnerManager *)self _destroyDevice];
}

- (void)requestAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = assetCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device requesting asset %@", &v11, 0xCu);
  }

  remoteClient = [(DARemoteRunnerManager *)self remoteClient];

  if (remoteClient)
  {
    remoteClient2 = [(DARemoteRunnerManager *)self remoteClient];
    [remoteClient2 requestAsset:assetCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)requestUploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = assetsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote runner device requesting to upload assets: %@", &v11, 0xCu);
  }

  remoteClient = [(DARemoteRunnerManager *)self remoteClient];

  if (remoteClient)
  {
    remoteClient2 = [(DARemoteRunnerManager *)self remoteClient];
    [remoteClient2 requestUploadAssets:assetsCopy completion:completionCopy];
  }

  else
  {
    remoteClient2 = [NSError errorWithDomain:@"DADiagnosticsRemoteRunner" code:-6 userInfo:0];
    completionCopy[2](completionCopy, &off_1001CCD68, remoteClient2);
  }
}

- (void)_destroyDevice
{
  v3 = +[NSNotificationCenter defaultCenter];
  device = [(DARemoteRunnerManager *)self device];
  [v3 postNotificationName:@"DARemoteRunnerDeviceDestroyedNotification" object:device];

  [(DARemoteRunnerManager *)self setDevice:0];
}

- (DADeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end