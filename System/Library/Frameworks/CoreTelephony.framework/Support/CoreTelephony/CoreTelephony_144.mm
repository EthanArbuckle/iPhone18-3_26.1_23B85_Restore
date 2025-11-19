void sub_1012829A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 804) != *(a1 + 1404))
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CSIBOOLAsString(*(a2 + 804));
      v6 = CSIBOOLAsString(*(a1 + 1404));
      v7 = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Satellite system changed from %s to %s", &v7, 0x16u);
    }

    sub_10127E7F4(a1, 1);
  }
}

void sub_101282AB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 804) != *(a1 + 2212))
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), 2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CSIBOOLAsString(*(a2 + 804));
      v6 = CSIBOOLAsString(*(a1 + 2212));
      v7 = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Satellite system changed from %s to %s", &v7, 0x16u);
    }

    sub_10127E7F4(a1, 2);
  }
}

void sub_101282BC0(uint64_t a1)
{
  v2 = (a1 + 56);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v11 = 0;
    v12 = 1;
    if (!v10)
    {
      goto LABEL_59;
    }

    goto LABEL_10;
  }

  v10 = v9[3];
  v11 = v9[4];
  if (!v11)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v12 = 0;
  if (!v10)
  {
    goto LABEL_59;
  }

LABEL_10:
  v13 = Registry::getServiceMap(*v2);
  v14 = v13;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19)
  {
    v20 = v19[3];
    v21 = v19[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v22 = 0;
      if (!v20)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v14);
  v21 = 0;
  v22 = 1;
  if (!v20)
  {
LABEL_16:
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
    }

    if (v22)
    {
      goto LABEL_59;
    }

LABEL_58:
    sub_100004A34(v21);
    goto LABEL_59;
  }

LABEL_22:
  v40 = v22;
  v41 = v12;
  v37 = a1;
  v38 = v21;
  v39 = v11;
  subscriber::makeSimSlotRange();
  v24 = *buf;
  v25 = v46;
  if (*buf != v46)
  {
    v26 = v47;
    do
    {
      if (v26(*v24))
      {
        break;
      }

      ++v24;
    }

    while (v24 != v25);
    v27 = v46;
    if (v24 != v46)
    {
      v28 = (a1 + 560);
      v42 = (a1 + 240);
      do
      {
        v29 = *v24;
        v43 = 0;
        v44 = 0;
        (*(*v20 + 8))(&v43, v20, v29);
        if (v43)
        {
          if (*(v43 + 48))
          {
            v30 = *v28;
            if (*v28)
            {
              v31 = v28;
              do
              {
                if (*(v30 + 32) >= v29)
                {
                  v31 = v30;
                }

                v30 = *(v30 + 8 * (*(v30 + 32) < v29));
              }

              while (v30);
              if (v31 != v28 && v29 >= *(v31 + 8))
              {
                v32 = *v42;
                if (!*v42)
                {
                  goto LABEL_50;
                }

                v33 = v42;
                do
                {
                  if (*(v32 + 28) >= v29)
                  {
                    v33 = v32;
                  }

                  v32 = *(v32 + 8 * (*(v32 + 28) < v29));
                }

                while (v32);
                if (v33 != v42 && *(v33 + 7) <= v29)
                {
                  v34 = *(v33 + 32);
                }

                else
                {
LABEL_50:
                  v34 = 0;
                }

                InterfaceCostExpensive_sync = SaveDataModeController::getInterfaceCostExpensive_sync(v37, v29);
                v36 = InterfaceCostExpensive_sync;
                if ((capabilities::ct::supports5G(InterfaceCostExpensive_sync) & 1) == 0 || v36 || (v34 & 1) == 0)
                {
                  operator new();
                }
              }
            }
          }
        }

        if (v44)
        {
          sub_100004A34(v44);
        }

        do
        {
          ++v24;
        }

        while (v24 != v25 && (v26(*v24) & 1) == 0);
      }

      while (v24 != v27);
    }
  }

  v21 = v38;
  v11 = v39;
  v12 = v41;
  if ((v40 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_59:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_101283014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  (*(*v29 + 8))(v29);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1012830FC(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *__p = v6;
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
      goto LABEL_109;
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
    goto LABEL_109;
  }

LABEL_10:
  if (((*(*v12 + 16))(v12) & 1) == 0)
  {
    goto LABEL_109;
  }

  sub_10000501C(__p, "slot");
  v15 = sub_100007A6C((a2 + 3), __p);
  if (v56 < 0)
  {
    operator delete(*__p);
  }

  v16 = a2 + 4;
  if (a2 + 4 == v15)
  {
    goto LABEL_109;
  }

  v17 = (v15 + 56);
  if (*(v15 + 79) < 0)
  {
    v17 = *v17;
  }

  subscriber::fromString(v17, v14);
  v18 = *(a2 + 23);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (v18 == 14)
    {
LABEL_95:
      if (*a2 == 0x6D2D74696D627573 && *(a2 + 6) == 0x7363697274656D2DLL)
      {
        v49 = *(a1 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I [DEBUG] Submitting switch metrics", __p, 2u);
        }

        *__p = 0;
        *&__p[8] = 0;
        sub_100004AA0(__p, (a1 + 8));
        operator new();
      }

      goto LABEL_109;
    }

    if (v18 != 17)
    {
      v19 = a2;
      if (v18 != 19)
      {
        goto LABEL_109;
      }

      goto LABEL_24;
    }

    if (*a2 != 0x2D776F6C2D746573 || a2[1] != 0x646F6D2D61746164 || *(a2 + 16) != 101)
    {
      goto LABEL_109;
    }

LABEL_77:
    sub_10000501C(__p, "enabled");
    v38 = sub_100007A6C((a2 + 3), __p);
    if (v56 < 0)
    {
      operator delete(*__p);
    }

    if (v16 != v38)
    {
      v39 = std::stoi((v38 + 56), 0, 10);
      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = subscriber::asString();
        v42 = "Disable";
        if (v39)
        {
          v42 = "Enable";
        }

        *__p = 136315394;
        *&__p[4] = v42;
        *&__p[12] = 2080;
        *&__p[14] = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [DEBUG] %s low data mode for %s", __p, 0x16u);
      }

      sub_10127B7BC(a1);
    }

    goto LABEL_109;
  }

  v20 = a2[1];
  if (v20 == 17)
  {
    if (**a2 != 0x2D776F6C2D746573 || *(*a2 + 8) != 0x646F6D2D61746164 || *(*a2 + 16) != 101)
    {
LABEL_93:
      if (v20 != 14)
      {
        goto LABEL_109;
      }

      a2 = *a2;
      goto LABEL_95;
    }

    goto LABEL_77;
  }

  if (v20 == 19)
  {
    v19 = *a2;
LABEL_24:
    v21 = *v19;
    v22 = v19[1];
    v23 = *(v19 + 11);
    if (v21 == 0x72616D732D746573 && v22 == 0x6D2D617461642D74 && v23 == 0x65646F6D2D617461)
    {
      sub_10000501C(__p, "enabled");
      v43 = sub_100007A6C((a2 + 3), __p);
      if (v56 < 0)
      {
        operator delete(*__p);
      }

      if (v16 != v43)
      {
        v44 = std::stoi((v43 + 56), 0, 10);
        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = subscriber::asString();
          v47 = "Disable";
          if (v44)
          {
            v47 = "Enable";
          }

          *__p = 136315394;
          *&__p[4] = v47;
          *&__p[12] = 2080;
          *&__p[14] = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I [DEBUG] %s smart data mode for %s", __p, 0x16u);
        }

        sub_10127B9E0(a1);
      }

      goto LABEL_109;
    }

    v20 = a2[1];
  }

  if ((v18 & 0x80) != 0 && v20 == 23 && (**a2 == 0x65746E692D746573 ? (v26 = *(*a2 + 8) == 0x78652D6563616672) : (v26 = 0), v26 ? (v27 = *(*a2 + 15) == 0x657669736E657078) : (v27 = 0), v27))
  {
    sub_10000501C(__p, "expensive");
    v50 = sub_100007A6C((a2 + 3), __p);
    if (v56 < 0)
    {
      operator delete(*__p);
    }

    if (v16 != v50)
    {
      v51 = std::stoi((v50 + 56), 0, 10);
      v52 = *(a1 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = CSIBOOLAsString(v51 != 0);
        v54 = subscriber::asString();
        *__p = 136315394;
        *&__p[4] = v53;
        *&__p[12] = 2080;
        *&__p[14] = v54;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I [DEBUG] Setting interface expensive to %s for %s", __p, 0x16u);
      }

      sub_10127BD54(a1);
    }
  }

  else
  {
    v20 = a2[1];
    if ((v18 & 0x80) == 0 || v20 != 23)
    {
      if ((v18 & 0x80) == 0)
      {
        if (v18 != 14)
        {
          goto LABEL_109;
        }

        goto LABEL_95;
      }

      goto LABEL_93;
    }

    if (**a2 == 0x656469727265766FLL && *(*a2 + 8) == 0x61667265746E692DLL && *(*a2 + 15) == 0x74736F632D656361)
    {
      sub_10000501C(__p, "inexpensive");
      v34 = sub_100007A6C((a2 + 3), __p);
      if (v56 < 0)
      {
        operator delete(*__p);
      }

      if (v16 != v34)
      {
        v35 = std::stoi((v34 + 56), 0, 10);
        v36 = *(a1 + 40);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = CSIBOOLAsString(v35 != 0);
          *__p = 136315138;
          *&__p[4] = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I [DEBUG] Overriding interface in-expensive to %s", __p, 0xCu);
        }

        sub_10127BF6C(a1);
      }
    }
  }

LABEL_109:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1012838C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101283960(uint64_t a1)
{
  sub_101283A18(a1);

  operator delete();
}

uint64_t sub_101283998(uint64_t a1)
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

void sub_101283A18(uint64_t a1)
{
  *a1 = off_101F22D98;
  v2 = *(a1 + 2232);
  *(a1 + 2232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 2224);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004543C(a1 + 1408);
  sub_10004543C(a1 + 600);
  sub_1004EDBF8(a1 + 576, *(a1 + 584));
  sub_1001A8E08(a1 + 552, *(a1 + 560));
  sub_10006DCAC(a1 + 528, *(a1 + 536));
  sub_10013DF64(a1 + 504, *(a1 + 512));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 336));
  sub_10032D3A4(a1 + 312, *(a1 + 320));
  sub_10006DCAC(a1 + 288, *(a1 + 296));
  sub_10031D330(a1 + 256);
  sub_10006DCAC(a1 + 232, *(a1 + 240));
  sub_101283998(a1 + 200);
  sub_10006DCAC(a1 + 176, *(a1 + 184));
  sub_100077CD4(a1 + 144, *(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_10006DCAC(a1 + 96, *(a1 + 104));
  v4 = *(a1 + 80);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  SaveDataModeInterface::~SaveDataModeInterface(a1);
}

void sub_101283BAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101283C00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101283C40(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101283C6C(ServiceManager::Service *this)
{
  *this = off_101F22FD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101283CC8(ServiceManager::Service *this)
{
  *this = off_101F22FD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101283D48@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101283D8C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10127B40C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10127B40C(v4, 0);
}

void sub_101283E28(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = *a3;
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    sub_10127B500(v4, v5, &v7);
  }

  sub_10127B500(v4, v5, &v7);
}

void sub_101283ED8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_101283FB4(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v3 + 8));
  operator new();
}

