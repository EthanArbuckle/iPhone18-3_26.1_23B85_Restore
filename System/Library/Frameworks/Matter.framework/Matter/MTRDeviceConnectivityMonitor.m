@interface MTRDeviceConnectivityMonitor
+ (_DNSServiceRef_t)_sharedResolverConnection;
- (MTRDeviceConnectivityMonitor)initWithCompressedFabricID:(id)a3 nodeID:(id)a4;
- (MTRDeviceConnectivityMonitor)initWithInstanceName:(id)a3;
- (id).cxx_construct;
- (void)_callHandler;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)handleResolvedHostname:(const char *)a3 port:(unsigned __int16)a4 error:(int)a5;
- (void)startMonitoringWithHandler:(id)a3 queue:(id)a4;
- (void)stopMonitoring;
@end

@implementation MTRDeviceConnectivityMonitor

- (MTRDeviceConnectivityMonitor)initWithInstanceName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTRDeviceConnectivityMonitor;
  v5 = [(MTRDeviceConnectivityMonitor *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    instanceName = v5->_instanceName;
    v5->_instanceName = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    connections = v5->_connections;
    v5->_connections = v8;
  }

  return v5;
}

- (MTRDeviceConnectivityMonitor)initWithCompressedFabricID:(id)a3 nodeID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 unsignedLongLongValue];
  v14[0] = [v7 unsignedLongLongValue];
  v14[1] = v8;
  if (sub_23948BE1C(v17, 0x35uLL, v14))
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = self;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ could not make instance name", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
    self = [(MTRDeviceConnectivityMonitor *)self initWithInstanceName:v11];

    v10 = self;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  while (begin != end)
  {
    DNSServiceRefDeallocate(*begin++);
  }

  v5.receiver = self;
  v5.super_class = MTRDeviceConnectivityMonitor;
  [(MTRDeviceConnectivityMonitor *)&v5 dealloc];
}

