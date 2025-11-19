const char *sub_100230068(PersonalitySpecificImpl *a1)
{
  if (PersonalitySpecificImpl::simSlot(a1) == 1)
  {
    return "DATA.BBDriver.1";
  }

  if (PersonalitySpecificImpl::simSlot(a1) == 2)
  {
    return "DATA.BBDriver.2";
  }

  return "DATA.BBDriver.X";
}

uint64_t *sub_1002300C0(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void BBDataDriver::~BBDataDriver(BBDataDriver *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[9];
  *(this + 3) = a2[10];
  *(this + *(*this - 64)) = a2[11];
  *(this + 4) = a2[12];
  DataBBResetThrottling::~DataBBResetThrottling((this + 424));
  sub_10006DCAC(this + 384, *(this + 49));
  v5 = *(this + 45);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 42);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 40);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 38);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    *(this + 32) = v9;
    operator delete(v9);
  }

  sub_1000FEFCC(this + 23);
  v10 = *(this + 22);
  *(this + 22) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 21);
  *(this + 21) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 20);
  *(this + 20) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 19);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v15 = (this + 120);
  sub_1000212F4(&v15);
  v14 = *(this + 14);
  if (v14)
  {
    sub_100004A34(v14);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 96));
  sub_1000C0544(this + 8);
  sub_1003C20D4(this + 4, a2 + 6);
  BBDataDriverInterface::~BBDataDriverInterface((this + 24));
  PersonalitySpecificImpl::~PersonalitySpecificImpl(this);
}

void BBDataDriver::~BBDataDriver(BBDataDriver *this)
{
  TMKXPCServer.shutdown()();

  PersonalitySpecific::~PersonalitySpecific(this);
}

{
  BBDataDriver::~BBDataDriver(this);

  operator delete();
}

void non-virtual thunk toBBDataDriver::~BBDataDriver(BBDataDriver *this)
{
  BBDataDriver::~BBDataDriver((this - 24));
}

{
  BBDataDriver::~BBDataDriver((this - 32));
}

{
  BBDataDriver::~BBDataDriver((this - 24));

  operator delete();
}

{
  BBDataDriver::~BBDataDriver((this - 32));

  operator delete();
}

void BBDataDriver::initBBDriver(BBDataDriver *this)
{
  v2 = *(this + 13);
  sub_100004AA0(&buf, this + 8);
  v3 = *(&buf + 1);
  if (*(&buf + 1))
  {
    v4 = buf;
    atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
    v9 = 0;
    v10 = 0;
    v5 = std::__shared_weak_count::lock(v3);
    v6 = v5;
    if (v5)
    {
      v7 = v4 + 24;
      if (!v4)
      {
        v7 = 0;
      }

      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = v7;
      v10 = v5;
      std::__shared_weak_count::__release_weak(v3);
      sub_100004A34(v6);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  (*(*v2 + 56))(v2, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_100021348(this + 15);
  v8 = *(this + 12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "initBBDriver";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: created", &buf, 0xCu);
  }
}

void sub_10023068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002306AC(void *a1@<X0>, void *a2@<X8>)
{
  sub_100004AA0(v4, a1);
  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }
}

void BBDataDriver::bootstrapBBDriver(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, this[5]);
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  *buf = BBDataDriver::handleNetworkScan_sync;
  v4 = 0;
  sub_100240DD4();
}

void sub_10023096C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100083940(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::handleNetworkScan_sync(BBDataDriver *this)
{
  v2 = *(this + 48);
  if (v2 == (this + 392))
  {
    v3 = 0;
  }

  else
  {
    LOBYTE(v3) = 0;
    do
    {
      v3 = (*(v2 + 32) | v3 & 1) != 0;
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (this + 392));
  }

  v7 = *(this + 293);
  if (v7 != v3)
  {
    v8 = *(this + 12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "inactive";
      *&buf[4] = "handleNetworkScan_sync";
      if (v7)
      {
        v10 = "active";
      }

      else
      {
        v10 = "inactive";
      }

      *buf = 136315650;
      *&buf[14] = v10;
      *&buf[12] = 2080;
      if (v3)
      {
        v9 = "active";
      }

      *&buf[22] = 2080;
      v48 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: fNetworkScan %s->%s", buf, 0x20u);
    }

    *(this + 293) = v3;
    if (v3)
    {
      *(this + 93) = 0;
      v11 = *(this + 15);
      for (i = *(this + 16); v11 != i; v11 += 2)
      {
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v14)
        {
          v15 = (*(*v14 + 960))(v14, 0) && (*(*v14 + 96))(v14, 0, 32) ? (*(*v14 + 88))(v14, 0) ^ 1 : 0;
          if ((v15 | (*(*v14 + 760))(v14, 0, 32, "unknown", "CommCenter")))
          {
            memset(__p, 0, sizeof(__p));
            sub_10024064C(__p, 0, 0, 0);
            sub_10000501C(buf, "");
            v46 = 1;
            v45 = 0;
            v44 = 0;
            v43 = 0;
            v42 = 0;
            sub_1002403D8();
          }
        }

        if (v13)
        {
          sub_100004A34(v13);
        }
      }
    }

    else
    {
      v16 = *(this + 15);
      for (j = *(this + 16); v16 != j; v16 += 2)
      {
        v18 = *v16;
        v19 = v16[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          (*(*v18 + 440))(v18, 0, "network scan complete", 0, 0);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      *(this + 93) = 0;
    }

    v20 = *(this + 7);
    v21 = PersonalitySpecificImpl::simSlot(this);
    (*(*v20 + 352))(v20, v21, *(this + 93));
    v22 = *(this + 7);
    if (v22)
    {
      v23 = (*(*v22 + 264))(v22);
      v24 = *v23;
      v25 = *(v23 + 8);
      if (*v23 != v25)
      {
        do
        {
          (*(**v24 + 232))(*v24, "BBDataDriver::handleNetworkScan_sync");
          v24 += 2;
        }

        while (v24 != v25);
      }

      v26 = *(this + 7);
      if (v26)
      {
        v27 = (*(*v26 + 264))(v26);
        v28 = *v27;
        v29 = *(v27 + 8);
        while (v28 != v29)
        {
          v30 = *v28;
          (*(*this + 16))(buf, this);
          (*(*v30 + 240))(v30, buf);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v28 += 2;
        }

        v31 = *(this + 7);
        if (v31)
        {
          v32 = (*(*v31 + 264))(v31);
          v33 = *v32;
          v34 = v32[1];
          while (v33 != v34)
          {
            (*(**v33 + 248))();
            v33 += 16;
          }
        }
      }
    }
  }

  if ((v3 & 1) == 0)
  {
    memset(buf, 0, sizeof(buf));
    sub_10000501C(buf, "BBDataDriver::handleNetworkScan_sync");
    v35 = *(this + 7);
    v36 = PersonalitySpecificImpl::simSlot(this);
    v37 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    (*(*v35 + 216))(v35, v36, 0, v37, 2);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v38 = *(this + 7);
  v39 = PersonalitySpecificImpl::simSlot(this);
  return (*(*v38 + 224))(v38, v39, 24, v3 ^ 1u);
}

void sub_10023105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleRadioModeChange_sync(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 408);
  v5 = *(a1 + 412);
  v6 = *(a1 + 413);
  if (operator!=())
  {
    v7 = *(a1 + 96);
    v8 = (a2 >> 40) & 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      *&buf[4] = "handleRadioModeChange_sync";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      v26 = 2080;
      v27 = asString();
      v28 = 2080;
      v29 = asStringBool(a2 & 0x100000000);
      v30 = 2080;
      v31 = asStringBool(v5 & 1);
      v32 = 2080;
      v33 = asStringBool(v8);
      v34 = 2080;
      v35 = asStringBool(v6 & 1);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: radio status %s => %s, reset %s => %s, cmas camp only %s => %s", buf, 0x48u);
    }

    if (!v4 || (v5 & 1) != 0)
    {
      BBDataDriver::handleRadioOff_sync(a1, (v4 != 0) | v5 & 1);
    }

    else if (v4 == 2)
    {
      *(a1 + 283) = 1;
      v9 = *(a1 + 96);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleRadioModeChange_sync";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: fPoweredOnStatus is true", buf, 0xCu);
      }

      if (*(a1 + 379) == 1)
      {
        *(a1 + 379) = 0;
        if (!BBDataDriver::isWifiImsActive_sync(a1))
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_1002306AC((a1 + 64), buf);
          v11 = *(a1 + 96);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136315138;
            v24 = "handleRadioModeChange_sync";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Resetting WiFiCalling AttachAPN back to default", &v23, 0xCu);
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 40));
          sub_10024257C(ServiceMap, &v23);
          PersonalitySpecificImpl::simSlot(a1);
          sub_1002306AC((a1 + 64), &v21 + 1);
          v22 = 0;
          operator new();
        }

        v10 = *(a1 + 96);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleRadioModeChange_sync";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Not resetting WiFiCalling AttachAPN back to default: Wi-Fi IMS active", buf, 0xCu);
        }
      }

      (*(*a1 + 592))(a1, 0, "Radio On");
    }

    if (v8 != (v6 & 1))
    {
      v13 = *(a1 + 96);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asStringBool(a2 & 0x10000000000);
        v15 = asStringBool(v6 & 1);
        *buf = 136315650;
        *&buf[4] = "handleRadioModeChange_sync";
        *&buf[12] = 2080;
        *&buf[14] = v14;
        v26 = 2080;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: new cmas camp mode state: %s ==>> %s ", buf, 0x20u);
      }

      v16 = *(a1 + 56);
      if (v16)
      {
        v17 = (*(*v16 + 264))(v16);
        v18 = *v17;
        v19 = *(v17 + 8);
        if (*v17 != v19)
        {
          do
          {
            v20 = *v18;
            (*(*a1 + 16))(buf, a1);
            (*(*v20 + 568))(v20, "CMAS", (v6 & 1) == 0, buf);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            v18 += 2;
          }

          while (v18 != v19);
        }
      }
    }
  }
}

void sub_100231654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  sub_10002B644(&a15);
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::handleAnyCallInfo_sync(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "handleAnyCallInfo_sync";
    v13 = 2080;
    v14 = asStringBool(a2 & 1);
    v15 = 2080;
    v16 = asStringBool(a2 & 0x100);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s : %s", buf, 0x20u);
  }

  result = AnyCallInfo::operator!=();
  if (result)
  {
    v6 = *(a1 + 96);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asStringBool(*(a1 + 418));
      v8 = asStringBool(*(a1 + 416));
      v9 = asStringBool(*(a1 + 419));
      v10 = asStringBool(*(a1 + 417));
      *buf = 136316162;
      v12 = "handleAnyCallInfo_sync";
      v13 = 2080;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      v17 = 2080;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: fIsBBCallActive: %s ==>> %s; fIsEmCallActive: %s ==>> %s", buf, 0x34u);
    }

    *(a1 + 418) = *(a1 + 416);
    return (*(*a1 + 640))(a1);
  }

  return result;
}

uint64_t BBDataDriver::handleECBMChange_sync(BBDataDriver *this, int a2)
{
  v4 = *(this + 284);
  if (v4 != a2)
  {
    v5 = *(this + 12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      *v21 = "handleECBMChange_sync";
      *&v21[8] = 2080;
      *&v21[10] = asStringBool(v4);
      v22 = 2080;
      v23 = asStringBool(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v20, 0x20u);
    }

    *(this + 284) = a2;
  }

  if (a2)
  {
    sub_100231EF4(this + 20);
    v6 = *(this + 7);
    if (v6)
    {
      v7 = (*(*v6 + 264))(v6);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*v7 != v9)
      {
        do
        {
          v10 = *v8;
          (*(*this + 16))(&v20, this);
          (*(*v10 + 256))(v10, 0, &v20, 26, "CommCenter");
          if (*&v21[4])
          {
            sub_100004A34(*&v21[4]);
          }

          v8 += 2;
        }

        while (v8 != v9);
      }
    }

    v11 = *(this + 15);
    for (i = *(this + 16); v11 != i; v11 += 2)
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        (*(*v13 + 760))(v13, 0, 26, "ECBM change", "CommCenter");
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  v15 = *(this + 7);
  if (v15)
  {
    v16 = (*(*v15 + 264))(v15);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (*v16 != v18)
    {
      do
      {
        (*(**v17 + 232))(*v17, "BBDataDriver::handleECBMChange_sync");
        v17 += 2;
      }

      while (v17 != v18);
    }
  }

  return (*(*this + 592))(this, 0, "ECBM change");
}

void sub_100231BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::startBBDriver(BBDataDriver *this)
{
  pthread_mutex_lock(&ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance);
  v2 = xmmword_101FB0D20;
  if (!xmmword_101FB0D20)
  {
    sub_1000FB968();
  }

  v3 = *(&xmmword_101FB0D20 + 1);
  if (*(&xmmword_101FB0D20 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_101FB0D20 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance);
  if (sub_1006FBC70(v2))
  {
    pthread_mutex_lock(&ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance);
    v4 = xmmword_101FB0D20;
    if (!xmmword_101FB0D20)
    {
      sub_1000FB968();
    }

    v5 = *(&xmmword_101FB0D20 + 1);
    if (*(&xmmword_101FB0D20 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_101FB0D20 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance);
    *(this + 209) = sub_1006FBD98(v4) ^ 1;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    *(this + 209) = 0;
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  *(this + 209) = *(this + 208);
  v6 = *(this + 7);
  if (v6)
  {
    v7 = (*(*v6 + 264))(v6);
    v8 = *v7;
    v9 = *(v7 + 8);
    while (v8 != v9)
    {
      (*(**v8 + 24))(*v8, 0);
      v8 += 2;
    }
  }

  v10 = *(this + 12);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "startBBDriver";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: started", &v11, 0xCu);
  }
}

void sub_100231E10(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::shutDownDriver(BBDataDriver *this)
{
  ctu::RestModule::disconnect((this + 144));
  result = sub_100231EF4(this + 20);
  for (i = *(this + 24); i != (this + 184); i = i[1])
  {
    result = sub_1001039A0(i + 2);
  }

  *(this + 208) = 1;
  return result;
}

uint64_t sub_100231EF4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = a1[1];
  a1[1] = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t BBDataDriver::isCallActive_sync(BBDataDriver *this, int a2)
{
  if (a2 && (v2 = *(this + 7)) != 0)
  {
    v3 = PersonalitySpecificImpl::simSlot(this);
    v4 = *(*v2 + 496);

    return v4(v2, v3);
  }

  else
  {
    if (*(this + 418))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(this + 209);
    }

    return v6 & 1;
  }
}

uint64_t BBDataDriver::countContextsWithAPN(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v18 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v15, *a2, *(a2 + 8));
  }

  else
  {
    *v15 = *a2;
    v16 = *(a2 + 16);
  }

  v17 = a1;
  v3 = *(a1 + 7);
  if (v3)
  {
    v4 = (*(*v3 + 264))(v3);
    v5 = *v4;
    v6 = v4[1];
    v19 = &v18;
    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(&v20, v15[0], v15[1]);
    }

    else
    {
      v20 = *v15;
      v21 = v16;
    }

    v22 = v17;
    if (v5 != v6)
    {
      while (1)
      {
        v7 = v22;
        v27 = 0;
        v28 = 0;
        (*(**v5 + 496))(&v27);
        if (!v27)
        {
          goto LABEL_26;
        }

        v8 = (*(*(v27 + *(*v27 - 56)) + 24))(v27 + *(*v27 - 56));
        if (v8 != PersonalitySpecificImpl::simSlot(v7))
        {
          goto LABEL_26;
        }

        __p = 0;
        v24 = 0uLL;
        (*(*v27 + 256))(&__p);
        if (v21 >= 0)
        {
          v9 = HIBYTE(v21);
        }

        else
        {
          v9 = *(&v20 + 1);
        }

        v10 = HIBYTE(v24);
        v11 = HIBYTE(v24);
        if (v24 < 0)
        {
          v10 = v24;
        }

        if (v9 == v10)
        {
          v12 = v21 >= 0 ? &v20 : v20;
          v13 = v24 >= 0 ? &__p : __p;
          if (!memcmp(v12, v13, v9))
          {
            break;
          }
        }

        if (v11 < 0)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v28)
        {
          sub_100004A34(v28);
        }

        v5 += 16;
        if (v5 == v6)
        {
          goto LABEL_32;
        }
      }

      ++*v19;
      if ((HIBYTE(v24) & 0x80) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      operator delete(__p);
      goto LABEL_26;
    }

LABEL_32:
    __p = v19;
    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(&v24, v20, *(&v20 + 1));
    }

    else
    {
      v24 = v20;
      v25 = v21;
    }

    v26 = v22;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v18;
}

void sub_100232364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::blockedCellularTrafficHint_sync(BBDataDriver *this)
{
  v1 = *(this + 7);
  v2 = PersonalitySpecificImpl::simSlot(this);
  v3 = *(*v1 + 424);

  return v3(v1, v2);
}