void sub_1012840C4(ServiceManager::Service *this)
{
  *this = off_101F22FD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101284120(ServiceManager::Service *this)
{
  *this = off_101F22FD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_1012841C8(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping...", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v4, *(v1 + 56));
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_100118C58(v1 + 88);
  if (capabilities::ct::supports5GSlicing(v3))
  {
    sub_10000501C(&__p, "/cc/props/connection_state");
    operator new();
  }

  sub_10000501C(&__p, "/cc/props/in_home_countries_definite");
  operator new();
}

void sub_101284E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, dispatch_object_t object, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, void *aBlock)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101285064(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10128509C(void *a1, xpc_object_t *a2)
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

  sub_1004F86DC(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1004EDBF8(&v9, v10);
}

uint64_t sub_101285174(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10128523C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101285274(void *a1, xpc_object_t *a2)
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

  sub_10005452C(v3, a2);
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

uint64_t sub_10128534C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101285414(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10128544C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v5 = (v3 + 1);
  v4 = v3[1];
  v22 = *v3;
  v23 = v4;
  if (v3[2])
  {
    v4[2] = &v23;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  v6 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  sub_10006DCAC(v3, v3[1]);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100008EA4(&v27, &object, 0);
    xpc_release(object);
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v6);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v26, &object, count);
    xpc_release(object);
    for (i = v28; ; i = ++v28)
    {
      if (i == v26[1] && v27 == v26[0])
      {
        xpc_release(v26[0]);
        xpc_release(v27);
        goto LABEL_56;
      }

      v25 = 0;
      object = &v27;
      v30 = i;
      sub_10003EAD4(&object, &v25);
      if (xpc_get_type(v25) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_54:
      xpc_release(v25);
    }

    v9 = v25;
    if (v25)
    {
      xpc_retain(v25);
      v32 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v32 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
      v10 = v32;
LABEL_30:
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        object = &v32;
        v30 = "first";
        sub_100006354(&object, &v31);
        type = xpc_get_type(v31);
        if (type == &_xpc_type_string)
        {
          v33 = 0;
          ctu::rest::detail::read_enum_string_value(&v33, &v31, v13);
          v11 = v33;
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          v11 = xpc::dyn_cast_or_default(&v31, 0, v13);
        }

        else
        {
          v11 = 0;
        }

        xpc_release(v31);
        object = &v32;
        v30 = "second";
        sub_100006354(&object, &v31);
        v14 = xpc_get_type(v31);
        if (v14 == &_xpc_type_string)
        {
          v33 = 0;
          ctu::rest::detail::read_enum_string_value(&v33, &v31, v15);
        }

        else if (v14 == &_xpc_type_BOOL || v14 == &_xpc_type_int64 || v14 == &_xpc_type_uint64)
        {
          xpc::dyn_cast_or_default(&v31, 0, v15);
        }

        xpc_release(v31);
      }

      else
      {
        v11 = 0;
      }

      xpc_release(v32);
      xpc_release(v9);
      v16 = *v5;
      if (!*v5)
      {
LABEL_53:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v18 <= v11)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_53;
          }
        }

        if (v18 >= v11)
        {
          goto LABEL_54;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_53;
        }
      }
    }

    v10 = xpc_null_create();
LABEL_29:
    v32 = v10;
    goto LABEL_30;
  }

LABEL_56:
  xpc_release(v6);
  v19 = a1[3];
  v20 = a1[4];
  v21 = (a1[2] + (v20 >> 1));
  if (v20)
  {
    v19 = *(*v21 + v19);
  }

  v19(v21, &v22);
  sub_10006DCAC(&v22, v23);
}

void sub_1012858DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, xpc_object_t a20, xpc_object_t a21)
{
  xpc_release(object);
  object = 0;
  xpc_release(a16);
  xpc_release(v21);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1012859CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101285A94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101285ACC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10035A2E4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100077CD4(&v9, v10);
}

uint64_t sub_101285BA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101285C6C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101285CA4(uint64_t a1)
{
  v6 = **(a1 + 8);
  rest::read_rest_value();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_101285D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101285DF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23318;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101285E28(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  sub_1008A3F58(&v24, a2);
  v5 = v3 + 1;
  v4 = v3[1];
  v21 = *v3;
  v22 = v4;
  v23 = v3[2];
  if (v23)
  {
    v4[2] = &v22;
    v4 = 0;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v21 = &v22;
  }

  sub_10006DCAC(v3, v4);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  v6 = v24;
  if (v24 == v25)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v26[0] = *(v6 + 28);
      v7 = BYTE5(v26[0]);
      v26[2] = v26;
      *(sub_100051AD8(v3, v26) + 32) = v7;
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v13 = *v9 == v6;
          v6 = v9;
        }

        while (!v13);
      }

      v6 = v9;
    }

    while (v9 != v25);
    v10 = v3[2];
  }

  if (v23 == v10)
  {
    v11 = v21;
    if (v21 == &v22)
    {
      goto LABEL_36;
    }

    v12 = *v3;
    while (1)
    {
      v13 = *(v11 + 7) == *(v12 + 7) && *(v11 + 32) == *(v12 + 32);
      if (!v13)
      {
        break;
      }

      v14 = v11[1];
      v15 = v11;
      if (v14)
      {
        do
        {
          v11 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v11 = v15[2];
          v13 = *v11 == v15;
          v15 = v11;
        }

        while (!v13);
      }

      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v13 = *v17 == v12;
          v12 = v17;
        }

        while (!v13);
      }

      v12 = v17;
      if (v11 == &v22)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = a1[3];
  v19 = a1[4];
  v20 = (a1[2] + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  v18(v20, &v21);
LABEL_36:
  sub_10006DCAC(&v21, v22);
  sub_10006DCAC(&v24, v25[0]);
}

void sub_101286060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14)
{
  sub_10006DCAC(&a10, a11);
  sub_10006DCAC(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t sub_101286090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10128614C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F23398;
  a2[1] = v2;
  return result;
}

void sub_101286178(uint64_t a1, void *a2)
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
        v27 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v27 = v9;
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
        v27 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v25, v11, v12, v13);
      __p = &v27;
      v21 = "first";
      sub_10000F688(&__p, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      rest::write_rest_value((v6 + 4), v14);
      __p = &v27;
      v21 = "second";
      sub_10000F688(&__p, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v23 = 0;
      v15 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v15 = xpc_null_create();
      }

      xpc_release(v27);
      xpc_array_append_value(v4, v15);
      xpc_release(v15);
      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
    }

    while (v17 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v19 = v4;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/save_data_mode_user_preference");
  v27 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v27 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v27);
  v27 = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
}

void sub_101286440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012864F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012865B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F23428;
  a2[1] = v2;
  return result;
}

void sub_1012865E0(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/potential_interface_cost");
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

void sub_101286684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012866C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101286790(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F234A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012867C8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_10032CF1C(&v14, a2);
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  if (v3[2])
  {
    v5[2] = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  v9 = v14;
  v10[0] = v15;
  v10[1] = v16;
  if (v16)
  {
    v15[2] = v10;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101286994(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = (a1[2] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, &v11);
  }

  sub_10032D3A4(&v11, v12);
  sub_10032D3A4(&v14, v15);
}

void sub_101286908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17)
{
  sub_10032D3A4(&a10, a11);
  sub_10032D3A4(&a13, a14);
  sub_10032D3A4(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t sub_101286948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101286994(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_10032D3A4(a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 16) = 0;
  *v4 = 0;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      if (sub_101286A80(v6 + 40))
      {
        v8 = sub_10098C678(a1, v6 + 8);
        *(v8 + 20) = *(v6 + 20);
        std::string::operator=(v8 + 2, v6 + 2);
        std::string::operator=(v8 + 3, v6 + 3);
      }

      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }
}

BOOL sub_101286A80(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 255 || a1[1])
  {
    return v1 != 0;
  }

  if ((a1[31] & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 2))
    {
      goto LABEL_7;
    }

    return v1 != 0;
  }

  if (a1[31])
  {
    return v1 != 0;
  }

LABEL_7:
  v2 = a1[55];
  if (v2 < 0)
  {
    v2 = *(a1 + 5);
  }

  if (v2)
  {
    return v1 != 0;
  }

  return 0;
}

__n128 sub_101286B4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23528;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101286B84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    return (*(*v6 + v4))();
  }

  else
  {
    return v4(v6, a3);
  }
}

uint64_t sub_101286BD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101286C98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F235A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101286CD0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10013E998(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10013DF64(&v9, v10);
}

uint64_t sub_101286DA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101286E70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23628;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101286EA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101286F70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F236A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101286FA8(void *a1)
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

uint64_t sub_101286FF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012870B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23728;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012870F0(void *a1)
{
  v6 = 0;
  v8 = 0u;
  *__p = 0u;
  v7 = &v8;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  sub_1000DD0AC(&v7, v8);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1012871B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101287200(uint64_t a1)
{
  sub_1000DD0AC(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1012872BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F237A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012872F4(void *a1, const xpc::object *a2)
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

uint64_t sub_1012873EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012874B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012874EC(void *a1, const xpc::object *a2)
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

uint64_t sub_1012875E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101287630(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_1012876BC(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_101287708(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10128775C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting...", buf, 2u);
  }

  sub_10127C7B0(v1);
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
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
    std::mutex::unlock(v4);
    goto LABEL_22;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    std::mutex::unlock(v4);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  *buf = 0;
  (*(*v11 + 40))(v14, v11, @"OverriddenInexpensiveExpirationTime", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100432018(buf, v14);
  sub_10000A1EC(v14);
  if (*buf)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(*buf);
    if (AbsoluteTime >= CFAbsoluteTimeGetCurrent())
    {
      v13 = *(v1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Restoring overridden interface cost timer", v14, 2u);
      }

      *v14 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
      }

      sub_10127C050(v1, v14);
      sub_1003EC530(v14);
    }

    else
    {
      sub_10127C4C4(v1);
    }
  }

  sub_1003EC530(buf);
  if (!v10)
  {
LABEL_22:
    operator delete();
  }

LABEL_21:
  sub_100004A34(v10);
  goto LABEL_22;
}

void sub_1012879BC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_1003EC530(va);
  sub_1003EC530(va1);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

uint64_t *sub_101287A30(uint64_t **a1)
{
  v2 = *a1;
  v17 = a1;
  v18 = v2;
  v4 = *v2++;
  v3 = v4;
  v19 = v2;
  v20 = "kIsUpgrade";
  sub_100006354(&v19, object);
  v6 = xpc::dyn_cast_or_default(object, 0, v5);
  xpc_release(*object);
  v19 = v2;
  v20 = "kIsRestore";
  sub_100006354(&v19, object);
  LODWORD(v2) = xpc::dyn_cast_or_default(object, 0, v7);
  xpc_release(*object);
  if ((v6 | v2))
  {
    subscriber::makeSimSlotRange();
    v8 = v19;
    v9 = v20;
    if (v19 != v20)
    {
      v10 = v21;
      do
      {
        if (v10(*v8))
        {
          break;
        }

        ++v8;
      }

      while (v8 != v9);
      v11 = v20;
      if (v8 != v20)
      {
        do
        {
          v12 = *v8;
          PersistedLowDataMode_sync = SaveDataModeController::getPersistedLowDataMode_sync(v3, v12);
          if (PersistedLowDataMode_sync & 0x100) != 0 && (PersistedLowDataMode_sync)
          {
            v14 = sub_10127D0F0(v3, v12);
            if ((v14 & 0x100) != 0 && (v14 & 1) == 0)
            {
              v15 = *(*(**(v3 + 48) + 16))(*(v3 + 48), v12);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *object = 136315138;
                *&object[4] = "'cheap'";
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Migrating with Interface cost %s. Adjusting Low data mode to Off", object, 0xCu);
              }

              v1 = v1 & 0xFFFFFFFFFFFF0000 | 0x100;
              sub_10127E2B8(v3, v12, v1);
            }
          }

          do
          {
            ++v8;
          }

          while (v8 != v9 && (v10(*v8) & 1) == 0);
        }

        while (v8 != v11);
      }
    }
  }

  sub_101287CBC(&v18);
  return sub_1000049E0(&v17);
}

void sub_101287C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101287CBC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 16);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_101287D2C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down...", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101287DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101287DCC(_DWORD **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(*v1 + 240);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v1[2];
  v4 = *v1 + 240;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 != *v1 + 240 && *(v4 + 28) <= v3)
  {
    v5 = *(v4 + 32);
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  sub_10000FFD0((v1 + 4), v5 & 1);
  sub_100EDCE18(&v8);
  return sub_1000049E0(&v7);
}

