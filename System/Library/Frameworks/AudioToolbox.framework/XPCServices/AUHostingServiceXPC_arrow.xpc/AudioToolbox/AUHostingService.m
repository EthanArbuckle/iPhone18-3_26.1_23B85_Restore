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
  if (task_info(mach_task_self_, 0xFu, task_info_out, task_info_outCnt.val))
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

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000056D8;
    v15[3] = &unk_100010AF8;
    v15[4] = self;
    v17 = v9;
    v10 = v4;
    v16 = v10;
    v11 = objc_retainBlock(v15);
    v12 = v11;
    v13 = atomic_fetch_add(dword_100015400, 0xFFFFFFFF) - 1;
    if (v9)
    {
      v14 = (v11[2])(v11, v13 == 0);
      v14[2]();
    }

    else
    {
      (*(v10 + 2))(v10, 0, v13);
      v14 = (v12)[2](v12, v13 == 0);
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

- (void)loadAudioUnitInRemoteHost:(AudioComponentDescription *)a3 config:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  componentFlagsMask = a3->componentFlagsMask;
  *&self->_componentDescription.componentType = *&a3->componentType;
  self->_componentDescription.componentFlagsMask = componentFlagsMask;
  v11 = [NSUUID alloc];
  v12 = [v8 objectForKeyedSubscript:@"audioUnitInstanceUUID"];
  v13 = [v11 initWithUUIDString:v12];

  if (v13)
  {
    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v14 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v36 = "AUHostingService.mm";
      v37 = 1024;
      v38 = 148;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to retrieve %@", buf, 0x1Cu);
    }

    v15 = +[AUHostingServiceInstanceMap sharedInstance];
    v16 = [v15 retrieveInstance:v13];
    host = self->_host;
    self->_host = v16;

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v18 = qword_100015440;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(AURemoteHost *)self->_host audioUnitUUID];
      v20 = [v19 UUIDString];
      v21 = self->_host;
      *buf = 136315906;
      v36 = "AUHostingService.mm";
      v37 = 1024;
      v38 = 150;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Connected to Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }
  }

  else
  {
    v22 = [AURemoteHost alloc];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v24 = [v22 initWithConnection:WeakRetained config:v8];
    v25 = self->_host;
    self->_host = v24;

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v26 = qword_100015440;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [(AURemoteHost *)self->_host audioUnitUUID];
      v28 = [v27 UUIDString];
      v29 = self->_host;
      *buf = 136315906;
      v36 = "AUHostingService.mm";
      v37 = 1024;
      v38 = 153;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit with UUID: %@ host instance: %@", buf, 0x26u);
    }

    v18 = +[AUHostingServiceInstanceMap sharedInstance];
    v30 = [(AURemoteHost *)self->_host audioUnitUUID];
    [v18 registerInstance:v30 instance:self->_host];
  }

  if (self->_host)
  {
    CAFormatter::CAFormatter(&v34, &self->_componentDescription);
    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v31 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v36 = "AUHostingService.mm";
      v37 = 1024;
      v38 = 164;
      v39 = 2080;
      v40 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Hosting Audio Unit: %s", buf, 0x1Cu);
    }

    if (*(&self->_instanceUUID.__rep_.__l + 23) < 0)
    {
      data = self->_instanceUUID.__rep_.__l.__data_;
    }

    v9[2](v9, 0);
    if (v34)
    {
      free(v34);
    }
  }

  else
  {
    v33 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-10875 userInfo:0];
    (v9)[2](v9, v33);
  }
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
    v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-10867 userInfo:0];
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
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AUHostingService;
  v5 = [(AUHostingService *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    add = atomic_fetch_add(dword_100015400, 1u);
    v8 = +[NSXPCListener _UUID];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 UUIDString];
      v11 = v10;
      sub_1000066D8(&v6->_instanceUUID, [v10 UTF8String]);
    }

    if (!add)
    {
      if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
      {
        sub_100005B6C("com.apple.coreaudio", "AUHostingService");
        __cxa_guard_release(&qword_100015450);
      }

      v12 = qword_100015440;
      if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
      {
        p_instanceUUID = &v6->_instanceUUID;
        if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
        {
          p_instanceUUID = p_instanceUUID->__data_;
        }

        *buf = 136315650;
        v22 = "AUHostingService.mm";
        v23 = 1024;
        v24 = 96;
        v25 = 2080;
        v26 = p_instanceUUID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Launched new Audio Unit Hosting Service %s", buf, 0x1Cu);
      }

      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        data = v6->_instanceUUID.__rep_.__l.__data_;
      }
    }

    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v15 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      v16 = &v6->_instanceUUID;
      if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
      {
        v16 = v16->__data_;
      }

      *buf = 136315650;
      v22 = "AUHostingService.mm";
      v23 = 1024;
      v24 = 100;
      v25 = 2080;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%25s:%-5d New connection with Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    if (*(&v6->_instanceUUID.__rep_.__l + 23) < 0)
    {
      v17 = v6->_instanceUUID.__rep_.__l.__data_;
    }

    v18 = v6;
  }

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