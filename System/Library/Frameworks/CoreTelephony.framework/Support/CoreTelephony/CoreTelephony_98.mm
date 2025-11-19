void sub_10065238C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void *sub_1006523A4(void *a1)
{
  *a1 = &off_101E6D070;
  v2 = +[CTLocationManager sharedManager];
  return a1;
}

void *sub_100652410(void *a1, uint64_t a2)
{
  *a1 = &off_101E6D070;
  v4 = +[CTLocationManager sharedManager];
  [v4 setRegistry:a2];

  return a1;
}

void sub_1006524A4(LocationInterface *a1)
{
  LocationInterface::~LocationInterface(a1);

  operator delete();
}

void sub_1006524DC(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[CTLocationManager sharedManager];
  [v4 startLocationUpdatesWithReason:a2];

  objc_autoreleasePoolPop(v3);
}

void sub_100652550()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[CTLocationManager sharedManager];
  [v1 stopLocationUpdates];

  objc_autoreleasePoolPop(v0);
}

id sub_1006525B4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[CTLocationManager sharedManager];
  v2 = [v1 isLocationServiceEnabled];

  objc_autoreleasePoolPop(v0);
  return v2;
}

id sub_10065261C()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[CTLocationManager sharedManager];
  v2 = [v1 isLocationServiceAuthorized];

  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_100652684(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[CTLocationManager sharedManager];
  [v4 startLocationMonitoringVisitsWithReason:a2];

  objc_autoreleasePoolPop(v3);
}

void sub_1006526F8()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[CTLocationManager sharedManager];
  [v1 stopLocationMonitoringVisits];

  objc_autoreleasePoolPop(v0);
}

void SendRadioNotReadyEvent(void)
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(34, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1006527B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void C2KRadioModule::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1006528B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101776F58(a10);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::C2KRadioModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  CSIRadioModulePrivate::CSIRadioModulePrivate(a1, &v7);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *a1 = off_101E6D0D8;
  *(a1 + 8) = off_101E6D360;
  *(a1 + 16) = off_101E6D388;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 912) = -1;
  *(a1 + 920) = 0u;
  *(a1 + 936) = -1;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 2;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 992) = 2;
  *(a1 + 996) = 0;
  sub_10000501C((a1 + 1000), "");
  *(a1 + 1024) = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 1032) = dispatch_queue_create("C2KRadioModule.ABM.queue", v5);
  *(a1 + 1208) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1081) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = a1 + 1208;
  *(a1 + 1224) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1232) = a1 + 1240;
  *(a1 + 1256) = 0u;
  *(a1 + 1280) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1284) = rest::kDefaultWidgetStatus;
  *(a1 + 1304) = 0u;
  *(a1 + 1296) = a1 + 1304;
  *(a1 + 1320) = 0;
  *(a1 + 1324) = 0;
  *(a1 + 1332) = 0;
  EmergencyMode::EmergencyMode((a1 + 1336));
  EmergencyMode::EmergencyMode((a1 + 1356));
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1376));
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 2184));
  sub_100109304((a1 + 2992), &rest::kDefaultRegistrationStatuses);
  *(a1 + 3016) = 0;
  return a1;
}

void sub_100652B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_10004543C(v10 + 2184);
  sub_10004543C(v10 + 1376);
  EmergencyMode::~EmergencyMode((v10 + 1356));
  EmergencyMode::~EmergencyMode((v10 + 1336));
  sub_1001A8E08(v10 + 1296, *(v10 + 1304));
  sub_10032D3A4(v10 + 1232, *(v10 + 1240));
  sub_10032D3A4(v10 + 1200, *(v10 + 1208));
  a10 = (v10 + 1176);
  sub_1000B2AF8(&a10);
  sub_1000CFBA0(v10 + 1104);
  if (*(v10 + 1095) < 0)
  {
    operator delete(*(v10 + 1072));
  }

  v14 = *(v10 + 1064);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(v10 + 1048);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(v10 + 1032);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (*(v10 + 1023) < 0)
  {
    operator delete(*v11);
  }

  v17 = *v12;
  if (*v12)
  {
    *(v10 + 976) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 872);
  if (v18)
  {
    *(v10 + 880) = v18;
    operator delete(v18);
  }

  v19 = (v10 + 816);
  v20 = *(v10 + 848);
  if (v20)
  {
    *(v10 + 856) = v20;
    operator delete(v20);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v10 + 824) = v21;
    operator delete(v21);
  }

  CSIRadioModulePrivate::~CSIRadioModulePrivate(v10);
  _Unwind_Resume(a1);
}

void sub_100652C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    sub_101776F7C();
  }

  JUMPOUT(0x100652C18);
}

void C2KRadioModule::handleBooted_nl(C2KRadioModule *this)
{
  (*(**(this + 8) + 32))(*(this + 8), 1);
  *(this + 160) = 0;
  *(this + 90) = 0;
  CSIRadioModulePrivate::changeState(this, 1u);
  C2KRadioModule::sendGetModemInfo_nl(this);
  C2KRadioModule::sendGetOperatingMode_nl(this);
  started = CSIRadioModulePrivate::startTracing_nl(this);
  if ((byte_101FBA870 & 1) == 0)
  {
    started = C2KRadioModule::setMotionBundle(this);
    byte_101FBA870 = 1;
  }

  if (capabilities::fusing::supportsCertIDFromPublicKeyHash(started))
  {
    *&v3.gr_gid = 0;
    C2KRadioModule::sendGetPkHash_nl(this, &v3.gr_gid);
  }

  v3.gr_passwd = 0;
  C2KRadioModule::sendGetFirmwareInfo_nl(this, &v3.gr_passwd);
  v3.gr_name = 0;
  C2KRadioModule::sendGetManifestStatus_nl(this, &v3);
  C2KRadioModule::handlePLMNChanged_sync(this);
  C2KRadioModule::handleActiveCall_sync(this);
  C2KRadioModule::handleECBM_sync(this);
  *(this + 228) = -1;
  *(this + 920) = 0u;
  *(this + 234) = -1;
  *(this + 59) = 0u;
  C2KRadioModule::handleRegNetworkChanged_sync(this, 1);

  C2KRadioModule::handleRegNetworkChanged_sync(this, 2);
}

void C2KRadioModule::sendGetModemInfo_nl(C2KRadioModule *this)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v2 = *(this + 132);
  v3 = xpc_null_create();
  v4 = abm::kCommandGetBasebandManagerInfo;
  v7 = v3;
  v5 = *(this + 129);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v8[0] = off_101E6F068;
  v8[1] = this;
  v8[3] = v8;
  (*(*v2 + 48))(v2, v4, &v7, &object, v8);
  sub_100049CCC(v8);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v7);
}

void sub_100652E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendGetOperatingMode_nl(C2KRadioModule *this)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v2 = *(this + 132);
  v3 = xpc_null_create();
  v4 = abm::kCommandGetBasebandOperatingMode;
  v7 = v3;
  v5 = *(this + 129);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v8[0] = off_101E6F0E8;
  v8[1] = this;
  v8[3] = v8;
  (*(*v2 + 48))(v2, v4, &v7, &object, v8);
  sub_100049CCC(v8);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v7);
}

void sub_100652FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendGetPkHash_nl(C2KRadioModule *this, group *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  if (*(this + 106) == *(this + 107))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "sendGetPkHash_nl";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    v5 = *(this + 132);
    v6 = xpc_null_create();
    v7 = abm::kKeyCommandGetPKHash;
    v11 = v6;
    v8 = *(this + 129);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v12[0] = off_101E6F168;
    v12[1] = this;
    v12[2] = gr_name;
    v12[3] = v12;
    (*(*v5 + 48))(v5, v7, &v11, &object, v12);
    sub_100049CCC(v12);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v11);
  }
}

void sub_1006531B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendGetFirmwareInfo_nl(C2KRadioModule *this, group *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  if (*(this + 102) == *(this + 103))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "sendGetFirmwareInfo_nl";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    v5 = *(this + 132);
    v6 = xpc_null_create();
    v7 = abm::kKeyCommandGetFirmwareInfo;
    v11 = v6;
    v8 = *(this + 129);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v12[0] = off_101E6F268;
    v12[1] = this;
    v12[2] = gr_name;
    v12[3] = v12;
    (*(*v5 + 48))(v5, v7, &v11, &object, v12);
    sub_100049CCC(v12);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v11);
  }
}

void sub_100653398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendGetManifestStatus_nl(C2KRadioModule *this, group *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  if (*(this + 121) == *(this + 122))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "sendGetManifestStatus_nl";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    v5 = *(this + 132);
    v6 = xpc_null_create();
    v7 = abm::kKeyCommandGetManifestStatus;
    v11 = v6;
    v8 = *(this + 129);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v12[0] = off_101E6F2E8;
    v12[1] = this;
    v12[2] = gr_name;
    v12[3] = v12;
    (*(*v5 + 48))(v5, v7, &v11, &object, v12);
    sub_100049CCC(v12);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v11);
  }
}

void sub_10065357C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handlePLMNChanged_sync(os_log_t *this)
{
  if (this[132])
  {
    object = 0;
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      object = v2;
    }

    else
    {
      v3 = xpc_null_create();
      object = v3;
      if (!v3)
      {
        v4 = xpc_null_create();
        v3 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
LABEL_12:
      xpc_release(v3);
      if (xpc_get_type(object) != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
        {
          sub_101776FB0();
        }

LABEL_51:
        xpc_release(object);
        return;
      }

      v5 = this[162];
      if (v5 == (this + 163))
      {
LABEL_43:
        v17 = this[132];
        v21 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v21 = xpc_null_create();
        }

        v18 = abm::kCommandCallServiceState;
        v19 = this[129];
        v20 = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        v29[0] = off_101E6F888;
        v29[1] = this;
        v29[3] = v29;
        (*(v17->isa + 6))(v17, v18, &v21, &v20, v29);
        sub_100049CCC(v29);
        if (v20)
        {
          dispatch_release(v20);
        }

        xpc_release(v21);
        v21 = 0;
        goto LABEL_51;
      }

      v6 = abm::kKeyPLMN2;
      v7 = abm::kKeyPLMN1;
      while (1)
      {
        memset(&v27, 0, sizeof(v27));
        v8 = *(v5 + 8);
        v9 = v7;
        if (v8 == 1)
        {
          goto LABEL_20;
        }

        if (v8 == 2)
        {
          break;
        }

LABEL_21:
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        v11 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          createPLMN();
          if (v24 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v25 = xpc_string_create(p_p);
          if (!v25)
          {
            v25 = xpc_null_create();
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v27;
          }

          else
          {
            v13 = v27.__r_.__value_.__r.__words[0];
          }

          v22[0] = &object;
          v22[1] = v13;
          sub_10000F688(v22, &v25, &v26);
          xpc_release(v26);
          v26 = 0;
          xpc_release(v25);
          v25 = 0;
          if (v24 < 0)
          {
            operator delete(__p);
          }

          v11 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        if (v11 < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        v14 = *(v5 + 1);
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = *(v5 + 2);
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        v5 = v15;
        if (v15 == (this + 163))
        {
          goto LABEL_43;
        }
      }

      v9 = v6;
LABEL_20:
      sub_100016890(&v27, v9);
      goto LABEL_21;
    }

    v4 = xpc_null_create();
LABEL_11:
    object = v4;
    goto LABEL_12;
  }

  if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }
}

void sub_100653900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleActiveCall_sync(C2KRadioModule *this)
{
  if (*(this + 132))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      object = v2;
    }

    else
    {
      v3 = xpc_null_create();
      object = v3;
      if (!v3)
      {
        v4 = xpc_null_create();
        v3 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
LABEL_12:
      xpc_release(v3);
      v5 = object;
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        v12 = xpc_BOOL_create(*(this + 1320));
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        v11[0] = &object;
        v11[1] = abm::kKeyVoiceCall;
        sub_10000F688(v11, &v12, &v13);
        xpc_release(v13);
        v13 = 0;
        xpc_release(v12);
        v12 = 0;
        v6 = *(this + 132);
        v10 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v10 = xpc_null_create();
        }

        v7 = abm::kCommandCallServiceState;
        v8 = *(this + 129);
        v9 = v8;
        if (v8)
        {
          dispatch_retain(v8);
        }

        v15[0] = off_101E6F908;
        v15[1] = this;
        v15[3] = v15;
        (*(*v6 + 48))(v6, v7, &v10, &v9, v15);
        sub_100049CCC(v15);
        if (v9)
        {
          dispatch_release(v9);
        }

        xpc_release(v10);
        v10 = 0;
        v5 = object;
      }

      else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101776FB0();
      }

      xpc_release(v5);
      return;
    }

    v4 = xpc_null_create();
LABEL_11:
    object = v4;
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }
}

void sub_100653BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleECBM_sync(C2KRadioModule *this)
{
  if (*(this + 132))
  {
    object = 0;
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      object = v2;
    }

    else
    {
      v3 = xpc_null_create();
      object = v3;
      if (!v3)
      {
        v4 = xpc_null_create();
        v3 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      goto LABEL_12;
    }

    v4 = xpc_null_create();
LABEL_11:
    object = v4;
LABEL_12:
    xpc_release(v3);
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v5 = *(this + 331);
      if (v5 == 2)
      {
        v11 = xpc_BOOL_create(*(this + 1332));
        if (!v11)
        {
          v11 = xpc_null_create();
        }

        p_object = &object;
        v14 = abm::kKeyECBM2;
        sub_10000F688(&p_object, &v11, &v12);
        xpc_release(v12);
        v12 = 0;
        xpc_release(v11);
        v11 = 0;
      }

      else
      {
        if (v5 != 1)
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101777018();
          }

          goto LABEL_33;
        }

        v15 = xpc_BOOL_create(*(this + 1332));
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        p_object = &object;
        v14 = abm::kKeyECBM1;
        sub_10000F688(&p_object, &v15, &v16);
        xpc_release(v16);
        v16 = 0;
        xpc_release(v15);
        v15 = 0;
      }

      v6 = *(this + 132);
      v10 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v10 = xpc_null_create();
      }

      v7 = abm::kCommandCallServiceState;
      v8 = *(this + 129);
      v9 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v18[0] = off_101E6FB08;
      v18[1] = this;
      v18[3] = v18;
      (*(*v6 + 48))(v6, v7, &v10, &v9, v18);
      sub_100049CCC(v18);
      if (v9)
      {
        dispatch_release(v9);
      }

      xpc_release(v10);
      v10 = 0;
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101776FB0();
    }

LABEL_33:
    xpc_release(object);
    return;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }
}

void sub_100653F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleDumpStateStartEvent(C2KRadioModule *this, dict a2, group *a3)
{
  if (xpc_get_type(*a2.fObj.fObj) == &_xpc_type_dictionary)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    memset(&v28, 0, sizeof(v28));
    fObj = a2.fObj.fObj;
    v26 = abm::kKeyTimestampString;
    sub_100006354(&fObj, &object);
    v5 = abm::kUnknownTimestamp;
    xpc::dyn_cast_or_default(&v28, &object, abm::kUnknownTimestamp, v6);
    xpc_release(object.__r_.__value_.__l.__data_);
    fObj = 0;
    v26 = 0;
    v27 = 0;
    object.__r_.__value_.__l.__data_ = a2.fObj.fObj;
    object.__r_.__value_.__l.__size_ = abm::kKeyTraceFilterAction;
    sub_100006354(&object, &__p);
    v7 = abm::kTraceFilterActionNone;
    xpc::dyn_cast_or_default(&fObj, &__p, abm::kTraceFilterActionNone, v8);
    xpc_release(__p.__r_.__value_.__l.__data_);
    memset(&object, 0, sizeof(object));
    __p.__r_.__value_.__l.__data_ = a2.fObj.fObj;
    __p.__r_.__value_.__l.__size_ = abm::kKeyTraceDumpStateReason;
    sub_100006354(&__p, buf);
    xpc::dyn_cast_or_default(&object, buf, abm::kDefaultReason, v9);
    xpc_release(*buf);
    sub_10000501C(&__p, v7);
    if (v27 >= 0)
    {
      v10 = HIBYTE(v27);
    }

    else
    {
      v10 = v26;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v10 == size)
    {
      if (v27 >= 0)
      {
        p_fObj = &fObj;
      }

      else
      {
        p_fObj = fObj;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = memcmp(p_fObj, p_p, v10) != 0;
    }

    else
    {
      v15 = 1;
    }

    LOBYTE(v31[0]) = v15;
    if (v12 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v31[1], &object);
    if (!std::string::compare(&v28, v5))
    {
      sub_100016890(v29, v5);
    }

    else
    {
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v22, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v28;
      }

      sub_10031543C(&v33, &v22);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      sub_1003154F8(&v33, &__p);
      std::string::operator=(v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&__p, a2.fObj.fObj);
      v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v18 = *(this + 61);
    if (v18)
    {
      std::string::operator=(&v29[24], v18 + 11);
    }

    else
    {
      v19 = *(this + 5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Warning: handleDumpStateStartEvent: TraceModule has not been setup yet.", &__p, 2u);
      }

      if (SHIBYTE(v30) < 0)
      {
        *&v30 = 0;
        v20 = *&v29[24];
      }

      else
      {
        v20 = &v29[24];
        HIBYTE(v30) = 0;
      }

      *v20 = 0;
    }

    sub_1002C4C38(v29);
    v21 = sub_100342D40(byte_101FBA858, 512, 0, 420);
    sub_100342EFC(v21);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(fObj);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[1]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*&v29[24]);
    }

    if ((v29[23] & 0x80000000) != 0)
    {
      operator delete(*v29);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*(&v35 + 1));
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }
  }
}

