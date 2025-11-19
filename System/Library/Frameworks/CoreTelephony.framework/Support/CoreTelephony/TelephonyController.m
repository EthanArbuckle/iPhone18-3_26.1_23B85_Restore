@interface TelephonyController
- (TelephonyController)initWithRegistry:(const void *)a3;
- (id).cxx_construct;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)handleUnexpectedAnswer:(const dict *)a3;
- (void)handleUnexpectedHold:(const dict *)a3;
- (void)handleUnexpectedMODial:(const dict *)a3 responder:(void *)a4;
- (void)initialize;
- (void)registerForRestProperties_sync;
@end

@implementation TelephonyController

- (TelephonyController)initWithRegistry:(const void *)a3
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("TelephonyController", v5);
  v13.receiver = self;
  v13.super_class = TelephonyController;
  v7 = [(TelephonyController *)&v13 initWithQueue:v6];
  if (v7)
  {
    if (v6)
    {
      dispatch_retain(v6);
    }

    fObj = v7->fQueue.fObj.fObj;
    v7->fQueue.fObj.fObj = v6;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v10 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->fRegistry.__cntrl_;
    v7->fRegistry.__ptr_ = v10;
    v7->fRegistry.__cntrl_ = v9;
    if (cntrl)
    {
      sub_100004A34(cntrl);
    }

    sub_1002C0284();
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  return 0;
}

- (void)initialize
{
  fObj = self->fQueue.fObj.fObj;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C03E8;
  block[3] = &unk_101E2E110;
  block[4] = self;
  dispatch_async(fObj, block);
}

