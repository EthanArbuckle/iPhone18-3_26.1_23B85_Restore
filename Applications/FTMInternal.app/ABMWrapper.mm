@interface ABMWrapper
+ (id)sharedInstance;
- (ABMWrapper)init;
- (ABMWrapperDelegate)delegate;
- (BOOL)addAWDConfigForAppId:(id)a3 andProtofFilePath:(id)a4;
- (BOOL)querySpecificMetric:(id)a3 triggerRef:(int)a4 triggerType:(int)a5 triggerID:(int)a6 profileID:(int)a7 metricID:(int)a8;
- (BOOL)removeAWDConfigForAppid:(id)a3;
- (dispatch_queue_s)queue;
- (id).cxx_construct;
- (void)listen;
@end

@implementation ABMWrapper

+ (id)sharedInstance
{
  v2 = qword_10037A510;
  if (!qword_10037A510)
  {
    v3 = objc_alloc_init(ABMWrapper);
    v4 = qword_10037A510;
    qword_10037A510 = v3;

    v2 = qword_10037A510;
  }

  return v2;
}

- (ABMWrapper)init
{
  v9.receiver = self;
  v9.super_class = ABMWrapper;
  v2 = [(ABMWrapper *)&v9 init];
  if (v2)
  {
    sub_1000182E8(&__p, "fieldtest");
    [v2 queue];
    abm::client::CreateManager();
    v3 = v8;
    v8 = 0uLL;
    v4 = *(v2 + 2);
    *(v2 + 8) = v3;
    if (v4)
    {
      sub_100019D5C(v4);
      if (*(&v8 + 1))
      {
        sub_100019D5C(*(&v8 + 1));
      }
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

- (dispatch_queue_s)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018438;
  block[3] = &unk_1003172E8;
  block[4] = self;
  if (qword_10037A518 != -1)
  {
    dispatch_once(&qword_10037A518, block);
  }

  return self->_queue;
}

- (BOOL)addAWDConfigForAppId:(id)a3 andProtofFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FTMInternal-4] addAWDConfigForAppId begins", &buf, 2u);
  }

  if (([v6 isEqualToString:@"fieldtest"] & 1) == 0)
  {
    v10 = 0;
    goto LABEL_44;
  }

  memset(&v36[1], 0, 7);
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v36[0] = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v36[0] = v9;
    if (!v9)
    {
      v11 = xpc_null_create();
      v9 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v9) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_12:
    v36[0] = v11;
    goto LABEL_13;
  }

  xpc_retain(v9);
LABEL_13:
  xpc_release(v9);
  v12 = [NSData dataWithContentsOfFile:v7];
  v13 = v12;
  v14 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  if (xpc_get_type(v14) == &_xpc_type_null)
  {
    v15 = 0;
    v16 = 0;
    v10 = 0;
  }

  else
  {
    v34 = xpc_int64_create(2);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    *&buf = v36;
    *(&buf + 1) = abm::kKeyAppID;
    sub_100018A04(&buf, &v34, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v34);
    v34 = 0;
    v32 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v32 = xpc_null_create();
    }

    *&buf = v36;
    *(&buf + 1) = abm::kKeyPayload;
    sub_100018A04(&buf, &v32, &v33);
    xpc_release(v33);
    v33 = 0;
    xpc_release(v32);
    v32 = 0;
    v30 = xpc_int64_create(0);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    *&buf = v36;
    *(&buf + 1) = abm::kKeyPayloadType;
    sub_100018A04(&buf, &v30, &v31);
    xpc_release(v31);
    v31 = 0;
    xpc_release(v30);
    v30 = 0;
    v17 = xpc_null_create();
    cntrl = self->_abmManager.__cntrl_;
    ptr = self->_abmManager.__ptr_;
    v28 = cntrl;
    v29 = v17;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    sub_1000182E8(&__p, abm::kCommandAddConfiguration);
    abm::client::PerformCommand();
    v19 = buf;
    v15 = *(&buf + 1);
    v20 = v38;
    LODWORD(v36[1]) = *v39;
    *(&v36[1] + 3) = *&v39[3];
    v21 = v40;
    v40 = 0;
    BYTE8(buf) = 0;
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v28)
    {
      sub_100019D5C(v28);
    }

    v16 = v21 < 0;
    if (v21 < 0)
    {
      sub_100019C10(&buf, v15, v20);
      if (v38 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }
    }

    else
    {
      *&buf = v15;
      *(&buf + 1) = v20;
      LODWORD(v38) = v36[1];
      *(&v38 + 3) = *(&v36[1] + 3);
      HIBYTE(v38) = v21;
      p_buf = &buf;
    }

    NSLog(@"%s: error=%d msg=%s", "[ABMWrapper addAWDConfigForAppId:andProtofFilePath:]", v19, p_buf);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(buf);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "FALSE";
      if (!v19)
      {
        v23 = "TRUE";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FTMInternal-4] addAWDConfigForAppId success? %{public}s", &buf, 0xCu);
    }

    v10 = v19 == 0;
  }

  xpc_release(v14);

  xpc_release(v36[0]);
  if (v16)
  {
    operator delete(v15);
  }