void sub_101287E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101287E7C(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  if (sub_10127E2B8(v2, *(*a1 + 2), *(*a1 + 12) | 0x100))
  {
    SaveDataModeController::submitLowDataModeMetrics_sync(v2, *(v1 + 2));
  }

  operator delete();
}

void sub_101287F2C(capabilities::ct ***a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  if (sub_10127ECC0(v2, *(*a1 + 2), *(*a1 + 12) | 0x100))
  {
    SaveDataModeController::submitSmartDataModeMetrics_sync(v2, *(v1 + 2));
  }

  operator delete();
}

void sub_101287FF0(uint64_t **a1)
{
  v1 = a1;
  sub_10127F2C4(**a1, *(*a1 + 2), *(*a1 + 12) | 0x100, 1);
  operator delete();
}

void sub_101288098(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_10000501C(__p, "");
  sub_10127F980(&v13, v2, __p);
  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(v2 + 2232);
  if (*(v1 + 8) == 1)
  {
    if (v3)
    {
      goto LABEL_14;
    }

    v4 = CFCalendarCopyCurrent();
    __p[0] = v4;
    at[0] = CFAbsoluteTimeGetCurrent();
    CFCalendarAddComponents(v4, at, 0, "d", 1);
    v17 = 0;
    v16 = 0;
    CFCalendarDecomposeAbsoluteTime(__p[0], at[0], "yMd", &v17 + 4, &v17, &v16);
    CFCalendarComposeAbsoluteTime(__p[0], at, "yMdHms", HIDWORD(v17), v17, v16, 5, 0, 0, v6);
    v12 = CFDateCreate(kCFAllocatorDefault, at[0]);
    sub_100952474(__p);
    sub_10127C050(v2, &v12);
    sub_1003EC530(&v12);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Dropping overridden interface cost timer", __p, 2u);
    }

    sub_10127C4C4(v2);
  }

  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  sub_10000501C(at, "");
  sub_10127F980(__p, v2, at);
  if (v8 < 0)
  {
    operator delete(*&at[0]);
  }

  sub_10127FEF8(v2, &v13, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

LABEL_14:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*(&v13 + 1));
  }

  operator delete();
}

void sub_1012882BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1003EC530((v31 - 104));
  if (*(v31 - 65) < 0)
  {
    operator delete(*(v31 - 88));
  }

  operator delete();
}

void *sub_10128836C(void *a1)
{
  *a1 = off_101F23998;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012883B8(void *a1)
{
  *a1 = off_101F23998;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101288498(uint64_t result, uint64_t a2)
{
  *a2 = off_101F23998;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012884D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012884E8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101288528(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v4 + 8));
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101288634(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101288680(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Overridden interface cost timer fired", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  sub_10000501C(__p, "");
  sub_10127F980(buf, v1, __p);
  if (SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10127C4C4(v1);
  v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  sub_10000501C(v4, "");
  sub_10127F980(__p, v1, v4);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  sub_10127FEF8(v1, buf, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(*&buf[8]);
  }

  operator delete();
}

void sub_1012887C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  operator delete();
}

uint64_t *sub_10128884C(capabilities::ct ***a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  subscriber::makeSimSlotRange();
  v3 = v8;
  if (v8 != v9)
  {
    do
    {
      if (v10(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v9);
    while (v3 != v9)
    {
      v4 = *v3;
      sub_10127E2B8(v2, v4, 0);
      if (sub_10127ECC0(v2, v4, 0))
      {
        SaveDataModeController::submitSmartDataModeMetrics_sync(v2, v4);
      }

      sub_10127F2C4(v2, v4, 0, 1);
      do
      {
        ++v3;
      }

      while (v3 != v9 && (v10(*v3) & 1) == 0);
    }
  }

  sub_10127C4C4(v2);
  sub_10127C7B0(v2);
  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_101288958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000FF844(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_101288980(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

uint64_t *sub_101288B0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_101288BF4(capabilities::ct ***a1)
{
  v2 = a1;
  v1 = **a1;
  sub_101282BC0(v1);
  SaveDataModeController::submitSmartDataModeMetrics_sync(v1, 3);
  operator delete();
}

void sub_101288C88(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C398(v2, &v1, "kDeviceManagementUpdate", sub_101288E74, 23);
}

void sub_101288E74()
{
  sub_10128A908();
  v0 = qword_101FCA8B8;
  if (os_log_type_enabled(qword_101FCA8B8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "OMADM is not supported, ignore", v1, 2u);
  }
}

void sub_101288EDC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51[0] = 0;
  *buf = a4;
  v44 = "kManagedCellularProfileDict";
  sub_100006354(buf, v51);
  if (xpc_get_type(v51[0]) != &_xpc_type_null)
  {
    v48 = 0;
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100138C38(&v48, buf);
    if (!v48)
    {
      sub_10128A908();
      v18 = qword_101FCA8B8;
      if (os_log_type_enabled(qword_101FCA8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid kManagedCellularProfileDict", buf, 2u);
      }

      v46 = xpc_int64_create(4);
      if (!v46)
      {
        v46 = xpc_null_create();
      }

      *buf = *a5;
      v44 = "kMachError";
      sub_10000F688(buf, &v46, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v46);
      v46 = 0;
      goto LABEL_59;
    }

    ServiceMap = Registry::getServiceMap(*a1);
    v8 = ServiceMap;
    v9 = "16IPCU_CellProfile";
    if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
    {
      v10 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
LABEL_57:
          if ((v16 & 1) == 0)
          {
            sub_100004A34(v14);
          }

LABEL_59:
          sub_10001021C(&v48);
          goto LABEL_60;
        }

LABEL_22:
        if (!(*(*v15 + 56))(v15, v48))
        {
          goto LABEL_57;
        }

        v19 = Registry::getServiceMap(*a1);
        v20 = v19;
        if (v21 < 0)
        {
          v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
          v23 = 5381;
          do
          {
            v21 = v23;
            v24 = *v22++;
            v23 = (33 * v23) ^ v24;
          }

          while (v24);
        }

        std::mutex::lock(v19);
        *buf = v21;
        v25 = sub_100009510(&v20[1].__m_.__sig, buf);
        if (v25)
        {
          v27 = v25[3];
          v26 = v25[4];
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v20);
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v26);
            v28 = 0;
            if (!v27)
            {
              goto LABEL_53;
            }

            goto LABEL_32;
          }
        }

        else
        {
          v27 = 0;
        }

        std::mutex::unlock(v20);
        v26 = 0;
        v28 = 1;
        if (!v27)
        {
LABEL_53:
          if ((v28 & 1) == 0)
          {
            sub_100004A34(v26);
          }

          v35 = (*(*v15 + 80))(v15);
          if (v35)
          {
            ResetAllPacketHandlersAPNs(v35, 9, 0xFFFFFFFFLL, 0);
          }

          goto LABEL_57;
        }

LABEL_32:
        v36 = v28;
        subscriber::makeSimSlotRange();
        v29 = *buf;
        v30 = v44;
        if (*buf != v44)
        {
          v31 = v45;
          do
          {
            if (v31(*v29))
            {
              break;
            }

            ++v29;
          }

          while (v29 != v30);
          v32 = v44;
          while (v29 != v32)
          {
            v33 = *v29;
            v41 = 0;
            v42 = 0;
            (*(*v27 + 16))(&v41, v27, v33);
            if (v41 && (*(*v41 + 88))(v41))
            {
              v39[0] = 0;
              v39[1] = 0;
              v40 = 0;
              (*(*v41 + 104))(v39);
              v34 = v41;
              if (SHIBYTE(v40) < 0)
              {
                sub_100005F2C(__p, v39[0], v39[1]);
              }

              else
              {
                *__p = *v39;
                v38 = v40;
              }

              (*(*v34 + 16))(v34, __p);
              if (SHIBYTE(v38) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v40) < 0)
              {
                operator delete(v39[0]);
              }
            }

            if (v42)
            {
              sub_100004A34(v42);
            }

            do
            {
              ++v29;
            }

            while (v29 != v30 && (v31(*v29) & 1) == 0);
          }
        }

        v28 = v36;
        goto LABEL_53;
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
      goto LABEL_57;
    }

    goto LABEL_22;
  }

  sub_10128A908();
  v17 = qword_101FCA8B8;
  if (os_log_type_enabled(qword_101FCA8B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No kManagedCellularProfileDict", buf, 2u);
  }

  v49 = xpc_int64_create(15);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  *buf = *a5;
  v44 = "kMachError";
  sub_10000F688(buf, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  xpc_release(v49);
  v49 = 0;
LABEL_60:
  xpc_release(v51[0]);
}

void sub_101289410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  if ((a11 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  sub_10001021C(&a31);
  xpc_release(*(v34 - 96));
  _Unwind_Resume(a1);
}

void sub_1012894F8(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v3 = ServiceMap;
  v4 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v5 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
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
  v47 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v47);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_56;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_56;
  }

LABEL_10:
  v12 = (*(*v10 + 80))(v10);
  if (!(*(*v10 + 64))(v10))
  {
    goto LABEL_56;
  }

  v13 = Registry::getServiceMap(*a1);
  v14 = v13;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  v47 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v47);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      if (!v21)
      {
        goto LABEL_41;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (!v21)
  {
    goto LABEL_41;
  }

LABEL_20:
  v39 = v12;
  v40 = v22;
  subscriber::makeSimSlotRange();
  v23 = v47;
  v24 = v48;
  if (v47 != v48)
  {
    v25 = v49;
    do
    {
      if (v25(*v23))
      {
        break;
      }

      ++v23;
    }

    while (v23 != v24);
    v26 = v48;
    while (v23 != v26)
    {
      v27 = *v23;
      v45 = 0;
      v46 = 0;
      (*(*v21 + 16))(&v45, v21, v27);
      if (v45 && (*(*v45 + 88))(v45))
      {
        v43[0] = 0;
        v43[1] = 0;
        v44 = 0;
        (*(*v45 + 104))(v43);
        v28 = v45;
        if (SHIBYTE(v44) < 0)
        {
          sub_100005F2C(__p, v43[0], v43[1]);
        }

        else
        {
          *__p = *v43;
          v42 = v44;
        }

        (*(*v28 + 16))(v28, __p);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[0]);
        }
      }

      if (v46)
      {
        sub_100004A34(v46);
      }

      do
      {
        ++v23;
      }

      while (v23 != v24 && (v25(*v23) & 1) == 0);
    }
  }

  v12 = v39;
  v22 = v40;
LABEL_41:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (v12)
  {
    ResetAllPacketHandlersAPNs(v12, 9, 0xFFFFFFFFLL, 0);
    v29 = Registry::getServiceMap(*a1);
    v30 = v29;
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
      v33 = 5381;
      do
      {
        v31 = v33;
        v34 = *v32++;
        v33 = (33 * v33) ^ v34;
      }

      while (v34);
    }

    std::mutex::lock(v29);
    v47 = v31;
    v35 = sub_100009510(&v30[1].__m_.__sig, &v47);
    if (v35)
    {
      v37 = v35[3];
      v36 = v35[4];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v30);
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v36);
        v38 = 0;
        if (!v37)
        {
LABEL_54:
          if ((v38 & 1) == 0)
          {
            sub_100004A34(v36);
          }

          goto LABEL_56;
        }

LABEL_53:
        (*(*v37 + 336))(v37, v12, 10, 0);
        goto LABEL_54;
      }
    }

    else
    {
      v37 = 0;
    }

    std::mutex::unlock(v30);
    v36 = 0;
    v38 = 1;
    if (!v37)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_56:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101289974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_101289A18(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  v8 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v9 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
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
  v16[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v16);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v7);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    if (!v14)
    {
LABEL_13:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v19 = 0;
  (*(*v14 + 72))(&v19, v14);
  if (v19)
  {
    ctu::cf_to_xpc(&v17, v19, v15);
    v16[0] = *a5;
    v16[1] = "kManagedCellularProfileDict";
    sub_10000F688(v16, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  sub_10001021C(&v19);
  if (v13)
  {
    goto LABEL_13;
  }
}

void sub_101289B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10001021C(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_101289BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *buf = a4;
  v26 = "kUIApnsDict";
  object[0] = 0;
  sub_100006354(buf, object);
  if (xpc_get_type(object[0]) != &_xpc_type_null)
  {
    v22 = 0;
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100138C38(&v22, buf);
    if (!v22)
    {
      sub_10128A908();
      v17 = qword_101FCA8B8;
      if (os_log_type_enabled(qword_101FCA8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid kUIApnsDict", buf, 2u);
      }

      v20 = xpc_int64_create(4);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      *buf = *a5;
      v26 = "kMachError";
      sub_10000F688(buf, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
      goto LABEL_32;
    }

    ServiceMap = Registry::getServiceMap(*a1);
    v8 = ServiceMap;
    if (v9 < 0)
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
    *buf = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
        if (!v15)
        {
LABEL_31:
          sub_100004A34(v14);
          goto LABEL_32;
        }

LABEL_22:
        *buf = 0;
        v26 = 0;
        sub_100419930(v15, buf);
        if (*buf)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = a5[1];
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          object[4] = 0;
          operator new();
        }

        if (v26)
        {
          sub_100004A34(v26);
        }

        if (!v14)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      std::mutex::unlock(v8);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::mutex::unlock(v8);
    }

LABEL_32:
    sub_10001021C(&v22);
    goto LABEL_33;
  }

  sub_10128A908();
  v16 = qword_101FCA8B8;
  if (os_log_type_enabled(qword_101FCA8B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No kUIApnsDict", buf, 2u);
  }

  v23 = xpc_int64_create(15);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kMachError";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
LABEL_33:
  xpc_release(object[0]);
}

void sub_101289F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10128A014(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
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
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v7);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    if (!v14)
    {
LABEL_17:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v18 = 0;
  v19 = 0;
  sub_100419930(v14, &v18);
  v15 = v18;
  if (v18)
  {
    v17 = *a5;
    v16 = a5[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v20[0] = off_101F23AD8;
    v20[1] = v17;
    v20[2] = v16;
    v20[3] = v20;
    (*(*v15 + 120))(v15, v20);
    sub_10006372C(v20);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v13)
  {
    goto LABEL_17;
  }
}

void sub_10128A1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  sub_10006372C(va);
  if (a4)
  {
    sub_100004A34(a4);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10128A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v18 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v18);
  if (!v13)
  {
    std::mutex::unlock(v8);
    return;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v8);
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
    if (!v15)
    {
LABEL_19:
      sub_100004A34(v14);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v8);
    if (!v15)
    {
      return;
    }
  }

  v18 = 0;
  v19 = 0;
  sub_100419930(v15, &v18);
  if (v18)
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(a5 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = 0;
    operator new();
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v14)
  {
    goto LABEL_19;
  }
}

void sub_10128A408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, std::__shared_weak_count *);
  sub_10002B644(va1);
  sub_100422B08(va);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

const void **sub_10128A460(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v32 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v8 = v32;
    v32 = Mutable;
    v29 = v8;
    sub_1000279DC(&v29);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v29 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v19 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v19 = 1;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_12:
  v29 = 0;
  v30 = 0;
  v31 = 0;
  (*(*v17 + 96))(&v29, v17, 1);
  v21 = v29;
  v20 = v30;
  if (v30 != v29)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *&v21[v22];
      if (v24)
      {
        v25 = v32;
        sub_10029FEBC(v24, 0, &value);
        CFArrayAppendValue(v25, value);
        sub_10001021C(&value);
        v21 = v29;
        v20 = v30;
      }

      ++v23;
      v22 += 16;
    }

    while (v23 < (v20 - v21) >> 4);
  }

  value = &v29;
  sub_1000212F4(&value);