uint64_t non-virtual thunk toBBDataDriver::blockedCellularTrafficHint_sync(BBDataDriver *this)
{
  v1 = *(this + 4);
  v2 = PersonalitySpecificImpl::simSlot((this - 24));
  v3 = *(*v1 + 424);

  return v3(v1, v2);
}

void BBDataDriver::sendKeepaliveClientNotification(BBDataDriver *this, int a2)
{
  if (a2)
  {
    v2 = 135;
  }

  else
  {
    v2 = 136;
  }

  v4 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(v2, &v4, &object);
  xpc_release(object);
  xpc_release(v4);
}

void sub_1002324F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void BBDataDriver::getContext(BBDataDriver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 7);
  if (!v4)
  {
LABEL_19:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v13 = 0;
  v14 = 0;
  (*(*v4 + 248))(&v13);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  lpsrc = 0;
  v12 = 0;
  (*(*this + 16))(&v9, this);
  (*(*v5 + 504))(&lpsrc, v5, 0, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (!lpsrc)
  {
    if (v12)
    {
      sub_100004A34(v12);
    }

LABEL_11:
    v8 = 1;
    goto LABEL_16;
  }

  if (v6)
  {
    v7 = v12;
    *a2 = v6;
    a2[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v8 = 0;
LABEL_16:
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v8)
  {
    goto LABEL_19;
  }
}

void sub_1002326B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::isDataBlockedByBBCall(BBDataDriver *this)
{
  if (*(this + 418) == 1)
  {
    if (BBDataDriver::suspendOnBBCall(this))
    {
      v2 = *(this + 419) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t BBDataDriver::suspendOnBBCall(Registry **this)
{
  v2 = PersonalitySpecificImpl::simSlot(this);
  if (suspendInternetOnBBCall(this + 5, v2))
  {
    return 1;
  }

  v4 = this[15];
  v5 = this[16];
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 && ((*(*v6 + 152))(v6) & 1) != 0)
      {
        break;
      }

      if (v7)
      {
        sub_100004A34(v7);
      }

      v4 = (v4 + 16);
      if (v4 == v5)
      {
        return 0;
      }
    }

    if (v7)
    {
      sub_100004A34(v7);
    }

    return 1;
  }

  return 0;
}

void sub_1002327F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::setDormancy(BBDataDriver *this, int a2)
{
  v3 = *(this + 292);
  if (v3 != a2)
  {
    v4 = a2;
    v5 = *(this + 12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "setDormancy";
      v9 = 2080;
      v10 = asStringBool(v3);
      v11 = 2080;
      v12 = asStringBool(v4);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v7, 0x20u);
    }

    *(this + 292) = v4;
  }

  return BBDataDriver::reportTransmitChannelStatus(this);
}

uint64_t BBDataDriver::reportTransmitChannelStatus(BBDataDriver *this)
{
  if (*(this + 208))
  {
    return 0;
  }

  v4 = *(this + 292);
  v5 = *(this + 13);
  v6 = (*(*this + 264))(this);
  v7 = (*(*v5 + 136))(v5, v6);
  v8 = *(this + 7);
  v9 = PersonalitySpecificImpl::simSlot(this);
  v10 = *(*v8 + 56);

  return v10(v8, v9, v7, (v4 & 1) == 0);
}

uint64_t BBDataDriver::cellularDataPossible(BBDataDriver *this)
{
  result = BBDataDriver::isDataPossible(this);
  if (result)
  {

    return BBDataDriver::isDataBearerAvailable(this);
  }

  return result;
}

void sub_1002332E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::refreshAllDataSettings(uint64_t a1, int a2)
{
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "refreshAllDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = sub_100462D40(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: (1) refreshapn : %s", buf, 0x16u);
  }

  v122 = (a1 + 40);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (!v11)
  {
    v12 = 0;
LABEL_11:
    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = PersonalitySpecificImpl::simSlot(a1);
    v15 = (*(*v12 + 56))(v12, v16);
    goto LABEL_13;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v14 = 0;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = 0;
LABEL_13:
  v119 = v14;
  v17 = (*(**(a1 + 56) + 264))(*(a1 + 56));
  v18 = (v17[1] - *v17) >> 4;
  v19 = (a1 + 120);
  v20 = (*(a1 + 128) - *(a1 + 120)) >> 4;
  if (v15 > v18)
  {
    LODWORD(v18) = v15;
  }

  if (v18 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  sub_10023C1BC(a1 + 120, v21);
  if (v21 >= 1 && v12 != 0)
  {
    v23 = 0;
    do
    {
      v24 = *(*v19 + 16 * v23);
      if (v24)
      {
        if (v23 >= (*(a1 + 128) - *v19) >> 4)
        {
          sub_1002030E0();
        }

        v25 = (*(*v24 + 336))(v24, 0);
        ConnectionMaskToType(v25);
        if (isSlice())
        {
          *buf = 0;
          *&buf[8] = 0;
          v26 = *(a1 + 120);
          if (v23 >= (*(a1 + 128) - v26) >> 4)
          {
            sub_1002030E0();
          }

          (*(**(v26 + 16 * v23) + 472))(buf);
          if (*buf)
          {
            v27 = 0;
            do
            {
              v136 = 0uLL;
              v28 = PersonalitySpecificImpl::simSlot(a1);
              (*(*v12 + 72))(&v136, v12, v28, v27);
              if (v136 && *(v136 + 152) == v25)
              {
                v29 = PersonalitySpecificImpl::simSlot(a1);
                (*(*v12 + 80))(v12, v29, v27, *buf + 48);
              }

              if (*(&v136 + 1))
              {
                sub_100004A34(*(&v136 + 1));
              }

              ++v27;
            }

            while (v21 != v27);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }
      }

      ++v23;
    }

    while (v23 != v21);
  }

  v120 = a2;
  v125 = a1 + 32;
  if (v21 < 1)
  {
    v124 = -1;
    v57 = -1;
    v56 = 1;
    goto LABEL_79;
  }

  v118 = v13;
  v30 = 0;
  v31 = 0;
  v124 = -1;
  v121 = -1;
  v32 = -1;
  v123 = -1;
  do
  {
    v33 = *(a1 + 96);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "refreshAllDataSettings";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: for %d", buf, 0x12u);
    }

    if (v12)
    {
      v34 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v12 + 72))(buf, v12, v34, v30);
      v36 = *buf;
      v35 = *&buf[8];
      if (*buf)
      {
        v37 = *(*v19 + 16 * v30);
        if (!v37)
        {
          v38 = *(a1 + 56);
          v39 = PersonalitySpecificImpl::simSlot(a1);
          (*(*v38 + 280))(buf, v38, v39, v30);
          v40 = *v19 + 16 * v30;
          v41 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          v42 = *(v40 + 8);
          *v40 = v41;
          if (v42)
          {
            sub_100004A34(v42);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v37 = *(*v19 + 16 * v30);
        }

        (*(*v37 + 856))(v37, 0, v36, 0);
        if ((*(*v125 + 280))(v125))
        {
          v43 = *(a1 + 120);
          if (v30 >= (*(a1 + 128) - v43) >> 4)
          {
            goto LABEL_206;
          }

          if (((*(**(v43 + 16 * v30) + 336))(*(v43 + 16 * v30), 0) & 0x200) != 0)
          {
            v44 = *(a1 + 96);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "refreshAllDataSettings";
              *&buf[12] = 1024;
              *&buf[14] = v30;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN index %d taken from 'native' APN", buf, 0x12u);
            }

            v121 = v30;
          }

          v45 = *(a1 + 120);
          if (v30 >= (*(a1 + 128) - v45) >> 4)
          {
            goto LABEL_206;
          }

          v46 = (*(**(v45 + 16 * v30) + 336))(*(v45 + 16 * v30), 0);
          v47 = v124;
          if (v46)
          {
            v47 = v30;
          }

          v124 = v47;
          v48 = *(a1 + 120);
          if (v30 >= (*(a1 + 128) - v48) >> 4)
          {
            goto LABEL_206;
          }

          if (((*(**(v48 + 16 * v30) + 336))(*(v48 + 16 * v30), 0) & 0x20) != 0)
          {
            v32 = v30;
          }

          v49 = *(a1 + 120);
          if (v30 >= (*(a1 + 128) - v49) >> 4)
          {
LABEL_206:
            sub_1002030E0();
          }

          v50 = (*(**(v49 + 16 * v30) + 336))(*(v49 + 16 * v30), 0);
          v51 = v123;
          if ((v50 & 0x10) != 0)
          {
            v51 = v30;
          }

          v123 = v51;
        }

        v31 = 1;
        goto LABEL_73;
      }
    }

    else
    {
      v35 = 0;
    }

    v52 = *(a1 + 96);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "refreshAllDataSettings";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s: APN info not present for %d", buf, 0x12u);
    }

    v53 = *(*v19 + 16 * v30);
    if (v53)
    {
      (*(*v53 + 760))(v53, 0, 27, "no APN for context", "CommCenter");
      v54 = (*v19 + 16 * v30);
      v55 = v54[1];
      *v54 = 0;
      v54[1] = 0;
      if (v55)
      {
        sub_100004A34(v55);
      }
    }

LABEL_73:
    if (v35)
    {
      sub_100004A34(v35);
    }

    ++v30;
  }

  while (v30 != v21);
  v56 = (v32 & v123) == -1;
  v13 = v118;
  v57 = v121;
  if ((v31 & 1) == 0)
  {
LABEL_79:
    *(a1 + 377) = 1;
  }

  memset(buf, 0, sizeof(buf));
  v136 = 0uLL;
  v137 = 0;
  v134 = 0uLL;
  v135 = 0;
  v58 = Registry::getServiceMap(*v122);
  v59 = v58;
  if (v60 < 0)
  {
    v61 = (v60 & 0x7FFFFFFFFFFFFFFFLL);
    v62 = 5381;
    do
    {
      v60 = v62;
      v63 = *v61++;
      v62 = (33 * v62) ^ v63;
    }

    while (v63);
  }

  std::mutex::lock(v58);
  v132 = v60;
  v64 = sub_100009510(&v59[1].__m_.__sig, &v132);
  if (v64)
  {
    v66 = v64[3];
    v65 = v64[4];
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v59);
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v65);
      v67 = v120;
      if (!v66)
      {
        goto LABEL_110;
      }

      goto LABEL_89;
    }

    std::mutex::unlock(v59);
    v67 = v120;
    if (v66)
    {
LABEL_89:
      v132 = 0;
      v133 = 0;
      v68 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v66 + 16))(&v132, v66, v68);
      if (v132 && (*(*v132 + 88))(v132) && (*(*v132 + 80))(v132, buf, &v136, &v134))
      {
        v69 = *(a1 + 104);
        if (buf[23] < 0)
        {
          sub_100005F2C(__dst, *buf, *&buf[8]);
        }

        else
        {
          *__dst = *buf;
          v131 = *&buf[16];
        }

        if (SHIBYTE(v137) < 0)
        {
          sub_100005F2C(v128, v136, *(&v136 + 1));
        }

        else
        {
          *v128 = v136;
          v129 = v137;
        }

        if (SHIBYTE(v135) < 0)
        {
          sub_100005F2C(__p, v134, *(&v134 + 1));
        }

        else
        {
          *__p = v134;
          v127 = v135;
        }

        (*(*v69 + 152))(v69, __dst, v128, __p);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v129) < 0)
        {
          operator delete(v128[0]);
        }

        if (SHIBYTE(v131) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      if (v133)
      {
        sub_100004A34(v133);
      }

      if (v65)
      {
LABEL_110:
        sub_100004A34(v65);
      }
    }
  }

  else
  {
    std::mutex::unlock(v59);
    v67 = v120;
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if ((*(*v125 + 280))(v125))
  {
    if (v124 == -1)
    {
      v70 = 0;
    }

    else
    {
      v70 = v124;
    }

    if (v57 == -1)
    {
      v71 = *(a1 + 96);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "refreshAllDataSettings";
        *&buf[12] = 1024;
        *&buf[14] = v70;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN index %d taken from Internet APN", buf, 0x12u);
      }

      v57 = v70;
    }

    *&v136 = 0;
    v72 = Registry::getServiceMap(*v122);
    v73 = v72;
    if (v74 < 0)
    {
      v75 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
      v76 = 5381;
      do
      {
        v74 = v76;
        v77 = *v75++;
        v76 = (33 * v76) ^ v77;
      }

      while (v77);
    }

    std::mutex::lock(v72);
    *buf = v74;
    v78 = sub_100009510(&v73[1].__m_.__sig, buf);
    if (v78)
    {
      v80 = v78[3];
      v79 = v78[4];
      if (v79)
      {
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v73);
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v79);
        v81 = 0;
        goto LABEL_133;
      }
    }

    else
    {
      v80 = 0;
    }

    std::mutex::unlock(v73);
    v79 = 0;
    v81 = 1;
LABEL_133:
    v82 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v80 + 96))(&v136, v80, v82, 1, @"AllowOTAActivation", kCFBooleanTrue, 0);
    if ((v81 & 1) == 0)
    {
      sub_100004A34(v79);
    }

    v83 = v136;
    buf[0] = 1;
    if (v136)
    {
      v84 = CFGetTypeID(v136);
      if (v84 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v83, v85);
      }
    }

    v67 = v120;
    if (buf[0])
    {
      sub_10000A1EC(&v136);
      v86 = 0;
      v87 = v57 >= 0;
      if (v12 && (v57 & 0x80000000) == 0)
      {
        v88 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v12 + 72))(buf, v12, v88, v57);
        v89 = *buf;
        v86 = *&buf[8];
        if (*buf)
        {
          v90 = *(a1 + 296);
          if (!v90)
          {
            v91 = *(a1 + 96);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "refreshAllDataSettings";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I %s: (internet) OTA APN created with index: %d (1)", buf, 0x12u);
            }

            (*(*a1 + 16))(&v136, a1);
            BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
            v92 = *(a1 + 80);
            if (v92)
            {
              dispatch_retain(v92);
            }

            sub_10023C24C();
          }

          DataAPNSettingsPDPActivatorInterface = BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
          (*(*v90 + 856))(v90, 0, v89, DataAPNSettingsPDPActivatorInterface);
          if ((*(**(a1 + 104) + 144))(*(a1 + 104)))
          {
            if (v57)
            {
              v94 = *(a1 + 312);
              if (!v94)
              {
                v95 = *(a1 + 96);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "refreshAllDataSettings";
                  *&buf[12] = 1024;
                  *&buf[14] = 0;
                  _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I %s: (internet cdma) OTA APN created with index: %d (1)", buf, 0x12u);
                }

                (*(*a1 + 16))(&v136, a1);
                BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
                v96 = *(a1 + 80);
                if (v96)
                {
                  dispatch_retain(v96);
                }

                sub_10023C24C();
              }

              v97 = BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
              (*(*v94 + 856))(v94, 0, v89, v97);
            }

            else
            {
              v102 = *(a1 + 320);
              *(a1 + 312) = 0;
              *(a1 + 320) = 0;
              if (v102)
              {
                sub_100004A34(v102);
              }
            }
          }

          v132 = 0;
LABEL_174:
          v103 = PersonalitySpecificImpl::simSlot(a1);
          sub_1002A62EC(v122, v103, &v136);
          *buf = v132;
          v132 = v136;
          *&v136 = 0;
          sub_10001021C(buf);
          sub_10001021C(&v136);
          if (v132)
          {
            v136 = 0uLL;
            PersonalitySpecificImpl::simSlot(a1);
            sub_10023C350(&v136);
          }

          goto LABEL_176;
        }

        v87 = 1;
      }
    }

    else
    {
      v98 = *(a1 + 96);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "refreshAllDataSettings";
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "#I %s: Carrier Bundle is disabling OTA activation", buf, 0xCu);
      }

      sub_10000A1EC(&v136);
      v86 = 0;
      v87 = 0;
    }

    v99 = *(a1 + 96);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "refreshAllDataSettings";
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN Info not present", buf, 0xCu);
    }

    v100 = *(a1 + 304);
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    if (v100)
    {
      sub_100004A34(v100);
    }

    if ((*(**(a1 + 104) + 144))(*(a1 + 104)) && (v101 = *(a1 + 320), *(a1 + 312) = 0, *(a1 + 320) = 0, v101))
    {
      sub_100004A34(v101);
      v132 = 0;
      if (v87)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v132 = 0;
      if (v87)
      {
        goto LABEL_174;
      }
    }

