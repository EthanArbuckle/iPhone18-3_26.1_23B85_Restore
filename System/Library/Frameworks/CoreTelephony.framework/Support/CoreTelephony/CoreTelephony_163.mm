void sub_1013DF69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013DF73C(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1013E524C;
  v5[3] = &unk_101F369D0;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A47C;
    v10 = &unk_101F36A10;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100059520;
    v10 = &unk_101F369F0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1013DF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1013DF9BC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1013DFAA0(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t TransportMasterController::isDynamicCellularDataSwitchingSupported_sync(TransportMasterController *this)
{
  if ((TransportMasterController::getRawDynamicCellularDataSwitchState_sync(this) || *(this + 408) == 1) && *(this + 287) - *(this + 286) >= 0x11uLL && (*(this + 284) & 1) == 0)
  {
    v2 = *(this + 2401) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1013DFBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 2336);
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Recommending slot: %s", buf, 0xCu);
    }

    *(a1 + 2336) = a2;
    if (v4 != a2)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 2328);
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Removed all Internet assertions. Number of assertions: %lu", buf, 0xCu);
      }

      sub_100009970(a1 + 2312, *(a1 + 2320));
      *(a1 + 2312) = a1 + 2320;
      *(a1 + 2320) = 0u;
      sub_1013DEC98(a1);
      if (*(a1 + 2336) != *(a1 + 280))
      {
        sub_1006CB7F4(buf);
      }

      v8 = *(a1 + 2376);
      *(a1 + 2368) = 0u;
      if (v8)
      {
        sub_100004A34(v8);
      }
    }

    write_rest_value();
    sub_10000501C(buf, "/cc/events/recommended_data_sim");
    v9 = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(0);
    if (v11 < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v9);
  }
}

void sub_1013DFE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, void *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013DFEF4(uint64_t a1, uint64_t a2)
{
  result = sub_100007A6C(a1 + 2312, a2);
  if (a1 + 2320 == result)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Added Internet assertion: %s", &v7, 0xCu);
    }

    return sub_100005BA0(a1 + 2312, a2);
  }

  return result;
}

void sub_1013DFFD8(uint64_t a1, uint64_t a2)
{
  v4 = DataUtils::otherSimSlot();
  TransportMasterController::getManager_sync(a1, v4, &v13);
  v5 = v13;
  if (v13 && (*(**(v13 + 96) + 24))(*(v13 + 96)))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*a2 + 24);
      if (*(*a2 + 47) < 0)
      {
        v7 = *v7;
      }

      v8 = *(v5 + 56);
      v9 = *(v5 + 64);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (v8 + 24);
      if (*(v8 + 47) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Suspend search for: %s by marking critical activity on: %s", buf, 0x16u);
      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    *buf = 1;
    *&buf[16] = 0u;
    v17 = 0;
    *&buf[8] = a1 + 120;
    sub_1013E501C(&buf[16], (a1 + 152));
    v11 = *(v5 + 56);
    v12 = *(v5 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v11 + 24;
    *(sub_1009068B4(&buf[16], (v11 + 24)) + 56) = 1;
    if (v12)
    {
      sub_100004A34(v12);
    }

    sub_1013E5184(buf);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_1013E01A8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1013E5184(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_1013E01E8(uint64_t a1, uint64_t a2)
{
  v4 = DataUtils::otherSimSlot();
  TransportMasterController::getManager_sync(a1, v4, &v13);
  v5 = v13;
  if (v13)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*a2 + 24);
      if (*(*a2 + 47) < 0)
      {
        v7 = *v7;
      }

      v8 = *(v5 + 56);
      v9 = *(v5 + 64);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (v8 + 24);
      if (*(v8 + 47) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Resume search for: %s by unmarking critical activity on: %s", buf, 0x16u);
      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    *buf = 1;
    *&buf[16] = 0u;
    v17 = 0;
    *&buf[8] = a1 + 120;
    sub_1013E501C(&buf[16], (a1 + 152));
    v11 = *(v5 + 56);
    v12 = *(v5 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v11 + 24;
    *(sub_1009068B4(&buf[16], (v11 + 24)) + 56) = 0;
    if (v12)
    {
      sub_100004A34(v12);
    }

    sub_1013E5184(buf);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_1013E0388(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1013E5184(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_1013E03C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A6C(a1 + 2312, a2);
  if (a1 + 2320 != v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Removing Internet assertion: %s", &v8, 0xCu);
    }

    sub_100075658((a1 + 2312), v5);
    sub_1013DE124(a1);
  }
}

void *sub_1013E04B0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 6;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1013E05B0(uint64_t result)
{
  if (*(result + 408) == 1)
  {
    v1 = *(result + 2264);
    v2 = (result + 2272);
    if (v1 != (result + 2272))
    {
      do
      {
        result = (*(**(v1[7] + 96) + 112))(*(v1[7] + 96));
        v3 = v1[1];
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v1[2];
            v5 = *v4 == v1;
            v1 = v4;
          }

          while (!v5);
        }

        v1 = v4;
      }

      while (v4 != v2);
    }
  }

  return result;
}

void sub_1013E0650(uint64_t a1)
{
  v2 = *(a1 + 2360);
  *(a1 + 2352) = 0u;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Removed timer to allow SIMs to come in service", v4, 2u);
  }
}

uint64_t sub_1013E06C8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    result = (*(**(*v3 + 80) + 16))(*(*v3 + 80));
    if (result == 1)
    {
      break;
    }

    if (!(*(**(*v3 + 96) + 24))(*(*v3 + 96)))
    {
      return 1;
    }

    v3 += 16;
    if (v3 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1013E077C(uint64_t a1)
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

void sub_1013E081C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F35D00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013E0898(ServiceManager::Service *this)
{
  *this = off_101F35DE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013E08F4(ServiceManager::Service *this)
{
  *this = off_101F35DE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1013E0974@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013E09B8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = 0uLL;
  sub_100004AA0(&v4, (v2 + 8));
  v4 = 0uLL;
  operator new();
}

void sub_1013E0AA0(uint64_t a1, void **a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
  }

  *&v10 = &object;
  *(&v10 + 1) = "kIsEraseInstall";
  sub_100006354(&v10, &v11);
  v8 = xpc::dyn_cast_or_default(&v11, 0, v7);
  xpc_release(v11);
  if ((v8 & 1) == 0)
  {
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v6);
    }

    v10 = 0uLL;
    sub_100004AA0(&v10, (v4 + 8));
    v10 = 0uLL;
    operator new();
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  xpc_release(object);
}

void sub_1013E0C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(*(v13 - 40));
  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1013E0C48(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 0uLL;
  sub_100004AA0(&v2, (v1 + 8));
  v2 = 0uLL;
  operator new();
}

void sub_1013E0CFC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5 = 0uLL;
  sub_100004AA0(&v5, (v3 + 8));
  group[1] = 0;
  v5 = 0uLL;
  operator new();
}

void sub_1013E0DD8(ServiceManager::Service *this)
{
  *this = off_101F35DE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013E0E34(ServiceManager::Service *this)
{
  *this = off_101F35DE8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1013E0EE0(void *a1)
{
  v5 = a1;
  v1 = *a1;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_10079CB18(&v9, v1 + 2064, kSupportDynamicDataSimSwitchOnBBCallKey, kDataServiceDomain, &__p, 1);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  sub_10007B7D8(&v9);
  v2 = __p;
  sub_10000A1EC(&__p);
  if (v2)
  {
    sub_10079CC68(&v9);
  }

  v3 = v10;
  v10 = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  TMKXPCServer.shutdown()();
  return sub_100146328(&v5);
}

void sub_1013E0FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_100DE6314(&a13);
  sub_100146328(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013E0FF0(uint64_t a1)
{
  v3 = a1;
  Registry::createRestModuleOneTimeUseConnection(&v4, *(*a1 + 2064));
  ctu::RestModule::connect();
  v1 = v5;
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (capabilities::ct::supportsGemini(v1))
  {
    operator new();
  }

  return sub_100146328(&v3);
}

void sub_1013E1E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1013E1F38(void *a1)
{
  v1 = *a1;
  v5[0] = 0;
  v5[1] = 0;
  v3 = a1;
  v4 = v5;
  sub_1013DDDDC((v1 + 64), &v4);
  sub_100009970(&v4, v5[0]);
  sub_100021348((v1 + 2288));
  sub_100DE3E98(*(v1 + 2272));
  *(v1 + 2264) = v1 + 2272;
  *(v1 + 2272) = 0u;
  ctu::RestModule::disconnect((v1 + 2080));
  return sub_100146328(&v3);
}

__n128 sub_1013E205C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F35E50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E2094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a3, a4);
}

uint64_t sub_1013E20E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013E21A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F35ED0;
  a2[1] = v2;
  return result;
}

void sub_1013E21CC(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v23 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v23 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v23 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      write_rest_value();
      __p = &v23;
      v17 = "first";
      sub_10000F688(&__p, &v21, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v21);
      v21 = 0;
      write_rest_value();
      __p = &v23;
      v17 = "second";
      sub_10000F688(&__p, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      v11 = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        v11 = xpc_null_create();
      }

      xpc_release(v23);
      xpc_array_append_value(v4, v11);
      xpc_release(v11);
      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v15 = v4;
  }

  else
  {
    v15 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/transport_master_rat_recommendation_override");
  v23 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v23 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v23);
  v23 = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
}

void sub_1013E2484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1013E253C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013E25F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F35F60;
  a2[1] = v2;
  return result;
}

