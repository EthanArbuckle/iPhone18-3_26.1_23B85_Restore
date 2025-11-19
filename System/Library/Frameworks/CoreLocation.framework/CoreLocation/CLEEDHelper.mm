@interface CLEEDHelper
+ (int64_t)validateServerCertificateChallenge:(id)a3;
- (CLEEDHelper)initWithDelegate:(id)a3 queue:(id)a4;
- (void)cleanup;
- (void)dealloc;
- (void)fetchAdrPreCachingStatusWithCompletion:(id)a3;
- (void)fetchAllPendingRequestsWithCompletion:(id)a3;
- (void)fetchCloakingKeyWithCompletion:(id)a3;
- (void)fetchCurrentMediaUploadRequestWithCompletion:(id)a3;
- (void)fetchCurrentStreamingRequestWithCompletion:(id)a3;
- (void)fetchEmergencyContactNamesWithCompletion:(id)a3;
- (void)fetchMitigationsWithCompletion:(id)a3;
- (void)fetchPreCachedAdrEnablementStatusWithCompletion:(id)a3;
- (void)handleInterruption;
- (void)handleRemoteProxyError:(id)a3 forProcessIdentifier:(int)a4;
- (void)mediaUploadList:(id)a3 forRequestID:(id)a4 completion:(id)a5;
- (void)notifyHelperInvalidation;
- (void)notifyMitigationNeeded:(id)a3;
- (void)notifyNewRequestAvailable;
- (void)streamingSessionEndedForRequestID:(id)a3 completion:(id)a4;
@end

@implementation CLEEDHelper