LABEL_18:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  ctu::cf_to_xpc(&v27, v32, v18);
  v29 = *a5;
  v30 = "kApns";
  sub_10000F688(&v29, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  return sub_1000279DC(&v32);
}

void sub_10128A66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  sub_1000279DC(va);
  _Unwind_Resume(a1);
}

const void **sub_10128A6CC(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v13 = 0;
  v9 = a4;
  v10 = "kTelephonyFeature";
  sub_100006354(&v9, &object);
  xpc::bridge(&v12, &object, v5);
  sub_100060DE8(&v13, &v12);
  sub_10000A1EC(&v12);
  xpc_release(object);
  if (xpc_dictionary_get_value(*a4, "kDisallow") && v13)
  {
    v9 = a4;
    v10 = "kDisallow";
    sub_100006354(&v9, &v12);
    v7 = xpc::dyn_cast_or_default(&v12, 0, v6);
    xpc_release(v12);
    sub_1004438D4(v13, v7);
  }

  return sub_100005978(&v13);
}

const void **sub_10128A7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v11 = a4;
  v12 = "kTelephonyFeature";
  sub_100006354(&v11, &object);
  xpc::bridge(&v14, &object, v6);
  sub_100060DE8(&v15, &v14);
  sub_10000A1EC(&v14);
  xpc_release(object);
  if (v15)
  {
    v7 = sub_1004437AC(v15);
    v9 = xpc_BOOL_create(v7);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    v11 = *a5;
    v12 = "kDisallow";
    sub_10000F688(&v11, &v9, &v10);
    xpc_release(v10);
    v10 = 0;
    xpc_release(v9);
    v9 = 0;
  }

  return sub_100005978(&v15);
}

void sub_10128A908()
{
  if ((atomic_load_explicit(&qword_101FCA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA8A8))
  {
    qword_101FCA8B0 = 0;
    qword_101FCA8B8 = 0;
    __cxa_guard_release(&qword_101FCA8A8);
  }

  if (qword_101FCA8A0 != -1)
  {

    dispatch_once(&qword_101FCA8A0, &stru_101F23A28);
  }
}

void sub_10128A994(id a1)
{
  v1 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v3, v1, LogGroupName);
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v3);
}