void sub_1013E2624(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1008F5E18(a2, &v5);
  sub_10000501C(&__p, "/cc/props/critical_activity_on_sim_personality");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1013E26C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1013E270C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E27D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F35FE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E280C(uint64_t *a1, xpc_object_t *a2)
{
  sub_100109E38(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E2888(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E2950(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36060;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E2988(uint64_t a1, xpc_object_t *a2)
{
  sub_1001A9998(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E2A04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E2ACC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F360E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E2B04(uint64_t *a1, xpc_object_t *a2)
{
  sub_100900908(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E2B80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E2C48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36160;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E2C80(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v4 = a1[1];
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v5 = (v4 + 8);
  sub_10006DCAC(v4, *(v4 + 8));
  *v4 = v4 + 8;
  *(v4 + 16) = 0;
  *(v4 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100008EA4(&v24, &object, 0);
    xpc_release(object);
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v23, &object, count);
    xpc_release(object);
    for (i = v25; ; i = ++v25)
    {
      if (i == v23[1] && v24 == v23[0])
      {
        xpc_release(v23[0]);
        xpc_release(v24);
        goto LABEL_53;
      }

      v22 = 0;
      object = &v24;
      v27 = i;
      sub_10003EAD4(&object, &v22);
      if (xpc_get_type(v22) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_51:
      xpc_release(v22);
    }

    v8 = v22;
    if (v22)
    {
      xpc_retain(v22);
      v29 = v8;
    }

    else
    {
      v8 = xpc_null_create();
      v29 = v8;
      if (!v8)
      {
        v9 = xpc_null_create();
        v8 = 0;
        goto LABEL_26;
      }
    }

    if (xpc_get_type(v8) == &_xpc_type_dictionary)
    {
      xpc_retain(v8);
      v9 = v29;
LABEL_27:
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        object = &v29;
        v27 = "first";
        sub_100006354(&object, &v28);
        type = xpc_get_type(v28);
        if (type == &_xpc_type_string)
        {
          v30 = 0;
          ctu::rest::detail::read_enum_string_value(&v30, &v28, v12);
          v10 = v30;
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          v10 = xpc::dyn_cast_or_default(&v28, 0, v12);
        }

        else
        {
          v10 = 0;
        }

        xpc_release(v28);
        object = &v29;
        v27 = "second";
        sub_100006354(&object, &v28);
        v13 = xpc_get_type(v28);
        if (v13 == &_xpc_type_string)
        {
          v30 = 0;
          ctu::rest::detail::read_enum_string_value(&v30, &v28, v14);
        }

        else if (v13 == &_xpc_type_BOOL || v13 == &_xpc_type_int64 || v13 == &_xpc_type_uint64)
        {
          xpc::dyn_cast_or_default(&v28, 0, v14);
        }

        xpc_release(v28);
      }

      else
      {
        v10 = 0;
      }

      xpc_release(v29);
      xpc_release(v8);
      v15 = *v5;
      if (!*v5)
      {
LABEL_50:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = *(v15 + 28);
          if (v17 <= v10)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_50;
          }
        }

        if (v17 >= v10)
        {
          goto LABEL_51;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_50;
        }
      }
    }

    v9 = xpc_null_create();
LABEL_26:
    v29 = v9;
    goto LABEL_27;
  }

LABEL_53:
  xpc_release(v3);
  v18 = a1[3];
  v19 = a1[4];
  v20 = (a1[2] + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  return v18(v20);
}

void sub_1013E30DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1013E31B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3280(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F361E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E32B8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1013E33B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3478(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36260;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E34B0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1013E35A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3670(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F362E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E36A8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1013E37A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3868(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E38A0(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1013E3938(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3A00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F363E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E3A38(uint64_t *a1, xpc_object_t *a2)
{
  sub_1008E2524(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E3AB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3B7C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E3BB4(uint64_t *a1, xpc_object_t *a2)
{
  sub_100109E38(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E3C30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3CF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F364E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013E3D30(void *a1, const xpc::object *a2)
{
  v3 = a1[1];
  v4 = *v3;
  v9 = *(v3 + 4);
  v8 = v4;
  read_rest_value(v3, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, &v8);
  EmergencyMode::~EmergencyMode(&v8);
}

uint64_t sub_1013E3DD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3EA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36560;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E3ED8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1013E3F20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E3FE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F365E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013E4020(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1013E40F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E41C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36660;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E41F8(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E4274(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E433C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F366E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E4374(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7);
}

uint64_t sub_1013E43FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E44C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36760;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E44FC(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_1013E45EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E46B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F367E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E46EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1013E4768(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E4830(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36860;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E4868(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v9, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v9, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, v9);
  return sub_10004543C(v9);
}

uint64_t sub_1013E4960(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E4A28(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F368E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013E4A60(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v9, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v9, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, v9);
  return sub_10004543C(v9);
}

uint64_t sub_1013E4B58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013E4C18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F36960;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013E4C48(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 2056);
    v14 = 136315394;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Dynamic data switching disablement assertion: %s (%d)", &v14, 0x12u);
  }

  v6 = *(v2 + 2060);
  v7 = v6 - 1;
  v8 = (v6 - 1) < 2;
  if (*(v2 + 2401) != v8)
  {
    *(v2 + 2401) = v8;
    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asStringBool(v7 < 2);
      v14 = 136315138;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IsDynamicDataSwitchingDisablementAsserted changed to: %s", &v14, 0xCu);
    }

    sub_1013DE124(v2);
    v6 = *(v2 + 2060);
  }

  if (v6 == 1)
  {
    sub_1013E4E50((v2 + 2056));
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = ctu::rest::asString();
      v13 = *(v2 + 2056);
      v14 = 136315394;
      v15 = v12;
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [Granted] Dynamic data switching disablement assertion: %s (%d)", &v14, 0x12u);
    }
  }
}

uint64_t sub_1013E4E04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013E4E50(unsigned int *a1)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v3, "/cc/assertions/tm_dynamic_data_switching_disablement_assertion");
    *__p = *v3;
    v6 = v4;
    v3[1] = 0;
    v4 = 0;
    v3[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_1013E4F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1013E5000(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1013E501C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v14 = 0;
      v6 = a1[1];
      if (*a1 == v3)
      {
        break;
      }

      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (v9);
      }

      if ((sub_1000068BC(v8 + 4, v5 + 4) & 0x80) != 0)
      {
        if (!*v3)
        {
LABEL_14:
          v14 = v3;
LABEL_15:
          sub_10024F0DC();
        }

        goto LABEL_10;
      }

      v10 = sub_100005C2C(a1, &v14, v5 + 4);
LABEL_11:
      if (!*v10)
      {
        goto LABEL_15;
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
      if (v12 == v4)
      {
        return a1;
      }
    }

    v8 = v3;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v14 = v8;
    v10 = v8 + 1;
    goto LABEL_11;
  }

  return a1;
}

uint64_t sub_1013E5184(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (sub_100C1BD48((v2 + 32), (a1 + 16)))
    {
      v3 = v2 + 40;
      sub_100009970(v2 + 32, *(v2 + 40));
      *(v2 + 32) = *(a1 + 16);
      v5 = *(a1 + 24);
      v6 = *(a1 + 32);
      v4 = (a1 + 24);
      *(v2 + 40) = v5;
      *(v2 + 48) = v6;
      if (v6)
      {
        *(v5 + 16) = v3;
        *(a1 + 16) = v4;
        *v4 = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        *(v2 + 32) = v3;
      }

      v7 = *(v2 + 24);
      if (v7)
      {
        (*(*v7 + 48))(v7, v2 + 32);
      }
    }
  }

  sub_100009970(a1 + 16, *(a1 + 24));
  return a1;
}

BOOL sub_1013E524C(capabilities::ct *a1)
{
  v1 = **(a1 + 5);
  if (!capabilities::ct::supportsGemini(a1))
  {
    return 0;
  }

  RawDynamicCellularDataSwitchState_sync = TransportMasterController::getRawDynamicCellularDataSwitchState_sync(v1);
  v3 = *(v1 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = asStringBool(RawDynamicCellularDataSwitchState_sync);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I getDynamicCellularDataSwitchingState: user preference: %s", &v5, 0xCu);
  }

  return RawDynamicCellularDataSwitchState_sync;
}

uint64_t *sub_1013E5314(capabilities::ct *a1)
{
  v1 = *a1;
  v27 = a1;
  v28 = v1;
  v2 = *v1;
  if (!capabilities::ct::supportsGemini(a1))
  {
    goto LABEL_44;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 2064));
  v4 = ServiceMap;
  if (v5 < 0)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    v11 = 0;
LABEL_10:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_11:
    (*(*v11 + 784))(v11, *(v1 + 8));
  }

LABEL_12:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (*(v1 + 39) < 0)
  {
    v13 = *(v1 + 24);
    if (v13)
    {
      __dst[1] = 0;
      v30 = 0;
      __dst[0] = 0;
      sub_100005F2C(__dst, *(v1 + 16), v13);
      goto LABEL_19;
    }
  }

  else if (*(v1 + 39))
  {
    *__dst = *(v1 + 16);
    v30 = *(v1 + 32);
LABEL_19:
    v14 = HIBYTE(v30);
    v15 = SHIBYTE(v30);
    if (v30 < 0)
    {
      v14 = __dst[1];
    }

    if (v14)
    {
      v16 = *(v1 + 8);
      v17 = sub_100007A6C(v2 + 2264, __dst);
      if (v2 + 2272 == v17)
      {
        goto LABEL_35;
      }

      v18 = v17;
      v19 = *(v17 + 56);
      v20 = *(v18 + 64);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v19)
      {
LABEL_35:
        *buf = 0u;
        v33 = 0u;
        memset(__p, 0, sizeof(__p));
        sub_1013E5840(buf);
      }

      if (sub_10151A0FC(v19, v16))
      {
        sub_1013DE124(v2);
      }

      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    else
    {
      v23 = *(v2 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = __dst[0];
        if (v15 >= 0)
        {
          v24 = __dst;
        }

        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "saveDynamicCellularDataSwitchingState_sync: Invalid personalityId: %s", buf, 0xCu);
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_44;
  }

  v21 = DataUtils::otherSimSlot();
  v22 = *(v1 + 8);
  TransportMasterController::getManager_sync(v2, v21, buf);
  if (*buf)
  {
    if (sub_10151A0FC(*buf, v22))
    {
      sub_1013DE124(v2);
    }
  }

  else
  {
    v25 = *(v2 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = asStringBool(v22);
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "setDynamicCellularDataSwitchingState: New user preference: %s is not applicable right now", __p, 0xCu);
    }
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_44:
  sub_100711F6C(&v28);
  return sub_1000049E0(&v27);
}

void sub_1013E579C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_100711F6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013E591C(uint64_t ***a1)
{
  v2 = a1;
  v1 = **a1;
  if (v1[294])
  {
    if ((sub_1013E06C8(v1[286], v1[287]) & 1) == 0)
    {
      sub_1013E0650(v1);
      sub_1013DE124(v1);
    }
  }

  sub_1013DEC98(v1);
  operator delete();
}

void sub_1013E59C8(uint64_t ***a1)
{
  v2 = a1;
  v1 = **a1;
  if (v1[294])
  {
    if ((sub_1013E06C8(v1[286], v1[287]) & 1) == 0)
    {
      sub_1013E0650(v1);
    }
  }

  sub_1013DE124(v1);
  sub_1013DEC98(v1);
  operator delete();
}

uint64_t sub_1013E5AE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F36A60;
  a2[1] = v2;
  return result;
}

void sub_1013E5B10(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1013E0650(v1);
  sub_1013DE124(v1);

  sub_1013DEC98(v1);
}

uint64_t sub_1013E5B54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013E5C10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F36AE0;
  a2[1] = v2;
  return result;
}

void sub_1013E5C3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 2392);
  *(v1 + 2384) = 0u;
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1013DE124(v1);
}

uint64_t sub_1013E5C84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_1013E5CD0(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "????";
  }

  else
  {
    return off_101F36C30[a1];
  }
}

const char *sub_1013E5CF4(int a1)
{
  v1 = "wifi_pseudonym";
  if (a1 == 1)
  {
    v1 = "rcs_provisioning";
  }

  if (a1 == 2)
  {
    return "kTotal";
  }

  else
  {
    return v1;
  }
}

const __CFString *sub_1013E5D20(int a1)
{
  v1 = @"wifi_pseudonym";
  if (a1 == 1)
  {
    v1 = @"rcs_provisioning";
  }

  if (a1 == 2)
  {
    return @"kTotal";
  }

  else
  {
    return v1;
  }
}

const char *sub_1013E5D4C(_DWORD *a1)
{
  if (*a1)
  {
    return "unmetered";
  }

  else
  {
    return "metered";
  }
}

const char *sub_1013E5D6C(_DWORD *a1)
{
  if (*a1)
  {
    return "sub6";
  }

  else
  {
    return "mmw";
  }
}

uint64_t sub_1013E5D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v4 = &v35;
  v34 = 0u;
  sub_10000C320(&v34);
  sub_10000C030(&v35);
  if (a1[1] != *a1)
  {
    sub_10000C030(&v35);
    v6 = *a1;
    v31 = a1[1];
    if (*a1 != v31)
    {
      v7 = 1;
      do
      {
        if ((v7 & 1) == 0)
        {
          sub_10000C030(v4);
        }

        v8 = v4;
        v9 = v5;
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        *v50 = 0u;
        sub_10000C320(v50);
        sub_10000C030(&v51);
        if (*(v6 + 4) == 1)
        {
          v10 = sub_10000C030(&v51);
          sub_10000C030(v10);
        }

        if (*(v6 + 9) == 1)
        {
          sub_10000C030(&v51);
          std::ostream::operator<<();
        }

        if (*(v6 + 16) == 1)
        {
          sub_10000C030(&v51);
          std::ostream::operator<<();
        }

        if (*(v6 + 48) == 1)
        {
          sub_10000C030(&v51);
          v11 = *(v6 + 24);
          v12 = *(v6 + 32);
          while (v11 != v12)
          {
            v13 = sub_10000C030(&v51);
            sub_10000C030(v13);
            v11 += 4;
          }
        }

        if (*(v6 + 57) == 1)
        {
          sub_10000C030(&v51);
          std::ostream::operator<<();
        }

        sub_10000C030(&v51);
        sub_100061574(v50, &v32);
        v50[0] = v30;
        *(v50 + *(v30 - 3)) = v29;
        *&v51 = v28;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*(&v55 + 1));
        }

        std::locale::~locale(&v52);
        v5 = v9;
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v4 = v8;
        sub_10000C030(v8);
        if (v33 < 0)
        {
          operator delete(v32);
        }

        v7 = 0;
        v6 += 64;
      }

      while (v6 != v31);
    }

    sub_10000C030(v4);
  }

  if (a1[3])
  {
    v14 = sub_10000C030(v4);
    v15 = a1[3];
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *v50 = 0u;
    sub_10000C320(v50);
    sub_10000C030(&v51);
    if (*(v15 + 24) == 1)
    {
      v16 = sub_10000C030(&v51);
      sub_10000C030(v16);
    }

    sub_10000C030(&v51);
    sub_100061574(v50, &v32);
    v50[0] = *v5;
    v17 = v5[9];
    *(v50 + *(v50[0] - 3)) = v5[8];
    *&v51 = v17;
    if (SHIBYTE(v56) < 0)
    {
      operator delete(*(&v55 + 1));
    }

    std::locale::~locale(&v52);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    sub_10000C030(v14);
    if (v33 < 0)
    {
      operator delete(v32);
    }
  }

  if (*(a1 + 41) == 1)
  {
    sub_10000C030(v4);
    std::ostream::operator<<();
  }

  if (a1[6])
  {
    v18 = sub_10000C030(v4);
    v19 = a1[6];
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *v50 = 0u;
    sub_10000C320(v50);
    sub_10000C030(&v51);
    if (*(v19 + 24) == 1)
    {
      v20 = sub_10000C030(&v51);
      v21 = sub_10000C030(v20);
      sub_10000C030(v21);
    }

    if (*(v19 + 56) == 1)
    {
      v22 = sub_10000C030(&v51);
      v23 = sub_10000C030(v22);
      sub_10000C030(v23);
    }

    sub_10000C030(&v51);
    sub_100061574(v50, &v32);
    v50[0] = *v5;
    v24 = v5[9];
    *(v50 + *(v50[0] - 3)) = v5[8];
    *&v51 = v24;
    if (SHIBYTE(v56) < 0)
    {
      operator delete(*(&v55 + 1));
    }

    std::locale::~locale(&v52);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    sub_10000C030(v18);
    if (v33 < 0)
    {
      operator delete(v32);
    }
  }

  if (a1[8])
  {
    v25 = sub_10000C030(v4);
    sub_1013E68CC(a1[8], v50);
    sub_10000C030(v25);
    if (SBYTE7(v51) < 0)
    {
      operator delete(v50[0]);
    }
  }

  sub_10000C030(v4);
  sub_100061574(&v34, a2);
  *&v34 = *v5;
  v26 = v5[9];
  *(&v34 + *(v34 - 24)) = v5[8];
  *&v35 = v26;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[1]);
  }

  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1013E6854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1013E68CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  sub_10000C320(&v13);
  v4 = sub_10000C030(&v14);
  sub_10000C030(v4);
  if (*(a1 + 16) != *(a1 + 8))
  {
    sub_10000C030(&v14);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v5 != v6)
    {
      v7 = 1;
      do
      {
        if ((v7 & 1) == 0)
        {
          sub_10000C030(&v14);
        }

        sub_10000C030(&v14);
        v7 = 0;
        v5 += 24;
      }

      while (v5 != v6);
    }

    sub_10000C030(&v14);
  }

  v8 = sub_10000C030(&v14);
  if (*(a1 + 32))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (*(a1 + 33))
  {
    v10 = v9;
  }

  else
  {
    v10 = "-";
  }

  strlen(v10);
  sub_10000C030(v8);
  sub_100061574(&v13, a2);
  *&v14 = v11;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

const char *sub_1013E6BD4(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "?";
  }

  else
  {
    return off_101F36C88[a1 - 1];
  }
}

BOOL sub_1013E6BFC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v7 - v6 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v6 != v7)
  {
    result = sub_100022D3C(&v13, v6, v8);
    if (!result)
    {
      return result;
    }

    v6 += 3;
    v8 += 3;
  }

  v10 = *(a2 + 33);
  v11 = *(a1 + 33);
  result = v11 == v10;
  if (v11 == v10 && v11 != 0)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

BOOL sub_1013E6CC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  if (v2 - *a1 != v4 - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    if (*a2 == v4)
    {
      return 0;
    }

LABEL_4:
    v5 = *(v3 + 4);
    v6 = *a2;
    while (1)
    {
      v7 = *(v6 + 4);
      if (v5 != v7 || v5 == 0)
      {
        if (v5 != v7)
        {
          goto LABEL_36;
        }
      }

      else if (*v3 != *v6)
      {
        goto LABEL_36;
      }

      v9 = *(v3 + 9);
      v10 = *(v6 + 9);
      if (v9 == v10 && v9 != 0)
      {
        v9 = *(v3 + 8);
        v10 = *(v6 + 8);
      }

      if (v9 != v10)
      {
        goto LABEL_36;
      }

      v12 = *(v3 + 16);
      v13 = *(v6 + 16);
      if (v12 == v13 && *(v3 + 16))
      {
        v12 = *(v3 + 12);
        v13 = *(v6 + 12);
      }

      if (v12 != v13)
      {
        goto LABEL_36;
      }

      v14 = *(v3 + 48);
      v15 = *(v6 + 48);
      if (v14 == v15 && *(v3 + 48))
      {
        v17 = *(v3 + 24);
        v16 = *(v3 + 32);
        v18 = *(v6 + 24);
        if (v16 - v17 != *(v6 + 32) - v18)
        {
          goto LABEL_36;
        }

        while (v17 != v16)
        {
          if (*v17 != *v18)
          {
            goto LABEL_36;
          }

          v17 += 4;
          ++v18;
        }
      }

      else if (v14 != v15)
      {
        goto LABEL_36;
      }

      v19 = *(v3 + 57);
      v20 = *(v6 + 57);
      if (v19 == v20 && v19 != 0)
      {
        v19 = *(v3 + 56);
        v20 = *(v6 + 56);
      }

      if (v19 == v20)
      {
        if (v4 != v6)
        {
          v3 += 64;
          if (v3 == v2)
          {
            break;
          }

          goto LABEL_4;
        }

        return 0;
      }

LABEL_36:
      v6 += 64;
      if (v6 == v4)
      {
        return 0;
      }
    }
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  v22 = *(a1 + 41);
  v23 = *(a2 + 41);
  if (v22 == v23 && v22 != 0)
  {
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
  }

  if (v22 != v23 || a1[6] != a2[6])
  {
    return 0;
  }

  return a1[8] == a2[8];
}

void sub_1013E6F34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1013E6F5C(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v3 = *a3;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  operator new();
}

void sub_1013E70A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, dispatch_object_t object, char a17)
{
  sub_1000A8744(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_1013E70D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 80);
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1013E7108(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v18 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v18);
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

      goto LABEL_11;
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
LABEL_7:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Registry does not contain GestaltUtilityInterface. File a radar!!", buf, 2u);
    }

    goto LABEL_14;
  }

