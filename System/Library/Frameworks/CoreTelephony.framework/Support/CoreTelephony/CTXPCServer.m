@interface CTXPCServer
- (BOOL)_sendNotification_sync:(id)a3 connection:(id)a4;
- (BOOL)clientHandler:(id)a3 hasEntitlement:(int)a4;
- (CTXPCServer)initWithRegistry:(shared_ptr<const Registry>)a3 factory:(id)a4 queue:(queue)a5;
- (CTXPCServerDelegate)delegate;
- (id).cxx_construct;
- (id)clientProxyForConnection:(id)a3;
- (id)contextForSlot:(int)a3;
- (id)contextForUUID:(id)a3;
- (id)existingContextInfoForUUID:(id)a3;
- (id)findExistingSubscriptionContextInfo:(id)a3;
- (id)resolveContext:(id)a3;
- (map<NSXPCConnection)clients;
- (os_state_data_s)_dumpState_sync:(os_state_hints_s *)a3;
- (shared_ptr<(anonymous)_getOrCreateProcInfo_sync:(anonymous)namespace;
- (shared_ptr<(anonymous)_getProcInfo_sync:(anonymous)namespace;
- (shared_ptr<const)registry;
- (void)_handleActiveSubscriptionsChanged_sync:(const void *)a3;
- (void)_handleAppRunningTransitioned_sync:(const void *)a3 isForeground:(BOOL)a4;
- (void)_handleAppSuspended_sync:(int)a3;
- (void)_handleGetClientsQuery_sync:(command_responder_t<xpc::dict> *)a3;
- (void)_handleSubscriptionInfoChanged_sync:(const void *)a3;
- (void)_processAppEntitlement_sync:(const void *)a3 appInfo:(const AppInfoResponse *)a4;
- (void)_processAppState_sync:(int)a3 state:(int)a4 isDaemon:(BOOL)a5 isBackgroundEntitled:(BOOL)a6;
- (void)_registerRestObservers_sync;
- (void)_registerRestProviders_sync;
- (void)_setupAppState_sync:(const void *)a3;
- (void)anyClientRespondsToSelector:(SEL)a3 completion:(id)a4;
- (void)bootstrap:(group_session)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)connectionDidBecomeInterrupted:(id)a3;
- (void)connectionDidBecomeInvalidated:(id)a3;
- (void)connectionDidTriggerFault:(id)a3 logString:(id)a4;
- (void)processNotification:(id)a3;
- (void)receivedSelectors:(id)a3 forConnection:(id)a4;
- (void)resetAppCategory:(void *)a3;
- (void)resetAvsTrafficStatus:(void *)a3;
- (void)resetIdsTrafficStatus:(void *)a3;
- (void)resetVoipCallTrafficStatus:(void *)a3;
- (void)setApplicationCategory:(shared_ptr<CTXPCConnectionWrapper>)a3 category:(unint64_t)a4;
- (void)setAssertionForConnection:(shared_ptr<CTXPCConnectionWrapper>)a3 dataConnectionType:(int)a4 enable:(BOOL)a5;
- (void)setClients:(map<NSXPCConnection *);
- (void)setRegistry:(shared_ptr<const Registry>)a3;
- (void)shutdown:(group_session)a3;
- (void)start;
- (void)updateAvsTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 CTDataAvsTrafficStatus:(int)a4 dataType:(int)a5 completion:(id)a6;
- (void)updateIdsTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 isStart:(BOOL)a4 dataType:(int)a5 completion:(id)a6;
- (void)updateVoipCallTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 isStart:(BOOL)a4 completion:(id)a5;
@end

@implementation CTXPCServer

- (shared_ptr<const)registry
{
  cntrl = self->_registry.__cntrl_;
  *v2 = self->_registry.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (CTXPCServer)initWithRegistry:(shared_ptr<const Registry>)a3 factory:(id)a4 queue:(queue)a5
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v9 = a3.__cntrl_;
  object = *a4;
  *a4 = 0;
  ctu::OsLogContext::OsLogContext(v19, kCtLoggingSystemName, "ct.server");
  v18.receiver = self;
  v18.super_class = CTXPCServer;
  v10 = [(CTXPCServer *)&v18 initWithQueue:&object logContext:v19];
  ctu::OsLogContext::~OsLogContext(v19);
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    v11 = *ptr;
    *ptr = 0;
    *(ptr + 1) = 0;
    v12 = *(v10 + 24);
    *(v10 + 184) = v11;
    if (v12)
    {
      sub_100004A34(v12);
    }

    objc_storeStrong(v10 + 17, cntrl);
    v13 = [v10 factory];
    [v10 getQueue];
    [v10 getLogContext];
    v14 = [v13 createListener:v21 name:"CTXPCServer" logContext:v17];
    v15 = *(v10 + 18);
    *(v10 + 18) = v14;

    ctu::OsLogContext::~OsLogContext(v17);
    if (v21[0])
    {
      dispatch_release(v21[0]);
    }

    [v10 getQueue];
    operator new();
  }

  return 0;
}

- (void)bootstrap:(group_session)a3
{
  v4 = self;
  v5 = *a3.var0.fObj;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v7[0] = off_101F23CB0;
  v6 = v4;
  v7[1] = v6;
  v7[2] = v5;
  v7[3] = v7;
  [(CTXPCServer *)v6 executeFunction:v7];
  sub_10002B644(v7);
}

- (void)start
{
  v2 = off_101F23E58;
  v3 = self;
  v4 = &v2;
  [(CTXPCServer *)v3 executeFunction:&v2];
  sub_10002B644(&v2);
}

- (void)shutdown:(group_session)a3
{
  v4 = self;
  v5 = *a3.var0.fObj;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v7[0] = off_101F23ED8;
  v6 = v4;
  v7[1] = v6;
  v7[2] = v5;
  v7[3] = v7;
  [(CTXPCServer *)v6 executeFunction:v7];
  sub_10002B644(v7);
}

- (void)setAssertionForConnection:(shared_ptr<CTXPCConnectionWrapper>)a3 dataConnectionType:(int)a4 enable:(BOOL)a5
{
  if (*a3.var0)
  {
    var0 = a3.var0;
    v6 = self;
    v7 = *(var0 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0;
    operator new();
  }

  [(CTXPCServer *)self getLogContext];
  v8 = v10;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "invalid connection", buf, 2u);
  }
}