void sub_1006543F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_10014476C(&a40);
  sub_1001454F4(v40 - 160);
  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::handleDumpStateCompleteEvent(C2KRadioModule *this, dict a2, group *a3)
{
  ATCSMutex::lock((this + 56));
  if (xpc_get_type(*a2.fObj.fObj) == &_xpc_type_dictionary)
  {
    gr_name = a3->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v7 = *(this + 67);
    *(this + 67) = gr_name;
    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }

    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&v31, a2.fObj.fObj);
      v9 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", buf, 0xCu);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    memset(buf, 0, sizeof(buf));
    v30 = 0;
    *&v27 = a2;
    *(&v27 + 1) = abm::kKeyTimestampString;
    sub_100006354(&v27, &object);
    memset(&v31, 0, sizeof(v31));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    xpc_release(object);
    v27 = 0uLL;
    v28 = 0;
    object = a2.fObj.fObj;
    v25 = abm::kKeyTraceDumpStatePath;
    sub_100006354(&object, &v23);
    sub_100654A78(&v31);
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    xpc_release(v23.__r_.__value_.__l.__data_);
    object = 0;
    v25 = 0;
    v26 = 0;
    v31.__r_.__value_.__l.__data_ = a2.fObj.fObj;
    v31.__r_.__value_.__l.__size_ = abm::kKeyTraceDumpStateReason;
    sub_100006354(&v31, &v23);
    xpc::dyn_cast_or_default(&object, &v23, abm::kUnknown, v10);
    xpc_release(v23.__r_.__value_.__l.__data_);
    memset(&v23, 0, sizeof(v23));
    v21[0] = a2.fObj.fObj;
    v21[1] = abm::kKeyBasebandCrashReason;
    sub_100006354(v21, &v22);
    memset(&v31, 0, sizeof(v31));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    xpc_release(v22);
    if (*(this + 1095) < 0)
    {
      **(this + 134) = 0;
      *(this + 135) = 0;
    }

    else
    {
      *(this + 1072) = 0;
      *(this + 1095) = 0;
    }

    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    v12 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = *(this + 5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v23.__r_.__value_.__r.__words[0];
        if (v12 >= 0)
        {
          v14 = &v23;
        }

        LODWORD(v31.__r_.__value_.__l.__data_) = 136315138;
        *(v31.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I User-requested log explanation: %s", &v31, 0xCu);
      }

      std::string::operator=((this + 1072), &v23);
    }

    ATCSMutex::unlock((this + 56));
    if (v26 >= 0)
    {
      p_object = &object;
    }

    else
    {
      p_object = object;
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(__dst, *buf, *&buf[8]);
    }

    else
    {
      *__dst = *buf;
      v20 = v30;
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(__p, v27, *(&v27 + 1));
    }

    else
    {
      *__p = v27;
      v18 = v28;
    }

    sub_100654B08(this, p_object, 0, 1, this, sub_100654CBC, 0, 0, __dst, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    ATCSMutex::lock((this + 56));
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(object);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  return ATCSMutex::unlock((this + 56));
}

void sub_10065491C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object, xpc_object_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v40 - 113) < 0)
  {
    operator delete(*(v40 - 136));
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  ATCSMutex::unlock((v39 + 56));
  _Unwind_Resume(a1);
}

void sub_100654A78(std::string *a1@<X8>)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/Logs/CrashReporter/Baseband/", 0x25uLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_100654AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100654B08(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memset(&__dst, 0, sizeof(__dst));
  if (!a2)
  {
    a2 = "none specified";
  }

  sub_10000501C(&__dst, a2);
  if (a3)
  {
    v12 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    if (!v12->__r_.__value_.__s.__data_[0])
    {
      sub_1000167D4(&__dst, "User requested state dump", 0x19uLL);
    }
  }

  if (*(a1 + 488))
  {
    if (*(a9 + 23) < 0)
    {
      sub_100005F2C(v15, *a9, *(a9 + 8));
    }

    else
    {
      *v15 = *a9;
      v16 = *(a9 + 16);
    }

    if (*(a10 + 23) < 0)
    {
      sub_100005F2C(__p, *a10, *(a10 + 8));
    }

    else
    {
      *__p = *a10;
      v14 = *(a10 + 16);
    }

    sub_100664AA8();
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_100654C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::handleDumpStateComplete(C2KRadioModule *this)
{
  ATCSMutex::lock((this + 56));
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dump state complete, waiting for log post-processing to finish before notifying clients", v5, 2u);
  }

  v3 = *(this + 67);
  *(this + 67) = 0;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t C2KRadioModule::handleBasebandStateChange(C2KRadioModule *this, dict a2, group *a3)
{
  ATCSMutex::lock((this + 56));
  if (xpc_get_type(*a2.fObj.fObj) != &_xpc_type_dictionary)
  {
    return ATCSMutex::unlock((this + 56));
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(v85, a2.fObj.fObj);
    v7 = (v85[23] & 0x80u) == 0 ? v85 : *v85;
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", &buf, 0xCu);
    if (v85[23] < 0)
    {
      operator delete(*v85);
    }
  }

  buf = 0uLL;
  v84 = 0;
  __s1 = a2.fObj.fObj;
  v81 = abm::kKeyBasebandBootState;
  sub_100006354(&__s1, object);
  memset(v85, 0, sizeof(v85));
  xpc::dyn_cast_or_default();
  if (v85[23] < 0)
  {
    operator delete(*v85);
  }

  xpc_release(object[0]);
  v8 = abm::kBasebandBootStateIsReady;
  v9 = strlen(abm::kBasebandBootStateIsReady);
  v10 = v9;
  v11 = SHIBYTE(v84);
  if ((SHIBYTE(v84) & 0x8000000000000000) != 0)
  {
    if (v9 != *(&buf + 1))
    {
      goto LABEL_17;
    }

    if (v9 == -1)
    {
      sub_10013C334();
    }

    p_buf = buf;
  }

  else
  {
    if (v9 != SHIBYTE(v84))
    {
      goto LABEL_17;
    }

    p_buf = &buf;
  }

  if (!memcmp(p_buf, abm::kBasebandBootStateIsReady, v10))
  {
    goto LABEL_61;
  }

LABEL_17:
  v13 = strlen(abm::kBasebandBootStateBooted);
  v14 = v13;
  if ((v11 & 0x80000000) != 0)
  {
    if (v13 != *(&buf + 1))
    {
      goto LABEL_24;
    }

    if (v13 == -1)
    {
      sub_10013C334();
    }

    v15 = buf;
  }

  else
  {
    if (v13 != v11)
    {
      goto LABEL_24;
    }

    v15 = &buf;
  }

  if (!memcmp(v15, abm::kBasebandBootStateBooted, v14))
  {
    goto LABEL_63;
  }

LABEL_24:
  v16 = strlen(abm::kBasebandBootStateWillReset);
  v17 = v16;
  if ((v11 & 0x80000000) != 0)
  {
    if (v16 != *(&buf + 1))
    {
      goto LABEL_31;
    }

    if (v16 == -1)
    {
      sub_10013C334();
    }

    v18 = buf;
  }

  else
  {
    if (v16 != v11)
    {
      goto LABEL_31;
    }

    v18 = &buf;
  }

  if (!memcmp(v18, abm::kBasebandBootStateWillReset, v17))
  {
    goto LABEL_61;
  }

LABEL_31:
  v19 = strlen(abm::kBasebandBootStateDidReset);
  v20 = v19;
  if ((v11 & 0x80000000) != 0)
  {
    if (v19 != *(&buf + 1))
    {
      goto LABEL_38;
    }

    if (v19 == -1)
    {
      sub_10013C334();
    }

    v21 = buf;
  }

  else
  {
    if (v19 != v11)
    {
      goto LABEL_38;
    }

    v21 = &buf;
  }

  if (!memcmp(v21, abm::kBasebandBootStateDidReset, v20))
  {
    goto LABEL_61;
  }

LABEL_38:
  v22 = strlen(abm::kBasebandBootStateWillShutdown);
  v23 = v22;
  if ((v11 & 0x80000000) != 0)
  {
    if (v22 != *(&buf + 1))
    {
      goto LABEL_46;
    }

    if (v22 == -1)
    {
      sub_10013C334();
    }

    v24 = buf;
  }

  else
  {
    if (v22 != v11)
    {
      goto LABEL_46;
    }

    v24 = &buf;
  }

  if (!memcmp(v24, abm::kBasebandBootStateWillShutdown, v23))
  {
    goto LABEL_61;
  }

LABEL_46:
  v25 = strlen(abm::kBasebandBootStateHasShutdown);
  v26 = v25;
  if ((v11 & 0x80000000) != 0)
  {
    if (v25 != *(&buf + 1))
    {
      goto LABEL_53;
    }

    if (v25 == -1)
    {
      sub_10013C334();
    }

    v27 = buf;
  }

  else
  {
    if (v25 != v11)
    {
      goto LABEL_53;
    }

    v27 = &buf;
  }

  if (!memcmp(v27, abm::kBasebandBootStateHasShutdown, v26))
  {
LABEL_61:
    v31 = *(this + 43);
    if (v31)
    {
      sub_1001770A8(v31);
    }

    goto LABEL_63;
  }

LABEL_53:
  v28 = strlen(abm::kBasebandBootStateDead);
  v29 = v28;
  if ((v11 & 0x80000000) != 0)
  {
    if (v28 != *(&buf + 1))
    {
      goto LABEL_63;
    }

    if (v28 == -1)
    {
      sub_10013C334();
    }

    v30 = buf;
  }

  else
  {
    if (v28 != v11)
    {
      goto LABEL_63;
    }

    v30 = &buf;
  }

  if (!memcmp(v30, abm::kBasebandBootStateDead, v29))
  {
    goto LABEL_61;
  }

LABEL_63:
  v32 = strlen(abm::kBasebandBootStateBooted);
  v33 = v32;
  if ((v11 & 0x80) != 0)
  {
    if (v32 != *(&buf + 1))
    {
      goto LABEL_70;
    }

    if (v32 == -1)
    {
      sub_10013C334();
    }

    v34 = buf;
  }

  else
  {
    if (v32 != v11)
    {
      goto LABEL_70;
    }

    v34 = &buf;
  }

  if (!memcmp(v34, abm::kBasebandBootStateBooted, v33))
  {
    operator new();
  }

LABEL_70:
  v35 = strlen(v8);
  v36 = v35;
  if ((v11 & 0x80) != 0)
  {
    if (v35 != *(&buf + 1))
    {
      goto LABEL_77;
    }

    if (v35 == -1)
    {
      sub_10013C334();
    }

    v37 = buf;
  }

  else
  {
    if (v35 != v11)
    {
      goto LABEL_77;
    }

    v37 = &buf;
  }

  if (!memcmp(v37, v8, v36))
  {
    v47 = *(this + 5);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = CSIRadioModulePrivate::stateAsString(*(this + 91));
      v49 = *(this + 90);
      v50 = *(this + 160);
      *v85 = 136315650;
      *&v85[4] = v48;
      *&v85[12] = 1024;
      *&v85[14] = v49;
      *&v85[18] = 1024;
      *&v85[20] = v50;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I RadioState=%s, fPowerOffState=%d, fPowerDown=%d", v85, 0x18u);
      v47 = *(this + 5);
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Baseband is ready", v85, 2u);
    }

    v51 = *(this + 91);
    if ((v51 - 5) < 4 || !v51)
    {
      if (*(this + 90) == 1)
      {
        v52 = *(this + 5);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v85 = 136315138;
          *&v85[4] = v8;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Skip processing event %s", v85, 0xCu);
        }
      }

      else
      {
        C2KRadioModule::handleBooted_nl(this);
      }
    }

    goto LABEL_154;
  }

LABEL_77:
  v38 = strlen(abm::kBasebandBootStateWillReset);
  v39 = v38;
  if ((v11 & 0x80) != 0)
  {
    if (v38 != *(&buf + 1))
    {
      goto LABEL_84;
    }

    if (v38 == -1)
    {
      sub_10013C334();
    }

    v40 = buf;
  }

  else
  {
    if (v38 != v11)
    {
      goto LABEL_84;
    }

    v40 = &buf;
  }

  if (!memcmp(v40, abm::kBasebandBootStateWillReset, v39))
  {
    __s1 = 0;
    v81 = 0;
    v82 = 0;
    object[0] = a2.fObj.fObj;
    object[1] = abm::kKeyBasebandResetType;
    sub_100006354(object, &fObj);
    memset(v85, 0, sizeof(v85));
    xpc::dyn_cast_or_default();
    if (v85[23] < 0)
    {
      operator delete(*v85);
    }

    xpc_release(fObj);
    v53 = abm::kBasebandResetTypeHard;
    v54 = strlen(abm::kBasebandResetTypeHard);
    v55 = v54;
    v56 = SHIBYTE(v82);
    if ((SHIBYTE(v82) & 0x8000000000000000) != 0)
    {
      if (v54 == v81)
      {
        if (v54 == -1)
        {
          sub_10013C334();
        }

        p_s1 = __s1;
LABEL_119:
        if (!memcmp(p_s1, abm::kBasebandResetTypeHard, v55))
        {
          goto LABEL_127;
        }
      }
    }

    else if (v54 == SHIBYTE(v82))
    {
      p_s1 = &__s1;
      goto LABEL_119;
    }

    v58 = strlen(abm::kBasebandResetTypeSoft);
    v59 = v58;
    if ((v56 & 0x80000000) != 0)
    {
      if (v58 != v81)
      {
LABEL_153:
        operator delete(__s1);
        goto LABEL_154;
      }

      if (v58 == -1)
      {
        sub_10013C334();
      }

      v60 = __s1;
    }

    else
    {
      if (v58 != v56)
      {
        goto LABEL_154;
      }

      v60 = &__s1;
    }

    if (memcmp(v60, abm::kBasebandResetTypeSoft, v59))
    {
LABEL_152:
      if ((v56 & 0x80) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

LABEL_127:
    memset(v85, 0, sizeof(v85));
    object[0] = a2.fObj.fObj;
    object[1] = abm::kKeyBasebandResetReason;
    sub_100006354(object, &fObj);
    xpc::dyn_cast_or_default(v85, &fObj, "no-reset-reason", v61);
    xpc_release(fObj);
    object[0] = 0;
    object[1] = 0;
    v79 = 0;
    fObj = a2.fObj.fObj;
    v76 = abm::kKeyTimestampString;
    sub_100006354(&fObj, &v77);
    xpc::dyn_cast_or_default(object, &v77, abm::kUnknownTimestamp, v62);
    xpc_release(v77);
    fObj = a2.fObj.fObj;
    v76 = abm::kKeyBasebandResetIsMTBF;
    sub_100006354(&fObj, &v77);
    v64 = xpc::dyn_cast_or_default(&v77, 1, v63);
    xpc_release(v77);
    gr_name = a3->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v66 = *(this + 66);
    *(this + 66) = gr_name;
    if (v66)
    {
      dispatch_group_leave(v66);
      dispatch_release(v66);
    }

    if ((v85[23] & 0x80u) == 0)
    {
      v67 = v85;
    }

    else
    {
      v67 = *v85;
    }

    v68 = strlen(v53);
    v69 = v68;
    if ((SHIBYTE(v82) & 0x8000000000000000) != 0)
    {
      if (v68 == v81)
      {
        if (v68 == -1)
        {
          sub_10013C334();
        }

        v70 = __s1;
        goto LABEL_140;
      }
    }

    else if (v68 == SHIBYTE(v82))
    {
      v70 = &__s1;
LABEL_140:
      v71 = memcmp(v70, v53, v69) == 0;
LABEL_142:
      if (SHIBYTE(v79) < 0)
      {
        sub_100005F2C(__p, object[0], object[1]);
      }

      else
      {
        *__p = *object;
        v74 = v79;
      }

      (*(*this + 448))(this, v67, v71, v64, __p);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(object[0]);
      }

      if (v85[23] < 0)
      {
        operator delete(*v85);
      }

      LOBYTE(v56) = HIBYTE(v82);
      goto LABEL_152;
    }

    v71 = 0;
    goto LABEL_142;
  }

LABEL_84:
  v41 = strlen(abm::kBasebandBootStateDidReset);
  v42 = v41;
  if ((v11 & 0x80) != 0)
  {
    if (v41 == *(&buf + 1))
    {
      if (v41 == -1)
      {
        sub_10013C334();
      }

      v43 = buf;
LABEL_90:
      if (!memcmp(v43, abm::kBasebandBootStateDidReset, v42))
      {
        (*(*this + 480))(this);
        goto LABEL_154;
      }
    }
  }

  else if (v41 == v11)
  {
    v43 = &buf;
    goto LABEL_90;
  }

  v44 = strlen(abm::kBasebandBootStateDead);
  v45 = v44;
  if ((v11 & 0x80) != 0)
  {
    if (v44 == *(&buf + 1))
    {
      if (v44 == -1)
      {
        sub_10013C334();
      }

      v46 = buf;
      goto LABEL_98;
    }
  }

  else if (v44 == v11)
  {
    v46 = &buf;
LABEL_98:
    if (!memcmp(v46, abm::kBasebandBootStateDead, v45))
    {
      CSIRadioModulePrivate::changeState(this, 8u);
      sub_1002C557C();
    }
  }

LABEL_154:
  if (SHIBYTE(v84) < 0)
  {
    operator delete(buf);
  }

  return ATCSMutex::unlock((this + 56));
}