LABEL_176:
    v104 = *(a1 + 96);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "refreshAllDataSettings";
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN dictionary not present", buf, 0xCu);
    }

    v105 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    if (v105)
    {
      sub_100004A34(v105);
    }

    if (!*(a1 + 344))
    {
      v106 = *(a1 + 96);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "refreshAllDataSettings";
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN assigned Internet settings", buf, 0xCu);
      }

      *(a1 + 344) = a1 + 296;
    }

    if ((*(**(a1 + 104) + 144))(*(a1 + 104)))
    {
      if (v12)
      {
        v107 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v12 + 72))(buf, v12, v107, 0);
        v108 = *buf;
        v109 = *&buf[8];
        if (*buf != 0 && !v56)
        {
          v110 = *(a1 + 352);
          if (!v110)
          {
            (*(*a1 + 16))(&v136, a1);
            BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
            v111 = *(a1 + 80);
            if (v111)
            {
              dispatch_retain(v111);
            }

            sub_10023C40C();
          }

          v112 = BBDataDriver::getDataAPNSettingsPDPActivatorInterface(a1);
          (*(*v110 + 856))(v110, 0, v108, v112);
          goto LABEL_195;
        }
      }

      else
      {
        v109 = 0;
      }

      v113 = *(a1 + 360);
      *(a1 + 352) = 0;
      *(a1 + 360) = 0;
      if (v113)
      {
        sub_100004A34(v113);
      }

LABEL_195:
      if (v109)
      {
        sub_100004A34(v109);
      }
    }

    sub_10001021C(&v132);
    if (v86)
    {
      sub_100004A34(v86);
    }
  }

  v114 = *(a1 + 96);
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    v115 = sub_100462D40(v67);
    *buf = 136315394;
    *&buf[4] = "refreshAllDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v115;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I %s: (2) refreshapn : %s", buf, 0x16u);
  }

  BBDataDriver::refreshDataServiceConfiguration(a1, v67, 1);
  v116 = *(a1 + 96);
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = sub_100462D40(v67);
    *buf = 136315394;
    *&buf[4] = "refreshAllDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v117;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I %s: refreshapn done : %s", buf, 0x16u);
  }

  if ((v119 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100234A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t a18, dispatch_object_t a19, dispatch_object_t object, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44)
{
  if (object)
  {
    dispatch_release(object);
  }

  v48 = *(v46 - 144);
  if (v48)
  {
    sub_100004A34(v48);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(v45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::updateDataMode(uint64_t result, uint64_t a2)
{
  if (*(result + 228) != a2)
  {
    *(result + 228) = a2;
    v4 = *(result + 56);
    v5 = PersonalitySpecificImpl::simSlot(result);
    v6 = *(*v4 + 416);

    return v6(v4, v5, a2);
  }

  return result;
}

void BBDataDriver::refreshDataServiceConfiguration(uint64_t a1, unsigned int a2, BOOL a3)
{
  v6 = *(a1 + 96);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v47 = "refreshDataServiceConfiguration";
    v48 = 2080;
    v49 = sub_100462D40(a2);
    v50 = 2080;
    v51 = asStringBool(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: (1) refreshapn: reason = %s changed = %s", buf, 0x20u);
  }

  v45 = a3;
  if (*(a1 + 128) == *(a1 + 120))
  {
    v36 = *(a1 + 96);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v47 = "refreshDataServiceConfiguration";
    v33 = "#I %s: no data settings present yet, bailing";
    v34 = v36;
    v35 = 12;
    goto LABEL_42;
  }

  if (a2 <= 0x11 && ((1 << a2) & 0x30002) != 0)
  {
    v7 = *(a1 + 96);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100462D40(a2);
      *buf = 136315394;
      v47 = "refreshDataServiceConfiguration";
      v48 = 2080;
      v49 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: reset settings due to %s", buf, 0x16u);
    }

    v9 = 0;
    do
    {
      v10 = *(a1 + 56);
      v11 = PersonalitySpecificImpl::simSlot(a1);
      v43 = 0;
      v44 = 0;
      (**v10)(v10, 0, v11, v9, &v43, &v45);
      if (v44)
      {
        sub_100004A34(v44);
      }

      v12 = *(a1 + 56);
      v13 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v12 + 40))(v12, v13, 0, 0, v9);
      v9 = (v9 + 1);
    }

    while (v9 != 36);
    v45 = 1;
    *(a1 + 377) = 1;
  }

  v14 = *(a1 + 96);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_100462D40(a2);
    v16 = asStringBool(a3);
    *buf = 136315650;
    v47 = "refreshDataServiceConfiguration";
    v48 = 2080;
    v49 = v15;
    v50 = 2080;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: (2) refreshapn: reason = %s changed = %s", buf, 0x20u);
  }

  v17 = BBDataDriver::setupEmergencyConfiguration(a1);
  v45 |= v17;
  if (!BBDataDriver::isDataBearerAvailable(a1))
  {
    v37 = *(a1 + 377);
    v38 = *(a1 + 96);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v37 != 1)
    {
      if (!v39)
      {
        return;
      }

      (*(*a1 + 264))(a1);
      v40 = asString();
      *buf = 136315394;
      v47 = "refreshDataServiceConfiguration";
      v48 = 2080;
      v49 = v40;
      v33 = "#I %s: No data bearer available, not reconfiguring with %s";
      v34 = v38;
      v35 = 22;
      goto LABEL_42;
    }

    if (v39)
    {
      *buf = 136315138;
      v47 = "refreshDataServiceConfiguration";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: No data bearer available, but config was not set up yet, trying", buf, 0xCu);
    }
  }

  v18 = *(a1 + 96);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 264))(a1);
    v19 = asString();
    *buf = 136315394;
    v47 = "refreshDataServiceConfiguration";
    v48 = 2080;
    v49 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s:  reconfiguring with %s", buf, 0x16u);
  }

  v20 = (*(*a1 + 264))(a1);
  if (v20 > 2)
  {
    if ((v20 - 3) >= 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    if (v20 == 1)
    {
LABEL_20:
      v21 = BBDataDriver::setupConfiguration(a1, 0, 0);
LABEL_21:
      v45 |= v21;
      goto LABEL_22;
    }

    if (v20 == 2)
    {
      v21 = BBDataDriver::setupConfiguration(a1, 1, 0);
      goto LABEL_21;
    }
  }

  else if (*(a1 + 377) == 1)
  {
    v21 = BBDataDriver::setupConfiguration(a1, 0, 1);
    goto LABEL_21;
  }

LABEL_22:
  v22 = *(a1 + 96);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_100462D40(a2);
    v24 = asStringBool(a3);
    *buf = 136315650;
    v47 = "refreshDataServiceConfiguration";
    v48 = 2080;
    v49 = v23;
    v50 = 2080;
    v51 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: (3) refreshapn: reason = %s changed = %s", buf, 0x20u);
  }

  BBDataDriver::updateCurrentImsPrefOnAllConnections(a1);
  v25 = *(a1 + 56);
  v26 = PersonalitySpecificImpl::simSlot(a1);
  sub_10000501C(__p, "BB setup reconfigured");
  (*(*v25 + 88))(v25, v26, __p);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 == 1)
  {
    *buf = PersonalitySpecificImpl::simSlot(a1);
    sub_10023B4D8(a1 + 144, buf);
    v27 = 0;
    do
    {
      v28 = *(a1 + 56);
      v29 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v28 + 8))(v28, v29, 0, v27);
      v27 = (v27 + 1);
    }

    while (v27 != 36);
  }

  v30 = *(a1 + 96);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = sub_100462D40(a2);
    v32 = asStringBool(a3);
    *buf = 136315650;
    v47 = "refreshDataServiceConfiguration";
    v48 = 2080;
    v49 = v31;
    v50 = 2080;
    v51 = v32;
    v33 = "#I %s: refreshapn done: reason = %s changed = %s";
    v34 = v30;
    v35 = 32;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
  }
}

void sub_100235480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t BBDataDriver::handleImsTechnologyChanged_sync(unint64_t this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 96);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 136315394;
      *&v6[4] = asString();
      *&v6[12] = 2080;
      *&v6[14] = asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ImsTechnologyChanged: data mode %s, rat %s", v6, 0x16u);
    }

    BBDataDriver::updateCurrentImsPrefOnAllConnections(v1);
    *&v6[8] = 0;
    this = BBDataDriver::calculateCurrentImsPrefEx(v1);
    *v6 = this;
    v6[8] = v3;
    v4 = *(v1 + 56);
    if (v4)
    {
      v5 = PersonalitySpecificImpl::simSlot(v1);
      return (*(*v4 + 328))(v4, v5, v6);
    }
  }

  return this;
}

void sub_1002357CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::handleNRSliceConfigFlagChange_sync(BBDataDriver *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::handleNRSliceConfigFlagChange_sync(BBDataDriver *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

unint64_t BBDataDriver::handleWirelessTechnologyChanged_sync(unint64_t result, int a2)
{
  if (*(result + 240) != a2)
  {
    v3 = result;
    v4 = *(result + 96);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = asString();
      v7 = 2080;
      v8 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fRat %s->%s (change states)", &v5, 0x16u);
    }

    *(v3 + 240) = a2;
    return BBDataDriver::handleImsTechnologyChanged_sync(v3);
  }

  return result;
}

uint64_t BBDataDriver::isInHomeCountry(BBDataDriver *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = PersonalitySpecificImpl::simSlot(this);
  v3 = *(*v1 + 376);

  return v3(v1, v2);
}

uint64_t BBDataDriver::isInHomeCountryVoice(BBDataDriver *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = PersonalitySpecificImpl::simSlot(this);
  v3 = *(*v1 + 384);

  return v3(v1, v2);
}

uint64_t BBDataDriver::setRegistrationStatus(uint64_t result, unsigned int a2)
{
  if (a2 <= 6 && ((0x73u >> a2) & 1) != 0)
  {
    *(result + 288) = dword_1017E2268[a2];
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::setRegistrationStatus(uint64_t result, unsigned int a2)
{
  if (a2 <= 6 && ((0x73u >> a2) & 1) != 0)
  {
    *(result + 264) = dword_1017E2268[a2];
  }

  return result;
}

uint64_t BBDataDriver::handleRegistrationStatus_sync(uint64_t result)
{
  if ((*(result + 208) & 1) == 0)
  {
    sub_1000A27D4(&__p);
  }

  return result;
}

void sub_100235D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    *v14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleDataAvailable_sync(BBDataDriver *this)
{
  v2 = *(this + 12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22[0] = "handleDataAvailable_sync";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  if (!*(this + 72))
  {
    v6 = *(this + 12);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "handleDataAvailable_sync";
    v7 = "#I %s: Roaming unknown, bailing out";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    return;
  }

  if ((*(this + 281) & 1) == 0)
  {
    v6 = *(this + 12);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "handleDataAvailable_sync";
    v7 = "#I %s: Data not attached (raw), bailing out";
    goto LABEL_13;
  }

  if (*(this + 57) >= 1)
  {
    (*(*this + 640))(this);
  }

  (*(**(this + 13) + 128))(*(this + 13));
  v3 = *(this + 7);
  v4 = PersonalitySpecificImpl::simSlot(this);
  if (*(this + 57) < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 281);
  }

  (*(*v3 + 48))(v3, v4, v5 & 1);
  v8 = *(this + 7);
  if (v8)
  {
    v9 = (*(*v8 + 264))(v8);
    v10 = *v9;
    v11 = *(v9 + 8);
    if (*v9 != v11)
    {
      do
      {
        (*(**v10 + 232))(*v10, "BBDataDriver::handleDataAttached_sync");
        v10 += 2;
      }

      while (v10 != v11);
    }

    v12 = *(this + 7);
    if (v12)
    {
      v13 = (*(*v12 + 264))(v12);
      v14 = *v13;
      v15 = *(v13 + 8);
      while (v14 != v15)
      {
        v16 = *v14;
        (*(*this + 16))(buf, this);
        (*(*v16 + 240))(v16, buf);
        if (*(v22 + 4))
        {
          sub_100004A34(*(v22 + 4));
        }

        v14 += 2;
      }
    }
  }

  v17 = *(this + 7);
  v18 = PersonalitySpecificImpl::simSlot(this);
  sub_10000501C(__p, "Data attached");
  (*(*v17 + 72))(v17, v18, __p, 0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100236168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::checkAndSetDataOffAttachAPN(Registry **this, int a2)
{
  ServiceMap = Registry::getServiceMap(this[5]);
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
  if (!v10)
  {
    std::mutex::unlock(v5);
    return;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (!v12)
    {
      return;
    }

LABEL_10:
    sub_100004AA0(buf, this + 8);
    v13 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
    }

    v14 = this[12];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "disable";
      if (a2)
      {
        v15 = "enable";
      }

      *buf = 136315394;
      *&buf[4] = "checkAndSetDataOffAttachAPN";
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: %s DataOff Attach APN if needed", buf, 0x16u);
    }

    v16 = Registry::getServiceMap(this[5]);
    sub_10024257C(v16, v18);
    PersonalitySpecificImpl::simSlot(this);
    sub_100004AA0(buf, this + 8);
    v17 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
    }

    v18[5] = 0;
    operator new();
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  sub_100004A34(v11);
  if (v12)
  {
    goto LABEL_10;
  }
}

void sub_100236440(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  sub_10002B644(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::handleCellularDataStatusChangedInternal_sync(uint64_t this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 96);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "handleCellularDataStatusChangedInternal_sync";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v8, 0xCu);
    }

    v3 = v1[7];
    if (v3)
    {
      v4 = (*(*v3 + 264))(v3);
      v5 = *v4;
      v6 = *(v4 + 8);
      if (*v4 != v6)
      {
        do
        {
          v7 = *v5;
          v5 += 2;
          (*(*v7 + 232))(v7, "DataDriver::handleCellularDataStatusChangedInternal_sync");
        }

        while (v5 != v6);
      }
    }

    return (*(*v1 + 592))(v1, 0, "Cellular Data change");
  }

  return this;
}

uint64_t BBDataDriver::selectDnnForTd_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 104);
  sub_1001058C4(v7, a3);
  v5 = (*(*v4 + 280))(v4, a2, v7);
  sub_100007E44(v7);
  return v5;
}

void sub_100236858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

void BBDataDriver::handleCallActive_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "handleCallActive_sync";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v7, 0xCu);
  }

  if (*(a2 + 2) == 1)
  {
    if ((*(a1 + 209) & 1) == 0)
    {
      v5 = *(a1 + 96);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "handleCallActive_sync";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: fIsCSCallActive: false ==>> true", &v7, 0xCu);
      }

      *(a1 + 209) = 1;
      if ((BBDataDriver::isVoiceAndDataSupportedSimul(a1) & 1) == 0)
      {
        (*(*a1 + 592))(a1, 0, "Active call is a CS call");
      }
    }

    BBDataDriver::blockOpportunisticConnections_sync(a1, 1);
  }

  else if (*(a1 + 209))
  {
    v6 = *(a1 + 96);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "handleCallActive_sync";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: fIsCSCallActive: true ==>> false", &v7, 0xCu);
    }

    *(a1 + 209) = 0;
    if ((BBDataDriver::isVoiceAndDataSupportedSimul(a1) & 1) == 0)
    {
      (*(*a1 + 592))(a1, 0, "Active call is no longer a CS call");
    }

    BBDataDriver::unblockOpportunisticConnections_sync(a1, 1);
  }

  if (*(a2 + 1) == 1)
  {
    (*(*a1 + 920))(a1, 1);
  }
}

void BBDataDriver::blockOpportunisticConnections_sync(uint64_t a1, int a2)
{
  *(a1 + 376) |= a2;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  (*(**(a1 + 56) + 208))(v13);
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = SHIBYTE(v14);
    v6 = v13[0];
    if (a2 == 1)
    {
      v7 = "kBlockOpportunisticActiveCall";
    }

    else
    {
      v7 = "kBlockOpportunisticFDBackoff";
    }

    sub_10000501C(__p, v7);
    v8 = v13;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = *(a1 + 376);
    *buf = 136315906;
    v16 = "blockOpportunisticConnections_sync";
    v17 = 2080;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Blocking opportunistic connections for %s, source: %s (mask=0x%02x)", buf, 0x26u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*a1 + 1040))(a1, v13);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_100236CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::unblockOpportunisticConnections_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 376);
  *(a1 + 376) = v4 & ~a2;
  if ((v4 & (a2 ^ 0xFF)) != 0)
  {
    v5 = *(a1 + 96);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (a2 == 1)
    {
      v6 = "kBlockOpportunisticActiveCall";
    }

    else
    {
      v6 = "kBlockOpportunisticFDBackoff";
    }

    sub_10000501C(v17, v6);
    if (v18 >= 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v17[0];
    }

    v8 = *(a1 + 376);
    *buf = 136315650;
    v20 = "unblockOpportunisticConnections_sync";
    v21 = 2080;
    v22 = v7;
    v23 = 1024;
    LODWORD(v24) = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Not unblocking opportunistic connections for source: %s - other block is still in effect (mask=%0x02x)", buf, 0x1Cu);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    (*(**(a1 + 56) + 208))(v17);
    v9 = *(a1 + 96);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = SHIBYTE(v18);
      v11 = v17[0];
      if (a2 == 1)
      {
        v12 = "kBlockOpportunisticActiveCall";
      }

      else
      {
        v12 = "kBlockOpportunisticFDBackoff";
      }

      sub_10000501C(__p, v12);
      v13 = v17;
      if (v10 < 0)
      {
        v13 = v11;
      }

      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v20 = "unblockOpportunisticConnections_sync";
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: Unblocking opportunistic connections for %s, source: %s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*a1 + 1048))(a1, v17);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100236F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleCallInactive_sync(BBDataDriver *this)
{
  v2 = *(this + 12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "handleCallInactive_sync";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v4, 0xCu);
  }

  if (*(this + 209) == 1)
  {
    v3 = *(this + 12);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "handleCallInactive_sync";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: fIsCSCallActive: true ==>> false", &v4, 0xCu);
    }

    *(this + 209) = 0;
    if ((BBDataDriver::isVoiceAndDataSupportedSimul(this) & 1) == 0)
    {
      (*(*this + 592))(this, 0, "CS call stopped.");
    }
  }

  else
  {
    (*(*this + 920))(this, 0);
  }

  BBDataDriver::unblockOpportunisticConnections_sync(this, 1);
}

