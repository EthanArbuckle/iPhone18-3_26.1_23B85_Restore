@interface BootstrapNetworkMonitor
- (BootstrapNetworkMonitor)initWithQueue:(queue)a3 registry:(shared_ptr<const Registry>)a4 operatorName:()basic_string<char isRoaming:()std:(std::allocator<char>> *)a5 :char_traits<char> withUsereSIM:;
- (id).cxx_construct;
- (void)configure;
- (void)dealloc;
- (void)logMetrics:(id)a3 processName:(id)a4 inBytes:(unint64_t)a5 outBytes:(unint64_t)a6;
- (void)statsManager:(id)a3 didReceiveNWSnapshot:(id)a4;
@end

@implementation BootstrapNetworkMonitor

- (BootstrapNetworkMonitor)initWithQueue:(queue)a3 registry:(shared_ptr<const Registry>)a4 operatorName:()basic_string<char isRoaming:()std:(std::allocator<char>> *)a5 :char_traits<char> withUsereSIM:
{
  v6 = v5;
  v7 = a5;
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  v12 = *a3.fObj.fObj;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::OsLogContext::OsLogContext(v23, kCtLoggingSystemName, "cp.bootstrap.accnt");
  v22.receiver = self;
  v22.super_class = BootstrapNetworkMonitor;
  v13 = [(BootstrapNetworkMonitor *)&v22 initWithQueue:&object logContext:v23];
  ctu::OsLogContext::~OsLogContext(v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    v14 = [[NWStatsManager alloc] initWithQueue:*a3.fObj.fObj];
    v15 = *(v13 + 1);
    *(v13 + 1) = v14;

    [*(v13 + 1) setDelegate:v13];
    v17 = *ptr;
    v16 = *(ptr + 1);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
    }

    v18 = *(v13 + 7);
    *(v13 + 6) = v17;
    *(v13 + 7) = v16;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    std::string::operator=((v13 + 16), cntrl);
    v13[40] = v7;
    v13[41] = v6;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1004A0064;
    v20[3] = &unk_101E2E110;
    v21 = v13;
    [v21 executeBlock:v20];
  }

  return v13;
}

- (void)dealloc
{
  [(BootstrapNetworkMonitor *)self getLogContext];
  v3 = v6;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidate NWStatsManager", buf, 2u);
  }

  [(NWStatsManager *)self->mgr invalidate];
  v4.receiver = self;
  v4.super_class = BootstrapNetworkMonitor;
  [(BootstrapNetworkMonitor *)&v4 dealloc];
}

- (void)configure
{
  v4[0] = kNWStatsParameterDomainInfo;
  v4[1] = kNWStatsSelectInterfaceCellular;
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = kNWStatsSelectInterfaceCellularViaFallback;
  v5[2] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
  [(NWStatsManager *)self->mgr configure:v3];
}