void sub_1006557F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1006563B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::handleCommCenterCrash(C2KRadioModule *this)
{
  if (sub_100976134())
  {
    return;
  }

  v23 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v23 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v23 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = xpc_null_create();
LABEL_9:
    v23 = v4;
    goto LABEL_10;
  }

  xpc_retain(v3);
LABEL_10:
  xpc_release(v3);
  v22 = 0;
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  *v19 = 0u;
  sub_10031538C(&v18);
  sub_1003155AC(&v18, __p);
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v16 = xpc_string_create(v5);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v13[0] = &v23;
  v13[1] = abm::kKeyTimestampString;
  sub_10000F688(v13, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = xpc_string_create(abm::kCollectCommCenterCrashLogs);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  __p[0] = &v23;
  __p[1] = abm::kKeyTraceAction;
  sub_10000F688(__p, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v6 = *(this + 132);
  v10 = v23;
  v11 = 0;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v7 = abm::kCommandTraceDumpState;
  v8 = *(this + 129);
  v9 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v24[0] = off_101E6F5E8;
  v24[1] = this;
  v24[3] = v24;
  (*(*v6 + 48))(v6, v7, &v10, &v9, v24);
  sub_100049CCC(v24);
  if (v9)
  {
    dispatch_release(v9);
  }

  xpc_release(v10);
  v10 = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }

  xpc_release(v23);
}

void sub_100656820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::getAntennaProperty(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v6 = *(a1 + 1032);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v9 = a1;
  sub_100669460(v10, a3);
  v10[7] = 0;
  operator new();
}

void sub_100656A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::setAntennaProperty(uint64_t a1, void **a2)
{
  __s1 = 0;
  v21 = 0;
  v22 = 0;
  xdict[0] = a2;
  xdict[1] = abm::kCTTxPowerCommandString;
  sub_100006354(xdict, &object);
  __p = 0;
  v24 = 0;
  v25 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  v4 = strlen(abm::kSetMaxTransmitPowerDictCommand);
  v5 = v4;
  if ((SHIBYTE(v22) & 0x8000000000000000) == 0)
  {
    if (v4 == SHIBYTE(v22))
    {
      p_s1 = &__s1;
      goto LABEL_9;
    }

LABEL_16:
    v12 = *(a1 + 1056);
    v13 = *a2;
    v17 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v17 = xpc_null_create();
    }

    v14 = abm::kCommandSetAntennaProperty;
    v15 = *(a1 + 1032);
    v16 = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    v26[0] = off_101E6E010;
    v26[1] = a1;
    v26[3] = v26;
    (*(*v12 + 48))(v12, v14, &v17, &v16, v26);
    sub_100049CCC(v26);
    if (v16)
    {
      dispatch_release(v16);
    }

    xpc_release(v17);
    v17 = 0;
    goto LABEL_24;
  }

  if (v4 != v21)
  {
    goto LABEL_16;
  }

  if (v4 == -1)
  {
    sub_10013C334();
  }

  p_s1 = __s1;
LABEL_9:
  v7 = memcmp(p_s1, abm::kSetMaxTransmitPowerDictCommand, v5);
  if (v7)
  {
    goto LABEL_16;
  }

  if (capabilities::ct::getCLTMInterfaceSupport(v7))
  {
    xdict[0] = 0;
    __p = a2;
    v24 = abm::kCTTxPowerCommandData;
    sub_100048A24(&__p, xdict);
    v8 = abm::kCTThermalTxDutyCycle;
    if (xpc_dictionary_get_value(xdict[0], abm::kCTThermalTxDutyCycle))
    {
      __p = xdict;
      v24 = v8;
      sub_100006354(&__p, &object);
      v10 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL, v9);
      xpc_release(object);
      if (capabilities::ct::getCLTMInterfaceSupport(v11) == 2)
      {
        (*(*a1 + 40))(a1, v10 == 0);
      }

      if (!v10)
      {
        xpc_release(xdict[0]);
        goto LABEL_24;
      }
    }

    xpc_release(xdict[0]);
    goto LABEL_16;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101777080();
  }

LABEL_24:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__s1);
  }
}

void sub_100656D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::enableBrickMode(NSObject **this, char a2)
{
  v3 = this;
  v4 = a2;
  v2 = this[6];
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100669A4C;
  block[3] = &unk_101E6E080;
  block[4] = &v3;
  dispatch_sync(v2, block);
}

uint64_t C2KRadioModule::enableBrickMode_sync(C2KRadioModule *this, int a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disable";
    if (a2)
    {
      v5 = "enable";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Request to %s brick mode", &buf, 0xCu);
  }

  ATCSMutex::lock((this + 56));
  v6 = (this + 664);
  v7 = *(this + 83);
  if (a2)
  {
    if (!v7)
    {
      v8 = *(this + 5);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Brick mode enabled; acquiring airplane mode assertion", &buf, 2u);
      }

      capabilities::ct::supportsFallbackToBrickAfterEmergency(v9);
      sub_10000501C(&buf, "/cc/assertions/airplane_mode");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v16) < 0)
      {
        operator delete(buf);
      }

      v12 = *(this + 84);
      *v6 = v14;
      if (v12)
      {
        sub_100004A34(v12);
      }

      *&buf = off_101E6E0B0;
      *(&buf + 1) = this;
      p_buf = &buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(&buf);
    }
  }

  else if (v7)
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Brick mode disabled; release airplane mode assertion", &buf, 2u);
    }

    v11 = *(this + 84);
    *v6 = 0;
    *(this + 84) = 0;
    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  *&buf = 1;
  *(&buf + 1) = this + 288;
  v16 = a2 | 0x100u;
  sub_100669C00(&buf);
  return ATCSMutex::unlock((this + 56));
}

void sub_1006570DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ATCSMutex::unlock((v16 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::updateBreadPairedStatus_sync(void *a1, _BOOL4 a2, uint64_t a3)
{
  ATCSMutex::lock((a1 + 7));
  v14[0] = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v14[0] = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v14[0] = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v14[0] = v8;
LABEL_9:
  xpc_release(v7);
  v12 = xpc_BOOL_create(a2);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  *&buf = v14;
  *(&buf + 1) = abm::kKeyIsBreadPaired;
  sub_10000F688(&buf, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v9 = a1[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    if (a2)
    {
      v10 = "true";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Updating bread paired status to %s", &buf, 0xCu);
  }

  if (v14[0])
  {
    xpc_retain(v14[0]);
  }

  else
  {
    xpc_null_create();
  }

  v11 = a1[129];
  if (v11)
  {
    dispatch_retain(v11);
  }

  v14[1] = a1;
  sub_1000224C8(v15, a3);
  v15[7] = 0;
  operator new();
}

void sub_1006573EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

const void **C2KRadioModule::setMotionBundle(C2KRadioModule *this)
{
  v55 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 98));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 40))(__p, v10, kDefaultBundleId, @"OnBodyThresholdParametersFile", 0, 0);
  sub_100060DE8(&v55, __p);
  sub_10000A1EC(__p);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  __p[0] = 0;
  __p[1] = 0;
  v54 = 0;
  if (v55)
  {
    v12 = Registry::getServiceMap(*(this + 98));
    v13 = v12;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(v12);
    *buf = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, buf);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
LABEL_26:
    (*(*v20 + 152))(&v49, v20);
    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v47 = *buf;
    *v51 = v49;
    v52 = v50;
    v50 = 0;
    v48 = v58;
    v49 = 0uLL;
    ctu::path_join_impl();
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v51;
    v54 = v52;
    HIBYTE(v52) = 0;
    LOBYTE(v51[0]) = 0;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      v30 = v49;
LABEL_38:
      operator delete(v30);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v22 = Registry::getServiceMap(*(this + 98));
  v23 = v22;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v22);
  *&v49 = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, &v49);
  if (v28)
  {
    v29 = v28[3];
    v19 = v28[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v23);
  v19 = 0;
  v21 = 1;
LABEL_34:
  (*(*v29 + 152))(v51, v29);
  *buf = *v51;
  v58 = v52;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *buf;
  v54 = v58;
  HIBYTE(v58) = 0;
  buf[0] = 0;
  if (SHIBYTE(v52) < 0)
  {
    v30 = v51[0];
    goto LABEL_38;
  }

LABEL_39:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v31 = HIBYTE(v54);
  if (v54 < 0)
  {
    v31 = __p[1];
  }

  if (v31)
  {
    v51[0] = 0;
    v32 = *(this + 99);
    *buf = *(this + 98);
    *&buf[8] = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1009F7DEC(this + 5, buf, __p, v51);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v33 = v51[0];
    v34 = *(this + 5);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        v37 = __p;
        if (v54 < 0)
        {
          v37 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Loaded body threshold parameters file %s in the bundle", buf, 0xCu);
        v33 = v51[0];
      }

      ctu::cf_to_xpc(buf, v33, v36);
      v38 = *buf;
      if (*buf && xpc_get_type(*buf) == &_xpc_type_dictionary)
      {
        xpc_retain(v38);
      }

      else
      {
        v38 = xpc_null_create();
      }

      xpc_release(*buf);
      v41 = *(this + 132);
      v46 = v38;
      if (v38)
      {
        xpc_retain(v38);
      }

      else
      {
        v46 = xpc_null_create();
      }

      v42 = abm::kCommandSetBundle;
      v43 = *(this + 129);
      object = v43;
      if (v43)
      {
        dispatch_retain(v43);
      }

      v56[0] = off_101E6E1B0;
      v56[1] = this;
      v56[3] = v56;
      (*(*v41 + 48))(v41, v42, &v46, &object, v56);
      sub_100049CCC(v56);
      if (object)
      {
        dispatch_release(object);
      }

      xpc_release(v46);
      v46 = 0;
      xpc_release(v38);
    }

    else if (v35)
    {
      v40 = __p;
      if (v54 < 0)
      {
        v40 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v40;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Could not load body threshold parameters file %s in the bundle", buf, 0xCu);
    }

    sub_10001021C(v51);
  }

  else
  {
    v39 = *(this + 5);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I No on body threshold parameters file in the bundle", buf, 2u);
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100005978(&v55);
}

void sub_100657B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, const void *a36, __int16 a37, char a38, char a39)
{
  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_100005978(&a36);
  _Unwind_Resume(a1);
}

void C2KRadioModule::reset(C2KRadioModule *this, char *a2)
{
  ATCSMutex::lock((this + 56));
  v15 = 0;
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  *v12 = 0u;
  sub_10031538C(&v11);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  sub_1003155AC(&v11, v9);
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  sub_10000501C(v7, a2);
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(v3, v7[0], v7[1]);
  }

  else
  {
    *v3 = *v7;
    v4 = v8;
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v6 = v10;
  }

  v16 = 0;
  operator new();
}

void sub_100657EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1001454F4(&a32);
  ATCSMutex::unlock((v32 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::configureLogging(uint64_t a1, xpc_object_t *a2)
{
  if (&_sCanHostHelperServer && sCanHostHelperServer())
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_100D96E64(a2, __p);
      v5 = (SBYTE7(v18) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ConfigureLogging option: %s", buf, 0xCu);
      if (SBYTE7(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (xpc_dictionary_get_value(*a2, "kCTRadioUseLoggingProfileKey"))
    {
      __p[0] = a2;
      __p[1] = "kCTRadioUseLoggingProfileKey";
      sub_100006354(__p, buf);
      v7 = xpc::dyn_cast_or_default(buf, 0, v6);
      xpc_release(*buf);
      __p[0] = a2;
      __p[1] = "kCTRadioRequireUserConfirmationToEnableKey";
      sub_100006354(__p, buf);
      v9 = xpc::dyn_cast_or_default(buf, 1, v8);
      xpc_release(*buf);
      v26 = 0;
      v27 = 0;
      v24[1] = 0;
      v25 = 0;
      abm::HelperClient::create();
      if (v25)
      {
        sub_100004A34(v25);
      }

      v24[0] = 0;
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        v24[0] = v10;
      }

      else
      {
        v11 = xpc_null_create();
        v24[0] = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_21;
        }
      }

      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        xpc_retain(v11);
        goto LABEL_22;
      }

      v12 = xpc_null_create();
LABEL_21:
      v24[0] = v12;
LABEL_22:
      xpc_release(v11);
      v22 = xpc_string_create(abm::helper::kDefaultCarrierLoggingProfileName);
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      __p[0] = v24;
      __p[1] = abm::helper::kKeyProfileName;
      sub_10000F688(__p, &v22, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v22);
      v22 = 0;
      v20 = xpc_BOOL_create(v9);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      __p[0] = v24;
      __p[1] = abm::helper::kKeyRequireUserConfirmation;
      sub_10000F688(__p, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v19 = 0;
      v20 = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v19 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v19 = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_33;
        }
      }

      if (xpc_get_type(v14) == &_xpc_type_dictionary)
      {
        xpc_retain(v14);
LABEL_34:
        xpc_release(v14);
        *__p = 0u;
        v18 = 0u;
        v16 = v24[0];
        if (v24[0])
        {
          xpc_retain(v24[0]);
        }

        else
        {
          v16 = xpc_null_create();
        }

        abm::HelperClient::perform();
        xpc_release(v16);
        if (LODWORD(__p[0]) && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10064CB44(__p, buf);
          sub_1017770B4(v7, buf, v29);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[1]);
        }

        xpc_release(v19);
        xpc_release(v24[0]);
        if (v27)
        {
          sub_100004A34(v27);
        }

        return;
      }

      v15 = xpc_null_create();
LABEL_33:
      v19 = v15;
      goto LABEL_34;
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177712C();
  }
}

void sub_10065834C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a23);
  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::isTraceEnabled(uint64_t a1, unsigned int a2)
{
  v40 = 0uLL;
  v41 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  v4 = sub_1005C6790(a2);
  sub_10000501C(__p, v4);
  if ((*(**(a1 + 1056) + 32))(*(a1 + 1056), __p))
  {
    v37 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v37 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v37 = v6;
      if (!v6)
      {
        v9 = xpc_null_create();
        v6 = 0;
        goto LABEL_18;
      }
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      goto LABEL_19;
    }

    v9 = xpc_null_create();
LABEL_18:
    v37 = v9;
LABEL_19:
    xpc_release(v6);
    v36 = xpc_null_create();
    if (v39 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v34 = xpc_string_create(v11);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    *buf = &v37;
    *&buf[8] = abm::kKeyTraceName;
    sub_10000F688(buf, &v34, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v34);
    v12 = &abm::kKeyTraceMode;
    v34 = 0;
    if (a2 != 5)
    {
      v12 = &abm::kKeyEnabled;
    }

    v32 = xpc_string_create(*v12);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    *buf = &v37;
    *&buf[8] = abm::kKeyTracePropertyName;
    sub_10000F688(buf, &v32, &v33);
    xpc_release(v33);
    v33 = 0;
    xpc_release(v32);
    v13 = *(a1 + 1056);
    v31 = v37;
    v32 = 0;
    if (v37)
    {
      xpc_retain(v37);
    }

    else
    {
      v31 = xpc_null_create();
    }

    v14 = (*(*v13 + 56))(v13, abm::kCommandGetTraceProperty, &v31, &v36);
    v15 = v36;
    xpc_release(v31);
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v31 = 0;
    if (v16 != 1)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101777160();
      }

      v7 = 0;
      goto LABEL_67;
    }

    v30 = 0;
    v17 = v36;
    if (v36)
    {
      v30 = v36;
    }

    else
    {
      v17 = xpc_null_create();
      v30 = v17;
      if (!v17)
      {
        v18 = xpc_null_create();
        v17 = 0;
        goto LABEL_46;
      }
    }

    if (xpc_get_type(v17) == &_xpc_type_dictionary)
    {
      xpc_retain(v17);
      goto LABEL_47;
    }

    v18 = xpc_null_create();