void BBDataDriver::blockOpportunisticConnectionsWrapper(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (!v10)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  object = &_dispatch_main_q;
  dispatch_retain(&_dispatch_main_q);
  v17[0] = off_101E35058;
  v17[1] = a1 + 96;
  v17[3] = v17;
  (*(*v12 + 48))(v12, __p, 1, &object, v17);
  sub_100242AD4(v17);
  if (object)
  {
    dispatch_release(object);
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_16:
    if (v13)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(__p[0]);
  if (v13)
  {
    return;
  }

LABEL_17:
  sub_100004A34(v11);
}

void sub_100237348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::unblockOpportunisticConnectionsWrapper(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (!v10)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  object = &_dispatch_main_q;
  dispatch_retain(&_dispatch_main_q);
  v17[0] = off_101E350E8;
  v17[1] = a1 + 96;
  v17[3] = v17;
  (*(*v12 + 48))(v12, __p, 0, &object, v17);
  sub_100242AD4(v17);
  if (object)
  {
    dispatch_release(object);
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_16:
    if (v13)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(__p[0]);
  if (v13)
  {
    return;
  }

LABEL_17:
  sub_100004A34(v11);
}

void sub_100237588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::is5GSaHandoverSupportedForIMS_sync(BBDataDriver *this)
{
  if (capabilities::ct::supports5G(this))
  {
    v2 = *(this + 15);
    v3 = *(this + 16);
    if (v2 != v3)
    {
      v4 = 0;
      while (1)
      {
        v6 = *v2;
        v5 = v2[1];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          if (((*(*v6 + 232))(v6, 0, 1, 0) & 0x20000) != 0)
          {
            v4 = (*(*v6 + 208))(v6);
            LODWORD(v6) = 1;
            if (!v5)
            {
              goto LABEL_11;
            }

LABEL_10:
            sub_100004A34(v5);
            goto LABEL_11;
          }

          LODWORD(v6) = 0;
        }

        if (v5)
        {
          goto LABEL_10;
        }

LABEL_11:
        v2 += 2;
        if (v2 == v3)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }
    }

    v4 = 0;
LABEL_20:
    v8 = *(this + 12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "is5GSaHandoverSupportedForIMS_sync";
      v12 = 2080;
      v13 = asStringBool(v4 & 1);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: is 5G SA Handover supported for IMS PDN? %s", &v10, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100237788(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::processFDBackoffTimeout(uint64_t a1, uint64_t a2)
{
  BBDataDriver::blockOpportunisticConnections_sync(a1, 2);
  v4 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 96);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "processFDBackoffTimeout";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: scheduling fast dormancy backoff timer", buf, 0xCu);
  }

  sub_100004AA0(buf, (a1 + 64));
  v6 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v6 + 1));
  }

  Registry::getTimerService(buf, *(a1 + 40));
  v7 = *buf;
  sub_10000501C(__p, "fast dormancy backoff timeout");
  v8 = *(a1 + 80);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100237AB8;
  aBlock[3] = &unk_101E33B28;
  aBlock[4] = a1;
  v13 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v14 = _Block_copy(aBlock);
  sub_100D23364(v7, __p, 0, 1000 * a2, &object, &v14);
  v9 = v18;
  v18 = 0;
  v10 = *(a1 + 176);
  *(a1 + 176) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v11 = v18;
    v18 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v13 + 1));
  }

  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }
}

void sub_100237A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100237AB8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 96);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "processFDBackoffTimeout_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: fast dormancy backoff timer fired", &v8, 0xCu);
        }

        v7 = *(v3 + 176);
        *(v3 + 176) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        BBDataDriver::unblockOpportunisticConnections_sync(v3, 2);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100237BDC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100237BF8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t BBDataDriver::processCongestionInd(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 312))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::processCongestionInd(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 312))();
  }

  return result;
}

void BBDataDriver::processDeactivationRejected(BBDataDriver *this)
{
  v2 = *(this + 12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "processDeactivationRejected";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: context deactivation rejected by connection", &v3, 0xCu);
  }

  ++*(this + 93);
}

void BBDataDriver::handleRadioOff_sync(BBDataDriver *this, BOOL a2)
{
  if ((*(this + 208) & 1) == 0)
  {
    v4 = *(this + 12);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "handleRadioOff_sync";
      v7 = 2080;
      v8 = asStringBool(a2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: handleRadioOff_sync: reset=%s", &v5, 0x16u);
      v4 = *(this + 12);
    }

    *(this + 283) = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "handleRadioOff_sync";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: fPoweredOnStatus is false", &v5, 0xCu);
    }
  }
}

uint64_t BBDataDriver::isWifiImsActive_sync(BBDataDriver *this)
{
  result = *(this + 7);
  if (result)
  {
    v3 = (*(*result + 264))(result);
    v4 = *v3;
    v5 = *(v3 + 8);
    while (1)
    {
      if (v4 == v5)
      {
        return 0;
      }

      if ((*(**v4 + 160))(*v4, 1))
      {
        v8 = 0;
        v9 = 0;
        (*(**v4 + 584))(&v8);
        if (v8 && (v6 = *(v8 + 52), v6 == PersonalitySpecificImpl::simSlot(this)))
        {
          v7 = (*(**v4 + 320))(*v4, 1);
        }

        else
        {
          v7 = 3;
        }

        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v7 != 3 && v7)
        {
          break;
        }
      }

      v4 += 2;
    }

    return 1;
  }

  return result;
}

void sub_100237FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *BBDataDriver::resetDataObjects_sync(BBDataDriver *this)
{
  v2 = *(this + 12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "resetDataObjects_sync";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: resetDataObjects_sync", &v14, 0xCu);
  }

  sub_100231EF4(this + 20);
  v3 = *(this + 7);
  if (v3)
  {
    v4 = (*(*v3 + 264))(v3);
    v5 = *v4;
    v6 = *(v4 + 8);
    while (v5 != v6)
    {
      (*(**v5 + 272))(*v5, 0);
      v5 += 2;
    }
  }

  v7 = *(this + 15);
  for (i = *(this + 16); v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      (*(*v9 + 768))(v9, 0, "Radio Reset");
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  result = *(this + 7);
  if (result)
  {
    result = (*(*result + 264))(result);
    v12 = *result;
    v13 = result[1];
    if (*result != v13)
    {
      do
      {
        result = (*(**v12 + 280))(*v12, 0, "Radio Reset");
        v12 += 2;
      }

      while (v12 != v13);
    }
  }

  return result;
}

void sub_100238204(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleBasebandOn_sync(BBDataDriver *this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v1 = *(this + 12);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "handleBasebandOn_sync";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: handleBasebandOn_sync", &v2, 0xCu);
    }
  }
}

uint64_t BBDataDriver::handleBasebandOff_sync(uint64_t this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 96);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "handleBasebandOff_sync";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: handleBasebandOff_sync", &v3, 0xCu);
    }

    (*(*v1 + 488))(v1, 0, 0);
    (*(*v1 + 592))(v1, 0, "Baseband Off");
    return BBDataDriver::reportTransmitChannelStatus(v1);
  }

  return this;
}

uint64_t BBDataDriver::airplaneModeChange(BBDataDriver *this, _BOOL4 a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315394;
    *&v25[4] = "airplaneModeChange";
    *&v25[12] = 2080;
    *&v25[14] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: airplane mode %s", v25, 0x16u);
  }

  if (a2)
  {
    sub_100231EF4(this + 20);
    v5 = *(this + 15);
    for (i = *(this + 16); v5 != i; v5 += 2)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        *v25 = 0;
        *&v25[8] = 0;
        (*(*v8 + 240))(v25, v8, 0);
        v9 = !*v25 || (*(*v25 + 64) & 1) == 0;
        (*(*v8 + 440))(v8, 0, "airplane mode", 0, v9);
        if (*&v25[8])
        {
          sub_100004A34(*&v25[8]);
        }
      }

      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    v10 = *(this + 7);
    if (v10)
    {
      v11 = (*(*v10 + 264))(v10);
      v12 = *v11;
      v13 = *(v11 + 8);
      if (*v11 != v13)
      {
        do
        {
          v14 = *v12;
          (*(*this + 16))(v25, this);
          (*(*v14 + 256))(v14, 0, v25, 1, "CommCenter");
          if (*&v25[8])
          {
            sub_100004A34(*&v25[8]);
          }

          v12 += 2;
        }

        while (v12 != v13);
      }
    }

    v15 = *(this + 15);
    for (j = *(this + 16); v15 != j; v15 += 2)
    {
      v17 = *v15;
      v18 = v15[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        (*(*v17 + 760))(v17, 0, 1, "Radio Disabled", "CommCenter");
      }

      if (v18)
      {
        sub_100004A34(v18);
      }
    }

    *(this + 282) = 1;
    v19 = *(this + 7);
    if (!v19 || (v20 = (*(*v19 + 264))(v19), v21 = *v20, v22 = *(v20 + 8), *v20 == v22))
    {
      v23 = "Airplane mode ON";
    }

    else
    {
      v23 = "Airplane mode ON";
      do
      {
        (*(**v21 + 232))(*v21, "BBDataDriver::Airplane mode ON");
        v21 += 2;
      }

      while (v21 != v22);
    }
  }

  else
  {
    *(this + 282) = 0;
    v23 = "Airplane off";
  }

  return (*(*this + 592))(this, 0, v23);
}

void sub_100238810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::handleServiceProvisioned_sync(BBDataDriver *this, BOOL a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(this + 280));
    v20 = 136315394;
    *v21 = v5;
    *&v21[8] = 2080;
    *&v21[10] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Service provisioned: %s ==>> %s", &v20, 0x16u);
  }

  *(this + 280) = a2;
  if (!a2)
  {
    sub_100231EF4(this + 20);
    v6 = *(this + 7);
    if (v6)
    {
      v7 = (*(*v6 + 264))(v6);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*v7 != v9)
      {
        do
        {
          v10 = *v8;
          (*(*this + 16))(&v20, this);
          (*(*v10 + 256))(v10, 0, &v20, 3, "CommCenter");
          if (*&v21[4])
          {
            sub_100004A34(*&v21[4]);
          }

          v8 += 2;
        }

        while (v8 != v9);
      }
    }

    v11 = *(this + 15);
    for (i = *(this + 16); v11 != i; v11 += 2)
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        (*(*v13 + 760))(v13, 0, 3, "Service Provisioning change", "CommCenter");
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  v15 = *(this + 7);
  if (v15)
  {
    v16 = (*(*v15 + 264))(v15);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (*v16 != v18)
    {
      do
      {
        (*(**v17 + 232))(*v17, "BBDataDriver::handleServiceProvisioned_sync");
        v17 += 2;
      }

      while (v17 != v18);
    }
  }

  return (*(*this + 592))(this, 0, "Service Provisioning change");
}

void sub_100238B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleDataAttachedRaw_sync(BBDataDriver *this)
{
  v1 = *(this + 12);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "handleDataAttachedRaw_sync";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  sub_1000A27D4(&__p);
}

void sub_100238D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    *v14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::handleDataNotAttachedRaw_sync(BBDataDriver *this)
{
  v1 = *(this + 12);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "handleDataNotAttachedRaw_sync";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  sub_1000A27D4(&__p);
}

void sub_100239060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::getSuspendMask(BBDataDriver *this)
{
  if (*(this + 57) <= 0)
  {
    v2 = dataContextSuspendMask();
  }

  else
  {
    v2 = 0;
  }

  if (BBDataDriver::suspendOnBBCall(this) && *(this + 418) == 1 && (*(this + 419) & 1) == 0)
  {
    return dataContextSuspendMask() | v2;
  }

  return v2;
}

void BBDataDriver::suspendTimerProcedure(BBDataDriver *this, int a2)
{
  v4 = BBDataDriver::getSuspendMask(this) & a2;
  v5 = *(this + 12);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *v15 = "suspendTimerProcedure";
    *&v15[8] = 1024;
    *&v15[10] = v4;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: mask %d (%d)", buf, 0x18u);
  }

  if (v4)
  {
    v6 = *(this + 7);
    if (v6)
    {
      v7 = (*(*v6 + 264))(v6);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*v7 != v9)
      {
        do
        {
          v13 = 0;
          if ((*(**v8 + 528))(*v8, 2, &v13) && (v13 & 1) == 0)
          {
            v11 = *(this + 12);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = (*(**v8 + 72))();
              *buf = 136315394;
              *v15 = "operator()";
              *&v15[8] = 1024;
              *&v15[10] = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: PDP %d is in active handover, postponing the suspend procedure", buf, 0x12u);
            }
          }

          else
          {
            v10 = *v8;
            (*(*this + 16))(buf, this);
            (*(*v10 + 288))(v10, 0, buf, v4, 1);
            if (*&v15[4])
            {
              sub_100004A34(*&v15[4]);
            }
          }

          v8 += 2;
        }

        while (v8 != v9);
      }
    }

    (*(*this + 592))(this, 0, "Data suspend (no data).");
  }
}

void sub_1002393F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::checkSuspendedNoData(Registry **this, int a2)
{
  if ((dataContextSuspendMask() & a2) != 0)
  {
    v3 = PersonalitySpecificImpl::simSlot(this);
    v4 = this[7];
    v5 = PersonalitySpecificImpl::simSlot(this);
    v6 = (*(*v4 + 440))(v4, v5);
    NoDataSuspendDelayTimeout = getNoDataSuspendDelayTimeout(this + 5, v3, v6);
    if (!this[20])
    {
      v8 = NoDataSuspendDelayTimeout;
      v9 = this[12];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "checkSuspendedNoData";
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: scheduling suspend timer %lld secs", buf, 0x16u);
      }

      sub_100004AA0(buf, this + 8);
      v11 = *buf;
      v10 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      Registry::getTimerService(buf, this[5]);
      v12 = *buf;
      sub_10000501C(__p, "suspend delay timeout");
      v13 = this[10];
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_100239770;
      aBlock[3] = &unk_101E33B58;
      aBlock[4] = this;
      aBlock[5] = v11;
      v18 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = _Block_copy(aBlock);
      sub_100D23364(v12, __p, 0, 1000000 * v8, &object, &v19);
      v14 = v23;
      v23 = 0;
      v15 = this[20];
      this[20] = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v23;
        v23 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      if (v19)
      {
        _Block_release(v19);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void sub_1002396E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100239770(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 12);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = "checkSuspendedNoData_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: suspend timer fired (no data)", &v9, 0xCu);
        }

        v7 = *(v3 + 20);
        *(v3 + 20) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = dataContextSuspendMask();
        BBDataDriver::suspendTimerProcedure(v3, v8);
      }

      sub_100004A34(v5);
    }
  }
}

