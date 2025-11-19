void sub_10124D4DC(ServiceManager::Service *this)
{
  *this = off_101F1D968;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10124D538(ServiceManager::Service *this)
{
  *this = off_101F1D968;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10124D5B8@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10124D5FC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10122A7D8(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10122A7D8(v4, 0);
}

void sub_10124D69C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_10124D778(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v3 + 8));
  operator new();
}

uint64_t *sub_10124D888(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 144));
  v4 = *(v2 + 112);
  if (v4)
  {
    v5 = v1[1];
    *buf = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    (*(*v4 + 8))(v4, buf);
    if (*buf)
    {
      dispatch_group_leave(*buf);
      if (*buf)
      {
        dispatch_release(*buf);
      }
    }
  }

  v6 = *(v2 + 128);
  if (v6)
  {
    v7 = v1[1];
    group = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(v7);
    }

    (*(*v6 + 8))(v6, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  for (i = *(v2 + 64); i != v2 + 56; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 56));
  sub_1000FF844(&v11);
  return sub_1000049E0(&v10);
}

void sub_10124DA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, dispatch_group_t a13)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10124DA68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 80));
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  *(v2 + 2584) = v12;
  v13 = *(v2 + 2592);
  *(v2 + 2592) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(v2 + 112);
  if (v14)
  {
    v15 = v1[1];
    *buf = v15;
    if (v15)
    {
      dispatch_retain(v15);
      dispatch_group_enter(v15);
    }

    (**v14)(v14, buf);
    if (*buf)
    {
      dispatch_group_leave(*buf);
      if (*buf)
      {
        dispatch_release(*buf);
      }
    }
  }

  v16 = *(v2 + 128);
  if (v16)
  {
    v17 = v1[1];
    group = v17;
    if (v17)
    {
      dispatch_retain(v17);
      dispatch_group_enter(v17);
    }

    (**v16)(v16, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  sub_10123F14C(v2);
}

void sub_10124DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, dispatch_group_t a13)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10124DCD4(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v16, *(v1 + 80));
  ctu::RestModule::connect();
  if (v17)
  {
    sub_100004A34(v17);
  }

  subscriber::makeSimSlotRange();
  v3 = *buf;
  v4 = v14;
  if (*buf != v14)
  {
    v5 = v15;
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = v14;
    while (v3 != v6)
    {
      sub_10122BC78(v1, *v3);
      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
    }
  }

  subscriber::makeSimSlotRange();
  v7 = *buf;
  v8 = v14;
  if (*buf != v14)
  {
    v9 = v15;
    do
    {
      if (v9(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v8);
    v10 = v14;
    while (v7 != v10)
    {
      sub_10123D780(v1, *v7);
      do
      {
        ++v7;
      }

      while (v7 != v8 && (v9(*v7) & 1) == 0);
    }
  }

  v11 = *(v1 + 112);
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = *(v1 + 128);
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  operator delete();
}

void sub_10124DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  operator delete();
}

void sub_10124DF20(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  v5 = *v3;
  v4 = v3[1];
  v6 = *v4;
  v7 = sub_1002D750C(*v3 + 2560, v4);
  sub_10122B3A4(a2, v5, v6, *(v7[5] + 244));
}

void sub_10124DF90(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10124DFF8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10124E0C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10124E104(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124E13C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10124E16C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10124E214(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10124E250(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124E288(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10124E2B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10124E308(uint64_t result, uint64_t a2)
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

void sub_10124E324(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10124E344(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v4 = *(v1 + 16);
    v5 = **(v1 + 8);
    v6 = **(v1 + 24);

    return sub_10122D97C(v2, v5, v4, v6);
  }

  return result;
}

uint64_t sub_10124E3A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *sub_10124E440(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_10124E3A8(v7, v1 + 16);
  (*(*v2 + 480))(v2, v3, v7);
  sub_100DEC534(v7);
  sub_10124E528(&v6);
  return sub_1000049E0(&v5);
}

void sub_10124E4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100DEC534(va2);
  sub_10124E528(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10124E528(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DEC534(v1 + 16);
    operator delete();
  }

  return result;
}

BOOL sub_10124E578(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = **(v1 + 8);
  v4 = *(v1 + 16);
  if (*(v4 + 23) < 0)
  {
    sub_100005F2C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v9 = *(v4 + 2);
    *__p = v5;
  }

  isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(v2, v3, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return isEmergencyTextNumberForSlot_sync;
}

void sub_10124E5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10124E618(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *sub_10124E6B0(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_10124E618(v16, v1 + 16);
  v15 = v3;
  if (v17)
  {
    if (subscriber::isValidSimSlot())
    {
      v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        __p[0] = &v15;
        v5 = sub_1002D750C(v2 + 2560, &v15);
        CSIPhoneNumber::getFullNumber(__p, (v5[5] + 80));
        v6 = v14 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Smsc Address %s ", buf, 0xCu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v15;
      v7 = sub_1002D750C(v2 + 2560, &v15);
      CSIPhoneNumber::getFullNumber(__p, (v7[5] + 80));
      sub_10122D4E8(v17, __p, 0);
    }

    else
    {
      v9 = *(v2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid slot while reading Smsc Address...", __p, 2u);
      }

      sub_10000501C(__p, "");
      sub_10122D4E8(v17, __p, 0x1600000001);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid callback while reading Smsc Address...", __p, 2u);
    }
  }

  sub_100DEC0BC(v16);
  sub_10124E96C(&v12);
  return sub_1000049E0(&v11);
}

void sub_10124E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100DEC0BC(&a18);
  sub_10124E96C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10124E96C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DEC0BC(v1 + 16);
    operator delete();
  }

  return result;
}

double sub_10124E9CC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

double sub_10124EA38(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

void sub_10124EAA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (subscriber::isValidSimSlot())
  {
    v3 = *(v1 + 16);
    v4 = **(v1 + 8);
    v5 = **(v1 + 24);
    v6 = **(v1 + 32);

    sub_10122DB00(v2, v4, v3, v5, v6);
  }
}

uint64_t *sub_10124EB0C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_10124CA5C(&v6, v1[1], v1[2], (v1[2] - v1[1]) >> 4);
  sub_10122DF90(v2, v6, v7);
  v9 = &v6;
  sub_1000212F4(&v9);
  sub_10124EBB8(&v5);
  return sub_1000049E0(&v4);
}

void sub_10124EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 - 24) = &a11;
  sub_1000212F4((v11 - 24));
  sub_10124EBB8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10124EBB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1000212F4(&v2);
    operator delete();
  }

  return result;
}

uint64_t *sub_10124EC18(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v10 = sub_1002C9884(v1[1]);
  if (subscriber::isValidSimSlot())
  {
    if (sub_100462DD0(v1[1]) == 9)
    {
      v3 = v1[1];
      *buf = &v10;
      v4 = sub_1002D750C(v2 + 2560, &v10);
      sub_100462DD8(v3, *(v4[5] + 44));
    }

    v5 = v1[1];
    v6 = v1[2];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = sub_1002C9884(v5);
    sub_100462DF0(v5);
    operator new();
  }

  sub_10032EAB4(&v9);
  return sub_1000049E0(&v8);
}

void sub_10124F530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  a21 = &a25;
  sub_1000087B4(&a21);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v35);
  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_10032EAB4(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

void sub_10124F68C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1DC90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10124F770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10124F80C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10124F78C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124F7CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10124F80C(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[18];
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 87) < 0)
    {
      operator delete(v1[8]);
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(v1[5]);
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(v1[2]);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      operator delete();
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10124F8B4(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_10124F9C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124FA08(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10124FA48(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 184);
    if (v2)
    {
      v3 = *(result + 192);
      v4 = *(result + 184);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 9);
          v3 -= 4;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 184);
      }

      *(v1 + 192) = v2;
      operator delete(v4);
    }

    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    if (*(v1 + 151) < 0)
    {
      operator delete(*(v1 + 128));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10124FB2C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 24);
    sub_1000087B4(&v2);
    operator delete();
  }

  return result;
}

void sub_10124FB90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124FBC8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = (v1 + 24);
    sub_1000087B4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10124FC1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10124FC6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v3 + 8);
  v5[0] = *v3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  sub_101235AC8(v2, v5);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_10124FCE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10124FCF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10124FD90(uint64_t a1)
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

boost::archive::detail::basic_iarchive *sub_10124FE10(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);
  return a1;
}

uint64_t sub_10124FE40(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

void sub_10124FF80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1DEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

boost::archive::detail::basic_iarchive *sub_10124FFFC(boost::archive::detail::basic_iarchive *a1, uint64_t *a2)
{
  v3 = boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(a1, a2, 0);
  *v3 = off_101F1DEF8;
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(v3);
  return a1;
}

void sub_101250048(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(v1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
  _Unwind_Resume(a1);
}

void sub_101250064(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);

  operator delete();
}

void sub_1012500B4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1DF60;
  byte_101FCA418 = 1;
  sub_1012501C4(a1);
}

uint64_t *sub_1012500E0()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA6B0, 0);
  *v0 = off_101F1E008;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA6B0);
  qword_101FCA6B0[0] = off_101F1DF60;
  if (byte_101FCA418 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012501C4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E008;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101250224(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1DF60;
  byte_101FCA418 = 1;
  sub_1012501C4(a1);

  operator delete();
}

void sub_101250284(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_10125030C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101250340(boost::serialization::extended_type_info *a1)
{
  sub_1012501C4(a1);

  operator delete();
}

void sub_101250378(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = 0;
  sub_100D0A83C();
  *(v6 + 32) = 0;
  v38 = 0;
  sub_100D0A83C();
  *(v6 + 36) = 0;
  sub_1012509D4();
  sub_1012509D4();
  sub_1012509D4();
  sub_1012509D4();
  sub_1012509D4();
  sub_101250A08(v4, v6 + 48);
  sub_101250A08(v4, v6 + 72);
  v39 = 0;
  sub_100D0A83C();
  *(v6 + 96) = 0;
  sub_1012509D4();
  sub_101250AD4();
  sub_101250B0C(v4, (v6 + 108));
  sub_1012509D4();
  sub_101250B0C(v4, (v6 + 116));
  sub_1012509D4();
  sub_101250AD4();
  sub_101250AD4();
  sub_101250AD4();
  sub_1012509D4();
  v40 = 0;
  sub_100D0A788();
  *(v6 + 137) = 0;
  sub_10124B458();
  boost::archive::detail::basic_iarchive::load_object(v4, v6 + 138, qword_101FCA548);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v34);
  sub_101250B5C(v4, &v34);
  v8 = v35;
  v7 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 144) = *v8;
  std::string::operator=((v6 + 152), (v8 + 8));
  std::string::operator=((v6 + 176), (v8 + 32));
  v9 = *(v8 + 56);
  *(v6 + 204) = *(v8 + 60);
  *(v6 + 200) = v9;
  std::string::operator=((v6 + 208), (v8 + 64));
  v10 = *(v8 + 88);
  *(v6 + 240) = *(v8 + 96);
  *(v6 + 232) = v10;
  std::string::operator=((v6 + 248), (v8 + 104));
  std::string::operator=((v6 + 272), (v8 + 128));
  *(v6 + 296) = *(v8 + 152);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v31);
  sub_101250B5C(v4, &v31);
  v12 = v32;
  v11 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 304) = *v12;
  std::string::operator=((v6 + 312), (v12 + 8));
  std::string::operator=((v6 + 336), (v12 + 32));
  v13 = *(v12 + 56);
  *(v6 + 364) = *(v12 + 60);
  *(v6 + 360) = v13;
  std::string::operator=((v6 + 368), (v12 + 64));
  v14 = *(v12 + 88);
  *(v6 + 400) = *(v12 + 96);
  *(v6 + 392) = v14;
  std::string::operator=((v6 + 408), (v12 + 104));
  std::string::operator=((v6 + 432), (v12 + 128));
  *(v6 + 456) = *(v12 + 152);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1012509D4();
  v28 = 0;
  v29 = 0;
  v30 = 0;
  CSIDateSerialized::CSIDateSerialized(&v28);
  sub_10124B920();
  boost::archive::detail::basic_iarchive::load_object(v4, &v28, qword_101FCA590);
  v16 = v29;
  v15 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *v16;
    v18 = v16[2];
    *(v6 + 488) = v16[1];
    *(v6 + 504) = v18;
    *(v6 + 472) = v17;
    sub_100004A34(v15);
  }

  else
  {
    v19 = *v29;
    v20 = v29[2];
    *(v6 + 488) = v29[1];
    *(v6 + 504) = v20;
    *(v6 + 472) = v19;
  }

  sub_1012509D4();
  sub_101250AD4();
  sub_1012509D4();
  sub_101250AD4();
  sub_1012509D4();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v25);
  sub_101250B5C(v4, &v25);
  v22 = v26;
  v21 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 544) = *v22;
  std::string::operator=((v6 + 552), (v22 + 8));
  std::string::operator=((v6 + 576), (v22 + 32));
  v23 = *(v22 + 56);
  *(v6 + 604) = *(v22 + 60);
  *(v6 + 600) = v23;
  std::string::operator=((v6 + 608), (v22 + 64));
  v24 = *(v22 + 88);
  *(v6 + 640) = *(v22 + 96);
  *(v6 + 632) = v24;
  std::string::operator=((v6 + 648), (v22 + 104));
  std::string::operator=((v6 + 672), (v22 + 128));
  *(v6 + 696) = *(v22 + 152);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_101250AD4();
  sub_101250AD4();
  sub_1012509D4();
  sub_101250AD4();
  sub_101250AD4();
  sub_101250AD4();
  sub_1012509D4();
  sub_1012509D4();
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v25);
  CSIDateSerialized::~CSIDateSerialized(&v28);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v31);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v34);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10125084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  CSIDateSerialized::~CSIDateSerialized(va);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va1);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va2);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1012509EC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_101250A08(boost::archive::detail::basic_iarchive *a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_10124B2C0();
  boost::archive::detail::basic_iarchive::load_object(a1, &v7, qword_101FCA530);
  sub_1001E0090(&v5, v7, v8, v8 - v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  v4 = v7;
  *(a2 + 16) = v6;
  if (v4)
  {
    v8 = v4;
    operator delete(v4);
  }
}

void sub_101250A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x101250A80);
  }

  _Unwind_Resume(exception_object);
}