- (void)registerForRestProperties_sync
{
  v2 = self;
  sub_10000501C(__p, "/cc/requests/unexpected_mo_dial");
  v3 = v2;
  v10 = off_101E390F8;
  v11 = v3;
  v12 = &v10;
  ctu::RestModule::registerAsRequestSink();
  sub_1002C2508(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v3;
  sub_10000501C(__p, "/cc/events/unexpected_answer");
  v5 = v4;
  v10 = off_101E39188;
  v11 = v5;
  v12 = &v10;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v5;
  sub_10000501C(__p, "/cc/events/unexpected_hold");
  v7 = v6;
  v10 = off_101E39208;
  v11 = v7;
  v12 = &v10;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1002C0694(&v7->fCurrentCalls.fValue.__end_);
}

- (void)handleUnexpectedMODial:(const dict *)a3 responder:(void *)a4
{
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  object = a3;
  v36 = "kUuid";
  sub_100006354(&object, v40);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(*v40);
  *buf = a3;
  *&buf[8] = "kCallStatus";
  sub_100006354(buf, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  *buf = a3;
  *&buf[8] = "kCallDirectionMobileOriginated";
  sub_100006354(buf, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  if (v9)
  {
    if (v7 <= 7 && ((1 << v7) & 0x9C) != 0)
    {
      v10 = *self->logger.__ptr_;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v38;
        if (v39 < 0)
        {
          v11 = v38[0];
        }

        *buf = 136315138;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Got Unexpected MO Dial for %s! Will send CXStartCallAction.", buf, 0xCu);
      }

      if (v39 >= 0)
      {
        v12 = v38;
      }

      else
      {
        v12 = v38[0];
      }

      [NSString stringWithUTF8String:v12];
      v31 = [[NSUUID alloc] initWithUUIDString:objc_claimAutoreleasedReturnValue()];
      object = 0;
      v36 = 0;
      v37 = 0;
      *v40 = a3;
      v41 = "kPhoneNumber";
      sub_100006354(v40, &v34);
      memset(buf, 0, sizeof(buf));
      xpc::dyn_cast_or_default();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v34);
      if (v37 >= 0)
      {
        p_object = &object;
      }

      else
      {
        p_object = object;
      }

      v33 = [NSString stringWithUTF8String:p_object, v31];
      *buf = a3;
      *&buf[8] = "kCallType";
      sub_100006354(buf, v40);
      xpc::dyn_cast_or_default(v40, 1, v14);
      xpc_release(*v40);
      *buf = a3;
      *&buf[8] = "kIsTTY";
      sub_100006354(buf, v40);
      v16 = xpc::dyn_cast_or_default(v40, 0, v15);
      xpc_release(*v40);
      *buf = a3;
      *&buf[8] = "kCallSourceMode";
      sub_100006354(buf, v40);
      v18 = xpc::dyn_cast_or_default(v40, 0, v17);
      xpc_release(*v40);
      v19 = [CXStartCallAction alloc];
      v20 = [[CXHandle alloc] initWithType:2 value:v33];
      v21 = [v19 initWithCallUUID:v32 handle:v20];

      *buf = a3;
      *&buf[8] = "kCallSimSlot";
      sub_100006354(buf, v40);
      xpc::dyn_cast_or_default(v40, 1, v22);
      xpc_release(*v40);
      memset(buf, 0, sizeof(buf));
      PersonalityIdFromSlotIdEx();
      *v40 = 0;
      UuidFromPersonalityId();
      v34 = 0;
      v23 = *v40;
      sub_1000475BC(&v34);
      if (v23)
      {
        v34 = 0;
        v34 = CFUUIDCreateString(0, *v40);
        v24 = v34;
        if (v24)
        {
          v25 = [[NSUUID alloc] initWithUUIDString:v24];
          [v21 setLocalSenderIdentityUUID:v25];
        }

        sub_100005978(&v34);
      }

      sub_1000475BC(v40);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      [v21 setVoicemail:0];
      [v21 setEmergency:isEmergencyCall()];
      [v21 setRelay:v18 == 1];
      [v21 setTTYType:sub_100B2EDD8(v16)];
      [objc_opt_new() addAction:v21];
      *buf = 0;
      *&buf[8] = 0;
      sub_1002C1044();
    }

    v26 = *self->logger.__ptr_;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = SHIBYTE(v39);
      v28 = v38[0];
      v29 = asString();
      v30 = v38;
      if (v27 < 0)
      {
        v30 = v28;
      }

      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Got unexpected MO dial event for a call, %s, that's not in dialing/alerting state (Call State: %s). Returning.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_101769774();
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }
}

- (void)handleUnexpectedAnswer:(const dict *)a3
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v23[0] = a3;
  v23[1] = "kUuid";
  sub_100006354(v23, &object);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  *buf = a3;
  *&buf[8] = "kCallStatus";
  sub_100006354(buf, v23);
  v6 = xpc::dyn_cast_or_default(v23, 0, v5);
  xpc_release(v23[0]);
  *buf = a3;
  *&buf[8] = "kCallDirectionMobileOriginated";
  sub_100006354(buf, v23);
  v8 = xpc::dyn_cast_or_default(v23, 0, v7);
  xpc_release(v23[0]);
  if (v8)
  {
    if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_101769864();
    }
  }

  else
  {
    v9 = *self->logger.__ptr_;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = SHIBYTE(v26);
        v11 = v25[0];
        v12 = asString();
        v13 = v25;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *buf = 136315394;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v12;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Got unexpected answer event for a call, %s, that's not in active state (Call State: %s). Returning.", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v25;
        if (v26 < 0)
        {
          v14 = v25[0];
        }

        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Got Unexpected Answer for %s! Sending CXAnswerCallAction.", buf, 0xCu);
      }

      if (v26 >= 0)
      {
        v15 = v25;
      }

      else
      {
        v15 = v25[0];
      }

      v16 = [NSString stringWithUTF8String:v15];
      v17 = [[NSUUID alloc] initWithUUIDString:v16];
      v18 = objc_opt_new();
      v19 = [[CXAnswerCallAction alloc] initWithCallUUID:v17];
      [v18 addAction:v19];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_1002C165C;
      v20[3] = &unk_101E39068;
      v20[4] = self;
      if (SHIBYTE(v26) < 0)
      {
        sub_100005F2C(__p, v25[0], v25[1]);
      }

      else
      {
        *__p = *v25;
        v22 = v26;
      }

      [(TelephonyController *)self requestTransaction:v18 completion:v20];
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