void BBDataDriver::checkSuspendedBBCall(Registry **this, int a2)
{
  if ((dataContextSuspendMask() & a2) != 0)
  {
    v3 = PersonalitySpecificImpl::simSlot(this);
    BBCallSuspendDelayTimeout = getBBCallSuspendDelayTimeout(this + 5, v3);
    if (!this[21])
    {
      v5 = BBCallSuspendDelayTimeout;
      v6 = this[12];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "checkSuspendedBBCall";
        *&buf[12] = 2048;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: scheduling suspend timer %lld secs", buf, 0x16u);
      }

      sub_100004AA0(buf, this + 8);
      v8 = *buf;
      v7 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v7);
      }

      Registry::getTimerService(buf, this[5]);
      v9 = *buf;
      sub_10000501C(__p, "suspend delay timeout");
      v10 = this[10];
      object = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_100239BB8;
      aBlock[3] = &unk_101E33B88;
      aBlock[4] = this;
      aBlock[5] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = _Block_copy(aBlock);
      sub_100D23364(v9, __p, 0, 1000000 * v5 + 1000, &object, &v16);
      v11 = v20;
      v20 = 0;
      v12 = this[21];
      this[21] = v11;
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v13 = v20;
        v20 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      if (v16)
      {
        _Block_release(v16);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_100239B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100239BB8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && (*(v3 + 419) & 1) == 0)
      {
        v6 = *(v3 + 96);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = "checkSuspendedBBCall_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: suspend timer fired (BBCall)", &v9, 0xCu);
        }

        v7 = *(v3 + 168);
        *(v3 + 168) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = dataContextSuspendMask();
        BBDataDriver::suspendTimerProcedure(v3, v8);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t BBDataDriver::checkSuspended(BBDataDriver *this)
{
  SuspendMask = BBDataDriver::getSuspendMask(this);
  v3 = *(this + 12);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v17 = "checkSuspended";
    *&v17[8] = 1024;
    *&v17[10] = SuspendMask;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: mask %d", buf, 0x12u);
  }

  BBDataDriver::checkSuspendedNoData(this, SuspendMask);
  BBDataDriver::checkSuspendedBBCall(this, SuspendMask);
  if ((dataContextSuspendMask() & SuspendMask) != 0)
  {
    result = dataContextSuspendMask();
    if ((result & SuspendMask) != 0)
    {
      return result;
    }
  }

  else
  {
    v5 = *(this + 20);
    *(this + 20) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if ((dataContextSuspendMask() & SuspendMask) != 0)
    {
      goto LABEL_11;
    }
  }

  v6 = *(this + 21);
  *(this + 21) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

LABEL_11:
  v7 = *(this + 12);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v17 = "checkSuspended";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to resume Data", buf, 0xCu);
  }

  v8 = *(this + 7);
  if (v8)
  {
    v9 = (*(*v8 + 264))(v8);
    v10 = *v9;
    v11 = *(v9 + 8);
    if (*v9 != v11)
    {
      do
      {
        v15 = 0;
        if ((*(**v10 + 528))(*v10, 2, &v15) && (v15 & 1) == 0)
        {
          v13 = *(this + 12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = (*(**v10 + 72))();
            *buf = 136315394;
            *v17 = "operator()";
            *&v17[8] = 1024;
            *&v17[10] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: PDP %d is in active handover, postponing the resume procedure", buf, 0x12u);
          }
        }

        else
        {
          v12 = *v10;
          (*(*this + 16))(buf, this);
          (*(*v12 + 296))(v12, 0, buf, SuspendMask);
          if (*&v17[4])
          {
            sub_100004A34(*&v17[4]);
          }
        }

        v10 += 2;
      }

      while (v10 != v11);
    }
  }

  return (*(*this + 592))(this, 0, "Data resume");
}

void sub_10023A0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::setupEmergencyConfiguration(BBDataDriver *this)
{
  v16 = 0;
  v2 = *(this + 15);
  v3 = *(this + 16);
  if (v2 == v3)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v2;
      v4 = v2[1];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5 && (*(*v5 + 336))(v5, 0) == 0x40000)
      {
        break;
      }

      if (v4)
      {
        sub_100004A34(v4);
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    v13 = *(this + 12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "setupEmergencyConfiguration";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: Found Em data settings", buf, 0xCu);
    }

    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }
  }

  v6 = *(this + 7);
  v7 = PersonalitySpecificImpl::simSlot(this);
  v14 = v5;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (**v6)(v6, 0, v7, 18, &v14, &v16);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v9 = *(this + 7);
  v10 = PersonalitySpecificImpl::simSlot(this);
  (*(*v9 + 40))(v9, v10, v16, v8, 18);
  if (v5)
  {
    (*(*v5 + 864))(v5, 0);
  }

  v11 = v16;
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v11;
}

void sub_10023A32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::setupConfiguration(BBDataDriver *this, _BOOL4 a2, int a3)
{
  v6 = *(this + 12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(a2);
    v8 = asStringBool(*(this + 378));
    *buf = 136315650;
    *&buf[4] = "setupConfiguration";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v132 = 2080;
    v133 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: setup config: modeCDMA=%s fUseCDMATetheringSettings = %s", buf, 0x20u);
  }

  v9 = (*(**(this + 13) + 144))(*(this + 13));
  bzero(buf, 0x240uLL);
  shouldUseTetheringVerification = BBDataDriver::shouldUseTetheringVerification(this);
  if (!shouldUseTetheringVerification || (v10 = *(this + 15), v11 = *(this + 16), v10 == v11))
  {
    LOBYTE(v13) = 0;
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v10;
      v15 = v10[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v14)
      {
        v16 = (*(*v14 + 336))(v14, 0);
        v13 |= (v16 >> 4) & 1;
        v12 |= (v16 >> 5) & 1;
      }

      if (v15)
      {
        sub_100004A34(v15);
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  v112 = a3;
  v17 = *(this + 12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v121 = 136315650;
    v122 = "setupConfiguration";
    v123 = 2080;
    *v124 = asStringBool(v13 & 1);
    *&v124[8] = 2080;
    *&v124[10] = asStringBool(v12 & 1);
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: setup config: wirelessTrafficIsPresent=%s wirelessAuthIsPresent = %s", v121, 0x20u);
  }

  v110 = v12;
  v111 = v13;
  v116 = v9 & a2;
  v18 = *(this + 15);
  v114 = *(this + 16);
  if (v18 != v114)
  {
    v115 = this + 32;
    do
    {
      v19 = v18[1];
      v117 = *v18;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v117)
      {
        *(this + 377) = 0;
        v20 = (*(*v117 + 336))(v117, 0);
        if (v20)
        {
          v21 = 0;
          while (1)
          {
            if ((v20 & 1) == 0 || v21 == 9)
            {
              goto LABEL_72;
            }

            v22 = &buf[16 * v21];
            if (*v22)
            {
              break;
            }

            if (!v116)
            {
              v28 = *(this + 12);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = asString();
                *v121 = 136315394;
                v122 = "setupConfiguration";
                v123 = 2080;
                *v124 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: setup config: set non-CDMA for %s", v121, 0x16u);
              }

              if (v19)
              {
                atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v30 = v22[1];
              *v22 = v117;
              v22[1] = v19;
              if (v30)
              {
                goto LABEL_71;
              }

              goto LABEL_72;
            }

            for (i = 0; i != 4; ++i)
            {
              if (v21 == dword_1017E0F78[i])
              {
                v44 = *(this + 12);
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_72;
                }

                v45 = asString();
                *v121 = 136315394;
                v122 = "setupConfiguration";
                v123 = 2080;
                *v124 = v45;
                v25 = v44;
                v26 = "#I %s: setup config: Not setting %s for CDMA";
                goto LABEL_29;
              }
            }

            if (!(*(*v115 + 280))(v115))
            {
              goto LABEL_50;
            }

            v31 = *(this + 15);
            v32 = *(this + 16);
            if (v32 == v31)
            {
              goto LABEL_169;
            }

            if (!*v31)
            {
LABEL_50:
              if ((*(*v115 + 280))(v115))
              {
                goto LABEL_72;
              }

              v38 = *(this + 15);
              v39 = *(this + 16);
              if (v39 != v38)
              {
                if (!*v38)
                {
                  goto LABEL_72;
                }

                v40 = *(this + 12);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = asString();
                  *v121 = 136315394;
                  v122 = "setupConfiguration";
                  v123 = 2080;
                  *v124 = v41;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: Setting Non-Data preferred SIM setting for connection %s", v121, 0x16u);
                  v38 = *(this + 15);
                  v39 = *(this + 16);
                }

                if (v39 != v38)
                {
                  v43 = *v38;
                  v42 = v38[1];
                  if (v42)
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_58;
                }
              }

LABEL_169:
              sub_1002030E0();
            }

            v33 = *(this + 44);
            if (((v33 != 0) & shouldUseTetheringVerification) != 1)
            {
              if (v33)
              {
                goto LABEL_62;
              }

LABEL_76:
              v50 = *(this + 12);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = asString();
                *v121 = 136315394;
                v122 = "setupConfiguration";
                v123 = 2080;
                *v124 = v51;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: setup config: set CDMA for %s", v121, 0x16u);
                goto LABEL_78;
              }

LABEL_80:
              if (v32 != v31)
              {
                v43 = *v31;
                v42 = v31[1];
                if (v42)
                {
LABEL_57:
                  atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                }

LABEL_58:
                v30 = v22[1];
                *v22 = v43;
                goto LABEL_70;
              }

              goto LABEL_169;
            }

            if (((v21 == 4) & v111) != 0 || ((v21 == 5) & v110) != 0)
            {
              v34 = *(this + 12);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *v121 = 136315138;
                v122 = "setupConfiguration";
                v35 = v34;
                v36 = "#I %s: setup config: setting CDMA+Auth tethering data settings";
                v37 = 12;
                goto LABEL_66;
              }

              goto LABEL_67;
            }

LABEL_62:
            if (*(this + 378) != 1)
            {
              goto LABEL_76;
            }

            v46 = *(this + 12);
            if (!shouldUseTetheringVerification)
            {
              v52 = *(this + 12);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *v121 = 136315138;
                v122 = "setupConfiguration";
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s: setup config: Tethering Auth has to be set in CDMA !", v121, 0xCu);
LABEL_78:
                v31 = *(this + 15);
                v32 = *(this + 16);
              }

              goto LABEL_80;
            }

            v47 = *(this + 12);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v48 = asString();
              *v121 = 136315394;
              v122 = "setupConfiguration";
              v123 = 2080;
              *v124 = v48;
              v35 = v47;
              v36 = "#I %s: setup config: setting tethering settings for %s";
              v37 = 22;
LABEL_66:
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, v121, v37);
              v33 = *(this + 44);
            }

LABEL_67:
            v42 = *(this + 45);
            if (v42)
            {
              atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
            }

            v30 = v22[1];
            *v22 = v33;
LABEL_70:
            v22[1] = v42;
            if (v30)
            {
LABEL_71:
              sub_100004A34(v30);
            }

LABEL_72:
            if (v20 >= 2)
            {
              v20 >>= 1;
              if (v21++ < 0x23)
              {
                continue;
              }
            }

            goto LABEL_84;
          }

          v23 = *(this + 12);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_72;
          }

          v24 = asString();
          *v121 = 136315394;
          v122 = "setupConfiguration";
          v123 = 2080;
          *v124 = v24;
          v25 = v23;
          v26 = "#I %s: setup config: already set for %s";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, v121, 0x16u);
          goto LABEL_72;
        }
      }

LABEL_84:
      if (v19)
      {
        sub_100004A34(v19);
      }

      v18 += 2;
    }

    while (v18 != v114);
  }

  v53 = v112;
  if ((*(*(this + 4) + 280))(this + 32))
  {
    if (!*buf)
    {
      v54 = *(this + 15);
      if (*(this + 16) == v54)
      {
        sub_1002030E0();
      }

      v56 = *v54;
      v55 = v54[1];
      if (v55)
      {
        atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
      }

      v57 = *&buf[8];
      *buf = v56;
      *&buf[8] = v55;
      if (v57)
      {
        sub_100004A34(v57);
      }
    }

    if (v116 && (v58 = *(this + 39)) != 0)
    {
      v59 = *(this + 12);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v121 = 136315138;
        v122 = "setupConfiguration";
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN configured with CDMA", v121, 0xCu);
        v58 = *(this + 39);
      }

      v60 = *(this + 40);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = v135;
      v134 = v58;
    }

    else
    {
      v62 = *(this + 43);
      if (!v62)
      {
LABEL_109:
        v65 = *buf;
        v66 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        v67 = v137;
        v136 = v65;
        v137 = v66;
        if (v67)
        {
          sub_100004A34(v67);
          v65 = v136;
        }

        if (!v65)
        {
          v68 = *(this + 12);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *v121 = 136315138;
            v122 = "setupConfiguration";
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s: BootstrapRoamingInternetBypass does not have settings configured", v121, 0xCu);
          }
        }

        v69 = *buf;
        v70 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        v71 = v139;
        v138 = v69;
        v139 = v70;
        if (v71)
        {
          sub_100004A34(v71);
          v69 = v138;
        }

        if (!v69)
        {
          v72 = *(this + 12);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *v121 = 136315138;
            v122 = "setupConfiguration";
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s: kDataConnectionInternetProbe does not have settings configured", v121, 0xCu);
          }
        }

        goto LABEL_123;
      }

      v63 = *(this + 12);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v121 = 136315138;
        v122 = "setupConfiguration";
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN configured", v121, 0xCu);
        v62 = *(this + 43);
      }

      v64 = *v62;
      v60 = v62[1];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = v135;
      v134 = v64;
    }

    v135 = v60;
    if (v61)
    {
      sub_100004A34(v61);
    }

    goto LABEL_109;
  }

LABEL_123:
  v73 = 0;
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  memset(v127, 0, sizeof(v127));
  v74 = buf;
  v128 = 0;
  do
  {
    if (v73 == 19 && v53)
    {
      v75 = *(this + 12);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *v121 = 136315138;
        v122 = "setupConfiguration";
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s: skip bootstrap on first setup", v121, 0xCu);
      }
    }

    else if ((*(**(this + 7) + 96))(*(this + 7), v73))
    {
      v76 = *(this + 7);
      v77 = PersonalitySpecificImpl::simSlot(this);
      v78 = *v74;
      v120 = v78;
      if (*(&v78 + 1))
      {
        atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v79 = (**v76)(v76, 0, v77, v73, &v120, v127 + v73);
      *(v129 + v73) = v79;
      if (*(&v120 + 1))
      {
        sub_100004A34(*(&v120 + 1));
      }

      v80 = *(this + 12);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = asStringBool(v79);
        v82 = asStringBool(*(v127 + v73));
        v83 = asStringBool(*v74 != 0);
        *v121 = 136316162;
        v122 = "setupConfiguration";
        v123 = 1024;
        *v124 = v73;
        *&v124[4] = 2080;
        *&v124[6] = v81;
        *&v124[14] = 2080;
        *&v124[16] = v82;
        v125 = 2080;
        v126 = v83;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I %s: supportedDataConnection %d: toReactivate = %s : settingsChanged = %s : configuration present: %s", v121, 0x30u);
        v53 = v112;
      }
    }

    else
    {
      v84 = *(this + 12);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = asString();
        *v121 = 136315394;
        v122 = "setupConfiguration";
        v123 = 2080;
        *v124 = v85;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s: %s is configured but not supported at this moment", v121, 0x16u);
      }

      *(v129 + v73) = 0;
      v86 = *(this + 7);
      v87 = PersonalitySpecificImpl::simSlot(this);
      v118 = 0;
      v119 = 0;
      (**v86)(v86, 0, v87, v73, &v118, v127 + v73);
      if (v119)
      {
        sub_100004A34(v119);
      }
    }

    ++v73;
    ++v74;
  }

  while (v73 != 36);
  v88 = 0;
  v89 = buf;
  do
  {
    v90 = *(this + 12);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = asStringBool(*(v129 + v88));
      v92 = asStringBool(*(v127 + v88));
      v93 = asStringBool(*v89 != 0);
      *v121 = 136316162;
      v122 = "setupConfiguration";
      v123 = 1024;
      *v124 = v88;
      *&v124[4] = 2080;
      *&v124[6] = v91;
      *&v124[14] = 2080;
      *&v124[16] = v92;
      v125 = 2080;
      v126 = v93;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I %s: reactivate %d: toReactivate = %s : settingsChanged = %s : configuration present: %s", v121, 0x30u);
    }

    v94 = *(this + 7);
    v95 = PersonalitySpecificImpl::simSlot(this);
    (*(*v94 + 40))(v94, v95, *(v127 + v88), *(v129 + v88), v88);
    ++v88;
    v89 += 2;
  }

  while (v88 != 36);
  v96 = *(this + 15);
  for (j = *(this + 16); v96 != j; v96 += 2)
  {
    v98 = *v96;
    v99 = v96[1];
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v98)
    {
      (*(*v98 + 864))(v98, 0);
    }

    if (v99)
    {
      sub_100004A34(v99);
    }
  }

  v100 = *(this + 37);
  if (v100)
  {
    (*(*v100 + 864))(v100, 0);
  }

  v101 = *(this + 39);
  if (v101)
  {
    (*(*v101 + 864))(v101, 0);
  }

  v102 = *(this + 41);
  if (v102)
  {
    (*(*v102 + 864))(v102, 0);
  }

  v103 = *(this + 44);
  if (v103)
  {
    (*(*v103 + 864))(v103, 0);
  }

  v104 = 0;
  do
  {
    v105 = *(v127 + v104);
    if (v105)
    {
      break;
    }
  }

  while (v104++ != 35);
  for (k = 568; k != -8; k -= 16)
  {
    v108 = *&buf[k];
    if (v108)
    {
      sub_100004A34(v108);
    }
  }

  return v105;
}