LABEL_46:
    v30 = v18;
LABEL_47:
    xpc_release(v17);
    v28[0] = &v30;
    v28[1] = abm::kKeyTracePropertyValue;
    sub_100006354(v28, &v29);
    xpc::dyn_cast_or_default(buf, &v29, "", v19);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    v40 = *buf;
    v41 = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
    xpc_release(v29);
    if (v41 < 0)
    {
      if (*(&v40 + 1) == 1 && *v40 == 48)
      {
        v7 = 0;
LABEL_66:
        xpc_release(v30);
LABEL_67:
        xpc_release(v37);
        goto LABEL_68;
      }

      if (*(&v40 + 1) == 5)
      {
        v20 = v40;
LABEL_58:
        v21 = *v20;
        v22 = *(v20 + 4);
        v23 = v21 == 1936482662 && v22 == 101;
        goto LABEL_63;
      }
    }

    else
    {
      if (HIBYTE(v41) == 1)
      {
        v23 = v40 == 48;
LABEL_63:
        v7 = !v23;
        goto LABEL_66;
      }

      if (HIBYTE(v41) == 5)
      {
        v20 = &v40;
        goto LABEL_58;
      }
    }

    v7 = 1;
    goto LABEL_66;
  }

  v7 = *(a1 + 488);
  if (!v7)
  {
    goto LABEL_68;
  }

  sub_10000501C(buf, abm::kKeyEnabled);
  v8 = sub_1006C8B14(v7, __p, buf, &v40);
  v7 = v8;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_68;
    }
  }

  else if (!v8)
  {
    goto LABEL_68;
  }

  v10 = HIBYTE(v41);
  if (v41 < 0)
  {
    v10 = *(&v40 + 1);
  }

  if (v10)
  {
    v7 = sub_100143EC4(&v40);
  }

  else
  {
    v7 = 0;
  }

LABEL_68:
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = __p;
    if (v39 < 0)
    {
      v25 = __p[0];
    }

    v26 = " ";
    if (!v7)
    {
      v26 = " not ";
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s trace is%senabled", buf, 0x16u);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  return v7;
}

void sub_100658968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::isDumpStateAllowed(uint64_t a1)
{
  if ((*(*a1 + 256))(a1, 0) & 1) != 0 || ((*(*a1 + 256))(a1, 2))
  {
    return 1;
  }

  v3 = *(*a1 + 256);

  return v3(a1, 5);
}

void C2KRadioModule::requestDumpState(uint64_t a1, __int128 *a2)
{
  if ((*(*a1 + 192))(a1))
  {
    if (*(a2 + 41) == 1)
    {
      ATCSMutex::lock((a1 + 56));
      v5 = *(a1 + 24);
      v4 = *(a1 + 32);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v27 = sub_1006590A8;
      *(&v28 + 1) = 0;
      v29 = 0;
      *&v28 = sub_1006590B8;
      Registry::getTimerService(&v23, *(a1 + 784));
      v6 = v23;
      sub_10000501C(__p, "Logdump debounce timer");
      v7 = *(a2 + 4);
      v8 = *(a1 + 48);
      object = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1174405120;
      v13[2] = sub_1006590C8;
      v13[3] = &unk_101E6D3C0;
      v13[5] = a1;
      v13[6] = v5;
      v14 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v15, *a2, *(a2 + 1));
      }

      else
      {
        v15 = *a2;
        v16 = *(a2 + 2);
      }

      v17 = *(a2 + 24);
      v18 = *(a2 + 5);
      v13[4] = buf;
      aBlock = _Block_copy(v13);
      sub_100D23364(v6, __p, 2, 1000 * v7, &object, &aBlock);
      sub_10039C50C((*&buf[8] + 40), &v25);
      v12 = v25;
      v25 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24)
      {
        sub_100004A34(v24);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      _Block_object_dispose(buf, 8);
      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      ATCSMutex::unlock((a1 + 56));
    }

    else
    {
      v11 = *(*a1 + 184);

      v11(a1, a2);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a2;
      if (*(a2 + 23) < 0)
      {
        v10 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I CSI state dump requested and state dump skipped: %s", buf, 0xCu);
    }

    if (*(a2 + 41) == 1)
    {
      *buf = a1;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&buf[8], *a2, *(a2 + 1));
      }

      else
      {
        *&buf[8] = *a2;
        v27 = *(a2 + 2);
      }

      v28 = *(a2 + 24);
      v29 = *(a2 + 5);
      operator new();
    }
  }
}

void sub_100658FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, dispatch_object_t object, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  _Block_object_dispose((v37 - 128), 8);
  v39 = *(v37 - 80);
  if (v39)
  {
    sub_100004A34(v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  ATCSMutex::unlock((v35 + 56));
  _Unwind_Resume(a1);
}

__n128 sub_1006590A8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1006590B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1006590C8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[5];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[6])
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = a1[12];
          v7 = 134217984;
          v8 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Logdump request after debounce timer [%llums]", &v7, 0xCu);
        }

        C2KRadioModule::sendDumpStateRequest(v3, (a1 + 8));
      }

      sub_100004A34(v4);
    }
  }
}

void C2KRadioModule::sendDumpStateRequest(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_10031538C(v27);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  sub_1003155AC(v27, v25);
  __dst[0] = 0;
  __dst[1] = 0;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v24 = *(a2 + 16);
  }

  v22 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v22 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v22 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_12;
  }

  v6 = xpc_null_create();
LABEL_11:
  v22 = v6;
LABEL_12:
  xpc_release(v5);
  if (v24 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  v20 = xpc_string_create(v7);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v18 = &v22;
  v19 = abm::kKeyTraceDumpStateReason;
  sub_10000F688(&v18, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
  if (v26 >= 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v25[0];
  }

  v16 = xpc_string_create(v8);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v18 = &v22;
  v19 = abm::kKeyTimestampString;
  sub_10000F688(&v18, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v15 = v22;
  v16 = 0;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v9 = *(a1 + 1032);
  v14 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(v10, __dst[0], __dst[1]);
  }

  else
  {
    *v10 = *__dst;
    v11 = v24;
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(__p, v25[0], v25[1]);
  }

  else
  {
    *__p = *v25;
    v13 = v26;
  }

  v29 = 0;
  operator new();
}

void sub_100659588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a20);
  xpc_release(a27);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_1001454F4(v39 - 144);
  _Unwind_Resume(a1);
}

__n128 sub_10065967C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = result;
  return result;
}

void sub_1006596F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100659708(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void C2KRadioModule::dumpCommCenterTraceOnly(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ABM Server is not available. So, dump CommCenter state alone and proceed.", &buf, 2u);
  }

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  buf = 0u;
  if (*(a1 + 1095) < 0)
  {
    **(a1 + 1072) = 0;
    *(a1 + 1080) = 0;
  }

  else
  {
    *(a1 + 1072) = 0;
    *(a1 + 1095) = 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  memset(&v25, 0, sizeof(v25));
  v8 = &v25;
  sub_1000677C4(&v25, v7 + 25);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, " (Baseband not available)");
  memset(&__dst, 0, sizeof(__dst));
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 8));
    v10 = *(a3 + 23);
    if (v10 < 0)
    {
      if (*(a3 + 8))
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __dst = *a3;
  }

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_20:
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  sub_10031538C(v20);
  sub_1003155AC(v20, &__str);
  std::string::operator=(&__dst, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*(&v21 + 1));
  }

  if (SBYTE7(v21) < 0)
  {
    operator delete(*&v20[16]);
  }

LABEL_27:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v18, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = __dst;
  }

  sub_10031543C(&v31, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_1003154F8(&v31, v20);
  std::string::operator=(&buf, v20);
  if ((v20[23] & 0x80000000) != 0)
  {
    operator delete(*v20);
  }

  LOBYTE(v29) = 0;
  std::string::operator=((&v29 + 8), &v25);
  v11 = *(a1 + 488);
  if (v11)
  {
    std::string::operator=((&v27 + 8), v11 + 11);
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Warning: TraceModule has not been setup yet.", v20, 2u);
    }

    if (SHIBYTE(v28) < 0)
    {
      *&v28 = 0;
      v13 = *(&v27 + 1);
    }

    else
    {
      v13 = &v27 + 8;
      HIBYTE(v28) = 0;
    }

    *v13 = 0;
  }

  sub_1002C4C38(&buf);
  v14 = sub_100342D40(byte_101FBA858, 512, 0, 420);
  sub_100342EFC(v14);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v25;
  }

  else
  {
    v15 = v25.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v17, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = __dst;
  }

  sub_100654A78(&v16);
  sub_100654B08(a1, v15, 0, 1, a1, sub_100654CBC, 0, 0, &v17, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(*(&v29 + 1));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(*(&v33 + 1));
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_100659B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_1001454F4(&a37);
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  sub_10014476C(v61 - 224);
  sub_1001454F4(v61 - 144);
  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::sendEndStateDumpNotification(C2KRadioModule *this, dict a2)
{
  ATCSMutex::lock((this + 56));
  memset(v25, 0, sizeof(v25));
  if (xpc_get_type(*a2.fObj.fObj) == &_xpc_type_dictionary)
  {
    fObj = a2.fObj.fObj;
    v22 = abm::kKeyTimestampString;
    sub_100006354(&fObj, &object);
    *buf = 0;
    v27 = 0;
    v28 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }

    v5 = strlen("log-bb-");
    v6 = std::string::insert(&v24, 0, "log-bb-", v5);
    v7 = v6->__r_.__value_.__r.__words[0];
    *v29 = v6->__r_.__value_.__l.__size_;
    *&v29[7] = *(&v6->__r_.__value_.__r.__words[1] + 7);
    v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if ((v25[23] & 0x80000000) != 0)
    {
      operator delete(*v25);
    }

    *v25 = v7;
    *&v25[8] = *v29;
    *&v25[15] = *&v29[7];
    v25[23] = v8;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    xpc_release(object);
    fObj = a2.fObj.fObj;
    v22 = abm::kKeyTraceDumpStatePath;
    sub_100006354(&fObj, v29);
    *buf = 0;
    v27 = 0;
    v28 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }

    if ((v25[47] & 0x80000000) != 0)
    {
      operator delete(*&v25[24]);
    }

    *&v25[24] = v24;
    *(&v24.__r_.__value_.__s + 23) = 0;
    v24.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(*v29);
    fObj = a2.fObj.fObj;
    v22 = abm::kKeyTraceDumpStateReason;
    sub_100006354(&fObj, v29);
    *buf = 0;
    v27 = 0;
    v28 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }

    if ((v25[79] & 0x80000000) != 0)
    {
      operator delete(*&v25[56]);
    }

    *&v25[56] = v24;
    *(&v24.__r_.__value_.__s + 23) = 0;
    v24.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(*v29);
    *buf = 0;
    v27 = 0;
    v28 = 0;
    v24.__r_.__value_.__l.__data_ = a2.fObj.fObj;
    v24.__r_.__value_.__l.__size_ = abm::kKeyTraceFilterAction;
    sub_100006354(&v24, &fObj);
    v9 = abm::kTraceFilterActionNone;
    xpc::dyn_cast_or_default(buf, &fObj, abm::kTraceFilterActionNone, v10);
    xpc_release(fObj);
    sub_10000501C(&v24, v9);
    v11 = HIBYTE(v28);
    if (v28 >= 0)
    {
      v12 = HIBYTE(v28);
    }

    else
    {
      v12 = v27;
    }

    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    v14 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    if (v12 == size)
    {
      if (v28 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v24;
      }

      else
      {
        v16 = v24.__r_.__value_.__r.__words[0];
      }

      v17 = memcmp(v15, v16, v12) != 0;
    }

    else
    {
      v17 = 1;
    }

    v25[48] = v17;
    if (v14 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if ((v11 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    operator delete(*buf);
  }

  else
  {
    v4 = *(this + 61);
    if (v4)
    {
      std::string::operator=(v25, v4 + 13);
      std::string::operator=(&v25[24], (*(this + 61) + 264));
    }

    else
    {
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Warning: sendEndStateDumpNotification: TraceModule has not been setup yet.", buf, 2u);
      }

      if ((v25[47] & 0x80000000) != 0)
      {
        *&v25[32] = 0;
        v19 = *&v25[24];
      }

      else
      {
        v19 = &v25[24];
        v25[47] = 0;
      }

      *v19 = 0;
    }
  }

LABEL_43:
  sub_1002C4F28(v25);
  if ((v25[79] & 0x80000000) != 0)
  {
    operator delete(*&v25[56]);
  }

  if ((v25[47] & 0x80000000) != 0)
  {
    operator delete(*&v25[24]);
  }

  if ((v25[23] & 0x80000000) != 0)
  {
    operator delete(*v25);
  }

  return ATCSMutex::unlock((this + 56));
}

void sub_10065A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v19 - 73) < 0)
  {
    operator delete(*(v19 - 96));
  }

  sub_10014476C(&a18);
  ATCSMutex::unlock((v18 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::createModules(C2KRadioModule *this)
{
  *(this + 65) |= 0x1000uLL;
  v2 = *(this + 98);
  v3 = *(this + 99);
  v11 = v2;
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PSManager::create(&v13, &v11);
  ServiceMap = Registry::getServiceMap(v2);
  if (sub_100145B14(ServiceMap, &v13))
  {
    if (v14)
    {
      sub_100004A34(v14);
    }

    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = *(this + 98);
    v6 = *(this + 99);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    EncryptedIdentity::create(&v13, &v11);
    v7 = Registry::getServiceMap(v5);
    if (sub_100673428(v7, &v13))
    {
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (v12)
      {
        sub_100004A34(v12);
      }

      v8 = *(this + 99);
      v11 = *(this + 98);
      v12 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100716D20();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given type is already in the map!");
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "The given type is already in the map!");
}

void sub_10065AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  v21 = *(v19 - 24);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  v22 = *(v19 - 40);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

void sub_10065AD84(int a1, dispatch_object_t object, __int128 *a3)
{
  objecta = object;
  v4 = *a3;
  v5 = *(a3 + 2);
  dispatch_retain(object);
  sub_10066B9B0(v6, &objecta);
}

void sub_10065AE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10066ADB4(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::handleVisitChange_sync(C2KRadioModule *this, unsigned int a2, unsigned int a3)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 132))
  {
    object = 0;
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      object = v6;
    }

    else
    {
      v7 = xpc_null_create();
      object = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v7 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
LABEL_12:
      xpc_release(v7);
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        v19 = xpc_int64_create(a2);
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        p_object = &object;
        v18 = abm::kKeyVisitArrival;
        sub_10000F688(&p_object, &v19, &v20);
        xpc_release(v20);
        v20 = 0;
        xpc_release(v19);
        v19 = 0;
        v15 = xpc_int64_create(a3);
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        p_object = &object;
        v18 = abm::kKeyVisitDeparture;
        sub_10000F688(&p_object, &v15, &v16);
        xpc_release(v16);
        v16 = 0;
        xpc_release(v15);
        v9 = *(this + 132);
        v14 = object;
        v15 = 0;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v14 = xpc_null_create();
        }

        v10 = abm::kCommandUpdateBreadProperty;
        v11 = *(this + 129);
        v13 = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        v22[0] = off_101E6F7E8;
        v22[1] = this;
        v22[3] = v22;
        (*(*v9 + 48))(v9, v10, &v14, &v13, v22);
        sub_100049CCC(v22);
        if (v13)
        {
          dispatch_release(v13);
        }

        xpc_release(v14);
        v14 = 0;
      }

      else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101776FB0();
      }

      xpc_release(object);
      return ATCSMutex::unlock((this + 56));
    }

    v8 = xpc_null_create();
LABEL_11:
    object = v8;
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }

  return ATCSMutex::unlock((this + 56));
}