- (void)setApplicationCategory:(shared_ptr<CTXPCConnectionWrapper>)a3 category:(unint64_t)a4
{
  if (*a3.var0)
  {
    var0 = a3.var0;
    v5 = self;
    v6 = *(var0 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0;
    operator new();
  }

  [(CTXPCServer *)self getLogContext];
  v7 = v9;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "invalid connection", buf, 2u);
  }
}

- (void)resetAppCategory:(void *)a3
{
  if (*a3)
  {
    ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v12)
        {
LABEL_13:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_11:
        v14 = (*(*v12 + 904))(v12);
        if (v14)
        {
          (*(*v14 + 120))(v14, **a3, 0);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }
}

- (void)updateIdsTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 isStart:(BOOL)a4 dataType:(int)a5 completion:(id)a6
{
  v6 = *&a5;
  var0 = a3.var0;
  v8 = self;
  v9 = *(var0 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  objc_retainBlock(v6);
  operator new();
}

- (void)resetIdsTrafficStatus:(void *)a3
{
  if (*a3)
  {
    ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v18 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v12)
        {
LABEL_12:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_11:
        v14 = **a3;
        v22[0] = off_101F24158;
        v22[3] = v22;
        (*(*v12 + 936))(v12, v14, 0, 1, v22);
        sub_10000FF50(v22);
        v15 = **a3;
        v21[0] = off_101F241D8;
        v21[3] = v21;
        (*(*v12 + 936))(v12, v15, 0, 2, v21);
        sub_10000FF50(v21);
        v16 = **a3;
        v20[0] = off_101F24258;
        v20[3] = v20;
        (*(*v12 + 936))(v12, v16, 0, 4, v20);
        sub_10000FF50(v20);
        v17 = **a3;
        v19[0] = off_101F242D8;
        v19[3] = v19;
        (*(*v12 + 936))(v12, v17, 0, 3, v19);
        sub_10000FF50(v19);
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

- (void)updateAvsTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 CTDataAvsTrafficStatus:(int)a4 dataType:(int)a5 completion:(id)a6
{
  v6 = *&a5;
  var0 = a3.var0;
  v8 = self;
  v9 = *(var0 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  objc_retainBlock(v6);
  operator new();
}

- (void)resetAvsTrafficStatus:(void *)a3
{
  if (*a3)
  {
    ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v16 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v12)
        {
LABEL_12:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_11:
        v14 = **a3;
        v18[0] = off_101F24458;
        v18[3] = v18;
        (*(*v12 + 944))(v12, v14, 3, 1, v18);
        sub_10000FF50(v18);
        v15 = **a3;
        v17[0] = off_101F244D8;
        v17[3] = v17;
        (*(*v12 + 944))(v12, v15, 3, 2, v17);
        sub_10000FF50(v17);
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

- (void)updateVoipCallTrafficStatus:(shared_ptr<CTXPCConnectionWrapper>)a3 isStart:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  var0 = a3.var0;
  v7 = self;
  v8 = *(var0 + 1);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  objc_retainBlock(v5);
  operator new();
}

- (void)resetVoipCallTrafficStatus:(void *)a3
{
  if (*a3)
  {
    ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v12)
        {
LABEL_12:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_11:
        v14 = **a3;
        v16[0] = off_101F24658;
        v16[3] = v16;
        (*(*v12 + 952))(v12, v14, 0, v16);
        sub_10000FF50(v16);
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

- (void)_registerRestObservers_sync
{
  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  sub_10000501C(&__p, "/cc/events/app_state_changed");
  objc_moveWeak(&from, &to);
  v9 = 0;
  v7 = off_101F246D8;
  objc_moveWeak(&v8, &from);
  v9 = &v7;
  objc_destroyWeak(&from);
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&to);
  objc_destroyWeak(&location);
}

- (void)_registerRestProviders_sync
{
  ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v17);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((*(*v11 + 32))(v11))
  {
    v13 = self;
    sub_10000501C(&__p, "/cc/requests/get_xpc_clients");
    v14 = v13;
    v17[0] = off_101F24758;
    v17[1] = v14;
    v17[3] = v17;
    ctu::RestModule::registerAsRequestSink();
    sub_1002C2508(v17);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_14:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

- (void)_handleGetClientsQuery_sync:(command_responder_t<xpc::dict> *)a3
{
  sub_10128CF00(&object, &self->_clients.__tree_.__begin_node_);
  v4 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    v5 = v4;
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = xpc_null_create();
  fObj = a3->var0.fObj.fObj;
  a3->var0.fObj.fObj = v5;
  xpc_release(fObj);
  xpc_release(v6);
  xpc_release(v4);
}

- (void)_handleSubscriptionInfoChanged_sync:(const void *)a3
{
  p_subInfoSink = &self->_subInfoSink;
  if (rest::operator==())
  {
    [(CTXPCServer *)self getLogContext];
    v5 = *&v21[4];
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Subscription info remains unchanged", &v20, 2u);
    }
  }

  else
  {
    v6 = self->_subInfo;
    v7 = objc_opt_new();
    subInfo = self->_subInfo;
    self->_subInfo = v7;

    if (p_subInfoSink->fValue.fSubscriptions.__tree_.__size_)
    {
      v9 = [NSMutableArray arrayWithCapacity:?];
      begin_node = p_subInfoSink->fValue.fSubscriptions.__tree_.__begin_node_;
      p_end_node = &p_subInfoSink->fValue.fSubscriptions.__tree_.__end_node_;
      v11 = begin_node;
      if (begin_node != p_end_node)
      {
        do
        {
          v13 = sub_10018443C(&v11[5]);
          [v9 addObject:v13];

          left = v11[1].__left_;
          if (left)
          {
            do
            {
              v15 = left;
              left = left->__left_;
            }

            while (left);
          }

          else
          {
            do
            {
              v15 = v11[2].__left_;
              v16 = v15->__left_ == v11;
              v11 = v15;
            }

            while (!v16);
          }

          v11 = v15;
        }

        while (v15 != p_end_node);
      }

      [(CTXPCServiceSubscriptionInfo *)self->_subInfo setSubscriptions:v9];
    }

    [(CTXPCServer *)self getLogContext];
    v17 = *&v21[4];
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      *v21 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Subscription info is changing from %@", &v20, 0xCu);
    }

    [(CTXPCServer *)self getLogContext];
    v18 = *&v21[4];
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_subInfo;
      v20 = 138412290;
      *v21 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Subscription info is changing to %@", &v20, 0xCu);
    }

    [(CTXPCNotificationProxy *)self->_notificationProxy subscriptionInfoDidChange];
  }
}

- (void)_handleActiveSubscriptionsChanged_sync:(const void *)a3
{
  v4 = self->_activeSubInfo;
  v28 = objc_opt_new();
  v29 = self->_activeCtxs;
  v5 = objc_opt_new();
  p_activeSubsSink = &self->_activeSubsSink;
  v7 = [NSMutableArray arrayWithCapacity:0x6DB6DB6DB6DB6DB7 * ((self->_activeSubsSink.fValue.fSubscriptions.__end_ - self->_activeSubsSink.fValue.fSubscriptions.__begin_) >> 5)];
  v8 = [NSMutableArray arrayWithCapacity:0x6DB6DB6DB6DB6DB7 * ((self->_activeSubsSink.fValue.fSubscriptions.__end_ - self->_activeSubsSink.fValue.fSubscriptions.__begin_) >> 5)];
  end = self->_activeSubsSink.fValue.fSubscriptions.__end_;
  if (end != self->_activeSubsSink.fValue.fSubscriptions.__begin_)
  {
    v10 = self->_activeSubsSink.fValue.fSubscriptions.__begin_ + 160;
    do
    {
      v11 = v10 - 160;
      v12 = sub_10018443C((v10 - 160));
      [v8 addObject:v12];

      v13 = sub_100184694((v10 - 160));
      [v7 addObject:v13];

      if (*(v10 + 6) == 2)
      {
        v14 = [NSUUID alloc];
        v15 = v10;
        if (v10[23] < 0)
        {
          v15 = *v10;
        }

        v16 = [NSString stringWithUTF8String:v15];
        v17 = [v14 initWithUUIDString:v16];
        [v5 setDataPreferred:v17];
      }

      if (*(v10 + 7) == 2)
      {
        v18 = [NSUUID alloc];
        v19 = v10;
        if (v10[23] < 0)
        {
          v19 = *v10;
        }

        v20 = [NSString stringWithUTF8String:v19];
        v21 = [v18 initWithUUIDString:v20];
        [v5 setVoicePreferred:v21];
      }

      v10 += 224;
    }

    while (v11 + 224 != end);
    p_activeSubsSink = &self->_activeSubsSink;
    if ([v8 count])
    {
      [v28 setSubscriptions:v8];
    }
  }

  [v5 setSubscriptions:v7];
  v22 = [NSMutableArray arrayWithCapacity:0x6DB6DB6DB6DB6DB7 * ((p_activeSubsSink->fValue.fExistingUserSubscriptions.__end_ - p_activeSubsSink->fValue.fExistingUserSubscriptions.__begin_) >> 5)];
  begin = p_activeSubsSink->fValue.fExistingUserSubscriptions.__begin_;
  for (i = p_activeSubsSink->fValue.fExistingUserSubscriptions.__end_; begin != i; begin += 224)
  {
    v25 = sub_100184694(begin);
    [v22 addObject:v25];
  }

  [v5 setExistingUserSubscriptions:v22];
  objc_storeStrong(&self->_activeSubInfo, v28);
  objc_storeStrong(&self->_activeCtxs, v5);
  if (([(CTXPCContexts *)v29 isEqual:self->_activeCtxs]& 1) == 0)
  {
    [(CTXPCServer *)self getLogContext];
    v26 = *&v31[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      activeCtxs = self->_activeCtxs;
      *buf = 138412546;
      *v31 = v29;
      *&v31[8] = 2112;
      *&v31[10] = activeCtxs;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Active contexts are changing from %@ to %@", buf, 0x16u);
    }

    [(CTXPCNotificationProxy *)self->_notificationProxy activeSubscriptionsDidChange];
  }
}

- (shared_ptr<(anonymous)_getProcInfo_sync:(anonymous)namespace
{
  p_end_node = &self->_clients.__tree_.__end_node_;
  begin_node = self->_clients.__tree_.__begin_node_;
  if (begin_node != &self->_clients.__tree_.__end_node_)
  {
    while (1)
    {
      begin = begin_node->_activeSubsSink.fValue.fSubscriptions.__begin_;
      if (begin)
      {
        if (*begin == a3)
        {
          break;
        }
      }

      ptr = begin_node->_restModule.__ptr_;
      if (ptr)
      {
        do
        {
          v8 = ptr;
          ptr = ptr->fState.__ptr_;
        }

        while (ptr);
      }

      else
      {
        do
        {
          v8 = begin_node->_subInfoSink.fValue.fSubscriptions.__tree_.__begin_node_;
          v9 = *v8->OCSharedLoggable_opaque == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
      if (v8 == p_end_node)
      {
        goto LABEL_15;
      }
    }
  }

  if (begin_node == p_end_node)
  {
LABEL_15:
    *v3 = 0;
    v3[1] = 0;
  }

  else
  {
    end = begin_node->_activeSubsSink.fValue.fSubscriptions.__end_;
    *v3 = begin_node->_activeSubsSink.fValue.fSubscriptions.__begin_;
    v3[1] = end;
    if (end)
    {
      atomic_fetch_add_explicit(end + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<(anonymous)_getOrCreateProcInfo_sync:(anonymous)namespace
{
  v5 = v3;
  v6 = a3;
  *v5 = 0;
  v5[1] = 0;
  -[CTXPCServer _getProcInfo_sync:](self, "_getProcInfo_sync:", [v6 processIdentifier]);
  if (!*v5)
  {
    [v6 processIdentifier];
    operator new();
  }

  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_setupAppState_sync:(const void *)a3
{
  v13 = 0;
  v12 = 0u;
  *__p = 0u;
  v10 = **a3;
  LOBYTE(__p[0]) = 1;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = *(a3 + 1);
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  [(CTXPCServer *)self getLogContext];
  v16 = 0;
  rest::write_rest_value();
  sub_10000501C(&v15, "/cc/requests/get_app_state");
  to[5] = v16;
  v16 = xpc_null_create();
  objc_moveWeak(to, &v6);
  to[1] = v7;
  to[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  ctu::OsLogContext::OsLogContext();
  v17 = 0;
  operator new();
}

- (void)_processAppEntitlement_sync:(const void *)a3 appInfo:(const AppInfoResponse *)a4
{
  v7 = (*(**(*a3 + 32) + 16))(*(*a3 + 32), 6);
  v8 = (*(**(*a3 + 32) + 16))(*(*a3 + 32), 3);
  if (v7 != 1 && v8 != 1)
  {
LABEL_8:
    [(CTXPCServer *)self _processAppState_sync:**a3 state:a4->var0 isDaemon:a4->var2 isBackgroundEntitled:a4->var1];
    return;
  }

  if (a4->var3)
  {
    [(CTXPCServer *)self getLogContext];
    v10 = v18;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A318(&__p, *a3);
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      v21 = p_p;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Ignoring no restrictions for XPC service: %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_8;
  }

  [(CTXPCServer *)self getLogContext];
  v11 = v18;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A318(&__p, *a3);
    v13 = v19;
    v14 = __p;
    v15 = asString();
    v16 = &__p;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *buf = 136446466;
    v21 = v16;
    v22 = 2080;
    v23 = v15;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "App state[%{public}s] set to %s due to internal entitlements", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  *(*a3 + 48) = 1;
}

- (void)_processAppState_sync:(int)a3 state:(int)a4 isDaemon:(BOOL)a5 isBackgroundEntitled:(BOOL)a6
{
  v6 = a6;
  v7 = *&a3;
  if ([(CTXPCServer *)self _handleAppStateChanged_sync:*&a3 state:*&a4 isDaemon:a5])
  {

    [(CTXPCServer *)self _updateAppNotificationState_sync:v7 isBackgroundEntitled:v6];
  }
}

- (void)_handleAppSuspended_sync:(int)a3
{
  p_end_node = &self->_clients.__tree_.__end_node_;
  begin_node = self->_clients.__tree_.__begin_node_;
  if (begin_node != &self->_clients.__tree_.__end_node_)
  {
    v8 = 0;
    *&v3 = 136446210;
    v14 = v3;
    do
    {
      if (*begin_node[5].__left_ == a3)
      {
        if ((v8 & 1) == 0)
        {
          [(CTXPCServer *)self getLogContext];
          v9 = __p[1];
          ctu::OsLogContext::~OsLogContext(__p);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            sub_10000A318(__p, begin_node[5].__left_);
            v10 = v16 >= 0 ? __p : __p[0];
            *buf = v14;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App state[%{public}s] is suspended", buf, 0xCu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        [begin_node[4].__left_ invalidate];
        v8 = 1;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v12 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v12 = begin_node[2].__left_;
          v13 = v12->__left_ == begin_node;
          begin_node = v12;
        }

        while (!v13);
      }

      begin_node = v12;
    }

    while (v12 != p_end_node);
  }
}

- (void)_handleAppRunningTransitioned_sync:(const void *)a3 isForeground:(BOOL)a4
{
  v6 = *a3;
  v7 = *(*a3 + 48);
  if (v7 <= 5)
  {
    if (((1 << v7) & 0xD) != 0)
    {
      v8 = !a4;
      v9 = 2;
      goto LABEL_6;
    }

    if (((1 << v7) & 0x30) != 0)
    {
      v8 = !a4;
      v9 = 4;
LABEL_6:
      if (v8)
      {
        v7 = v9;
      }

      else
      {
        v7 = v9 + 1;
      }

      goto LABEL_9;
    }

    [(CTXPCServer *)self getLogContext];
    v14 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    v6 = *a3;
    if (v15)
    {
      sub_10000A318(buf, v6);
      if (v20 >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      *__p = 136446210;
      *&__p[4] = v16;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Ignoring app state [%{public}s] transition due to no restrictions", __p, 0xCu);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*buf);
      }

      v6 = *a3;
    }

    v7 = 1;
  }

LABEL_9:
  if (v7 != *(v6 + 48))
  {
    [(CTXPCServer *)self getLogContext];
    v10 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000A318(__p, *a3);
      if (v18 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      v12 = asString();
      v13 = asString();
      *buf = 136446722;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "App state[%{public}s] is moving from %s to %s", buf, 0x20u);
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }

    *(*a3 + 48) = v7;
  }
}

- (BOOL)_sendNotification_sync:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_25;
  }

  p_end_node = &self->_clients.__tree_.__end_node_;
  do
  {
    v11 = left[4].__left_;
    v12 = v11 >= v7;
    v13 = v11 < v7;
    if (v12)
    {
      p_end_node = left;
    }

    left = left[v13].__left_;
  }

  while (left);
  if (p_end_node == &self->_clients.__tree_.__end_node_ || p_end_node[4].__left_ > v7)
  {
    goto LABEL_25;
  }

  v14 = p_end_node[7].__left_;
  v15 = p_end_node[8].__left_;
  v16 = [v6 selector];
  if (v14 != v15)
  {
    while (*v14 != v16)
    {
      if (++v14 == v15)
      {
        v14 = v15;
        break;
      }
    }
  }

  if (v14 == p_end_node[8].__left_)
  {
    goto LABEL_25;
  }

  if (*(p_end_node[5].__left_ + 12) == 4)
  {
    if (p_end_node[13].__left_)
    {
      [(CTXPCServer *)self getLogContext];
      v17 = v33;
      ctu::OsLogContext::~OsLogContext(&__p);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000A318(&__p, p_end_node[5].__left_);
        if (v34 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446466;
        v36 = p_p;
        v37 = 2050;
        v38 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Dropping notification to client [%{public}s] (conn=%{public}p) due to backpressure barrier", buf, 0x16u);
        if (v34 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      [(CTXPCServer *)self getLogContext];
      v21 = v33;
      ctu::OsLogContext::~OsLogContext(&__p);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A318(&__p, p_end_node[5].__left_);
        v26 = v34 >= 0 ? &__p : __p;
        *buf = 136446466;
        v36 = v26;
        v37 = 2050;
        v38 = v8;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Scheduling send barrier for client in background [%{public}s] (conn=%{public}p)", buf, 0x16u);
        if (v34 < 0)
        {
          operator delete(__p);
        }
      }

      LOBYTE(p_end_node[13].__left_) = 1;
      v22 = [(CTXPCServer *)self factory];
      v23 = [v22 createSensitiveObjectClassifier];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10128F500;
      v27[3] = &unk_101F23C30;
      v27[4] = self;
      v31 = p_end_node;
      v28 = v8;
      v29 = v6;
      v30 = v23;
      v24 = v23;
      [v28 scheduleSendBarrierBlock:v27];
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  ++p_end_node[14].__left_;
  v19 = [v8 remoteObjectProxy];
  [v6 invokeWithTarget:v19];

  v20 = 1;
LABEL_26:

  return v20;
}

- (id)clientProxyForConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  p_clients = &self->_clients;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = left;
      v9 = left[4];
      if (v9 <= v4)
      {
        break;
      }

      left = *v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (v9 >= v4)
    {
      break;
    }

    left = v8[1];
    if (!left)
    {
      goto LABEL_7;
    }
  }

  [(CTXPCServer *)self _getOrCreateProcInfo_sync:v4];
  v10 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v11 = v8[6];
  *(v8 + 5) = v10;
  if (v11)
  {
    sub_100004A34(v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  [v5 setDelegate:self];
  nextClientID = self->_nextClientID;
  if (nextClientID + 1 > 1)
  {
    v13 = nextClientID + 1;
  }

  else
  {
    v13 = 1;
  }

  self->_nextClientID = v13;
  v14 = [CTXPCClientProxy alloc];
  [(CTXPCServer *)self getQueue];
  v15 = [(CTXPCClientProxy *)v14 initWithRegistry:&self->_registry queue:&object connection:v5 clientID:v13];
  if (object)
  {
    dispatch_release(object);
  }

  [(CTXPCClientHandler *)v15 setDelegate:self];
  [(CTXPCClientHandler *)v15 setDataProviderDelegate:self];
  [(CTXPCServer *)self getLogContext];
  v16 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000A318(__p, v8[5]);
    v17 = v24;
    v18 = __p[0];
    v19 = [(CTXPCClientHandler *)v15 clientID];
    v20 = __p;
    size = p_clients->__tree_.__size_;
    if (v17 < 0)
    {
      v20 = v18;
    }

    *buf = 136315650;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    v27 = 2048;
    v28 = size;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Added new client [%s] (cid=%lu), client list size %zu", buf, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15;
}

- (void)connectionDidBecomeInvalidated:(id)a3
{
  v4 = a3;
  v48 = 0;
  v49 = 0;
  [(CTXPCServer *)self _getOrCreateProcInfo_sync:v4];
  p_clients = &self->_clients;
  p_end_node = &self->_clients.__tree_.__end_node_;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (left)
  {
    v8 = &self->_clients.__tree_.__end_node_;
    v9 = self->_clients.__tree_.__end_node_.__left_;
    do
    {
      v10 = v9[4].__left_;
      v11 = v10 >= v4;
      v12 = v10 < v4;
      if (v11)
      {
        v8 = v9;
      }

      v9 = v9[v12].__left_;
    }

    while (v9);
    if (v8 != p_end_node && v8[4].__left_ <= v4)
    {
      v41 = &self->_clients.__tree_.__end_node_;
      v43 = &self->_clients;
      v14 = v8[10].__left_;
      v13 = v8[11].__left_;
      if (v14 != v13)
      {
        v45 = v8[11].__left_;
        while (1)
        {
          v15 = *v14;
          v16 = v14[1];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v15 || sub_1006CBAFC(v15) != 19)
          {
            goto LABEL_27;
          }

          ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
          v18 = ServiceMap;
          v19 = "22CellularPlanController";
          if (("22CellularPlanController" & 0x8000000000000000) != 0)
          {
            v20 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
          *buf = v19;
          v23 = sub_100009510(&v18[1].__m_.__sig, buf);
          if (!v23)
          {
            break;
          }

          v25 = v23[3];
          v24 = v23[4];
          if (!v24)
          {
            goto LABEL_23;
          }

          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = v45;
          sub_100004A34(v24);
          v26 = 0;
          if (v25)
          {
            goto LABEL_24;
          }

LABEL_25:
          if ((v26 & 1) == 0)
          {
            sub_100004A34(v24);
          }

LABEL_27:
          if (v16)
          {
            sub_100004A34(v16);
          }

          v14 += 2;
          if (v14 == v13)
          {
            goto LABEL_30;
          }
        }

        v25 = 0;
LABEL_23:
        std::mutex::unlock(v18);
        v24 = 0;
        v26 = 1;
        if (!v25)
        {
          goto LABEL_25;
        }

LABEL_24:
        (*(*v25 + 1112))(v25, [v4 processIdentifier]);
        goto LABEL_25;
      }

LABEL_30:
      [(CTXPCServer *)self resetAppCategory:&v8[5], v41, v43];
      [(CTXPCServer *)self resetAvsTrafficStatus:&v8[5]];
      [(CTXPCServer *)self resetIdsTrafficStatus:&v8[5]];
      [(CTXPCServer *)self resetVoipCallTrafficStatus:&v8[5]];
      p_end_node = v42;
      p_clients = v44;
      left = *v42;
    }

    if (left)
    {
      v27 = p_end_node;
      v28 = left;
      do
      {
        v29 = v28[4];
        v11 = v29 >= v4;
        v30 = v29 < v4;
        if (v11)
        {
          v27 = v28;
        }

        v28 = v28[v30];
      }

      while (v28);
      if (v27 != p_end_node && v27[4] <= v4)
      {
        v31 = v27[1];
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          v33 = v27;
          do
          {
            v32 = v33[2];
            v34 = *v32 == v33;
            v33 = v32;
          }

          while (!v34);
        }

        if (p_clients->__tree_.__begin_node_ == v27)
        {
          p_clients->__tree_.__begin_node_ = v32;
        }

        --p_clients->__tree_.__size_;
        sub_100018288(left, v27);
        sub_100060B74((v27 + 4));
        operator delete(v27);
      }
    }
  }

  [(CTXPCServer *)self getLogContext];
  v35 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000A318(__p, v48);
    v36 = v47;
    v37 = __p[0];
    v38 = [v4 ct_clientID];
    v39 = __p;
    size = p_clients->__tree_.__size_;
    if (v36 < 0)
    {
      v39 = v37;
    }

    *buf = 136315650;
    *&buf[4] = v39;
    *&buf[12] = 2048;
    *&buf[14] = v38;
    v51 = 2048;
    v52 = size;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Client [%s] disconnected (cid=%lu), client list size %zu", buf, 0x20u);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v49)
  {
    sub_100004A34(v49);
  }
}

- (void)connectionDidBecomeInterrupted:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = 0;
  [(CTXPCServer *)self _getOrCreateProcInfo_sync:v4];
  p_clients = &self->_clients;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_clients.__tree_.__end_node_;
    do
    {
      v8 = left[4].__left_;
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        p_end_node = left;
      }

      left = left[v10].__left_;
    }

    while (left);
    if (p_end_node != &self->_clients.__tree_.__end_node_ && p_end_node[4].__left_ <= v4)
    {
      sub_100021348(&p_end_node[10]);
      [(CTXPCServer *)self resetAppCategory:&p_end_node[5]];
      [(CTXPCServer *)self resetAvsTrafficStatus:&p_end_node[5]];
      [(CTXPCServer *)self resetIdsTrafficStatus:&p_end_node[5]];
      [(CTXPCServer *)self resetVoipCallTrafficStatus:&p_end_node[5]];
      [(CTXPCServer *)self getLogContext];
      v11 = *&v22[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000A318(__p, v19);
        v12 = v18;
        v13 = __p[0];
        v14 = [v4 ct_clientID];
        v15 = __p;
        size = p_clients->__tree_.__size_;
        if (v12 < 0)
        {
          v15 = v13;
        }

        *buf = 136315650;
        *v22 = v15;
        *&v22[8] = 2048;
        *&v22[10] = v14;
        v23 = 2048;
        v24 = size;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client [%s] interrupted (cid=%lu), client list size %zu", buf, 0x20u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

- (id)contextForUUID:(id)a3
{
  v4 = a3;
  v5 = [(CTXPCServiceSubscriptionInfo *)self->_activeSubInfo subscriptions];

  if (v5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [(CTXPCServiceSubscriptionInfo *)self->_activeSubInfo subscriptions];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = *v26;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          goto LABEL_21;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = [(CTXPCServiceSubscriptionInfo *)self->_subInfo subscriptions];
  v14 = v13 == 0;

  if (!v14)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(CTXPCServiceSubscriptionInfo *)self->_subInfo subscriptions];
    v15 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (!v15)
    {
LABEL_22:

      goto LABEL_24;
    }

    v16 = *v22;
LABEL_14:
    v17 = 0;
    while (1)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v21 + 1) + 8 * v17);
      v18 = [v10 uuid];
      v19 = [v18 isEqual:v4];

      if (v19)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    v15 = v10;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_24:

  return v15;
}

- (id)existingContextInfoForUUID:(id)a3
{
  v4 = a3;
  activeCtxs = self->_activeCtxs;
  if (activeCtxs)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CTXPCContexts *)activeCtxs existingUserSubscriptions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 uuid];
          v12 = [v11 isEqual:v4];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextForSlot:(int)a3
{
  v5 = [(CTXPCServiceSubscriptionInfo *)self->_subInfo subscriptions];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CTXPCServiceSubscriptionInfo *)self->_subInfo subscriptions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 slotID];
          if (v11 == sub_10000FD54(a3))
          {
            v12 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)resolveContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uuid];

    if (v6)
    {
      v7 = [v5 uuid];
      v8 = [(CTXPCServer *)self contextForUUID:v7];
    }

    else
    {
      v8 = -[CTXPCServer contextForSlot:](self, "contextForSlot:", sub_100018A64([v5 slotID]));
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findExistingSubscriptionContextInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 uuid], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 uuid];
    v8 = [(CTXPCServer *)self existingContextInfoForUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)processNotification:(id)a3
{
  v4 = a3;
  [v4 retainArguments];
  v5 = self;
  v6 = v4;
  v7[0] = off_101F248A8;
  v7[1] = v5;
  v7[2] = v6;
  v7[3] = v7;
  [(CTXPCServer *)v5 executeFunction:v7];
  sub_10002B644(v7);
}

- (void)anyClientRespondsToSelector:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_101290A64;
  v8[3] = &unk_101F23C58;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CTXPCServer *)self executeBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)receivedSelectors:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_clients.__tree_.__end_node_;
    do
    {
      v11 = left[4].__left_;
      v12 = v11 >= v7;
      v13 = v11 < v7;
      if (v12)
      {
        p_end_node = left;
      }

      left = left[v13].__left_;
    }

    while (left);
    if (p_end_node != &self->_clients.__tree_.__end_node_ && p_end_node[4].__left_ <= v7)
    {
      if (v6)
      {
        v36 = v6;
        v38 = v7;
        v14 = [v6 count];
        if (v14)
        {
          if (!(v14 >> 61))
          {
            sub_100018A1C(v14);
          }

          sub_1000CE3D4();
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v20 = v6;
        v21 = [v20 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v21)
        {
          v22 = *v40;
          v37 = v20;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v39 + 1) + 8 * i);
              if (NSSelectorFromString(v24))
              {
                sub_100018A1C(1uLL);
              }

              [(CTXPCServer *)self getLogContext];
              v25 = *&__p[8];
              ctu::OsLogContext::~OsLogContext(__p);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                sub_10000A318(buf, p_end_node[5].__left_);
                v26 = v46;
                v27 = *buf;
                v28 = [v38 ct_clientID];
                *__p = 138412802;
                v29 = buf;
                if (v26 < 0)
                {
                  v29 = v27;
                }

                *&__p[4] = v24;
                *&__p[12] = 2080;
                *&__p[14] = v29;
                v48 = 2048;
                v49 = v28;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received selector %@ from [%s] (cid=%lu), but it was not found", __p, 0x20u);
                if (v46 < 0)
                {
                  operator delete(*buf);
                }

                v20 = v37;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v21);
        }

        v6 = v36;
        v8 = v38;
        [(CTXPCServer *)self getLogContext];
        v30 = *&__p[8];
        ctu::OsLogContext::~OsLogContext(__p);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          sub_10000A318(buf, p_end_node[5].__left_);
          v31 = v46;
          v32 = *buf;
          v33 = [v38 ct_clientID];
          v34 = buf;
          if (v31 < 0)
          {
            v34 = v32;
          }

          *__p = 136315650;
          *&__p[4] = v34;
          *&__p[12] = 2048;
          *&__p[14] = v33;
          v48 = 2048;
          v49 = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Client [%s] (cid=%lu) registered for %zu notification(s)", __p, 0x20u);
          if (v46 < 0)
          {
            operator delete(*buf);
          }

          v8 = v38;
        }

        v35 = p_end_node[7].__left_;
        if (v35)
        {
          p_end_node[8].__left_ = v35;
          operator delete(v35);
          p_end_node[7].__left_ = 0;
          p_end_node[8].__left_ = 0;
          p_end_node[9].__left_ = 0;
        }

        p_end_node[7].__left_ = 0;
        p_end_node[8].__left_ = 0;
        p_end_node[9].__left_ = 0;
      }

      else
      {
        p_end_node[8].__left_ = p_end_node[7].__left_;
        [(CTXPCServer *)self getLogContext];
        v15 = *&__p[8];
        ctu::OsLogContext::~OsLogContext(__p);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          sub_10000A318(__p, p_end_node[5].__left_);
          v16 = SHIBYTE(v48);
          v17 = *__p;
          v18 = [v8 ct_clientID];
          v19 = __p;
          if (v16 < 0)
          {
            v19 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v19;
          v44 = 2048;
          v45 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client [%s] (cid=%lu) deregistered for all notifications", buf, 0x16u);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }
}

- (BOOL)clientHandler:(id)a3 hasEntitlement:(int)a4
{
  v5 = a3;
  v6 = [v5 connection];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 processIdentifier];
    [(CTXPCServer *)self _getProcInfo_sync:v8];
    [(CTXPCServer *)self getLogContext];
    v9 = v13;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request with no process info from pid %d!", buf, 8u);
    }
  }

  return 0;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    [v9 invoke];
    goto LABEL_17;
  }

  ServiceMap = Registry::getServiceMap(self->_registry.__ptr_);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v18 = v17[3];
    v19 = v17[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v20 = 0;
      if (!v18)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v20 = 1;
  if (v18)
  {
LABEL_12:
    (*(*v18 + 32))(v18);
  }

LABEL_13:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v21 = [v8 processIdentifier];
  v23 = 0;
  v24 = 0;
  [(CTXPCServer *)self _getProcInfo_sync:v21];
  [(CTXPCServer *)self getLogContext];
  v22 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received request with no process info from pid %d!", buf, 8u);
  }

LABEL_17:
}

- (os_state_data_s)_dumpState_sync:(os_state_hints_s *)a3
{
  if (a3->var2 == 3)
  {
    v20 = 0;
    sub_10128CF00(&v20, &self->_clients.__tree_.__begin_node_);
    propertyList = 0;
    v4 = v20;
    ctu::xpc_to_cf(&error, v20, v5);
    sub_100010180(&propertyList, &error);
    sub_10000A1EC(&error);
    err = 0;
    *&error = 0;
    *(&error + 1) = &err;
    Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    theData = Data;
    sub_1003A5C24(&error);
    if (Data)
    {
      Length = CFDataGetLength(Data);
      [(CTXPCServer *)self getLogContext];
      v8 = *(&error + 1);
      ctu::OsLogContext::~OsLogContext(&error);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(error) = 134217984;
        *(&error + 4) = Length;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Created %zu bytes of CF serialized data", &error, 0xCu);
      }

      v9 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
      v9->var0 = 1;
      v9->var1.var1 = Length;
      strlcpy(v9->var3, "CTXPCServer", 0x40uLL);
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(v9->var4, BytePtr, Length);
    }

    else
    {
      v16 = CFErrorCopyDescription(err);
      [(CTXPCServer *)self getLogContext];
      v14 = *(&error + 1);
      ctu::OsLogContext::~OsLogContext(&error);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(error) = 138412290;
        *(&error + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not convert current cells to serialized CF representation: %@", &error, 0xCu);
      }

      sub_100005978(&v16);
      v9 = 0;
    }

    sub_10002D760(&theData);
    sub_1003A5A8C(&err);
    sub_10001021C(&propertyList);
    xpc_release(v4);
  }

  else
  {
    [(CTXPCServer *)self getLogContext];
    v12 = *(&error + 1);
    ctu::OsLogContext::~OsLogContext(&error);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      var2 = a3->var2;
      LODWORD(error) = 67109120;
      DWORD1(error) = var2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Skipping state handler for %d", &error, 8u);
    }

    return 0;
  }

  return v9;
}