LABEL_11:
  if (!(*(*v10 + 80))(v10))
  {
    v14 = 1;
    if (v11)
    {
      return v14;
    }

    goto LABEL_15;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Device is Green Tea capable. Will strip out phone number.", v16, 2u);
  }

LABEL_14:
  v14 = 0;
  if ((v11 & 1) == 0)
  {
LABEL_15:
    sub_100004A34(v9);
  }

  return v14;
}

void sub_1013E72A4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013E72C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    buf.var0 = 136315138;
    *&buf.var1 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s, checking to send phone number report to the server", &buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&buf.var0 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
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

LABEL_15:
      memset(&v35, 0, sizeof(v35));
      if (!sub_1013E7108(a1))
      {
        goto LABEL_47;
      }

      v29 = v14;
      subscriber::makeSimSlotRange();
      v17 = v32;
      v18 = v33;
      if (v32 == v33)
      {
        goto LABEL_49;
      }

      v19 = v34;
      do
      {
        if (v34(*v17))
        {
          break;
        }

        ++v17;
      }

      while (v17 != v33);
      v20 = v33;
      if (v17 == v33)
      {
        goto LABEL_49;
      }

      v21 = 0;
      do
      {
        v22 = *v17;
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        *v37 = 0u;
        v38 = 0u;
        memset(&buf, 0, sizeof(buf));
        v23 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
        sub_100D866B0((a1 + 56), v23, v22, &buf);
        if (v45 == 1)
        {
          CSIPhoneNumber::getBaseNumber(__p, &buf);
          if ((v31 & 0x80u) == 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          if ((v31 & 0x80u) == 0)
          {
            v25 = v31;
          }

          else
          {
            v25 = __p[1];
          }

          std::string::append(&v35, v24, v25);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }

          if (v45)
          {
            if (SBYTE7(v44) < 0)
            {
              operator delete(v43);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(*(&v41 + 1));
            }

            if (SBYTE7(v40) < 0)
            {
              operator delete(v39);
            }

            if (SBYTE7(v38) < 0)
            {
              operator delete(v37[0]);
            }

            if (*(&buf.var2.__rep_.__l + 23) < 0)
            {
              operator delete(buf.var2.__rep_.__l.__data_);
            }
          }

          v21 = 1;
        }

        do
        {
          ++v17;
        }

        while (v17 != v18 && (v19(*v17) & 1) == 0);
      }

      while (v17 != v20);
      v14 = v29;
      if ((v21 & 1) == 0)
      {
LABEL_49:
        v26 = *(a1 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          v16 = 2;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Phone number is not available, will retry later", &buf, 2u);
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
LABEL_47:
        if ((*(*a1 + 48))(a1, &v35))
        {
          v16 = (*(*a1 + 16))(a1, &v35);
        }

        else
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.var0) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I No need to send phone number report", &buf, 2u);
          }

          v16 = 3;
        }
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
        if (v14)
        {
          return v16;
        }
      }

      else if (v14)
      {
        return v16;
      }

LABEL_57:
      sub_100004A34(v12);
      return v16;
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
    goto LABEL_15;
  }

LABEL_9:
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Registry does not contain SettingsController. File a radar!!", &buf, 2u);
  }

  v16 = 4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_57;
  }

  return v16;
}

void sub_1013E7718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if ((a10 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013E7798(void *a1, const void **a2)
{
  *type = 0;
  DevicePersistentCopyValue(buf, @"ReportedPhoneNumber", 0);
  sub_100060DE8(type, buf);
  sub_10000A1EC(buf);
  if (*type)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v19 = *&buf[16];
    *__p = *buf;
    v4 = a2[1];
    v5 = *(a2 + 23);
    v6 = buf[23];
    if ((buf[23] & 0x80u) == 0)
    {
      v7 = buf[23];
    }

    else
    {
      v7 = *&buf[8];
    }

    if (v5 >= 0)
    {
      v4 = *(a2 + 23);
    }

    if (v7 == v4 && ((buf[23] & 0x80u) == 0 ? (v8 = __p) : (v8 = __p[0]), v5 >= 0 ? (v9 = a2) : (v9 = *a2), !memcmp(v8, v9, v7)))
    {
      v16 = a1[5];
      v13 = 0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Same phone numbers, saved: %s, current phone number: %s, not reporting again", buf, 0x16u);
        v13 = 0;
      }
    }

    else
    {
      v10 = a1[5];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = __p[0];
        if (v6 >= 0)
        {
          v11 = __p;
        }

        v12 = *a2;
        if (v5 >= 0)
        {
          v12 = a2;
        }

        *buf = 136315394;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Phone numbers are not matching, %s != %s, generating report", buf, 0x16u);
      }

      object = xpc_null_create();
      (*(*a1 + 64))(a1, &object);
      xpc_release(object);
      object = 0;
      v13 = 1;
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14 = a1[5];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No saved phone number identity, generating report", buf, 2u);
    }

    v13 = 1;
  }

  sub_100005978(type);
  return v13;
}

void sub_1013E7A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013E7A98@<X0>(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  *a2 = 0;
  v45 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = v45;
    v45 = Mutable;
    *&buf.var0 = v5;
    sub_1000296E0(&buf);
  }

  v44 = v45;
  if (v45)
  {
    CFRetain(v45);
  }

  v6 = sub_100D862D8((a1 + 40), &v44, (a1 + 56));
  sub_1000296E0(&v44);
  if (v6)
  {
    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 72);
        if (v9)
        {
          v43 = v45;
          if (v45)
          {
            CFRetain(v45);
          }

          (*(*v9 + 24))(v9, &v43);
          sub_1000296E0(&v43);
          v42 = v45;
          if (v45)
          {
            CFRetain(v45);
          }

          (*(*v9 + 32))(v9, &v42, 1);
          sub_1000296E0(&v42);
          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not get parent for adding device information in payload", &buf, 2u);
      if (!v8)
      {
LABEL_20:
        subscriber::makeSimSlotRange();
        v12 = v39;
        v13 = v40;
        if (v39 != v40)
        {
          v14 = v41;
          do
          {
            if (v14(*v12))
            {
              break;
            }

            ++v12;
          }

          while (v12 != v13);
          v15 = v40;
          while (v12 != v15)
          {
            v16 = *v12;
            v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), v16);
            if (sub_1013E7108(a1))
            {
              v38 = 0;
              *v36 = 0u;
              v37 = 0u;
              *v34 = 0u;
              v35 = 0u;
              *v32 = 0u;
              v33 = 0u;
              *v30 = 0u;
              v31 = 0u;
              memset(&buf, 0, sizeof(buf));
              sub_100D866B0((a1 + 56), v17, v16, &buf);
              if (v38 == 1)
              {
                v18 = *v17;
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  CSIPhoneNumber::getBaseNumber(&v47, &buf);
                  v19 = &v47;
                  if (v48 < 0)
                  {
                    v19 = v47;
                  }

                  *__dst = 136315138;
                  *&__dst[4] = v19;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Setting the Phone Number: %s", __dst, 0xCu);
                  if (SHIBYTE(v48) < 0)
                  {
                    operator delete(v47);
                  }
                }

                v20 = v45;
                v21 = sub_1012B1D20(v16);
                CSIPhoneNumber::getBaseNumber(__p, &buf);
                if (SHIBYTE(v27) < 0)
                {
                  sub_100005F2C(__dst, __p[0], __p[1]);
                }

                else
                {
                  *__dst = *__p;
                  v52 = v27;
                }

                v46 = 0;
                if (SHIBYTE(v52) < 0)
                {
                  sub_100005F2C(&v47, *__dst, *&__dst[8]);
                }

                else
                {
                  v47 = *__dst;
                  v48 = v52;
                }

                v49 = 0;
                if (ctu::cf::convert_copy())
                {
                  v22 = v46;
                  v46 = v49;
                  v50 = v22;
                  sub_100005978(&v50);
                }

                if (SHIBYTE(v48) < 0)
                {
                  operator delete(v47);
                }

                value = v46;
                v46 = 0;
                sub_100005978(&v46);
                if (SHIBYTE(v52) < 0)
                {
                  operator delete(*__dst);
                }

                CFDictionarySetValue(v20, v21, value);
                sub_100005978(&value);
                if (SHIBYTE(v27) < 0)
                {
                  operator delete(__p[0]);
                }

                if (v38)
                {
                  if (SBYTE7(v37) < 0)
                  {
                    operator delete(v36[0]);
                  }

                  if (SHIBYTE(v35) < 0)
                  {
                    operator delete(v34[1]);
                  }

                  if (SBYTE7(v33) < 0)
                  {
                    operator delete(v32[0]);
                  }

                  if (SBYTE7(v31) < 0)
                  {
                    operator delete(v30[0]);
                  }

                  if (*(&buf.var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(buf.var2.__rep_.__l.__data_);
                  }
                }
              }
            }

            do
            {
              ++v12;
            }

            while (v12 != v13 && (v14(*v12) & 1) == 0);
          }
        }

        Data = CFPropertyListCreateData(0, v45, kCFPropertyListXMLFormat_v1_0, 0, 0);
        v24 = *a2;
        *a2 = Data;
        *&buf.var0 = v24;
        sub_10002D760(&buf);
        return sub_1000296E0(&v45);
      }
    }

    else if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_100004A34(v8);
    goto LABEL_20;
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Failed to add common key values", &buf, 2u);
  }

  return sub_1000296E0(&v45);
}

void sub_1013E7FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013E80B0(uint64_t a1, xpc *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {

    return DevicePersistentSaveValue(@"ReportedPhoneNumber", 0);
  }

  else
  {
    xpc::bridge(&v5, a2, v3);
    DevicePersistentSaveValue();
    return sub_10000A1EC(&v5);
  }
}

void sub_1013E8140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_1013E8158(uint64_t a1)
{
  sub_1012B20BC(a1);

  operator delete();
}

void sub_1013E825C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1013E8330);
  __cxa_rethrow();
}

void sub_1013E829C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013E82F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013E8330(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t getContextIdForType(Registry **a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v13 = 0xFFFFFFFFLL;
    if (v12)
    {
      return v13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v14 = (*(*v11 + 808))(v11);
  v13 = (*(*v11 + 280))(v11, v14, a2);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v10);
  }

  return v13;
}

void sub_1013E84BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getInterfaceBytes(int a1)
{
  bzero(v4, 0x2C8uLL);
  *v6 = xmmword_101965B30;
  v7 = a1;
  v8 = 5;
  v3 = 712;
  if (sysctl(v6, 6u, v4, &v3, 0, 0))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t getInternetInterfaceIndex(uint64_t a1, Registry **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_1013E860C(a2, 1, __p);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = if_nametoindex(v2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1013E85F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013E860C@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v17);
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
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = (*(*v13 + 808))(v13);
  (*(*v13 + 280))(v13, v15, a2);
  if ((v14 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v12);
  }

LABEL_13:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return CSIPDPManager::getInterfaceNameById();
}

void sub_1013E8784(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getTetheringInterfaceIndex(os_log_t *a1, Registry **a2, uint64_t a3)
{
  if (a3 == 16 || a3 == 0x8000000)
  {
    __p = 0uLL;
    v10 = 0;
    sub_1013E860C(a2, a3, &__p);
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v5 = if_nametoindex(p_p);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xFFFFFFFFLL;
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 134217984;
      *(&__p + 4) = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%08llX is not a tethering connection type", &__p, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void sub_1013E88C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sockaddrToString@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = *a1;
  if (!result || (v31 = 0u, memset(v32, 0, sizeof(v32)), *__s = 0u, v28 = 0, *v27 = 0, BytePtr = CFDataGetBytePtr(result), result = getnameinfo(BytePtr, BytePtr->sa_len, __s, 0x39u, v27, 6u, 10), result))
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    return result;
  }

  v32[24] = 0;
  HIBYTE(v28) = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  *__src = 0u;
  v10 = 0u;
  v11 = 0u;
  sub_10000D518(&v10);
  strlen(__s);
  v5 = sub_10000C030(&v10);
  v29 = 44;
  v6 = sub_10000C030(v5);
  strlen(v27);
  sub_10000C030(v6);
  if ((BYTE8(v16) & 0x10) != 0)
  {
    v8 = v16;
    if (v16 < __src[1])
    {
      *&v16 = __src[1];
      v8 = __src[1];
    }

    v9 = __src[0];
    goto LABEL_11;
  }

  if ((BYTE8(v16) & 8) != 0)
  {
    v9 = *(&v11 + 1);
    v8 = *(&v12 + 1);
LABEL_11:
    v7 = v8 - v9;
    if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    a2[23] = v7;
    if (v7)
    {
      memmove(a2, v9, v7);
    }

    goto LABEL_17;
  }

  v7 = 0;
  a2[23] = 0;
LABEL_17:
  a2[v7] = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1013E8BFC(uint64_t a1, void *a2, NSObject **a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = "vinyl.sUnknown";
  if (a5 == 2)
  {
    v14 = "vinyl.s2";
  }

  if (a5 == 1)
  {
    v15 = "vinyl.s1";
  }

  else
  {
    v15 = v14;
  }

  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, v15);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v16 = *a3;
  *(a1 + 24) = *a3;
  if (v16)
  {
    dispatch_retain(v16);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v24, &v23);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v24);
  ctu::OsLogLogger::~OsLogLogger(v24);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101F36D98;
  v17 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *a4;
  v19 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    v18 = *a4;
  }

  *(a1 + 80) = a5;
  *(a1 + 84) = (*(*v18 + 48))(v18, a5);
  v20 = a6[1];
  *(a1 + 88) = *a6;
  *(a1 + 96) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a7[1];
  *(a1 + 104) = *a7;
  *(a1 + 112) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 305) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 370) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 392) = 0u;
  return a1;
}