void sub_10065B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::~C2KRadioModule(C2KRadioModule *this)
{
  *this = off_101E6D0D8;
  *(this + 1) = off_101E6D360;
  *(this + 2) = off_101E6D388;
  sub_10006DCAC(this + 2992, *(this + 375));
  sub_10004543C(this + 2184);
  sub_10004543C(this + 1376);
  EmergencyMode::~EmergencyMode((this + 1356));
  EmergencyMode::~EmergencyMode((this + 1336));
  sub_1001A8E08(this + 1296, *(this + 163));
  sub_10032D3A4(this + 1232, *(this + 155));
  sub_10032D3A4(this + 1200, *(this + 151));
  v9 = (this + 1176);
  sub_1000B2AF8(&v9);
  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  if (*(this + 1151) < 0)
  {
    operator delete(*(this + 141));
  }

  if (*(this + 1127) < 0)
  {
    operator delete(*(this + 138));
  }

  if (*(this + 1095) < 0)
  {
    operator delete(*(this + 134));
  }

  v2 = *(this + 133);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 131);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 129);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(this + 1023) < 0)
  {
    operator delete(*(this + 125));
  }

  v5 = *(this + 121);
  if (v5)
  {
    *(this + 122) = v5;
    operator delete(v5);
  }

  v6 = *(this + 109);
  if (v6)
  {
    *(this + 110) = v6;
    operator delete(v6);
  }

  v7 = *(this + 106);
  if (v7)
  {
    *(this + 107) = v7;
    operator delete(v7);
  }

  v8 = *(this + 102);
  if (v8)
  {
    *(this + 103) = v8;
    operator delete(v8);
  }

  CSIRadioModulePrivate::~CSIRadioModulePrivate(this);
}

{
  C2KRadioModule::~C2KRadioModule(this);

  operator delete();
}

void non-virtual thunk toC2KRadioModule::~C2KRadioModule(C2KRadioModule *this)
{
  C2KRadioModule::~C2KRadioModule((this - 8));
}

{
  C2KRadioModule::~C2KRadioModule((this - 16));
}

{
  C2KRadioModule::~C2KRadioModule((this - 8));

  operator delete();
}

{
  C2KRadioModule::~C2KRadioModule((this - 16));

  operator delete();
}

uint64_t C2KRadioModule::requestReset(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  return (*(*a1 + 160))(a1, a2, 1);
}

BOOL C2KRadioModule::enterLowPower(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Request to enter low power", &v13, 2u);
  }

  ATCSMutex::lock((a1 + 56));
  v5 = *(a1 + 364);
  if (v5 > 8)
  {
    __TUAssertTrigger();
LABEL_15:
    if (*(a1 + 152))
    {
      __TUAssertTrigger();
    }

    sub_1001210EC((a1 + 128), a2);
    v8 = CSIRadioModulePrivate::enterLowPowerInternal(a1);
    goto LABEL_18;
  }

  if (((1 << v5) & 0x1ED) != 0)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CSIRadioModulePrivate::stateAsString(v5);
      v13 = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I State is %s, skipping enter low power", &v13, 0xCu);
    }

    v8 = 1;
    sub_10000FFD0(a2, 1);
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Entering low power", &v13, 2u);
    }

    goto LABEL_15;
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIRadioModulePrivate::stateAsString(4u);
    v13 = 136315138;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I State is %s, deferring enter low power", &v13, 0xCu);
  }

  sub_1001210EC((a1 + 128), a2);
  v8 = 1;
LABEL_18:
  ATCSMutex::unlock((a1 + 56));
  return v8;
}

uint64_t C2KRadioModule::handleRadioReset(C2KRadioModule *this)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  ATCSMutex::unlock((this + 56));
  sub_100080308(this + 424, 2u, *(this + 104), 0, 0);
  ATCSMutex::lock((this + 56));
  (*(**(this + 8) + 16))(*(this + 8));
  v4 = HIDWORD(*(this + 30));
  v3 = 0;
  LOBYTE(v4) = 1;
  return sub_100080280(this + 208, &v3);
}

uint64_t C2KRadioModule::powerOff(C2KRadioModule *this)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 160) == 1)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I already power off", buf, 2u);
    }
  }

  else
  {
    (*(*this + 480))(this);
    *(this + 160) = 1;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10065B85C;
    block[3] = &unk_101E6D3F0;
    block[4] = this;
    dispatch_async(global_queue, block);
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t sub_10065B85C(uint64_t a1)
{
  v1 = *(a1 + 32);
  Uptime = CSIRadioModulePrivate::getUptime(v1);
  ATCSMutex::lock((v1 + 56));
  v2 = sub_10005D028();
  sub_10000501C(&__p, *(v1 + 656));
  sub_1014A6EC0(v2, &__p, &Uptime);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(v1 + 360) = 2;
  ATCSMutex::unlock((v1 + 56));
  (*(**(v1 + 64) + 64))(*(v1 + 64));
  return (*(**(v1 + 120) + 48))(*(v1 + 120));
}

void sub_10065B92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::completeDumpStateInternalEarly(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1095);
  if (v4 < 0)
  {
    if (!*(a1 + 1080))
    {
      goto LABEL_14;
    }
  }

  else if (!*(a1 + 1095))
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ----------------- BB CORE DUMP ----------------", &v9, 2u);
    v5 = *(a1 + 40);
    LOBYTE(v4) = *(a1 + 1095);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 1072);
    if ((v4 & 0x80) != 0)
    {
      v6 = *v6;
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s", &v9, 0xCu);
    LOBYTE(v4) = *(a1 + 1095);
  }

  if ((v4 & 0x80) != 0)
  {
    **(a1 + 1072) = 0;
    *(a1 + 1080) = 0;
  }

  else
  {
    *(a1 + 1072) = 0;
    *(a1 + 1095) = 0;
  }

LABEL_14:
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I CSI state dump requested: %s", &v9, 0xCu);
  }
}

void C2KRadioModule::completeDumpStateInternalMiddle(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I -----------------------------------------------", v2, 2u);
  }
}

void C2KRadioModule::completeDumpStateInternalLate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }
}

void C2KRadioModule::getNonce(uint64_t a1, void **a2)
{
  v4 = *(a1 + 1056);
  v8 = xpc_null_create();
  v5 = *(a1 + 1032);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v9[0] = off_101E6EF68;
  v9[1] = a1;
  v9[2] = v6;
  v9[3] = v9;
  (*(*v4 + 48))(v4, abm::kKeyCommandGetBasebandFirmwareNonce, &v8, &object, v9);
  sub_100049CCC(v9);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v8);
}

void sub_10065BC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, xpc_object_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10065BCB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void C2KRadioModule::getFirmwareNonce(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "getFirmwareNonce";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_10065BE6C;
  v8[3] = &unk_101E6D410;
  v6 = *a2;
  v5 = a2[1];
  v8[4] = a1;
  v8[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = _Block_copy(v8);
  v10 = v7;
  C2KRadioModule::getNonce(a1, &v10);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10065BE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10065BE6C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4)
  {
    v6 = xpc_data_create(v3, v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    *&buf = *(a1 + 40);
    *(&buf + 1) = "kRadioModuleFirmwareNonce";
    sub_10000F688(&buf, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }

  else
  {
    v5 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "getFirmwareNonce_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N %s: Nonce is not found", &buf, 0xCu);
    }
  }
}

void sub_10065BF68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::getFirmwareManifestStatus(uint64_t a1, void *a2)
{
  ATCSMutex::lock((a1 + 56));
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  v21 = xpc_int64_create(*(a1 + 960));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v24 = 0uLL;
  v25 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v18 = 0;
  v19 = &v23;
  v20 = __p;
  sub_10000F688(&v19, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v21);
  v21 = 0;
  v15 = xpc_int64_create(*(a1 + 992));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *&v24 = &v23;
  *(&v24 + 1) = "AKeyStatus";
  sub_10000F688(&v24, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v7 = *(a1 + 968);
  v8 = *(a1 + 976);
  if (v7 != v8 && *(a1 + 960) != 2)
  {
    v13 = xpc_data_create(v7, v8 - v7);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v24 = 0uLL;
    v25 = 0;
    ctu::cf::assign();
    *__p = v24;
    v18 = v25;
    v9 = __p;
    if (v25 < 0)
    {
      v9 = __p[0];
    }

    v19 = &v23;
    v20 = v9;
    sub_10000F688(&v19, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v13);
    v13 = 0;
  }

  v11 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v11 = xpc_null_create();
  }

  *&v24 = *a2;
  *(&v24 + 1) = "kRadioModuleFirmwareManifestStatus";
  sub_100DAE90C(&v24, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  xpc_release(v23);
  return ATCSMutex::unlock((a1 + 56));
}

void sub_10065C244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*(v13 - 33) < 0)
  {
    operator delete(*(v13 - 56));
  }

  xpc_release(v12);
  xpc_release(*(v13 - 64));
  ATCSMutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::getFirmwareManifestData(uint64_t a1, uint64_t a2)
{
  v4 = xpc_null_create();
  v5 = *(a1 + 1032);
  object = v5;
  v8 = v4;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  operator new();
}