void sub_101250AF0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *sub_101250B0C(uint64_t a1, _DWORD *a2)
{
  result = sub_100D0A83C();
  *a2 = 0;
  return result;
}

void sub_101250B4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x101250B3CLL);
}

void sub_101250B98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *sub_101250BB8()
{
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v1, 8, 0, 0);
    sub_100D09B24(v1);
  }

  return result;
}

void *sub_101250C68(const void *a1)
{
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

void sub_101250CC4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E050;
  byte_101FCA419 = 1;
  sub_101250DD4(a1);
}

uint64_t *sub_101250CF0()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA6D0, 0);
  *v0 = off_101F1E0F8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA6D0);
  qword_101FCA6D0[0] = off_101F1E050;
  if (byte_101FCA419 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101250DD4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E0F8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101250E34(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E050;
  byte_101FCA419 = 1;
  sub_101250DD4(a1);

  operator delete();
}

void sub_101250E94(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_101250F28(boost::serialization::extended_type_info *a1)
{
  sub_101250DD4(a1);

  operator delete();
}

void **sub_101250F60(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_101250FBC(uint64_t a1, const void *a2, void *a3)
{
  v4 = sub_101250C68(a2);
  v6 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v6);
  sub_101251090();
  if (v6 >= 4u)
  {
    v7 = 0;
    sub_100D0C27C();
  }

  result = sub_100647BA8(a3, 0);
  if (a3[1] != *a3)
  {
    a3[1] = *a3;
  }

  return result;
}

void *sub_101251090()
{
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v1, 8, 0, 0);
    sub_100D09B24(v1);
  }

  return result;
}