void *sub_10128A9F4(void *a1)
{
  *a1 = off_101F23A58;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10128AA4C(void *a1)
{
  *a1 = off_101F23A58;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void *sub_10128AB48(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F23A58;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10128ABA0(void *a1)
{
  sub_100E48AD8(a1 + 8);

  operator delete(a1);
}

void sub_10128ABDC(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
    v12 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
LABEL_12:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          return;
        }

LABEL_11:
        (*(*v10 + 664))(v10, 1, 10, 0xFFFFFFFFLL, 0);
        (*(*v10 + 336))(v10, 1, 9, 0);
        goto LABEL_12;
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
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_10128AD48(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10128AD60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10128ADAC(void *a1)
{
  *a1 = off_101F23AD8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10128ADF8(void *a1)
{
  *a1 = off_101F23AD8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10128AED0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F23AD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10128AF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10128AF18(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_10128AF58(uint64_t a1, const void **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  ctu::cf_to_xpc(&object, v3, a2);
  v6[0] = *(a1 + 8);
  v6[1] = "kUIApnsDict";
  sub_10000F688(v6, &object, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
  return sub_10001021C(&v5);
}

void sub_10128AFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10128AFEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10128B038(void *a1)
{
  *a1 = off_101F23B58;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10128B090(void *a1)
{
  *a1 = off_101F23B58;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void *sub_10128B18C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F23B58;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10128B1E4(void *a1)
{
  sub_100E48AD8(a1 + 8);

  operator delete(a1);
}

void sub_10128B220(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 664))(v9, 1, 11, 0xFFFFFFFFLL, 0);
    (*(*v9 + 336))(v9, 1, 8, 0);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10128B380(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10128B398(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10128B8D8(uint64_t a1)
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

void sub_10128B9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_10128BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_10002B644(&a16);
  sub_10128BC48(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10128BC48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10128BDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_10002B644(&a16);
  sub_10128BC48(&a9);
  _Unwind_Resume(a1);
}

void sub_10128BF60(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10128C0C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10128C3E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10128C78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10128CAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10128CBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, id a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&location);
  objc_destroyWeak(&a11);
  _Unwind_Resume(a1);
}

void sub_10128CDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1002C2508(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10128CF00(xpc_object_t *a1, void *a2)
{
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  if (*a2 != a2 + 1)
  {
    operator new();
  }

  v36 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v36 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v36 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_11;
  }

  v4 = xpc_null_create();
LABEL_10:
  v36 = v4;
LABEL_11:
  xpc_release(v3);
  v5 = v33;
  if (v33 != v34)
  {
    do
    {
      v35 = 0;
      v6 = xpc_dictionary_create(0, 0, 0);
      v7 = v6;
      if (v6)
      {
        v35 = v6;
      }

      else
      {
        v7 = xpc_null_create();
        v35 = v7;
        if (!v7)
        {
          v8 = xpc_null_create();
          v7 = 0;
          goto LABEL_19;
        }
      }

      if (xpc_get_type(v7) != &_xpc_type_dictionary)
      {
        v8 = xpc_null_create();
LABEL_19:
        v35 = v8;
        goto LABEL_20;
      }

      xpc_retain(v7);
LABEL_20:
      xpc_release(v7);
      v9 = v5[4];
      v10 = (v9 + 1);
      if (*(v9 + 31) < 0)
      {
        v10 = *v10;
      }

      v31 = xpc_string_create(v10);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      __p.__r_.__value_.__r.__words[0] = &v35;
      __p.__r_.__value_.__l.__size_ = "name";
      sub_10000F688(&__p, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      (*(*v5[4][4] + 40))(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v29 = xpc_string_create(p_p);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v26 = &v35;
      v27 = "entitlements";
      sub_10000F688(&v26, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (xpc_get_type(v5[6]) == &_xpc_type_array)
      {
        count = xpc_array_get_count(v5[6]);
      }

      else
      {
        count = 0;
      }

      v24 = xpc_int64_create(count);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      __p.__r_.__value_.__r.__words[0] = &v35;
      __p.__r_.__value_.__l.__size_ = "num_clients";
      sub_10000F688(&__p, &v24, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v24);
      v24 = 0;
      v13 = v5[6];
      v22 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v22 = xpc_null_create();
      }

      __p.__r_.__value_.__r.__words[0] = &v35;
      __p.__r_.__value_.__l.__size_ = "clients";
      sub_1000609CC(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v20 = v35;
      if (v35)
      {
        xpc_retain(v35);
      }

      else
      {
        v20 = xpc_null_create();
      }

      std::to_string(&__p, *v5[4]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      v26 = &v36;
      v27 = v14;
      sub_100DAE90C(&v26, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      xpc_release(v20);
      v20 = 0;
      xpc_release(v35);
      v15 = v5[1];
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
          v16 = v5[2];
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      v5 = v16;
    }

    while (v16 != v34);
  }

  v18 = v36;
  *a1 = v36;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v36);
  sub_101293388(v34[0]);
}

void sub_10128D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  xpc_release(v26);
  sub_101293388(a26);
  _Unwind_Resume(a1);
}

void sub_10128E41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_10128E710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10128E7D8(uint64_t a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak(a1);
  return a1;
}

void sub_10128EA60(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10128EBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10128F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10128F134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10128F500(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 getLogContext];
    v3 = v15;
  }

  else
  {
    v3 = 0;
    __p = 0;
    v15 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A318(&__p, *(*(a1 + 64) + 40));
    v12 = v16 >= 0 ? &__p : __p;
    v13 = *(a1 + 40);
    *buf = 136446466;
    v18 = v12;
    v19 = 2050;
    v20 = v13;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Send barrier complete for client [%{public}s] (conn=%{public}p)", buf, 0x16u);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  *(*(a1 + 64) + 104) = 0;
  v4 = [*(a1 + 48) invocationDescriptionWithClassifier:*(a1 + 56)];
  if ([*(a1 + 56) foundSensitiveObject])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 getLogContext];
      v6 = v15;
    }

    else
    {
      v6 = 0;
      __p = 0;
      v15 = 0;
    }

    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000A318(&__p, *(*(a1 + 64) + 40));
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 138740227;
      v18 = v4;
      v19 = 2082;
      v20 = p_p;
      v9 = "Sent notification %{sensitive}@ after barrier to client [%{public}s]";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 getLogContext];
      v6 = v15;
    }

    else
    {
      v6 = 0;
      __p = 0;
      v15 = 0;
    }

    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000A318(&__p, *(*(a1 + 64) + 40));
      if (v16 >= 0)
      {
        v10 = &__p;
      }

      else
      {
        v10 = __p;
      }

      *buf = 138412546;
      v18 = v4;
      v19 = 2082;
      v20 = v10;
      v9 = "Sent notification %@ after barrier to client [%{public}s]";
      goto LABEL_22;
    }
  }

  ++*(*(a1 + 64) + 112);
  v11 = [*(a1 + 40) remoteObjectProxy];
  [*(a1 + 48) invokeWithTarget:v11];
}

void sub_10128FA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v15 < 0)
  {
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_10128FEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1012900F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_101290944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);

  _Unwind_Resume(a1);
}

void sub_101290A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_101290A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[19] requiredEntitlementForNotification:*(a1 + 56)];
    v5 = v3[25];
    if (v5 != v3 + 26)
    {
      v6 = v4;
      while (1)
      {
        v7 = v5[5];
        if (!v7 || (*(*v7[4] + 16))(v7[4], v6) != 1)
        {
          break;
        }

        v8 = [v3[19] accessControlListForRequest:*(a1 + 56)];
        if (v8)
        {
          v9 = v5[4];
          v10 = v5[5];
          v11 = *(v10 + 4);
          if (v9)
          {
            [v9 auditToken];
            v10 = v5[5];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v17 = *v10;
          if (*(v10 + 31) < 0)
          {
            sub_100005F2C(__dst, *(v10 + 1), *(v10 + 2));
          }

          else
          {
            v18 = *(v10 + 2);
            v32 = *(v10 + 3);
            *__dst = v18;
          }

          *v33 = v17;
          if (SHIBYTE(v32) < 0)
          {
            sub_100005F2C(&v33[8], __dst[0], __dst[1]);
          }

          else
          {
            *&v33[8] = *__dst;
            v34 = v32;
          }

          v19 = (*(*v11 + 32))(v11, buf, v33, v8);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(*&v33[8]);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst[0]);
            if ((v19 & 1) == 0)
            {
LABEL_38:
              v22 = *(a1 + 32);
              if (v22)
              {
                [v22 getLogContext];
                v23 = *&buf[8];
              }

              else
              {
                v23 = 0;
                *buf = 0;
                *&buf[8] = 0;
              }

              ctu::OsLogContext::~OsLogContext(buf);
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }

              sub_10000A318(buf, v5[5]);
              v27 = buf[23];
              v28 = *buf;
              v29 = NSStringFromSelector(*(a1 + 56));
              v26 = v29;
              *v33 = 136315394;
              v30 = buf;
              if (v27 < 0)
              {
                v30 = v28;
              }

              *&v33[4] = v30;
              *&v33[12] = 2112;
              *&v33[14] = v29;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Client [%s] is not allowed for notification %@", v33, 0x16u);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              goto LABEL_45;
            }
          }

          else if ((v19 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v20 = v5[7];
        v21 = v5[8];
        if (v20 != v21)
        {
          while (*v20 != *(a1 + 56))
          {
            if (++v20 == v21)
            {
              goto LABEL_13;
            }
          }
        }

        if (v20 != v21)
        {
          goto LABEL_36;
        }

LABEL_13:
        v14 = v5[1];
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
            v15 = v5[2];
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        v5 = v15;
        if (v15 == v3 + 26)
        {
          goto LABEL_36;
        }
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        [v12 getLogContext];
        v13 = *&buf[8];
      }

      else
      {
        v13 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      sub_10000A318(v33, v5[5]);
      if (v33[23] >= 0)
      {
        v24 = v33;
      }

      else
      {
        v24 = *v33;
      }

      v25 = sub_100016788(v6);
      v26 = NSStringFromSelector(*(a1 + 56));
      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v26;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Client [%s] entitlement failed: '%s', required for notification %@", buf, 0x20u);
      if ((v33[23] & 0x80000000) != 0)
      {
        operator delete(*v33);
      }

LABEL_45:

      goto LABEL_13;
    }

LABEL_36:
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1012913F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_101291618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_101292028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, void *a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  _Unwind_Resume(a1);
}

void sub_101292274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 blockInvocationDescriptionWithClassifier:*(a1 + 32)];
  if ([*(a1 + 32) foundSensitiveObject])
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      [v5 getLogContext];
      v6 = *&v15[8];
    }

    else
    {
      v6 = 0;
      *v15 = 0;
      *&v15[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(v15);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      *v15 = 138413059;
      *&v15[4] = v8;
      *&v15[12] = 2048;
      *&v15[14] = v9;
      *&v15[22] = 2048;
      v16 = v10;
      LOWORD(v17) = 2117;
      *(&v17 + 2) = v4;
      v11 = "Sending reply for request %@ (cid=%lu, rid=%lu): %{sensitive}@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v11, v15, 0x2Au);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      [v7 getLogContext];
      v6 = *&v15[8];
    }

    else
    {
      v6 = 0;
      *v15 = 0;
      *&v15[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(v15);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      *v15 = 138413058;
      *&v15[4] = v12;
      *&v15[12] = 2048;
      *&v15[14] = v13;
      *&v15[22] = 2048;
      v16 = v14;
      LOWORD(v17) = 2112;
      *(&v17 + 2) = v4;
      v11 = "Sending reply for request %@ (cid=%lu, rid=%lu): %@";
      goto LABEL_12;
    }
  }

  [v3 setTarget:{*(a1 + 56), *v15, *&v15[8], *&v15[16], v16, v17}];
  [v3 invoke];
}

void sub_101292700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_10002D760(va1);
  sub_1003A5A8C(va2);
  sub_10001021C(va3);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void sub_101292980(_Unwind_Exception *a1)
{
  if (v4 < 0)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1012930C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1012937C4(va);
  _Unwind_Resume(a1);
}

void sub_101293334(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_101293388(void *a1)
{
  if (a1)
  {
    sub_101293388(*a1);
    sub_101293388(a1[1]);
    sub_101293334((a1 + 4));

    operator delete(a1);
  }
}

void **sub_1012933DC(void **a1)
{
  v3 = a1 + 3;
  sub_1001A8E64(&v3);
  v3 = a1;
  sub_1001A8E64(&v3);
  return a1;
}

uint64_t sub_101293424(uint64_t a1)
{
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101293600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_1000212F4(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 64) = v13;
    operator delete(v13);
  }

  v14 = *(v10 + 48);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_10000BA54(v9);
  _Unwind_Resume(a1);
}

void sub_101293648(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100018A1C(a2);
  }

  sub_1000CE3D4();
}

void sub_101293688(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1012936C8(a2);
  }

  sub_1000CE3D4();
}

void sub_1012936C8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_101293710(void *a1)
{
  if (a1)
  {
    sub_101293710(*a1);
    sub_101293710(a1[1]);
    sub_100060B74((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_101293764(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 16) = v1;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *v2;
      if (*v2 == v1)
      {
        *v2 = 0;
        while (1)
        {
          v4 = v2[1];
          if (!v4)
          {
            break;
          }

          do
          {
            v2 = v4;
            v4 = *v4;
          }

          while (v4);
        }
      }

      else
      {
        for (v2[1] = 0; v3; v3 = v2[1])
        {
          do
          {
            v2 = v3;
            v3 = *v3;
          }

          while (v3);
        }
      }
    }

    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_1012937C4(uint64_t a1)
{
  sub_101293710(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_101293710(v2);
  }

  return a1;
}

void *sub_101293814(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_100004A34(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_101293884(uint64_t a1)
{
  *a1 = off_101F23CB0;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_1012938E4(uint64_t a1)
{
  *a1 = off_101F23CB0;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1012939E8(uint64_t a1, void *a2)
{
  *a2 = off_101F23CB0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = a2[2];
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_101293A68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 8);
}

void sub_101293AB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete(a1);
}

id sub_101293B08(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 getLogContext];
    v3 = v18;
  }

  else
  {
    v3 = 0;
    *buf = 0;
    v18 = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bootstrapping", buf, 2u);
  }

  [*(*(a1 + 8) + 144) bootstrapWithDelegate:?];
  [*(*(a1 + 8) + 88) bootstrap];
  Registry::createRestModuleOneTimeUseConnection(&v13, *(*(a1 + 8) + 184));
  ctu::RestModule::connect();
  if (v14)
  {
    sub_100004A34(v14);
  }

  v4 = *(a1 + 8);
  sub_10000501C(__p, "/cc/props/subscription_info");
  v5 = v4;
  *buf = off_101F23D48;
  v18 = v4 + 16;
  v19 = v5;
  v20 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 8);
  sub_10000501C(__p, "/cc/props/active_subscriptions");
  v7 = v6;
  *buf = off_101F23DC8;
  v18 = v6 + 40;
  v19 = v7;
  v20 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    [v8 getQueue];
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
    __p[0] = 0;
  }

  *buf = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_101293EAC;
  v20 = &unk_101F23D18;
  v21 = v9;
  v10 = os_state_add_handler();
  v11 = *(a1 + 8);
  v11[12] = v10;
  if (__p[0])
  {
    dispatch_release(__p[0]);
    v11 = *(a1 + 8);
  }

  [v11 _registerRestProviders_sync];
  return [*(a1 + 8) _registerRestObservers_sync];
}

void sub_101293DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101293E60(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23E38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101293EE4(uint64_t a1)
{

  operator delete();
}

id sub_101293F98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101F23D48;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_101293FE8(id *a1)
{

  operator delete(a1);
}

void sub_101294024(uint64_t a1, SubscriptionInfo *a2, const object *a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + 1;
  v6 = v4[1];
  v7 = *v4;
  v8 = v6;
  if (v4[2])
  {
    *(v6 + 16) = &v8;
    *v4 = v5;
    *v5 = 0;
    v4[2] = 0;
  }

  else
  {
    v7 = &v8;
  }

  rest::read_rest_value(v4, a2, a3);
  [*(a1 + 16) _handleSubscriptionInfoChanged_sync:&v7];
  sub_1001A8F78(&v7, v8);
}

uint64_t sub_1012940BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23DA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101294134(uint64_t a1)
{

  operator delete();
}

id sub_1012941E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101F23DC8;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_101294238(id *a1)
{

  operator delete(a1);
}

void sub_101294274(uint64_t a1, ActiveSubscriptions *a2, const object *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 2);
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v7 = *(v4 + 24);
  v8 = *(v4 + 5);
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  rest::read_rest_value(v4, a2, a3);
  [*(a1 + 16) _handleActiveSubscriptionsChanged_sync:&v5];
  v9 = &v7;
  sub_1001A8E64(&v9);
  v9 = &v5;
  sub_1001A8E64(&v9);
}

uint64_t sub_101294318(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23E28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101294390(uint64_t a1)
{

  operator delete();
}

id sub_101294444(uint64_t a1, void *a2)
{
  *a2 = off_101F23E58;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_101294494(id *a1)
{

  operator delete(a1);
}

void sub_1012944D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 getLogContext];
    v3 = v16;
  }

  else
  {
    v3 = 0;
    __p = 0;
    v16 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting", &__p, 2u);
  }

  [*(*(a1 + 8) + 144) start];
  ServiceMap = Registry::getServiceMap(*(*(a1 + 8) + 184));
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
  __p = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__p);
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
        goto LABEL_22;
      }

      goto LABEL_15;
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
    goto LABEL_22;
  }