void sub_1013E8DE0(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_1013E8E3C(void *a1)
{
  *a1 = off_101F36D98;
  v2 = a1[53];
  if (v2)
  {
    a1[54] = v2;
    operator delete(v2);
  }

  v3 = a1[50];
  if (v3)
  {
    a1[51] = v3;
    operator delete(v3);
  }

  v4 = a1[49];
  a1[49] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v6 = a1[43];
  v5 = a1[44];
  if (v5 == v6)
  {
    v10 = a1 + 47;
    v14 = a1[43];
  }

  else
  {
    v7 = a1[46];
    v8 = &v6[v7 >> 9];
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = a1 + 47;
    v11 = *(v6 + (((a1[47] + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[47] + v7) & 0x1FF);
    if (v9 != v11)
    {
      do
      {
        v12 = *v9++;
        sub_1014026B4(v12);
        if (v9 - *v8 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
        }
      }

      while (v9 != v11);
      v6 = a1[43];
      v5 = a1[44];
    }

    v14 = v5;
  }

  *v10 = 0;
  v15 = v14 - v6;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v6);
      v5 = a1[44];
      v6 = (a1[43] + 8);
      a1[43] = v6;
      v15 = v5 - v6;
    }

    while (v15 > 2);
    v14 = v5;
  }

  if (v15 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_23;
    }

    v16 = 512;
  }

  a1[46] = v16;
LABEL_23:
  if (v6 != v14)
  {
    do
    {
      v17 = *v6++;
      operator delete(v17);
    }

    while (v6 != v14);
    v14 = a1[43];
    v5 = a1[44];
  }

  if (v5 != v14)
  {
    a1[44] = v5 + ((v14 - v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v18 = a1[42];
  if (v18)
  {
    operator delete(v18);
  }

  v19 = a1[41];
  a1[41] = 0;
  if (v19)
  {
    sub_1000DF0B0((a1 + 41), v19);
  }

  v21 = a1[35];
  v20 = a1[36];
  if (v20 == v21)
  {
    v26 = a1 + 39;
    v30 = a1[35];
  }

  else
  {
    v22 = a1[38];
    v23 = &v21[v22 >> 8];
    v24 = *v23;
    v25 = *v23 + 16 * v22;
    v26 = a1 + 39;
    v27 = *(v21 + (((a1[39] + v22) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 312) + v22);
    if (v25 != v27)
    {
      do
      {
        v28 = *(v25 + 8);
        if (v28)
        {
          sub_100004A34(v28);
          v24 = *v23;
        }

        v25 += 16;
        if (v25 - v24 == 4096)
        {
          v29 = v23[1];
          ++v23;
          v24 = v29;
          v25 = v29;
        }
      }

      while (v25 != v27);
      v21 = a1[35];
      v20 = a1[36];
    }

    v30 = v20;
  }

  *v26 = 0;
  v31 = v30 - v21;
  if (v31 >= 3)
  {
    do
    {
      operator delete(*v21);
      v20 = a1[36];
      v21 = (a1[35] + 8);
      a1[35] = v21;
      v31 = v20 - v21;
    }

    while (v31 > 2);
    v30 = v20;
  }

  if (v31 == 1)
  {
    v32 = 128;
  }

  else
  {
    if (v31 != 2)
    {
      goto LABEL_50;
    }

    v32 = 256;
  }

  a1[38] = v32;
LABEL_50:
  if (v21 != v30)
  {
    do
    {
      v33 = *v21++;
      operator delete(v33);
    }

    while (v21 != v30);
    v30 = a1[35];
    v20 = a1[36];
  }

  if (v20 != v30)
  {
    a1[36] = v20 + ((v30 - v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v34 = a1[34];
  if (v34)
  {
    operator delete(v34);
  }

  v36 = a1[29];
  v35 = a1[30];
  if (v35 == v36)
  {
    v41 = a1 + 33;
    v45 = a1[29];
  }

  else
  {
    v37 = a1[32];
    v38 = &v36[v37 >> 8];
    v39 = *v38;
    v40 = *v38 + 16 * v37;
    v41 = a1 + 33;
    v42 = *(v36 + (((a1[33] + v37) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 264) + v37);
    if (v40 != v42)
    {
      do
      {
        v43 = *(v40 + 8);
        if (v43)
        {
          sub_100004A34(v43);
          v39 = *v38;
        }

        v40 += 16;
        if (v40 - v39 == 4096)
        {
          v44 = v38[1];
          ++v38;
          v39 = v44;
          v40 = v44;
        }
      }

      while (v40 != v42);
      v36 = a1[29];
      v35 = a1[30];
    }

    v45 = v35;
  }

  *v41 = 0;
  v46 = v45 - v36;
  if (v46 >= 3)
  {
    do
    {
      operator delete(*v36);
      v35 = a1[30];
      v36 = (a1[29] + 8);
      a1[29] = v36;
      v46 = v35 - v36;
    }

    while (v46 > 2);
    v45 = v35;
  }

  if (v46 == 1)
  {
    v47 = 128;
  }

  else
  {
    if (v46 != 2)
    {
      goto LABEL_75;
    }

    v47 = 256;
  }

  a1[32] = v47;
LABEL_75:
  if (v36 != v45)
  {
    do
    {
      v48 = *v36++;
      operator delete(v48);
    }

    while (v36 != v45);
    v45 = a1[29];
    v35 = a1[30];
  }

  if (v35 != v45)
  {
    a1[30] = v35 + ((v45 - v35 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v49 = a1[28];
  if (v49)
  {
    operator delete(v49);
  }

  v51 = a1[23];
  v50 = a1[24];
  if (v50 == v51)
  {
    v52 = a1 + 27;
    v60 = a1[23];
  }

  else
  {
    v52 = a1 + 27;
    v53 = a1[26];
    v54 = &v51[v53 >> 8];
    v55 = *v54;
    v56 = *v54 + 16 * v53;
    v57 = *(v51 + (((a1[27] + v53) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 216) + v53);
    if (v56 != v57)
    {
      do
      {
        v58 = *(v56 + 8);
        if (v58)
        {
          sub_100004A34(v58);
          v55 = *v54;
        }

        v56 += 16;
        if (v56 - v55 == 4096)
        {
          v59 = v54[1];
          ++v54;
          v55 = v59;
          v56 = v59;
        }
      }

      while (v56 != v57);
      v51 = a1[23];
      v50 = a1[24];
    }

    v60 = v50;
  }

  *v52 = 0;
  v61 = v60 - v51;
  if (v61 >= 3)
  {
    do
    {
      operator delete(*v51);
      v50 = a1[24];
      v51 = (a1[23] + 8);
      a1[23] = v51;
      v61 = v50 - v51;
    }

    while (v61 > 2);
    v60 = v50;
  }

  if (v61 == 1)
  {
    v62 = 128;
  }

  else
  {
    if (v61 != 2)
    {
      goto LABEL_100;
    }

    v62 = 256;
  }

  a1[26] = v62;
LABEL_100:
  if (v51 != v60)
  {
    do
    {
      v63 = *v51++;
      operator delete(v63);
    }

    while (v51 != v60);
    v60 = a1[23];
    v50 = a1[24];
  }

  if (v50 != v60)
  {
    a1[24] = v50 + ((v60 - v50 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v64 = a1[22];
  if (v64)
  {
    operator delete(v64);
  }

  v65 = a1[21];
  if (v65)
  {
    sub_100004A34(v65);
  }

  v66 = a1[19];
  if (v66)
  {
    sub_100004A34(v66);
  }

  v67 = a1[16];
  if (v67)
  {
    sub_100004A34(v67);
  }

  v68 = a1[14];
  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  v69 = a1[12];
  if (v69)
  {
    sub_100004A34(v69);
  }

  v70 = a1[9];
  if (v70)
  {
    sub_100004A34(v70);
  }

  v71 = a1[7];
  if (v71)
  {
    sub_100004A34(v71);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1013E93E8(void *a1)
{
  sub_1013E8E3C(a1);

  operator delete();
}

void sub_1013E9420(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    *(a1 + 320) = 0;
    *(a1 + 140) = 0;
    v3 = *(v1 + 216);
    if (v3 && ((*(*v3 + 56))(v3) & 1) == 0)
    {
      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband reset detected: cancelling the receipts operation", buf, 2u);
      }

      (*(**(*(a1 + 144) + 216) + 24))(*(*(a1 + 144) + 216));
    }

    v5 = *(*(a1 + 144) + 200);
    if (v5 && ((*(*v5 + 56))(v5) & 1) == 0)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband reset detected: pausing the install operation", v9, 2u);
      }

      (*(**(*(a1 + 144) + 200) + 40))(*(*(a1 + 144) + 200));
    }

    if (*(*(a1 + 144) + 194) == 1)
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I baseband reset while fetch in progress", v8, 2u);
      }
    }
  }
}

void sub_1013E95DC(void *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v5)
  {
    v9 = a1[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Missing nonce", buf, 2u);
    }
  }

  else
  {
    v6 = a1[50];
    v7 = a1[51];
    if (v7 - v6 != v5 - v4 || memcmp(a1[50], v4, v7 - v6))
    {
      if (v6 != v7)
      {
        v8 = a1[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I New nonce to be signed", buf, 2u);
        }
      }

      if (a1 + 50 != a2)
      {
        sub_1001122C4(a1 + 50, *a2, a2[1], a2[1] - *a2);
      }

      v11 = 1380532560;
      __dst = 0;
      v14 = 0;
      *buf = 0;
      sub_1000DCF88(buf, &v11, buf, 4);
      sub_10005F5A8(buf, __dst, *a2, a2[1], a2[1] - *a2);
      memset(__p, 0, sizeof(__p));
      sub_100034C50(__p, *a2, a2[1], a2[1] - *a2);
      v15 = 0;
      operator new();
    }
  }
}

void sub_1013E982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_100D96EB8(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1013E988C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1174405120;
        v16[2] = sub_1013E9A48;
        v16[3] = &unk_101F36DB0;
        memset(&v16[5], 0, 17);
        v16[4] = v5;
        v8 = *a2;
        if (v8 == 2)
        {
          LOBYTE(v16[5]) = 2;
          *(&v16[5] + 1) = *(a2 + 1);
          BYTE3(v16[5]) = a2[3];
        }

        else if (v8 == 1)
        {
          LOBYTE(v16[5]) = 1;
          *(&v16[5] + 1) = *(a2 + 1);
        }

        v9 = v5[2];
        if (!v9 || (v10 = v5[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        v13 = v5[3];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 1174405120;
        v14[2] = sub_101402DDC;
        v14[3] = &unk_101F378C8;
        v14[5] = v10;
        v15 = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14[4] = v16;
        dispatch_async(v13, v14);
        if (v15)
        {
          sub_100004A34(v15);
        }

        sub_100004A34(v12);
        LOBYTE(v16[5]) = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013E9A3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1013E9A48(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v1 == 2)
  {
    v8 = *(a1 + 41);
    v9 = *(v3 + 40);
    if (v8 == 3)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = asString();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I CSN temporarily failed; will try again later (availability left at %s)", __p, 0xCu);
      }
    }

    else if (v8 == 6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sim not supported; clearing CSN", __p, 2u);
      }

      sub_1013E9D9C(v3, 2u);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1013E9FAC(v2);
        *__p = 136315138;
        *&__p[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CSN retrieval failed with error %s; disabling Vinyl", __p, 0xCu);
      }

      sub_1013E9D9C(v3, 2u);
    }
  }

  else
  {
    if (v1 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = *(v3 + 144);
    if (!v4 || ((v6 = *(v4 + 8), v5 = *(v4 + 16), v6 == *(a1 + 41)) ? (v7 = v5 == *(a1 + 49)) : (v7 = 0), !v7))
    {
      sub_1013EB748(*(a1 + 32));
      operator new();
    }

    v10 = *(v3 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      *buf = 136315138;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I CSN did not change: %s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_1013E9D9C(v3, 3u);
  }
}

void sub_1013E9D9C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 136) == a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136315138;
      *&v9[4] = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Vinyl availability has not changed: %s", v9, 0xCu);
    }
  }

  else
  {
    *(a1 + 136) = a2;
    v5 = *(a1 + 40);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *v9 = 136315394;
      *&v9[4] = asString();
      *&v9[12] = 2080;
      *&v9[14] = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Vinyl availability changing from %s to %s", v9, 0x16u);
    }

    if (a2 <= 6 && (((1 << a2) & 0x56) != 0 || a2 == 5 && capabilities::euicc::supportsVinylSEPPairingVerification(v6)))
    {
      sub_1013EB834(a1);
    }

    v7 = *(a1 + 80);
    *v9 = _NSConcreteStackBlock;
    *&v9[8] = 0x40000000;
    *&v9[16] = sub_100F6D960;
    v10 = &unk_101EF6008;
    v11 = v7;
    v12 = a2 == 3;
    sub_100F6D7B4(0x800C8);
  }

  v8 = *(a1 + 136);
  if (*(a1 + 320) == 1 && ((v8 - 3) & 0xFFFFFFFD) == 0)
  {
    sub_1013ECFD0(a1);
    sub_1013ED208(a1);
  }

  else if ((v8 - 1) <= 1)
  {
    sub_1013EB748(a1);
  }
}

unsigned __int8 *sub_1013E9FAC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v5 = &ctu::ResultIsNotError::~ResultIsNotError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 1;
}

_BYTE *sub_1013EA04C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  v2[16] = 0;
  return sub_1014026D4(v2, (a2 + 40));
}

uint64_t sub_1013EA064(uint64_t result, uint64_t a2)
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

void sub_1013EA080(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013EA090(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1174405120;
        v16[2] = sub_1013EA254;
        v16[3] = &unk_101F36E10;
        memset(&v16[6], 0, 17);
        v16[4] = v5;
        v8 = *a2;
        if (v8 == 2)
        {
          LOBYTE(v16[6]) = 2;
          *(&v16[6] + 1) = *(a2 + 1);
          BYTE3(v16[6]) = a2[3];
        }

        else if (v8 == 1)
        {
          LOBYTE(v16[6]) = 1;
          *(&v16[6] + 1) = *(a2 + 1);
        }

        v16[5] = a1[7];
        v9 = v5[2];
        if (!v9 || (v10 = v5[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        v13 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v10;
        v15 = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v16;
        dispatch_async(v13, block);
        if (v15)
        {
          sub_100004A34(v15);
        }

        sub_100004A34(v12);
        LOBYTE(v16[6]) = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013EA248(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1013EA254(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = *(v4 + 144);
    if (!v5 || (v5[1] == *(a1 + 49) ? (v6 = v5[2] == *(a1 + 57)) : (v6 = 0), !v6))
    {
      sub_1013EB748(*(a1 + 32));
      operator new();
    }

    if (v5[6] == v5[7])
    {
      sub_1013EAC4C(v4);
    }

    else
    {
      v20 = *(v4 + 40);
      v7 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        sCardSerialNumberAsString();
        v21 = v69 >= 0 ? &buf : buf;
        LODWORD(v66) = 136315138;
        *(&v66 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Eid did not change: %s", &v66, 0xCu);
        if (SHIBYTE(v69) < 0)
        {
          operator delete(buf);
        }
      }
    }

    if (*(a1 + 44) == 1)
    {
      v8 = *(v4 + 144);
      if (v8)
      {
        *(v8 + 72) = *(a1 + 40);
      }
    }

    if (*(v4 + 140) == 9)
    {
      sub_1013E9D9C(v4, 5u);
      return;
    }

    v13 = *v3;
    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v61 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v61);
      }

      v62 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v62);
    }

    v14 = capabilities::euicc::supportsVinylSEPPairingVerification(v7);
    if (!v14 || (capabilities::euicc::supportsEOS(v14) & 1) != 0)
    {
      v15 = 1;
LABEL_30:
      v16 = *(v4 + 144);
      if (v16)
      {
        *(v16 + 198) = v15 ^ 1;
      }

      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 5;
      }

      sub_1013E9D9C(v4, v17);
      if ((v15 & 1) == 0)
      {
        v18 = *(v4 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I EID verification pairing failed, clear any enabled ICCIDs", &buf, 2u);
        }

        *(&buf + 1) = 0;
        v69 = 0;
        *&buf = &buf + 8;
        *(&v66 + 1) = 0;
        v67 = 0;
        v65[0] = off_101F37908;
        v65[3] = v65;
        *&v66 = &v66 + 8;
        sub_1013EAEB0(v4, &buf, &v66, v65);
        sub_100112FB8(v65);
        sub_100009970(&v66, *(&v66 + 1));
        sub_100009970(&buf, *(&buf + 1));
      }

      return;
    }

    ServiceMap = Registry::getServiceMap(*(v4 + 48));
    v23 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    *&buf = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, &buf);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
LABEL_58:
    v32 = Registry::getServiceMap(*(v4 + 48));
    v33 = v32;
    if (v34 < 0)
    {
      v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v34 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    std::mutex::lock(v32);
    *&buf = v34;
    v38 = sub_100009510(&v33[1].__m_.__sig, &buf);
    if (v38)
    {
      v40 = v38[3];
      v39 = v38[4];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v33);
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v41 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      v40 = 0;
    }

    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
LABEL_66:
    if (!v30)
    {
      goto LABEL_75;
    }

    v42 = (*(*v30 + 32))(v30);
    v43 = v40 ? v42 : 0;
    if (v43 != 1)
    {
      goto LABEL_75;
    }

    (*(*v40 + 40))(&buf, v40, @"DisableEidVerification", @"no_backup/com.apple.commcenter.vinyl", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v44 = buf;
    LOBYTE(v66) = 0;
    if (buf)
    {
      v45 = CFGetTypeID(buf);
      if (v45 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v66, v44, v46);
      }
    }

    v47 = v66;
    sub_10000A1EC(&buf);
    if ((v47 & 1) == 0)
    {
LABEL_75:
      v48 = Registry::getServiceMap(*(v4 + 48));
      v49 = v48;
      v50 = "41FactoryDataRecoverySealingClientInterface";
      if (("41FactoryDataRecoverySealingClientInterface" & 0x8000000000000000) != 0)
      {
        v51 = ("41FactoryDataRecoverySealingClientInterface" & 0x7FFFFFFFFFFFFFFFLL);
        v52 = 5381;
        do
        {
          v50 = v52;
          v53 = *v51++;
          v52 = (33 * v52) ^ v53;
        }

        while (v53);
      }

      std::mutex::lock(v48);
      *&buf = v50;
      v54 = sub_100009510(&v49[1].__m_.__sig, &buf);
      if (v54)
      {
        v56 = v54[3];
        v55 = v54[4];
        if (v55)
        {
          v15 = 1;
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v49);
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v55);
          if (!v56)
          {
LABEL_97:
            sub_100004A34(v55);
            goto LABEL_98;
          }

LABEL_85:
          *&v66 = 0;
          v64 = @"eeid";
          CFRetain(@"eeid");
          (*(*v56 + 16))(&v66, v56, &v64);
          sub_100005978(&v64);
          if (v66)
          {
            buf = 0uLL;
            v69 = 0;
            CFStringGetCStringPtr(v66, 0x8000100u);
            CFStringGetLength(v66);
            ctu::parse_hex();
            v57 = buf;
            if (*(&buf + 1) - buf == 16 && (*buf == *(a1 + 49) ? (v58 = *(buf + 8) == *(a1 + 57)) : (v58 = 0), v58))
            {
              v15 = 1;
            }

            else
            {
              v59 = *(v4 + 40);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *v63 = 0;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "EID verification pairing failed, EUICC and FDR sealed EID do not match!", v63, 2u);
                v15 = 0;
                v57 = buf;
              }

              else
              {
                v15 = 0;
              }
            }

            if (v57)
            {
              *(&buf + 1) = v57;
              operator delete(v57);
            }
          }

          else
          {
            v15 = 1;
          }

          sub_100005978(&v66);
          if (!v55)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        std::mutex::unlock(v49);
        if (v56)
        {
          goto LABEL_85;
        }
      }

      else
      {
        std::mutex::unlock(v49);
      }
    }

    v15 = 1;
LABEL_98:
    if ((v41 & 1) == 0)
    {
      sub_100004A34(v39);
    }

    if ((v31 & 1) == 0)
    {
      sub_100004A34(v29);
    }

    goto LABEL_30;
  }

  v9 = *(a1 + 49);
  if (v9 == 3 || v9 == 9)
  {
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I EID temporarily failed; will try again later (availability left at %s)", &buf, 0xCu);
    }
  }

  else if (v9 == 6)
  {
    v12 = *(v4 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sim not supported; clearing CSN", &buf, 2u);
    }

    sub_1013E9D9C(v4, 2u);
  }

  else
  {
    v19 = *(v4 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1013E9FAC(v3);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "EID retrieval failed with error %s; disabling Vinyl", &buf, 0xCu);
    }

    sub_1013E9D9C(v4, 2u);
  }
}