void sub_10023B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (v43)
  {
    sub_100004A34(v43);
  }

  v45 = 568;
  while (1)
  {
    v46 = *(&a43 + v45);
    if (v46)
    {
      sub_100004A34(v46);
    }

    v45 -= 16;
    if (v45 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void BBDataDriver::updateCurrentImsPrefOnAllConnections(NSObject **this)
{
  v2 = BBDataDriver::calculateCurrentImsPrefEx(this);
  if (v3)
  {
    v4 = v2;
    v5 = this[12];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "updateCurrentImsPrefOnAllConnections";
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: got IMS pref matching current data mode, send IMS pref(%lu).", &v6, 0x16u);
    }

    BBDataDriver::updateCurrentImsPrefOnAllConnections(this, v4);
  }

  else
  {

    BBDataDriver::checkUnmatchedIMSPref(this);
  }
}

void sub_10023B4D8(uint64_t a1, int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/data_service_config_refreshed");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10023B57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::shouldUseTetheringVerification(Registry **this)
{
  v19 = 0;
  ServiceMap = Registry::getServiceMap(this[5]);
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
  v12 = PersonalitySpecificImpl::simSlot(this);
  (*(*v10 + 96))(&v18, v10, v12, 1, @"UseTetheringAuthenticationOnCDMA", kCFBooleanTrue, 0);
  sub_10002FE1C(&v19, &v18);
  sub_10000A1EC(&v18);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v19, v13);
  v14 = buf[0];
  v15 = this[12];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "FALSE";
    if (v14)
    {
      v16 = "TRUE";
    }

    *buf = 136315394;
    *&buf[4] = "shouldUseTetheringVerification";
    v21 = 2080;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: shouldUseTetheringVerification() result is %s", buf, 0x16u);
  }

  sub_100045C8C(&v19);
  return v14;
}

void sub_10023B7D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

unint64_t BBDataDriver::calculateCurrentImsPrefEx(BBDataDriver *this)
{
  if ((*(*this + 856))(this))
  {
    if ((*(this + 272) & 1) != 0 || !DataUtils::lteishDataMode() || (v2 = PersonalitySpecificImpl::simSlot(this), (CarrierAssignedVoLTEServiceMask = getCarrierAssignedVoLTEServiceMask(this + 5, v2)) == 0))
    {
      CarrierAssignedVoLTEServiceMask = *(this + 34);
    }

    v4 = CarrierAssignedVoLTEServiceMask & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(CarrierAssignedVoLTEServiceMask) = 0;
    v4 = 0;
  }

  return v4 | CarrierAssignedVoLTEServiceMask;
}

void BBDataDriver::handleImsPrefUpdate_sync(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    asString();
    v7 = v12 >= 0 ? &__p : __p;
    *buf = 136315650;
    *&buf[4] = "handleImsPrefUpdate_sync";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: got IMS pref from BB for %s, %llu.", buf, 0x20u);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  if ((*(a1 + 208) & 1) == 0)
  {
    if ((a1 + 248) != a2)
    {
      sub_1000B26FC((a1 + 248), *a2, a2[1], (a2[1] - *a2) >> 2);
    }

    *(a1 + 272) = a3;
    if (a3 | ((a2[1] - *a2) >> 2))
    {
      BBDataDriver::updateCurrentImsPrefOnAllConnections(a1);
    }

    else
    {
      BBDataDriver::updateCurrentImsPrefOnAllConnections(a1, 0);
    }

    *&buf[8] = 0;
    *buf = BBDataDriver::calculateCurrentImsPrefEx(a1);
    buf[8] = v8;
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v9 + 328))(v9, v10, buf);
    }
  }
}

void BBDataDriver::updateCurrentImsPrefOnAllConnections(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "updateCurrentImsPrefOnAllConnections";
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %lu", &v7, 0x16u);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = PersonalitySpecificImpl::simSlot(this);
    (*(*v5 + 320))(v5, v6, 0, a2);
  }
}

uint64_t BBDataDriver::isCurrentImsDataMode_sync(BBDataDriver *this)
{
  v2 = *(this + 31);
  v3 = *(this + 32);
  if (v2 != v3)
  {
    while (*v2 != *(this + 58))
    {
      if (++v2 == v3)
      {
        goto LABEL_7;
      }
    }
  }

  if (v2 != v3)
  {
    return 1;
  }

LABEL_7:
  result = capabilities::ct::supports5G(this);
  if (result)
  {
    result = DataUtils::lteishDataMode();
    if (result)
    {
      if (*(this + 60) == 7)
      {
        v5 = *(this + 31);
        v6 = *(this + 32);
        if (v5 != v6)
        {
          while (*v5 != 14)
          {
            if (++v5 == v6)
            {
              v5 = *(this + 32);
              return v5 != v6;
            }
          }
        }

        return v5 != v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t BBDataDriver::checkUnmatchedIMSPref(NSObject **this)
{
  BBDataDriver::calculateCurrentImsPrefEx(this);
  if (v2 & 1) != 0 || (BBDataDriver::hasActiveIMSContext(this))
  {
    return 0;
  }

  v4 = this[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "checkUnmatchedIMSPref";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: There is no IMS pref matching current data mode yet, and no activated IMS Context, send IMS pref as 0.", &v5, 0xCu);
  }

  BBDataDriver::updateCurrentImsPrefOnAllConnections(this, 0);
  return 1;
}

uint64_t BBDataDriver::hasActiveIMSContext(BBDataDriver *this)
{
  result = *(this + 7);
  if (result)
  {
    v2 = (*(*result + 264))(result);
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 == v4)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v6 = *v3;
        v5 = v3[1];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v6 + 320))(v6, 0) && ((*(*v6 + 328))(v6, 0) & 1) == 0)
        {
          break;
        }

        if (v5)
        {
          sub_100004A34(v5);
        }

        v3 += 2;
        if (v3 == v4)
        {
          return 0;
        }
      }

      if (v5)
      {
        sub_100004A34(v5);
      }

      return 1;
    }
  }

  return result;
}

void sub_10023BE34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::getContextDrivers(BBDataDriver *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    v5 = (*(*v3 + 264))(v3);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_1000AAD50(&v17, *v5, v5[1], (v5[1] - *v5) >> 4);
    v6 = v17;
    for (i = v18; v6 != i; v6 += 2)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      lpsrc = 0;
      v16 = 0;
      (*(*this + 16))(&v13, this);
      (*(*v9 + 504))(&lpsrc, v9, 0, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (lpsrc)
      {
        if (v10)
        {
          v11 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = 0uLL;
          (*(*v10 + 664))(&v12);
          if (v12)
          {
            sub_1000F2C68(a2, &v12);
          }

          if (*(&v12 + 1))
          {
            sub_100004A34(*(&v12 + 1));
          }

          if (v11)
          {
            sub_100004A34(v11);
          }
        }
      }

      if (v16)
      {
        sub_100004A34(v16);
      }

      if (v8)
      {
        sub_100004A34(v8);
      }
    }

    lpsrc = &v17;
    sub_1000212F4(&lpsrc);
  }
}

void sub_10023C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000212F4(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::getDataAPNSettingsPDPActivatorInterface(BBDataDriver *this)
{
  v3 = 0;
  v4 = 0;
  (*(**(this + 7) + 248))(&v3);
  if (v3)
  {
    v1 = (*(*v3 + 40))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_10023C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023C1BC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          sub_100004A34(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1002406C8(a1, v5);
  }
}

void sub_10023C328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10023C350(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10023C3E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023C4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::useTetheringSettings(BBDataDriver *this, char a2)
{
  result = (*(**(this + 13) + 144))(*(this + 13));
  if (result)
  {
    if ((*(*this + 264))(this) == 2)
    {
      *(this + 378) = a2;
      BBDataDriver::setupConfiguration(this, 1, 0);
      return 0;
    }

    else
    {
      v5 = *(this + 12);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "useTetheringSettings";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: no tethering settings switch needed while not on CDMA", &v6, 0xCu);
      }

      return 1;
    }
  }

  return result;
}

uint64_t BBDataDriver::useOTASettings(BBDataDriver *this, int a2)
{
  if (!a2)
  {
    v5 = *(this + 12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "useOTASettings";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: OTA APN assigned internet settings (2)", buf, 0xCu);
    }

    v3 = this + 296;
LABEL_9:
    *(this + 43) = v3;
    buf[0] = 0;
    if ((*(**(this + 13) + 144))(*(this + 13)) && (*(*this + 264))(this) == 2 && *(this + 39))
    {
      v6 = *(this + 7);
      v7 = PersonalitySpecificImpl::simSlot(this);
      v8 = *(this + 40);
      v21 = *(this + 39);
      v22 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (**v6)(v6, 0, v7, 9, &v21, buf);
      v10 = v22;
      if (!v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(this + 7);
      v12 = PersonalitySpecificImpl::simSlot(this);
      v13 = *(this + 43);
      v15 = *v13;
      v14 = v13[1];
      v19 = v15;
      v20 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (**v11)(v11, 0, v12, 9, &v19, buf);
      v10 = v20;
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    sub_100004A34(v10);
LABEL_20:
    v16 = *(this + 7);
    v17 = PersonalitySpecificImpl::simSlot(this);
    (*(*v16 + 40))(v16, v17, 1, v9, 9);
    return 1;
  }

  if ((*(*this + 264))(this) != 2 && *(this + 41))
  {
    v3 = this + 328;
    v4 = *(this + 12);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "useOTASettings";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: 'native' OTA APN used", buf, 0xCu);
    }

    goto LABEL_9;
  }

  return 0;
}

void sub_10023C934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::deactivateAllContexts(void *a1, uint64_t a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = (*(*v3 + 264))(v3);
    v6 = *v5;
    v7 = *(v5 + 8);
    if (*v5 != v7)
    {
      do
      {
        v8 = *v6;
        (*(*a1 + 16))(&v9, a1);
        (*(*v8 + 256))(v8, 0, &v9, a2, "CommCenter");
        if (v10)
        {
          sub_100004A34(v10);
        }

        v6 += 2;
      }

      while (v6 != v7);
    }
  }
}

void sub_10023CA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::allocatePduSessionId(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 104);
  if (v3)
  {
    sub_1000224C8(v5, a2);
    (*(*v3 + 112))(v3, v5, a3);
    return sub_10000FF50(v5);
  }

  return result;
}

void sub_10023CB54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void BBDataDriver::freePduSessionId(BBDataDriver *this)
{
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(*v3 + 104);

    v4();
  }

  else if (os_log_type_enabled(*(this + 12), OS_LOG_TYPE_ERROR))
  {
    sub_101766290();
  }
}

void BBDataDriver::reportHandoverWwanPduSessionId(BBDataDriver *this)
{
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(*v3 + 336);

    v4();
  }

  else if (os_log_type_enabled(*(this + 12), OS_LOG_TYPE_ERROR))
  {
    sub_101766290();
  }
}

void BBDataDriver::notifyBBofDataService(uint64_t a1)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *(*v3 + 120);

    v4();
  }

  else if (os_log_type_enabled(*(a1 + 96), OS_LOG_TYPE_ERROR))
  {
    sub_101766290();
  }
}

void BBDataDriver::pduSessionIdAllocated(BBDataDriver *this, uint64_t a2, int a3)
{
  v4 = *(this + 7);
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = (*(*v4 + 264))(v4);
  v12 = 0;
  v13 = 0;
  v11 = 0;
  sub_1000AAD50(&v11, *v7, v7[1], (v7[1] - *v7) >> 4);
  v8 = v11;
  v9 = v12;
  if (v11 == v12)
  {
    v14 = &v11;
    sub_1000212F4(&v14);
LABEL_12:
    if (os_log_type_enabled(*(this + 12), OS_LOG_TYPE_ERROR))
    {
      sub_1017662C4();
    }

    return;
  }

  v10 = 0;
  do
  {
    while ((*(**v8 + 72))() == a3)
    {
      (*(**v8 + 80))(*v8, a2);
      (*(**v8 + 88))(*v8, a2);
      v8 += 2;
      v10 = 1;
      if (v8 == v9)
      {
        v14 = &v11;
        sub_1000212F4(&v14);
        return;
      }
    }

    v8 += 2;
  }

  while (v8 != v9);
  v14 = &v11;
  sub_1000212F4(&v14);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_10023CEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000212F4(&a12);
  _Unwind_Resume(a1);
}

void BBDataDriver::handleDataContextDeactivated(BBDataDriver *this, _BOOL4 a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleDataContextDeactivated";
    *&buf[12] = 2080;
    *&buf[14] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: (1) refreshapn: isImsSupported = %s", buf, 0x16u);
  }

  if (a2)
  {
    v5 = *(this + 12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextDeactivated";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: IMS context went down.", buf, 0xCu);
    }

    BBDataDriver::checkUnmatchedIMSPref(this);
  }

  (*(**(this + 7) + 32))(*(this + 7));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10023D18C;
  v7[3] = &unk_101E33BB8;
  v7[4] = this;
  v8 = a2;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, this + 8);
  v6 = *(this + 10);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_100242FE8;
  v12 = &unk_101E351E0;
  v14 = v9;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v7;
  dispatch_async(v6, buf);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10023D180(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10023D18C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(*(a1 + 40));
    v7 = 136315394;
    v8 = "handleDataContextDeactivated_block_invoke";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: (2) refreshapn: isImsSupported = %s", &v7, 0x16u);
  }

  BBDataDriver::refreshDataServiceConfiguration(v2, 0xEu, 0);
  v5 = *(v2 + 96);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(*(a1 + 40));
    v7 = 136315394;
    v8 = "handleDataContextDeactivated_block_invoke";
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (3) refreshapn: isImsSupported = %s", &v7, 0x16u);
  }
}

void BBDataDriver::updateDataBearerInfo(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v6 = *(a1 + 96);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    asStringDataSoMask(__p, HIDWORD(a2));
    v8 = v24;
    v9 = __p[0];
    v10 = asStringBool(a3 & 1);
    *v26 = "updateDataBearerInfo";
    v11 = __p;
    *buf = 136316162;
    if (v8 < 0)
    {
      v11 = v9;
    }

    *&v26[8] = 2080;
    *&v26[10] = v7;
    v27 = 2082;
    v28 = v11;
    v29 = 1024;
    v30 = HIDWORD(a2);
    v31 = 2080;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: The data bearer data mode is: %s, soMask is: %{public}s (%u), available: %s", buf, 0x30u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*v5 + 488))(v5, a2, a3);
  BBDataDriver::refreshDataServiceConfiguration(v5, 0xDu, 0);
  (*(*v5 + 592))(v5, 0, "Data Bearer change");
  v12 = *(v5 + 56);
  v13 = PersonalitySpecificImpl::simSlot(v5);
  (*(*v12 + 224))(v12, v13, 26, 0);
  v14 = *(v5 + 56);
  if (v14)
  {
    v15 = (*(*v14 + 264))(v14);
    v16 = *v15;
    v17 = *(v15 + 8);
    while (v16 != v17)
    {
      v18 = *v16;
      (*(*v5 + 16))(buf, v5);
      (*(*v18 + 240))(v18, buf);
      if (*&v26[4])
      {
        sub_100004A34(*&v26[4]);
      }

      v16 += 2;
    }
  }

  v19 = *(v5 + 120);
  for (i = *(v5 + 128); v19 != i; v19 += 2)
  {
    v22 = *v19;
    v21 = v19[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v22 && (*(*v22 + 176))(v22))
    {
      v5 = v5 & 0xFFFFFFFF00000000 | a3;
      (*(*v22 + 184))(v22, a2, v5);
    }

    if (v21)
    {
      sub_100004A34(v21);
    }
  }
}

void sub_10023D670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::getKeepaliveOffloadFrames(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = (*(*v3 + 264))(v3);
    v7 = *v5;
    v6 = *(v5 + 8);
    if (*v5 != v6)
    {
      do
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = 3 - *a2;
        if (ApplePDPHelperInterface::getInstance(v5))
        {
          (*(*v9 + 72))(v9);
          KeepaliveOffloadFrames = ApplePDPHelperInterface::getKeepaliveOffloadFrames();
          v11 = *(a1 + 96);
          v5 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (v5)
          {
            v12 = (*(*v9 + 72))(v9);
            *buf = 136315906;
            v20 = "getKeepaliveOffloadFrames";
            v21 = 1024;
            v22 = v12;
            v23 = 1024;
            v24 = KeepaliveOffloadFrames;
            v25 = 1024;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: <keepalive_offload>2: pdp=%d: status=%d: frames=%d", buf, 0x1Eu);
          }

          if (KeepaliveOffloadFrames)
          {
            v13 = *a2 + v18;
            v14 = v13 >= 3 ? 3 : *a2 + v18;
            *a2 = v14;
            if (v13 > 2)
            {
              v15 = 1;
              if (!v8)
              {
                goto LABEL_19;
              }

LABEL_18:
              sub_100004A34(v8);
              goto LABEL_19;
            }
          }
        }

        else
        {
          v16 = *(a1 + 96);
          v5 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
          if (v5)
          {
            sub_1017662F8(v27, &v28, v16);
          }
        }

        v15 = 0;
        if (v8)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 2;
        if (v7 == v6)
        {
          v17 = 1;
        }

        else
        {
          v17 = v15;
        }
      }

      while ((v17 & 1) == 0);
    }
  }
}