LABEL_15:
  v14 = *(a1 + 8);
  if (v14)
  {
    [v14 getQueue];
  }

  else
  {
    object = 0;
  }

  sub_10000501C(&__p, "CTXPCServer");
  (*(*v12 + 16))(v12, &object, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

LABEL_22:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1012946A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012946F0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23EB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10129473C(uint64_t a1)
{
  *a1 = off_101F23ED8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_10129479C(uint64_t a1)
{
  *a1 = off_101F23ED8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1012948A0(uint64_t a1, void *a2)
{
  *a2 = off_101F23ED8;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = a2[2];
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_101294920(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 8);
}

void sub_10129496C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete(a1);
}

uint64_t sub_1012949C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 getLogContext];
    v3 = v6;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down", &v5, 2u);
  }

  ctu::RestModule::disconnect(*(*(a1 + 8) + 8));
  result = *(*(a1 + 8) + 96);
  if (result)
  {
    result = os_state_remove_handler();
    *(*(a1 + 8) + 96) = 0;
  }

  return result;
}

uint64_t sub_101294A7C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23F38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101294AC8(uint64_t a1)
{
  *a1 = off_101F23F58;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101294B1C(uint64_t a1)
{
  *a1 = off_101F23F58;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_101294C28(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F23F58;
  result = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 32) = v7;
  *(a2 + 37) = 0;
  *(a2 + 39) = 0;
  return result;
}

void sub_101294CAC(void *a1)
{
  sub_1012952E8(a1 + 8);

  operator delete(a1);
}

void sub_101294CE8(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = (v2 + 8);
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 4);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *&v4[8 * v10];
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 4))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 208)
  {
    if (v11)
    {
      [v11 getLogContext];
      v13 = *&buf[8];
    }

    else
    {
      v13 = 0;
      memset(buf, 0, sizeof(buf));
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = *(a1 + 32);
    *buf = 67109120;
    *&buf[4] = v16;
    v17 = "setAssertionForConnection: xpc connection for connectionType %d not found";
LABEL_35:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v17, buf, 8u);
    return;
  }

  if (*(a1 + 36) == 1)
  {
    if (v11)
    {
      [v11 getLogContext];
      v12 = *&buf[8];
    }

    else
    {
      v12 = 0;
      memset(buf, 0, sizeof(buf));
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setAssertionForConnection: added dataConnection Assertion for connectionType %d", buf, 8u);
    }

    memset(buf, 0, sizeof(buf));
    sub_1006CB7F4(buf);
  }

  v14 = *(v7 + 10);
  if (v14 == *(v7 + 11))
  {
LABEL_21:
    if (v11)
    {
      [v11 getLogContext];
      v13 = *&buf[8];
    }

    else
    {
      v13 = 0;
      memset(buf, 0, sizeof(buf));
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = *(a1 + 32);
    *buf = 67109120;
    *&buf[4] = v21;
    v17 = "setAssertionForConnection: failed removing dataConnection Assertion. ConnectionType %d not found";
    goto LABEL_35;
  }

  v15 = -v14;
  while (sub_1006CBAFC(*v14) != *(a1 + 32))
  {
    v14 += 2;
    v15 -= 16;
    if (v14 == *(v7 + 11))
    {
      v11 = *(a1 + 8);
      goto LABEL_21;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    [v19 getLogContext];
    v20 = *&buf[8];
  }

  else
  {
    v20 = 0;
    memset(buf, 0, sizeof(buf));
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "setAssertionForConnection: removed dataConnection Assertion for connectionType %d", buf, 8u);
  }

  v23 = *(v7 + 11);
  if (16 - v15 == v23)
  {
    v29 = -v15;
  }

  else
  {
    v24 = *(v7 + 10);
    v25 = v24 - v15;
    do
    {
      v26 = v25 - v24;
      v27 = *(v25 - v24 + 16);
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      v28 = *(v25 - v24 + 8);
      *v26 = v27;
      if (v28)
      {
        sub_100004A34(v28);
      }

      v25 += 16;
    }

    while (v25 - v24 + 16 != v23);
    v23 = *(v7 + 11);
    v29 = v25 - v24;
  }

  while (v23 != v29)
  {
    v30 = *(v23 - 8);
    if (v30)
    {
      sub_100004A34(v30);
    }

    v23 -= 16;
  }

  *(v7 + 11) = v29;
}

void sub_101295254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10129529C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F23FB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012952E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *a1;
}

uint64_t sub_101295328(uint64_t a1)
{
  *a1 = off_101F23FD8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10129537C(uint64_t a1)
{
  *a1 = off_101F23FD8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_101295478(uint64_t a1, void *a2)
{
  *a2 = off_101F23FD8;
  result = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = result;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = *(a1 + 32);
  return result;
}

void sub_1012954EC(void *a1)
{
  sub_1012952E8(a1 + 8);

  operator delete(a1);
}

void sub_101295528(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 26)
  {
    if (v11)
    {
      [v11 getLogContext];
      v26 = *&v36[8];
    }

    else
    {
      v26 = 0;
      *v36 = 0;
      *&v36[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(v36);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      *v36 = 134217984;
      *&v36[4] = v30;
      v31 = "setApplicationCategory: xpc connection for category %llu not found";
LABEL_37:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v31, v36, 0xCu);
    }
  }

  else
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *v12;
      ServiceMap = Registry::getServiceMap(v11[23]);
      v15 = ServiceMap;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(ServiceMap);
      *v36 = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, v36);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
            goto LABEL_18;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
LABEL_18:
        v24 = *(a1 + 8);
        if (v24)
        {
          [v24 getLogContext];
          v25 = *&v36[8];
        }

        else
        {
          v25 = 0;
          *v36 = 0;
          *&v36[8] = 0;
        }

        ctu::OsLogContext::~OsLogContext(v36);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          v35 = "DataService empty";
          goto LABEL_51;
        }

        goto LABEL_47;
      }

LABEL_26:
      v27 = (*(*v22 + 904))(v22);
      if (v27)
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          [v28 getLogContext];
          v29 = *&v36[8];
        }

        else
        {
          v29 = 0;
          *v36 = 0;
          *&v36[8] = 0;
        }

        ctu::OsLogContext::~OsLogContext(v36);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          *v36 = 134218240;
          *&v36[4] = v34;
          *&v36[12] = 1024;
          *&v36[14] = v13;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "setApplicationCategory: %llu for pid %d", v36, 0x12u);
        }

        (*(*v27 + 120))(v27, v13, *(a1 + 32));
      }

      else
      {
        v32 = *(a1 + 8);
        if (v32)
        {
          [v32 getLogContext];
          v25 = *&v36[8];
        }

        else
        {
          v25 = 0;
          *v36 = 0;
          *&v36[8] = 0;
        }

        ctu::OsLogContext::~OsLogContext(v36);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          v35 = "SliceManager empty";
LABEL_51:
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v35, v36, 2u);
          if (v23)
          {
            return;
          }

LABEL_48:
          sub_100004A34(v21);
          return;
        }
      }

LABEL_47:
      if (v23)
      {
        return;
      }

      goto LABEL_48;
    }

    if (v11)
    {
      [v11 getLogContext];
      v26 = *&v36[8];
    }

    else
    {
      v26 = 0;
      *v36 = 0;
      *&v36[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(v36);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      *v36 = 134217984;
      *&v36[4] = v33;
      v31 = "setApplicationCategory: process info for category %llu not found";
      goto LABEL_37;
    }
  }
}

void sub_101295928(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101295964(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012959B0(uint64_t a1)
{
  *a1 = off_101F24058;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101295A0C(uint64_t a1)
{
  *a1 = off_101F24058;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_101295B18(uint64_t a1, void *a2)
{
  *a2 = off_101F24058;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  a2[5] = result;
  return result;
}

void sub_101295B90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_101295BD8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_101295C28(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 26)
  {
    if (v11)
    {
      [v11 getLogContext];
      v26 = *&buf[8];
    }

    else
    {
      v26 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = asStringBool(*(a1 + 32));
      v31 = asStringDataIdsTrafficType();
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      v32 = "updateIdsTrafficStatus: xpc connection for IDS (isStart=%s, dataType=%s) not found";
LABEL_38:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
    }
  }

  else
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *v12;
      ServiceMap = Registry::getServiceMap(v11[23]);
      v15 = ServiceMap;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(ServiceMap);
      *buf = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, buf);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
LABEL_18:
            v24 = *(a1 + 8);
            if (v24)
            {
              [v24 getLogContext];
              v25 = *&buf[8];
            }

            else
            {
              v25 = 0;
              *buf = 0;
              *&buf[8] = 0;
            }

            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DataService uninitialized", buf, 2u);
            }

            (*(*(a1 + 40) + 16))();
LABEL_43:
            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

            return;
          }

LABEL_26:
          v27 = *(a1 + 36);
          v28 = *(a1 + 8);
          if (v28)
          {
            [v28 getLogContext];
            v29 = *&buf[8];
          }

          else
          {
            v29 = 0;
            *buf = 0;
            *&buf[8] = 0;
          }

          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v33 = asStringBool(*(a1 + 32));
            v34 = asStringDataIdsTrafficType();
            *buf = 136315394;
            *&buf[4] = v33;
            *&buf[12] = 2080;
            *&buf[14] = v34;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "updateIdsTrafficStatus: isStart = %s, dataType = %s", buf, 0x16u);
          }

          *&buf[16] = 0;
          v35 = objc_retainBlock(*(a1 + 40));
          *buf = off_101F240C8;
          *&buf[8] = v35;
          v41 = buf;
          v36 = *(a1 + 32);
          sub_1000224C8(v39, buf);
          (*(*v22 + 936))(v22, v13, v36, v27, v39);
          sub_10000FF50(v39);
          sub_10000FF50(buf);
          goto LABEL_43;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v11)
    {
      [v11 getLogContext];
      v26 = *&buf[8];
    }

    else
    {
      v26 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = asStringBool(*(a1 + 32));
      v38 = asStringDataIdsTrafficType();
      *buf = 136315394;
      *&buf[4] = v37;
      *&buf[12] = 2080;
      *&buf[14] = v38;
      v32 = "updateIdsTrafficStatus: process info for IDS (isStart=%s, dataType=%s) not found";
      goto LABEL_38;
    }
  }
}