void sub_1013EAB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  if (v28)
  {
    if (v27)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    sub_100004A34(v26);
    if (v27)
    {
      goto LABEL_7;
    }
  }

  sub_100004A34(v25);
  goto LABEL_7;
}

void sub_1013EAC4C(uint64_t a1)
{
  v2 = *(a1 + 140);
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0xE80;
  if (v3 || v4 == 0)
  {
    v14 = 8383;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    *buf = 0;
    sub_1000DCF88(buf, &v14, buf, 3);
    v7 = *(a1 + 16);
    if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
    {
      sub_100013CC4();
    }

    v9 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
    v10 = *(a1 + 152);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = 0;
    v13 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, v17, v17 - *buf);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    VinylCommandDriver::getTapeEuiccInfo();
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    std::__shared_weak_count::__release_weak(v9);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    std::__shared_weak_count::__release_weak(v9);
    if (*buf)
    {
      v17 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Skipping update card info - invalid state", buf, 2u);
    }
  }
}

void sub_1013EAE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::__release_weak(v20);
  v24 = *(v22 - 96);
  if (v24)
  {
    *(v22 - 88) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1013EAEB0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (*(a2 + 16) >= 2uLL && (capabilities::ct::supportsHydra(a1) & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_100074B94(*a2, (a2 + 8), ",", 1, &buf);
      v13 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      *v69 = 136315138;
      v70 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate', too many iccids to activate: %s", v69, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

LABEL_126:
    sub_10010EE84(a4, 257);
    return;
  }

  if ((*(a1 + 136) - 1) <= 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' as vinyl availability is %s", &buf, 0xCu);
    }

    sub_10010EE84(a4, 258);
    return;
  }

  v9 = *(a1 + 144);
  if (!v9)
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' until we have seen availability", &buf, 2u);
    }

    goto LABEL_27;
  }

  if ((*(v9 + 104) & 1) == 0)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' as we have no information about profiles yet", &buf, 2u);
    }

    goto LABEL_27;
  }

  v10 = *(a1 + 140);
  if (v10 <= 0xB && ((1 << v10) & 0xE80) != 0 && *(a1 + 84) == 2)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' as the SIM is %s", &buf, 0xCu);
    }

LABEL_27:
    sub_10010EE84(a4, 259);
    return;
  }

  if (*(v9 + 280) != 1)
  {
    goto LABEL_45;
  }

  sub_1013F05F4(&buf);
  v16 = sub_1013F36E8(v9 + 232, &buf) || a2 + 8 != sub_100007A6C(a2, (*(a1 + 144) + 248));
  if (v68 < 0)
  {
    operator delete(buf.__r_.__value_.__r.__words[2]);
  }

  if (!v16)
  {
LABEL_45:
    active = sSupportsPartialActiveProfiles();
    if (a3[2])
    {
      v21 = active;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sub_100074B94(*a3, (a3 + 1), ",", 1, &buf);
        v23 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v69 = 136315138;
        v70 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Ignoring usable profiles, not supported: %s", v69, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    v24 = *a2;
    if (*a2 != a2 + 8)
    {
      v25 = *(a1 + 144);
      v26 = *(v25 + 80);
      v27 = *(v25 + 88);
      v28 = *a2;
      v62 = *a2;
      v59 = v26;
      while (1)
      {
        p_size = &v28[1].__r_.__value_.__l.__size_;
        if (v26 == v27)
        {
          break;
        }

        v30 = v28[2].__r_.__value_.__s.__data_[7];
        if (v30 >= 0)
        {
          v31 = v28[2].__r_.__value_.__s.__data_[7];
        }

        else
        {
          v31 = v28[1].__r_.__value_.__r.__words[2];
        }

        while (1)
        {
          v32 = *(v26 + 39);
          v33 = v32;
          if ((v32 & 0x80u) != 0)
          {
            v32 = *(v26 + 24);
          }

          if (v32 == v31)
          {
            v34 = v33 >= 0 ? (v26 + 16) : *(v26 + 16);
            v35 = v30 >= 0 ? &v28[1].__r_.__value_.__r.__words[1] : *p_size;
            if (!memcmp(v34, v35, v31))
            {
              break;
            }
          }

          v26 += 216;
          if (v26 == v27)
          {
            v24 = v28;
            goto LABEL_112;
          }
        }

        size = v28->__r_.__value_.__l.__size_;
        if (size)
        {
          do
          {
            v37 = size;
            size = size->__r_.__value_.__r.__words[0];
          }

          while (size);
        }

        else
        {
          do
          {
            v37 = v28->__r_.__value_.__r.__words[2];
            v38 = *v37 == v28;
            v28 = v37;
          }

          while (!v38);
        }

        v28 = v37;
        v24 = v62;
        v26 = v59;
        if (v37 == (a2 + 8))
        {
          goto LABEL_79;
        }
      }

LABEL_112:
      v55 = *(a1 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        if (v24[2].__r_.__value_.__s.__data_[7] < 0)
        {
          p_size = *p_size;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = p_size;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' missing ICCID: %s", &buf, 0xCu);
      }

      goto LABEL_126;
    }

LABEL_79:
    if (sSupportsPartialActiveProfiles())
    {
      v39 = *a3;
      v40 = *(a1 + 144);
      v63 = (a3 + 1);
      if (*a3 != a3 + 1)
      {
        v41 = *(v40 + 80);
        v42 = *(v40 + 88);
        v60 = v41;
        v61 = *(a1 + 144);
        while (1)
        {
          v43 = &v39[1].__r_.__value_.__l.__size_;
          v44 = v41;
          if (v41 != v42)
          {
            v45 = v39[2].__r_.__value_.__s.__data_[7];
            if (v45 >= 0)
            {
              v46 = v39[2].__r_.__value_.__s.__data_[7];
            }

            else
            {
              v46 = v39[1].__r_.__value_.__r.__words[2];
            }

            v44 = v41;
            while (1)
            {
              v47 = *(v44 + 39);
              v48 = v47;
              if ((v47 & 0x80u) != 0)
              {
                v47 = *(v44 + 24);
              }

              if (v47 == v46)
              {
                v49 = v48 >= 0 ? (v44 + 16) : *(v44 + 16);
                v50 = v45 >= 0 ? &v39[1].__r_.__value_.__r.__words[1] : *v43;
                if (!memcmp(v49, v50, v46))
                {
                  break;
                }
              }

              v44 += 216;
              if (v44 == v42)
              {
                goto LABEL_122;
              }
            }
          }

          if (v44 == v42)
          {
            break;
          }

          v51 = v39->__r_.__value_.__l.__size_;
          if (v51)
          {
            do
            {
              v52 = v51;
              v51 = v51->__r_.__value_.__r.__words[0];
            }

            while (v51);
          }

          else
          {
            do
            {
              v52 = v39->__r_.__value_.__r.__words[2];
              v38 = *v52 == v39;
              v39 = v52;
            }

            while (!v38);
          }

          v39 = v52;
          v40 = v61;
          v41 = v60;
          if (v52 == v63)
          {
            goto LABEL_106;
          }
        }

LABEL_122:
        v58 = *(a1 + 40);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          if (v39[2].__r_.__value_.__s.__data_[7] < 0)
          {
            v43 = *v43;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v43;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' missing ICCID: %s", &buf, 0xCu);
        }

        goto LABEL_126;
      }

LABEL_106:
      if (*(v40 + 136) == 1)
      {
        v53 = sub_1013F0CD0((v40 + 112), *a2, *(a2 + 16));
        v40 = *(a1 + 144);
        if (v53)
        {
          if (sub_1013F0CD0((v40 + 144), *a3, a3[2]))
          {
            v54 = *(a1 + 40);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate': possible duplicate request", &buf, 2u);
            }

LABEL_111:
            sub_10010EE84(a4, 0);
            return;
          }

          v40 = *(a1 + 144);
        }
      }

      if ((v40 + 144) != a3)
      {
        sub_1001730B8((v40 + 144), *a3, v63);
      }
    }

    else
    {
      v56 = *(a1 + 144);
      if (*(v56 + 136) == 1 && sub_1013F0CD0((v56 + 112), *a2, *(a2 + 16)))
      {
        v57 = *(a1 + 40);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate': possible duplicate request", &buf, 2u);
        }

        goto LABEL_111;
      }
    }

    sub_1002644E8(*(a1 + 144) + 112, a2);
    sub_10010EE84(a4, 0);
    sub_1013ED75C(a1, 0);
    return;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 144);
    if ((*(v18 + 280) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_10016DCE0(v64, v18 + 232);
    sVinylUniversalProfileIdAsString();
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    *v69 = 136315138;
    v70 = p_buf;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Ignoring 'activate' as a profile to enable is being deleted: %s", v69, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v66 < 0)
    {
      operator delete(__p);
    }
  }

  sub_10010EE84(a4, 257);
}

void sub_1013EB6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1013EB730(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = (a1 + 48);
  v2[16] = 0;
  return sub_1014026D4(v2, (a2 + 48));
}

void sub_1013EB748(void *a1)
{
  v2 = a1[16];
  a1[15] = 0;
  a1[16] = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    v4 = a1[19];
    a1[18] = 0;
    a1[19] = 0;
    sub_1013EB834(a1);
    v5 = *(v3 + 216);
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    v6 = *(v3 + 200);
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    if (v4)
    {

      sub_100004A34(v4);
    }
  }
}