void sub_10065C42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t C2KRadioModule::getFirmwareSecurityInfo(uint64_t a1, void *a2)
{
  v4 = ATCSMutex::lock((a1 + 56));
  if (*(a1 + 816) != *(a1 + 824) && (!capabilities::fusing::supportsCertIDFromPublicKeyHash(v4) || *(a1 + 848) != *(a1 + 856)))
  {
    v34 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v34 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v34 = v6;
      if (!v6)
      {
        v8 = xpc_null_create();
        v6 = 0;
        goto LABEL_13;
      }
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
LABEL_14:
      xpc_release(v6);
      if (*(a1 + 816) != *(a1 + 824))
      {
        v32 = xpc_int64_create(*(a1 + 840));
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "ChipID";
        sub_10000F688(&buf, &v32, &v33);
        xpc_release(v33);
        v33 = 0;
        xpc_release(v32);
        v32 = 0;
        object = xpc_data_create(*(a1 + 816), *(a1 + 824) - *(a1 + 816));
        if (!object)
        {
          object = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "ChipSerialNo";
        sub_10000F688(&buf, &object, &v31);
        xpc_release(v31);
        v31 = 0;
        xpc_release(object);
        object = 0;
      }

      v10 = capabilities::radio::initium(v9);
      if (v10)
      {
        v12 = capabilities::fusing::determineConfig(*(a1 + 900), *(a1 + 904), *(a1 + 897), v11);
        v28 = xpc_int64_create(v12);
        if (!v28)
        {
          v28 = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "CertID";
        sub_10000F688(&buf, &v28, &v29);
        xpc_release(v29);
        v29 = 0;
        xpc_release(v28);
        v28 = 0;
      }

      else if (*(a1 + 848) != *(a1 + 856) && capabilities::fusing::supportsCertIDFromPublicKeyHash(v10))
      {
        v26 = xpc_data_create(*(a1 + 848), *(a1 + 856) - *(a1 + 848));
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "PkHash";
        sub_10000F688(&buf, &v26, &v27);
        xpc_release(v27);
        v27 = 0;
        xpc_release(v26);
        v26 = 0;
        v14 = capabilities::fusing::inferFusingStateFromCertID(*(a1 + 844), v13);
        if ((v14 & 0xFFFFFFFE) == 2)
        {
          v24 = xpc_int64_create(*(a1 + 844));
          if (!v24)
          {
            v24 = xpc_null_create();
          }

          *&buf = &v34;
          *(&buf + 1) = "CertID";
          sub_10000F688(&buf, &v24, &v25);
          xpc_release(v25);
          v25 = 0;
          xpc_release(v24);
          v24 = 0;
        }

        v22 = xpc_int64_create(v14);
        if (!v22)
        {
          v22 = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "FusingStatus";
        sub_10000F688(&buf, &v22, &v23);
        xpc_release(v23);
        v23 = 0;
        xpc_release(v22);
        v22 = 0;
      }

      v15 = *(a1 + 872);
      v16 = *(a1 + 880);
      if (v15 != v16)
      {
        v20 = xpc_data_create(v15, v16 - v15);
        if (!v20)
        {
          v20 = xpc_null_create();
        }

        *&buf = &v34;
        *(&buf + 1) = "CertificationPublicKey";
        sub_10000F688(&buf, &v20, &v21);
        xpc_release(v21);
        v21 = 0;
        xpc_release(v20);
        v20 = 0;
      }

      v18 = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        v18 = xpc_null_create();
      }

      *&buf = *a2;
      *(&buf + 1) = "kRadioModuleFirmwareSecurityInfo";
      sub_100DAE90C(&buf, &v18, &v19);
      xpc_release(v19);
      v19 = 0;
      xpc_release(v18);
      v18 = 0;
      xpc_release(v34);
      return ATCSMutex::unlock((a1 + 56));
    }

    v8 = xpc_null_create();
LABEL_13:
    v34 = v8;
    goto LABEL_14;
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "getFirmwareSecurityInfo";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Information not yet retrieved", &buf, 0xCu);
  }

  return ATCSMutex::unlock((a1 + 56));
}

void sub_10065C8F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::getFirmwarePreflightInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t C2KRadioModule::handleGetBasebandFirmwarePreflightInfo_sync(dispatch_queue_t *this)
{
  ATCSMutex::lock((this + 7));
  v2 = dispatch_group_create();
  if (!capabilities::radio::initium(v2))
  {
    if (this[102] == this[103])
    {
      *&v10.gr_gid = v2;
      if (v2)
      {
        dispatch_retain(v2);
      }

      C2KRadioModule::sendGetFirmwareInfo_nl(this, &v10.gr_gid);
      if (!v2)
      {
        if (this[106] != this[107])
        {
          if (*(this + 240) == 2)
          {
            v10.gr_name = 0;
            goto LABEL_25;
          }

LABEL_28:
          p_gr_mem = v9;
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 0x40000000;
          v4 = &unk_101E6D4A0;
          v5 = sub_10065D4C8;
          goto LABEL_29;
        }

        v10.gr_passwd = 0;
        goto LABEL_19;
      }

      dispatch_release(v2);
    }

    if (this[106] != this[107])
    {
      goto LABEL_22;
    }

    v10.gr_passwd = v2;
    if (v2)
    {
      dispatch_retain(v2);
      v6 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v6 = 1;
LABEL_20:
    C2KRadioModule::sendGetPkHash_nl(this, &v10.gr_passwd);
    if ((v6 & 1) == 0)
    {
      dispatch_release(v2);
    }

LABEL_22:
    if (*(this + 240) == 2)
    {
      v10.gr_name = v2;
      if (v2)
      {
        dispatch_retain(v2);
        v7 = 0;
        goto LABEL_26;
      }

LABEL_25:
      v7 = 1;
LABEL_26:
      C2KRadioModule::sendGetManifestStatus_nl(this, &v10);
      if ((v7 & 1) == 0)
      {
        dispatch_release(v2);
      }

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v12.gr_name = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  C2KRadioModule::sendGetPersParams_nl(this, &v12);
  if (v2)
  {
    dispatch_release(v2);
  }

  p_gr_mem = &v10.gr_mem;
  v10.gr_mem = _NSConcreteStackBlock;
  v11 = 0x40000000;
  v4 = &unk_101E6D460;
  v5 = sub_10065CE94;
LABEL_29:
  p_gr_mem[2] = v5;
  p_gr_mem[3] = v4;
  p_gr_mem[4] = this;
  dispatch_group_notify(v2, this[129], p_gr_mem);
  if (v2)
  {
    dispatch_release(v2);
  }

  return ATCSMutex::unlock((this + 7));
}

void sub_10065CC64(_Unwind_Exception *a1)
{
  v4 = v3;
  if ((v4 & 1) == 0)
  {
    dispatch_release(v2);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  ATCSMutex::unlock((v1 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::sendGetPersParams_nl(C2KRadioModule *this, group *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "sendGetPersParams_nl";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v5 = *(this + 132);
  v6 = xpc_null_create();
  v7 = abm::kKeyCommandGetPersParams;
  v11 = v6;
  v8 = *(this + 129);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  gr_name = a2->gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v12[0] = off_101E6F1E8;
  v12[1] = this;
  v12[2] = gr_name;
  v12[3] = v12;
  (*(*v5 + 48))(v5, v7, &v11, &object, v12);
  sub_100049CCC(v12);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v11);
}

void sub_10065CE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10065CE94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10065CF50;
  v3[3] = &unk_101E6D440;
  v3[4] = v1;
  v2 = _Block_copy(v3);
  v4 = v2;
  C2KRadioModule::getNonce(v1, &v4);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_10065CF30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065CF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 8) == *a2)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101777264();
    }
  }

  else
  {
    for (i = *(v2 + 768); i != (v2 + 760); i = i[1])
    {
      v6 = i[2];
      v5 = i[3];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37[0] = 0;
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        v37[0] = v7;
      }

      else
      {
        v8 = xpc_null_create();
        v37[0] = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_12;
        }
      }

      if (xpc_get_type(v8) != &_xpc_type_dictionary)
      {
        v9 = xpc_null_create();
LABEL_12:
        v37[0] = v9;
        goto LABEL_13;
      }

      xpc_retain(v8);
LABEL_13:
      xpc_release(v8);
      v35 = xpc_data_create(*a2, *(a2 + 8) - *a2);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      bytes = v37;
      v31 = "Cellular1,Nonce";
      sub_10000F688(&bytes, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
      v33 = xpc_data_create((v2 + 840), 4uLL);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      bytes = v37;
      v31 = "Cellular1,ChipID";
      sub_10000F688(&bytes, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      bytes = 0;
      v31 = 0;
      v32 = 0;
      v10 = *(v2 + 824);
      v11 = *(v2 + 816);
      if (v10 == v11)
      {
        v12 = 0;
      }

      else
      {
        sub_10018D3CC(&bytes, v10 - v11);
        v11 = *(v2 + 816);
        v10 = *(v2 + 824);
        v12 = bytes;
      }

      if (v10 != v11)
      {
        do
        {
          v13 = *--v10;
          *v12++ = v13;
        }

        while (v10 != v11);
        v12 = bytes;
      }

      v28 = xpc_data_create(v12, v31 - v12);
      if (!v28)
      {
        v28 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,ECID";
      sub_10000F688(&v26, &v28, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v28);
      v28 = 0;
      v24 = xpc_data_create((v2 + 896), 1uLL);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,BoardID";
      sub_10000F688(&v26, &v24, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v24);
      v24 = 0;
      v22 = xpc_data_create((v2 + 897), 1uLL);
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,SecurityDomain";
      sub_10000F688(&v26, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v20 = xpc_data_create((v2 + 900), 4uLL);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,ProductionMode";
      sub_10000F688(&v26, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
      v18 = xpc_data_create((v2 + 904), 1uLL);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,SecurityMode";
      sub_10000F688(&v26, &v18, &v19);
      xpc_release(v19);
      v19 = 0;
      xpc_release(v18);
      v18 = 0;
      v16 = xpc_data_create((v2 + 905), 1uLL);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      v26 = v37;
      v27 = "Cellular1,UID_MODE";
      sub_10000F688(&v26, &v16, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v16);
      v16 = 0;
      v14 = v37[0];
      if (v37[0])
      {
        xpc_retain(v37[0]);
      }

      else
      {
        v14 = xpc_null_create();
      }

      v26 = v6;
      v27 = "kRadioModuleFirmwarePreflightInfo";
      sub_100DAE90C(&v26, &v14, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v14);
      v14 = 0;
      if (bytes)
      {
        v31 = bytes;
        operator delete(bytes);
      }

      xpc_release(v37[0]);
      if (v5)
      {
        sub_100004A34(v5);
      }
    }

    sub_1004EDC58((v2 + 760));
    C2KRadioModule::maybeResetBootedAssertion_sync(v2);
  }
}

void sub_10065D3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(*(v28 - 96));
  if (v27)
  {
    sub_100004A34(v27);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::maybeResetBootedAssertion_sync(C2KRadioModule *this)
{
  if (!*(this + 91) && !*(this + 97))
  {
    v1 = (this + 696);
    v2 = *(this + 88);
    *v1 = 0u;
    if (v2)
    {
      sub_100004A34(v2);
    }
  }
}

void sub_10065D4C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10065D584;
  v3[3] = &unk_101E6D480;
  v3[4] = v1;
  v2 = _Block_copy(v3);
  v4 = v2;
  C2KRadioModule::getNonce(v1, &v4);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_10065D564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065D584(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 8) == *a2)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101777264();
    }
  }

  else
  {
    for (i = *(v2 + 768); i != (v2 + 760); i = i[1])
    {
      v6 = i[2];
      v5 = i[3];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = 0;
      v43 = xpc_null_create();
      if (xpc_dictionary_get_value(*v6, "kRadioModuleFirmwarePreflightInfo"))
      {
        *&v44 = v6;
        *(&v44 + 1) = "kRadioModuleFirmwarePreflightInfo";
        sub_100048A24(&v44, object);
        v7 = object[0];
        object[0] = xpc_null_create();
        v8 = v43;
        v43 = v7;
        xpc_release(v8);
        xpc_release(object[0]);
      }

      else
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        if (v9 || (v9 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v9) == &_xpc_type_dictionary)
          {
            xpc_retain(v9);
            v10 = v9;
          }

          else
          {
            v10 = xpc_null_create();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v9 = 0;
        }

        xpc_release(v9);
        v11 = xpc_null_create();
        v12 = v43;
        v43 = v10;
        xpc_release(v12);
        xpc_release(v11);
      }

      v41 = xpc_data_create(*a2, *(a2 + 8) - *a2);
      if (!v41)
      {
        v41 = xpc_null_create();
      }

      *&v44 = &v43;
      *(&v44 + 1) = "Nonce";
      sub_10000F688(&v44, &v41, &v42);
      xpc_release(v42);
      v42 = 0;
      xpc_release(v41);
      v41 = 0;
      v39 = xpc_int64_create(*(v2 + 840));
      if (!v39)
      {
        v39 = xpc_null_create();
      }

      *&v44 = &v43;
      *(&v44 + 1) = "ChipID";
      sub_10000F688(&v44, &v39, &v40);
      xpc_release(v40);
      v40 = 0;
      xpc_release(v39);
      v39 = 0;
      v37 = xpc_data_create(*(v2 + 816), *(v2 + 824) - *(v2 + 816));
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      *&v44 = &v43;
      *(&v44 + 1) = "ChipSerialNo";
      sub_10000F688(&v44, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      if (TelephonyRadiosGetRadioVendor() == 1)
      {
        v35 = xpc_int64_create(3);
        if (!v35)
        {
          v35 = xpc_null_create();
        }

        *&v44 = &v43;
        *(&v44 + 1) = "VendorID";
        sub_10000F688(&v44, &v35, &v36);
        xpc_release(v36);
        v36 = 0;
        xpc_release(v35);
        v35 = 0;
      }

      else
      {
        v33 = xpc_int64_create(2);
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *&v44 = &v43;
        *(&v44 + 1) = "VendorID";
        sub_10000F688(&v44, &v33, &v34);
        xpc_release(v34);
        v34 = 0;
        xpc_release(v33);
        v33 = 0;
      }

      v31 = xpc_data_create(*(v2 + 848), *(v2 + 856) - *(v2 + 848));
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      *&v44 = &v43;
      *(&v44 + 1) = "PkHash";
      sub_10000F688(&v44, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      v14 = capabilities::fusing::inferFusingStateFromCertID(*(v2 + 844), v13);
      if ((v14 & 0xFFFFFFFE) == 2)
      {
        v29 = xpc_int64_create(*(v2 + 844));
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        *&v44 = &v43;
        *(&v44 + 1) = "CertID";
        sub_10000F688(&v44, &v29, &v30);
        xpc_release(v30);
        v30 = 0;
        xpc_release(v29);
        v29 = 0;
      }

      v27 = xpc_int64_create(v14);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      *&v44 = &v43;
      *(&v44 + 1) = "FusingStatus";
      sub_10000F688(&v44, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      v25 = xpc_int64_create(*(v2 + 960));
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      v44 = 0uLL;
      v45 = 0;
      ctu::cf::assign();
      *object = v44;
      v22 = v45;
      v15 = v44;
      if (v45 >= 0)
      {
        v15 = object;
      }

      v23 = &v43;
      v24 = v15;
      sub_10000F688(&v23, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v25);
      v25 = 0;
      if (*(v2 + 960) <= 1u)
      {
        v19 = xpc_data_create(*(v2 + 968), *(v2 + 976) - *(v2 + 968));
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        v44 = 0uLL;
        v45 = 0;
        ctu::cf::assign();
        *object = v44;
        v22 = v45;
        v16 = v44;
        if (v45 >= 0)
        {
          v16 = object;
        }

        v23 = &v43;
        v24 = v16;
        sub_10000F688(&v23, &v19, &v20);
        xpc_release(v20);
        v20 = 0;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(object[0]);
        }

        xpc_release(v19);
        v19 = 0;
      }

      v17 = v43;
      if (v43)
      {
        xpc_retain(v43);
      }

      else
      {
        v17 = xpc_null_create();
      }

      *&v44 = v6;
      *(&v44 + 1) = "kRadioModuleFirmwarePreflightInfo";
      sub_100DAE90C(&v44, &v17, &v18);
      xpc_release(v18);
      v18 = 0;
      xpc_release(v17);
      v17 = 0;
      xpc_release(v43);
      if (v5)
      {
        sub_100004A34(v5);
      }
    }

    sub_1004EDC58((v2 + 760));
    C2KRadioModule::maybeResetBootedAssertion_sync(v2);
  }
}

void sub_10065DB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19)
{
  if (*(v20 - 97) < 0)
  {
    operator delete(*(v20 - 120));
  }

  xpc_release(object);
  xpc_release(*(v20 - 128));
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::forceFastDormancyAfterDelay(C2KRadioModule *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0x1F404000100;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Forcing fast dormancy after %d milliseconds", &v13, 8u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 98));
  v4 = ServiceMap;
  v5 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v6 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 32))(v11, 500);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10065DE38(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::FDAssertionHolderGone(uint64_t a1, uint64_t a2, void *a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v7 = ServiceMap;
  v8 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v9 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (*(a1 + 513) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v17 = *(a2 + 16);
    }

    (*(*v14 + 48))(v14, __p, *a3);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10065DFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::setFastDormancyTimeouts(C2KRadioModule *this, int a2, uint64_t a3)
{
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v22) = 67109120;
    HIDWORD(v22) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I changing fast dormancy timeouts to %d", &v22, 8u);
  }

  *(this + 127) = a3;
  v7 = *(this + 512);
  v8 = *(this + 5);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LODWORD(v22) = 67109376;
      HIDWORD(v22) = a3;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setting fast dormancy timeouts to %d, (ignoring inhibit timer %d)", &v22, 0xEu);
    }

    v10 = *(this + 15);
    if (a3)
    {
      v11 = (*(*this + 576))(this);
      (*(*v10 + 64))(v10, a3, v11);
    }

    else
    {
      (*(*v10 + 64))(*(this + 15), 0, 0);
    }

    ServiceMap = Registry::getServiceMap(*(this + 98));
    v13 = ServiceMap;
    v14 = "N8dormancy15DormancyServiceE";
    if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
    {
      v15 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    v22 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v22);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        if (!v20)
        {
LABEL_21:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          return;
        }

LABEL_20:
        (*(*v20 + 24))(v20, *(this + 127) != 0);
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v9)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I dormancy support off in radio", &v22, 2u);
  }
}

void sub_10065E2CC(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::getDormancyMask(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[98]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v11 = (*(*v9 + 528))(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return v11;
}

void sub_10065E40C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::handleDataInactivity(C2KRadioModule *this)
{
  CSIRadioModulePrivate::handleDataInactivity(this);
  v2 = *(*this + 272);

  return v2(this, "data inactivity from MUX");
}

void C2KRadioModule::setCellularDataUsedForSubscriberIDs(C2KRadioModule *this)
{
  *(this + 1024) = 1;
  v2 = sub_10005D028();
  sub_10000501C(&__p, "C2KRadioModule::kCellularDataUsed");
  sub_1006197F4(v2, &__p, this + 1024);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10065E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::HandleManufacturerMMI(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6)
{
  ATCSMutex::lock((a1 + 56));
  bzero(__dst, 0x400uLL);
  v97 = 0;
  v98 = 0;
  sub_100DF07C8(*(a1 + 784), &v97);
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *&buf.var0 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
  if (!v18)
  {
    v20 = 0;
LABEL_9:
    std::mutex::unlock(v13);
    v19 = 0;
    v22 = 1;
    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v22 = 0;
  if (!v20)
  {
LABEL_16:
    var0 = 0;
    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_10:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v21);
  (*(*v20 + 96))(&v95, v20, a2, 1, SMSCarrierBundleString, 0, 0);
  sub_100010180(&object, &v95);
  *&buf.var0 = theDict;
  theDict = object;
  object = 0;
  sub_10001021C(&buf);
  sub_10001021C(&object);
  sub_10000A1EC(&v95);
  if (!theDict)
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"AllowMMICommandSMSC");
  v25 = Value;
  LOBYTE(buf.var0) = 0;
  if (Value)
  {
    v26 = CFGetTypeID(Value);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v25, v27);
    }
  }

  var0 = buf.var0;
  if ((v22 & 1) == 0)
  {
LABEL_17:
    sub_100004A34(v19);
  }

LABEL_18:
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = "false";
    if (var0)
    {
      v30 = "true";
    }

    buf.var0 = 136315138;
    *&buf.var1 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I SMSC K00L Command allowed: %s", &buf, 0xCu);
  }

  if (C2KRadioModule::isBuddyState(a1))
  {
    if (*(a3 + a5) == 875705395 && *(a3 + a5 + 4) == 35)
    {
      if (a4 > 1)
      {
        goto LABEL_183;
      }

      sub_10097D724();
      object = 0;
      object = xpc_null_create();
      v43 = xpc_dictionary_create(0, 0, 0);
      if (v43 || (v43 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v43) == &_xpc_type_dictionary)
        {
          xpc_retain(v43);
          v44 = v43;
        }

        else
        {
          v44 = xpc_null_create();
        }
      }

      else
      {
        v44 = xpc_null_create();
        v43 = 0;
      }

      xpc_release(v43);
      v82 = xpc_null_create();
      v83 = object;
      object = v44;
      xpc_release(v83);
      xpc_release(v82);
      v93 = xpc_BOOL_create(a4 == 0);
      if (!v93)
      {
        v93 = xpc_null_create();
      }

      *&buf.var0 = &object;
      buf.var2.__rep_.__l.__data_ = "kCTRadioUseLoggingProfileKey";
      sub_10000F688(&buf, &v93, &v94);
      xpc_release(v94);
      v94 = 0;
      xpc_release(v93);
      v93 = 0;
      sub_10005B8C8(&buf);
      (*(**&buf.var0 + 432))(*&buf.var0, &object);
      if (buf.var2.__rep_.__l.__data_)
      {
        sub_100004A34(buf.var2.__rep_.__l.__data_);
      }

      sub_10097D7AC();
      xpc_release(object);
      goto LABEL_168;
    }
  }

  v32 = a3 + a5;
  if (*v32 == 875967029 && *(v32 + 4) == 35)
  {
    sub_10097D724();
    if (a4 > 2)
    {
      if (a4 == 4)
      {
        goto LABEL_82;
      }

      if (a4 != 3)
      {
        goto LABEL_112;
      }
    }

    else if (a4)
    {
      if (a4 != 1)
      {
LABEL_112:
        sub_10000501C(&buf, __dst);
        sub_10097DB58(1, 0, &buf, a2);
        if (buf.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&buf.var0);
        }

        goto LABEL_114;
      }

LABEL_82:
      v57 = Registry::getServiceMap(*(a1 + 784));
      v58 = v57;
      if (v59 < 0)
      {
        v60 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
        v61 = 5381;
        do
        {
          v59 = v61;
          v62 = *v60++;
          v61 = (33 * v61) ^ v62;
        }

        while (v62);
      }

      std::mutex::lock(v57);
      *&buf.var0 = v59;
      v63 = sub_100009510(&v58[1].__m_.__sig, &buf);
      if (v63)
      {
        v65 = v63[3];
        v64 = v63[4];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v58);
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v64);
          v66 = 0;