LABEL_44:

  return v10;
}

- (BOOL)removeAWDConfigForAppid:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"fieldtest"] & 1) == 0)
  {
    v7 = 0;
    goto LABEL_32;
  }

  memset(&v23[1], 0, 7);
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v23[0] = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v23[0] = v6;
    if (!v6)
    {
      v8 = xpc_null_create();
      v6 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_10:
    v23[0] = v8;
    goto LABEL_11;
  }

  xpc_retain(v6);
LABEL_11:
  xpc_release(v6);
  object[1] = xpc_null_create();
  v21 = xpc_int64_create(2);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  *&buf = v23;
  *(&buf + 1) = abm::kKeyAppID;
  sub_100018A04(&buf, &v21, object);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v21);
  cntrl = self->_abmManager.__cntrl_;
  ptr = self->_abmManager.__ptr_;
  v20 = cntrl;
  v21 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  sub_1000182E8(&__p, abm::kCommandClearConfiguration);
  abm::client::PerformCommand();
  v10 = buf;
  v12 = *(&buf + 1);
  v11 = v25;
  LODWORD(v23[1]) = *v26;
  *(&v23[1] + 3) = *&v26[3];
  v13 = v27;
  v27 = 0;
  BYTE8(buf) = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_100019D5C(v20);
  }

  if (v13 < 0)
  {
    sub_100019C10(&buf, v12, v11);
    if (v25 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }
  }

  else
  {
    *&buf = v12;
    *(&buf + 1) = v11;
    LODWORD(v25) = v23[1];
    *(&v25 + 3) = *(&v23[1] + 3);
    HIBYTE(v25) = v13;
    p_buf = &buf;
  }

  NSLog(@"%s: error=%d msg=%s", "[ABMWrapper removeAWDConfigForAppid:]", v10, p_buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(buf);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "FALSE";
    if (!v10)
    {
      v15 = "TRUE";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FTMInternal-4] removeAWDConfigForAppid success? %{public}s", &buf, 0xCu);
  }

  v7 = v10 == 0;
  xpc_release(v23[0]);
  if (v13 < 0)
  {
    operator delete(v12);
  }

LABEL_32:

  return v7;
}