- (CLEEDHelper)initWithDelegate:(id)a3 queue:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v49 = "[CLEEDHelper initWithDelegate:queue:]";
    v50 = 2114;
    v51 = a3;
    v52 = 2114;
    v53 = a4;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[Delegate:%{public}@,Queue:%{public}@]", buf, 0x20u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v42 = 136446722;
    v43 = "[CLEEDHelper initWithDelegate:queue:]";
    v44 = 2114;
    v45 = a3;
    v46 = 2114;
    v47 = a4;
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v41.receiver = self;
  v41.super_class = CLEEDHelper;
  v10 = [(CLEEDHelper *)&v41 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_helperDelegate, a3);
    objc_storeWeak(&v11->_fClientQueue, a4);
    v12 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.eedhelper" options:0];
    v11->_fConnection = v12;
    if (v12)
    {
      [(NSXPCConnection *)v12 _setQueue:objc_loadWeak(&v11->_fClientQueue)];
      v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC808];
      v34 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0E92B20];
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v14 setWithObjects:{v15, v16, v17, v18, v19, v20, objc_opt_class(), 0}];
      [v13 setClasses:v21 forSelector:sel_fetchAllPendingRequestsWithCompletion_ argumentIndex:0 ofReply:1];
      [v13 setClasses:v21 forSelector:sel_mediaUploadList_forRequestID_completion_ argumentIndex:0 ofReply:0];
      [v13 setClasses:v21 forSelector:sel_fetchMitigationsWithCompletion_ argumentIndex:0 ofReply:1];
      [v34 setClasses:v21 forSelector:sel_notifyMitigationNeeded_ argumentIndex:0 ofReply:0];
      [(NSXPCConnection *)v11->_fConnection setExportedInterface:v34];
      [(NSXPCConnection *)v11->_fConnection setExportedObject:v11];
      [(NSXPCConnection *)v11->_fConnection setRemoteObjectInterface:v13];
      objc_initWeak(&location, v11);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_19B8BAF90;
      v38[3] = &unk_1E753D310;
      objc_copyWeak(&v39, &location);
      [(NSXPCConnection *)v11->_fConnection setInvalidationHandler:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_19B8BB1B4;
      v36[3] = &unk_1E753D310;
      objc_copyWeak(&v37, &location);
      [(NSXPCConnection *)v11->_fConnection setInterruptionHandler:v36];
      [(NSXPCConnection *)v11->_fConnection activate];
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v22 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v49 = "[CLEEDHelper initWithDelegate:queue:]";
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, Finished setting-up connection parameters to EEDHelperService", buf, 0xCu);
      }

      v23 = sub_19B87DD40();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v42 = 136446210;
        v43 = "[CLEEDHelper initWithDelegate:queue:]";
        v24 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      fConnection = v11->_fConnection;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_19B8BB38C;
      v35[3] = &unk_1E753D138;
      v35[4] = v11;
      [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](fConnection remoteObjectProxyWithErrorHandler:{v35), "connectToEEDHelper"}];
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v26 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v49 = "[CLEEDHelper initWithDelegate:queue:]";
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, connected to EEDHelperService", buf, 0xCu);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v42 = 136446210;
        v43 = "[CLEEDHelper initWithDelegate:queue:]";
        v28 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      objc_destroyWeak(&v37);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v29 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v49 = "[CLEEDHelper initWithDelegate:queue:]";
        v50 = 2082;
        v51 = "com.apple.locationd.eedhelper";
        _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, connection initialization failure to %{public}s", buf, 0x16u);
      }

      v30 = sub_19B87DD40();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v42 = 136446466;
        v43 = "[CLEEDHelper initWithDelegate:queue:]";
        v44 = 2082;
        v45 = "com.apple.locationd.eedhelper";
        v31 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v11 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v3 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[CLEEDHelper dealloc]";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = 136446210;
    v9 = "[CLEEDHelper dealloc]";
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [(CLEEDHelper *)self cleanup];
  v7.receiver = self;
  v7.super_class = CLEEDHelper;
  [(CLEEDHelper *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CLEEDHelper *)self helperDelegate])
  {
    [(CLEEDHelper *)self setHelperDelegate:0];
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v3 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = "[CLEEDHelper cleanup]";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper cleanup]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    [(NSXPCConnection *)[(CLEEDHelper *)self fConnection] invalidate];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruption
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v3 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[CLEEDHelper handleInterruption]";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = 136446210;
    v10 = "[CLEEDHelper handleInterruption]";
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = [(CLEEDHelper *)self fConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B8BB9F4;
  v8[3] = &unk_1E753D138;
  v8[4] = self;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](v6 remoteObjectProxyWithErrorHandler:{v8), "connectToEEDHelper"}];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleRemoteProxyError:(id)a3 forProcessIdentifier:(int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v12 = "[CLEEDHelper handleRemoteProxyError:forProcessIdentifier:]";
    v13 = 1026;
    v14 = a4;
    v15 = 2114;
    v16 = [a3 localizedDescription];
    v17 = 2114;
    v18 = [a3 localizedFailureReason];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s[pid:%{public}d]: %{public}@ %{public}@\n", buf, 0x26u);
  }

  v8 = sub_19B87DD40();
  if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [a3 localizedDescription];
    [a3 localizedFailureReason];
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper handleRemoteProxyError:forProcessIdentifier:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  [(CLEEDHelper *)self cleanup];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyHelperInvalidation
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CLEEDHelper *)self helperDelegate])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v3 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v8 = "[CLEEDHelper notifyHelperInvalidation]";
      v9 = 2114;
      v10 = self;
      v11 = 2114;
      v12 = [(CLEEDHelper *)self helperDelegate];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDHelper *)self helperDelegate];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyHelperInvalidation]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    [(CLEEDRequestDelegate *)[(CLEEDHelper *)self helperDelegate] notifyHelperInvalidation];
    [(CLEEDHelper *)self setHelperDelegate:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyNewRequestAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CLEEDHelper *)self helperDelegate])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v3 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v8 = "[CLEEDHelper notifyNewRequestAvailable]";
      v9 = 2114;
      v10 = self;
      v11 = 2114;
      v12 = [(CLEEDHelper *)self helperDelegate];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDHelper *)self helperDelegate];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyNewRequestAvailable]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    [(CLEEDRequestDelegate *)[(CLEEDHelper *)self helperDelegate] notifyNewRequestAvailable];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyMitigationNeeded:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CLEEDHelper *)self helperDelegate])
  {
    [(CLEEDHelper *)self helperDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v5 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v10 = "[CLEEDHelper notifyMitigationNeeded:]";
        v11 = 2114;
        v12 = self;
        v13 = 2114;
        v14 = [(CLEEDHelper *)self helperDelegate];
        v15 = 2114;
        v16 = a3;
        _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@, mitigation:%{public}@]", buf, 0x2Au);
      }

      v6 = sub_19B87DD40();
      if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [(CLEEDHelper *)self helperDelegate];
        v7 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyMitigationNeeded:]", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      [(CLEEDRequestDelegate *)[(CLEEDHelper *)self helperDelegate] notifyMitigationNeeded:a3];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllPendingRequestsWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BC640;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BC6B0;
    v12[3] = &unk_1E753D360;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchAllPendingRequestsWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentMediaUploadRequestWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BCBF4;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BCC64;
    v12[3] = &unk_1E753D388;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchCurrentMediaUploadRequestWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentStreamingRequestWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BD1B0;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BD220;
    v12[3] = &unk_1E753D3B0;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchCurrentStreamingRequestWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchMitigationsWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchMitigationsWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchMitigationsWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchMitigationsWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BD764;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BD7D4;
    v12[3] = &unk_1E753D3D8;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchMitigationsWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)mediaUploadList:(id)a3 forRequestID:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v29 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]";
    v30 = 2114;
    v31 = a3;
    v32 = 2114;
    v33 = a4;
    v34 = 2114;
    v35 = a5;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[mediaUploadList:%{public}@,requestID:%{public}@,completion:%{public}@]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v20 = 136446978;
    v21 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]";
    v22 = 2114;
    v23 = a3;
    v24 = 2114;
    v25 = a4;
    v26 = 2114;
    v27 = a5;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper mediaUploadList:forRequestID:completion:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v12 = [(CLEEDHelper *)self fConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B8BDD44;
    v17[3] = &unk_1E753D338;
    v17[4] = self;
    v17[5] = a5;
    v13 = [(NSXPCConnection *)v12 remoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B8BDDB0;
    v16[3] = &unk_1E753D338;
    v16[4] = self;
    v16[5] = a5;
    [v13 mediaUploadList:a3 forRequestID:a4 completion:v16];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Connection reset, caller needs to re-initialize";
    (*(a5 + 2))(a5, [v14 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)streamingSessionEndedForRequestID:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v25 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]";
    v26 = 2114;
    v27 = a3;
    v28 = 2114;
    v29 = a4;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[request:%{public}@,completion:%{public}@]", buf, 0x20u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v18 = 136446722;
    v19 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]";
    v20 = 2114;
    v21 = a3;
    v22 = 2114;
    v23 = a4;
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper streamingSessionEndedForRequestID:completion:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v10 = [(CLEEDHelper *)self fConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_19B8BE2F0;
    v15[3] = &unk_1E753D338;
    v15[4] = self;
    v15[5] = a4;
    v11 = [(NSXPCConnection *)v10 remoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B8BE35C;
    v14[3] = &unk_1E753D338;
    v14[4] = self;
    v14[5] = a4;
    [v11 streamingSessionEndedForRequestID:a3 completion:v14];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A578];
    v17 = @"Connection reset, caller needs to re-initialize";
    (*(a4 + 2))(a4, [v12 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (int64_t)validateServerCertificateChallenge:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v42 = 2113;
    v43 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Challenge:%{private}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = 136446467;
    v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v36 = 2113;
    v37 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = [objc_msgSend(a3 "protectionSpace")];
  if (([v8 isEqualToString:*MEMORY[0x1E696A968]] & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
    {
      v16 = [objc_msgSend(a3 "protectionSpace")];
      *buf = 136446466;
      v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, Unsupported authenticationMethod:%{public}@, proceed with default handling", buf, 0x16u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = 136446466;
    v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v36 = 2114;
    v37 = [objc_msgSend(a3 "protectionSpace")];
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v18);
    if (v18 == buf)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  error = 0;
  v9 = [objc_msgSend(a3 "protectionSpace")];
  if (!SecTrustEvaluateWithError(v9, &error))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v19 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v42 = 2114;
      v43 = error;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, SecTrustEvaluateWithError returned error:%{public}@", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = 136446466;
    v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v36 = 2114;
    v37 = error;
    goto LABEL_86;
  }

  v10 = SecTrustCopyCertificateChain(v9);
  if (!v10)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v21 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, SecTrustCopyCertificateChain failed", buf, 0xCu);
    }

    v22 = sub_19B87DD40();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = 136446210;
    v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    goto LABEL_86;
  }

  v11 = v10;
  v12 = [(__CFArray *)v10 lastObject];
  SecTrustStoreForDomain();
  if (!SecTrustStoreContains())
  {
    v32 = 0;
    v23 = sub_19B8B7C60(@"EEDOverrideServerChallenge", @"com.apple.locationd", &v32);
    if (v32 && v23)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v24 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446723;
        v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
        v42 = 2113;
        v43 = v12;
        v44 = 2113;
        v45 = v11;
        _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, but EEDOverrideServerChallenge set, overriding. Chain:%{private}@", buf, 0x20u);
      }

      v25 = sub_19B87DD40();
      if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v34 = 136446723;
      v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v36 = 2113;
      v37 = v12;
      v38 = 2113;
      v39 = v11;
      goto LABEL_73;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v42 = 2113;
      v43 = v12;
      v44 = 2113;
      v45 = v11;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, not contained in SecurityTrustStore with system domain. Chain:%{private}@", buf, 0x20u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
LABEL_88:
      v26 = 2;
      goto LABEL_89;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = 136446723;
    v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v36 = 2113;
    v37 = v12;
    v38 = 2113;
    v39 = v11;
LABEL_86:
    v29 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }

    goto LABEL_88;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v41 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Root is system trusted, proceed with default handling", buf, 0xCu);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
  {
    goto LABEL_75;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v34 = 136446210;
  v35 = "+[CLEEDHelper validateServerCertificateChallenge:]";
LABEL_73:
  v18 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v18);
  if (v18 != buf)
  {
LABEL_74:
    free(v18);
  }

LABEL_75:
  v26 = 1;
LABEL_89:
  objc_autoreleasePoolPop(v4);
  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)fetchCloakingKeyWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCloakingKeyWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BF8B0;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BF920;
    v12[3] = &unk_1E753D428;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchCloakingKeyWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchEmergencyContactNamesWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8BFE64;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8BFED4;
    v12[3] = &unk_1E753D450;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchEmergencyContactNamesWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchPreCachedAdrEnablementStatusWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]";
    v19 = 2114;
    v20 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = 136446466;
    v14 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]";
    v15 = 2114;
    v16 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8C03C0;
    v12[3] = &unk_1E753D338;
    v12[4] = self;
    v12[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B8C0430;
    v11[3] = &unk_1E753D478;
    v11[4] = self;
    v11[5] = a3;
    [v9 fetchPreCachedAdrEnablementStatusWithCompletion:v11];
  }

  else
  {
    (*(a3 + 2))(a3, @"Connection reset, caller needs to re-initialize");
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAdrPreCachingStatusWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]";
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446466;
    v17 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]";
    v18 = 2114;
    v19 = a3;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ([(CLEEDHelper *)self fConnection])
  {
    v8 = [(CLEEDHelper *)self fConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B8C0960;
    v13[3] = &unk_1E753D338;
    v13[4] = self;
    v13[5] = a3;
    v9 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B8C09D4;
    v12[3] = &unk_1E753D4A0;
    v12[4] = self;
    v12[5] = a3;
    [v9 fetchAdrPreCachingStatusWithCompletion:v12];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Connection reset, caller needs to re-initialize";
    (*(a3 + 2))(a3, 0, 0, [v10 initWithDomain:@"com.apple.CoreLocation.CLEEDHelperService" code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end