- (void)connectionDidTriggerFault:(id)a3 logString:(id)a4
{
  v6 = a3;
  v7 = a4;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_clients.__tree_.__end_node_;
  do
  {
    v10 = left[4].__left_;
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      p_end_node = left;
    }

    left = left[v12].__left_;
  }

  while (left);
  if (p_end_node != &self->_clients.__tree_.__end_node_ && p_end_node[4].__left_ <= v6)
  {
    [(CTXPCServer *)self getLogContext];
    v15 = *&v24[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000A318(__p, p_end_node[5].__left_);
      v16 = v22;
      v17 = __p[0];
      v18 = [v6 ct_clientID];
      v19 = __p;
      *buf = 136315650;
      if (v16 < 0)
      {
        v19 = v17;
      }

      *v24 = v19;
      *&v24[8] = 2048;
      *&v24[10] = v18;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Triggering fault for client [%s] (cid=%lu): %@", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = [v6 remoteObjectProxy];
    [v20 clientDidTriggerFault:v7];
  }

  else
  {
LABEL_9:
    [(CTXPCServer *)self getLogContext];
    v13 = *&v24[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 ct_clientID];
      *buf = 134217984;
      *v24 = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to send fault to client %lu", buf, 0xCu);
    }
  }
}

- (CTXPCServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRegistry:(shared_ptr<const Registry>)a3
{
  p_registry = &self->_registry;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_registry.__cntrl_;
  p_registry->__ptr_ = v5;
  p_registry->__cntrl_ = v4;
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }
}