- (void)handleUnexpectedHold:(const dict *)a3
{
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v27[0] = a3;
  v27[1] = "kUuid";
  sub_100006354(v27, &object);
  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  *buf = a3;
  *&buf[8] = "kCallStatus";
  sub_100006354(buf, v27);
  v6 = xpc::dyn_cast_or_default(v27, 0, v5);
  xpc_release(v27[0]);
  *buf = a3;
  *&buf[8] = "kPreviousCallStatus";
  sub_100006354(buf, v27);
  v8 = xpc::dyn_cast_or_default(v27, 0, v7);
  xpc_release(v27[0]);
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 1;
  }

  v10 = v9;
  v12 = v6 == 1 && v8 == 0;
  ptr = self->logger.__ptr_;
  v14 = *ptr;
  if ((v10 & 1) != 0 || v12)
  {
    if (os_log_type_enabled(*ptr, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v29;
      if (v30 < 0)
      {
        v18 = v29[0];
      }

      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Got Unexpected Hold for %s! Sending CXSetHeldCallAction.", buf, 0xCu);
    }

    if (v30 >= 0)
    {
      v19 = v29;
    }

    else
    {
      v19 = v29[0];
    }

    v20 = [NSString stringWithUTF8String:v19];
    v21 = [[NSUUID alloc] initWithUUIDString:v20];
    v22 = objc_opt_new();
    v23 = [[CXSetHeldCallAction alloc] initWithCallUUID:v21 onHold:v10 ^ 1u];
    [v22 addAction:v23];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_1002C1B04;
    v24[3] = &unk_101E39068;
    v24[4] = self;
    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(__p, v29[0], v29[1]);
    }

    else
    {
      *__p = *v29;
      v26 = v30;
    }

    [(TelephonyController *)self requestTransaction:v22 completion:v24];
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (os_log_type_enabled(*ptr, OS_LOG_TYPE_ERROR))
  {
    if (v30 >= 0)
    {
      v15 = v29;
    }

    else
    {
      v15 = v29[0];
    }

    v16 = asString();
    v17 = asString();
    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 2080;
    v32 = v17;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Got unexpected hold event for a call, %s, that's not in the right state (Call State: %s, Previous Call State: %s). Returning.", buf, 0x20u);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v8)
  {
    v16 = *self->logger.__ptr_;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1017699CC(v16);
    }

    goto LABEL_63;
  }

  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  v9 = [v7 UUID];
  sub_1000B2CAC(v9, v45);

  v37 = 40;
  v10 = *self->logger.__ptr_;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v46 >= 0)
    {
      v11 = v45;
    }

    else
    {
      v11 = v45[0];
    }

    v12 = [v7 hasConnected];
    v13 = [v7 hasEnded];
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Call %s changed! active: %d, ended: %d", buf, 0x18u);
  }

  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_1000B2D2C(&v42, self->fCurrentCalls.fValue.__end_, self->fCurrentCalls.fValue.__cap_, (self->fCurrentCalls.fValue.__cap_ - self->fCurrentCalls.fValue.__end_) >> 3);
  v14 = v42;
  v15 = v43;
  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(__dst, v45[0], v45[1]);
  }

  else
  {
    *__dst = *v45;
    v41 = v46;
  }

  if (v14 == v15)
  {
    goto LABEL_39;
  }

  v39 = v7;
  do
  {
    v17 = *v14;
    v52 = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      v52 = xpc_null_create();
    }

    __p = 0;
    v50 = 0;
    v51 = 0;
    v47[0] = &v52;
    v47[1] = "kUuid";
    sub_100006354(v47, &object);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    if (v41 >= 0)
    {
      v18 = HIBYTE(v41);
    }

    else
    {
      v18 = __dst[1];
    }

    v19 = HIBYTE(v51);
    v20 = SHIBYTE(v51);
    if (v51 < 0)
    {
      v19 = v50;
    }

    if (v18 != v19)
    {
      v23 = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_34:
      operator delete(__p);
      goto LABEL_35;
    }

    if (v41 >= 0)
    {
      v21 = __dst;
    }

    else
    {
      v21 = __dst[0];
    }

    if (v51 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v23 = memcmp(v21, p_p, v18) == 0;
    if (v20 < 0)
    {
      goto LABEL_34;
    }

LABEL_35:
    xpc_release(v52);
    if (v23)
    {
      goto LABEL_38;
    }

    ++v14;
  }

  while (v14 != v15);
  v14 = v15;
LABEL_38:
  v7 = v39;
LABEL_39:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v14 != v43)
  {
    goto LABEL_61;
  }

  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v25 = ServiceMap;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  *buf = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, buf);
  if (!v30)
  {
    v32 = 0;
LABEL_50:
    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
    if (v32)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

  v32 = v30[3];
  v31 = v30[4];
  if (!v31)
  {
    goto LABEL_50;
  }

  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v25);
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v31);
  v33 = 0;
  if (!v32)
  {
    goto LABEL_59;
  }

LABEL_51:
  if (([v7 hasConnected] & 1) != 0 || objc_msgSend(v7, "hasEnded"))
  {
    if ([v7 hasEnded])
    {
      v34 = 2;
    }

    else
    {
      v34 = [v7 hasConnected];
    }

    v35 = **(&self->super.super.isa + v38);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Sending VoIP App Info (k3rdPartyApp, %s, kUnknown) to baseband", buf, 0xCu);
    }

    (*(*v32 + 672))(v32, 2, v34, 0);
  }

LABEL_59:
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

LABEL_61:
  *buf = &v42;
  sub_1000B2DB4(buf);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

LABEL_63:
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end