LABEL_108:
          sub_10000501C(__p, "en");
          (*(*v65 + 120))(v65, __p);
          if (v92 < 0)
          {
            operator delete(__p[0]);
          }

          if ((v66 & 1) == 0)
          {
            sub_100004A34(v64);
          }

          goto LABEL_112;
        }
      }

      else
      {
        v65 = 0;
      }

      std::mutex::unlock(v58);
      v64 = 0;
      v66 = 1;
      goto LABEL_108;
    }

    *a6 |= 8u;
    strlcpy(__dst, "Please enter the ISO 639-1 language code", 0x400uLL);
    sub_10000501C(&buf, __dst);
    sub_10097DB58(1, 1, &buf, a2);
    if ((buf.var2.__rep_.__s.__data_[15] & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    v56 = *&buf.var0;
    goto LABEL_81;
  }

  if ((var0 & 1) != 0 && *v32 == 842479159 && *(v32 + 4) == 35)
  {
    if (a4 == 4)
    {
      sub_10097D724();
      *a6 |= 4u;
      v80 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(v80, &object);
      v81 = object;
      CSIPhoneNumber::CSIPhoneNumber(&buf, "");
      (*(*v81 + 248))(v81, a2, &buf);
      if (SBYTE7(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(v104[1]);
      }

      if (SBYTE7(v103) < 0)
      {
        operator delete(v102[0]);
      }

      if (SBYTE7(v101) < 0)
      {
        operator delete(v100[0]);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      data = v89;
      if (!v89)
      {
        goto LABEL_168;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_168;
      }

      sub_10097D724();
      *a6 |= 4u;
      v76 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(v76, &buf);
      (*(**&buf.var0 + 240))(*&buf.var0, a2);
      data = buf.var2.__rep_.__l.__data_;
      if (!buf.var2.__rep_.__l.__data_)
      {
        goto LABEL_168;
      }
    }

    sub_100004A34(data);
LABEL_168:
    v84 = 1;
    goto LABEL_184;
  }

  if (*v32 == 926102834 && *(v32 + 4) == 9008)
  {
    v45 = *(a1 + 40);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Disabling Test Alerts", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      sub_10097D7AC();
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    v46 = Registry::getServiceMap(*(a1 + 784));
    v47 = v46;
    if (v48 < 0)
    {
      v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
      v50 = 5381;
      do
      {
        v48 = v50;
        v51 = *v49++;
        v50 = (33 * v50) ^ v51;
      }

      while (v51);
    }

    std::mutex::lock(v46);
    *&buf.var0 = v48;
    v52 = sub_100009510(&v47[1].__m_.__sig, &buf);
    if (v52)
    {
      v54 = v52[3];
      v53 = v52[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v47);
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v53);
        v55 = 0;
        if (!v54)
        {
          goto LABEL_75;
        }

        goto LABEL_117;
      }
    }

    else
    {
      v54 = 0;
    }

    std::mutex::unlock(v47);
    v53 = 0;
    v55 = 1;
    if (!v54)
    {
LABEL_75:
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_159;
      }

      goto LABEL_158;
    }

LABEL_117:
    (*(*v54 + 432))(v54, 0);
    strlcpy(__dst, "Test alerts not allowed", 0x400uLL);
    sub_10000501C(&buf, __dst);
    sub_10097DB58(1, 0, &buf, a2);
    goto LABEL_155;
  }

  if (*v32 == 926102834 && *(v32 + 4) == 9009)
  {
    v67 = *(a1 + 40);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Enabling Test Alerts", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      sub_10097D7AC();
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    v68 = Registry::getServiceMap(*(a1 + 784));
    v69 = v68;
    if (v70 < 0)
    {
      v71 = (v70 & 0x7FFFFFFFFFFFFFFFLL);
      v72 = 5381;
      do
      {
        v70 = v72;
        v73 = *v71++;
        v72 = (33 * v72) ^ v73;
      }

      while (v73);
    }

    std::mutex::lock(v68);
    *&buf.var0 = v70;
    v74 = sub_100009510(&v69[1].__m_.__sig, &buf);
    if (v74)
    {
      v75 = v74[3];
      v53 = v74[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v69);
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v53);
        v55 = 0;
        goto LABEL_153;
      }
    }

    else
    {
      v75 = 0;
    }

    std::mutex::unlock(v69);
    v53 = 0;
    v55 = 1;
LABEL_153:
    if (v75)
    {
      (*(*v75 + 432))(v75, 1);
      strlcpy(__dst, "Test alerts allowed", 0x400uLL);
      sub_10000501C(&buf, __dst);
      sub_10097DB58(1, 0, &buf, a2);
LABEL_155:
      if (buf.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&buf.var0);
      }

      goto LABEL_159;
    }

    if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
LABEL_159:
      if ((v55 & 1) == 0)
      {
        sub_100004A34(v53);
      }

LABEL_114:
      sub_10097D7AC();
      goto LABEL_168;
    }

LABEL_158:
    sub_101777298();
    goto LABEL_159;
  }

  v37 = strrchr(v32, 35);
  if (v37)
  {
    v38 = v37;
    if (*v32 != 13880 || *(v32 + 2) != 42)
    {
      if ((var0 & 1) == 0 || (*v32 == 842479159 ? (v40 = *(v32 + 4) == 42) : (v40 = 0), !v40))
      {
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          v42 = "#I Unhandled code";
LABEL_182:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v42, &buf, 2u);
          goto LABEL_183;
        }

        goto LABEL_183;
      }

      v85 = *(a1 + 40);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I Setting Service Center Address", &buf, 2u);
      }

      if (a4 && a4 != 3)
      {
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          v42 = "#I Not activation or registration";
          goto LABEL_182;
        }

        goto LABEL_183;
      }

      sub_10097D724();
      *v106 = 0u;
      v107 = 0u;
      *v104 = 0u;
      v105 = 0u;
      *v102 = 0u;
      v103 = 0u;
      *v100 = 0u;
      v101 = 0u;
      memset(&buf, 0, sizeof(buf));
      sub_10065F5EC(&object, (v32 + 5), &v38[-v32 - 5]);
      CSIPhoneNumber::CSIPhoneNumber();
      if (v90 < 0)
      {
        operator delete(object);
      }

      *a6 |= 4u;
      v86 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(v86, &object);
      (*(*object + 248))(object, a2, &buf);
      if (v89)
      {
        sub_100004A34(v89);
      }

      sub_10034F8E8(&buf);
      goto LABEL_168;
    }

    v78 = *(a1 + 40);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Setting Voice mail number", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    *v106 = 0u;
    v107 = 0u;
    *v104 = 0u;
    v105 = 0u;
    *v102 = 0u;
    v103 = 0u;
    *v100 = 0u;
    v101 = 0u;
    memset(&buf, 0, sizeof(buf));
    sub_10065F5EC(&object, (v32 + 3), &v38[-v32 - 3]);
    CSIPhoneNumber::CSIPhoneNumber();
    if (v90 < 0)
    {
      operator delete(object);
    }

    v79 = Registry::getServiceMap(*(a1 + 784));
    sub_1013519A8(v79, &object);
    (*(*object + 296))(object, a2, &buf);
    if (v89)
    {
      sub_100004A34(v89);
    }

    sub_10097D7AC();
    if (SBYTE7(v107) < 0)
    {
      operator delete(v106[0]);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104[1]);
    }

    if (SBYTE7(v103) < 0)
    {
      operator delete(v102[0]);
    }

    if (SBYTE7(v101) < 0)
    {
      operator delete(v100[0]);
    }

    if ((*(&buf.var2.__rep_.__l + 23) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    v56 = buf.var2.__rep_.__l.__data_;
LABEL_81:
    operator delete(v56);
    goto LABEL_168;
  }

  v41 = *(a1 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    v42 = "#I Could not find a # in the string";
    goto LABEL_182;
  }

LABEL_183:
  v84 = 0;
LABEL_184:
  sub_10001021C(&theDict);
  if (v98)
  {
    sub_100004A34(v98);
  }

  ATCSMutex::unlock((a1 + 56));
  return v84;
}

void sub_10065F364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, int a24, const void *a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10034F8E8(&a28);
  sub_10001021C(&a25);
  if (a27)
  {
    sub_100004A34(a27);
  }

  ATCSMutex::unlock((v33 + 56));
  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::isBuddyState(C2KRadioModule *this)
{
  v4 = 0;
  v3[0] = this;
  v3[1] = &v4;
  v1 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100676290;
  block[3] = &unk_101E6F858;
  block[4] = v3;
  dispatch_sync(v1, block);
  return v4;
}

_BYTE *sub_10065F5EC(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

std::string *C2KRadioModule::setBasebandVersion_nl(uint64_t a1, const std::string *a2)
{
  if ((ATCSMutex::isLocked((a1 + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v4 = (a1 + 1000);
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = *(a1 + 1023);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 1008);
  }

  if (size != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = a2->__r_.__value_.__r.__words[0]), v8 >= 0 ? (v10 = (a1 + 1000)) : (v10 = v4->__r_.__value_.__r.__words[0]), result = memcmp(v9, v10, size), result))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a2->__r_.__value_.__r.__words[0];
      if (v5 >= 0)
      {
        v13 = a2;
      }

      v14 = 136315138;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband version set to: %s", &v14, 0xCu);
    }

    return std::string::operator=(v4, a2);
  }

  return result;
}

uint64_t sub_10065F7C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

uint64_t C2KRadioModule::handleBasebandModeChanged_nl(uint64_t a1, uint64_t a2)
{
  if ((ATCSMutex::isLocked((a1 + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  v4 = *(a1 + 344);
  if (v4)
  {
    sub_10017718C(v4);
  }

  v6 = *(a1 + 240);
  LODWORD(v6) = (*(**(a1 + 64) + 88))(*(a1 + 64), a2);
  return sub_100080280(a1 + 208, &v6);
}

void C2KRadioModule::provisionDevice(Registry **this)
{
  v1 = 0;
  v2 = 0;
  sub_100DF07C8(this[98], &v1);
  if (v1)
  {
    CallController::startOTASP(v1);
  }

  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10065F8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::handleBringBasebandOnline_sync(C2KRadioModule *this)
{
  ATCSMutex::lock((this + 56));
  (*(**(this + 8) + 112))(*(this + 8));
  return ATCSMutex::unlock((this + 56));
}

void C2KRadioModule::handleOperatorBundleChange_sync(C2KRadioModule *this, uint64_t a2)
{
  v2 = *(this + 150);
  v3 = this + 1208;
  if (v2 != this + 1208)
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_14:
      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    if (*(this + 314) == v7)
    {
      C2KRadioModule::updateDataThrottlingConfig(this);
    }

    goto LABEL_14;
  }
}

uint64_t C2KRadioModule::handleBreadStatusChanged_sync(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 1284);
  if ((*a2 != 1) == (v2 == 1))
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (v2 == 1)
      {
        v5 = "true";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Bread pairing status changed to %s; acquiring airplane mode assertion to apply changes", &buf, 0xCu);
    }

    sub_10000501C(&buf, "/cc/assertions/airplane_mode");
    ctu::rest::AssertionHandle::create();
    if ((v10[6] & 0x80000000) != 0)
    {
      operator delete(buf);
    }

    v6 = *(v3 + 688);
    *(v3 + 680) = v7;
    if (v6)
    {
      sub_100004A34(v6);
    }

    *&buf = off_101E6F368;
    *(&buf + 1) = v3;
    v9 = v2 == 1;
    p_buf = &buf;
    memset(v10, 0, sizeof(v10));
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(&buf);
  }

  return result;
}

void C2KRadioModule::updateDataThrottlingConfig(Registry **this)
{
  value_7 = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(this[98]);
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v24 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v24);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 136))(v10, &value_7, &value);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v28 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v28 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v28 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_19;
  }

  v14 = xpc_null_create();
LABEL_18:
  v28 = v14;
LABEL_19:
  xpc_release(v13);
  v26 = xpc_string_create(abm::kActionConfigureDataThrottling);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v24 = &v28;
  v25 = abm::kKeyAction;
  sub_10000F688(&v24, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v22 = xpc_BOOL_create(value_7);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v24 = &v28;
  v25 = abm::kKeyEnabled;
  sub_10000F688(&v24, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  if (value_7)
  {
    v20 = xpc_int64_create(value);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v24 = &v28;
    v25 = abm::kKeyTimeout;
    sub_10000F688(&v24, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  ATCSMutex::lock((this + 7));
  v15 = this[132];
  v16 = abm::kCommandNetworkInterfaceControl;
  v19 = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v17 = this[129];
  v18 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v31[0] = off_101E6F468;
  v31[1] = this;
  v31[3] = v31;
  (*(*v15 + 48))(v15, v16, &v19, &v18, v31);
  sub_100049CCC(v31);
  if (v18)
  {
    dispatch_release(v18);
  }

  xpc_release(v19);
  v19 = 0;
  ATCSMutex::unlock((this + 7));
  xpc_release(v28);
}

void sub_10065FF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

BOOL C2KRadioModule::inOperatingMode(uint64_t a1, int a2)
{
  ATCSMutex::lock((a1 + 56));
  v4 = (*(**(a1 + 64) + 80))(*(a1 + 64));
  ATCSMutex::unlock((a1 + 56));
  return v4 == a2;
}

uint64_t C2KRadioModule::setTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 1056) + 32))(*(a1 + 1056)))
  {

    C2KRadioModule::setABMTraceProperty();
  }

  v8 = sub_1005C6790(2u);
  v9 = strlen(v8);
  v10 = v9;
  v11 = *(a2 + 23);
  if (v11 < 0)
  {
    if (v9 != *(a2 + 8))
    {
      goto LABEL_17;
    }

    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *a2;
  }

  else
  {
    v12 = a2;
    if (v10 != v11)
    {
      goto LABEL_17;
    }
  }

  if (!memcmp(v12, v8, v10))
  {
    v13 = *(a3 + 23) >= 0 ? a3 : *a3;
    if (!strcasecmp(v13, "enabled"))
    {
      sub_10000501C(&v21, "ABM");
      C2KRadioModule::setABMTraceProperty();
    }
  }

LABEL_17:
  if (*(a1 + 488))
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v20 = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_1006C97E4();
  }

  return 0;
}

void sub_100660318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::getTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*(**(a1 + 1056) + 32))(*(a1 + 1056)))
  {
    v8 = a4[1];
    v19 = *a4;
    v20 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    C2KRadioModule::getABMTraceProperty();
  }

  *string = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a1 + 488);
  if (v9)
  {
    v10 = sub_1006C8B14(v9, a2, a3, string);
    if (v18 >= 0)
    {
      v11 = string;
    }

    else
    {
      v11 = *string;
    }
  }

  else
  {
    v10 = 0;
    v11 = string;
  }

  v14 = xpc_string_create(v11);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v13[0] = *a4;
  v13[1] = "kRadioTracePropertyValue";
  sub_10000F688(v13, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*string);
  }

  return v10;
}

void sub_1006609E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100660E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100660EE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void *sub_100660F28(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

uint64_t C2KRadioModule::handleRadioStateChanged_sync(uint64_t result, int a2)
{
  if (*(result + 1280) != a2)
  {
    v2 = result;
    ATCSMutex::lock((result + 56));
    sub_1002C579C(*(v2 + 1280));
    if (*(v2 + 1280) >= 2u)
    {
      if (*(v2 + 680))
      {
        v7 = *(v2 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Baseband moved to airplane mode; release airplane mode assertion acquired for bread pairing status change", buf, 2u);
        }

        v8 = *(v2 + 688);
        *(v2 + 680) = 0;
        *(v2 + 688) = 0;
        if (v8)
        {
          sub_100004A34(v8);
        }
      }

      v9 = *(v2 + 1280);
      if (v9 > 6 || ((0x67u >> v9) & 1) == 0)
      {
        return ATCSMutex::unlock((v2 + 56));
      }

      v3 = 0x5Fu >> v9;
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    if (*(v2 + 728))
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = "is not";
        if (v3)
        {
          v5 = "is";
        }

        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
      }

      for (i = *(v2 + 720); i != v2 + 712; i = *(i + 8))
      {
        sub_10000FFD0(i + 16, v3 & 1);
      }

      sub_100674700((v2 + 712));
    }

    if (*(v2 + 752))
    {
      if (v3)
      {
        for (j = *(v2 + 744); j != v2 + 736; j = *(j + 8))
        {
          sub_1001452E4(j + 16, 1, 0);
        }
      }

      else
      {
        sub_100674774(v13, v2 + 736);
        C2KRadioModule::getBasebandDeadCauseCode(v2, v13);
        sub_100664770(v13);
      }

      v11 = *(v2 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "is not";
        if (v3)
        {
          v12 = "is";
        }

        *buf = 136315138;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
      }

      sub_100664770((v2 + 736));
    }

    C2KRadioModule::maybeResetBootedAssertion_sync(v2);
    return ATCSMutex::unlock((v2 + 56));
  }

  return result;
}

void sub_1006611E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100664770(va);
  ATCSMutex::unlock((v2 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::getBasebandDeadCauseCode(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1056))
  {
    v4 = xpc_null_create();
    v5 = *(a1 + 1032);
    v8[5] = v5;
    v8[6] = v4;
    if (v5)
    {
      dispatch_retain(v5);
    }

    sub_100674774(v8, a2);
    v6 = *(a1 + 32);
    v8[3] = *(a1 + 24);
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8[10] = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }

  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    sub_1001452E4(i + 16, 0, 0);
  }
}

void sub_100661410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, xpc_object_t a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::checkRadioBootHealth(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000224C8(&v2, a2);
    operator new();
  }
}

void sub_100661550(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::checkRadioBootHealthDetails(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_100674A74(&v2, a2);
    operator new();
  }
}

void sub_100661638(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100661644(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1);
  return a1;
}

void C2KRadioModule::checkBasebandConfigUpdateInfo(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_100675280(&v2, a2);
    operator new();
  }
}

void sub_10066175C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::acquireBasebandBootedAssertion_sync(uint64_t this)
{
  v1 = this;
  v2 = *(this + 696);
  if (v2)
  {
    if (*(v2 + 68) == 2 && *(this + 776))
    {

      return C2KRadioModule::handleGetBasebandFirmwarePreflightInfo_sync(this);
    }
  }

  else
  {
    sub_10000501C(__p, "/cc/assertions/baseband_booted");
    ctu::rest::AssertionHandle::create();
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v1 + 704);
    *(v1 + 696) = v4;
    if (v3)
    {
      sub_100004A34(v3);
    }

    __p[0] = off_101E6F6E8;
    __p[1] = v1;
    v7 = __p;
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(__p);
  }

  return this;
}