- (map<NSXPCConnection)clients
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  left = self[8].__tree_.__end_node_.__left_;
  if (left != &self[8].__tree_.__size_)
  {
    v6 = 0;
    v7 = &retstr->__tree_.__end_node_;
    while (1)
    {
      v8 = &retstr->__tree_.__end_node_;
      if (v7 == p_end_node)
      {
        goto LABEL_9;
      }

      v9 = v6;
      v10 = &retstr->__tree_.__end_node_;
      if (v6)
      {
        do
        {
          v8 = v9;
          v9 = v9[1].__left_;
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2].__left_;
          v11 = v8->__left_ == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = left[1].__tree_.__end_node_.__left_;
      if (v8[4].__left_ < v12)
      {
LABEL_9:
        if (v6)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = &retstr->__tree_.__end_node_;
        }

        if (!v13->__left_)
        {
LABEL_20:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          sub_1012934C8();
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v14 = v6;
            v15 = v6[4].__left_;
            if (v12 >= v15)
            {
              break;
            }

            v6 = *v14;
            if (!*v14)
            {
              goto LABEL_20;
            }
          }

          if (v15 >= v12)
          {
            break;
          }

          v6 = v14[1];
          if (!v6)
          {
            goto LABEL_20;
          }
        }
      }

      begin_node = left->__tree_.__end_node_.__left_;
      if (begin_node)
      {
        do
        {
          size = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          size = left->__tree_.__size_;
          v11 = size->__tree_.__begin_node_ == left;
          left = size;
        }

        while (!v11);
      }

      if (size == &self[8].__tree_.__size_)
      {
        break;
      }

      v7 = retstr->__tree_.__begin_node_;
      v6 = retstr->__tree_.__end_node_.__left_;
      left = size;
    }
  }

  return self;
}