void sub_1013EB81C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EB834(void *a1)
{
  v2 = a1[18];
  if (!v2 || (*(v2 + 195) & 1) == 0 && (*(v2 + 196) & 1) == 0)
  {
    v3 = a1[14];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = a1[13];
        if (v6)
        {
          sub_1013EFCE8(a1, v8);
          (*(*v6 + 16))(v6, v8);
          if (v11[24] == 1)
          {
            v7 = v11;
            sub_100112120(&v7);
          }

          if (v10 < 0)
          {
            operator delete(__p);
          }
        }

        sub_100004A34(v5);
      }
    }
  }
}

void sub_1013EB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100F01778(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_1013EB958(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Model already exists, already received baseband vinyl info", v7, 2u);
    }
  }

  else
  {
    v3 = *(a2 + 12);
    v4 = v3 > 6;
    v5 = (1 << v3) & 0x57;
    if (v4 || v5 == 0)
    {
      operator new();
    }
  }
}

void sub_1013EBAD8(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_1013EBC8C;
        v15[3] = &unk_101F36E70;
        v9 = a1[7];
        v8 = a1[8];
        v15[4] = v5;
        v15[5] = v9;
        v16 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100F11DD4(v17, a2);
        v10 = v5[2];
        if (!v10 || (v11 = v5[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v11;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        sub_100004A34(v13);
        if (v17[0] == 1 && __p)
        {
          v19 = __p;
          operator delete(__p);
        }

        v17[0] = 0;
        if (v16)
        {
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013EBC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1013EBC8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        if (v5 == *(v2 + 144))
        {
          v6 = (a1 + 56);
          v7 = *(a1 + 56);
          if (v7 != 1)
          {
            v12 = *(v2 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_1011396E8((a1 + 56));
              *buf = 136315138;
              *&buf[4] = asString();
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Tape info failed: %s", buf, 0xCu);
              v7 = *v6;
            }

            if (v7 != 2)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              if (v7 == 1)
              {
                v23 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                v23 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v24, v23);
            }

            if (*(a1 + 64) == 2)
            {
              v13 = *(v2 + 80);
              v14 = *(a1 + 65);
              v15 = *(a1 + 66);
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 0x40000000;
              v30 = sub_100F6E440;
              v31 = &unk_101EF6088;
              v32 = v13;
              v33 = 4;
              v34 = v14;
              v35 = v15;
              sub_100F6E294(0x800F1);
            }

            goto LABEL_16;
          }

          memset(buf, 0, sizeof(buf));
          v30 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v28 = 0;
          sub_1013EC13C(v2, "ES10Info1");
          v8 = *v6;
          if (v8 == 1)
          {
            if (sub_1010FCA74((a1 + 64), buf, __p))
            {
              v9 = *(v2 + 40);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *v26 = 0;
                _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not decode card version", v26, 2u);
              }

              v10 = *(v2 + 144);
              if (*(v10 + 47) < 0)
              {
                **(v10 + 24) = 0;
                *(v10 + 32) = 0;
              }

              else
              {
                *(v10 + 24) = 0;
                *(v10 + 47) = 0;
              }

              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

LABEL_34:
              if (SHIBYTE(v30) < 0)
              {
                operator delete(*buf);
              }

LABEL_16:
              sub_100004A34(v4);
              return;
            }

            v16 = *v6;
            if (v16 == 1)
            {
              if (v2 + 424 != a1 + 64)
              {
                sub_1001122C4((v2 + 424), *(a1 + 64), *(a1 + 72), *(a1 + 72) - *(a1 + 64));
              }

              v17 = *(v2 + 144);
              if (*(v17 + 47) < 0)
              {
                operator delete(*(v17 + 24));
              }

              *(v17 + 40) = v30;
              *(v17 + 24) = *buf;
              HIBYTE(v30) = 0;
              buf[0] = 0;
              v18 = *(v2 + 144);
              v19 = v18[6];
              if (v19)
              {
                v18[7] = v19;
                operator delete(v19);
                v18[6] = 0;
                v18[7] = 0;
                v18[8] = 0;
              }

              *(v18 + 3) = *__p;
              v18[8] = v28;
              goto LABEL_34;
            }

            if (v16 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
              goto LABEL_45;
            }

            v20 = __cxa_allocate_exception(0x10uLL);
            v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
            ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
          }

          else
          {
            if (v8 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
LABEL_45:
              goto LABEL_48;
            }

            v20 = __cxa_allocate_exception(0x10uLL);
            v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
            ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
          }

LABEL_48:
          __cxa_throw(v20, v25, v21);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *(v2 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Tape model expired; dropping info result.", buf, 2u);
  }

  if (v4)
  {
    goto LABEL_16;
  }
}

void sub_1013EC0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

void sub_1013EC13C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 328);
  if (v4)
  {
    goto LABEL_7;
  }

  sub_1000CE0A8(&v7);
  v4 = v7;
  v7 = 0;
  v5 = *(a1 + 328);
  *(a1 + 328) = v4;
  if (v5)
  {
    sub_1000DF0B0(a1 + 328, v5);
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      sub_1000DF0B0(&v7, v6);
    }

    v4 = *(a1 + 328);
  }

  if (v4)
  {
LABEL_7:
    sub_1009A2010(v4, a2);
  }
}

uint64_t sub_1013EC1D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100F11DD4(a1 + 56, (a2 + 56));
}

void sub_1013EC218(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EC230(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_1013EC294(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013EC2C8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1013EC318(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_100034C50(&__p, *(a1 + 424), *(a1 + 432), *(a1 + 432) - *(a1 + 424));
  v3 = *(a2 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1013EC3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EC3BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 136315394;
    v31 = subscriber::asString();
    v32 = 2080;
    v33 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling SIM state %s vinyl type %s", buf, 0x16u);
  }

  v6 = *(a2 + 8);
  *(a1 + 140) = v6;
  v7 = *(a2 + 64);
  if (v7 <= 2)
  {
    switch(v7)
    {
      case 0:
        v11 = *(a1 + 40);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v12 = "#I VinylCapability is unknown. Do nothing.";
        goto LABEL_58;
      case 1:
        v13 = capabilities::ct::supportsGemini(v5);
        if ((v13 & 1) != 0 || capabilities::ct::supportsDynamicSID(v13))
        {
          v14 = *(a1 + 84) != 0;
          *(a1 + 84) = 0;
          *(a1 + 320) = 1;
        }

        else
        {
          v14 = 0;
        }

        if (*(a1 + 160) && subscriber::isSimSettled())
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I dropping delete operation as sim is not capable", buf, 2u);
          }

          v16 = **(a1 + 160);
          *buf = 514;
          (*(v16 + 16))();
          v17 = *(a1 + 168);
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
          if (v17)
          {
            sub_100004A34(v17);
          }
        }

        if (!v14)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 2:
        if (*(a1 + 84) != 1)
        {
          v8 = 1;
LABEL_12:
          *(a1 + 84) = v8;
LABEL_29:
          v18 = *(a1 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            *buf = 136315138;
            v31 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I changed card type to %s", buf, 0xCu);
          }

          (*(**(a1 + 64) + 56))(*(a1 + 64), *(a1 + 80), *(a1 + 84));
          goto LABEL_32;
        }

        goto LABEL_32;
    }

    goto LABEL_33;
  }

  if ((v7 - 3) < 2)
  {
    if (*(a1 + 84) != 2)
    {
      v8 = 2;
      goto LABEL_12;
    }

LABEL_32:
    v6 = *(a1 + 140);
    goto LABEL_33;
  }

  if (v7 != 5)
  {
LABEL_33:
    if (v6 <= 6)
    {
      if ((v6 - 3) < 4)
      {
        if (*(a1 + 84))
        {
LABEL_37:
          sub_1013ED75C(a1, 0);
          return;
        }

LABEL_36:
        sub_1013E9D9C(a1, 2u);
        goto LABEL_37;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return;
        }

        goto LABEL_47;
      }

      goto LABEL_51;
    }

    if (v6 <= 8)
    {
      if (v6 != 7)
      {
LABEL_47:
        if (!*(a1 + 84) || *(a2 + 64) == 1)
        {
          sub_1013E9D9C(a1, 2u);
          sub_1013EC8D8(a1);
        }

        else
        {
          v20 = *(a2 + 68);
          if ((v20 & 0x100) != 0)
          {
            if ((v20 & 0x40) != 0)
            {
              if ((v20 & 2) != 0)
              {
                v21 = &_mh_execute_header + 3;
              }

              else
              {
                v21 = &_mh_execute_header + 2;
              }
            }

            else
            {
              v21 = &_mh_execute_header + 1;
            }
          }

          else
          {
            v21 = &_mh_execute_header;
          }

          sub_1013ECC08(a1, v21, 1);
        }

        return;
      }

      goto LABEL_51;
    }

    if (v6 == 9)
    {
      if (*(a1 + 84))
      {
        sub_1013E9D9C(a1, 5u);
        v25 = *(a2 + 68);
        v26 = 0x100000001;
        v27 = 0x100000002;
        if ((v25 & 2) != 0)
        {
          v27 = 0x100000003;
        }

        if ((v25 & 0x40) != 0)
        {
          v26 = v27;
        }

        if ((*(a2 + 68) & 0x100) != 0)
        {
          v28 = v26;
        }

        else
        {
          v28 = &_mh_execute_header;
        }

        sub_1013ECC08(a1, v28, 0);
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (v6 != 10)
    {
      if (v6 != 11)
      {
        return;
      }

LABEL_51:
      v22 = *(a2 + 64);
      v23 = v22 >= 3;
      v24 = v22 - 3;
      if (v23)
      {
        if (v24 <= 2)
        {
          *(a1 + 320) = 1;
        }
      }

      else
      {
        *(a1 + 320) = 0;
        sub_1013E9D9C(a1, 1u);
        sub_1013EC8D8(a1);
      }

      return;
    }

    if (*(a1 + 400) == *(a1 + 408))
    {
      v29[0] = off_101F379D8;
      v29[1] = a1;
      v29[3] = v29;
      VinylCommandDriver::requestPairingNonce();
      sub_100D96EB8(v29);
      return;
    }

    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#I Pairing procedure in flight";
LABEL_58:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    return;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = subscriber::asString();
    *buf = 136315138;
    v31 = v10;
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid vinyl capability %s", buf, 0xCu);
  }
}

BOOL sub_1013EC8D8(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    return v1 != 0;
  }

  v3 = *(a1 + 392);
  if (!v3)
  {
    return v1 != 0;
  }

  *(a1 + 392) = 0;
  (*(*v3 + 8))(v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v11 = sub_1013ECEFC;
  v12 = &unk_101F36ED0;
  v13 = a1;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Get firmware update data internal", buf, 2u);
  }

  if (!*(a1 + 84))
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Invalid card type", buf, 2u);
    }

    goto LABEL_16;
  }

  if (((subscriber::isSimDead() & 1) != 0 || (subscriber::isSimInserted() & 1) == 0) && *(a1 + 84) != 2)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No SIM", buf, 2u);
    }

LABEL_16:
    v16 = 0;
    buf[0] = 0;
    sub_1001140B4(buf, &v16);
    v11(v10, buf);
    if (buf[0] == 1)
    {
      sub_10001021C(v15);
    }

    buf[0] = 0;
    v7 = &v16;
    goto LABEL_19;
  }

  if (*(a1 + 320))
  {
    *buf = _NSConcreteStackBlock;
    v15[0] = 0x40000000;
    v15[1] = sub_1013FF1E8;
    v15[2] = &unk_101F375F8;
    v15[3] = v10;
    v15[4] = a1;
    VinylCommandDriver::getFirmwareUpdateData();
    return v1 != 0;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I driver not ready", buf, 2u);
  }

  buf[0] = 2;
  LOBYTE(v15[0]) = 19;
  v11(v10, buf);
  if (buf[0] == 1)
  {
    v7 = v15;
LABEL_19:
    sub_10001021C(v7);
  }

  return v1 != 0;
}

void sub_1013ECBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_10001021C((v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1013ECC08(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (*(a1 + 320) & 1) == 0)
  {
    if (capabilities::ct::requireVinylManagerInd(a1))
    {
      if ((*(a1 + 320) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *(a1 + 320) = 1;
    }

    if (subscriber::isSimInserted())
    {
      v5 = *(a1 + 84);
      if (v5 == 2)
      {
        if (subscriber::isSimDead())
        {
          return;
        }

        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Updating EID", &v18, 2u);
        }

        v13 = *(a1 + 16);
        if (!v13 || (v14 = *(a1 + 8), (v15 = std::__shared_weak_count::lock(v13)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v15;
        p_shared_weak_owners = &v15->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1174405120;
        v19 = sub_1013EA090;
        v20 = &unk_101F36E40;
        v21 = a1;
        v22 = v14;
        v23 = v10;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v24 = a2;
        VinylCommandDriver::getTapeEid();
        goto LABEL_21;
      }

      if (v5 == 1)
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Vinyl", &v18, 2u);
        }

        v7 = *(a1 + 16);
        if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        v11 = &v9->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1174405120;
        v19 = sub_1013E988C;
        v20 = &unk_101F36DE0;
        v21 = a1;
        v22 = v8;
        v23 = v10;
        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
        VinylCommandDriver::queryCsn();
LABEL_21:
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }

        std::__shared_weak_count::__release_weak(v10);
        return;
      }

      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v18) = 136315138;
        *(&v18 + 4) = asString();
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Card type invalid (%s)", &v18, 0xCu);
      }
    }
  }
}

void sub_1013ECED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void sub_1013ECEFC(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 385) == 1)
  {
    *(v3 + 385) = 0;
  }

  while (*(v3 + 376))
  {
    v4 = *(*(*(v3 + 344) + ((*(v3 + 368) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v3 + 368) & 0x1FFLL));
    v5 = 0;
    v6 = 0;
    sub_1001126E0(&v5, a2);
    (*(v4 + 16))(v4, &v5);
    if (v5 == 1)
    {
      sub_10001021C(&v6);
    }

    sub_1014033B4(v3 + 336);
  }
}