void sub_10129605C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012960BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101296134(uint64_t a1)
{

  operator delete();
}

id sub_1012961E8(uint64_t a1, void *a2)
{
  *a2 = off_101F240C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101296238(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101296294(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24128))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10129636C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F241B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101296444(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24238))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10129651C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F242B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012965F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101296640(uint64_t a1)
{
  *a1 = off_101F24358;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10129669C(uint64_t a1)
{
  *a1 = off_101F24358;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_1012967A8(uint64_t a1, void *a2)
{
  *a2 = off_101F24358;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  a2[5] = result;
  return result;
}

void sub_101296820(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_101296868(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1012968B8(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 26)
  {
    if (v11)
    {
      [v11 getLogContext];
      v26 = *&buf[8];
    }

    else
    {
      v26 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = asStringDataAvsTrafficStatus();
      v32 = asStringDataAvsTrafficType();
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = v32;
      v33 = "updateAvsTrafficStatus: xpc connection for AVS (status=%s, dataType=%s) not found";
LABEL_38:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v33, buf, 0x16u);
    }
  }

  else
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *v12;
      ServiceMap = Registry::getServiceMap(v11[23]);
      v15 = ServiceMap;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(ServiceMap);
      *buf = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, buf);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
LABEL_18:
            v24 = *(a1 + 8);
            if (v24)
            {
              [v24 getLogContext];
              v25 = *&buf[8];
            }

            else
            {
              v25 = 0;
              *buf = 0;
              *&buf[8] = 0;
            }

            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DataService uninitialized", buf, 2u);
            }

            (*(*(a1 + 40) + 16))();
LABEL_43:
            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

            return;
          }

LABEL_26:
          v27 = *(a1 + 32);
          v28 = *(a1 + 36);
          v29 = *(a1 + 8);
          if (v29)
          {
            [v29 getLogContext];
            v30 = *&buf[8];
          }

          else
          {
            v30 = 0;
            *buf = 0;
            *&buf[8] = 0;
          }

          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v34 = asStringDataAvsTrafficStatus();
            v35 = asStringDataAvsTrafficType();
            *buf = 136315394;
            *&buf[4] = v34;
            *&buf[12] = 2080;
            *&buf[14] = v35;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "updateAvsTrafficStatus: status = %s, dataType = %s", buf, 0x16u);
          }

          *&buf[16] = 0;
          v36 = objc_retainBlock(*(a1 + 40));
          *buf = off_101F243C8;
          *&buf[8] = v36;
          v41 = buf;
          sub_1000224C8(v39, buf);
          (*(*v22 + 944))(v22, v13, v27, v28, v39);
          sub_10000FF50(v39);
          sub_10000FF50(buf);
          goto LABEL_43;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v11)
    {
      [v11 getLogContext];
      v26 = *&buf[8];
    }

    else
    {
      v26 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = asStringDataAvsTrafficStatus();
      v38 = asStringDataAvsTrafficType();
      *buf = 136315394;
      *&buf[4] = v37;
      *&buf[12] = 2080;
      *&buf[14] = v38;
      v33 = "updateAvsTrafficStatus: process info for AVS (status=%s, dataType=%s) not found";
      goto LABEL_38;
    }
  }
}

void sub_101296CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101296D50(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101296DC8(uint64_t a1)
{

  operator delete();
}

id sub_101296E7C(uint64_t a1, void *a2)
{
  *a2 = off_101F243C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101296ECC(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101296F28(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297000(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F244B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012970D8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297124(uint64_t a1)
{
  *a1 = off_101F24558;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101297180(uint64_t a1)
{
  *a1 = off_101F24558;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_101297290(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24558;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  *(a2 + 40) = result;
  return result;
}

void sub_101297308(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_101297350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1012973A0(uint64_t a1)
{
  v2 = *(a1 + 8) + 200;
  v3 = **(a1 + 16);
  v6 = *(v2 + 8);
  v5 = v2 + 8;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v3 < *(v7 + 32))
  {
LABEL_9:
    v7 = v5;
  }

  v11 = *(a1 + 8);
  if (v7 == v11 + 26)
  {
    if (v11)
    {
      [v11 getLogContext];
      v26 = *(&buf + 1);
    }

    else
    {
      v26 = 0;
      buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = asStringBool(*(a1 + 32));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v29;
      v30 = "updateVoipCallTrafficStatus: xpc connection for VoIP Call (isStart = %s) not found";
LABEL_38:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v30, &buf, 0xCu);
    }
  }

  else
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *v12;
      ServiceMap = Registry::getServiceMap(v11[23]);
      v15 = ServiceMap;
      if (v16 < 0)
      {
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v18 = 5381;
        do
        {
          v16 = v18;
          v19 = *v17++;
          v18 = (33 * v18) ^ v19;
        }

        while (v19);
      }

      std::mutex::lock(ServiceMap);
      *&buf = v16;
      v20 = sub_100009510(&v15[1].__m_.__sig, &buf);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v15);
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
          v23 = 0;
          if (!v22)
          {
LABEL_18:
            v24 = *(a1 + 8);
            if (v24)
            {
              [v24 getLogContext];
              v25 = *(&buf + 1);
            }

            else
            {
              v25 = 0;
              buf = 0uLL;
            }

            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DataService uninitialized", &buf, 2u);
            }

            (*(*(a1 + 40) + 16))();
LABEL_43:
            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

            return;
          }

LABEL_26:
          v27 = *(a1 + 8);
          if (v27)
          {
            [v27 getLogContext];
            v28 = *(&buf + 1);
          }

          else
          {
            v28 = 0;
            buf = 0uLL;
          }

          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v31 = asStringBool(*(a1 + 32));
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v31;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updateVoipCallTrafficStatus: isStart = %s", &buf, 0xCu);
          }

          v37 = 0;
          v32 = objc_retainBlock(*(a1 + 40));
          *&buf = off_101F245C8;
          *(&buf + 1) = v32;
          p_buf = &buf;
          v33 = *(a1 + 32);
          sub_1000224C8(v35, &buf);
          (*(*v22 + 952))(v22, v13, v33, v35);
          sub_10000FF50(v35);
          sub_10000FF50(&buf);
          goto LABEL_43;
        }
      }

      else
      {
        v22 = 0;
      }

      std::mutex::unlock(v15);
      v21 = 0;
      v23 = 1;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v11)
    {
      [v11 getLogContext];
      v26 = *(&buf + 1);
    }

    else
    {
      v26 = 0;
      buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v34 = asStringBool(*(a1 + 32));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v34;
      v30 = "updateVoipCallTrafficStatus: process info for VoIP Call (isStart = %s) not found";
      goto LABEL_38;
    }
  }
}

void sub_101297784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012977E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24638))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129785C(uint64_t a1)
{

  operator delete();
}

id sub_101297910(uint64_t a1, void *a2)
{
  *a2 = off_101F245C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101297960(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1012979BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24628))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297A94(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F246B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101297B0C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_101297BF0(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

uint64_t sub_101297C2C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24738))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101297CA4(uint64_t a1)
{

  operator delete();
}

id sub_101297D58(uint64_t a1, void *a2)
{
  *a2 = off_101F24758;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_101297DA8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101297DE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v4 = xpc_null_create();
  v5 = *(a1 + 8);
  v9 = v4;
  v10 = v7;
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = xpc_null_create();
  [v5 _handleGetClientsQuery_sync:&v9];
  sub_101297EC4(&v9);
  return sub_101297EC4(v8);
}

void sub_101297E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_101297EC4(va1);
  sub_101297EC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101297E78(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F247B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101297EC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    if (*a1)
    {
      xpc_retain(*a1);
    }

    else
    {
      v2 = xpc_null_create();
    }

    v3 = *(a1 + 8);
    v4 = *v3;
    *v3 = v2;
    xpc_release(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_101297F60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F247D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101297FB4(uint64_t a1)
{
  *a1 = off_101F24828;
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));
  return a1;
}

void sub_10129800C(uint64_t a1)
{
  *a1 = off_101F24828;
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));

  operator delete();
}

uint64_t sub_10129810C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F24828;
  objc_copyWeak((a2 + 8), (a1 + 8));
  v4 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return ctu::OsLogContext::OsLogContext((a2 + 32), (a1 + 32));
}

void sub_101298188(uint64_t a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));
}

void sub_1012981D0(uint64_t a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  objc_destroyWeak((a1 + 8));

  operator delete(a1);
}

void sub_101298220(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0;
  rest::read_rest_value(&v7, &object, v3);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processAppEntitlement_sync:a1 + 16 appInfo:{&v7, object}];
  }

  xpc_release(object);
}

uint64_t sub_1012982C4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24888))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101298344(uint64_t a1)
{

  operator delete();
}