- (void)setClients:(map<NSXPCConnection *)
{
  p_clients = &self->_clients;
  if (&self->_clients != a3)
  {
    p_end_node = &a3->__tree_.__end_node_;
    begin_node = a3->__tree_.__begin_node_;
    if (self->_clients.__tree_.__size_)
    {
      v49 = 0;
      v6 = *p_clients;
      v8 = &self->_clients.__tree_.__end_node_;
      left = self->_clients.__tree_.__end_node_.__left_;
      self->_clients.__tree_.__begin_node_ = &self->_clients.__tree_.__end_node_;
      left[2] = 0;
      self->_clients.__tree_.__end_node_.__left_ = 0;
      self->_clients.__tree_.__size_ = 0;
      if (v6[1])
      {
        v6 = v6[1];
      }

      v47 = &self->_clients;
      v48 = v6;
      sub_101293764(&v47);
      v9 = v49;
      if (!v49 || begin_node == p_end_node)
      {
        v45 = begin_node;
      }

      else
      {
        do
        {
          objc_storeStrong(v9 + 4, begin_node[4]);
          v11 = begin_node[5];
          v10 = begin_node[6];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v9[6];
          v9[5] = v11;
          v9[6] = v10;
          if (v12)
          {
            sub_100004A34(v12);
          }

          if (v9 != begin_node)
          {
            v13 = v9[7];
            v14 = begin_node[7];
            v15 = begin_node[8];
            v16 = v15 - v14;
            v17 = v9[9];
            if (v17 - v13 < (v15 - v14))
            {
              if (v13)
              {
                v9[8] = v13;
                operator delete(v13);
                v17 = 0;
                v9[7] = 0;
                v9[8] = 0;
                v9[9] = 0;
              }

              v18 = v16 >> 3;
              if (!((v16 >> 3) >> 61))
              {
                if (v17 >> 2 > v18)
                {
                  v18 = v17 >> 2;
                }

                if (v17 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v19 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v18;
                }

                sub_101293648((v9 + 7), v19);
              }

              sub_1000CE3D4();
            }

            v20 = p_end_node;
            v21 = v9[8];
            v22 = v21 - v13;
            if (v21 - v13 >= v16)
            {
              if (v15 != v14)
              {
                memmove(v9[7], begin_node[7], v15 - v14);
              }

              v25 = &v13[v16];
            }

            else
            {
              if (v21 != v13)
              {
                memmove(v9[7], begin_node[7], v21 - v13);
                v21 = v9[8];
              }

              v23 = (v14 + v22);
              v24 = v15 - (v14 + v22);
              if (v24)
              {
                memmove(v21, v23, v24);
              }

              v25 = &v21[v24];
            }

            v9[8] = v25;
            p_end_node = v20;
            v8 = (p_clients + 1);
            v27 = (v9 + 10);
            v26 = v9[10];
            v29 = begin_node[10];
            v28 = begin_node[11];
            v30 = v28 - v29;
            v31 = v9[12];
            if (v31 - v26 < v28 - v29)
            {
              if (v26)
              {
                sub_100021348(v9 + 10);
                operator delete(*v27);
                v31 = 0;
                *v27 = 0;
                v9[11] = 0;
                v9[12] = 0;
              }

              v32 = v30 >> 4;
              if (!((v30 >> 4) >> 60))
              {
                if (v31 >> 3 > v32)
                {
                  v32 = v31 >> 3;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v33 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v32;
                }

                sub_101293688((v9 + 10), v33);
              }

              sub_1000CE3D4();
            }

            v34 = v9[11] - v26;
            if (v34 >= v30)
            {
              v38 = sub_101293814(begin_node[10], begin_node[11], v26);
              for (i = v9[11]; i != v38; i -= 2)
              {
                v40 = *(i - 1);
                if (v40)
                {
                  sub_100004A34(v40);
                }
              }

              v9[11] = v38;
            }

            else
            {
              v35 = (v29 + v34);
              sub_101293814(begin_node[10], (v29 + v34), v26);
              v36 = v9[11];
              while (v35 != v28)
              {
                *v36 = *v35;
                v37 = v35[1];
                v36[1] = v37;
                if (v37)
                {
                  atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
                }

                v35 += 2;
                v36 += 2;
              }

              v9[11] = v36;
            }
          }

          *(v9 + 13) = *(begin_node + 13);
          v41 = v8->__left_;
          v42 = v8;
          v43 = v8;
          if (v8->__left_)
          {
            do
            {
              while (1)
              {
                v42 = v41;
                if (v49[4] >= v41[4].__left_)
                {
                  break;
                }

                v41 = v41->__left_;
                v43 = v42;
                if (!v42->__left_)
                {
                  goto LABEL_59;
                }
              }

              v41 = v41[1].__left_;
            }

            while (v41);
            v43 = &v42[1];
          }

LABEL_59:
          sub_1000070DC(p_clients, v42, v43, v49);
          sub_101293764(&v47);
          v44 = begin_node[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = v44->__left_;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = begin_node[2];
              v46 = v45->__left_ == begin_node;
              begin_node = v45;
            }

            while (!v46);
          }

          v9 = v49;
          if (v49)
          {
            v46 = v45 == p_end_node;
          }

          else
          {
            v46 = 1;
          }

          begin_node = v45;
        }

        while (!v46);
      }

      sub_1012937C4(&v47);
      begin_node = v45;
    }

    if (begin_node != p_end_node)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      sub_1012934C8();
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 40) = 0u;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 27) = 0;
  *(self + 26) = 0;
  *(self + 25) = self + 208;
  return self;
}

@end