- (void)logMetrics:(id)a3 processName:(id)a4 inBytes:(unint64_t)a5 outBytes:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  cntrl = self->weakRegistry.__cntrl_;
  if (cntrl)
  {
    v13 = std::__shared_weak_count::lock(cntrl);
    if (v13)
    {
      v14 = v13;
      ptr = self->weakRegistry.__ptr_;
      if (!ptr)
      {
LABEL_55:
        sub_100004A34(v14);
        goto LABEL_56;
      }

      v39[0] = 0;
      v39[1] = 0;
      v40 = 0;
      sub_10000501C(v39, [v10 UTF8String]);
      v37[0] = 0;
      v37[1] = 0;
      v38 = 0;
      sub_10000501C(v37, [v11 UTF8String]);
      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      std::operator+<char>();
      roaming = self->roaming;
      ServiceMap = Registry::getServiceMap(ptr);
      v18 = ServiceMap;
      if (v19 < 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      v47 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &v47);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
          if (!v25)
          {
            goto LABEL_47;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
      if (!v25)
      {
LABEL_47:
        if ((v26 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }

        goto LABEL_55;
      }

LABEL_13:
      v51[0] = 0;
      v27 = xpc_dictionary_create(0, 0, 0);
      v28 = v27;
      if (v27)
      {
        v51[0] = v27;
      }

      else
      {
        v28 = xpc_null_create();
        v51[0] = v28;
        if (!v28)
        {
          v29 = xpc_null_create();
          v28 = 0;
          goto LABEL_20;
        }
      }

      if (xpc_get_type(v28) == &_xpc_type_dictionary)
      {
        xpc_retain(v28);
LABEL_21:
        xpc_release(v28);
        if (v36 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        v49 = xpc_string_create(v30);
        if (!v49)
        {
          v49 = xpc_null_create();
        }

        v47 = v51;
        v48 = "carrierIdentifier";
        sub_10000F688(&v47, &v49, &v50);
        xpc_release(v50);
        v50 = 0;
        xpc_release(v49);
        v49 = 0;
        if (v40 >= 0)
        {
          v31 = v39;
        }

        else
        {
          v31 = v39[0];
        }

        v45 = xpc_string_create(v31);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        v47 = v51;
        v48 = "fBundleName";
        sub_10000F688(&v47, &v45, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v45);
        v45 = 0;
        if (v38 >= 0)
        {
          v32 = v37;
        }

        else
        {
          v32 = v37[0];
        }

        v43 = xpc_string_create(v32);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        v47 = v51;
        v48 = "fProcessName";
        sub_10000F688(&v47, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v43);
        v43 = 0;
        if (__CFADD__(a6, a5))
        {
          v33 = -1;
        }

        else
        {
          v33 = a6 + a5;
        }

        v41 = xpc_uint64_create(v33);
        if (!v41)
        {
          v41 = xpc_null_create();
        }

        v34 = "totalDataUsedHome";
        if (roaming)
        {
          v34 = "totalDataUsedRoaming";
        }

        v47 = v51;
        v48 = v34;
        sub_10000F688(&v47, &v41, &v42);
        xpc_release(v42);
        v42 = 0;
        xpc_release(v41);
        v41 = 0;
        v47 = v51[0];
        if (v51[0])
        {
          xpc_retain(v51[0]);
        }

        else
        {
          v47 = xpc_null_create();
        }

        (*(*v25 + 16))(v25, "commCenterBootstrapUsagePerProcess", &v47);
        xpc_release(v47);
        v47 = 0;
        xpc_release(v51[0]);
        goto LABEL_47;
      }

      v29 = xpc_null_create();
LABEL_20:
      v51[0] = v29;
      goto LABEL_21;
    }
  }

LABEL_56:
}

- (void)statsManager:(id)a3 didReceiveNWSnapshot:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    *v37 = 0;
    v38 = 0;
    v39 = 0;
    [(BootstrapNetworkMonitor *)self getLogContext];
    v7 = *&v32[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 interfaceCellularViaFallback];
      v9 = if_indextoname([v6 interfaceIndex], v37);
      v10 = "";
      if (v9)
      {
        v10 = v37;
      }

      *buf = 67109378;
      *v32 = v8;
      *&v32[4] = 2082;
      *&v32[6] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "interfaceCellularViaFallback %{BOOL}d on interface (%{public}s)\n", buf, 0x12u);
    }

    if (self->withUserSIM && ([v6 interfaceCellularViaFallback] & 1) == 0)
    {
      [(BootstrapNetworkMonitor *)self getLogContext];
      v22 = *&v32[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "ignore non-fallback traffic";
        goto LABEL_21;
      }
    }

    else
    {
      v11 = [v6 deltaRxCellularBytes];
      v12 = [v6 deltaTxCellularBytes];
      v13 = [v6 attributedEntity];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [v6 domainName];
        if (!v15 || ([v6 domainName], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length") == 0, v16, v15, v17))
        {
          v18 = @"unknown.domain";
        }

        else
        {
          v18 = [v6 domainName];
        }

        v20 = [v6 processName];
        if (v20)
        {
          v21 = [v6 processName];
        }

        else
        {
          v21 = @"unknown.process";
        }

        [(BootstrapNetworkMonitor *)self getLogContext];
        v24 = *&v32[4];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v6 attributedEntity];
          *buf = 138413058;
          *v32 = v25;
          *&v32[8] = 2112;
          *&v32[10] = v21;
          v33 = 2112;
          v34 = v18;
          v35 = 2048;
          v36 = &v11[v12];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@:%@:%@ uses %llu", buf, 0x2Au);
        }

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1004A0C58;
        v27[3] = &unk_101E4FF68;
        v27[4] = self;
        v28 = v6;
        v26 = v21;
        v29 = v26;
        v30 = v28;
        [(BootstrapNetworkMonitor *)self executeBlock:v27];

        goto LABEL_26;
      }

      [(BootstrapNetworkMonitor *)self getLogContext];
      v22 = *&v32[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "no attributed entity";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  [(BootstrapNetworkMonitor *)self getLogContext];
  v19 = *&v32[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "cannot process non protocolSnapshots", buf, 2u);
  }

LABEL_27:
}

- (id).cxx_construct
{
  *(self + 24) = 0uLL;
  *(self + 2) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end