void C2KRadioModule::getBasebandRFFEScanData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a1 + 1056))
    {
      if (capabilities::abs::supportsRFFEScanData(a1))
      {
        xpc_null_create();
        v4 = *(a1 + 1032);
        if (v4)
        {
          dispatch_retain(v4);
        }

        sub_1006756B4(v7, a2);
        v6 = *(a1 + 24);
        v5 = *(a1 + 32);
        v8 = a1;
        v9 = v6;
        v10 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v11 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101777334();
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101776FE4();
    }

    sub_1001453F8(a2, 0);
  }
}

void sub_100661B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100661BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_1006648E4(a1);
}

void C2KRadioModule::loadBasebandConfigInfoPreferences_sync(C2KRadioModule *this)
{
  if (*(this + 1127) < 0)
  {
    **(this + 138) = 0;
    *(this + 139) = 0;
  }

  else
  {
    *(this + 1104) = 0;
    *(this + 1127) = 0;
  }

  if (*(this + 1151) < 0)
  {
    **(this + 141) = 0;
    *(this + 142) = 0;
  }

  else
  {
    *(this + 1128) = 0;
    *(this + 1151) = 0;
  }

  if (*(this + 1175) < 0)
  {
    **(this + 144) = 0;
    *(this + 145) = 0;
  }

  else
  {
    *(this + 1152) = 0;
    *(this + 1175) = 0;
  }

  ServiceMap = Registry::getServiceMap(*(this + 98));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_16:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Fail to retrieve CFPreferencesInterface.", buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_20:
  v25 = 0;
  (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoTime", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100060DE8(&v25, buf);
  sub_10000A1EC(buf);
  if (v25)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v13 = (this + 1128);
    v14 = *buf;
    v28[0] = *&buf[8];
    *(v28 + 7) = *&buf[15];
    v15 = buf[23];
    if (*(this + 1151) < 0)
    {
      operator delete(*v13);
    }

    *(this + 141) = v14;
    *(this + 142) = v28[0];
    *(this + 1143) = *(v28 + 7);
    *(this + 1151) = v15;
    v24 = 0;
    (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoType", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100060DE8(&v24, buf);
    v16 = (this + 1104);
    sub_10000A1EC(buf);
    if (v24)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v17 = *buf;
      v28[0] = *&buf[8];
      *(v28 + 7) = *&buf[15];
      v18 = buf[23];
      if (*(this + 1127) < 0)
      {
        operator delete(*v16);
      }

      *(this + 138) = v17;
      *(this + 139) = v28[0];
      *(this + 1119) = *(v28 + 7);
      *(this + 1127) = v18;
    }

    v23 = 0;
    (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoDetails", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100060DE8(&v23, buf);
    v19 = (this + 1152);
    sub_10000A1EC(buf);
    if (v23)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v20 = *buf;
      v28[0] = *&buf[8];
      *(v28 + 7) = *&buf[15];
      v21 = buf[23];
      if (*(this + 1175) < 0)
      {
        operator delete(*v19);
      }

      *(this + 144) = v20;
      *(this + 145) = v28[0];
      *(this + 1167) = *(v28 + 7);
      *(this + 1175) = v21;
    }

    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 1127) < 0)
      {
        v16 = *v16;
      }

      if (*(this + 1151) < 0)
      {
        v13 = *v13;
      }

      if (*(this + 1175) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Loading the values of baseband config update info: type=%s, time=%s, details=%s", buf, 0x20u);
    }

    sub_100005978(&v23);
    sub_100005978(&v24);
  }

  sub_100005978(&v25);
LABEL_41:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006620B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_100005978(&a11);
  sub_100005978(&a12);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::saveBasebandConfigInfoPreferences_sync(C2KRadioModule *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 98));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *&v30 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v30);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_11:
      v12 = *(this + 1127);
      if (v12 < 0)
      {
        if (!*(this + 139))
        {
          goto LABEL_20;
        }
      }

      else if (!*(this + 1127))
      {
        goto LABEL_20;
      }

      if ((*(this + 1151) & 0x8000000000000000) != 0)
      {
        if (*(this + 142))
        {
          goto LABEL_17;
        }
      }

      else if (*(this + 1151))
      {
LABEL_17:
        v26 = 0;
        if ((v12 & 0x80000000) != 0)
        {
          sub_100005F2C(__dst, *(this + 138), *(this + 139));
        }

        else
        {
          *__dst = *(this + 69);
          v25 = *(this + 140);
        }

        if (SHIBYTE(v25) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v29 = v25;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v15 = v27;
          v27 = v32;
          v33 = v15;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v26 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst[0]);
        }

        v23 = 0;
        if (*(this + 1151) < 0)
        {
          sub_100005F2C(v21, *(this + 141), *(this + 142));
        }

        else
        {
          *v21 = *(this + 1128);
          v22 = *(this + 143);
        }

        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v29 = v22;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v27;
          v27 = v32;
          v33 = v16;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v23 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (*(this + 1175) < 0)
        {
          sub_100005F2C(v18, *(this + 144), *(this + 145));
        }

        else
        {
          *v18 = *(this + 72);
          v19 = *(this + 146);
        }

        if (SHIBYTE(v19) < 0)
        {
          sub_100005F2C(__p, v18[0], v18[1]);
        }

        else
        {
          *__p = *v18;
          v29 = v19;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v17 = v27;
          v27 = v32;
          v33 = v17;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v20 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[0]);
        }

        v13 = kCFPreferencesCurrentUser;
        v14 = kCFPreferencesAnyHost;
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoType", v26, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoTime", v23, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoDetails", v20, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_100005978(&v20);
        sub_100005978(&v23);
        sub_100005978(&v26);
        goto LABEL_71;
      }

LABEL_20:
      v13 = kCFPreferencesCurrentUser;
      v14 = kCFPreferencesAnyHost;
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoType", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoTime", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoDetails", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
LABEL_71:
      (*(*v10 + 48))(v10, @"com.apple.commcenter", v13, v14);
      goto LABEL_72;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101777368();
  }

LABEL_72:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006627E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, const void *a30, const void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a31);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a22);
  sub_100005978(&a30);
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::handleCarrierBundlesChange_sync(uint64_t a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    if (*(a1 + 1056))
    {
      v22 = 1;
      if ((atomic_load_explicit(qword_101FBA918, memory_order_acquire) & 1) == 0)
      {
        sub_10177739C();
      }

      v4 = 0;
      v5 = abm::kTraceBaseband;
      do
      {
        v6 = qword_101FBA918[v4 + 1];
        sub_10000501C(&buf, v5);
        sub_10000501C(v20, v6);
        sub_10000501C(__p, "");
        (*(*a1 + 240))(a1, &buf, v20, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }

        if (v24 < 0)
        {
          operator delete(buf);
        }

        ++v4;
      }

      while (v4 != 2);
      *&buf = a1;
      *(&buf + 1) = &v22;
      v7 = *(a1 + 1232);
      if (v7 != (a1 + 1240))
      {
        v8 = (a2 + 8);
        do
        {
          v9 = *v8;
          if (*v8)
          {
            v10 = *(v7 + 8);
            v11 = v8;
            do
            {
              if (*(v9 + 32) >= v10)
              {
                v11 = v9;
              }

              v9 = *(v9 + 8 * (*(v9 + 32) < v10));
            }

            while (v9);
            if (v11 != v8 && v10 >= *(v11 + 8))
            {
              if ((rest::operator==() & 1) == 0)
              {
                sub_1006762AC(&buf, *(v7 + 8), v7 + 40);
              }

              goto LABEL_26;
            }
          }

          else
          {
            v10 = *(v7 + 8);
          }

          sub_1006762AC(&buf, v10, v7 + 40);
LABEL_26:
          v12 = *(v7 + 1);
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = *(v7 + 2);
              v14 = *v13 == v7;
              v7 = v13;
            }

            while (!v14);
          }

          v7 = v13;
        }

        while (v13 != (a1 + 1240));
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = CSIBOOLAsString(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging is allowed: %s", &buf, 0xCu);
      }

      sub_10000501C(&buf, v5);
      sub_10000501C(v20, abm::kKeyTraceCarrierCellularLoggingAllowed);
      v17 = CSIBOOLAsString(v22);
      sub_10000501C(__p, v17);
      (*(*a1 + 240))(a1, &buf, v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v24 < 0)
      {
        operator delete(buf);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101776FE4();
    }
  }
}

void sub_100662C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::handleRegNetworkChanged_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v5 = ServiceMap;
  if (v6 < 0)
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
        goto LABEL_7;
      }

LABEL_11:
      object = 0;
      v15 = xpc_dictionary_create(0, 0, 0);
      v16 = v15;
      if (v15)
      {
        object = v15;
      }

      else
      {
        v16 = xpc_null_create();
        object = v16;
        if (!v16)
        {
          v17 = xpc_null_create();
          v16 = 0;
          goto LABEL_18;
        }
      }

      if (xpc_get_type(v16) == &_xpc_type_dictionary)
      {
        xpc_retain(v16);
        goto LABEL_19;
      }

      v17 = xpc_null_create();
LABEL_18:
      object = v17;
LABEL_19:
      xpc_release(v16);
      if (xpc_get_type(object) != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101776FB0();
        }

LABEL_100:
        xpc_release(object);
        goto LABEL_101;
      }

      v18 = (*(*v12 + 104))(v12, a2);
      memset(&__p, 0, sizeof(__p));
      v19 = &abm::kKeyRAT1;
      if (a2 != 1)
      {
        v19 = &abm::kKeyRAT2;
      }

      sub_10000501C(&__p, *v19);
      if (v18 == -1)
      {
LABEL_98:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_100;
      }

      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = subscriber::asString();
        v22 = *(a1 + 912);
        v23 = *(a1 + 936);
        *buf = 67109890;
        *&buf[4] = v18;
        *&buf[8] = 2080;
        *&buf[10] = v21;
        *&buf[18] = 1024;
        *&buf[20] = v22;
        LOWORD(v83) = 1024;
        *(&v83 + 2) = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I RAT %d for slot %s, fLastRat{%d, %d}", buf, 0x1Eu);
      }

      v24 = *(a1 + 24 * (a2 != 1) + 912);
      if (v24 != v18)
      {
        v77 = xpc_int64_create(v18);
        if (!v77)
        {
          v77 = xpc_null_create();
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = &object;
        *&buf[8] = p_p;
        sub_10000F688(buf, &v77, &v78);
        xpc_release(v78);
        v78 = 0;
        xpc_release(v77);
        v77 = 0;
      }

      v61 = v24 != v18;
      v26 = Registry::getServiceMap(*(a1 + 784));
      v27 = v26;
      if (v28 < 0)
      {
        v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
        v30 = 5381;
        do
        {
          v28 = v30;
          v31 = *v29++;
          v30 = (33 * v30) ^ v31;
        }

        while (v31);
      }

      std::mutex::lock(v26);
      *buf = v28;
      v32 = sub_100009510(&v27[1].__m_.__sig, buf);
      v62 = v24;
      if (v32)
      {
        v33 = v32[3];
        v34 = v32[4];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v27);
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
          v63 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v27);
      v34 = 0;
      v63 = 1;
LABEL_41:
      v35 = (a1 + 24 * (a2 != 1) + 912);
      if (v33)
      {
        if ((*(*v33 + 1224))(v33))
        {
          v64 = v34;
          v36 = (*(*v12 + 72))(v12, a2);
          v38 = v37;
          v39 = (*(*v12 + 80))(v12, a2);
          v41 = v40;
          v42 = &abm::kKeyCellId2;
          if (a2 == 1)
          {
            v42 = &abm::kKeyCellId1;
          }

          sub_100016890(&__p, *v42);
          if ((v41 & 1) != 0 && v39)
          {
            v43 = *(a1 + 40);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = subscriber::asString();
              v45 = *(a1 + 920);
              v46 = *(a1 + 944);
              *buf = 134218754;
              *&buf[4] = v39;
              *&buf[12] = 2080;
              *&buf[14] = v44;
              *&buf[22] = 2048;
              v83 = v45;
              v84 = 2048;
              v85 = v46;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I CellId %llu for slot %s, fLastCellId{%llu, %llu}", buf, 0x2Au);
            }

            if (v39 != *(a1 + 24 * (a2 != 1) + 920))
            {
              v71 = xpc_uint64_create(v39);
              if (!v71)
              {
                v71 = xpc_null_create();
              }

              v47 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v47 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = &object;
              *&buf[8] = v47;
              sub_10000F688(buf, &v71, &v72);
              xpc_release(v72);
              v72 = 0;
              xpc_release(v71);
              v71 = 0;
              v61 = 1;
            }

            *(a1 + 24 * (a2 != 1) + 920) = v39;
          }

          else if (*v35 != v18)
          {
            v50 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v50 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = &object;
            *&buf[8] = v50;
            sub_100E3F0C8(buf, &v70);
            xpc_release(v70);
            v70 = 0;
            *(a1 + 24 * (a2 != 1) + 920) = 0;
          }

          v51 = &abm::kKeyAreaCode2;
          if (a2 == 1)
          {
            v51 = &abm::kKeyAreaCode1;
          }

          sub_100016890(&__p, *v51);
          if ((v38 & 1) != 0 && v36)
          {
            v52 = *(a1 + 40);
            v34 = v64;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = subscriber::asString();
              v54 = *(a1 + 928);
              v55 = *(a1 + 952);
              *buf = 134218754;
              *&buf[4] = v36;
              *&buf[12] = 2080;
              *&buf[14] = v53;
              *&buf[22] = 2048;
              v83 = v54;
              v84 = 2048;
              v85 = v55;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I AreaCode %llu for slot %s, fLastAreaCode{%llu, %llu}", buf, 0x2Au);
            }

            if (v36 != *(a1 + 24 * (a2 != 1) + 928))
            {
              v68 = xpc_uint64_create(v36);
              if (!v68)
              {
                v68 = xpc_null_create();
              }

              v56 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v56 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = &object;
              *&buf[8] = v56;
              sub_10000F688(buf, &v68, &v69);
              xpc_release(v69);
              v69 = 0;
              xpc_release(v68);
              v68 = 0;
              *(a1 + 24 * (a2 != 1) + 928) = v36;
              goto LABEL_81;
            }
          }

          else
          {
            v34 = v64;
            if (*v35 == v18)
            {
              goto LABEL_87;
            }

            v57 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v57 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = &object;
            *&buf[8] = v57;
            sub_100E3F0C8(buf, &v67);
            xpc_release(v67);
            v67 = 0;
            *(a1 + 24 * (a2 != 1) + 928) = 0;
          }

          *v35 = v18;
LABEL_87:
          if (v61)
          {
            goto LABEL_88;
          }

          goto LABEL_96;
        }

        v49 = *(a1 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Analytics is not authorized to use location", buf, 2u);
        }

        if (*(a1 + 920) || *(a1 + 944))
        {
          *buf = &object;
          *&buf[8] = abm::kKeyCellId1;
          sub_100E3F0C8(buf, &v76);
          xpc_release(v76);
          v76 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyCellId2;
          sub_100E3F0C8(buf, &v75);
          xpc_release(v75);
          v75 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyAreaCode1;
          sub_100E3F0C8(buf, &v74);
          xpc_release(v74);
          v74 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyAreaCode2;
          sub_100E3F0C8(buf, &v73);
          xpc_release(v73);
          v73 = 0;
          *(a1 + 920) = 0u;
          *(a1 + 944) = 0u;
LABEL_81:
          *v35 = v18;
          goto LABEL_88;
        }
      }

      else
      {
        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Could not find DataServiceInterface", buf, 2u);
        }
      }

      *v35 = v18;
      if (v62 != v18)
      {
LABEL_88:
        v58 = *(a1 + 1056);
        v66 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v66 = xpc_null_create();
        }

        v59 = abm::kCommandCallServiceState;
        v60 = *(a1 + 1032);
        v65 = v60;
        if (v60)
        {
          dispatch_retain(v60);
        }

        v81[0] = off_101E6FA88;
        v81[1] = a1;
        v81[3] = v81;
        (*(*v58 + 48))(v58, v59, &v66, &v65, v81);
        sub_100049CCC(v81);
        if (v65)
        {
          dispatch_release(v65);
        }

        xpc_release(v66);
        v66 = 0;
      }

LABEL_96:
      if ((v63 & 1) == 0)
      {
        sub_100004A34(v34);
      }

      goto LABEL_98;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface!", buf, 2u);
  }

LABEL_101:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}