- (BOOL)querySpecificMetric:(id)a3 triggerRef:(int)a4 triggerType:(int)a5 triggerID:(int)a6 profileID:(int)a7 metricID:(int)a8
{
  v14 = a3;
  if (([v14 isEqualToString:@"fieldtest"] & 1) == 0)
  {
    v17 = 0;
    goto LABEL_44;
  }

  *(v48 + 3) = 0;
  v48[0] = 0;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v15;
  if (v15)
  {
    v47 = v15;
  }

  else
  {
    v16 = xpc_null_create();
    v47 = v16;
    if (!v16)
    {
      v18 = xpc_null_create();
      v16 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v16) != &_xpc_type_dictionary)
  {
    v18 = xpc_null_create();
LABEL_10:
    v47 = v18;
    goto LABEL_11;
  }

  xpc_retain(v16);
LABEL_11:
  xpc_release(v16);
  v45 = xpc_int64_create(2);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyAppID;
  sub_100018A04(buf, &v45, &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(v45);
  v45 = 0;
  v43 = xpc_int64_create(0);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyPayloadType;
  sub_100018A04(buf, &v43, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v43);
  v43 = 0;
  v41 = xpc_int64_create(a4);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyTriggerRef;
  sub_100018A04(buf, &v41, &v42);
  xpc_release(v42);
  v42 = 0;
  xpc_release(v41);
  v41 = 0;
  v39 = xpc_int64_create(a5);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyTriggerType;
  sub_100018A04(buf, &v39, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(v39);
  v39 = 0;
  v37 = xpc_int64_create(a6);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyTriggerID;
  sub_100018A04(buf, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  v35 = xpc_int64_create(a7);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyProfileID;
  sub_100018A04(buf, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
  v33 = xpc_int64_create(a8);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  *buf = &v47;
  *&buf[8] = abm::kKeyMetricID;
  sub_100018A04(buf, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  v19 = xpc_null_create();
  cntrl = self->_abmManager.__cntrl_;
  ptr = self->_abmManager.__ptr_;
  v31 = cntrl;
  v32 = v19;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  sub_1000182E8(&__p, abm::kCommandQueryMetric);
  abm::client::PerformCommand();
  v21 = *buf;
  v23 = *&buf[8];
  v22 = *&buf[16];
  v48[0] = *v50;
  *(v48 + 3) = *&v50[3];
  v24 = v51;
  v51 = 0;
  buf[8] = 0;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    sub_100019D5C(v31);
  }

  if (v24 < 0)
  {
    sub_100019C10(buf, v23, v22);
    if (buf[23] >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }
  }

  else
  {
    *buf = v23;
    *&buf[8] = v22;
    *&buf[16] = v48[0];
    *&buf[19] = *(v48 + 3);
    buf[23] = v24;
    v25 = buf;
  }

  NSLog(@"%s: error=%d msg=%s", "[ABMWrapper querySpecificMetric:triggerRef:triggerType:triggerID:profileID:metricID:]", v21, v25);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v26 = "FALSE";
    if (!v21)
    {
      v26 = "TRUE";
    }

    *buf = 136446466;
    *&buf[4] = v26;
    *&buf[12] = 1026;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FTMInternal-4] querySpecificMetric success? %{public}s errorCode if any %{public}d", buf, 0x12u);
  }

  v17 = v21 == 0;
  xpc_release(v47);
  if (v24 < 0)
  {
    operator delete(v23);
  }

LABEL_44:

  return v17;
}

- (void)listen
{
  cntrl = self->_abmManager.__cntrl_;
  ptr = self->_abmManager.__ptr_;
  v16 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  sub_1000182E8(v13, abm::kEventTrigger);
  abm::client::RegisterEventHandler();
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16)
  {
    sub_100019D5C(v16);
  }

  v4 = self->_abmManager.__cntrl_;
  v11 = self->_abmManager.__ptr_;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1000182E8(v13, abm::kEventMetric);
  abm::client::RegisterEventHandler();
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v12)
  {
    sub_100019D5C(v12);
  }

  v5 = self->_abmManager.__cntrl_;
  v9 = self->_abmManager.__ptr_;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v10)
  {
    sub_100019D5C(v10);
  }

  v6 = self->_abmManager.__cntrl_;
  v7 = self->_abmManager.__ptr_;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v8)
  {
    sub_100019D5C(v8);
  }
}

- (ABMWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end