void BBDataDriver::setIfconfigCongestedLink(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "setIfconfigCongestedLink";
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: setIfconfigCongestedLink: %d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(**(this + 7) + 248))(buf);
  if (*buf)
  {
    v5 = 0;
    v6 = 0;
    (*(**buf + 64))(&v5);
    if (v5)
    {
      (*(*v5 + 272))(v5, a2);
    }

    else if (os_log_type_enabled(*(this + 12), OS_LOG_TYPE_ERROR))
    {
      sub_101766348();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10023DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::setTcpLinkHeuristicsFlags(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 136315394;
    *&v15[4] = "setTcpLinkHeuristicsFlags";
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: setTcpLinkHeuristicsFlags: %hu", v15, 0x12u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 5));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v15);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_13:
      (*(*v13 + 64))(v13, a2);
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (os_log_type_enabled(*(this + 12), OS_LOG_TYPE_ERROR))
  {
    sub_10176637C();
  }

LABEL_14:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10023DCD4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::updateUlHealthEmergencyBottleneckState(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "updateUlHealthEmergencyBottleneckState";
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: updateUlHealthEmergencyBottleneckState: %d", &v6, 0x12u);
  }

  return (*(**(this + 7) + 488))(*(this + 7), a2);
}

uint64_t BBDataDriver::isShutdownBegin_sync(BBDataDriver *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = (*(*v2 + 528))(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "isShutdownBegin_sync";
    v8 = 2080;
    v9 = asStringBool(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: isShutdownBegin_sync: %s", &v6, 0x16u);
  }

  return v3;
}

uint64_t BBDataDriver::supportsPDNLocalRelease_sync(Registry **this)
{
  v19 = 0;
  ServiceMap = Registry::getServiceMap(this[5]);
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
  v12 = PersonalitySpecificImpl::simSlot(this);
  (*(*v10 + 96))(&v18, v10, v12, 1, @"SupportsPDNLocalRelease", kCFBooleanFalse, 0);
  sub_10002FE1C(&v19, &v18);
  sub_10000A1EC(&v18);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v19, v13);
  v14 = buf[0];
  v15 = this[12];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "FALSE";
    if (v14)
    {
      v16 = "TRUE";
    }

    *buf = 136315394;
    *&buf[4] = "supportsPDNLocalRelease_sync";
    v21 = 2080;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: supportsPDNLocalRelease_sync() result is %s", buf, 0x16u);
  }

  sub_100045C8C(&v19);
  return v14;
}

void sub_10023E110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::dumpState(BBDataDriver *this)
{
  v2 = *(this + 12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = sub_100230068(this);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------------------- %s --------------------------", &buf, 0xCu);
    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    PersonalitySpecificImpl::simSlot(this);
    v3 = subscriber::asString();
    v4 = asString();
    v5 = asString();
    v6 = asString();
    v7 = asString();
    v8 = asStringBool(*(this + 413));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *v70 = v5;
    *&v70[8] = 2080;
    *&v70[10] = v6;
    *&v70[18] = 2080;
    *&v70[20] = v7;
    v71 = 2080;
    v72 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: simSlot = %s fDataMode = %s, fRat = %s, fCellularDataTechnology = %s, fRoamingResult=%s, fCmasCampOnlyMode = %s", &buf, 0x3Eu);
    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    asStringDataSoMask(__p, *(this + 55));
    if (v68 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = *__p;
    }

    v11 = *(this + 55);
    v12 = asStringBool(*(this + 224));
    v13 = asStringBool(*(this + 282));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
    *v70 = v11;
    *&v70[4] = 2080;
    *&v70[6] = v12;
    *&v70[14] = 2080;
    *&v70[16] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataBearerInfo = %s/%{public}s (%u)/%s, fAirplaneMode = %s", &buf, 0x30u);
    if (v68 < 0)
    {
      operator delete(*__p);
    }

    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asStringBool(*(this + 283));
    v15 = asStringBool(*(this + 284));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v14;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fPoweredOnStatus = %s, fInECBM = %s", &buf, 0x16u);
    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(this + 292));
    v17 = *(this + 92);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v16;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDormancy = %s fActiveContextsCnt = %u", &buf, 0x12u);
    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(*(this + 20) != 0);
    v19 = asStringBool(*(this + 21) != 0);
    v20 = asStringBool(*(this + 280));
    v21 = asStringBool(*(this + 281));
    v22 = asStringBool(*(this + 378));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    *(buf.__r_.__value_.__r.__words + 4) = v18;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *v70 = v20;
    *&v70[8] = 2080;
    *&v70[10] = v21;
    *&v70[18] = 2080;
    *&v70[20] = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fSuspendDelayTimerNoData = %s, fSuspendDelayTimerBBCall = %s, fDataProvisionedStatus = %s, fDataAttachStatusRaw = %s, fUseCDMATetheringSettings = %s", &buf, 0x34u);
    v2 = *(this + 12);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = asStringBool(*(this + 208));
    v24 = asStringBool(*(this + 377));
    v25 = asStringBool(*(this + 209));
    v26 = asStringBool(*(this + 418));
    v27 = asStringBool(*(this + 419));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    *(buf.__r_.__value_.__r.__words + 4) = v23;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v24;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *v70 = v25;
    *&v70[8] = 2080;
    *&v70[10] = v26;
    *&v70[18] = 2080;
    *&v70[20] = v27;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fShutDown = %s, fFirstSetup = %s, fIsCSCallActive = %s, fIsBBCallActive = %s, fIsEmCallActive = %s", &buf, 0x34u);
  }

  Timeout = DataBBResetThrottling::getTimeout((this + 424));
  Reset = DataBBResetThrottling::timeSinceLastReset((this + 424));
  v30 = *(this + 12);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(this + 110);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109632;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = Timeout;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = Reset;
    HIWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    LODWORD(buf.__r_.__value_.__r.__words[2]) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I DATA:: bbResetSecondsTimeout = %u, timeSinceLastReset = %u, fBBResetTimerFactor = %u", &buf, 0x14u);
    v30 = *(this + 12);
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tfCurrentImsDataModes(", &buf, 2u);
  }

  v32 = *(this + 31);
  for (i = *(this + 32); v32 != i; v32 += 4)
  {
    v34 = *(this + 12);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = asString();
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t%s", &buf, 0xCu);
    }
  }

  v36 = *(this + 12);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t)", &buf, 2u);
    v36 = *(this + 12);
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------- BB DataContexts --------------", &buf, 2u);
  }

  v37 = *(this + 7);
  if (v37)
  {
    v38 = (*(*v37 + 264))(v37);
    v39 = *v38;
    v40 = *(v38 + 8);
    if (*v38 != v40)
    {
      do
      {
        v41 = *v39;
        v42 = v39[1];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v41 + 184))(v41, 0);
        if (v42)
        {
          sub_100004A34(v42);
        }

        v39 += 2;
      }

      while (v39 != v40);
    }
  }

  v43 = *(this + 12);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------- BB DataSettings --------------", &buf, 2u);
  }

  for (j = *(this + 15); j != *(this + 16); j += 2)
  {
    v45 = *j;
    v46 = j[1];
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v45)
    {
      (*(*v45 + 696))(v45);
    }

    else
    {
      v47 = *(this + 12);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I DATA:: ---------------- **Null DataSetting** -------------------", &buf, 2u);
      }
    }

    if (v46)
    {
      sub_100004A34(v46);
    }
  }

  v48 = *(this + 37);
  v49 = *(this + 12);
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (v48)
  {
    if (v50)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA:: -fDataAPNSettingsOTAActivationInternet:", &buf, 2u);
      v48 = *(this + 37);
    }

    (*(*v48 + 696))(v48);
  }

  else if (v50)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataAPNSettingsOTAActivationInternet: NULL", &buf, 2u);
  }

  v51 = *(this + 39);
  v52 = *(this + 12);
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
  if (v51)
  {
    if (v53)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I DATA:: -fDataAPNSettingsOTAActivationInternetCDMA:", &buf, 2u);
      v51 = *(this + 39);
    }

    (*(*v51 + 696))(v51);
  }

  else if (v53)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataAPNSettingsOTAActivationInternetCDMA: NULL", &buf, 2u);
  }

  v54 = *(this + 41);
  v55 = *(this + 12);
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
  if (v54)
  {
    if (v56)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I DATA:: -fDataAPNSettingsOTAActivationOTA:", &buf, 2u);
      v54 = *(this + 41);
    }

    (*(*v54 + 696))(v54);
  }

  else if (v56)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataAPNSettingsOTAActivationOTA: NULL", &buf, 2u);
  }

  if (*(this + 43))
  {
    memset(&buf, 0, sizeof(buf));
    sub_10000501C(&buf, "Nothing");
    v57 = **(this + 43);
    if (v57 == *(this + 37))
    {
      v58 = "fDataAPNSettingsOTAActivationInternet";
      v59 = 37;
    }

    else if (v57 == *(this + 39))
    {
      v58 = "fDataAPNSettingsOTAActivationInternetCDMA";
      v59 = 41;
    }

    else
    {
      if (v57 != *(this + 41))
      {
LABEL_79:
        v61 = *(this + 12);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *__p = 136315138;
          *&__p[4] = p_buf;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataAPNSettingsOTAActivationCurrent is pointing to %s", __p, 0xCu);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_85;
      }

      v58 = "fDataAPNSettingsOTAActivationOTA";
      v59 = 32;
    }

    sub_1000167D4(&buf, v58, v59);
    goto LABEL_79;
  }

  v60 = *(this + 12);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataAPNSettingsOTAActivationCurrent is NULL", &buf, 2u);
  }

LABEL_85:
  v63 = *(this + 44);
  v64 = *(this + 12);
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
  if (v63)
  {
    if (v65)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I DATA:: -fDataSettingsCDMATethering:", &buf, 2u);
      v63 = *(this + 44);
    }

    (*(*v63 + 696))(v63);
  }

  else if (v65)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDataSettingsCDMATethering: NULL", &buf, 2u);
  }

  return (*(**(this + 13) + 160))(*(this + 13));
}

void sub_10023ECF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::qosAddFlow(BBDataDriver *this, uint64_t a2)
{
  Instance = ApplePDPHelperInterface::getInstance(this);

  return ApplePDPHelperInterface::addFlow(Instance, 8, a2);
}

uint64_t non-virtual thunk toBBDataDriver::qosAddFlow(BBDataDriver *this, uint64_t a2)
{
  Instance = ApplePDPHelperInterface::getInstance(this);

  return ApplePDPHelperInterface::addFlow(Instance, 8, a2);
}

uint64_t BBDataDriver::qosRemoveFlow(BBDataDriver *this)
{
  Instance = ApplePDPHelperInterface::getInstance(this);

  return ApplePDPHelperInterface::removeFlow(Instance, 8);
}

uint64_t non-virtual thunk toBBDataDriver::qosRemoveFlow(BBDataDriver *this)
{
  Instance = ApplePDPHelperInterface::getInstance(this);

  return ApplePDPHelperInterface::removeFlow(Instance, 8);
}

const void **BBDataDriver::processDataTransmitSpeed(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "processDataTransmitSpeed";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: processDataTransmitSpeed", buf, 0xCu);
  }

  if (a2 > 2)
  {
    v4 = &kCTRadioTransmitSpeedUnknown;
  }

  else
  {
    v4 = *(&off_101E35240 + a2);
  }

  v5 = *v4;
  *buf = 0;
  *buf = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(*buf, kCTRadioTransmitSpeed, v5);
  ctu::cf_to_xpc(&object, *buf, v6);
  v7 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
  }

  xpc_release(object);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = xpc_null_create();
  sub_10002A37C(87, &object, &v9);
  xpc_release(v9);
  xpc_release(object);
  xpc_release(v7);
  return sub_1000296E0(buf);
}

void sub_10023EFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t BBDataDriver::getInterfaceAppMapperService(BBDataDriver *this)
{
  v1 = *(this + 7);
  v2 = PersonalitySpecificImpl::simSlot(this);
  v3 = *(*v1 + 128);

  return v3(v1, v2);
}

uint64_t non-virtual thunk toBBDataDriver::getInterfaceAppMapperService(BBDataDriver *this)
{
  v1 = *(this + 4);
  v2 = PersonalitySpecificImpl::simSlot((this - 24));
  v3 = *(*v1 + 128);

  return v3(v1, v2);
}

_BYTE *BBDataDriver::getDeviceNAI@<X0>(BBDataDriver *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 13);
  if (v2)
  {
    return (*(*v2 + 72))();
  }

  else
  {
    return sub_10000501C(a2, "");
  }
}

uint64_t BBDataDriver::pushVoipAppInfo(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

uint64_t BBDataDriver::releaseQos(BBDataDriver *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t virtual thunk toBBDataDriver::releaseQos(BBDataDriver *this)
{
  result = *(this + *(*this - 128) + 104);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

void sub_10023F2CC()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/rf_band_type_changed");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10023F360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void BBDataDriver::eventPacketRecalculateConnectionAvailability(BBDataDriver *this, char a2, char *a3)
{
  v5 = PersonalitySpecificImpl::simSlot(this);
  sub_10000501C(v6, a3);
  v8 = v5;
  v9 = a2;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(&__p, v6[0], v6[1]);
  }

  else
  {
    __p = *v6;
    v11 = v7;
  }

  sub_10008B0C8();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_10023F4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::eventNotifyClientsOfCSIEvent2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10075C390(&v5, a2, a3, a4);
  v4 = sub_100974768(&unk_101FCB970);
  sub_1009747AC(v4, &v5);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_10023F534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBDataDriver::processAttachApnChanged(PersonalitySpecificImpl *a1, _DWORD *a2)
{
  *a2 = PersonalitySpecificImpl::simSlot(a1);
  v3 = *(a1 + 12);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I processAttachApnChanged", v4, 2u);
  }

  sub_10023F5D8();
}

void sub_10023F5D8()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/data_attach_apn_params");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10023F66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::updatePreferredDataSIM_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    sub_1000224C8(v8, a3);
    (*(*v4 + 216))(v4, a2, v8, a4);
    return sub_10000FF50(v8);
  }

  else
  {

    return sub_10000FFD0(a3, 1);
  }
}

void sub_10023F7AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::updateCurrentDataSIM_sync(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::updateCurrentDataSIM_sync(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t BBDataDriver::setVoLTEAudioCodec_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    sub_100014110(v6, a3);
    (*(*v3 + 208))(v3, a2, v6);
    return sub_100014380(v6);
  }

  else
  {

    return sub_100022FB0(a3, 0x600000001);
  }
}

void sub_10023F914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100014380(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::setCriticalActivity_sync(BBDataDriver *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::setCriticalActivity_sync(BBDataDriver *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t BBDataDriver::setDataBearerInfo(uint64_t result, uint64_t a2, char a3)
{
  *(result + 216) = a2;
  *(result + 224) = a3;
  return result;
}

uint64_t non-virtual thunk toBBDataDriver::setDataBearerInfo(uint64_t result, uint64_t a2, char a3)
{
  *(result + 192) = a2;
  *(result + 200) = a3;
  return result;
}

void BBDataDriver::handleBasebandRefreshComplete(BBDataDriver *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = (*(*v2 + 264))(v2);
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_1000AAD50(&v16, *v3, v3[1], (v3[1] - *v3) >> 4);
    v4 = v16;
    for (i = v17; v4 != i; v4 += 2)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      lpsrc = 0;
      v15 = 0;
      (*(*this + 16))(&v12, this);
      (*(*v7 + 504))(&lpsrc, v7, 0, &v12);
      if (v13)
      {
        sub_100004A34(v13);
      }

      if (lpsrc)
      {
        if (v8)
        {
          v9 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = 0;
          v11 = 0;
          (*(*v8 + 664))(&v10);
          if (v10)
          {
            (*(*v10 + 376))(v10);
          }

          if (v11)
          {
            sub_100004A34(v11);
          }

          if (v9)
          {
            sub_100004A34(v9);
          }
        }
      }

      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v6)
      {
        sub_100004A34(v6);
      }
    }

    lpsrc = &v16;
    sub_1000212F4(&lpsrc);
  }
}

void sub_10023FC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void **a14, std::__shared_weak_count *a15, char a16)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  a14 = &a16;
  sub_1000212F4(&a14);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::handleUiModifier_sync(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    asStringUiMask(__p, a2);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I soMask: %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 7);
  v7 = PersonalitySpecificImpl::simSlot(this);
  return (*(*v6 + 448))(v6, v7, a2);
}