void sub_1013ECFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_10001021C((v9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1013ECFD0(void *a1)
{
  v1 = a1[18];
  if (v1 && (*(v1 + 194) & 1) == 0)
  {
    *(v1 + 194) = 1;
    v3 = a1[2];
    if (!v3 || (v4 = std::__shared_weak_count::lock(v3)) == 0)
    {
      sub_100013CC4();
    }

    v5 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v6 = a1[19];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = a1[5];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fetching tape profile info list", buf, 2u);
    }

    *buf = 0;
    v14 = 0;
    v15 = 0;
    v9 = capabilities::ct::supportsHydra(v8);
    sub_1010FA3A0(buf, v9);
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_100034C50(&__p, *buf, v14, v14 - *buf);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    VinylCommandDriver::tapeListProfilesInfo();
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    std::__shared_weak_count::__release_weak(v5);
    if (*buf)
    {
      v14 = *buf;
      operator delete(*buf);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1013ED1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_1013ED208(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 && *(a1 + 320) == 1 && ((*(a1 + 136) - 3) & 0xFFFFFFFD) == 0 && *(a1 + 84) != 1)
  {
    v3 = *(v1 + 216);
    if (v3)
    {
      if ((*(*v3 + 56))(v3))
      {
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Receipts operation complete; resetting to start a new one", buf, 2u);
        }

        v5 = *(a1 + 144);
        v6 = *(v5 + 224);
        *(v5 + 216) = 0;
        *(v5 + 224) = 0;
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      else if (*(*(a1 + 144) + 216))
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Receipts operation already in progress", buf, 2u);
        }

        sub_1013ED75C(a1, 0);
      }
    }

    if (!*(*(a1 + 144) + 216))
    {
      v8 = *(a1 + 64);
      v9 = *(a1 + 24);
      object = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      v10 = *(a1 + 80);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = sub_1013EFDEC;
      v14[3] = &unk_101F36EF0;
      v14[4] = a1;
      (*(*v8 + 112))(buf, v8, &object, v10, v14);
      v11 = *(a1 + 144);
      v12 = *buf;
      memset(buf, 0, sizeof(buf));
      v13 = *(v11 + 224);
      *(v11 + 216) = v12;
      if (v13)
      {
        sub_100004A34(v13);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (object)
      {
        dispatch_release(object);
      }

      sub_1013ED75C(a1, 0);
    }
  }
}

void sub_1013ED418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1013ED430(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (!v1)
  {
    return 0;
  }

  if (*(a1 + 84) == 2)
  {
    return 0;
  }

  v3 = *(v1 + 200);
  return v3 && ((*(*v3 + 56))(v3) & 1) == 0 && !(*(**(*(a1 + 144) + 200) + 64))(*(*(a1 + 144) + 200));
}

BOOL sub_1013ED4DC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (!v1)
  {
    return 1;
  }

  if (*(v1 + 192) == 1)
  {
    v3 = *(a1 + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v16 = 0;
    v5 = "#I profile change still in flight; must wait.";
    v6 = &v16;
    goto LABEL_12;
  }

  if (*(v1 + 193) == 1)
  {
    v3 = *(a1 + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v5 = "#I profile update required; must wait for a profiles update";
    v6 = &v15;
    goto LABEL_12;
  }

  if (*(v1 + 197) == 1)
  {
    v3 = *(a1 + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v5 = "#I profile delete in progress; must wait for a profile deletion";
    v6 = buf;
    goto LABEL_12;
  }

  if (*(a1 + 84) == 2 && *(a1 + 216))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I allow signed payload", v13, 2u);
    }

    return 1;
  }

  v8 = *(v1 + 216);
  if (!v8 || (v9 = (*(*v8 + 56))(v8), v1 = *(a1 + 144), (v9 & 1) != 0))
  {
LABEL_22:
    v10 = *(v1 + 200);
    if (!v10 || ((*(*v10 + 56))(v10) & 1) != 0 || ((*(**(*(a1 + 144) + 200) + 64))(*(*(a1 + 144) + 200)) & 1) != 0)
    {
      return 1;
    }

    v3 = *(a1 + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v11 = 0;
      v5 = "#I install operation is already active; must wait";
      v6 = &v11;
      goto LABEL_12;
    }

    return result;
  }

  if ((*(**(v1 + 216) + 64))(*(v1 + 216)))
  {
    v1 = *(a1 + 144);
    goto LABEL_22;
  }

  v3 = *(a1 + 40);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = 0;
    v5 = "#I receipts operation is already active; must wait.";
    v6 = &v12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    return 0;
  }

  return result;
}

void sub_1013ED75C(uint64_t a1, char a2)
{
  if (*(a1 + 144))
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 104);
LABEL_14:
        if (subscriber::isSimDead() && *(a1 + 84) != 2)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SIM is dead, nothing to do", buf, 2u);
          }

          v18 = *(a1 + 128);
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          if (v18)
          {
            sub_100004A34(v18);
          }

          if (v6 && (a2 & 1) == 0)
          {
            (*(*v6 + 40))(v6, *(a1 + 80));
          }

          goto LABEL_54;
        }

        v11 = *(a1 + 120);
        if (!v11)
        {
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I have pending operation, boot baseband", buf, 2u);
          }

          v56[0] = off_101F37A58;
          v56[1] = a1;
          v56[3] = v56;
          (*(*v6 + 32))(buf, v6, v56);
          v15 = *buf;
          memset(buf, 0, sizeof(buf));
          v16 = *(a1 + 128);
          *(a1 + 120) = v15;
          if (v16)
          {
            sub_100004A34(v16);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }
          }

          sub_10002B644(v56);
          goto LABEL_54;
        }

        if ((*(a1 + 320) != 1 || ((*(a1 + 136) - 3) & 0xFFFFFFFD) != 0) && !*(a1 + 376))
        {
          v20 = *(a1 + 40);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *buf = 136315138;
          *&buf[4] = asString();
          v13 = "#I availability %s not ready yet";
          goto LABEL_46;
        }

        if (*(*(a1 + 144) + 194) == 1)
        {
          v12 = *(a1 + 40);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *buf = 0;
          v13 = "#I fetch-profiles is pending, nothing to start";
          goto LABEL_51;
        }

        if (v6)
        {
          if (!(*(*v6 + 24))(v6))
          {
            v12 = *(a1 + 40);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_54;
            }

            *buf = 0;
            v13 = "#I Can Start Next Operation false, must wait";
            goto LABEL_51;
          }

          v11 = *(a1 + 120);
        }

        v19 = *(v11 + 32);
        if (!v19 || *(v19 + 68) != 2)
        {
          v12 = *(a1 + 40);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *buf = 0;
          v13 = "#I Required vinyl assertions not ready, must wait";
          goto LABEL_51;
        }

        if (subscriber::isSimInTransientState())
        {
          v20 = *(a1 + 40);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *buf = 136315138;
          *&buf[4] = subscriber::asString();
          v13 = "#I Cannot run any operations, due to sim state (%s)";
LABEL_46:
          v21 = v20;
          v22 = 12;
LABEL_53:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v13, buf, v22);
          goto LABEL_54;
        }

        if ((*(a1 + 385) != 1 || *(a1 + 384) == 1) && sub_1013EC8D8(a1))
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "#I Get firmware data callback";
LABEL_51:
            v21 = v12;
LABEL_52:
            v22 = 2;
            goto LABEL_53;
          }

LABEL_54:
          if (v5)
          {
            sub_100004A34(v5);
          }

          return;
        }

        if (*(a1 + 216))
        {
          v23 = *(a1 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I signed payload required", buf, 2u);
          }

          sub_1013EE23C(a1);
          goto LABEL_54;
        }

        if (*(a1 + 264))
        {
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I secure auth required", buf, 2u);
          }

          sub_1013EE57C(a1);
          goto LABEL_54;
        }

        if (*(a1 + 312))
        {
          v25 = *(a1 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I set nickname required", buf, 2u);
          }

          sub_1013EE754(a1);
          goto LABEL_54;
        }

        if (sub_1013EE9C4(a1))
        {
          v26 = *(a1 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I profile change required", buf, 2u);
          }

          sub_1013EEACC(a1);
          goto LABEL_54;
        }

        v27 = *(a1 + 144);
        if (v27 && (*(v27 + 280) & 1) != 0)
        {
          if (!*(a1 + 160))
          {
            v28 = *(a1 + 40);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I profile delete required", buf, 2u);
            }

            sub_1013EF6E0(a1);
            goto LABEL_54;
          }

          goto LABEL_85;
        }

        if (*(a1 + 160))
        {
LABEL_85:
          sub_1013EF5F8(a1);
          goto LABEL_54;
        }

        v29 = *(a1 + 140);
        if (v29 <= 0xB && ((1 << v29) & 0xE80) != 0)
        {
          v30 = *(v27 + 224);
          *(v27 + 216) = 0;
          *(v27 + 224) = 0;
          if (v30)
          {
            sub_100004A34(v30);
          }

          v31 = *(a1 + 144);
          v32 = *(v31 + 208);
          *(v31 + 200) = 0;
          *(v31 + 208) = 0;
          if (v32)
          {
            sub_100004A34(v32);
          }

LABEL_92:
          if (!*(a1 + 120))
          {
            goto LABEL_54;
          }

          v33 = *(a1 + 128);
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          if (!v33)
          {
            goto LABEL_54;
          }

          goto LABEL_94;
        }

        if (sub_1013EFA4C(a1))
        {
          goto LABEL_54;
        }

        v34 = *(a1 + 144);
        if (*(v34 + 195) == 1)
        {
          v35 = *(v34 + 200);
          if (v35)
          {
            if (!(*(*v35 + 56))(v35))
            {
              goto LABEL_113;
            }

            v34 = *(a1 + 144);
          }
        }

        v36 = *(v34 + 216);
        if (v36 && (*(*v36 + 64))(v36))
        {
          v37 = (*(*v6 + 64))(v6);
          v38 = *(a1 + 40);
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          if (v37)
          {
            if (v39)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I starting receipts operation", buf, 2u);
            }

            v40 = *(*(a1 + 144) + 216);
            v41 = *(a1 + 96);
            v53 = *(a1 + 88);
            v54 = v41;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1013EFCE8(a1, buf);
            (*(*v40 + 16))(v40, &v53, buf);
            sub_100F01778(buf);
            v33 = v54;
            if (!v54)
            {
              goto LABEL_54;
            }

            goto LABEL_94;
          }

          if (v39)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Cannot start receipt operation without Internet", buf, 2u);
          }

          v42 = *(a1 + 144);
          v43 = *(v42 + 224);
          *(v42 + 216) = 0;
          *(v42 + 224) = 0;
          if (v43)
          {
            sub_100004A34(v43);
          }
        }

LABEL_113:
        v44 = *(*(a1 + 144) + 200);
        if (!v44 || !(*(*v44 + 64))(v44))
        {
          v48 = *(a1 + 392);
          v49 = *(a1 + 40);
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v48)
          {
            if (v50)
            {
              *buf = 0;
              v13 = "#I Firmware data info request still pending - wait";
              v21 = v49;
              goto LABEL_52;
            }

            goto LABEL_54;
          }

          if (v50)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I All operations appear to be complete; nothing to do", buf, 2u);
          }

          if (v6 && (a2 & 1) == 0)
          {
            (*(*v6 + 40))(v6, *(a1 + 80));
          }

          goto LABEL_92;
        }

        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Start install operation", buf, 2u);
        }

        v46 = *(*(a1 + 144) + 200);
        v47 = *(a1 + 96);
        v51 = *(a1 + 88);
        v52 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1013EFCE8(a1, buf);
        (*(*v46 + 16))(v46, &v51, buf);
        sub_100F01778(buf);
        v33 = v52;
        if (!v52)
        {
          goto LABEL_54;
        }

LABEL_94:
        sub_100004A34(v33);
        goto LABEL_54;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_14;
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I no model, so nothing to do", buf, 2u);
  }

  v8 = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (v8)
  {
    sub_100004A34(v8);
  }

  if ((subscriber::isSimInTransientState() & 1) == 0)
  {
    while (*(a1 + 376))
    {
      v9 = *(a1 + 368);
      v10 = *(*(a1 + 344) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8));
      *buf = 0;
      sub_1013EE1B8(*(v10 + 8 * (v9 & 0x1FF)), buf);
      sub_10001021C(buf);
      sub_1014033B4(a1 + 336);
    }
  }
}