+ (_DNSServiceRef_t)_sharedResolverConnection
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  result = qword_27DF775F0;
  if (!qword_27DF775F0)
  {
    Connection = DNSServiceCreateConnection(&qword_27DF775F0);
    if (Connection)
    {
      v5 = Connection;
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "MTRDeviceConnectivityMonitor: DNSServiceCreateConnection failed %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    else
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("MTRDeviceConnectivityMonitor", v7);
      v9 = qword_27DF775F8;
      qword_27DF775F8 = v8;

      if (!DNSServiceSetDispatchQueue(qword_27DF775F0, qword_27DF775F8))
      {
        result = qword_27DF775F0;
        goto LABEL_14;
      }

      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = a1;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ cannot set dispatch queue on resolve", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      DNSServiceRefDeallocate(qword_27DF775F0);
      qword_27DF775F0 = 0;
      v11 = qword_27DF775F8;
      qword_27DF775F8 = 0;
    }

    result = 0;
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_callHandler
{
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  v3 = MEMORY[0x23EE78590](self->_monitorHandler);
  if (v3)
  {
    v4 = v3;
    dispatch_async(self->_handlerQueue, v3);
    v3 = v4;
  }
}

- (void)handleResolvedHostname:(const char *)a3 port:(unsigned __int16)a4 error:(int)a5
{
  v6 = a4;
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&unk_27DF775E8);
  if (a3)
  {
    if (a5 == -65563)
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = self;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ disconnected from dns-sd subsystem", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v21 = self;
        sub_2393D5320(0, 1);
      }

      [(MTRDeviceConnectivityMonitor *)self _stopMonitoring];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
      v12 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v11];

      if (!v12)
      {
        snprintf(__str, 6uLL, "%d", __rev16(v6));
        host = nw_endpoint_create_host(a3, __str);
        if (host)
        {
          secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
          if (secure_udp)
          {
            v15 = nw_connection_create(host, secure_udp);
            v16 = v15;
            if (v15)
            {
              nw_connection_set_queue(v15, qword_27DF775F8);
              objc_initWeak(buf, self);
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = sub_239295FB4;
              handler[3] = &unk_278A74440;
              objc_copyWeak(&v25, buf);
              nw_connection_set_path_changed_handler(v16, handler);
              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = sub_239296100;
              v22[3] = &unk_278A74468;
              objc_copyWeak(&v23, buf);
              nw_connection_set_viability_changed_handler(v16, v22);
              nw_connection_start(v16);
              [(NSMutableDictionary *)self->_connections setObject:v16 forKeyedSubscript:v11];
              objc_destroyWeak(&v23);
              objc_destroyWeak(&v25);
              objc_destroyWeak(buf);
            }

            else
            {
              v19 = sub_2393D9044(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v28 = self;
                v29 = 2080;
                v30 = a3;
                v31 = 2080;
                v32 = __str;
                _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%@ failed to create connection for %s:%s", buf, 0x20u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1);
              }
            }
          }

          else
          {
            v18 = sub_2393D9044(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = self;
              _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ failed to create udp parameters", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1);
            }
          }
        }

        else
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v28 = self;
            v29 = 2080;
            v30 = a3;
            v31 = 2080;
            v32 = __str;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%@ failed to create endpoint for %s:%s", buf, 0x20u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }
        }
      }
    }
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ NULL host resolved, ignoring", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringWithHandler:(id)a3 queue:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&unk_27DF775E8);
  v8 = MEMORY[0x23EE78590](v6);
  monitorHandler = self->_monitorHandler;
  self->_monitorHandler = v8;

  objc_storeStrong(&self->_handlerQueue, a4);
  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  p_resolvers = &self->_resolvers;
  v13 = sub_2393D9044(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (end == begin)
  {
    if (v14)
    {
      instanceName = self->_instanceName;
      *buf = 138412802;
      v43 = self;
      v44 = 2112;
      v45 = instanceName;
      v46 = 2048;
      v47 = qword_27DF77600;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ start connectivity monitoring for %@ (%lu monitoring objects)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v36 = self->_instanceName;
      v38 = qword_27DF77600;
      v34 = self;
      sub_2393D5320(0, 2);
    }

    v16 = [MTRDeviceConnectivityMonitor _sharedResolverConnection:v34];
    if (v16)
    {
      v40 = v7;
      for (i = 0; i != 2; ++i)
      {
        v18 = off_278A74488[i];
        sdRef = v16;
        v19 = DNSServiceResolve(&sdRef, 0x4000u, 0, [(NSString *)self->_instanceName UTF8String:v35], "_matter._tcp", v18, sub_2392966A0, self);
        if (v19)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = "(null)";
            }

            v43 = self;
            v44 = 2080;
            v45 = v20;
            v46 = 1024;
            LODWORD(v47) = v19;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ failed to create resolver for %s domain: %d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            if (v18)
            {
              v21 = v18;
            }

            else
            {
              v21 = "(null)";
            }

            v37 = v21;
            v39 = v19;
            v35 = self;
            sub_2393D5320(0, 1);
          }
        }

        else
        {
          v23 = self->_resolvers.__end_;
          cap = self->_resolvers.__cap_;
          if (v23 >= cap)
          {
            v25 = v23 - p_resolvers->__begin_;
            if ((v25 + 1) >> 61)
            {
              sub_238DBAEA8();
            }

            v26 = cap - p_resolvers->__begin_;
            v27 = v26 >> 2;
            if (v26 >> 2 <= (v25 + 1))
            {
              v27 = v25 + 1;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v27;
            }

            if (v28)
            {
              sub_239296C28(&self->_resolvers, v28);
            }

            *(8 * v25) = sdRef;
            v24 = (8 * v25 + 8);
            v29 = self->_resolvers.__begin_;
            v30 = (self->_resolvers.__end_ - v29);
            v31 = (8 * v25 - v30);
            memcpy(v31, v29, v30);
            v32 = self->_resolvers.__begin_;
            self->_resolvers.__begin_ = v31;
            self->_resolvers.__end_ = v24;
            self->_resolvers.__cap_ = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v23 = sdRef;
            v24 = v23 + 1;
          }

          self->_resolvers.__end_ = v24;
        }
      }

      v7 = v40;
      if (self->_resolvers.__end_ != self->_resolvers.__begin_)
      {
        ++qword_27DF77600;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = self;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ failed to get shared resolver connection", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v43 = self;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ connectivity monitor already running", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoring
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v6), v14];
        nw_connection_cancel(v7);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_connections removeAllObjects];
  monitorHandler = self->_monitorHandler;
  self->_monitorHandler = 0;

  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = 0;

  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  if (end != begin)
  {
    do
    {
      DNSServiceRefDeallocate(*begin++);
    }

    while (begin != end);
    self->_resolvers.__end_ = self->_resolvers.__begin_;
    if (!--qword_27DF77600)
    {
      v12 = dispatch_time(0, 10000000000);
      dispatch_after(v12, qword_27DF775F8, &unk_284BB7040);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    instanceName = self->_instanceName;
    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = instanceName;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ stop connectivity monitoring for %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v6 = self->_instanceName;
    sub_2393D5320(0, 2);
  }

  os_unfair_lock_lock(&unk_27DF775E8);
  if (qword_27DF775F0 && qword_27DF775F8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239296B4C;
    block[3] = &unk_278A72320;
    block[4] = self;
    dispatch_async(qword_27DF775F8, block);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ shared resolver connection already stopped - nothing to do", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
  v5 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end