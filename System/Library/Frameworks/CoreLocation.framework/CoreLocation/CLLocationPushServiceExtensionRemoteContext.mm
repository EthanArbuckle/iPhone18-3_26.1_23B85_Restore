@interface CLLocationPushServiceExtensionRemoteContext
- (CLLocationPushServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)didReceiveLocationPushPayload:(id)payload reply:(id)reply;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionWillTerminate;
@end

@implementation CLLocationPushServiceExtensionRemoteContext

- (CLLocationPushServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CLLocationPushServiceExtensionRemoteContext;
  v5 = [(CLLocationPushServiceExtensionRemoteContext *)&v13 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  if (v5)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v6 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
    {
      _UUID = [(CLLocationPushServiceExtensionRemoteContext *)v5 _UUID];
      *buf = 138543362;
      v17 = _UUID;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location Push Service extension context initialized", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
      }

      _UUID2 = [(CLLocationPushServiceExtensionRemoteContext *)v5 _UUID];
      v14 = 138543362;
      v15 = _UUID2;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext initWithInputItems:listenerEndpoint:contextUUID:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)didReceiveLocationPushPayload:(id)payload reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  _principalObject = [(CLLocationPushServiceExtensionRemoteContext *)self _principalObject];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v8 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    _UUID = [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] didReceiveLocationPushPayload:reply:", buf, 0xCu);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v13 = 138543362;
    _UUID2 = [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext didReceiveLocationPushPayload:reply:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9CC740;
  block[3] = &unk_1E753CF60;
  block[4] = _principalObject;
  block[5] = payload;
  block[6] = reply;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionWillTerminate
{
  v13 = *MEMORY[0x1E69E9840];
  _principalObject = [(CLLocationPushServiceExtensionRemoteContext *)self _principalObject];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v4 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    _UUID = [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location Push Service extension time will expire", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v9 = 138543362;
    _UUID2 = [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext serviceExtensionWillTerminate]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9CC990;
  block[3] = &unk_1E753CC90;
  block[4] = _principalObject;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionPerformCleanup
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    _UUID = [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleaning up extension", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    [(CLLocationPushServiceExtensionRemoteContext *)self _UUID];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext serviceExtensionPerformCleanup]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [(CLLocationPushServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  v6 = *MEMORY[0x1E69E9840];
}

@end