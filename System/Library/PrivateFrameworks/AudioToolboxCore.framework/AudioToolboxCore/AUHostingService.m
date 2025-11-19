@interface AUHostingService
+ (BOOL)conformsToProtocol:(id)a3;
+ (BOOL)instancesRespondToSelector:(SEL)a3;
- (AUHostingService)initWithConnection:(id)a3;
- (id).cxx_construct;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)closeHost:(id)a3;
- (void)dealloc;
- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)a3 config:(id)a4 reply:(id)a5;
- (void)retrieveAudioUnitInstanceID:(id)a3;
@end

@implementation AUHostingService

- (id).cxx_construct
{
  *(self + 3) = 0uLL;
  *(self + 8) = 0;
  return self;
}

- (void)dealloc
{
  if (self->_host)
  {
    v3 = +[AUHostingServiceInstanceMap sharedInstance];
    v4 = [(AURemoteHost *)self->_host audioUnitUUID];
    [v3 unregisterInstance:v4];

    host = self->_host;
    self->_host = 0;
  }

  v6.receiver = self;
  v6.super_class = AUHostingService;
  [(AUHostingService *)&v6 dealloc];
}

- (void)closeHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained auditToken];
  }

  else
  {
    memset(&task_info_out[1], 0, sizeof(audit_token_t));
  }

  task_info_outCnt.val[0] = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt.val))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    task_info_outCnt = task_info_out[1];
    v7 = audit_token_to_pid(&task_info_outCnt);
    task_info_outCnt = task_info_out[0];
    if (v7 == audit_token_to_pid(&task_info_outCnt))
    {
      task_info_outCnt = task_info_out[1];
      v8 = audit_token_to_pidversion(&task_info_outCnt);
      task_info_outCnt = task_info_out[0];
      v9 = v8 == audit_token_to_pidversion(&task_info_outCnt);
    }

    else
    {
      v9 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__AUHostingService_closeHost___block_invoke;
    aBlock[3] = &unk_1E72C1FD8;
    aBlock[4] = self;
    v17 = v9;
    v10 = v4;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    v13 = atomic_fetch_add(g_number_of_connections, 0xFFFFFFFF) - 1;
    if (v9)
    {
      v14 = (*(v11 + 2))(v11, v13 == 0);
      v14[2]();
    }

    else
    {
      (*(v10 + 2))(v10, 0, v13);
      v14 = (v12)[2](v12, v13 == 0);
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

id __30__AUHostingService_closeHost___block_invoke(uint64_t a1, char a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__AUHostingService_closeHost___block_invoke_2;
  aBlock[3] = &unk_1E72C1FB0;
  v3 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = v3;
  v9 = a2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __30__AUHostingService_closeHost___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  CAFormatter::CAFormatter(&v16, (*(a1 + 32) + 24));
  v3 = *v2;
  v4 = (*v2 + 48);
  if (*(v3 + 71) < 0)
  {
    v4 = *v4;
  }

  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v14);
  }

  v5 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v18 = "AUHostingService.mm";
    v19 = 1024;
    v20 = 186;
    v21 = 2080;
    v22 = v16;
    v23 = 2080;
    v24 = v4;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Releasing Audio Unit %s and disconnecting from Hosting Service %s", buf, 0x26u);
  }

  v6 = +[AUHostingServiceInstanceMap sharedInstance];
  v7 = [*(*(a1 + 32) + 8) audioUnitUUID];
  [v6 unregisterInstance:v7];

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained invalidate];

  v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v11 setExportedObject:0];

  if (*(a1 + 48) == 1)
  {
    atomic_load(&g_number_of_connections);
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 49) == 1)
  {
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v15);
    }

    v12 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "AUHostingService.mm";
      v19 = 1024;
      v20 = 202;
      v21 = 2080;
      v22 = v4;
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Shutting down Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    {
      AUHostingService_exit_handler(void)::handler = 0;
      qword_1EAD31480 = &unk_1F033AD90;
      qword_1EAD31498 = &qword_1EAD31480;
    }

    os_unfair_lock_lock(&AUHostingService_exit_handler(void)::handler);
    if (!qword_1EAD31498)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*qword_1EAD31498 + 48))(qword_1EAD31498);
    os_unfair_lock_unlock(&AUHostingService_exit_handler(void)::handler);
  }

  if (v16)
  {
    free(v16);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)a3 config:(id)a4 reply:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  componentFlagsMask = a3->componentFlagsMask;
  *&self->_componentDescription.componentType = *&a3->componentType;
  self->_componentDescription.componentFlagsMask = componentFlagsMask;
  v11 = objc_alloc(MEMORY[0x1E696AFB0]);
  v12 = [v8 objectForKeyedSubscript:@"audioUnitInstanceUUID"];
  v13 = [v11 initWithUUIDString:v12];

  if (v13)
  {
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v35);
    }

    v14 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v41 = "AUHostingService.mm";
      v42 = 1024;
      v43 = 148;
      v44 = 2112;
      v45 = v13;
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to retrieve %@", buf, 0x1Cu);
    }

    v15 = +[AUHostingServiceInstanceMap sharedInstance];
    v16 = [v15 retrieveInstance:v13];
    host = self->_host;
    self->_host = v16;

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v36);
    }

    v18 = auhs_log_category(void)::category;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(AURemoteHost *)self->_host audioUnitUUID];
      v20 = [v19 UUIDString];
      v21 = self->_host;
      *buf = 136315906;
      v41 = "AUHostingService.mm";
      v42 = 1024;
      v43 = 150;
      v44 = 2112;
      v45 = v20;
      v46 = 2112;
      v47 = v21;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Connected to Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }
  }

  else
  {
    v22 = [AURemoteHost alloc];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v24 = [(AURemoteHost *)v22 initWithConnection:WeakRetained config:v8];
    v25 = self->_host;
    self->_host = v24;

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v38);
    }

    v26 = auhs_log_category(void)::category;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [(AURemoteHost *)self->_host audioUnitUUID];
      v28 = [v27 UUIDString];
      v29 = self->_host;
      *buf = 136315906;
      v41 = "AUHostingService.mm";
      v42 = 1024;
      v43 = 153;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }

    v18 = +[AUHostingServiceInstanceMap sharedInstance];
    v30 = [(AURemoteHost *)self->_host audioUnitUUID];
    [v18 registerInstance:v30 instance:self->_host];
  }

  if (self->_host)
  {
    CAFormatter::CAFormatter(&v39, &self->_componentDescription);
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v37);
    }

    v31 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v41 = "AUHostingService.mm";
      v42 = 1024;
      v43 = 164;
      v44 = 2080;
      v45 = v39;
      _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit: %s", buf, 0x1Cu);
    }

    if (*(&self->_instanceUUID.__rep_.__l + 23) < 0)
    {
      data = self->_instanceUUID.__rep_.__l.__data_;
    }

    v9[2](v9, 0);
    if (v39)
    {
      free(v39);
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
    (v9)[2](v9, v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)retrieveAudioUnitInstanceID:(id)a3
{
  v6 = a3;
  host = self->_host;
  if (host)
  {
    v5 = [(AURemoteHost *)host audioUnitUUID];
    v6[2](v6, 0, v5);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10867 userInfo:0];
    (v6)[2](v6, v5, 0);
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  host = self->_host;
  if (host)
  {
    if (objc_opt_respondsToSelector())
    {
      host = self->_host;
    }

    else
    {
      host = 0;
    }
  }

  return host;
}

- (AUHostingService)initWithConnection:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AUHostingService;
  v5 = [(AUHostingService *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    add = atomic_fetch_add(g_number_of_connections, 1u);
    v8 = [MEMORY[0x1E696B0D8] _UUID];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 UUIDString];
      v11 = v10;
      std::string::__assign_external(&v6->_instanceUUID, [v10 UTF8String]);
    }

    if (!add)
    {
      {
        caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v22);
      }

      v12 = auhs_log_category(void)::category;
      if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
      {
        p_instanceUUID = &v6->_instanceUUID;
        if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
        {
          p_instanceUUID = p_instanceUUID->__data_;
        }

        *buf = 136315650;
        v25 = "AUHostingService.mm";
        v26 = 1024;
        v27 = 96;
        v28 = 2080;
        v29 = p_instanceUUID;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Launched new Audio Unit Hosting Service %s", buf, 0x1Cu);
      }

      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        data = v6->_instanceUUID.__rep_.__l.__data_;
      }
    }

    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v21);
    }

    v15 = auhs_log_category(void)::category;
    if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
    {
      v16 = &v6->_instanceUUID;
      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        v16 = v16->__data_;
      }

      *buf = 136315650;
      v25 = "AUHostingService.mm";
      v26 = 1024;
      v27 = 100;
      v28 = 2080;
      v29 = v16;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d New connection with Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
    {
      v17 = v6->_instanceUUID.__rep_.__l.__data_;
    }

    v18 = v6;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (([AURemoteHost instancesRespondToSelector:?]& 1) != 0)
  {
    return 1;
  }

  v6 = [a1 superclass];

  return [v6 instancesRespondToSelector:a3];
}

+ (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([AURemoteHost conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_msgSend(a1 "superclass")];
  }

  return v5;
}

@end