void sub_101251140(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E150;
  byte_101FCA41A = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_10125116C()
{
  sub_10124B1F4();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA530, qword_101FCA6D0);
  *result = off_101F1E150;
  if (byte_101FCA41A == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101251204(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E150;
  byte_101FCA41A = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_101251294(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E1D0;
  byte_101FCA41B = 1;
  sub_1012513A4(a1);
}

uint64_t *sub_1012512C0()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA6F0, 0);
  *v0 = off_101F1E278;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA6F0);
  qword_101FCA6F0[0] = off_101F1E1D0;
  if (byte_101FCA41B == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012513A4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E278;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101251404(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E1D0;
  byte_101FCA41B = 1;
  sub_1012513A4(a1);

  operator delete();
}

void sub_101251464(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_1012514EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_101251514(boost::serialization::extended_type_info *a1)
{
  sub_1012513A4(a1);

  operator delete();
}

void *sub_10125154C(uint64_t a1, const void *a2)
{
  sub_101250C68(a2);
  sub_100D0A788();

  return sub_100D0A788();
}

void sub_10125159C(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E2D0;
  byte_101FCA41C = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_1012515C8()
{
  sub_10124B38C();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA548, qword_101FCA6F0);
  *result = off_101F1E2D0;
  if (byte_101FCA41C == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101251660(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E2D0;
  byte_101FCA41C = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_1012516E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_10125170C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E350;
  byte_101FCA41D = 1;
  sub_10125181C(a1);
}

uint64_t *sub_101251738()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA710, 0);
  *v0 = off_101F1E3F8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA710);
  qword_101FCA710[0] = off_101F1E350;
  if (byte_101FCA41D == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_10125181C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E3F8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10125187C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E350;
  byte_101FCA41D = 1;
  sub_10125181C(a1);

  operator delete();
}

void sub_1012518DC(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101251964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101251998(boost::serialization::extended_type_info *a1)
{
  sub_10125181C(a1);

  operator delete();
}

void sub_1012519D0(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  sub_100D0A83C();
  *v6 = 0;
  sub_100D0A83C();
  sub_101251B94(v4, v6 + 8);
  sub_101251B94(v4, v6 + 32);
  v7 = 0;
  sub_10124B6BC();
  boost::archive::detail::basic_iarchive::load_object(v4, &v7, qword_101FCA560);
  if (v7 == 1)
  {
    *(v6 + 56) = HIDWORD(v7);
    *(v6 + 60) = 1;
  }

  sub_101251B94(v4, v6 + 104);
  sub_101251B94(v4, v6 + 128);
  sub_101251C60();
  sub_101251C60();
  v9 = 0;
  sub_100D0A83C();
  *(v6 + 152) = v9;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_101251B94(boost::archive::detail::basic_iarchive *a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_10124B2C0();
  boost::archive::detail::basic_iarchive::load_object(a1, &v7, qword_101FCA530);
  sub_1001E0090(&v5, v7, v8, v8 - v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  v4 = v7;
  *(a2 + 16) = v6;
  if (v4)
  {
    v8 = v4;
    operator delete(v4);
  }
}

void sub_101251C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x101251C0CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_101251C78(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_101251C94(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E440;
  byte_101FCA41E = 1;
  sub_101251DA4(a1);
}

uint64_t *sub_101251CC0()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA730, 0);
  *v0 = off_101F1E4E8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA730);
  qword_101FCA730[0] = off_101F1E440;
  if (byte_101FCA41E == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101251DA4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E4E8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101251E04(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E440;
  byte_101FCA41E = 1;
  sub_101251DA4(a1);

  operator delete();
}

void sub_101251E64(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_101251EEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_101251F14(boost::serialization::extended_type_info *a1)
{
  sub_101251DA4(a1);

  operator delete();
}

void *sub_101251F4C(uint64_t a1, const void *a2, _BYTE *a3)
{
  sub_101250C68(a2);
  result = sub_101250BB8();
  *a3 = 0;
  return result;
}

void sub_101252000(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E570;
  byte_101FCA41F = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_10125202C()
{
  sub_10124B5F0();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA560, qword_101FCA730);
  *result = off_101F1E570;
  if (byte_101FCA41F == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012520C4(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E570;
  byte_101FCA41F = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_101252150(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_101252174(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E5F0;
  byte_101FCA420 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_1012521A0()
{
  sub_10124B524();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA578, qword_101FCA710);
  qword_101FCA578[0] = off_101F1E5F0;
  if (byte_101FCA420 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101252238(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E5F0;
  byte_101FCA420 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_1012522C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_1012522F0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E670;
  byte_101FCA421 = 1;
  sub_101252400(a1);
}

uint64_t *sub_10125231C()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA750, 0);
  *v0 = off_101F1E718;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA750);
  qword_101FCA750[0] = off_101F1E670;
  if (byte_101FCA421 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101252400(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E718;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101252460(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E670;
  byte_101FCA421 = 1;
  sub_101252400(a1);

  operator delete();
}

void sub_1012524C0(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101252548(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_10125257C(boost::serialization::extended_type_info *a1)
{
  sub_101252400(a1);

  operator delete();
}

void sub_1012525B4(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_101250C68(a2);
  v4 = *(a3 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1012526C0();
  sub_1012526C0();
  sub_1012526C0();
  sub_1012526C0();
  sub_1012526C0();
  sub_1012526C0();
  sub_1012526C0();
  sub_101250BB8();
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_1012526DC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1012526F8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E760;
  byte_101FCA422 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101252724()
{
  sub_10124B854();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA590, qword_101FCA750);
  *result = off_101F1E760;
  if (byte_101FCA422 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012527BC(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E760;
  byte_101FCA422 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_101252844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101252874(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E7E0;
  byte_101FCA423 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_1012528A0()
{
  sub_10124B128();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA5A8, qword_101FCA6B0);
  *result = off_101F1E7E0;
  if (byte_101FCA423 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101252938(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1E7E0;
  byte_101FCA423 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_1012529C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101252A10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1E860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101252A8C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E8B0;
  byte_101FCA424 = 1;
  sub_101252B9C(a1);
}

uint64_t *sub_101252AB8()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA770, 0);
  *v0 = off_101F1E958;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA770);
  qword_101FCA770[0] = off_101F1E8B0;
  if (byte_101FCA424 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101252B9C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E958;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101252BFC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E8B0;
  byte_101FCA424 = 1;
  sub_101252B9C(a1);

  operator delete();
}

void sub_101252C5C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101252CE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101252D18(boost::serialization::extended_type_info *a1)
{
  sub_101252B9C(a1);

  operator delete();
}

void sub_101252D50(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101253870();
  sub_10124BC50();
  boost::archive::detail::basic_iarchive::load_object(v4, v6 + 48, qword_101FCA5C0);
  sub_10124BF80();
  boost::archive::detail::basic_iarchive::load_object(v4, v6 + 72, qword_101FCA5F0);
  v50 = 0;
  sub_100D0A83C();
  *(v6 + 96) = 0;
  v51 = 0;
  sub_100D0A83C();
  *(v6 + 100) = 0;
  sub_101253870();
  sub_1012538A4();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v47);
  sub_1012538DC(v4, &v47);
  v8 = v48;
  v7 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 112) = *v8;
  std::string::operator=((v6 + 120), (v8 + 8));
  std::string::operator=((v6 + 144), (v8 + 32));
  v9 = *(v8 + 56);
  *(v6 + 172) = *(v8 + 60);
  *(v6 + 168) = v9;
  std::string::operator=((v6 + 176), (v8 + 64));
  v10 = *(v8 + 88);
  *(v6 + 208) = *(v8 + 96);
  *(v6 + 200) = v10;
  std::string::operator=((v6 + 216), (v8 + 104));
  std::string::operator=((v6 + 240), (v8 + 128));
  *(v6 + 264) = *(v8 + 152);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_1012538A4();
  sub_101253938(v4, (v6 + 276));
  v52 = 0;
  sub_100D0A83C();
  *(v6 + 280) = v52;
  v53 = 0;
  sub_100D0A83C();
  *(v6 + 284) = v53;
  sub_1012538A4();
  sub_101253870();
  v54 = 0;
  sub_100D0A83C();
  *(v6 + 296) = v54;
  sub_1012538A4();
  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_10124B2C0();
  boost::archive::detail::basic_iarchive::load_object(v4, &v57, qword_101FCA530);
  sub_1001E0090(&v55, v57, v58, v58 - v57);
  if (*(v6 + 327) < 0)
  {
    operator delete(*(v6 + 304));
  }

  *(v6 + 304) = v55;
  *(v6 + 320) = v56;
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  sub_1012538A4();
  v57 = 0;
  v58 = 0;
  v59 = 0;
  CSIDateSerialized::CSIDateSerialized(&v57);
  sub_101253988(v4, &v57);
  v12 = v58;
  v11 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = (v6 + 336);
    v14 = *v12;
    v15 = *(v12 + 2);
    *(v6 + 352) = *(v12 + 1);
    *(v6 + 368) = v15;
    *(v6 + 336) = v14;
    sub_100004A34(v11);
  }

  else
  {
    v13 = (v6 + 336);
    v16 = *v58;
    v17 = *(v58 + 2);
    *(v6 + 352) = *(v58 + 1);
    *(v6 + 368) = v17;
    *(v6 + 336) = v16;
  }

  v55 = 0uLL;
  v56 = 0;
  CSIDateSerialized::CSIDateSerialized(&v55);
  sub_101253988(v4, &v55);
  v19 = *(&v55 + 1);
  v18 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *v19;
    v21 = v19[2];
    v13[1] = v19[1];
    v13[2] = v21;
    *v13 = v20;
    sub_100004A34(v18);
  }

  else
  {
    v22 = **(&v55 + 1);
    v23 = *(*(&v55 + 1) + 32);
    v13[1] = *(*(&v55 + 1) + 16);
    v13[2] = v23;
    *v13 = v22;
  }

  v60 = 0;
  sub_100D0A83C();
  *(v6 + 432) = v60;
  v61 = 0;
  sub_100D0A83C();
  *(v6 + 436) = v61;
  v62 = 0;
  sub_100D0A83C();
  *(v6 + 440) = v62;
  sub_10124C118();
  boost::archive::detail::basic_iarchive::load_object(v4, v6 + 448, qword_101FCA608);
  v63 = 0;
  sub_100D0A83C();
  *(v6 + 456) = v63;
  v64 = 0;
  sub_100D0A83C();
  *(v6 + 460) = v64;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v44);
  sub_1012538DC(v4, &v44);
  v25 = v45;
  v24 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 464) = *v25;
  std::string::operator=((v6 + 472), (v25 + 8));
  std::string::operator=((v6 + 496), (v25 + 32));
  v26 = *(v25 + 56);
  *(v6 + 524) = *(v25 + 60);
  *(v6 + 520) = v26;
  std::string::operator=((v6 + 528), (v25 + 64));
  v27 = *(v25 + 88);
  *(v6 + 560) = *(v25 + 96);
  *(v6 + 552) = v27;
  std::string::operator=((v6 + 568), (v25 + 104));
  std::string::operator=((v6 + 592), (v25 + 128));
  *(v6 + 616) = *(v25 + 152);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v65 = 0;
  sub_100D0A83C();
  *(v6 + 624) = v65;
  sub_1012538A4();
  sub_101253938(v4, (v6 + 632));
  v66 = 0;
  sub_100D0A83C();
  *(v6 + 636) = v66;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  C2KVmnInfoSerialized::C2KVmnInfoSerialized(&v41);
  sub_10124C2B0();
  boost::archive::detail::basic_iarchive::load_object(v4, &v41, qword_101FCA620);
  v29 = v42;
  v28 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(v29 + 8);
  v31 = *(v29 + 24);
  *(v6 + 680) = *(v29 + 40);
  *(v6 + 648) = v30;
  *(v6 + 664) = v31;
  *(v6 + 688) = *(v29 + 48);
  std::string::operator=((v6 + 696), (v29 + 56));
  std::string::operator=((v6 + 720), (v29 + 80));
  v32 = *(v29 + 104);
  *(v6 + 748) = *(v29 + 108);
  *(v6 + 744) = v32;
  std::string::operator=((v6 + 752), (v29 + 112));
  v33 = *(v29 + 136);
  *(v6 + 784) = *(v29 + 144);
  *(v6 + 776) = v33;
  std::string::operator=((v6 + 792), (v29 + 152));
  std::string::operator=((v6 + 816), (v29 + 176));
  *(v6 + 840) = *(v29 + 200);
  *(v6 + 848) = *(v29 + 208);
  std::string::operator=((v6 + 856), (v29 + 216));
  std::string::operator=((v6 + 880), (v29 + 240));
  v34 = *(v29 + 264);
  *(v6 + 908) = *(v29 + 268);
  *(v6 + 904) = v34;
  std::string::operator=((v6 + 912), (v29 + 272));
  v35 = *(v29 + 296);
  *(v6 + 944) = *(v29 + 304);
  *(v6 + 936) = v35;
  std::string::operator=((v6 + 952), (v29 + 312));
  std::string::operator=((v6 + 976), (v29 + 336));
  *(v6 + 1000) = *(v29 + 360);
  *(v6 + 1008) = *(v29 + 368);
  ctu::OsLogLogger::operator=();
  if (v28)
  {
    sub_100004A34(v28);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  C2KVmnAckInfoSerialized::C2KVmnAckInfoSerialized(&v38);
  sub_10124C5E0();
  boost::archive::detail::basic_iarchive::load_object(v4, &v38, qword_101FCA650);
  v37 = v39;
  v36 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 1032) = *(v37 + 8);
  if (v6 + 1024 != v37)
  {
    sub_1000B26FC((v6 + 1048), *(v37 + 24), *(v37 + 32), (*(v37 + 32) - *(v37 + 24)) >> 2);
    sub_1000B26FC((v6 + 1072), *(v37 + 48), *(v37 + 56), (*(v37 + 56) - *(v37 + 48)) >> 2);
  }

  *(v6 + 1096) = *(v37 + 72);
  ctu::OsLogLogger::operator=();
  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_101253870();
  sub_1012538A4();
  sub_1012538A4();
  sub_1012538A4();
  sub_101253870();
  sub_101253870();
  sub_1012538A4();
  sub_1012538A4();
  sub_1012538A4();
  sub_101253870();
  sub_10124B458();
  boost::archive::detail::basic_iarchive::load_object(v4, v6 + 1146, qword_101FCA548);
  C2KVmnAckInfoSerialized::~C2KVmnAckInfoSerialized(&v38);
  C2KVmnInfoSerialized::~C2KVmnInfoSerialized(&v41);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v44);
  CSIDateSerialized::~CSIDateSerialized(&v55);
  CSIDateSerialized::~CSIDateSerialized(&v57);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v47);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1012534BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v22 = va_arg(va3, void);
  C2KVmnInfoSerialized::~C2KVmnInfoSerialized(va);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va1);
  CSIDateSerialized::~CSIDateSerialized(va3);
  CSIDateSerialized::~CSIDateSerialized((v6 - 120));
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va2);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_101253888(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1012538C0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_101253918(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *sub_101253938(uint64_t a1, _DWORD *a2)
{
  result = sub_100D0A83C();
  *a2 = 0;
  return result;
}

void sub_101253978(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x101253968);
}

void sub_1012539C4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1012539E4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E9A0;
  byte_101FCA425 = 1;
  sub_101253AF4(a1);
}

uint64_t *sub_101253A10()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA790, 0);
  *v0 = off_101F1EA48;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA790);
  qword_101FCA790[0] = off_101F1E9A0;
  if (byte_101FCA425 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101253AF4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EA48;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101253B54(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1E9A0;
  byte_101FCA425 = 1;
  sub_101253AF4(a1);

  operator delete();
}

void sub_101253BB4(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_101253C48(boost::serialization::extended_type_info *a1)
{
  sub_101253AF4(a1);

  operator delete();
}

uint64_t sub_101253C80(uint64_t a1, const void *a2, void *a3)
{
  v4 = sub_101250C68(a2);
  v6 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v6);
  sub_101251090();
  if (v6 >= 4u)
  {
    v7 = 0;
    sub_100D0C27C();
  }

  sub_100647BA8(a3, 0);
  result = a3[1];
  if (result != *a3)
  {
    a3[1] = *a3;
  }

  return result;
}

void sub_101253E14(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EAA0;
  byte_101FCA426 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101253E40()
{
  sub_10124BB84();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA5C0, qword_101FCA790);
  *result = off_101F1EAA0;
  if (byte_101FCA426 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101253ED8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EAA0;
  byte_101FCA426 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_101253F68(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EB20;
  byte_101FCA427 = 1;
  sub_101254078(a1);
}

uint64_t *sub_101253F94()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA7B0, 0);
  *v0 = off_101F1EBC8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA7B0);
  qword_101FCA7B0[0] = off_101F1EB20;
  if (byte_101FCA427 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101254078(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EBC8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_1012540D8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EB20;
  byte_101FCA427 = 1;
  sub_101254078(a1);

  operator delete();
}

void sub_101254138(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_1012541CC(boost::serialization::extended_type_info *a1)
{
  sub_101254078(a1);

  operator delete();
}

uint64_t sub_101254204(uint64_t result)
{
  if (result)
  {
    sub_100034450(*(result + 8));

    operator delete();
  }

  return result;
}

void *sub_101254258(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  sub_100034450(*(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v6 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v6);
  result = sub_101251090();
  if (v6 >= 4u)
  {
    LODWORD(v7) = 0;
    return sub_100D0C27C();
  }

  return result;
}

void sub_101254580(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EC20;
  byte_101FCA428 = 1;
  sub_101254690(a1);
}

uint64_t *sub_1012545AC()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA7D0, 0);
  *v0 = off_101F1ECC8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA7D0);
  qword_101FCA7D0[0] = off_101F1EC20;
  if (byte_101FCA428 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101254690(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1ECC8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_1012546F0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EC20;
  byte_101FCA428 = 1;
  sub_101254690(a1);

  operator delete();
}

void sub_101254750(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_1012547D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_101254800(boost::serialization::extended_type_info *a1)
{
  sub_101254690(a1);

  operator delete();
}

void *sub_101254838(uint64_t a1, const void *a2)
{
  sub_101250C68(a2);
  sub_100D0C27C();

  return sub_101250BB8();
}

void sub_101254888(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1ED20;
  byte_101FCA429 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_1012548B4()
{
  sub_10124BDE8();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA5D8, qword_101FCA7D0);
  *result = off_101F1ED20;
  if (byte_101FCA429 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_10125494C(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1ED20;
  byte_101FCA429 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_1012549D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_1012549F8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EDA0;
  byte_101FCA42A = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101254A24()
{
  sub_10124BD1C();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA5F0, qword_101FCA7B0);
  *result = off_101F1EDA0;
  if (byte_101FCA42A == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101254ABC(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EDA0;
  byte_101FCA42A = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_101254B4C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EE20;
  byte_101FCA42B = 1;
  sub_101254C5C(a1);
}

uint64_t *sub_101254B78()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA7F0, 0);
  *v0 = off_101F1EEC8;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA7F0);
  qword_101FCA7F0[0] = off_101F1EE20;
  if (byte_101FCA42B == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101254C5C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EEC8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101254CBC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EE20;
  byte_101FCA42B = 1;
  sub_101254C5C(a1);

  operator delete();
}

void sub_101254D1C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_101254DA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_101254DCC(boost::serialization::extended_type_info *a1)
{
  sub_101254C5C(a1);

  operator delete();
}

void sub_101254E04(uint64_t a1, const void *a2, uint64_t *a3)
{
  v4 = sub_101250C68(a2);
  memset(&__p, 0, sizeof(__p));
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(v4, &__p);
  v15 = 0;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!size)
  {
    v11 = 0;
LABEL_17:
    v17 = &v15;
    v18 = v11;
    sub_1001E9F04(&v17, 4 - v11);
    v9 = v15;
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    goto LABEL_18;
  }

  for (i = 0; i != size; ++i)
  {
    if ((p_p->__r_.__value_.__s.__data_[i] & 0xFE) != 0x30)
    {
      sub_1001EA9B8("bitset string ctor has invalid argument");
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 4;
  if (size < 4)
  {
    v11 = size;
  }

  v12 = &p_p[-1].__r_.__value_.__r.__words[2] + 7;
  v13 = v11;
  do
  {
    v14 = v9 & ~(1 << v10);
    v9 |= 1 << v10;
    if (v12[v13] != 49)
    {
      v9 = v14;
    }

    v15 = v9;
    ++v10;
    --v13;
  }

  while (v13);
  if (size <= 3)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v9;
  if (v6 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101254F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101254F44(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EF48;
  byte_101FCA42C = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101254F70()
{
  sub_10124C04C();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA608, qword_101FCA7F0);
  *result = off_101F1EF48;
  if (byte_101FCA42C == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101255008(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1EF48;
  byte_101FCA42C = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_101255088(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_1012550AC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EFC8;
  byte_101FCA42D = 1;
  sub_1012551BC(a1);
}

uint64_t *sub_1012550D8()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA810, 0);
  *v0 = off_101F1F070;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA810);
  qword_101FCA810[0] = off_101F1EFC8;
  if (byte_101FCA42D == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012551BC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F070;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10125521C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1EFC8;
  byte_101FCA42D = 1;
  sub_1012551BC(a1);

  operator delete();
}

void sub_10125527C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101255304(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101255338(boost::serialization::extended_type_info *a1)
{
  sub_1012551BC(a1);

  operator delete();
}

void sub_101255370(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = 0;
  sub_100D0A83C();
  *(v6 + 8) = 0;
  sub_101255694();
  sub_101255694();
  sub_101255694();
  sub_1012556C8();
  sub_1012556C8();
  sub_1012556C8();
  sub_101255694();
  sub_101255694();
  sub_101255694();
  sub_101255694();
  sub_1012556C8();
  sub_1012556C8();
  sub_1012556C8();
  sub_1012556C8();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v18);
  sub_101255700(v4, &v18);
  v8 = v19;
  v7 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 48) = *v8;
  std::string::operator=((v6 + 56), (v8 + 8));
  std::string::operator=((v6 + 80), (v8 + 32));
  v9 = *(v8 + 56);
  *(v6 + 108) = *(v8 + 60);
  *(v6 + 104) = v9;
  std::string::operator=((v6 + 112), (v8 + 64));
  v10 = *(v8 + 88);
  *(v6 + 144) = *(v8 + 96);
  *(v6 + 136) = v10;
  std::string::operator=((v6 + 152), (v8 + 104));
  std::string::operator=((v6 + 176), (v8 + 128));
  *(v6 + 200) = *(v8 + 152);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(&v15);
  sub_101255700(v4, &v15);
  v12 = v16;
  v11 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 208) = *v12;
  std::string::operator=((v6 + 216), (v12 + 8));
  std::string::operator=((v6 + 240), (v12 + 32));
  v13 = *(v12 + 56);
  *(v6 + 268) = *(v12 + 60);
  *(v6 + 264) = v13;
  std::string::operator=((v6 + 272), (v12 + 64));
  v14 = *(v12 + 88);
  *(v6 + 304) = *(v12 + 96);
  *(v6 + 296) = v14;
  std::string::operator=((v6 + 312), (v12 + 104));
  std::string::operator=((v6 + 336), (v12 + 128));
  *(v6 + 360) = *(v12 + 152);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_101255694();
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v15);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&v18);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_101255600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1012556AC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1012556E4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10125573C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10125575C(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F0B8;
  byte_101FCA42E = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101255788()
{
  sub_10124C1E4();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA620, qword_101FCA810);
  *result = off_101F1F0B8;
  if (byte_101FCA42E == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101255820(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F0B8;
  byte_101FCA42E = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_1012558A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_1012558D8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F138;
  byte_101FCA42F = 1;
  sub_1012559E8(a1);
}

uint64_t *sub_101255904()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA830, 0);
  *v0 = off_101F1F1E0;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA830);
  qword_101FCA830[0] = off_101F1F138;
  if (byte_101FCA42F == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012559E8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F1E0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101255A48(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F138;
  byte_101FCA42F = 1;
  sub_1012559E8(a1);

  operator delete();
}

void sub_101255AA8(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101255B30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101255B64(boost::serialization::extended_type_info *a1)
{
  sub_1012559E8(a1);

  operator delete();
}

void sub_101255B9C(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = sub_101250C68(a2);
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101255C9C();
  sub_101255C9C();
  sub_101255C9C();
  sub_101255C9C();
  sub_101255CD4(v4, v6 + 24);
  sub_101255CD4(v4, v6 + 48);
  sub_101250BB8();
  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_101255CB8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_101255D10(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_101255D30(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F228;
  byte_101FCA430 = 1;
  sub_101255E40(a1);
}

uint64_t *sub_101255D5C()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA850, 0);
  *v0 = off_101F1F2D0;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA850);
  qword_101FCA850[0] = off_101F1F228;
  if (byte_101FCA430 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101255E40(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F2D0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101255EA0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F228;
  byte_101FCA430 = 1;
  sub_101255E40(a1);

  operator delete();
}

void sub_101255F00(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

void sub_101255F94(boost::serialization::extended_type_info *a1)
{
  sub_101255E40(a1);

  operator delete();
}

void *sub_101255FCC(uint64_t a1, const void *a2, void *a3)
{
  v4 = sub_101250C68(a2);
  v6 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v6);
  sub_101251090();
  if (v6 >= 4u)
  {
    v7 = 0;
    sub_100D0C27C();
  }

  result = sub_10075C418(a3, 0);
  if ((a3[1] - *a3) >> 2)
  {
    a3[1] = *a3;
  }

  return result;
}

void sub_101256154(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F328;
  byte_101FCA431 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101256180()
{
  sub_10124C448();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA638, qword_101FCA850);
  *result = off_101F1F328;
  if (byte_101FCA431 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101256218(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F328;
  byte_101FCA431 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_1012562A8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F3A8;
  byte_101FCA432 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_1012562D4()
{
  sub_10124C37C();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA650, qword_101FCA830);
  *result = off_101F1F3A8;
  if (byte_101FCA432 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_10125636C(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F3A8;
  byte_101FCA432 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_1012563F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101256424(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F428;
  byte_101FCA433 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_101256450()
{
  sub_10124BAB8();
  result = boost::archive::detail::basic_iserializer::basic_iserializer(qword_101FCA668, qword_101FCA770);
  *result = off_101F1F428;
  if (byte_101FCA433 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012564E8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_101F1F428;
  byte_101FCA433 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_101256570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_1012565C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1F4A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101256684(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1012566BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1F4F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

boost::archive::detail::basic_oarchive *sub_101256738(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);
  return a1;
}

void sub_101256768(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);

  operator delete();
}

void sub_1012567B8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F5C0;
  byte_101FCA434 = 1;
  sub_1012568C8(a1);
}

uint64_t *sub_1012567E4()
{
  v0 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(qword_101FCA870, 0);
  *v0 = off_101F1F668;
  result = boost::serialization::extended_type_info::key_register(qword_101FCA870);
  qword_101FCA870[0] = off_101F1F5C0;
  if (byte_101FCA434 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012568C8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F668;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_101256928(boost::serialization::extended_type_info *a1)
{
  *a1 = off_101F1F5C0;
  byte_101FCA434 = 1;
  sub_1012568C8(a1);

  operator delete();
}

void sub_101256988(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 > 1)
    {
      goto LABEL_8;
    }
  }

  else if (a2 != 2 && a2 != 3 && a2 != 4)
  {
LABEL_8:
    __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
  }

  __assert_rtn("factory", "factory.hpp", 38, "false");
}

uint64_t sub_101256A10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_101256A44(boost::serialization::extended_type_info *a1)
{
  sub_1012568C8(a1);

  operator delete();
}

void sub_101256A7C(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = sub_101256CC8(a2);
  (*(*a1 + 40))(&v8, a1);
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HIDWORD(v8) = *v7;
  sub_101256C78(v5);
  v9 = v7[1];
  sub_101256C78(v5);
  v10 = v7[2];
  sub_101256C78(v5);
  sub_10124C844();
  boost::archive::detail::basic_oarchive::save_object(v5, (v7 + 4), qword_101FCA680);
  sub_101256C1C(v5);
  sub_101256C1C(v5);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

uint64_t sub_101256C1C(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return boost::archive::basic_text_oprimitive<std::ostream>::save(a1 + 6);
}

void sub_101256C58(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

boost::archive::detail::basic_oarchive *sub_101256C78(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  sub_100D0B290(a1 + 6);
  return a1;
}

void *sub_101256CC8(const void *a1)
{
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

uint64_t sub_101256D24(uint64_t a1, const void *a2, unsigned __int8 **a3)
{
  v5 = sub_101256CC8(a2);
  (*(*a1 + 40))(&v12, a1);
  v7 = *a3;
  v6 = a3[1];
  boost::archive::detail::basic_oarchive::end_preamble(v5);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(v5);
  if ((*(*(v5 + 6) + *(**(v5 + 6) - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v13, 13, 0, 0);
    sub_100D09B24(v13);
  }

  std::ostream::operator<<();
  boost::archive::detail::basic_oarchive::end_preamble(v5);
  v13[0] = 0;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(v5);
  HIBYTE(v12) = 0;
  result = sub_100D0CC5C(v5 + 6);
  if (v6 != v7)
  {
    v9 = *a3;
    v10 = (v7 - v6);
    do
    {
      boost::archive::detail::basic_oarchive::end_preamble(v5);
      boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(v5);
      LOWORD(v13[0]) = *v9;
      HIBYTE(v12) = 0;
      result = sub_100D0B1CC(v5 + 6);
      ++v9;
    }

    while (!__CFADD__(v10++, 1));
  }

  return result;
}

void sub_101256EBC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_101F1F6B0;
  byte_101FCA435 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_101256EE8()
{
  sub_10124B1F4();
  result = boost::archive::detail::basic_oserializer::basic_oserializer(qword_101FCA680, qword_101FCA6D0);
  *result = off_101F1F6B0;
  if (byte_101FCA435 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_101256F80(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_101F1F6B0;
  byte_101FCA435 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_101257008(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_101F1F728;
  byte_101FCA436 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_101257034()
{
  sub_10124C778();
  result = boost::archive::detail::basic_oserializer::basic_oserializer(qword_101FCA698, qword_101FCA870);
  *result = off_101F1F728;
  if (byte_101FCA436 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return result;
}

void sub_1012570CC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_101F1F728;
  byte_101FCA436 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void *sub_101257154(void *a1)
{
  *a1 = off_101F1F7A0;
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1012571B0(void *a1)
{
  *a1 = off_101F1F7A0;
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1012572C4(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012572F0(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101F1F7A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10124FCF8((a2 + 5), (a1 + 5));
}

void sub_10125736C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_101257390(uint64_t a1)
{
  sub_10124FD90(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1012573E8(void *a1)
{
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10125743C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[2];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[1];
      if (v8)
      {
        if (CTParserXPCResponse::hasError(v4))
        {
          v9 = *(v8 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid XPC response", buf, 2u);
          }
        }

        else
        {
          v12[0] = v4;
          v12[1] = v3;
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = a1[4];
          v11[0] = a1[3];
          v11[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10124FCF8(buf, (a1 + 5));
          sub_10123610C(v8, v12, v11, buf);
          sub_10124FD90(buf);
          if (v10)
          {
            sub_100004A34(v10);
          }

          if (v3)
          {
            sub_100004A34(v3);
          }
        }
      }

      sub_100004A34(v7);
    }
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_101257590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10124FD90(va);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
    sub_100004A34(v6);
  }

  else
  {
    v5 = v6;
  }

  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1012575F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125763C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1012576BC(uint64_t a1)
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

void *sub_10125773C(void *a1)
{
  *a1 = off_101F1F830;
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_101257798(void *a1)
{
  *a1 = off_101F1F830;
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1012578AC(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012578D8(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101F1F830;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10124FCF8((a2 + 5), (a1 + 5));
}

void sub_101257954(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_101257978(uint64_t a1)
{
  sub_10124FD90(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1012579D0(void *a1)
{
  sub_10124FD90((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_101257A24(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[2];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[1];
      if (v8)
      {
        if (CTParserXPCResponse::hasError(v4))
        {
          v9 = *(v8 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid XPC response", buf, 2u);
          }
        }

        else
        {
          if (MessageCenterModel::shouldBlockCarrierMessaging((v8 + 80)))
          {
            *buf = 0;
            v15 = 0;
            sub_101237154(buf);
          }

          *v12 = v4;
          v13 = v3;
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = a1[4];
          v11[0] = a1[3];
          v11[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10124FCF8(buf, (a1 + 5));
          sub_10123610C(v8, v12, v11, buf);
          sub_10124FD90(buf);
          if (v10)
          {
            sub_100004A34(v10);
          }

          if (v3)
          {
            sub_100004A34(v3);
          }
        }
      }

      sub_100004A34(v7);
    }
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_101257CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v15);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101257D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101257DBC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_101257E14(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_101257E14(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_101257E9C(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_101257E9C(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100173DE8();
  }

  return result;
}

void *sub_101257F2C(void *a1)
{
  *a1 = off_101F1F8D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101257F78(void *a1)
{
  *a1 = off_101F1F8D0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101258060(uint64_t result, uint64_t a2)
{
  *a2 = off_101F1F8D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void sub_1012580A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012580B8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012580F8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 16);
      sub_100004A34(v6);
      if (v7)
      {
        v8 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 32));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = CSIBOOLAsString(v4);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I TPMR write status: %s", &v9, 0xCu);
        }
      }
    }
  }
}

uint64_t sub_1012581F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012582B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1F950;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1012582EC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v4 + 8));
  operator new();
}

uint64_t sub_101258400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10125844C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *v1;
    if (*v2 == v2[1])
    {
      v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v1 + 24));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Empty TPMR value from sim", buf, 2u);
      }
    }

    else
    {
      v4 = **v2;
      v5 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v1 + 24));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I TPMR read from sim: %u", buf, 8u);
      }

      sub_10123CC14(v3, *(v1 + 24), v4, 0);
    }
  }

  sub_100D4F39C(&v9);
  return sub_1000049E0(&v8);
}

void sub_1012585D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100D4F39C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012585EC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (subscriber::isValidSimSlot())
  {
    if (*a3 == 1)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        if (sms::Model::getTextToEmergencyFlag(v6) && sub_100A7F520())
        {
          v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Emergency SMS will be released", v9, 2u);
          }

          v8 = *(a1 + 2664);
          *(a1 + 2664) = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          sub_101230BE4(a1);
        }
      }
    }
  }
}

void sub_1012586F4(uint64_t a1, unsigned int a2, void ***a3)
{
  v14 = a2;
  if (subscriber::isValidSimSlot())
  {
    __p[0] = &v14;
    v5 = sub_1002D750C(a1 + 2560, &v14)[5];
    sub_100009970(v5 + 536, *(v5 + 544));
    *(v5 + 536) = v5 + 544;
    *(v5 + 544) = 0u;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      do
      {
        __p[0] = &v14;
        v8 = sub_1002D750C(a1 + 2560, &v14);
        sub_100005BA0(v8[5] + 536, v6);
        v6 += 3;
      }

      while (v6 != v7);
    }

    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      __p[0] = &v14;
      v10 = sub_1002D750C(a1 + 2560, &v14);
      sub_101166E24(v10[5], __p);
      if (v13 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315138;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Emergency Text Numbers %s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v14;
    if (*(sub_1002D750C(a1 + 2560, &v14)[5] + 552))
    {
      sub_10123D780(a1, v14);
    }
  }
}

uint64_t sub_101258904(uint64_t a1)
{
  dispatch_release(*a1);
  _Block_release(*(a1 + 8));
  return a1;
}

void sub_10125893C(void *a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v6 = a1[1];
    *a2 = *a1;
    *(a2 + 8) = _Block_copy(v6);
    dispatch_retain(*a2);
    if (a3 != 1)
    {
      return;
    }

    v7 = a1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return;
    }

    v7 = a2;
LABEL_10:

    sub_101258904(v7);
    return;
  }

  v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v8 == (0x8000000101934A47 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x8000000101934A47 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

void sub_101258A28(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 8));
  v2 = _Block_copy(v1);
  v3 = _Block_copy(v2);
  v4 = _Block_copy(v3);
  v5 = _Block_copy(v4);
  v6 = _Block_copy(v5);
  v8 = _Block_copy(v6);
  _Block_release(v6);
  _Block_release(v5);
  _Block_release(v4);
  v7 = off_101F1FA00;
  _Block_release(v3);
  _Block_release(v2);
  operator new();
}

void sub_101258C80(const void **a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 == 2)
      {
        _Block_release(*a2);
        return;
      }

      goto LABEL_2;
    }

    v6 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v6 == (0x8000000101934A87 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v6, (0x8000000101934A87 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = _Block_copy(*a1);
    if (a3 == 1)
    {
      _Block_release(*a1);
    }
  }
}

void *sub_101258D64(void *a1)
{
  *a1 = off_101F1FA30;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101258DB0(void *a1)
{
  *a1 = off_101F1FA30;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101258E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_101258ECC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101258F70(void *a1)
{
  *a1 = off_101F1FA80;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101258FBC(void *a1)
{
  *a1 = off_101F1FA80;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101259094(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

__n128 sub_10125915C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FAE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101259194(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    *(v5 + 16) = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_1001FCA54(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    *(v12 + 2) = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_100170380(&v9, v10[0]);
  sub_100170380(&v11, v12);
}

void sub_101259290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100170380(&a9, a10);
  sub_100170380(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1012592BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259384(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FB60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012593BC(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_101259494(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125955C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FBE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101259594(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_10125966C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259734(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FC60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125976C(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1012597E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012598B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FCE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012598E8(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
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

uint64_t sub_1012599C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259A88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FD60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101259AC0(void *a1, xpc_object_t *a2)
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

  sub_10066EACC(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101259B98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259C60(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FDE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101259C98(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_101259D30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259DF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FE60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101259E30(void *a1, xpc_object_t *a2)
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

  sub_1008FC53C(v3, a2);
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

uint64_t sub_101259F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101259FD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FEE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125A008(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
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

  sub_1004CD52C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    v12[2] = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10[0]);
  sub_10006DCAC(&v11, v12);
}

void sub_10125A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10125A130(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125A1F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FF60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125A230(uint64_t a1)
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

uint64_t sub_10125A2B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125A37C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1FFE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125A3B4(void *a1, xpc_object_t *a2)
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

uint64_t sub_10125A4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125A574(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20060;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125A5AC(void *a1, xpc_object_t *a2)
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

  sub_10084650C(v3, a2);
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

uint64_t sub_10125A684(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125A74C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F200E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125A784(void *a1, xpc_object_t *a2)
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

  sub_10032DFE4(v3, a2);
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

uint64_t sub_10125A85C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125A924(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20160;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125A95C(void *a1, xpc_object_t *a2)
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

  sub_10032C208(v3, a2);
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

uint64_t sub_10125AA34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125AAFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F201E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125AB34(void *a1)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  *v28 = 0u;
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  *v25 = 0u;
  CSIPhoneNumber::CSIPhoneNumber((&v24 + 8));
  memset(&v29[5], 0, 24);
  LOWORD(v30) = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v6 = v24;
  *v7 = *v25;
  v5 = v26[3];
  v8 = v26[0];
  v25[0] = 0;
  v25[1] = 0;
  *v9 = *&v26[1];
  memset(v26, 0, 32);
  v10 = v5;
  v11 = v26[4];
  *v12 = *&v26[5];
  memset(&v26[5], 0, 24);
  v15 = WORD4(v27);
  v13 = v26[7];
  v14 = v27;
  *v16 = *v28;
  v28[0] = 0;
  v28[1] = 0;
  v17 = v29[0];
  v19 = v29[3];
  v18 = *&v29[1];
  memset(v29, 0, 32);
  v20 = v29[4];
  __p = *&v29[5];
  v22 = v29[7];
  memset(&v29[5], 0, 24);
  v23 = v30;
  v2(v4, &v6);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (v29[5])
  {
    v29[6] = v29[5];
    operator delete(v29[5]);
  }

  if (SHIBYTE(v29[3]) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v26[7]) < 0)
  {
    operator delete(v26[5]);
  }

  if (SHIBYTE(v26[3]) < 0)
  {
    operator delete(v26[1]);
  }

  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_10125AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_100D31E08(&a9);
  sub_100D31E08(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_10125AD84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125AE4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20260;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125AE84(void *a1)
{
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, 0, 0);
}

uint64_t sub_10125AF0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125AFD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F202E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125B00C(void *a1, xpc_object_t *a2)
{
  v2 = a1;
  v3 = a1[1];
  v34 = 0;
  v35 = 0;
  v33 = &v34;
  sub_1001AAC64(&v33, a2);
  v4 = v3 + 1;
  v5 = v3[1];
  v30 = *v3;
  v31 = v5;
  v32 = v3[2];
  if (v32)
  {
    *(v5 + 16) = &v31;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v30 = &v31;
  }

  v7 = v33;
  v6 = v34;
  v28 = v33;
  v29[0] = v34;
  v29[1] = v35;
  if (v35)
  {
    *(v34 + 2) = v29;
    v33 = &v34;
    v34 = 0;
    v35 = 0;
    if (v7 != v29)
    {
      v27 = v2;
      do
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = v7 + 4;
        v8 = (sub_1001AB974(v3, v7 + 8) + 5);
        if (v8 != &v38)
        {
          sub_100008234(v8, v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3));
        }

        v10 = v7[5];
        v9 = v7[6];
        while (v10 != v9)
        {
          if (CSIPhoneNumber::getIsEmSMSTextSupported(v10))
          {
            v41 = v7 + 4;
            v11 = sub_1001AB974(v3, v7 + 8);
            CSIPhoneNumber::getFullNumber(__p, v10);
            sub_1000D1054((v11 + 5), __p);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v10 += 5;
        }

        __p[0] = &v38;
        sub_1000087B4(__p);
        v12 = v7[1];
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
            v13 = v7[2];
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != v29);
      v6 = v29[0];
      v2 = v27;
    }
  }

  else
  {
    v28 = v29;
  }

  sub_1001A90CC(&v28, v6);
  if (v32 == v3[2])
  {
    v15 = v30;
    if (v30 == &v31)
    {
      goto LABEL_46;
    }

    v16 = *v3;
    while (*(v15 + 8) == *(v16 + 8))
    {
      v18 = v15[5];
      v17 = v15[6];
      v19 = v16[5];
      if (v17 - v18 != v16[6] - v19)
      {
        break;
      }

      while (v18 != v17)
      {
        if (!sub_100022D3C(&v38, v18, v19))
        {
          goto LABEL_43;
        }

        v18 += 3;
        v19 += 3;
      }

      v20 = v15[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v15[2];
          v14 = *v21 == v15;
          v15 = v21;
        }

        while (!v14);
      }

      v22 = v16[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v16[2];
          v14 = *v23 == v16;
          v16 = v23;
        }

        while (!v14);
      }

      v16 = v23;
      v15 = v21;
      if (v21 == &v31)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_43:
  v24 = v2[3];
  v25 = v2[4];
  v26 = (v2[2] + (v25 >> 1));
  if (v25)
  {
    v24 = *(*v26 + v24);
  }

  v24(v26, &v30);
LABEL_46:
  sub_1001A918C(&v30, v31);
  sub_1001A90CC(&v33, v34);
}

void sub_10125B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, char a17, char *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_1001A918C(&a14, a15);
  sub_1001A90CC(&a17, a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10125B3AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125B474(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125B4AC(uint64_t a1)
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

uint64_t sub_10125B530(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125B5F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F203E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125B630(void *a1, xpc_object_t *a2)
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

uint64_t sub_10125B708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125B7D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125B808(void *a1)
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

uint64_t sub_10125B850(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125B918(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F204E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125B950(void *a1, xpc_object_t *a2)
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

  sub_10011F248(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10004C4EC(&v9, v10);
}

uint64_t sub_10125BA28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125BAF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20560;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10125BB28(void *a1)
{
  v6 = 0;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_10125BBA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125BC64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F205E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125BC90(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_10125BCC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125BD88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F20660;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125BDC0(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
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

uint64_t sub_10125BE98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10125BF60(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F206E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10125BF98(void *a1, xpc_object_t *a2)
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

uint64_t sub_10125C070(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C12C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20760;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125C160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C21C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F207E0;
  a2[1] = v2;
  return result;
}

void sub_10125C248(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/smsc_address_available");
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

void sub_10125C2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10125C330(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C3EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20860;
  a2[1] = v2;
  return result;
}

void sub_10125C418(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/service_center_address_fetch_error");
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

void sub_10125C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10125C500(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C5BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F208E0;
  a2[1] = v2;
  return result;
}

void sub_10125C5E8(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/sms_online");
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

void sub_10125C68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10125C6D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C78C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20960;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125C7B8(uint64_t a1, xpc *this)
{
  v2 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, this, 0.0);
  *v2 = v4;
  return result;
}

uint64_t sub_10125C7E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C8A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F209E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125C8D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125C994(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20A60;
  a2[1] = v2;
  return result;
}

void sub_10125C9C0(uint64_t a1, void *a2)
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
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        xpc_retain(v9);
        goto LABEL_16;
      }

      v10 = xpc_null_create();
LABEL_15:
      v26 = v10;
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v29 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      v14 = xpc_array_create(0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v14) == &_xpc_type_array)
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      v16 = v6[5];
      v17 = v6[6];
      while (v16 != v17)
      {
        capabilities::ct::asString();
        ctu::rest::detail::write_enum_string_value();
        if (v30 < 0)
        {
          operator delete(__p);
        }

        xpc_array_append_value(v15, value);
        xpc_release(value);
        v16 += 4;
      }

      v23 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        v23 = xpc_null_create();
      }

      xpc_release(v15);
      __p = &v26;
      v29 = "second";
      sub_10000F688(&__p, &v23, &value);
      xpc_release(value);
      value = 0;
      xpc_release(v23);
      v23 = 0;
      v18 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v18 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v18);
      xpc_release(v18);
      v19 = v6[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v6[2];
          v21 = *v20 == v6;
          v6 = v20;
        }

        while (!v21);
      }

      v6 = v20;
    }

    while (v20 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v22 = v4;
  }

  else
  {
    v22 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/supported_message_modes");
  value = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    value = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(value);
  value = 0;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
}

void sub_10125CD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_10125CE78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125CEC4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_10125CF9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20AF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125CFD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10125D020()
{
  if (subscriber::isValidSimSlot())
  {
    operator new();
  }

  operator delete();
}

void sub_10125D7E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v35);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100004A34(v34);
  operator delete();
}

uint64_t sub_10125DA04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20B70;
  a2[1] = v2;
  return result;
}

uint64_t sub_10125DA3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10125DA88(uint64_t a1, unsigned int a2)
{
  v16 = a2;
  v12[0] = &v16;
  sub_1002D750C(a1 + 2560, &v16);
  MCC::operator=();
  MCC::operator=();
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = &v16;
    v4 = sub_1002D750C(a1 + 2560, &v16);
    MCCAndMNC::getMcc(v12, (v4[5] + 416));
    v5 = v14;
    MCC::getStringValue(v14, v12);
    if (v15 < 0)
    {
      v5 = v14[0];
    }

    v17 = &v16;
    v6 = sub_1002D750C(a1 + 2560, &v16);
    MCCAndMNC::getMnc(v8, (v6[5] + 416));
    MCC::getStringValue(__p, v8);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136643075;
    v19 = v5;
    v20 = 2085;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Device location info :- MCC:%{sensitive}s MNC:%{sensitive}s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(v8[1]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[1]);
    }
  }
}

void sub_10125DC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10125DCF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10125DD28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10125DD58(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10125DD9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10125DDD4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10125DE04(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10125DE44(uint64_t a1, uint64_t a2)
{
  if (subscriber::isValidSimSlot())
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = asString();
      v7 = 2080;
      v8 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Operator Bundle changed [%s, %s]", &v5, 0x16u);
    }

    (*(**(a1 + 2584) + 8))(*(a1 + 2584));
    sms::Controller::setupBasebandForCellBroadcast_sync(a1, a2);
  }
}

uint64_t sub_10125DFF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F20CD0;
  a2[1] = v2;
  return result;
}

void sub_10125E020(uint64_t a1, int *a2)
{
  v2 = *a2;
  v21 = *a2;
  v3 = *(a1 + 8);
  ServiceMap = Registry::getServiceMap(*(v3 + 80));
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
  cf[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, cf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = (*(**(v3 + 48) + 16))(*(v3 + 48), v2);
  if (v12)
  {
    (*(*v12 + 96))(cf, v12, v2, 1, @"CheckSMSonSIM", kCFBooleanFalse, 0);
    v15 = cf[0];
    v22 = 0;
    if (cf[0])
    {
      v16 = CFGetTypeID(cf[0]);
      if (v16 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v22, v15, v17);
        LOBYTE(v15) = v22;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    sub_10000A1EC(cf);
    (*(*v3 + 264))(v3, v15 & 1, v2);
  }

  else
  {
    v18 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get carrierSettings for check SMS on Sim", cf, 2u);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_10122AFDC(v3, v2);
  sub_10122C574(v3, v2);
  sub_10122BC78(v3, v2);
  sub_10123AE44(v3, v2);
  sub_10123BFE4(v3, v2);
  v19 = (*(**(v3 + 48) + 16))(*(v3 + 48), v2);
  cf[0] = &v21;
  if ((*(sub_1002D750C(v3 + 2560, &v21)[5] + 293) & 1) == 0)
  {
    v20 = *v19;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Recalculating SMS Ready upon carrier bundle setup", cf, 2u);
    }

    sub_101240EA4(v3, v21);
  }
}

void sub_10125E328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10125E360(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125E3AC(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315394;
    *&v13[4] = asString();
    *&v13[12] = 2080;
    *&v13[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Handling Carrier bundle change : change:%s technology:%s", v13, 0x16u);
  }

  v7 = *a3;
  v8 = v7 > 5;
  v9 = (1 << v7) & 0x2C;
  if (!v8 && v9 != 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to bundle change", v13, 2u);
    }

    sub_10123032C(a1, 1);
  }

  *v13 = off_101F20CD0;
  *&v13[8] = a1;
  v14 = v13;
  sub_101243698(a1, a2, v13);
  return sub_100A6EFFC(v13);
}

uint64_t sub_10125E568(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received a call to check if Service Center Address is Available", v5, 2u);
    }

    return sub_101243E5C(v2, **(v1 + 8));
  }

  return result;
}

uint64_t sub_10125E628(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_10125E690(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_10125E6F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v4 = *(v1 + 16);
    v5 = **(v1 + 8);

    return sub_101244A4C(v2, v4, v5);
  }

  return result;
}

uint64_t sub_10125E754(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (!subscriber::isValidSimSlot())
  {
    return 300;
  }

  v3 = **(v1 + 8);

  return sub_101244D7C(v2, v3);
}

uint64_t sub_10125E7B4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10125E7F0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *sub_10125E82C(void *a1)
{
  *a1 = off_101F20DF0;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10125E878(void *a1)
{
  *a1 = off_101F20DF0;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10125E958(uint64_t result, uint64_t a2)
{
  *a2 = off_101F20DF0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10125E998(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10125E9A8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_10125E9E8(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v38 = *(a3 + 1);
  v6 = a3[3];
  v37 = v5;
  v39 = v6;
  a3[1] = 0;
  a3[2] = 0;
  *v40 = *(a3 + 2);
  a3[3] = 0;
  a3[4] = 0;
  v7 = a3[6];
  v8 = a3[7];
  a3[5] = 0;
  a3[6] = 0;
  v41 = v7;
  v42 = v8;
  *v43 = *(a3 + 4);
  a3[8] = 0;
  a3[9] = 0;
  v46 = *(a3 + 48);
  v9 = a3[10];
  v10 = a3[11];
  a3[10] = 0;
  v44 = v9;
  v45 = v10;
  v11 = *(a3 + 13);
  v48 = a3[15];
  v47 = v11;
  a3[13] = 0;
  a3[14] = 0;
  v12 = *(a3 + 8);
  v50 = a3[18];
  *v49 = v12;
  a3[15] = 0;
  a3[16] = 0;
  a3[17] = 0;
  a3[18] = 0;
  v51 = *(a3 + 38);
  v22 = *a4;
  v13 = *(a4 + 1);
  v24 = a4[3];
  *v23 = v13;
  a4[1] = 0;
  a4[2] = 0;
  *v25 = *(a4 + 2);
  a4[3] = 0;
  a4[4] = 0;
  v14 = a4[6];
  v15 = a4[7];
  a4[5] = 0;
  a4[6] = 0;
  v26 = v14;
  v27 = v15;
  *v28 = *(a4 + 4);
  a4[8] = 0;
  a4[9] = 0;
  v16 = a4[10];
  v17 = a4[11];
  a4[10] = 0;
  v31 = *(a4 + 48);
  v29 = v16;
  v30 = v17;
  v18 = *(a4 + 13);
  v33 = a4[15];
  *v32 = v18;
  a4[13] = 0;
  a4[14] = 0;
  v19 = *(a4 + 8);
  v35 = a4[18];
  *__p = v19;
  a4[15] = 0;
  a4[16] = 0;
  a4[17] = 0;
  a4[18] = 0;
  v36 = *(a4 + 38);
  v21 = *(a1 + 8);
  v52 = v21;
  v20 = *(a1 + 24);
  v53 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v54 = v4;
  sub_1000AE428(&v55, &v37);
  sub_1000AE428(&v56, &v22);
  v57[0] = 0;
  v57[1] = 0;
  sub_100004AA0(v57, (v21 + 8));
  operator new();
}

void sub_10125EE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53)
{
  sub_10034F8E8(v53 + 32);
  if (a53)
  {
    sub_100004A34(a53);
  }

  sub_10034F8E8(&a11);
  sub_10034F8E8(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_10125EE6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125EEB8(uint64_t a1)
{
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t *sub_10125EF88(CSIPhoneNumber **a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *(&v1->var2.__rep_.__l + 4);
  v3 = *&v1->var0;
  v4 = (*(**(*&v1->var0 + 48) + 16))(*(*&v1->var0 + 48), *(v1->var2.__rep_.__l.__data_ + 38));
  v5 = v4;
  if (v2 > 2)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_101F211D0[v2];
  }

  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I UICC Call Control Result for SMS - %s", &buf, 0xCu);
  }

  if (v2 == 2)
  {
    memset(&buf, 0, sizeof(buf));
    CSIPhoneNumber::getBaseNumber(&buf, v1 + 1);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        data = v1->var2.__rep_.__l.__data_;
        v16 = data + 40;
        if (data[63] < 0)
        {
          v16 = *v16;
        }

        p_buf = buf.__r_.__value_.__r.__words[0];
        if (v13 >= 0)
        {
          p_buf = &buf;
        }

        LODWORD(v32.__r_.__value_.__l.__data_) = 136315394;
        *(v32.__r_.__value_.__r.__words + 4) = v16;
        WORD2(v32.__r_.__value_.__r.__words[1]) = 2080;
        *(&v32.__r_.__value_.__r.__words[1] + 6) = p_buf;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I UICC Call Control modified destination number from %s to %s", &v32, 0x16u);
      }

      std::string::operator=((v1->var2.__rep_.__l.__data_ + 40), &buf);
    }

    memset(&v32, 0, sizeof(v32));
    CSIPhoneNumber::getBaseNumber(&v32, v1 + 6);
    v18 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v32.__r_.__value_.__l.__size_;
    }

    if (v18)
    {
      v20 = *v5;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v1->var2.__rep_.__l.__data_;
        v22 = v21 + 64;
        if (v21[87] < 0)
        {
          v22 = *v22;
        }

        v23 = v32.__r_.__value_.__r.__words[0];
        if (v19 >= 0)
        {
          v23 = &v32;
        }

        *v28 = 136315394;
        v29 = v22;
        v30 = 2080;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I UICC Call Control modified service center number from %s to %s", v28, 0x16u);
      }

      std::string::operator=((v1->var2.__rep_.__l.__data_ + 64), &v32);
      LOBYTE(v19) = *(&v32.__r_.__value_.__s + 23);
    }

    if ((v19 & 0x80) != 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else if (v2 == 1)
  {
    v8 = *v5;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "UICC Call Control rejected SMS, bailing", &buf, 2u);
    }

    *(&buf.__r_.__value_.__s + 23) = 0;
    *(&buf.__r_.__value_.__r.__words[2] + 5) = 0;
    v9 = v1->var2.__rep_.__l.__data_;
    v10 = *(v9 + 17);
    v11 = *(v9 + 38);
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = *(v9 + 24);
    LODWORD(buf.__r_.__value_.__r.__words[1]) = v11;
    LODWORD(buf.__r_.__value_.__l.__data_) = 1;
    *(&buf.__r_.__value_.__r.__words[1] + 4) = 56;
    buf.__r_.__value_.__s.__data_[20] = 1;
    v34 = 5;
    (*(*v10 + 16))(v10, v3 + 80, &buf);
    goto LABEL_40;
  }

  v24 = v1->var2.__rep_.__l.__size_;
  buf.__r_.__value_.__r.__words[0] = v1->var2.__rep_.__l.__data_;
  buf.__r_.__value_.__l.__size_ = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10122E804(v3, &buf);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10122EA90(v3, *(v1->var2.__rep_.__l.__data_ + 38));
LABEL_40:
  sub_10125F388(&v27);
  return sub_1000049E0(&v26);
}

void sub_10125F324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_10125F388(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10125F388(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10125EEB8(v2);
    operator delete();
  }

  return a1;
}

void sub_10125F3F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F20E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10125F470(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10125F4A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10125F4D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10125F538(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F20F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10125F5B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10125F5F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10125F620(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10125F660(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

void sub_10125F6C8(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = **a1;
  v4 = (*(**(v3 + 48) + 16))(*(v3 + 48), *v2);
  *buf = v2;
  if (*(sub_1002D750C(v3 + 2560, v2)[5] + 293) == 1)
  {
    v5 = *v4;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = v2;
    v6 = *(sub_1002D750C(v3 + 2560, v2)[5] + 293);
    v7 = CSIBOOLAsString(*(v1 + 12));
    v8 = "[not-ready]";
    if (v6)
    {
      v8 = "[ready]";
    }

    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v9 = "#I SMS %s - potential 2G location: %s";
    v10 = v5;
    v11 = 22;
  }

  else
  {
    v12 = *(v1 + 12);
    v13 = *v4;
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v14)
      {
        *buf = 136315138;
        *&buf[4] = "[ready]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I SMS pseudo-%s -(in potential 2G location)", buf, 0xCu);
      }

      *buf = 1;
      *&buf[8] = v3 + 2176;
      *(sub_100051AD8(v3 + 2208, v2) + 32) = 1;
      (*(**(v3 + 2544) + 48))(*(v3 + 2544), *v2, 1);
      sub_101249B88(v3, *v2);
      sub_10125F660(buf);
LABEL_16:
      operator delete();
    }

    if (!v14)
    {
      goto LABEL_16;
    }

    *buf = v2;
    if (*(sub_1002D750C(v3 + 2560, v2)[5] + 293))
    {
      v15 = "[ready]";
    }

    else
    {
      v15 = "[not-ready]";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    v9 = "#I SMS %s - in lockdown (no update required)";
    v10 = v13;
    v11 = 12;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
  goto LABEL_16;
}

void sub_10125F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10125F660(va);
  operator delete();
}

void *sub_10125F9DC(void *a1)
{
  *a1 = off_101F21000;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10125FA28(void *a1)
{
  *a1 = off_101F21000;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10125FB10(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F21000;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  a2[3] = *(result + 24);
  a2[4] = v4;
  return result;
}

void sub_10125FB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10125FB68(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10125FBA8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[1])
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10125FCC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10125FD10(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 2656);
  *(v1 + 2656) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10124A5AC(v1);
}

void *sub_10125FDA0(void *a1)
{
  *a1 = off_101F21080;
  sub_100A6EFFC((a1 + 3));
  return a1;
}

void sub_10125FDE4(void *a1)
{
  *a1 = off_101F21080;
  sub_100A6EFFC((a1 + 3));

  operator delete();
}

uint64_t sub_10125FECC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F21080;
  *(a2 + 8) = *(a1 + 8);
  return sub_100A72FF4(a2 + 24, a1 + 24);
}

void sub_10125FF08(void *a1)
{
  sub_100A6EFFC(a1 + 24);

  operator delete(a1);
}

uint64_t sub_10125FF44(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1012600F8;
  v10[3] = &unk_101F210E0;
  v10[4] = v3;
  v11[8] = *(a1 + 8);
  v12 = v2;
  sub_100A72FF4(v11, a1 + 24);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v3 + 8));
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10124E2F8;
  v6[3] = &unk_101F1DB30;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return sub_100A6EFFC(v11);
}

void sub_1012600A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012600AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012600F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 72);
  *buf = a1 + 72;
  if (*(sub_1002D750C(v2 + 2560, (a1 + 72))[5] + 40) != *(a1 + 76))
  {
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v3;
      v5 = sub_1002D750C(v2 + 2560, v3);
      v6 = CSIBOOLAsString(*(v5[5] + 40));
      v7 = CSIBOOLAsString(*(a1 + 76));
      *buf = 136315394;
      *&buf[4] = v6;
      v11 = 2080;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device Customer Ready changing from :- %s to %s", buf, 0x16u);
    }
  }

  v8 = *(a1 + 76);
  *buf = v3;
  *(sub_1002D750C(v2 + 2560, v3)[5] + 40) = v8;
  return sub_100A6AC68(a1 + 40, *(a1 + 72));
}

uint64_t sub_10126029C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (subscriber::isValidSimSlot())
  {
    v3 = *(sub_1002D750C(v2 + 2560, v1[1])[5] + 293);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10126030C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (subscriber::isValidSimSlot())
  {
    v3 = *(sub_1002D750C(v2 + 2560, v1[1])[5] + 295);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_10126037C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  return (*v1)[655] != 1 || *(sub_1002D750C((v2 + 640), v1[1])[5] + 294) != 1 || *(sub_1002D750C((v2 + 640), v1[1])[5] + 42) != 1 || (v2[50] & 1) == 0;
}

void sub_101260440()
{
  if ((byte_101FCA320 & 1) == 0)
  {
    byte_101FCA320 = 1;
    sub_10124B128();
  }
}

void sub_10126045C()
{
  if ((byte_101FCA328 & 1) == 0)
  {
    byte_101FCA328 = 1;
    sub_10124B1F4();
  }
}

void sub_101260478()
{
  if ((byte_101FCA330 & 1) == 0)
  {
    byte_101FCA330 = 1;
    sub_10124B2C0();
  }
}

void sub_101260494()
{
  if ((byte_101FCA338 & 1) == 0)
  {
    byte_101FCA338 = 1;
    sub_10124B38C();
  }
}

void sub_1012604B0()
{
  if ((byte_101FCA340 & 1) == 0)
  {
    byte_101FCA340 = 1;
    sub_10124B458();
  }
}

void sub_1012604CC()
{
  if ((byte_101FCA348 & 1) == 0)
  {
    byte_101FCA348 = 1;
    sub_10124B524();
  }
}

void sub_1012604E8()
{
  if ((byte_101FCA350 & 1) == 0)
  {
    byte_101FCA350 = 1;
    sub_10124B5F0();
  }
}

void sub_101260504()
{
  if ((byte_101FCA358 & 1) == 0)
  {
    byte_101FCA358 = 1;
    sub_10124B6BC();
  }
}

void sub_101260520()
{
  if ((byte_101FCA360 & 1) == 0)
  {
    byte_101FCA360 = 1;
    sub_10124B788();
  }
}

void sub_10126053C()
{
  if ((byte_101FCA368 & 1) == 0)
  {
    byte_101FCA368 = 1;
    sub_10124B854();
  }
}

void sub_101260558()
{
  if ((byte_101FCA370 & 1) == 0)
  {
    byte_101FCA370 = 1;
    sub_10124B920();
  }
}

void sub_101260574()
{
  if ((byte_101FCA378 & 1) == 0)
  {
    byte_101FCA378 = 1;
    sub_10124B9EC();
  }
}

void sub_101260590()
{
  if ((byte_101FCA380 & 1) == 0)
  {
    byte_101FCA380 = 1;
    sub_10124BAB8();
  }
}

void sub_1012605AC()
{
  if ((byte_101FCA388 & 1) == 0)
  {
    byte_101FCA388 = 1;
    sub_10124BB84();
  }
}

void sub_1012605C8()
{
  if ((byte_101FCA390 & 1) == 0)
  {
    byte_101FCA390 = 1;
    sub_10124BC50();
  }
}

void sub_1012605E4()
{
  if ((byte_101FCA398 & 1) == 0)
  {
    byte_101FCA398 = 1;
    sub_10124BD1C();
  }
}

void sub_101260600()
{
  if ((byte_101FCA3A0 & 1) == 0)
  {
    byte_101FCA3A0 = 1;
    sub_10124BDE8();
  }
}

void sub_10126061C()
{
  if ((byte_101FCA3A8 & 1) == 0)
  {
    byte_101FCA3A8 = 1;
    sub_10124BEB4();
  }
}

void sub_101260638()
{
  if ((byte_101FCA3B0 & 1) == 0)
  {
    byte_101FCA3B0 = 1;
    sub_10124BF80();
  }
}

void sub_101260654()
{
  if ((byte_101FCA3B8 & 1) == 0)
  {
    byte_101FCA3B8 = 1;
    sub_10124C04C();
  }
}

void sub_101260670()
{
  if ((byte_101FCA3C0 & 1) == 0)
  {
    byte_101FCA3C0 = 1;
    sub_10124C118();
  }
}

void sub_10126068C()
{
  if ((byte_101FCA3C8 & 1) == 0)
  {
    byte_101FCA3C8 = 1;
    sub_10124C1E4();
  }
}

void sub_1012606A8()
{
  if ((byte_101FCA3D0 & 1) == 0)
  {
    byte_101FCA3D0 = 1;
    sub_10124C2B0();
  }
}

void sub_1012606C4()
{
  if ((byte_101FCA3D8 & 1) == 0)
  {
    byte_101FCA3D8 = 1;
    sub_10124C37C();
  }
}

void sub_1012606E0()
{
  if ((byte_101FCA3E0 & 1) == 0)
  {
    byte_101FCA3E0 = 1;
    sub_10124C448();
  }
}

void sub_1012606FC()
{
  if ((byte_101FCA3E8 & 1) == 0)
  {
    byte_101FCA3E8 = 1;
    sub_10124C514();
  }
}

void sub_101260718()
{
  if ((byte_101FCA3F0 & 1) == 0)
  {
    byte_101FCA3F0 = 1;
    sub_10124C5E0();
  }
}

void sub_101260734()
{
  if ((byte_101FCA3F8 & 1) == 0)
  {
    byte_101FCA3F8 = 1;
    sub_10124C6AC();
  }
}

void sub_101260750()
{
  if ((byte_101FCA400 & 1) == 0)
  {
    byte_101FCA400 = 1;
    sub_10124C778();
  }
}

void sub_10126076C()
{
  if ((byte_101FCA408 & 1) == 0)
  {
    byte_101FCA408 = 1;
    sub_10124C844();
  }
}

void sub_101260788()
{
  if ((byte_101FCA410 & 1) == 0)
  {
    byte_101FCA410 = 1;
    sub_10124C910();
  }
}

void sub_1012607A4(void *a1)
{
  sub_100004AA0(&v2, a1);
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101260880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012608A4(void *a1)
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
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1012609E0;
        v7[3] = &unk_101F211E8;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, v3);
        v6 = v3[2];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101260DC8;
        block[3] = &unk_101F21260;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

BOOL sub_101260A58(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_101260B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_101260C04(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  if ((v4 - 1) >= 3)
  {
    v4 = 0;
  }

  a2[12] |= 2u;
  a2[10] = v4;
  (*(**(v3 + 72) + 40))(&v16);
  v5 = v16;
  v6 = v17;
  if (v16 != v17)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      v9 = a2[7];
      v10 = a2[6];
      if (v10 >= v9)
      {
        if (v9 == a2[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v9 + 1);
          v9 = a2[7];
        }

        a2[7] = v9 + 1;
        operator new();
      }

      v11 = *(a2 + 2);
      a2[6] = v10 + 1;
      v12 = *(v11 + 8 * v10);
      if ((v8 - 1) >= 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8;
      }

      v14 = v12[11];
      v12[11] = v14 | 2;
      v12[3] = v13;
      if ((v7 - 1) > 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = dword_10193951C[v7 - 1];
      }

      v12[11] = v14 | 3;
      v12[2] = v15;
      v5 += 2;
    }

    while (v5 != v6);
    v5 = v16;
  }

  if (v5)
  {
    v17 = v5;
    operator delete(v5);
  }
}

uint64_t sub_101260DD8(uint64_t result, uint64_t a2)
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

void sub_101260DF4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101260E04(CFDictionaryRef theDict@<X1>, void *a2@<X8>)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"roadside_providers");
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFArrayGetTypeID())
      {
        CFArrayGetCount(v4);
        operator new();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1012613D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_101261770(&a33);
  sub_100004A34(a13);
  _Unwind_Resume(a1);
}

void sub_101261424(CFDictionaryRef theDict@<X1>, void *a2@<X8>)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"roadside_provider_ids");
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFArrayGetTypeID())
      {
        CFArrayGetCount(v4);
        operator new();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_101261654(void *a1, uint64_t a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    v4 = (a2 + 8);
    do
    {
      if (*(v3 + 98) == 1)
      {
        v5 = *v4;
        if (!*v4)
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 10);
        v7 = v4;
        do
        {
          v8 = *(v5 + 32);
          v9 = v8 >= v6;
          v10 = v8 < v6;
          if (v9)
          {
            v7 = v5;
          }

          v5 = *(v5 + 8 * v10);
        }

        while (v5);
        if (v7 != v4 && v6 >= *(v7 + 8))
        {
          sub_100074920(v14, (v7 + 5));
          sub_1004C22AC((v3 + 13), v14);
          sub_100009970(v14, v14[1]);
        }

        else
        {
LABEL_12:
          if (*(v3 + 128) == 1)
          {
            sub_100009970((v3 + 13), v3[14]);
            *(v3 + 128) = 0;
          }
        }
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v2);
  }
}

uint64_t sub_101261770(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_100009970(a1 + 64, *(a1 + 72));
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

uint64_t sub_1012617CC(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 88) == 1)
    {
      sub_100009970(a1 + 64, *(a1 + 72));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

void sub_101261854(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F212A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012618B8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1012618B8(a1, *a2);
    sub_1012618B8(a1, *(a2 + 1));
    if (a2[128] == 1)
    {
      sub_100009970((a2 + 104), *(a2 + 14));
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_101261944(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (__p[128] == 1)
    {
      sub_100009970((__p + 104), *(__p + 14));
    }

    if (__p[95] < 0)
    {
      operator delete(*(__p + 9));
    }

    if (__p[71] < 0)
    {
      operator delete(*(__p + 6));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1012619F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F212F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101261ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "lasd.ids.st");
  sub_101261C14(v4, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F21340;
  v5 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 56), v5);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  return a1;
}

void sub_101261BD4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 6);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10072A838(v2);
  LASDDatabaseIDSStateManagerInterface::~LASDDatabaseIDSStateManagerInterface(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101261C14(uint64_t a1, const OsLogContext *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v4, a2);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  return a1;
}

void sub_101261C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_101261C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  v11 = *a3;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10126476C(v13, a4);
  os_unfair_lock_lock((a1 + 24));
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10126476C(v14, v13);
  v7 = a1 + 88;
  if (v14 != (a1 + 88))
  {
    v8 = v15;
    v9 = *(a1 + 112);
    if (v15 == v14)
    {
      if (v9 == v7)
      {
        memset(v16, 0, sizeof(v16));
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(**(a1 + 112) + 24))(*(a1 + 112), v14);
        (*(**(a1 + 112) + 32))(*(a1 + 112));
        *(a1 + 112) = 0;
        v15 = v14;
        (*(v16[0] + 24))(v16, a1 + 88);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = *(a1 + 112);
      }

      *(a1 + 112) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(a1 + 112), v14);
      (*(**(a1 + 112) + 32))(*(a1 + 112));
      *(a1 + 112) = v15;
      v15 = v14;
    }

    else
    {
      v15 = *(a1 + 112);
      *(a1 + 112) = v8;
    }
  }

  sub_1012643E8(v14);
  os_unfair_lock_unlock((a1 + 24));
  sub_1012643E8(v13);
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_101261FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101261FCC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v3 = sub_101346228(v2);
  v4 = begin();
  LODWORD(__p[0]) = v4;
  v5 = end();
  while (v4 != v5)
  {
    LODWORD(v26[0]) = operator*();
    if ((v26[0] & v3) != 0)
    {
      memset(__str, 0, sizeof(__str));
      sub_101264AB4(a1 + 120, v26);
      if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__data_);
      }
    }

    operator++();
    v4 = __p[0];
  }

  (*(**(a1 + 72) + 96))(__str);
  if (*(a1 + 208))
  {
    sub_101264720(a1 + 184, *(a1 + 200));
    *(a1 + 200) = 0;
    v6 = *(a1 + 192);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*(a1 + 184) + 8 * i) = 0;
      }
    }

    *(a1 + 208) = 0;
  }

  v8 = __str[0].__r_.__value_.__r.__words[0];
  __str[0].__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 184);
  *(a1 + 184) = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *&__str[0].__r_.__value_.__r.__words[1];
  *(a1 + 192) = *&__str[0].__r_.__value_.__r.__words[1];
  __str[0].__r_.__value_.__l.__size_ = 0;
  data = __str[1].__r_.__value_.__l.__data_;
  *(a1 + 208) = __str[1].__r_.__value_.__l.__data_;
  *(a1 + 216) = __str[1].__r_.__value_.__r.__words[1];
  if (data)
  {
    v12 = *(*(&v10 + 1) + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (*(&v10 + 1) >= v10)
      {
        v12 = *(&v10 + 1) % v10;
      }
    }

    else
    {
      v12 = *(&v10 + 1) & (v10 - 1);
    }

    *(*(a1 + 184) + 8 * v12) = a1 + 200;
    __str[0].__r_.__value_.__r.__words[2] = 0;
    __str[1].__r_.__value_.__r.__words[0] = 0;
  }

  sub_1012646E4(__str);
  v29 = 0;
  Registry::getMobileHelper(__str, *(a1 + 40));
  v13 = __str[0].__r_.__value_.__r.__words[0];
  sub_10000501C(v26, "/var/mobile/Library/Preferences/com.apple.lasd.plist");
  (*(*v13 + 40))(&cf, v13, v26);
  v24 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v30 = 0;
  __p[0] = 0;
  sub_100010180(__p, &v24);
  if (__p[0])
  {
    sub_1000676D4(&v30, __p);
  }

  sub_10001021C(__p);
  v29 = v30;
  v30 = 0;
  sub_10001021C(&v30);
  sub_10000A1EC(&v24);
  sub_10000A1EC(&cf);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (__str[0].__r_.__value_.__l.__size_)
  {
    sub_100004A34(__str[0].__r_.__value_.__l.__size_);
  }

  if (v29)
  {
    v24 = 0;
    v25[0] = 0;
    v25[1] = 0;
    v23 = v29;
    CFRetain(v29);
    sub_101345EEC(&v23, &v24);
    sub_10001021C(&v23);
    v14 = v24;
    if (v24 != v25)
    {
      do
      {
        memset(__p, 0, sizeof(__p));
        LODWORD(__p[0]) = *(v14 + 8);
        if (v14[63] < 0)
        {
          sub_100005F2C(&__p[1], *(v14 + 5), *(v14 + 6));
        }

        else
        {
          *&__p[1] = *(v14 + 40);
          __p[3] = *(v14 + 7);
        }

        memset(__str, 0, sizeof(__str));
        if (SHIBYTE(__p[3]) < 0)
        {
          sub_100005F2C(__str, __p[1], __p[2]);
        }

        else
        {
          __str[0] = *&__p[1];
        }

        v30 = __p;
        v15 = sub_101264804((a1 + 184), __p[0]);
        if (*(v15 + 47) < 0)
        {
          sub_100005F2C(&__str[1], v15[3], v15[4]);
        }

        else
        {
          v16 = *(v15 + 3);
          __str[1].__r_.__value_.__r.__words[2] = v15[5];
          *&__str[1].__r_.__value_.__l.__data_ = v16;
        }

        v30 = __p;
        v17 = sub_100E3C9C0(a1 + 120, __p[0]);
        std::string::operator=((v17 + 5), __str);
        std::string::operator=((v17 + 8), &__str[1]);
        if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[1].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        v18 = *(v14 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v14 + 2);
            v20 = *v19 == v14;
            v14 = v19;
          }

          while (!v20);
        }

        v14 = v19;
      }

      while (v19 != v25);
    }

    sub_100077CD4(&v24, v25[0]);
  }

  else
  {
    v21 = *(a1 + 32);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__str[0].__r_.__value_.__l.__data_) = 136315138;
      *(__str[0].__r_.__value_.__r.__words + 4) = "/var/mobile/Library/Preferences/com.apple.lasd.plist";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s not available to read, maybe still using bootstrap db", __str, 0xCu);
    }
  }

  sub_10001021C(&v29);

  os_unfair_lock_unlock((a1 + 24));
}