void BBDataDriver::updateVoLTEDataCallType(BBDataDriver *this, uint64_t a2)
{
  v4 = *(this + 12);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Searching through each PDP to send VoLTE data call type", &v10, 2u);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = (*(*v5 + 264))(v5);
    v7 = *v6;
    v8 = *(v6 + 8);
    while (v7 != v8)
    {
      if ((*(**v7 + 320))(*v7, 0))
      {
        v9 = *v7;
        (*(*this + 16))(&v10, this);
        (*(*v9 + 616))(v9, a2, &v10);
        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      v7 += 2;
    }
  }
}

void sub_10023FF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBDataDriver::handleBandwidthInfo(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v3 = *(a1 + 7);
  v4 = PersonalitySpecificImpl::simSlot(a1);
  v5 = *(*v3 + 456);

  return v5(v3, v4, a2);
}

uint64_t BBDataDriver::notifyCellularDataSwitchingAllowed_sync(BBDataDriver *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::notifyCellularDataSwitchingAllowed_sync(BBDataDriver *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t BBDataDriver::updateIdsTrafficStatus_sync(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 104);
  if (v4)
  {
    sub_1000224C8(v7, a4);
    (*(*v4 + 304))(v4, a2, a3, v7);
    return sub_10000FF50(v7);
  }

  return result;
}

void sub_1002400BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::updateAvsTrafficStatus_sync(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 104);
  if (v4)
  {
    sub_1000224C8(v7, a4);
    (*(*v4 + 312))(v4, a2, a3, v7);
    return sub_10000FF50(v7);
  }

  return result;
}

void sub_100240198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::updateVoipCallTrafficStatus_sync(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 104);
  if (v3)
  {
    sub_1000224C8(v5, a3);
    (*(*v3 + 320))(v3, a2, v5);
    return sub_10000FF50(v5);
  }

  return result;
}

void sub_100240264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t BBDataDriver::updatePreferredRat(BBDataDriver *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 328))();
  }

  return result;
}

uint64_t non-virtual thunk toBBDataDriver::updatePreferredRat(BBDataDriver *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 328))();
  }

  return result;
}

uint64_t sub_100240330@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 112);
  *a2 = *(result + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100240354(uint64_t a1)
{
  v1 = (*(a1 + 440) + 1);
  *(a1 + 440) = v1;
  return v1;
}

uint64_t sub_100240380@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 88);
  *a2 = *(result + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1002403B4(uint64_t a1)
{
  v1 = (*(a1 + 416) + 1);
  *(a1 + 416) = v1;
  return v1;
}

void *sub_10024048C(void *a1, unsigned int *a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int *a7, unsigned __int8 *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E34B20;
  sub_100240584((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_100240508(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E34B20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100240584(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int *a7, unsigned __int8 *a8)
{
  v14 = *a2;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_10024064C(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  sub_1009CA504(a1, v14, &__p, a4, *a5, *a6, *a7, *a8);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_100240630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024064C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1002406AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002406C8(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      sub_1000210A8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    sub_1000210F0(v16);
  }
}

void sub_100240854(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[6], v1, sub_100240928);
  __cxa_rethrow();
}

void sub_100240894(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002408E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100240928(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002409D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100240AA8);
  __cxa_rethrow();
}

void sub_100240A14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100240A68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100240AA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100240B54(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[6], v1, sub_100240C28);
  __cxa_rethrow();
}

void sub_100240B94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100240BE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100240C28(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100240CD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[10], v1, sub_100240DA8);
  __cxa_rethrow();
}

void sub_100240D14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100240D68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100240DA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100240EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100240F70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E34CF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100240FB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100240FFC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100241164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100241214(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E34D70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10024124C(uint64_t a1)
{
  v2 = **(a1 + 8);
  read_rest_value();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, v2);
}

uint64_t sub_1002412D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100241408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1002414B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E34DF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1002414F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100241544(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a1;
  v10 = 0uLL;
  v11 = 0;
  sub_1001A9998(&v10, a2);
  v9 = *v3;
  v7 = v10;
  v8 = v11;
  v10 = 0uLL;
  v11 = 0;
  sub_100241664(v3, &v7);
  v12 = &v7;
  sub_1000B2DB4(&v12);
  if (AnyCallInfo::operator!=())
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = (*(a1 + 8) + (v5 >> 1));
    if (v5)
    {
      v4 = *(*v6 + v4);
    }

    v4(v6, v9);
  }

  v12 = &v10;
  sub_1000B2DB4(&v12);
}

void sub_100241630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1000B2DB4((v14 - 40));
  *(v14 - 40) = &a13;
  sub_1000B2DB4((v14 - 40));
  _Unwind_Resume(a1);
}

void sub_100241664(_BYTE *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    LOBYTE(v5) = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = *a2;
    do
    {
      v14 = v3;
      v15 = "kCallStatus";
      sub_100006354(&v14, &object);
      v8 = xpc::dyn_cast_or_default(&object, 6, v7);
      xpc_release(object);
      if (!v8)
      {
        v14 = v3;
        v15 = "kCallType";
        sub_100006354(&v14, &object);
        xpc::dyn_cast_or_default(&object, 1, v9);
        xpc_release(object);
        v14 = v3;
        v15 = "kCallSubType";
        sub_100006354(&v14, &object);
        v11 = xpc::dyn_cast_or_default(&object, 1, v10);
        xpc_release(object);
        v5 |= isEmergencyCallEmergencySetup();
        if (((1 << v11) & 0x112) != 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = v4;
        }

        if (v11 <= 8u)
        {
          v4 = v12;
        }
      }

      v6 += 8;
      v3 += 8;
    }

    while (v6 != v2);
  }

  *a1 = v4 & 1;
  a1[1] = v5 & 1;
}

void sub_100241814(int a1, int a2, dispatch_object_t object, __int128 *a4)
{
  objecta = object;
  v5 = *a4;
  v6 = *(a4 + 2);
  dispatch_retain(object);
  sub_100241ABC(v7, &objecta);
}

void sub_1002418E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100241A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100241ABC(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100241B14(a1, a2);
}

void sub_100241AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100084C48((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void sub_100241B14(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241B80(a1 + 24, &object);
}

void sub_100241B80(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241C18(v5, &object);
}

void sub_100241BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void, uint64_t))
{
  sub_100084C48(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void sub_100241C18(void *a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241C8C(a1, &object);
}

void sub_100241C8C(void *a1, uint64_t a2)
{
  *a1 = 0;
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241D00(a1, &object);
}

void sub_100241D00(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241DB8(boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>>>(ctu::DispatchSlot<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>>)::stored_vtable, &object);
}

uint64_t boost::detail::function::functor_manager<ctu::DispatchSlot<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>>>::manage(uint64_t result, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100241E34(result, a2, a3);
  }

  *(a2 + 8) = 0;
  return result;
}

void sub_100241DB8(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_1002421A4(a1, &object);
}

uint64_t sub_100241E34(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      dispatch_release(**a2);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      *(a2 + 8) = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x80000001017E1A98 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001017E1A98 & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100241F54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v1 = boost::function1<void,BOOL>::assign_to<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>>(std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>)::stored_vtable + 1;
  operator new();
}

uint64_t boost::detail::function::functor_manager<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>>::manage(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        *(a2 + 8) = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == (0x80000001017E1AF9 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001017E1AF9 & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 16);
    *a2 = v5;
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<std::__bind<void (BBDataDriver::*)(BOOL),BBDataDriver*,std::placeholders::__ph<1> const&>,void,BOOL>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void *sub_10024224C(void *a1)
{
  *a1 = off_101E34F48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100242298(void *a1)
{
  *a1 = off_101E34F48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100242304(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1002423B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100242458(void *a1)
{
  *a1 = off_101E34F98;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1002424A4(void *a1)
{
  *a1 = off_101E34F98;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_10024257C(std::mutex *this@<X0>, void *a2@<X8>)
{
  if ((v4 & 0x8000000000000000) != 0)
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void *sub_100242640(void *a1)
{
  *a1 = off_101E34FD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10024268C(void *a1)
{
  *a1 = off_101E34FD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10024276C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E34FD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002427AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002427BC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002427FC(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = *(v3 + 96);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315138;
          v8 = "operator()";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: new type is pushed", &v7, 0xCu);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1002428D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10024298C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35058;
  a2[1] = v2;
  return result;
}

void sub_1002429B8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "operator()";
      v9 = 1024;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: set_opportunistic_completion_t: success = %d, count = %lu", &v7, 0x1Cu);
    }
  }
}

uint64_t sub_100242A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100242AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100242BC4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E350E8;
  a2[1] = v2;
  return result;
}

void sub_100242BF0(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "operator()";
      v9 = 1024;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: clear_opportunistic_completion_t: success = %d, count = %lu", &v7, 0x1Cu);
    }
  }
}

uint64_t sub_100242CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100242D0C(void *a1)
{
  *a1 = off_101E35168;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100242D58(void *a1)
{
  *a1 = off_101E35168;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100242E38(uint64_t result, uint64_t a2)
{
  *a2 = off_101E35168;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100242E78(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100242E88(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100242EC8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = *(v3 + 96);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315138;
          v8 = "operator()";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: WiFiCalling AttachAPN has been reset", &v7, 0xCu);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100242F9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100242FF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100243014(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_100243024(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100243090(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002430F8()
{
  {
    return __cxa_atexit(sub_1000F9824, &ctu::Singleton<callList::model::CallState,callList::model::CallState,ctu::PthreadMutexGuardPolicy<callList::model::CallState>>::sInstance, &_mh_execute_header);
  }

  return result;
}

uint64_t PSManager::PSManager(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E35268;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "ps.mgr");
  sub_1000F0604(v4, "PhoneServices", QOS_CLASS_USER_INITIATED, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E35268;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(a1 + 48) = dispatch_queue_create_with_target_V2("PhoneServices", v5, *(a1 + 24));
  *a1 = off_101E35268;
  *(a1 + 56) = *a2;
  v6 = *(a2 + 8);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "PhoneServices");
  v7 = *(a1 + 24);
  v12 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 304) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 360) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = a1 + 408;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = a1 + 464;
  *(a1 + 480) = 0;
  *(a1 + 592) = 0;
  sub_10000501C(&v9, "PhoneServices");
  PersonalitiesTracker::PersonalitiesTracker();
  if (v10 < 0)
  {
    operator delete(v9.var0);
  }

  *(a1 + 768) = 850045863;
  *(a1 + 824) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 832) = a1 + 840;
  *(a1 + 952) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 850045863;
  *(a1 + 1032) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  Registry::getNotificationSenderFactory(&v9, *a2);
  (*(*v9.var0 + 152))(v9.var0);
  if (v9.var1.fRef)
  {
    sub_100004A34(v9.var1.fRef);
  }

  std::mutex::lock((a1 + 768));
  return a1;
}

void sub_1002433C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, dispatch_object_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v28 = *(v22 + 1048);
  if (v28)
  {
    sub_100004A34(v28);
  }

  sub_10001021C((v22 + 1024));
  std::mutex::~mutex((v22 + 960));
  v29 = *(v22 + 952);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v22 + 936);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (*(v22 + 927) < 0)
  {
    operator delete(*(v22 + 904));
  }

  if (*(v22 + 903) < 0)
  {
    operator delete(*(v22 + 880));
  }

  if (*(v22 + 879) < 0)
  {
    operator delete(*v26);
  }

  sub_1002472DC(v22 + 832, *v24);
  std::mutex::~mutex((v22 + 768));
  PersonalitiesTracker::~PersonalitiesTracker((v25 + 472));
  sub_100220B4C(v25 + 352);
  sub_100243558(v25 + 296);
  sub_100243598(v25 + 240);
  sub_1002435D8(v25 + 184);
  sub_1002435D8(v25 + 128);
  sub_1002435D8(v25 + 72);
  sub_100243618(v25 + 16);
  sub_100243658(v25 - 40);
  v31 = *(v22 + 80);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v22 + 64);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v22 + 48);
  if (v33)
  {
    dispatch_release(v33);
  }

  PhoneServices::~PhoneServices(v22);
  ctu::OsLogLogger::~OsLogLogger((v22 + 40));
  sub_1000C0544(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_100243558(uint64_t a1)
{
  sub_100246E7C(a1 + 32, *(a1 + 40));

  return sub_100246F2C(a1);
}

uint64_t sub_100243598(uint64_t a1)
{
  sub_100246FAC(a1 + 32, *(a1 + 40));

  return sub_10024705C(a1);
}

uint64_t sub_1002435D8(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_1002470DC(a1);
}

uint64_t sub_100243618(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_10024715C(a1);
}

uint64_t sub_100243658(uint64_t a1)
{
  sub_1001A904C(a1 + 32, *(a1 + 40));

  return sub_1002471DC(a1);
}

void PSManager::~PSManager(PSManager *this)
{
  *this = off_101E35268;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this);
  v3 = *(this + 131);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001021C(this + 128);
  std::mutex::~mutex(this + 15);
  v4 = *(this + 119);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 117);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (*(this + 927) < 0)
  {
    operator delete(*(this + 113));
  }

  if (*(this + 903) < 0)
  {
    operator delete(*(this + 110));
  }

  if (*(this + 879) < 0)
  {
    operator delete(*(this + 107));
  }

  sub_1002472DC(this + 832, *(this + 105));
  std::mutex::~mutex(this + 12);
  PersonalitiesTracker::~PersonalitiesTracker((this + 600));
  sub_100220B4C(this + 480);
  sub_100246E7C(this + 456, *(this + 58));
  sub_100246F2C(this + 424);
  sub_100246FAC(this + 400, *(this + 51));
  sub_10024705C(this + 368);
  sub_100009970(this + 344, *(this + 44));
  sub_1002470DC(this + 312);
  sub_100009970(this + 288, *(this + 37));
  sub_1002470DC(this + 256);
  sub_100009970(this + 232, *(this + 30));
  sub_1002470DC(this + 200);
  sub_100009970(this + 176, *(this + 23));
  sub_10024715C(this + 144);
  sub_1001A904C(this + 120, *(this + 16));
  sub_1002471DC(this + 88);
  v6 = *(this + 10);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    dispatch_release(v8);
  }

  PhoneServices::~PhoneServices(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  PSManager::~PSManager(this);

  operator delete();
}

void PSManager::initialize(NSObject **this)
{
  v2 = capabilities::ct::supportsThumperSourcing(this);
  if (v2)
  {
    sub_1003068C0();
  }

  if (capabilities::ct::supportsThumperService(v2))
  {
    sub_10099923C();
  }

  v3 = this[8];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3[1], 1uLL, memory_order_relaxed);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = this[131];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5[1], 1uLL, memory_order_relaxed);
  }

  v6 = this[119];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6[1], 1uLL, memory_order_relaxed);
  }

  sub_1003107E0();
}

void *sub_1002439D4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_100004A34(v5);
  }

  return a1;
}

void PSManager::evaluateWiFiLocationStatusOnce(PSManager *this)
{
  v29 = 0;
  v2 = sub_10005D028();
  sub_10000501C(&__p, "VoWiFiLocationEvaluated");
  sub_10005D0D8(v2, &__p.__r_.__value_.__l.__data_, &v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
    v4 = "#I %s%sWiFiLocation already evaluated before. Nothing to do";
    goto LABEL_44;
  }

  v5 = sub_10005D028();
  sub_10000501C(&__p, "VoWiFiLocationEvaluated");
  LOBYTE(v27) = 1;
  sub_1006197F4(v5, &__p, &v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sEvaluating WiFiLocation once", &__p, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 7));
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  __p.__r_.__value_.__r.__words[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_16:
    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNo PersonalityShop. Consider this a fresh install", &__p, 0x16u);
    }

    goto LABEL_40;
  }

LABEL_20:
  v27 = 0;
  v28 = 0;
  (*(*v15 + 8))(&v27, v15, 1);
  v18 = v27;
  v19 = *(this + 5);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v23 = *(v18 + 24);
      v22 = v18 + 24;
      v21 = v23;
      v24 = *(v22 + 23);
      v25 = (v24 & 0x80u) != 0;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v22 + 8);
      }

      if (!v25)
      {
        v21 = v22;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
      *(__p.__r_.__value_.__r.__words + 4) = "";
      if (!v24)
      {
        v21 = "<invalid>";
      }

      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Personality ID: '%s'", &__p, 0x20u);
    }

    v26 = isReal();
    if (v28)
    {
      sub_100004A34(v28);
    }

    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    if (v26)
    {
      v3 = *(this + 5);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
      v4 = "#I %s%sDevice being migrated. Keep current WiFiLocation status";
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v20)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sNo PersonalityInfo. Consider this a fresh install", &__p, 0x16u);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

LABEL_40:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_42:
  *(this + 1032) = 1;
  v3 = *(this + 5);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
  *(__p.__r_.__value_.__r.__words + 4) = "";
  WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
  *(&__p.__r_.__value_.__r.__words[1] + 6) = "";
  v4 = "#I %s%sFresh install. Need to disable WiFiLocation status";
LABEL_44:
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &__p, 0x16u);
}