void sub_1013EE12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_100F01778(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

const void **sub_1013EE1B8(uint64_t a1, const void **a2)
{
  LOBYTE(v4) = 0;
  sub_1001140B4(&v4, a2);
  result = (*(a1 + 16))(a1, &v4);
  if (v4 == 1)
  {
    return sub_10001021C(&v5);
  }

  return result;
}

void sub_1013EE218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, const void *a10)
{
  if (a9 == 1)
  {
    sub_10001021C(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EE23C(uint64_t a1)
{
  if (*(a1 + 216))
  {
    v2 = *(*(*(a1 + 184) + ((*(a1 + 208) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 208));
    v7 = v2;
    v3 = *(*(*(a1 + 184) + ((*(a1 + 208) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 208) + 8);
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_101403438(a1 + 176);
    if (*(a1 + 84) == 1)
    {
      sub_1013EC13C(a1, "SignId");
      v21 = 0;
      v22 = 0;
      v20 = 0;
      sub_100034C50(&v20, *v7, *(v7 + 8), *(v7 + 8) - *v7);
      v14 = _NSConcreteStackBlock;
      v15 = 1174405120;
      v16 = sub_1013F5A34;
      v17 = &unk_101F37158;
      v18 = a1;
      v19 = v7;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VinylCommandDriver::getSignIdMap();
      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (*(&v19 + 1))
      {
        sub_100004A34(*(&v19 + 1));
      }
    }

    else
    {
      v5 = v7 + 32;
      v6 = *(v7 + 32);
      *buf = 0;
      v12 = 0;
      v13 = 0;
      if (v6 == *(v7 + 40))
      {
        v5 = *(a1 + 144) + 48;
      }

      if (sub_101102FA8(v5, v7, buf, *(v7 + 24)))
      {
        sub_1013EC13C(a1, "SignId");
        v9 = 0;
        v10 = 0;
        __p = 0;
        sub_100034C50(&__p, *buf, v12, v12 - *buf);
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        VinylCommandDriver::signPayload();
        if (__p)
        {
          v9 = __p;
          operator delete(__p);
        }

        if (*(&v7 + 1))
        {
          sub_100004A34(*(&v7 + 1));
        }
      }

      else
      {
        sub_1013F5BF0(*(v7 + 56), 1);
      }

      if (*buf)
      {
        v12 = *buf;
        operator delete(*buf);
      }
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to generated signed payload but no operation exists", buf, 2u);
    }
  }
}

void sub_1013EE504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EE57C(void *a1)
{
  if (a1[33])
  {
    v2 = *(*(a1[29] + ((a1[32] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[32]);
    v5 = v2;
    v3 = *(*(a1[29] + ((a1[32] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[32] + 8);
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_101403438((a1 + 28));
    sub_1013EC13C(a1, "SecureAuthReq");
    v7 = 0;
    v8 = 0;
    __p = 0;
    sub_100034C50(&__p, *v5, *(v5 + 8), *(v5 + 8) - *v5);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylCommandDriver::secureAuth();
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (*(&v5 + 1))
    {
      sub_100004A34(*(&v5 + 1));
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  else
  {
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Attempt to generated signed payload but no operation exists", buf, 2u);
    }
  }
}

void sub_1013EE718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013EE754(void *a1)
{
  if (a1[39])
  {
    v2 = *(*(a1[35] + ((a1[38] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[38]);
    v9 = v2;
    v3 = *(*(a1[35] + ((a1[38] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[38] + 8);
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_101403438((a1 + 34));
    *buf = 0;
    v14 = 0;
    v15 = 0;
    if (sub_1010FFAC0(v9, (v9 + 24), buf))
    {
      v4 = a1[2];
      if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
      {
        sub_100013CC4();
      }

      v6 = v5;
      p_shared_weak_owners = &v5->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      v11 = 0;
      v12 = 0;
      __p = 0;
      sub_100034C50(&__p, *buf, v14, v14 - *buf);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VinylCommandDriver::tapeSetNickname();
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (*(&v9 + 1))
      {
        sub_100004A34(*(&v9 + 1));
      }

      std::__shared_weak_count::__release_weak(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    if (*buf)
    {
      v14 = *buf;
      operator delete(*buf);
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  else
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempt to set nickname but no operation exists", buf, 2u);
    }
  }
}

void sub_1013EE958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v22);
  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013EE9C4(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (*(v1 + 136) != 1)
  {
    return 0;
  }

  if (*(v1 + 104) != 1)
  {
    return 0;
  }

  if (*(v1 + 80) == *(v1 + 88))
  {
    return 0;
  }

  v3 = *(a1 + 140) - 7;
  if (v3 < 5 && ((0x1Du >> v3) & 1) != 0)
  {
    return 0;
  }

  sub_100074920(v7, v1 + 112);
  if (sub_1013F09BC(a1, 1, v7))
  {
    v4 = 1;
  }

  else
  {
    sub_100074920(v6, *(a1 + 144) + 144);
    v4 = sub_1013F09BC(a1, 2, v6);
    sub_100009970(v6, v6[1]);
  }

  sub_100009970(v7, v7[1]);
  return v4;
}

void sub_1013EEAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100009970(&a9, a10);
  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_1013EEACC(void *a1)
{
  v2 = a1[18];
  if (*(v2 + 192) == 1)
  {
    v3 = a1[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Profile change in progress", &buf, 2u);
    }

    return;
  }

  *(v2 + 192) = 257;
  v45 = 0;
  v46 = 0;
  v43[1] = 0;
  v44 = &v45;
  v42 = v43;
  v43[0] = 0;
  if (*(v2 + 104) != 1 || (v4 = *(v2 + 80), v5 = *(v2 + 88), v4 == v5))
  {
    memset(&v41, 0, sizeof(v41));
    goto LABEL_15;
  }

  do
  {
    v6 = *(v4 + 88);
    if (v6 == 1)
    {
      v7 = &v44;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v7 = &v42;
    }

    sub_100005BA0(v7, (v4 + 16));
LABEL_11:
    v4 += 216;
  }

  while (v4 != v5);
  v2 = a1[18];
  memset(&v41, 0, sizeof(v41));
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(v2 + 195) == 1 && (v8 = *(v2 + 200)) != 0 && ((*(*v8 + 56))(v8) & 1) == 0)
  {
    if (*(a1[18] + 128) == v46)
    {
      v27 = a1[14];
      if (v27)
      {
        v28 = std::__shared_weak_count::lock(v27);
        if (v28)
        {
          v29 = v28;
          v30 = a1[13];
          if (v30)
          {
            (*(*v30 + 48))(&buf);
            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }

            v41 = buf;
          }

          sub_100004A34(v29);
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
LABEL_18:
    v9 = v44;
    if (v44 != &v45)
    {
      while (sub_10016FA58(a1[18] + 112, v9 + 4))
      {
        v10 = v9[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v9[2];
            v14 = *v11 == v9;
            v9 = v11;
          }

          while (!v14);
        }

        v9 = v11;
        if (v11 == &v45)
        {
          goto LABEL_28;
        }
      }

      std::string::operator=(&v41, (v9 + 4));
    }

LABEL_28:
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v13 = v42;
    if (size)
    {
      v14 = 1;
    }

    else
    {
      v14 = v42 == v43;
    }

    if (!v14)
    {
      while (sub_10016FA58(a1[18] + 144, v13 + 4))
      {
        v15 = v13[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v13[2];
            v14 = *v16 == v13;
            v13 = v16;
          }

          while (!v14);
        }

        v13 = v16;
        if (v16 == v43)
        {
          goto LABEL_43;
        }
      }

      std::string::operator=(&v41, (v13 + 4));
    }

LABEL_43:
    v17 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    v18 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v41.__r_.__value_.__l.__size_;
    }

    if (v17)
    {
      v19 = a1[5];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v41.__r_.__value_.__r.__words[0];
        if (v18 >= 0)
        {
          v20 = &v41;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Disabling iccid: %s", &buf, 0xCu);
      }

      v21 = a1[19];
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
      }

      v48 = 0;
      operator new();
    }

    memset(&v40, 0, sizeof(v40));
    v22 = a1[18];
    v23 = *(v22 + 112);
    v24 = (v22 + 120);
    if (v23 != (v22 + 120))
    {
      while (sub_10016FA58(&v44, v23 + 4))
      {
        v25 = v23[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v23[2];
            v14 = *v26 == v23;
            v23 = v26;
          }

          while (!v14);
        }

        v23 = v26;
        if (v26 == v24)
        {
          goto LABEL_75;
        }
      }

      std::string::operator=(&v40, (v23 + 4));
    }

LABEL_75:
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v40.__r_.__value_.__l.__size_;
    }

    if (!v31)
    {
      v35 = a1[18];
      v36 = *(v35 + 144);
      v37 = (v35 + 152);
      if (v36 != (v35 + 152))
      {
        while (sub_10016FA58(&v42, v36 + 4))
        {
          v38 = v36[1];
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v36[2];
              v14 = *v39 == v36;
              v36 = v39;
            }

            while (!v14);
          }

          v36 = v39;
          if (v39 == v37)
          {
            goto LABEL_79;
          }
        }

        std::string::operator=(&v40, (v36 + 4));
      }
    }

LABEL_79:
    v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    v33 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v40.__r_.__value_.__l.__size_;
    }

    if (v32)
    {
      v34 = a1[19];
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
      }

      v47 = 0;
      operator new();
    }

    *(a1[18] + 192) = 0;
    if (v33 < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  sub_100009970(&v42, v43[0]);
  sub_100009970(&v44, v45);
}

void sub_1013EF438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, char *a24, uint64_t a25, char a26, char *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_100004A34(v39);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a23, a24);
  sub_100009970(&a26, a27);
  _Unwind_Resume(a1);
}

void sub_1013EF5F8(void *a1)
{
  if (a1[20])
  {
    v2 = a1[18];
    if (v2)
    {
      if ((*(v2 + 197) & 1) == 0)
      {
        v3 = a1[5];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending pending delete on model avilability", buf, 2u);
          v2 = a1[18];
        }

        *(v2 + 197) = 1;
        sub_1013F5030(a1);
      }
    }
  }
}

void sub_1013EF6E0(void *a1)
{
  v2 = a1[18];
  v3 = a1[19];
  v4 = v2;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = a1[18];
  }

  if (v4[280] == 1)
  {
    if (v4[272] == 1)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1174405120;
      v14[2] = sub_1013F0464;
      v14[3] = &unk_101F36F70;
      v14[4] = a1;
      v14[5] = v2;
      v15 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a1[18];
      }

      v4[197] = 1;
      sub_1013F05F4(buf);
      v5 = v4[280] == 1 && sub_1013F36E8((v4 + 232), buf);
      if (v24 < 0)
      {
        operator delete(v23);
      }

      v7 = a1[5];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Delete all profiles", buf, 2u);
        }

        sub_1013F0690(a1);
      }

      else
      {
        if (v8)
        {
          v9 = a1[18];
          if ((*(v9 + 280) & 1) == 0)
          {
            sub_1000D1644();
          }

          v16 = *(v9 + 232);
          if (*(v9 + 271) < 0)
          {
            sub_100005F2C(&__p, *(v9 + 248), *(v9 + 256));
          }

          else
          {
            __p = *(v9 + 248);
            v18 = *(v9 + 264);
          }

          v19 = *(v9 + 272);
          sVinylUniversalProfileIdAsString();
          if (SHIBYTE(v23) >= 0)
          {
            v10 = buf;
          }

          else
          {
            v10 = *buf;
          }

          *v20 = 136315138;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Deleting profile %s", v20, 0xCu);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p);
          }
        }

        v11 = a1[18];
        if (*(v11 + 271) < 0)
        {
          sub_100005F2C(v12, *(v11 + 248), *(v11 + 256));
        }

        else
        {
          *v12 = *(v11 + 248);
          v13 = *(v11 + 264);
        }

        sub_1013F0790(a1, v12, v14);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      sub_1013ED208(a1);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      v6 = a1[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E Invalid profile type to attempt delete", buf, 2u);
      }
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1013EF9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013EFA4C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = v2[41];
  if (v3)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 48))(__p, v3);
      if (v20 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315138;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I (%s): is in progress", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }

  v6 = v2[37];
  if (v6 != v2[38])
  {
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v2[42];
    v2[41] = v8;
    v2[42] = v7;
    if (v9)
    {
      sub_100004A34(v9);
    }

    v10 = *(a1 + 144);
    sub_1014034BC(*(v10 + 296), *(v10 + 304), (*(v10 + 304) - *(v10 + 296)) >> 4);
    v11 = *(v10 + 304);
    v12 = *(v11 - 8);
    if (v12)
    {
      sub_100004A34(v12);
    }

    *(v10 + 304) = v11 - 16;
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      (*(**(*(a1 + 144) + 328) + 48))(__p);
      v14 = v20 >= 0 ? __p : __p[0];
      v15 = (*(*(a1 + 144) + 304) - *(*(a1 + 144) + 296)) >> 4;
      *buf = 136315394;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Running:(%s), pending:(%zu)", buf, 0x16u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**(*(a1 + 144) + 328) + 16))(*(*(a1 + 144) + 328));
    return 1;
  }

  v17 = *(a1 + 40);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v18)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No pending vinyl tasks", __p, 2u);
    return 0;
  }

  return result;
}

std::string *sub_1013EFCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  result = (a2 + 56);
  *(a2 + 72) = 0u;
  v5 = *(a1 + 80);
  *a2 = 0;
  *(a2 + 4) = v5;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  result->__r_.__value_.__s.__data_[0] = 0;
  *(a2 + 12) = *(a1 + 136);
  v6 = *(a1 + 144);
  if (v6)
  {
    *(a2 + 16) = *(v6 + 8);
    if (*(v6 + 104) == 1)
    {
      sub_1013F2310(result, (v6 + 80));
      v6 = *(a1 + 144);
    }

    *a2 = *v6;
    result = std::string::operator=((a2 + 32), (v6 + 24));
    *(a2 + 8) = *(*(a1 + 144) + 72);
  }

  return result;
}

void sub_1013EFDA0(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(v2 + 336);
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1013ED75C(a1, 0);
}

void sub_1013EFDEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I did complete receipts operation", v3, 2u);
  }

  sub_1013ED75C(v1, 0);
}

void sub_1013EFE5C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_1013F0010;
        v15[3] = &unk_101F36F10;
        v9 = a1[7];
        v8 = a1[8];
        v15[4] = v5;
        v15[5] = v9;
        v16 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100F11DD4(v17, a2);
        v10 = v5[2];
        if (!v10 || (v11 = v5[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = v5[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101402DDC;
        block[3] = &unk_101F378C8;
        block[5] = v11;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        sub_100004A34(v13);
        if (v17[0] == 1 && __p)
        {
          v19 = __p;
          operator delete(__p);
        }

        v17[0] = 0;
        if (v16)
        {
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1013EFFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1013F0010(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        if (v5 == *(v2 + 144))
        {
          v6 = (a1 + 56);
          v7 = *(a1 + 56);
          if (v7 == 1)
          {
            v23 = 0uLL;
            v24 = 0;
            if (sub_1010FA45C((a1 + 64)))
            {
              v8 = *(v2 + 40);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to decode tape profile info list from baseband", buf, 2u);
              }
            }

            else
            {
              v15 = *(v2 + 40);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I No tape profiles decoded from baseband", buf, 2u);
              }
            }

            *buf = 0;
            v21 = 0;
            v22 = 0;
            sub_100112528(buf, v23, *(&v23 + 1), 0x84BDA12F684BDA13 * ((*(&v23 + 1) - v23) >> 3));
            sub_1013F0DAC(v2, buf);
            v19 = buf;
            sub_100112120(&v19);
            v19 = &v23;
            sub_100112120(&v19);
LABEL_24:
            *(*(v2 + 144) + 193) = 0;
            sub_1013ED75C(v2, 0);
LABEL_13:
            sub_100004A34(v4);
            return;
          }

          v10 = *(v2 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1011396E8((a1 + 56));
            LODWORD(v23) = 136315138;
            *(&v23 + 4) = asString();
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Tape profile info list failed: %s", &v23, 0xCu);
            v7 = *v6;
          }

          if (v7 == 2)
          {
            v11 = *(v2 + 80);
            v12 = *(a1 + 65);
            v13 = *(a1 + 66);
            *&v23 = _NSConcreteStackBlock;
            *(&v23 + 1) = 0x40000000;
            v24 = sub_100F6E440;
            v25 = &unk_101EF6088;
            v26 = v11;
            v27 = 13;
            v28 = v12;
            v29 = v13;
            sub_100F6E294(0x800F1);
            v14 = *v6;
            if (v14 == 2)
            {
              if (*(a1 + 64) == 11)
              {
                sub_1013E9D9C(v2, 4u);
              }

              goto LABEL_24;
            }

            if (v14 == 1)
            {
              goto LABEL_28;
            }
          }

          else if (v7 == 1)
          {
LABEL_28:
            exception = __cxa_allocate_exception(0x10uLL);
            v17 = &ctu::ResultIsNotError::~ResultIsNotError;
            ctu::ResultIsNotError::ResultIsNotError(exception);
            goto LABEL_30;
          }

          exception = __cxa_allocate_exception(0x10uLL);
          v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_30:
          __cxa_throw(exception, v18, v17);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Vinyl model expired; dropping tape profile info list result.", &v23, 2u);
  }

  if (v4)
  {
    goto LABEL_13;
  }
}

void sub_1013F0404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1013F0464(void *a1, unsigned __int8 *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        v8 = v3[18];
        if (v7 == v8)
        {
          v9 = *(v8 + 288);
          v16 = 0;
          if (*a2 - 1 <= 1)
          {
            v16 = *a2;
          }

          (*(v9 + 16))(v9, &v16);
          v10 = v3[18];
          v11 = *(v10 + 288);
          *(v10 + 288) = 0;
          if (v11)
          {
            _Block_release(v11);
          }

          v12 = v3[18];
          if (*(v12 + 280) == 1)
          {
            v13 = v3[18];
            if (*(v12 + 271) < 0)
            {
              operator delete(*(v12 + 248));
              v13 = v3[18];
            }

            *(v12 + 280) = 0;
            v12 = v13;
          }

          *(v12 + 197) = 0;
          if (*a2 == 1 && a2[1] == 1)
          {
            sub_1013ECFD0(v3);
          }

LABEL_20:
          sub_100004A34(v6);
          return;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = v3[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Vinyl model expired; ignoring delete profile result.", v15, 2u);
  }

  if (v6)
  {
    goto LABEL_20;
  }
}