id sub_10129840C(uint64_t a1, void *a2)
{
  *a2 = off_101F248A8;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_101298464(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1012984A0(id *a1)
{

  operator delete(a1);
}

void sub_1012984E4(uint64_t a1)
{
  v2 = [*(*(a1 + 8) + 152) requiredEntitlementForNotification:{objc_msgSend(*(a1 + 16), "selector")}];
  v4 = *(a1 + 8);
  v5 = v4 + 26;
  v6 = v4[25];
  if (v6 != v4 + 26)
  {
    v7 = 0;
    *&v3 = 136315394;
    v37 = v3;
    while (1)
    {
      v8 = v6[5];
      if (!v8)
      {
        break;
      }

      v9 = (*(**(v8 + 32) + 16))(*(v8 + 32), v2);
      v10 = *(a1 + 8);
      if (v9 != 1)
      {
        goto LABEL_9;
      }

      v11 = [v10[19] accessControlListForRequest:{objc_msgSend(*(a1 + 16), "selector")}];
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v6[4];
      v13 = v6[5];
      v14 = *(v13 + 4);
      if (v12)
      {
        [v12 auditToken];
        v13 = v6[5];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v19 = *v13;
      if (*(v13 + 31) < 0)
      {
        sub_100005F2C(__dst, *(v13 + 1), *(v13 + 2));
      }

      else
      {
        v20 = *(v13 + 2);
        v39 = *(v13 + 3);
        *__dst = v20;
      }

      *__p = v19;
      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(&__p[8], __dst[0], __dst[1]);
      }

      else
      {
        *&__p[8] = *__dst;
        v41 = v39;
      }

      v21 = (*(*v14 + 32))(v14, buf, __p, v11);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__dst[0]);
        if (v21)
        {
LABEL_30:
          v7 += [*(a1 + 8) _sendNotification_sync:*(a1 + 16) connection:{v6[4], v37}];
          goto LABEL_36;
        }
      }

      else if (v21)
      {
        goto LABEL_30;
      }

      v22 = *(a1 + 8);
      if (v22)
      {
        [v22 getLogContext];
        v23 = *&buf[8];
      }

      else
      {
        v23 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      sub_10000A318(buf, v6[5]);
      if ((buf[23] & 0x80u) == 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      v18 = NSStringFromSelector([*(a1 + 16) selector]);
      *__p = v37;
      *&__p[4] = v27;
      *&__p[12] = 2112;
      *&__p[14] = v18;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Client [%s] is not allowed for notification %@", __p, 0x16u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_18:

LABEL_36:
      v24 = v6[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v6[2];
          v26 = *v25 == v6;
          v6 = v25;
        }

        while (!v26);
      }

      v6 = v25;
      if (v25 == v5)
      {
        v4 = *(a1 + 8);
        goto LABEL_50;
      }
    }

    v10 = *(a1 + 8);
LABEL_9:
    if (v10)
    {
      [v10 getLogContext];
      v15 = *&buf[8];
    }

    else
    {
      v15 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    sub_10000A318(__p, v6[5]);
    if (__p[23] >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v17 = sub_100016788(v2);
    v18 = NSStringFromSelector([*(a1 + 16) selector]);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    *&buf[24] = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Client [%s] entitlement failed: '%s', required for notification %@", buf, 0x20u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_18;
  }

  v7 = 0;
LABEL_50:
  v28 = [v4 factory];
  v29 = [v28 createSensitiveObjectClassifier];

  v30 = [*(a1 + 16) invocationDescriptionWithClassifier:v29];
  if ([v29 foundSensitiveObject])
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      [v31 getLogContext];
      v32 = *&buf[8];
    }

    else
    {
      v32 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(a1 + 8) + 216);
      *buf = 134218499;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v34;
      *&buf[22] = 2117;
      *&buf[24] = v30;
      v35 = "Sent notification to %zu (of %zu) clients: %{sensitive}@";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x20u);
    }
  }

  else
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      [v33 getLogContext];
      v32 = *&buf[8];
    }

    else
    {
      v32 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(*(a1 + 8) + 216);
      *buf = 134218498;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      *&buf[24] = v30;
      v35 = "Sent notification to %zu (of %zu) clients: %@";
      goto LABEL_61;
    }
  }
}

uint64_t sub_101298ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24908))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101298B28()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

_OWORD *sub_101298B50(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (TelephonyRadiosGetRadioVendor() == 1)
  {
    operator new();
  }

  return a1;
}

void sub_101298C40(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  v5 = v1[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[3];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101298CFC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101F24928;
  sub_101298B50((a1 + 24));
  return a1;
}

void sub_101298D78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101298DCC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_101298E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F24978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101299064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000FF50(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void sub_101299258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1006647E4(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void sub_101299480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, char a16)
{
  sub_1006648E4(&a16);
  sub_1012994E8(&a9);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012994E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1012997A4(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101299A60(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101299C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100664864(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void sub_101299F64(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A298(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A5B0(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10129A650(uint64_t a1)
{

  operator delete();
}

id sub_10129A704(uint64_t a1, void *a2)
{
  *a2 = off_101F249C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129A754(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129A7A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24A28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129A820(uint64_t a1)
{

  operator delete();
}

id sub_10129A8D4(uint64_t a1, void *a2)
{
  *a2 = off_101F24A48;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129A924(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129A97C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10129A9C8(uint64_t a1)
{
  *a1 = off_101F24AD8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_10129AA1C(uint64_t a1)
{
  *a1 = off_101F24AD8;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete();
}

void sub_10129AB08(uint64_t a1, void *a2)
{
  *a2 = off_101F24AD8;
  v4 = objc_retainBlock(*(a1 + 8));
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void sub_10129AB84(void *a1)
{
  sub_10129AD4C(a1 + 8);

  operator delete(a1);
}

void sub_10129ABC0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  objc_retainBlock(*(a1 + 8));
  sub_10129B234(&v4, a3);
  operator new();
}

uint64_t sub_10129AD00(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24B48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129AD4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
}

uint64_t *sub_10129AD8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      *(v1 + 160) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 128);
    if (v3)
    {
      *(v1 + 136) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 104);
    if (v4)
    {
      *(v1 + 112) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 80);
    if (v5)
    {
      *(v1 + 88) = v5;
      operator delete(v5);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10129AE1C(uint64_t a1)
{
  v38 = a1;
  if (*(a1 + 8) == 1)
  {
    v2 = objc_alloc_init(CTRadioFrequencyFrontEndScanData);
    [v2 setVersion:*(a1 + 16)];
    [v2 setHwPrdId:*(a1 + 20)];
    [v2 setHwSku:*(a1 + 24)];
    [v2 setHwRev:*(a1 + 28)];
    [v2 setHwHousing:*(a1 + 32)];
    [v2 setRfcInitPass:*(a1 + 36)];
    [v2 setRfcHwid:*(a1 + 40)];
    [v2 setRfcRev:*(a1 + 44)];
    [v2 setRfcMmwHwid:*(a1 + 48)];
    [v2 setRfcMmwRev:*(a1 + 52)];
    [v2 setFr2TrxRev:*(a1 + 56)];
    [v2 setRffeScanPass:*(a1 + 60)];
    [v2 setNumExpectedDevices:*(a1 + 64)];
    [v2 setNumDetectedDevices:*(a1 + 68)];
    [v2 setNumMissingDevices:*(a1 + 72)];
    v4 = *(a1 + 80);
    v3 = *(a1 + 88);
    v5 = v3 - v4;
    if (v3 != v4)
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:v5];
      [v2 setRffeScanInfo:v6];

      v7 = 0;
      v8 = 1;
      do
      {
        v9 = [v2 rffeScanInfo];
        v10 = [NSNumber numberWithInteger:*(*(a1 + 80) + v7)];
        [v9 addObject:v10];

        v7 = v8;
        v11 = v5 > v8++;
      }

      while (v11);
    }

    v13 = *(a1 + 104);
    v12 = *(a1 + 112);
    v14 = v12 - v13;
    if (v12 != v13)
    {
      v15 = [[NSMutableArray alloc] initWithCapacity:v14];
      [v2 setMissingRffeDevices:v15];

      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v2 missingRffeDevices];
        v19 = [NSNumber numberWithInteger:*(*(a1 + 104) + v16)];
        [v18 addObject:v19];

        v16 = v17;
        v11 = v14 > v17++;
      }

      while (v11);
    }

    v21 = *(a1 + 128);
    v20 = *(a1 + 136);
    v22 = v20 - v21;
    if (v20 != v21)
    {
      v23 = [[NSMutableArray alloc] initWithCapacity:v22];
      [v2 setMissingAtDevices:v23];

      v24 = 0;
      v25 = 1;
      do
      {
        v26 = [v2 missingAtDevices];
        v27 = [NSNumber numberWithInteger:*(*(a1 + 128) + v24)];
        [v26 addObject:v27];

        v24 = v25;
        v11 = v22 > v25++;
      }

      while (v11);
    }

    v29 = *(a1 + 152);
    v28 = *(a1 + 160);
    v30 = v28 - v29;
    if (v28 != v29)
    {
      v31 = [[NSMutableArray alloc] initWithCapacity:v30];
      [v2 setMissingMmwDevices:v31];

      v32 = 0;
      v33 = 1;
      do
      {
        v34 = [v2 missingMmwDevices];
        v35 = [NSNumber numberWithInteger:*(*(a1 + 152) + v32)];
        [v34 addObject:v35];

        v32 = v33;
        v11 = v30 > v33++;
      }

      while (v11);
    }

    (*(*a1 + 16))();
  }

  else
  {
    v36 = *a1;
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v36 + 16))(v36, 0, v2);
  }

  return sub_10129AD8C(&v38);
}

void sub_10129B1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10129AD8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10129B234(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 64) = 0;
  *a1 = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100034C50(a1 + 64, *(a2 + 8), *(a2 + 9), *(a2 + 9) - *(a2 + 8));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_100034C50(a1 + 88, *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100034C50(a1 + 112, *(a2 + 14), *(a2 + 15), *(a2 + 15) - *(a2 + 14));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100034C50(a1 + 136, *(a2 + 17), *(a2 + 18), *(a2 + 18) - *(a2 + 17));
  return a1;
}

void sub_10129B2F4(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[15] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[9] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10129B36C(uint64_t a1)
{

  operator delete();
}

id sub_10129B420(uint64_t a1, void *a2)
{
  *a2 = off_101F24B68;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129B470(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10129B4AC(uint64_t a1, unsigned __int8 *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))(result, *a2);
  }

  return result;
}

uint64_t sub_10129B4C8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24BC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129B540(uint64_t a1)
{

  operator delete();
}

id sub_10129B5F4(uint64_t a1, void *a2)
{
  *a2 = off_101F24BE8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129B644(id *a1)
{

  operator delete(a1);
}

void sub_10129B680(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v20, *a2, *(a2 + 8));
  }

  else
  {
    *v20 = *a2;
    v21 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v22, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v22 = *(a2 + 24);
    v23 = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
    v25 = *(a2 + 64);
  }

  v4 = objc_alloc_init(CTCellularConfigUpdateInfo);
  v5 = SHIBYTE(v21);
  v6 = v20[0];
  v7 = +[NSString defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = v6;
  }

  v9 = [NSString stringWithCString:v8 encoding:v7, v20[0], v20[1], v21];
  [v4 setConfigType:v9];

  v10 = SHIBYTE(v23);
  v11 = v22;
  v12 = +[NSString defaultCStringEncoding];
  if (v10 >= 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v11;
  }

  v14 = [NSString stringWithCString:v13 encoding:v12];
  [v4 setUpdatedTime:v14];

  v15 = SHIBYTE(v25);
  v16 = __p;
  v17 = +[NSString defaultCStringEncoding];
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v16;
  }

  v19 = [NSString stringWithCString:p_p encoding:v17];
  [v4 setUpdatedDetails:v19];

  (*(*(a1 + 8) + 16))();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_10129B870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10129B8E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24C58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129B95C(uint64_t a1)
{

  operator delete();
}

id sub_10129BA10(uint64_t a1, void *a2)
{
  *a2 = off_101F24C78;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129BA60(id *a1)
{

  operator delete(a1);
}

void sub_10129BA9C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (HIDWORD(*a3))
  {
    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*a3 >> 32 userInfo:0];
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = [NSNumber numberWithBool:*a2];
    (*(v3 + 16))(v3);
  }
}

uint64_t sub_10129BB6C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24CD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129BBE4(uint64_t a1)
{

  operator delete();
}

id sub_10129BC98(uint64_t a1, void *a2)
{
  *a2 = off_101F24CF8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10129BCE8(id *a1)
{

  operator delete(a1);
}

void sub_10129BD24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (HIDWORD(*a2))
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*a2 >> 32 userInfo:0];
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 8);

    v3(v4, 0);
  }
}

uint64_t sub_10129BDF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F24D58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10129C0E4(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10129C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  a17 = &a29;
  sub_10129FBD4(&a17);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}