void sub_100243EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void PSManager::handleWiFiLocationStatusEvaluationResult(PSManager *this)
{
  if (*(this + 1032) != 1)
  {
    return;
  }

  *(this + 1032) = 0;
  ServiceMap = Registry::getServiceMap(*(this + 7));
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
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_10:
  v12 = *(this + 5);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *v14 = 136315394;
      *&v14[4] = "";
      v15 = 2080;
      v16 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sRequesting to disable WiFiLocation on first launch", v14, 0x16u);
    }

    (*(*v10 + 16))(v10);
  }

  else if (v13)
  {
    *v14 = 136315394;
    *&v14[4] = "";
    v15 = 2080;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sNo CountryDeterminationInterface. Skipping initializing WiFiLocation", v14, 0x16u);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100244114(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void PSManager::notifyServiceBootstrap(PSManager *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void PSManager::handleVersionChanged_sync(PSManager *this, int a2)
{
  if (!a2)
  {
    getAssociatedID(&__p);
    __dst = 0;
    v27 = 0;
    v28 = 0;
    ctu::cf::assign();
    v3 = __dst;
    v4 = v27;
    v25[0] = v28;
    *(v25 + 3) = *(&v28 + 3);
    v5 = SHIBYTE(v28);
    sub_100005978(&__p);
    if (v5 < 0)
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      __dst = 0;
      v27 = 0;
      v28 = 0;
      sub_100005F2C(&__dst, v3, v4);
    }

    else
    {
      if (!v5)
      {
        return;
      }

      __dst = v3;
      v27 = v4;
      LODWORD(v28) = v25[0];
      *(&v28 + 3) = *(v25 + 3);
      HIBYTE(v28) = v5;
    }

    v6 = *(this + 94);
    v7 = *v6;
    v8 = *(v6 + 8);
    if (*v6 != v8)
    {
      while (!sub_100071DF8((*v7 + 24), &__dst))
      {
        v7 += 2;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }

      v8 = *(v6 + 8);
    }

    if (v7 != v8)
    {
      v10 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
      }

      if (v10)
      {
        v23 = 0;
        v24 = 0;
        v11 = kPhoneServicesWalletDomain;
        __p = 0;
        v21 = 0;
        v22 = 0;
        sub_10079CC3C(&v23, this + 56, &__dst, kCFLocalProvisioningApplied, kPhoneServicesWalletDomain, &__p, 1);
        if (__p)
        {
          v21 = __p;
          operator delete(__p);
        }

        sub_10007B7D8(&v23);
        v12 = __p;
        LOBYTE(v18) = 0;
        if (__p)
        {
          v13 = CFGetTypeID(__p);
          if (v13 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v18, v12, v14);
          }
        }

        v15 = v18;
        sub_10000A1EC(&__p);
        if (v15 == 1)
        {
          v18 = 0;
          v19 = 0;
          __p = 0;
          v21 = 0;
          v22 = 0;
          sub_10079CC3C(&v18, this + 56, &__dst, kLocationPopupShown, v11, &__p, 1);
          if (__p)
          {
            v21 = __p;
            operator delete(__p);
          }

          sub_10079CC40(&v18);
          v16 = v19;
          v19 = 0;
          if (v16)
          {
            (*(*v16 + 32))(v16);
          }

          TMKXPCServer.shutdown()();
        }

        v17 = v24;
        v24 = 0;
        if (v17)
        {
          (*(*v17 + 32))(v17);
        }

        TMKXPCServer.shutdown()();
      }
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst);
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(v3);
  }
}

void sub_100244508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_10079CC90(&a10);
  sub_10079CC90(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void PSManager::checkForVersionChange_sync(os_log_t *this)
{
  v9 = 0;
  v10 = 0;
  memset(__p, 0, sizeof(__p));
  sub_10079CB18(&v9, this + 7, @"Version", kPhoneServicesWalletDomain, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = 0;
  sub_10007B7D8(&v9);
  sub_10010B240(&v8, __p);
  sub_10000A1EC(__p);
  LODWORD(__p[0]) = 0;
  ctu::cf::assign(__p, v8, v2);
  if (LODWORD(__p[0]) != 1)
  {
    if (LODWORD(__p[0]))
    {
      if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
      {
        sub_1017663E4();
      }
    }

    else
    {
      PSManager::handleVersionChanged_sync(this, 0);
      v11 = 0;
      __p[0] = 1;
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, __p);
      if (v3)
      {
        v11 = v3;
        __p[0] = 0;
        sub_100029A48(__p);
        v4 = v11;
      }

      else
      {
        v4 = 0;
      }

      v7 = v4;
      v11 = 0;
      sub_100029A48(&v11);
      sub_10079CC40(&v9);
      sub_100029A48(&v7);
      v5 = this[5];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315906;
        *(__p + 4) = "";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "";
        HIWORD(__p[2]) = 1024;
        v13 = 0;
        v14 = 1024;
        v15 = 1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated version from %u to %u", __p, 0x22u);
      }
    }
  }

  sub_100029A48(&v8);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  TMKXPCServer.shutdown()();
}

void PSManager::notifyServiceStart(PSManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void PSManager::notifyServiceMigration(PSManager *this, dict a2, group_session a3)
{
  if (*a2.fObj.fObj)
  {
    xpc_retain(*a2.fObj.fObj);
  }

  else
  {
    xpc_null_create();
  }

  v4 = 0uLL;
  sub_100004AA0(&v4, this + 1);
  xpc_null_create();
  v4 = 0uLL;
  operator new();
}

void PSManager::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100244D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void PSManager::getFor(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 768));
  v6 = *(a1 + 936);
  *a3 = *(a1 + 928);
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(v11, "thumper");
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__p, v11[0], v11[1]);
  }

  else
  {
    *__p = *v11;
    v14 = v12;
  }

  v7 = sub_100071DF8(a2, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    std::string::operator=(a2, (a1 + 904));
  }

LABEL_13:
  v8 = sub_100007A6C(a1 + 832, &a2->__r_.__value_.__l.__data_);
  if (a1 + 840 != v8)
  {
    v10 = *(v8 + 56);
    v9 = *(v8 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v10;
    a3[1] = v9;
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  std::mutex::unlock((a1 + 768));
}

void sub_100244EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  std::mutex::unlock(v15 + 12);
  _Unwind_Resume(a1);
}

void PSManager::getFor(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  memset(&v7, 0, sizeof(v7));
  std::mutex::lock((a1 + 768));
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_13;
      }

      v6 = 856;
    }

    else
    {
      v6 = 904;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v6 = 880;
LABEL_12:
    std::string::operator=(&v7, (a1 + v6));
LABEL_13:
    std::mutex::unlock((a1 + 768));
    (**a1)(a1, &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (a2 != 3)
  {
    goto LABEL_13;
  }

  *a3 = 0;
  a3[1] = 0;

  std::mutex::unlock((a1 + 768));
}

void sub_100245000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15 + 12);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double PSManager::getFor@<D0>(void (***a1)(__int128 *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  (**a1)(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double PSManager::getFor@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(*a1 + 8))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void PSManager::handlePersonalityEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 752);
  v6 = *v4;
  v5 = v4[1];
  v7 = v6;
  if (v6 != v5)
  {
    v7 = v6;
    while ((*v7)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v7)[2].__r_.__value_.__r.__words[0]) != 1)
    {
      v7 += 2;
      if (v7 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == v5)
  {
LABEL_10:
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(a1 + 752);
      v6 = *v10;
      v5 = v10[1];
    }
  }

  v11 = v6;
  if (v6 != v5)
  {
    v11 = v6;
    while ((*v11)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v11)[2].__r_.__value_.__r.__words[0]) != 2)
    {
      v11 += 2;
      if (v11 == v5)
      {
        goto LABEL_20;
      }
    }
  }

  if (v11 == v5)
  {
LABEL_20:
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = *v11;
    v12 = v11[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(a1 + 752);
      v6 = *v14;
      v5 = v14[1];
    }
  }

  if (v6 != v5)
  {
    while ((*v6)[2].__r_.__value_.__s.__data_[1] != 1)
    {
      v6 += 2;
      if (v6 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  std::mutex::lock((a1 + 768));
  if (v9)
  {
    std::string::operator=((a1 + 856), v9 + 1);
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 856), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  if (v13)
  {
LABEL_29:
    std::string::operator=((a1 + 880), v13 + 1);
    goto LABEL_33;
  }

LABEL_31:
  memset(&__str, 0, sizeof(__str));
  std::string::operator=((a1 + 880), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_33:
  if (v6 == *(*(a1 + 752) + 8))
  {
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 904), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::operator=((a1 + 904), *v6 + 1);
  }

  std::mutex::unlock((a1 + 768));
  v55 = 0;
  v56 = 0;
  v15 = *(a1 + 752);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (*v15 != v17)
  {
    while (!sub_100071DF8((*v16 + 24), a2))
    {
      v16 += 2;
      if (v16 == v17)
      {
        v16 = v17;
        break;
      }
    }

    v17 = *(v15 + 8);
  }

  if (v16 == v17)
  {
    v18 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v18 = *v16;
    v19 = v16[1];
    v55 = *v16;
    v56 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v54 = 0uLL;
  if ((*(a2 + 24) & 0xFE) == 6)
  {
    std::mutex::lock((a1 + 768));
    v20 = sub_100007A6C(a1 + 832, a2);
    if (a1 + 840 != v20)
    {
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a2 + 23);
        v23 = (v22 & 0x80u) != 0;
        v24 = *a2;
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(a2 + 8);
        }

        if (!v23)
        {
          v24 = a2;
        }

        if (v22)
        {
          v25 = v24;
        }

        else
        {
          v25 = "<invalid>";
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
        *(__str.__r_.__value_.__r.__words + 4) = "";
        WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(__str.__r_.__value_.__r.__words[2]) = 2080;
        v58 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving controller for %s", &__str, 0x20u);
      }

      v26 = *(v20 + 64);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      *&__str.__r_.__value_.__l.__data_ = 0uLL;
      sub_100004AA0(&__str, (a1 + 8));
      operator new();
    }

    v45 = *(a1 + 944);
    memset(&__str, 0, sizeof(__str));
    (*(*v45 + 72))(v45, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock((a1 + 768));
    if (!v54)
    {
      goto LABEL_111;
    }
  }

  else
  {
    if (!v18)
    {
      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a2 + 23);
        v42 = (v41 & 0x80u) != 0;
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(a2 + 8);
        }

        if (v42)
        {
          v43 = *a2;
        }

        else
        {
          v43 = a2;
        }

        if (v41)
        {
          v44 = v43;
        }

        else
        {
          v44 = "<invalid>";
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
        *(__str.__r_.__value_.__r.__words + 4) = "";
        WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(__str.__r_.__value_.__r.__words[2]) = 2080;
        v58 = v44;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s--- UNEXPECTED, Personality %s does not exist", &__str, 0x20u);
      }

      goto LABEL_111;
    }

    std::mutex::lock((a1 + 768));
    v27 = sub_100007A6C(a1 + 832, a2);
    if (a1 + 840 != v27)
    {
      v29 = *(v27 + 56);
      v28 = *(v27 + 64);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = *(&v54 + 1);
      *&v54 = v29;
      *(&v54 + 1) = v28;
      if (v30)
      {
        sub_100004A34(v30);
      }
    }

    std::mutex::unlock((a1 + 768));
    if (!v54)
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a2 + 23);
        v33 = (v32 & 0x80u) != 0;
        v34 = *a2;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(a2 + 8);
        }

        if (!v33)
        {
          v34 = a2;
        }

        if (v32)
        {
          v35 = v34;
        }

        else
        {
          v35 = "<invalid>";
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
        *(__str.__r_.__value_.__r.__words + 4) = "";
        WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(__str.__r_.__value_.__r.__words[2]) = 2080;
        v58 = v35;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating controller for %s", &__str, 0x20u);
      }

      if (*(v55 + 49) == 1)
      {
        v50 = *(a1 + 64);
        __str.__r_.__value_.__r.__words[0] = *(a1 + 56);
        __str.__r_.__value_.__l.__size_ = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v51 = *(a1 + 24);
        __str.__r_.__value_.__r.__words[2] = v51;
        if (v51)
        {
          dispatch_retain(v51);
        }

        v52 = *(a1 + 1048);
        v58 = *(a1 + 1040);
        v59 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        v53 = *(a1 + 952);
        v60 = *(a1 + 944);
        v61 = v53;
        if (v53)
        {
          atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1009FD56C();
      }

      if (!*(v55 + 49))
      {
        v36 = *(a1 + 64);
        __str.__r_.__value_.__r.__words[0] = *(a1 + 56);
        __str.__r_.__value_.__l.__size_ = v36;
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
        }

        v37 = *(a1 + 24);
        __str.__r_.__value_.__r.__words[2] = v37;
        if (v37)
        {
          dispatch_retain(v37);
        }

        v38 = *(a1 + 1048);
        v58 = *(a1 + 1040);
        v59 = v38;
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        v39 = *(a1 + 952);
        v60 = *(a1 + 944);
        v61 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
        }

        PSControlSIM::create();
      }

      goto LABEL_111;
    }
  }

  PSManager::evaluateMultiSimStatus(a1);
  v46 = *(a2 + 24);
  v47 = 1;
  if (v46 <= 2)
  {
    if (v46 != 1)
    {
      if (v46 != 2)
      {
        goto LABEL_111;
      }

      v47 = 0;
    }

    goto LABEL_108;
  }

  switch(v46)
  {
    case 3u:
LABEL_108:
      (*(*v54 + 248))(v54, v47, &v55);
      goto LABEL_111;
    case 4u:
      v48 = v54;
      v49 = (*v54 + 256);
      break;
    case 5u:
      v48 = v54;
      v49 = (*v54 + 264);
      break;
    default:
      goto LABEL_111;
  }

  (*v49)(v48);
LABEL_111:
  if (*(&v54 + 1))
  {
    sub_100004A34(*(&v54 + 1));
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100245A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1002439D4(&__p);
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a15)
  {
    sub_100004A34(a15);
    if (!v23)
    {
LABEL_5:
      if (!v22)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v23)
  {
    goto LABEL_5;
  }

  sub_100004A34(v23);
  if (!v22)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_6:
  sub_100004A34(v22);
  goto LABEL_7;
}

void PSManager::evaluateMultiSimStatus(std::mutex *this)
{
  memset(&v21, 0, sizeof(v21));
  v2 = *&this[11].__m_.__opaque[40];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      if (!*(*v3 + 49) && *(v6 + 48) == 1)
      {
        ++v5;
        if (*(v6 + 52) == *&this[9].__m_.__opaque[8])
        {
          std::string::operator=(&v21, (v6 + 24));
        }
      }

      v3 += 2;
    }

    while (v3 != v4);
    v7 = v5 > 1;
  }

  v8 = *&this->__m_.__opaque[32];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asStringBool(v7);
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sMulti-SIM: %s", buf, 0x20u);
  }

  *&buf[8] = 0uLL;
  *buf = &buf[8];
  std::mutex::lock(this + 12);
  if (buf != &this[13])
  {
    sub_10024C0A0(buf, this[13].__m_.__sig, this[13].__m_.__opaque);
  }

  std::mutex::unlock(this + 12);
  v10 = *buf;
  if (*buf == &buf[8])
  {
    v16 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = (*(**(v10 + 7) + 288))(*(v10 + 7));
      v13 = *(v10 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v10 + 2);
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v11 += v12;
      v10 = v14;
    }

    while (v14 != &buf[8]);
    v10 = *buf;
    v16 = v11 > 1;
  }

  if (v10 != &buf[8])
  {
    do
    {
      v17 = *(v10 + 7);
      if (v7)
      {
        v18 = !sub_100071DF8(&v21, v10 + 4) & v16;
      }

      else
      {
        v18 = 0;
      }

      (*(*v17 + 240))(v17, v18);
      v19 = *(v10 + 1);
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
          v20 = *(v10 + 2);
          v15 = *v20 == v10;
          v10 = v20;
        }

        while (!v15);
      }

      v10 = v20;
    }

    while (v20 != &buf[8]);
  }

  sub_1002472DC(buf, *&buf[8]);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_100245DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSManager::handleDeviceNameChange_Async(PSManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void PSManager::recalculateCapabilities(PSManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void PSManager::recalculateWiFiLocationRequirement(PSManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

const void **PSManager::broadcastThumperInvitation(PSManager *this, const __CFDictionary *a2)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = theDict;
    theDict = Mutable;
    *buf = v5;
    sub_1000296E0(buf);
  }

  CFDictionarySetValue(theDict, kCTCapabilityCanSet, kCFBooleanFalse);
  CFDictionarySetValue(theDict, kCTCapabilityStatus, kCFBooleanFalse);
  if (a2)
  {
    CFDictionaryAddValue(theDict, kPSAccountDetails, a2);
  }

  v13 = 0;
  v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v6)
  {
    v7 = v13;
    v13 = v6;
    *buf = v7;
    sub_1000296E0(buf);
  }

  CFDictionarySetValue(v13, kCTCapabilityPhoneServices, theDict);
  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sfiring notification:", buf, 0x16u);
  }

  *buf = off_101E35C20;
  *&buf[8] = this;
  v16 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  ctu::cf_to_xpc(buf, v13, v9);
  object = xpc_null_create();
  sub_10002A37C(75, buf, &object);
  xpc_release(object);
  xpc_release(*buf);
  sub_1000296E0(&v13);
  result = sub_1000296E0(&theDict);
  if (a2)
  {
    theDict = CFDictionaryCreateMutableCopy(0, 0, a2);
    CFDictionaryRemoveValue(theDict, kPSDeviceList);
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%supdating delegates:", buf, 0x16u);
    }

    *buf = off_101E35CB0;
    *&buf[8] = this;
    v16 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    (*(**(this + 130) + 24))(*(this + 130), theDict);
    return sub_1000296E0(&theDict);
  }

  return result;
}

void sub_1002463B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, int a12, const void *a13, xpc_object_t a14)
{
  sub_100007E44(&a14);
  sub_1000296E0(&a13);
  _Unwind_Resume(a1);
}

void PSManager::getDeviceList(std::mutex *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock(this + 15);
  theDict = 0;
  sig = this[16].__m_.__sig;
  if (sig)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, sig);
    v6 = theDict;
    theDict = MutableCopy;
    v8 = v6;
    sub_1000296E0(&v8);
    CFDictionaryRemoveValue(theDict, kPSAccountList);
    v7 = 1;
    LOBYTE(v8) = 1;
    v9 = theDict;
    if (theDict)
    {
      CFRetain(theDict);
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  *a2 = v7;
  sub_100010180((a2 + 8), &v9);
  sub_1000296E0(&v9);
  sub_1000296E0(&theDict);
  std::mutex::unlock(this + 15);
}

void sub_100246528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0(va);
  std::mutex::unlock(v4 + 15);
  _Unwind_Resume(a1);
}

void PSManager::getDeviceInfo(std::mutex *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock(this + 15);
  theDict = 0;
  sig = this[16].__m_.__sig;
  if (sig)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, sig);
    v6 = theDict;
    theDict = MutableCopy;
    v8 = v6;
    sub_1000296E0(&v8);
    CFDictionaryRemoveValue(theDict, kPSDeviceList);
    v7 = 1;
    LOBYTE(v8) = 1;
    v9 = theDict;
    if (theDict)
    {
      CFRetain(theDict);
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  *a2 = v7;
  sub_100010180((a2 + 8), &v9);
  sub_1000296E0(&v9);
  sub_1000296E0(&theDict);
  std::mutex::unlock(this + 15);
}

void sub_10024663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0(va);
  std::mutex::unlock(v4 + 15);
  _Unwind_Resume(a1);
}

void PSManager::getDeviceInfo(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100250954(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100246798(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void PSManager::getDeviceList(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100250954(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1002468D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void PSManager::handleDumpState(PSManager *this)
{
  v2 = *(this + 104);
  v3 = this + 840;
  if (v2 != this + 840)
  {
    do
    {
      v4 = *(this + 94);
      v5 = *v4;
      v6 = *(v4 + 8);
      if (*v4 != v6)
      {
        while (!sub_100071DF8((*v5 + 24), v2 + 4))
        {
          v5 += 2;
          if (v5 == v6)
          {
            v5 = v6;
            break;
          }
        }

        v6 = *(v4 + 8);
      }

      if (v5 == v6)
      {
        v7 = 0;
      }

      else
      {
        v8 = *v5;
        v7 = v5[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          v9 = *(this + 5);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v8 + 24);
            v11 = v8 + 24;
            v10 = v12;
            v13 = *(v11 + 32);
            v14 = *(v11 + 23);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(v11 + 8);
            }

            if (v15 >= 0)
            {
              v10 = v11;
            }

            if (!v14)
            {
              v10 = "<invalid>";
            }

            buf = 136315906;
            *buf_4 = "";
            *&buf_4[8] = 2080;
            *&buf_4[10] = "";
            v50 = 1024;
            *v51 = v13;
            *&v51[4] = 2080;
            *&v51[6] = v10;
            v16 = v9;
            v17 = "#I %s%s| ---- %d: %s";
            v18 = 38;
LABEL_29:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &buf, v18);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }

      v19 = *(this + 5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v2[55];
        v21 = (v20 & 0x80u) != 0;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v2 + 5);
        }

        if (v21)
        {
          v22 = *(v2 + 4);
        }

        else
        {
          v22 = v2 + 32;
        }

        v23 = v20 == 0;
        v24 = "<invalid>";
        if (!v23)
        {
          v24 = v22;
        }

        buf = 136315650;
        *buf_4 = "";
        *&buf_4[8] = 2080;
        *&buf_4[10] = "";
        v50 = 2080;
        *v51 = v24;
        v16 = v19;
        v17 = "#I %s%s| ---- -: %s (personality is gone)";
        v18 = 32;
        goto LABEL_29;
      }

LABEL_30:
      (*(**(v2 + 7) + 464))(*(v2 + 7));
      if (v7)
      {
        sub_100004A34(v7);
      }

      v25 = *(v2 + 1);
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
          v26 = *(v2 + 2);
          v23 = *v26 == v2;
          v2 = v26;
        }

        while (!v23);
      }

      v2 = v26;
    }

    while (v26 != v3);
  }

  v27 = *(this + 5);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315394;
    *buf_4 = "";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s| ----", &buf, 0x16u);
  }

  v28 = *(this + 480);
  v29 = *(this + 5);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v28 == 1)
  {
    if (!v30)
    {
      goto LABEL_48;
    }

    v31 = (this + 488);
    if (*(this + 511) < 0)
    {
      v31 = *v31;
    }

    v32 = cellplan::asString();
    buf = 136315906;
    *buf_4 = "";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "";
    v50 = 2080;
    *v51 = v31;
    *&v51[8] = 2080;
    *&v51[10] = v32;
    v33 = "#I %s%s| Vinyl Sim info: [%s: %s]";
    v34 = v29;
    v35 = 42;
  }

  else
  {
    if (!v30)
    {
      goto LABEL_48;
    }

    buf = 136315394;
    *buf_4 = "";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "";
    v33 = "#I %s%s| Vinyl Sim info: unavailable";
    v34 = v29;
    v35 = 22;
  }

  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, &buf, v35);
LABEL_48:
  v36 = *(this + 118);
  if (v36)
  {
    (*(*v36 + 64))(v36);
  }

  v37 = *(this + 43);
  if (v37 != (this + 352))
  {
    do
    {
      v38 = *(this + 94);
      v39 = *v38;
      v40 = *(v38 + 8);
      if (*v38 != v40)
      {
        while (!sub_100071DF8((*v39 + 24), v37 + 4))
        {
          v39 += 2;
          if (v39 == v40)
          {
            v39 = v40;
            break;
          }
        }

        v40 = *(v38 + 8);
      }

      if (v39 == v40)
      {
        v42 = 0;
        v41 = 0;
      }

      else
      {
        v42 = *v39;
        v41 = v39[1];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      v43 = *(this + 5);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(v42 + 56);
        v45 = asString(*(v37 + 56));
        buf = 136315906;
        *buf_4 = "";
        *&buf_4[8] = 2080;
        *&buf_4[10] = "";
        v50 = 1024;
        *v51 = v44;
        *&v51[4] = 2080;
        *&v51[6] = v45;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s| VoNR Carrier Support for %d: %s", &buf, 0x26u);
      }

      if (v41)
      {
        sub_100004A34(v41);
      }

      v46 = *(v37 + 1);
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = *(v37 + 2);
          v23 = *v47 == v37;
          v37 = v47;
        }

        while (!v23);
      }

      v37 = v47;
    }

    while (v47 != (this + 352));
  }

  sub_1006160F0(&buf);
  sub_1006161D4();
  if (*&buf_4[4])
  {
    sub_100004A34(*&buf_4[4]);
  }
}

void sub_100246E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void *PSManager::resetICloudStorage(PSManager *this)
{
  result = *(this + 118);
  if (result)
  {
    return sub_1005DC448(result);
  }

  return result;
}

void sub_100246E7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100246E7C(a1, *a2);
    sub_100246E7C(a1, a2[1]);
    sub_100246ED8((a2 + 4));

    operator delete(a2);
  }
}

void sub_100246ED8(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = (a1 + 40);
    sub_1000087B4(&v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_100246F2C(uint64_t a1)
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

void sub_100246FAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100246FAC(a1, *a2);
    sub_100246FAC(a1, a2[1]);
    sub_100247008((a2 + 4));

    operator delete(a2);
  }
}

void sub_100247008(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10024705C(uint64_t a1)
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

uint64_t sub_1002470DC(uint64_t a1)
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

uint64_t sub_10024715C(uint64_t a1)
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

uint64_t sub_1002471DC(uint64_t a1)
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

uint64_t sub_10024725C(uint64_t a1)
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

void sub_1002472DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002472DC(a1, *a2);
    sub_1002472DC(a1, a2[1]);
    sub_1000D57F4((a2 + 4));

    operator delete(a2);
  }
}

void sub_100247338(PSManager ***a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sBootstrap", buf, 0x16u);
  }

  PSManager::evaluateWiFiLocationStatusOnce(v2);
  sub_1002476A8(v2 + 11, v2 + 72);
  sub_10024770C(v2 + 25, v2 + 72);
  sub_100247770(v2 + 32, v2 + 72);
  sub_1002477D4(v2 + 39, v2 + 72);
  sub_100247838(v2 + 18, v2 + 72);
  sub_10024789C(v2 + 46, v2 + 72);
  sub_100247900(v2 + 53, v2 + 72);
  sub_100004AA0(&__p, v2 + 1);
  v5 = __p;
  v4 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  *buf = off_101E35790;
  *&buf[8] = v5;
  *&buf[16] = v4;
  v18 = buf;
  v16 = 0;
  sub_100004AA0(&v10, v2 + 1);
  v7 = v10;
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v12[0] = off_101E35820;
  v12[1] = v7;
  v12[2] = v6;
  v12[3] = v12;
  PersonalitiesTracker::bind();
  sub_100249B60(v12);
  sub_100249BE0(&__p);
  sub_100249C60(buf);
  sub_10000501C(&__p, "/cc/props/cellular_plan_remotesubscription_info");
  *buf = off_101E358B0;
  *&buf[8] = v2 + 480;
  *&buf[16] = v2;
  v18 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  *buf = PSManager::handleDumpState;
  *&buf[8] = 0;
  sub_100249F28();
}

void sub_100247630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002476A8(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100247964(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10024770C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100247E3C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100247770(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100248314(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_1002477D4(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100248580(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100247838(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1002487EC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10024789C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100248CC4(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100247900(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10024919C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100247964(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E353C0;
  v5[1] = v3;
  v5[3] = v5;
  sub_100247BD0(v5, a1);
  sub_1002471DC(v5);
  return a1;
}

uint64_t sub_100247A68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E353C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100247A9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100247AE8(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/vowifi_provisioning_state");
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

void sub_100247B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_100247BD0(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100247E30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100247E3C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E35450;
  v5[1] = v3;
  v5[3] = v5;
  sub_1002480A8(v5, a1);
  sub_1002470DC(v5);
  return a1;
}

uint64_t sub_100247F40(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35450;
  a2[1] = v2;
  return result;
}

uint64_t sub_100247F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100247FC0(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/volte_feature_support");
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

void sub_100248064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1002480A8(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100248308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100248314(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E354E0;
  v5[1] = v3;
  v5[3] = v5;
  sub_1002480A8(v5, a1);
  sub_1002470DC(v5);
  return a1;
}

uint64_t sub_100248418(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E354E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10024844C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100248498(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/volte_network_support");
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

void sub_10024853C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_100248580(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E35560;
  v5[1] = v3;
  v5[3] = v5;
  sub_1002480A8(v5, a1);
  sub_1002470DC(v5);
  return a1;
}

uint64_t sub_100248684(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35560;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002486B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100248704(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/vonr_carrier_support");
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

void sub_1002487A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1002487EC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E355E0;
  v5[1] = v3;
  v5[3] = v5;
  sub_100248A58(v5, a1);
  sub_10024715C(v5);
  return a1;
}

uint64_t sub_1002488F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E355E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100248924(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100248970(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/ims_prov_state");
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

void sub_100248A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_100248A58(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100248CB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100248CC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E35670;
  v5[1] = v3;
  v5[3] = v5;
  sub_100248F30(v5, a1);
  sub_10024705C(v5);
  return a1;
}

uint64_t sub_100248DC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35670;
  a2[1] = v2;
  return result;
}

uint64_t sub_100248DFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100248E48(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/network_slicing_state");
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

void sub_100248EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_100248F30(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100249190(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_10024919C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E35700;
  v5[1] = v3;
  v5[3] = v5;
  sub_100249408(v5, a1);
  sub_100246F2C(v5);
  return a1;
}

uint64_t sub_1002492A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35700;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002492D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100249320(uint64_t a1, void *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/props/satellite_support");
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

void sub_1002493C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_100249408(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100249668(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100249674(void *a1)
{
  *a1 = off_101E35790;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002496C0(void *a1)
{
  *a1 = off_101E35790;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100249798(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E35790;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002497D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002497E0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100249820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        PSManager::handlePersonalityEvent(v8, a3);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1002498A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1002498F4(void *a1)
{
  *a1 = off_101E35820;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100249940(void *a1)
{
  *a1 = off_101E35820;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100249A18(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E35820;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100249A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100249A60(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100249AA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        PSManager::checkForVersionChange_sync(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100249B14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100249B60(uint64_t a1)
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

uint64_t sub_100249BE0(uint64_t a1)
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

uint64_t sub_100249C60(uint64_t a1)
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

__n128 sub_100249D54(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E358B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100249D84(uint64_t a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  sub_10022C090(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v4 = *(v3 + 480);
  v5 = *(v3 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    isSimReadyToUse = cellplan::RemoteSimSubscriptionInfo::isSimReadyToUse((v3 + 488));
    v8 = asStringBool(isSimReadyToUse);
    if ((*(v3 + 480) & 1) == 0)
    {
      sub_10176647C();
    }

    v12 = 136315906;
    v13 = "";
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = cellplan::asString();
    v9 = "#I %s%sVinylSimInfo: readyToUse: %s, status: %s";
    v10 = v5;
    v11 = 42;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v12 = 136315394;
    v13 = "";
    v14 = 2080;
    v15 = "";
    v9 = "#I %s%sVinylSimInfo not available";
    v10 = v5;
    v11 = 22;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
LABEL_8:
  PSManager::recalculateCapabilities(v3);
}

uint64_t sub_100249EDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10024A004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10024A0B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E35930;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10024A0EC(void *a1)
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

uint64_t sub_10024A134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10024A26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10024A31C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E359B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10024A354(void *a1, xpc_object_t *a2)
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

uint64_t sub_10024A444(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10024A490(os_log_t ***a1)
{
  v1 = **a1;
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "";
    v4 = 2080;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting", buf, 0x16u);
  }

  PSManager::checkForVersionChange_sync(v1);
  PSManager::handleWiFiLocationStatusEvaluationResult(v1);
  PSManager::recalculateCapabilities(v1);
}

void sub_10024AA04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  operator delete();
}

void sub_10024AB1C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10024AC64(uint64_t result, uint64_t a2)
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

void sub_10024AC80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10024AC90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_10024B338;
    v15[3] = &unk_101E35A80;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_10024ADE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024AE30(void *a1)
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
        v6 = v3[104];
        if (v6 != v3 + 105)
        {
          do
          {
            if (isReal())
            {
              v7 = v3[94];
              v8 = *v7;
              v9 = *(v7 + 8);
              if (*v7 != v9)
              {
                while (!sub_100071DF8((*v8 + 24), v6 + 4))
                {
                  v8 += 2;
                  if (v8 == v9)
                  {
                    v8 = v9;
                    break;
                  }
                }

                v9 = *(v7 + 8);
              }

              if (v8 != v9)
              {
                v10 = *v8;
                v11 = v8[1];
                if (v11)
                {
                  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v10 && *(v10 + 48) == 1)
                {
                  (*(*v6[7] + 24))(v6[7]);
                }

                if (v11)
                {
                  sub_100004A34(v11);
                }
              }
            }

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

          while (v13 != v3 + 105);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10024AFA0(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_10024AFC8(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_1000CE3D4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_100016740(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t *sub_10024B1C8(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v3 + 832);
        v7 = (v3 + 840);
        if (v6 != v7)
        {
          do
          {
            v8 = v6[7];
            if (*(*v8[10] + 52) == *(v1 + 28))
            {
              ((*v8)[2])(v8, *(v1 + 24));
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

          while (v10 != v7);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10024B2E4(&v14);
  return sub_1000049E0(&v13);
}

void sub_10024B2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10024B2E4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10024B2E4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_10024B338(void *a1, uint64_t a2)
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

void *sub_10024B3C4(void *a1, void *a2)
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

void sub_10024B410(uint64_t a1)
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

uint64_t *sub_10024B464(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_10024B4C8(uint64_t a1)
{
  v15 = a1;
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sMigration", buf, 0x16u);
  }

  v4 = a1 + 8;
  *buf = a1 + 8;
  *&buf[8] = "kIsRestore";
  sub_100006354(buf, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  *buf = v4;
  *&buf[8] = "kIsDifferentDevice";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  VoLteControl::sHandleMigrationForAll((v2 + 56), v6, v8);
  v9 = *(v2 + 832);
  v10 = (v2 + 840);
  if (v9 != v10)
  {
    do
    {
      (*(*v9[7] + 320))(v9[7], v6, v8);
      v11 = v9[1];
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
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != v10);
  }

  return sub_10024B464(&v15);
}

void sub_10024B684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10024B6D8(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1 + 840;
  if (v3 != v4)
  {
    do
    {
      v5 = v3[7];
      v6 = v1[1];
      group = v6;
      if (v6)
      {
        dispatch_retain(v6);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      (*(*v5 + 224))(v5, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      (*(*v3[7] + 232))(v3[7]);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  v10 = *(v2 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "";
    v17 = 2080;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sShutting down", buf, 0x16u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v13);
  return sub_1000049E0(&v12);
}

void sub_10024B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10024B94C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10024BA20);
  __cxa_rethrow();
}

void sub_10024B98C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10024B9E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10024BA20(uint64_t result)
{
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

void sub_10024BA4C(NSObject ****a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  PSManager::initialize(*v1);
}

void sub_10024BA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10024BAAC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_10024BB00(ServiceManager::Service *this)
{
  *this = off_101E35BB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10024BB5C(ServiceManager::Service *this)
{
  *this = off_101E35BB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10024BBDC@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10024BC1C(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    PSManager::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  PSManager::notifyServiceBootstrap(v2, v5);
}

void sub_10024BCA4(uint64_t a1, void **a2, NSObject **x2_0)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v10 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v7 = *x2_0;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
    v8.fObj.fObj = &v10;
    PSManager::notifyServiceMigration(v4, v8, v11);
  }

  v9.fObj.fObj = &v10;
  PSManager::notifyServiceMigration(v4, v9, v6);
}

uint64_t *sub_10024BD64(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = **(v1 + 8);
  if (*v1 == 6)
  {
    v3 = (v2 + 272);
  }

  else
  {
    v3 = (v2 + 280);
  }

  (*v3)();
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
    dispatch_release(v5);
    v6 = *(v1 + 8);
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  else
  {
    v6 = *(v1 + 8);
  }

  group = v5;
  (*(*v6 + 224))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  sub_10024BEDC(&v9);
  return sub_1000049E0(&v8);
}

void sub_10024BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  sub_10024BEDC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10024BEDC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10024BF30(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10024BFCC();
  }

  return v2;
}

char *sub_10024C044(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return __dst;
}

uint64_t **sub_10024C0A0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_10024C228((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10024C278(&v13);
  }

  if (a2 != a3)
  {
    sub_10024C2D0();
  }

  return result;
}

std::string *sub_10024C228(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = data;
  a1[1].__r_.__value_.__l.__size_ = size;
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

uint64_t sub_10024C278(uint64_t a1)
{
  sub_1002472DC(*a1, *(a1 + 16));
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

    sub_1002472DC(*a1, v2);
  }

  return a1;
}

void sub_10024C2D0()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10024C358();
}

void sub_10024C344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D57A8(va);
  _Unwind_Resume(a1);
}

void sub_10024C3D0(uint64_t **a1)
{
  v7 = a1;
  v1 = **a1;
  v2 = *(v1 + 832);
  v3 = (v1 + 840);
  if (v2 != (v1 + 840))
  {
    do
    {
      sub_10034AAA4(v2[7], 1);
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  operator delete();
}

void sub_10024C4A8(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%srecalculateCapabilities", buf, 0x16u);
  }

  v138[0] = 0;
  v138[1] = 0;
  v136[1] = 0;
  v137 = v138;
  v135 = v136;
  v136[0] = 0;
  v134[0] = 0;
  v134[1] = 0;
  v132[1] = 0;
  v133 = v134;
  v131 = v132;
  v132[0] = 0;
  v130[0] = 0;
  v130[1] = 0;
  v128[1] = 0;
  v129 = v130;
  v127 = v128;
  v128[0] = 0;
  v126[0] = 0;
  v126[1] = 0;
  v125 = v126;
  v3 = (v1 + 840);
  v4 = *(v1 + 832);
  if (v4 == (v1 + 840))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v1 + 752);
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        do
        {
          if (sub_100071DF8((*v7 + 24), v4 + 4))
          {
            goto LABEL_9;
          }

          v7 += 2;
        }

        while (v7 != v8);
        v7 = v8;
LABEL_9:
        v8 = *(v6 + 8);
      }

      if (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          if (!*(v9 + 49))
          {
            sub_10034EC94(*(v4 + 7), buf);
            v11 = *buf;
            if (LOBYTE(v142[0]) == 1 && SHIBYTE(v141) < 0)
            {
              operator delete(*&buf[8]);
            }

            v5 = (v11 != 0) | v5;
          }

          *buf = 0;
          *&buf[8] = 0;
          sub_10034ED04(*(v4 + 7), 2, buf);
          if (**buf == 1 && *(*buf + 16) == 2)
          {
            v5 = capabilities::ct::supportsVoiceCall(v12) | v5;
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != v3);
    v4 = *(v1 + 832);
  }

  if (v4 != v3)
  {
    do
    {
      v16 = *(v1 + 752);
      v17 = *v16;
      v18 = *(v16 + 8);
      if (*v16 != v18)
      {
        do
        {
          if (sub_100071DF8((*v17 + 24), v4 + 4))
          {
            goto LABEL_39;
          }

          v17 += 2;
        }

        while (v17 != v18);
        v17 = v18;
LABEL_39:
        v18 = *(v16 + 8);
      }

      if (v17 != v18)
      {
        v20 = *v17;
        v19 = v17[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v20)
        {
          v124 = 0;
          *__p = 0u;
          v123 = 0u;
          sub_10034EC94(*(v4 + 7), __p);
          if (((*(v20 + 49) == 1) & v5) == 1)
          {
            LODWORD(__p[0]) = 0;
          }

          sub_10024DCAC(buf, v4 + 2, __p);
          sub_10024DA74(&v137, buf);
          if (v144 == 1 && v143 < 0)
          {
            operator delete(v142[0]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v21 = __p[0];
          v120 = 0;
          v121 = 0;
          sub_10034ED04(*(v4 + 7), 2, &v120);
          v22 = *(v120 + 16) == 2;
          if (*(v4 + 55) < 0)
          {
            sub_100005F2C(buf, *(v4 + 4), *(v4 + 5));
          }

          else
          {
            *buf = v4[2];
            *&buf[16] = *(v4 + 6);
          }

          LOBYTE(v141) = v22;
          sub_10024DD88(&v135, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v23 = v120;
          if (*(v4 + 55) < 0)
          {
            sub_100005F2C(buf, *(v4 + 4), *(v4 + 5));
          }

          else
          {
            *buf = v4[2];
            *&buf[16] = *(v4 + 6);
          }

          LOBYTE(v141) = *(v23 + 12);
          sub_10024DD88(&v133, buf);
          v24 = v5;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v25 = *(v120 + 16);
          v118 = 0;
          v119 = 0;
          sub_10034ED04(*(v4 + 7), 3, &v118);
          v26 = v118;
          if (*(v4 + 55) < 0)
          {
            sub_100005F2C(buf, *(v4 + 4), *(v4 + 5));
          }

          else
          {
            *buf = v4[2];
            *&buf[16] = *(v4 + 6);
          }

          LOBYTE(v141) = *v26;
          sub_10024DD88(&v131, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v27 = *(v118 + 16);
          if (*(v4 + 55) < 0)
          {
            sub_100005F2C(buf, *(v4 + 4), *(v4 + 5));
          }

          else
          {
            *buf = v4[2];
            *&buf[16] = *(v4 + 6);
          }

          v141 = __PAIR64__(v27, v25);
          LODWORD(v142[0]) = v21;
          sub_10024DECC(&v129, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          sub_10034ED04(*(v4 + 7), 4, buf);
          v29 = *buf;
          v28 = *&buf[8];
          if (*buf)
          {
            v115[1] = 0;
            *&v116[0] = 0;
            v115[0] = &v115[1];
            v30 = *(*buf + 24);
            v31 = *buf + 32;
            if (v30 != (*buf + 32))
            {
              do
              {
                v32 = *(v29 + 16);
                if (v32)
                {
                  if (((v32 == 2) & *(v30 + 44)) != 0)
                  {
                    v32 = 2;
                  }

                  else
                  {
                    v32 = 1;
                  }
                }

                *buf = v30[4];
                *&buf[8] = (v32 == 2) | (v32 << 32);
                sub_10024E018(v115, buf);
                v33 = v30[1];
                if (v33)
                {
                  do
                  {
                    v34 = v33;
                    v33 = *v33;
                  }

                  while (v33);
                }

                else
                {
                  do
                  {
                    v34 = v30[2];
                    v15 = *v34 == v30;
                    v30 = v34;
                  }

                  while (!v15);
                }

                v30 = v34;
              }

              while (v34 != v31);
            }

            sub_10024E2CC(buf, v4 + 2, v115);
            sub_10024E0E4(&v127, buf);
            sub_10006DCAC(&v141, v142[0]);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            sub_10006DCAC(v115, v115[1]);
          }

          sub_10034ED04(*(v4 + 7), 5, buf);
          v35 = *&buf[8];
          if (*buf)
          {
            v117 = 0;
            memset(v116, 0, sizeof(v116));
            *v115 = 0u;
            LOBYTE(v115[0]) = *(*buf + 16) == 2;
            v36 = *(*buf + 24);
            if (v36)
            {
              sub_10024D844(&v115[1], v36);
            }

            sub_10024E708(buf, v4 + 2, v115);
            sub_10024E504(&v125, buf);
            if (v145 == 1)
            {
              v139 = &v142[1];
              sub_1000087B4(&v139);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v117 == 1)
            {
              *buf = v116;
              sub_1000087B4(buf);
            }
          }

          if (v35)
          {
            sub_100004A34(v35);
          }

          if (v28)
          {
            sub_100004A34(v28);
          }

          v5 = v24;
          if (v119)
          {
            sub_100004A34(v119);
          }

          if (v121)
          {
            sub_100004A34(v121);
          }

          if (v124 == 1 && SHIBYTE(v123) < 0)
          {
            operator delete(__p[1]);
          }
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      v37 = *(v4 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v4 + 2);
          v15 = *v38 == v4;
          v4 = v38;
        }

        while (!v15);
      }

      v4 = v38;
    }

    while (v38 != v3);
  }

  if (sub_10024D8F8(v1 + 88, &v137))
  {
    v39 = *(v1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated VoWiFi provisioning states pushed:", buf, 0x16u);
    }

    v40 = v137;
    if (v137 != v138)
    {
      do
      {
        v41 = *(v1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v40[4];
          v43 = *(v40 + 55);
          v44 = v40[5];
          asString();
          if (v43 >= 0)
          {
            v45 = v43;
          }

          else
          {
            v45 = v44;
          }

          if (v43 >= 0)
          {
            v46 = (v40 + 4);
          }

          else
          {
            v46 = v42;
          }

          v15 = v45 == 0;
          *buf = 136315906;
          v47 = "<invalid>";
          if (!v15)
          {
            v47 = v46;
          }

          *&buf[4] = "";
          v48 = v115;
          if (SBYTE7(v116[0]) < 0)
          {
            v48 = v115[0];
          }

          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v47;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v48;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
          if (SBYTE7(v116[0]) < 0)
          {
            operator delete(v115[0]);
          }
        }

        v49 = v40[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v40[2];
            v15 = *v50 == v40;
            v40 = v50;
          }

          while (!v15);
        }

        v40 = v50;
      }

      while (v50 != v138);
    }
  }

  if (sub_10024D944(v1 + 256, &v133))
  {
    v51 = *(v1 + 40);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated VoLTE network support pushed:", buf, 0x16u);
    }

    v52 = v133;
    if (v133 != v134)
    {
      do
      {
        v53 = *(v1 + 40);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v52[4];
          v55 = *(v52 + 55);
          v56 = v52[5];
          v57 = asStringBool(*(v52 + 56));
          *buf = 136315906;
          if (v55 >= 0)
          {
            v58 = v55;
          }

          else
          {
            v58 = v56;
          }

          *&buf[4] = "";
          if (v55 >= 0)
          {
            v59 = (v52 + 4);
          }

          else
          {
            v59 = v54;
          }

          v15 = v58 == 0;
          *&buf[12] = 2080;
          v60 = "<invalid>";
          if (!v15)
          {
            v60 = v59;
          }

          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v60;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v57;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
        }

        v61 = v52[1];
        if (v61)
        {
          do
          {
            v62 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v62 = v52[2];
            v15 = *v62 == v52;
            v52 = v62;
          }

          while (!v15);
        }

        v52 = v62;
      }

      while (v62 != v134);
    }
  }

  if (sub_10024D944(v1 + 312, &v131))
  {
    v63 = *(v1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated VoNR carrier support pushed:", buf, 0x16u);
    }

    v64 = v131;
    if (v131 != v132)
    {
      do
      {
        v65 = *(v1 + 40);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v64[4];
          v67 = *(v64 + 55);
          v68 = v64[5];
          v69 = asStringBool(*(v64 + 56));
          *buf = 136315906;
          if (v67 >= 0)
          {
            v70 = v67;
          }

          else
          {
            v70 = v68;
          }

          *&buf[4] = "";
          if (v67 >= 0)
          {
            v71 = (v64 + 4);
          }

          else
          {
            v71 = v66;
          }

          v15 = v70 == 0;
          *&buf[12] = 2080;
          v72 = "<invalid>";
          if (!v15)
          {
            v72 = v71;
          }

          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v72;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v69;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
        }

        v73 = v64[1];
        if (v73)
        {
          do
          {
            v74 = v73;
            v73 = *v73;
          }

          while (v73);
        }

        else
        {
          do
          {
            v74 = v64[2];
            v15 = *v74 == v64;
            v64 = v74;
          }

          while (!v15);
        }

        v64 = v74;
      }

      while (v74 != v132);
    }
  }

  if (sub_10024D944(v1 + 200, &v135))
  {
    v75 = *(v1 + 40);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated VoLTE feature support pushed:", buf, 0x16u);
    }

    v76 = v135;
    if (v135 != v136)
    {
      do
      {
        v77 = *(v1 + 40);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v76[4];
          v79 = *(v76 + 55);
          v80 = v76[5];
          v81 = asStringBool(*(v76 + 56));
          *buf = 136315906;
          if (v79 >= 0)
          {
            v82 = v79;
          }

          else
          {
            v82 = v80;
          }

          *&buf[4] = "";
          if (v79 >= 0)
          {
            v83 = (v76 + 4);
          }

          else
          {
            v83 = v78;
          }

          v15 = v82 == 0;
          *&buf[12] = 2080;
          v84 = "<invalid>";
          if (!v15)
          {
            v84 = v83;
          }

          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v84;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v81;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
        }

        v85 = v76[1];
        if (v85)
        {
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v86 = v76[2];
            v15 = *v86 == v76;
            v76 = v86;
          }

          while (!v15);
        }

        v76 = v86;
      }

      while (v86 != v136);
    }
  }

  sub_10024D990(v1 + 144, &v129);
  if (sub_10024D9DC(v1 + 368, &v127))
  {
    v87 = *(v1 + 40);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated Network Slicing support pushed:", buf, 0x16u);
    }

    v88 = v127;
    if (v127 != v128)
    {
      do
      {
        v89 = *(v1 + 40);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = v88[4];
          v91 = *(v88 + 55);
          v92 = v88[5];
          asString(v88 + 7, v115);
          if ((v91 & 0x80u) == 0)
          {
            v93 = v91;
          }

          else
          {
            v93 = v92;
          }

          if ((v91 & 0x80u) == 0)
          {
            v94 = (v88 + 4);
          }

          else
          {
            v94 = v90;
          }

          v15 = v93 == 0;
          *buf = 136315906;
          v95 = "<invalid>";
          if (!v15)
          {
            v95 = v94;
          }

          *&buf[4] = "";
          v96 = v115;
          if (SBYTE7(v116[0]) < 0)
          {
            v96 = v115[0];
          }

          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v95;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v96;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
          if (SBYTE7(v116[0]) < 0)
          {
            operator delete(v115[0]);
          }
        }

        v97 = v88[1];
        if (v97)
        {
          do
          {
            v98 = v97;
            v97 = *v97;
          }

          while (v97);
        }

        else
        {
          do
          {
            v98 = v88[2];
            v15 = *v98 == v88;
            v88 = v98;
          }

          while (!v15);
        }

        v88 = v98;
      }

      while (v98 != v128);
    }
  }

  if (sub_10024DA28(v1 + 424, &v125))
  {
    v99 = *(v1 + 40);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdated satellite support pushed:", buf, 0x16u);
    }

    v100 = v125;
    if (v125 != v126)
    {
      do
      {
        v101 = *(v1 + 40);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v102 = v100[4];
          v103 = *(v100 + 55);
          v104 = v100[5];
          v105 = asStringBool(*(v100 + 56));
          *buf = 136315906;
          if ((v103 & 0x80u) == 0)
          {
            v106 = v103;
          }

          else
          {
            v106 = v104;
          }

          *&buf[4] = "";
          if ((v103 & 0x80u) == 0)
          {
            v107 = (v100 + 4);
          }

          else
          {
            v107 = v102;
          }

          v15 = v106 == 0;
          *&buf[12] = 2080;
          v108 = "<invalid>";
          if (!v15)
          {
            v108 = v107;
          }

          *&buf[14] = "";
          *&buf[22] = 2080;
          v141 = v108;
          LOWORD(v142[0]) = 2080;
          *(v142 + 2) = v105;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s: %s", buf, 0x2Au);
        }

        v109 = v100[1];
        if (v109)
        {
          do
          {
            v110 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v110 = v100[2];
            v15 = *v110 == v100;
            v100 = v110;
          }

          while (!v15);
        }

        v100 = v110;
      }

      while (v110 != v126);
    }
  }

  v111 = *(v1 + 944);
  if (v111)
  {
    *buf = 0;
    sub_1005D7AF0(v111, buf);
    std::mutex::lock((v1 + 960));
    v112 = *(v1 + 1024);
    if (v112 && *buf && CFEqual(v112, *buf))
    {
      v113 = 0;
    }

    else
    {
      sub_1000676D4((v1 + 1024), buf);
      v113 = 1;
    }

    std::mutex::unlock((v1 + 960));
    if ((v113 & capabilities::ct::supportsThumperService(v114)) == 1)
    {
      PSManager::broadcastThumperInvitation(v1, *buf);
    }

    sub_10001021C(buf);
  }

  sub_100246E7C(&v125, v126[0]);
  sub_100246FAC(&v127, v128[0]);
  sub_100009970(&v129, v130[0]);
  sub_100009970(&v131, v132[0]);
  sub_100009970(&v133, v134[0]);
  sub_100009970(&v135, v136[0]);
  sub_1001A904C(&v137, v138[0]);
  operator delete();
}

void sub_10024D5B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, char a49, void *a50, uint64_t a51, char a52, void *a53, uint64_t a54, char a55, char *a56, uint64_t a57, char a58, char *a59, uint64_t a60, char a61, char *a62)
{
  std::mutex::unlock(v62 + 15);
  sub_10001021C((v63 - 192));
  sub_100246E7C(&a49, a50);
  sub_100246FAC(&a52, a53);
  sub_100009970(&a55, a56);
  sub_100009970(&a58, a59);
  sub_100009970(&a61, a62);
  sub_100009970(v63 - 248, *(v63 - 240));
  sub_1001A904C(v63 - 224, *(v63 - 216));
  operator delete();
}

uint64_t sub_10024D844(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_100008234((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    }

    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_10004EFD0(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  return a1;
}

BOOL sub_10024D8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10024E920((a1 + 32), a2);
  if (!v4)
  {
    sub_10024E89C(a1, a2);
  }

  return !v4;
}

uint64_t sub_10024D944(uint64_t a1, uint64_t a2)
{
  v4 = sub_10024EE04((a1 + 32), a2);
  if ((v4 & 1) == 0)
  {
    sub_10024ED80(a1, a2);
  }

  return v4 ^ 1u;
}

uint64_t sub_10024D990(uint64_t a1, uint64_t a2)
{
  v4 = sub_10024F218((a1 + 32), a2);
  if ((v4 & 1) == 0)
  {
    sub_10024F194(a1, a2);
  }

  return v4 ^ 1u;
}

uint64_t sub_10024D9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10024F65C((a1 + 32), a2);
  if ((v4 & 1) == 0)
  {
    sub_10024F5D8(a1, a2);
  }

  return v4 ^ 1u;
}

uint64_t sub_10024DA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100D51EC0((a1 + 32), a2);
  if ((v4 & 1) == 0)
  {
    sub_10024FE14(a1, a2);
  }

  return v4 ^ 1u;
}

uint64_t sub_10024DA74(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10024DB00();
  }

  return result;
}

void sub_10024DB78(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10024DC2C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10024DB94(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 28);
  v6 = *(a2 + 6);
  *(__dst + 32) = 0;
  *(__dst + 6) = v6;
  *(__dst + 28) = v5;
  *(__dst + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v7 = a2[2];
    __dst[6] = *(a2 + 6);
    *(__dst + 2) = v7;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(__dst + 56) = 1;
  }

  return __dst;
}

void sub_10024DC2C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 88) == 1 && *(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10024DCAC(void *__dst, __int128 *a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 28) = *(a3 + 4);
  *(__dst + 6) = v6;
  sub_10006F264((__dst + 4), (a3 + 2));
  return __dst;
}

void sub_10024DD1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024DD38(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10024DD88(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10024DE14();
  }

  return result;
}

void sub_10024DEB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10024DECC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10024DF58();
  }

  return result;
}

void sub_10024DFFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10024E018(uint64_t a1, unint64_t *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10024E0E4(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10024E180();
  }

  return v2;
}

uint64_t sub_10024E1F8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100247008(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_10024E244(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = *(a2 + 3);
  v5 = a2 + 2;
  v6 = *(a2 + 4);
  *(__dst + 4) = v6;
  v7 = __dst + 32;
  v8 = *(a2 + 5);
  *(__dst + 5) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 3) = v5;
    *v5 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(__dst + 3) = v7;
  }

  return __dst;
}

void *sub_10024E2CC(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_10024E348(__dst + 3, a3);
  return __dst;
}

void sub_10024E32C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10024E348(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10024E3A0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10024E3A0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10024E428(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_10024E428(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10010CB50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_10024E4C4(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10024E504(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10024E5A0();
  }

  return v2;
}

uint64_t sub_10024E618(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100246ED8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_10024E664(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  __dst[24] = *(a2 + 24);
  __dst[32] = 0;
  __dst[72] = 0;
  if (*(a2 + 72) == 1)
  {
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 6) = 0;
    *(__dst + 7) = 0;
    *(__dst + 5) = 0;
    *(__dst + 40) = *(a2 + 40);
    *(__dst + 7) = *(a2 + 7);
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(__dst + 32) = *(a2 + 32);
    __dst[72] = 1;
  }

  return __dst;
}

void *sub_10024E708(void *__dst, __int128 *a2, _BYTE *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  sub_10024E78C((__dst + 4), (a3 + 8));
  return __dst;
}

void sub_10024E770(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024E78C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_10004EFD0(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_10024E820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 40) == 1)
  {
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024E844(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 40);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10024E89C(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10024E9E0((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

BOOL sub_10024E920(void *a1, uint64_t a2)
{
  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v2 = (a1 + 1);
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v5 = a2 + 8;
  while (1)
  {
    v6 = sub_100007A6C(a2, v3 + 4);
    if (v5 == v6)
    {
      break;
    }

    result = sub_1011D44D8(v6 + 56, (v3 + 7));
    if (!result)
    {
      return result;
    }

    v8 = v3[1];
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
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    v3 = v9;
    if (v9 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t **sub_10024E9E0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = *(v9 + 14);
          *(v8 + 60) = *(v9 + 60);
          *(v8 + 14) = v10;
          sub_10012BF3C((v8 + 8), (v9 + 8));
          v17 = 0;
          v11 = sub_1001355F4(v5, &v17, v16 + 4);
          sub_1000070DC(v5, v17, v11, v16);
          v16 = v15;
          if (v15)
          {
            v15 = sub_1000685CC(v15);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v16;
          if (v16)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = sub_10024EB84(&v14);
  }

  if (a2 != a3)
  {
    sub_10024EBDC();
  }

  return result;
}

uint64_t sub_10024EB84(uint64_t a1)
{
  sub_1001A904C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1001A904C(*a1, v2);
  }

  return a1;
}

void sub_10024EBDC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10024EC64();
}

void sub_10024EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10024DC2C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024ECDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10024DC2C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10024ECF8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 6);
  *(__dst + 28) = *(a2 + 28);
  *(__dst + 6) = v5;
  sub_10006F264((__dst + 4), a2 + 2);
  return __dst;
}

void sub_10024ED64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024ED80(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10024EEC4((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_10024EE04(void *a1, uint64_t a2)
{
  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v2 = (a1 + 1);
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v5 = a2 + 8;
  while (1)
  {
    v6 = sub_100007A6C(a2, v3 + 4);
    if (v5 == v6 || *(v6 + 56) != *(v3 + 56))
    {
      break;
    }

    v7 = v3[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v3[2];
        v9 = *v8 == v3;
        v3 = v8;
      }

      while (!v9);
    }

    v3 = v8;
    if (v8 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t **sub_10024EEC4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 56) = *(v9 + 56);
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173240(&v13);
  }

  if (a2 != a3)
  {
    sub_10024F054();
  }

  return result;
}

void sub_10024F054()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10024F0DC();
}

void sub_10024F0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000E16DC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024F178(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10024F194(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10024F2F8((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_10024F218(void *a1, uint64_t a2)
{
  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v2 = (a1 + 1);
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v5 = (a2 + 8);
  while (1)
  {
    v6 = sub_100007A6C(a2, v3 + 4);
    if (v5 == v6 || v6[14] != *(v3 + 14) || v6[15] != *(v3 + 15) || v6[16] != *(v3 + 16))
    {
      break;
    }

    v7 = v3[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v3[2];
        v9 = *v8 == v3;
        v3 = v8;
      }

      while (!v9);
    }

    v3 = v8;
    if (v8 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t **sub_10024F2F8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v9[7];
          *(v8 + 16) = *(v9 + 16);
          v8[7] = v10;
          v17 = 0;
          v11 = sub_1001355F4(v5, &v17, v16 + 4);
          sub_1000070DC(v5, v17, v11, v16);
          v16 = v15;
          if (v15)
          {
            v15 = sub_1000685CC(v15);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v16;
          if (v16)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = sub_100173240(&v14);
  }

  if (a2 != a3)
  {
    sub_10024F490();
  }

  return result;
}

void sub_10024F490()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10024F518();
}

void sub_10024F4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000E16DC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024F5BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10024F5D8(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10024F7E4((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_10024F65C(void *a1, uint64_t a2)
{
  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v2 = (a1 + 1);
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v5 = a2 + 8;
  while (1)
  {
    v6 = sub_100007A6C(a2, v3 + 4);
    if (v5 == v6)
    {
      break;
    }

    result = sub_10024F71C((v6 + 56), (v3 + 7));
    if (!result)
    {
      return result;
    }

    v8 = v3[1];
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
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    v3 = v9;
    if (v9 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10024F71C(void *a1, uint64_t a2)
{
  if (a1[2] == *(a2 + 16))
  {
    v4 = *a1;
    v2 = a1 + 1;
    v3 = v4;
    if (v4 == v2)
    {
      return 1;
    }

    while (*(a2 + 8))
    {
      v5 = v3[4];
      v6 = a2 + 8;
      v7 = *(a2 + 8);
      do
      {
        v8 = *(v7 + 32);
        v9 = v8 >= v5;
        v10 = v8 < v5;
        if (v9)
        {
          v6 = v7;
        }

        v7 = *(v7 + 8 * v10);
      }

      while (v7);
      if (v6 == a2 + 8 || v5 < *(v6 + 32) || *(v6 + 40) != *(v3 + 40) || *(v6 + 44) != *(v3 + 11))
      {
        break;
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
      if (v12 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t **sub_10024F7E4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          sub_10024F978(v16, (v9 + 4));
          v16[0] = 0;
          v10 = sub_1001355F4(v5, v16, v15 + 4);
          sub_1000070DC(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10024FC44(&v13);
  }

  if (a2 != a3)
  {
    sub_10024FC9C();
  }

  return result;
}

void sub_10024F964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024FC44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10024F978(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    sub_10024F9C4(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

uint64_t **sub_10024F9C4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          v8[5] = v9[5];
          sub_10024FB30(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10024FBA0();
  }

  return result;
}

void sub_10024FB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10024FB30(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_10024FC44(uint64_t a1)
{
  sub_100246FAC(*a1, *(a1 + 16));
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

    sub_100246FAC(*a1, v2);
  }

  return a1;
}

void sub_10024FC9C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10024FD24();
}

void sub_10024FD10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024E1F8(va);
  _Unwind_Resume(a1);
}

void *sub_10024FD9C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10024E348(__dst + 3, a2 + 24);
  return __dst;
}

void sub_10024FDF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024FE14(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10024FE98((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t **sub_10024FE98(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 56) = *(v9 + 56);
          sub_100250034((v8 + 8), (v9 + 8));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10025010C(&v13);
  }

  if (a2 != a3)
  {
    sub_100250164();
  }

  return result;
}

void sub_100250034(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      *a1 = *a2;
      if (a1 != a2)
      {
        sub_100008234((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
      }

      *(a1 + 32) = *(a2 + 32);
    }
  }

  else if (*(a1 + 40))
  {
    v4 = (a1 + 8);
    sub_1000087B4(&v4);
    *(a1 + 40) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_10004EFD0(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }
}

uint64_t sub_10025010C(uint64_t a1)
{
  sub_100246E7C(*a1, *(a1 + 16));
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

    sub_100246E7C(*a1, v2);
  }

  return a1;
}

void sub_100250164()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1002501EC();
}

void sub_1002501D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024E618(va);
  _Unwind_Resume(a1);
}

void *sub_100250264(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_10024E78C((__dst + 4), (a2 + 2));
  return __dst;
}

void sub_1002502C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002502E4(uint64_t **a1)
{
  v1 = **a1;
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
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
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017664A8();
    }

    goto LABEL_24;
  }

LABEL_11:
  v12 = *(v1 + 832);
  if (v12 == (v1 + 840))
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (*(*v12[7] + 480))(v12[7]);
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
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (!v18);
      }

      v14 += v15;
      v13 |= v15;
      v12 = v17;
    }

    while (v17 != (v1 + 840));
  }

  v19 = *(v1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = asStringBool(v13 & 1);
    v21 = *(v1 + 848);
    *buf = 136316162;
    *&buf[4] = "";
    v23 = 2080;
    v24 = "";
    v25 = 2080;
    v26 = v20;
    v27 = 2048;
    v28 = v14;
    v29 = 2048;
    v30 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%srecalculateWiFiLocationRequirement: WiFiLocation required: %s (required by %zu / %zu controllers)", buf, 0x34u);
  }

  (*(*v10 + 80))(v10, v13 & 1);
LABEL_24:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  operator delete();
}

uint64_t sub_10025065C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35C20;
  a2[1] = v2;
  return result;
}

void sub_100250688(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100250754(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100250810(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E35CB0;
  a2[1] = v2;
  return result;
}

void sub_10025083C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100250908(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100250954(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1002509D4(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v6 = 0;
  v7 = 0;
  (*(*v2 + 48))(&v6);
  sub_100250ADC((v1 + 1), v6);
  sub_10001021C(&v7);
  sub_100250A8C(&v5);
  return sub_1000049E0(&v4);
}

void sub_100250A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a12);
  sub_100250A8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100250A8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10024725C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100250ADC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_100250B30(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v6 = 0;
  v7 = 0;
  (*(*v2 + 56))(&v6);
  sub_100250ADC((v1 + 1), v6);
  sub_10001021C(&v7);
  sub_100250A8C(&v5);
  return sub_1000049E0(&v4);
}

void sub_100250BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a12);
  sub_100250A8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100250BE8(void *a1)
{
  *a1 = off_101E25620;
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "DATA.5wi");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(v2, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *a1 = off_101E35D30;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new();
}

void sub_100250DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v14);
  v16 = *(v12 + 48);
  if (v16)
  {
    sub_100004A34(v16);
  }

  ctu::OsLogLogger::~OsLogLogger(v13);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100250E28(void *result, int a2, __int16 a3, CFTypeRef cf, void *a5)
{
  if (a5)
  {
    return sub_100251000(a5, result, a2, a3, cf);
  }

  return result;
}

void sub_100250E50(uint64_t a1)
{
  *a1 = off_101E35D30;
  if (*(a1 + 16))
  {
    NEIPSecIKEInvalidateSession();
    CFRelease(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_100250ED4(uint64_t a1)
{
  sub_100250E50(a1);

  operator delete();
}

void *sub_100251000(void *result, uint64_t a2, int a3, __int16 a4, CFTypeRef cf)
{
  if (result[2] == a2)
  {
    v5 = result;
    sub_1002510A0(result, a4, cf);
    result = v5[4];
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

void sub_1002510A0(uint64_t a1, __int16 a2, CFTypeRef cf)
{
  if ((a2 & 0xFF00) == 0x1200 && cf != 0)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count < 1)
      {
LABEL_13:
        v17 = 0;
      }

      else
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
          if (ValueAtIndex)
          {
            v11 = ValueAtIndex;
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(v11, @"UseNATTraversal");
              if (Value)
              {
                v14 = Value;
                v15 = CFGetTypeID(Value);
                if (v15 == CFBooleanGetTypeID())
                {
                  break;
                }
              }
            }
          }

          if (v8 == ++v9)
          {
            goto LABEL_13;
          }
        }

        LOBYTE(v21) = 0;
        ctu::cf::assign(&v21, v14, v16);
        v17 = v21;
      }

      v18 = v17 & 1;
      **(a1 + 40) = v17 & 1;
      v19 = *(a1 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = asStringBool(v18);
        v21 = 136315138;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I checkForNATedNetwork: Session on NAT'ed network: %s", &v21, 0xCu);
      }
    }
  }
}

uint64_t sub_100251230@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1002513D8(uint64_t a1, NSObject **a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  *a1 = off_101E360F0;
  v14 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.tr.ctr");
  sub_100251808(v14, a2, &v24);
  ctu::OsLogContext::~OsLogContext(&v24);
  *a1 = off_101E35E20;
  *(a1 + 48) = *a4;
  v15 = a4[1];
  *(a1 + 56) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a3;
  v16 = a3[1];
  *(a1 + 72) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = *a5;
  v17 = a5[1];
  *(a1 + 88) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = *a6;
  v18 = a6[1];
  *(a1 + 136) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0uLL;
  *(a1 + 152) = 0;
  *(a1 + 145) = 0;
  *(a1 + 160) = 1;
  *(a1 + 216) = 0uLL;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 400) = 0;
  *(a1 + 184) = 0uLL;
  *(a1 + 200) = 0uLL;
  *(a1 + 232) = 0uLL;
  *(a1 + 248) = 0;
  *(a1 + 320) = 0uLL;
  *(a1 + 336) = 0uLL;
  *(a1 + 345) = 0uLL;
  *(a1 + 392) = a1 + 400;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 520) = 0;
  *(a1 + 552) = 0;
  sub_10000501C(&__p, "CellularPlanTransferFlowController");
  v19 = *(a1 + 24);
  v21 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  ctu::RestModule::RestModule();
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 600) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 608) = a1 + 616;
  *(a1 + 632) = 0;
  *(a1 + 634) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = a1 + 704;
  *(a1 + 776) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 768) = a1 + 776;
  *(a1 + 792) = 0;
  *(a1 + 816) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 849) = 0u;
  *(a1 + 928) = a1 + 936;
  *(a1 + 960) = 0u;
  *(a1 + 952) = a1 + 960;
  *(a1 + 984) = 0u;
  *(a1 + 976) = a1 + 984;
  *(a1 + 1040) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = a1 + 1040;
  *(a1 + 1056) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1064) = a1 + 1072;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = a7;
  *(a1 + 1121) = 0;
  return a1;
}

void sub_1002516C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10002B644(v20 + 360);
  sub_10027B1C8(v20 + 280);
  sub_100285554(v20 + 248);
  sub_100009970(v20 + 224, *(v18 + 400));
  if (*(v18 + 384) == 1 && *(v18 + 383) < 0)
  {
    operator delete(*(v18 + 360));
  }

  a18 = v20 + 160;
  sub_10027B228(&a18);
  sub_10000FF50(v18 + 296);
  sub_1002854D4(v20 + 88);
  v22 = *(v18 + 248);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_10027B2AC(&a18);
  a18 = v20 + 24;
  sub_10027B3D0(&a18);
  a18 = v20;
  sub_10027B454(&a18);
  v23 = *(v18 + 136);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v18 + 120);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v18 + 104);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v18 + 88);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(v18 + 72);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(v18 + 56);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void *sub_100251808(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100251870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100251898(uint64_t a1)
{
  *a1 = off_101E35E20;
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I destructor tr.ctr : %p", buf, 0xCu);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = *(a1 + 328);
        v9 = *(a1 + 336);
        while (v8 != v9)
        {
          if (*(v8 + 908) == 1)
          {
            v10 = *(v8 + 274);
            v11 = *(v8 + 282);
            if (*(v8 + 343) < 0)
            {
              sub_100005F2C(__dst, *(v8 + 320), *(v8 + 328));
            }

            else
            {
              *__dst = *(v8 + 320);
              v31 = *(v8 + 336);
            }

            v12 = *(v8 + 584);
            v13 = *(v8 + 592);
            if (*(v8 + 695) < 0)
            {
              sub_100005F2C(__p, *(v8 + 672), *(v8 + 680));
            }

            else
            {
              *__p = *(v8 + 672);
              v29 = *(v8 + 688);
            }

            (*(*v7 + 24))(v7, v10, v11, __dst, v12, v13, __p, 3);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          v8 += 1072;
        }

        sub_100251DA8(a1);
      }

      sub_100004A34(v6);
    }
  }

  v14 = *(a1 + 1112);
  *(a1 + 1112) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_1002855D4((a1 + 1104), 0);
  sub_10027B4D8(a1 + 1064, *(a1 + 1072));
  sub_1000DD0AC(a1 + 1032, *(a1 + 1040));
  v15 = *(a1 + 1016);
  *(a1 + 1016) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 1008);
  *(a1 + 1008) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 1000);
  *(a1 + 1000) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_100009970(a1 + 976, *(a1 + 984));
  sub_1002472DC(a1 + 952, *(a1 + 960));
  sub_1000CFC30(a1 + 928, *(a1 + 936));
  *buf = a1 + 904;
  sub_10005C284(buf);
  if (*(a1 + 888) == 1)
  {
    sub_100009970(a1 + 864, *(a1 + 872));
  }

  v18 = *(a1 + 856);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 816) == 1 && *(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  sub_100077CD4(a1 + 768, *(a1 + 776));
  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  sub_1001704B0(a1 + 696, *(a1 + 704));
  *buf = a1 + 664;
  sub_1000B2AF8(buf);
  *buf = a1 + 640;
  sub_100112048(buf);
  sub_100045B14(a1 + 608, *(a1 + 616));
  sub_10027B148(a1 + 576);
  v19 = *(a1 + 568);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10002B644(a1 + 528);
  if (*(a1 + 520) == 1)
  {
    sub_10001021C((a1 + 512));
    sub_100005978((a1 + 504));
    if (*(a1 + 503) < 0)
    {
      operator delete(*(a1 + 480));
    }

    if (*(a1 + 479) < 0)
    {
      operator delete(*(a1 + 456));
    }
  }

  sub_100285554(a1 + 416);
  sub_100009970(a1 + 392, *(a1 + 400));
  if (*(a1 + 384) == 1 && *(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  *buf = a1 + 328;
  sub_10027B228(buf);
  sub_10000FF50(a1 + 296);
  sub_1002854D4(a1 + 256);
  v20 = *(a1 + 248);
  if (v20)
  {
    sub_100004A34(v20);
  }

  *buf = a1 + 216;
  sub_10027B2AC(buf);
  *buf = a1 + 192;
  sub_10027B3D0(buf);
  *buf = a1 + 168;
  sub_10027B454(buf);
  v21 = *(a1 + 136);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(a1 + 120);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a1 + 72);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100251D98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100251DA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100649C64(*(a1 + 144));
    v4 = *(a1 + 145);
    v5 = *(a1 + 146);
    *buf = 136315650;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *v22 = v4;
    *&v22[4] = 1024;
    *v23 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I List source: (%s), Local transfer: (%{BOOL}d), QR Code transfer: (%{BOOL}d)", buf, 0x18u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 150);
    v7 = *(a1 + 440) != 0;
    v8 = *(a1 + 151);
    v9 = *(a1 + 153);
    v10 = *(a1 + 154);
    v11 = *(a1 + 155);
    v12 = *(a1 + 896);
    *buf = 67110656;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    *v22 = 1024;
    *&v22[2] = v8;
    *v23 = 1024;
    *&v23[2] = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Plan data available: (%{BOOL}d), Transfer ongoing: (%{BOOL}d), Awaiting CUMessage resp: (%{BOOL}d), Awaiting push: (%{BOOL}d), Awaiting TSS: (%{BOOL}d), Awaiting TSS webservice: (%{BOOL}d), Denylist Uploaded: (%{BOOL}d)", buf, 0x2Cu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 128207979 * ((*(a1 + 336) - *(a1 + 328)) >> 4);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Target ent data map size: %d", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 1121);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I last transfer plan : %{BOOL}d", buf, 8u);
  }

  v15 = *(a1 + 328);
  for (i = *(a1 + 336); v15 != i; v15 += 1072)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_10031A10C(buf);
      if (v23[3] >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      *v19 = 136315138;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s", v19, 0xCu);
      if ((v23[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_100252070(uint64_t a1)
{
  sub_100251898(a1);

  operator delete();
}

void sub_1002520A8(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4, uint64_t a5, const std::string *a6, uint64_t a7, const std::string *a8)
{
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Target Transfer Controller init. %p", buf, 0xCu);
  }

  (***(a1 + 48))(buf);
  Registry::createRestModuleOneTimeUseConnection(&v29, *buf);
  ctu::RestModule::connect();
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((a1 + 640) != a2)
  {
    sub_100169D44(a1 + 640, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  if ((a1 + 664) != a3)
  {
    sub_100169790((a1 + 664), *a3, a3[1], 0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3));
  }

  *(a1 + 147) = a4;
  if (a1 + 696 != a7)
  {
    sub_1001707A0((a1 + 696), *a7, (a7 + 8));
  }

  std::string::operator=((a1 + 720), a8);
  if (a1 + 768 != a5)
  {
    sub_1002856BC((a1 + 768), *a5, (a5 + 8));
  }

  sub_10012BF3C((a1 + 792), a6);
  (***(a1 + 48))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  __p[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, __p);
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
      goto LABEL_23;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_23:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v25)
  {
    (*(*v25 + 256))(buf, v25);
    v27 = (a1 + 824);
    if (*(a1 + 847) < 0)
    {
      operator delete(*v27);
    }

    *v27 = *buf;
    *(a1 + 840) = v33;
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  sub_100252688((a1 + 576), a1 + 560);
  sub_100004AA0(buf, (a1 + 8));
  v28 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v28);
  }

  sub_10000501C(__p, "/cc/events/pending_install_plan_push_notification_received");
  operator new();
}

void sub_1002525DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100252688(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100285A2C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1002526EC(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/internet_reachability_interface");
  v4[0] = off_101E36548;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002527A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002527CC(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/ethernet_status");
  v4[0] = off_101E365C8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100252880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002528AC(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/internet_status");
  v4[0] = off_101E36648;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100252960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025298C(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v12 = sub_100649C38(1);
  sub_10000501C(&v17, v12);
  sub_100252BF4((a1 + 640), v13, __p);
  sub_10092144C(a2, a3, a4, __p, a5, &v16);
  v20 = a1;
  sub_100004AA0(&v18, (a1 + 8));
  v14 = v19;
  v21 = v18;
  v22 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  sub_1000224C8(v23, a6);
  v23[7] = 0;
  operator new();
}

void sub_100252B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_100287028(v27 - 104);
  sub_100252C44(&a25);
  sub_10001021C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100252BF4@<X0>(uint64_t *result@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    while (v3[1] != 2)
    {
      v3 += 22;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 != v4 && v3[3] == 3)
  {
    return sub_100922314((v3 + 4), a2, a3);
  }

LABEL_8:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t sub_100252C44(uint64_t a1)
{
  sub_10000FF50(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100252C7C(uint64_t a1, const void **a2)
{
  v15 = 0;
  v16 = 0;
  (***(a1 + 48))(&v11);
  Registry::getNotificationSenderFactory(&v13, v11);
  v4 = v13;
  (***(a1 + 48))(&v7);
  Registry::getTimerService(&v9, v7);
  (*(*v4 + 168))(&v15, v4, &v9, a1 + 24);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v5 = v15;
  if (v15)
  {
    sub_100010024(&v6, a2);
    (*(*v5 + 40))(v5, &v6);
    sub_10001021C(&v6);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176652C();
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_100252E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100252E70(uint64_t a1, __int16 a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100) != 0 && a2 - 1 > 1)
  {
    if (a3)
    {
      goto LABEL_18;
    }

    v8 = *(a4 + 343);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a4 + 328);
    }

    if (!v8)
    {
LABEL_18:
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Local transfer or no profile details", buf, 2u);
      }

      v16 = *(a5 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }

      return (*(*v16 + 48))(v16);
    }

    else
    {
      v9 = *(a4 + 712);
      if (v9)
      {
        v24 = 0x400000000000000;
        *__p = *"19.0";
        v10 = sub_100927A9C(__p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (v9 >= v10)
        {
          v22 = 0;
          sub_100930308(1, &v22);
          sub_100010024(&v21, &v22);
          sub_100252C7C(a1, &v21);
          sub_10001021C(&v21);
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Wifi required for transfer.", buf, 2u);
          }

          sub_10025329C(a1, 0);
          v18 = sub_100649C38(12);
          sub_10000501C(buf, v18);
          sub_100921DBC((a4 + 320), &v19);
          v25 = a1;
          sub_1002306AC((a1 + 8), &v26);
          sub_10009CF40(&v27, a5);
          sub_10025351C(v28);
        }
      }

      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Source pre-Luck. No need to show wifi alert.", buf, 2u);
      }

      return sub_100253254(a5);
    }
  }

  else
  {
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_100022DB4();
    }

    v14 = *(*v13 + 48);

    return v14();
  }
}

void sub_1002531B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, std::__shared_weak_count *a30)
{
  sub_100287028(v30 - 88);
  sub_1002535AC(&a28);
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100253254(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10025329C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240))
  {
    *(a1 + 160) = a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "hide";
      if (a2)
      {
        v5 = "show";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending request to %s prox card on source", buf, 0xCu);
    }

    cf = 0;
    sub_10092EA84(a2, &cf);
    v6 = *(a1 + 240);
    v7 = sub_100649C38(11);
    sub_10000501C(buf, v7);
    v11 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v10 = 0;
    v13[0] = off_101E37D68;
    v13[3] = v13;
    (*(*v6 + 16))(v6, buf, &v11, a1 + 24, &v10, v13);
    sub_100287028(v13);
    sub_10001021C(&v11);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    *buf = 0;
    sub_10092EC30(a2, buf);
    v9 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    sub_100252C7C(a1, &v9);
    sub_10001021C(&v9);
    sub_10001021C(buf);
    sub_10001021C(&cf);
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No change to prox card required in Manatee flow.", buf, 2u);
    }
  }
}

void sub_1002534A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002535AC(uint64_t a1)
{
  sub_10002B644(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

BOOL sub_1002535E4(uint64_t a1)
{
  v3 = 0;
  v4[0] = 0;
  v4[1] = 0;
  (*(**(a1 + 48) + 1048))(&v3);
  v1 = v4 != sub_100007A6C(&v3, &unk_101FBA110);
  sub_100009970(&v3, v4[0]);
  return v1;
}

void sub_10025369C(uint64_t a1)
{
  if (*(a1 + 240))
  {
    v2 = sub_100649C38(14);
    sub_10000501C(&buf, v2);
    sub_100922038(2, &v21);
    v20 = 5;
    sub_100004AA0(&v22, (a1 + 8));
    v3 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v24 = 0;
    operator new();
  }

  if (*(a1 + 352) == *(a1 + 336))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766560();
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
    sub_100BE2338(&v22);
    BYTE4(v23) |= 1u;
    LODWORD(v23) = 2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 352);
      v6 = (v5 + 320);
      if (*(v5 + 343) < 0)
      {
        v6 = *v6;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending continue transfer without wifi req, iccid: %s", &buf, 0xCu);
    }

    v7 = *(a1 + 352);
    if (*(v7 + 695) < 0)
    {
      sub_100005F2C(__dst, *(v7 + 672), *(v7 + 680));
      v7 = *(a1 + 352);
    }

    else
    {
      *__dst = *(v7 + 672);
      v19 = *(v7 + 688);
    }

    if (*(v7 + 343) < 0)
    {
      sub_100005F2C(v16, *(v7 + 320), *(v7 + 328));
      v7 = *(a1 + 352);
    }

    else
    {
      *v16 = *(v7 + 320);
      v17 = *(v7 + 336);
    }

    v8 = *(v7 + 584);
    v9 = *(v7 + 592);
    v10 = sub_100649C38(14);
    sub_10000501C(v14, v10);
    buf = 0uLL;
    v26 = 0;
    PB::Writer::Writer(&buf);
    (*(v22 + 24))(&v22, &buf);
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_10018A52C(&__p, *(&buf + 1), buf, buf - *(&buf + 1));
    PB::Writer::~Writer(&buf);
    sub_100253ADC(a1, __dst, v16, v8, v9, v14, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    PB::Base::~Base(&v22);
  }
}

void sub_1002539EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  PB::Base::~Base(&a35);
  _Unwind_Resume(a1);
}

void sub_100253ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t *a7)
{
  if (a1[30])
  {
    goto LABEL_2;
  }

  v12 = a1[9];
  if (!v12)
  {
    goto LABEL_2;
  }

  v15 = std::__shared_weak_count::lock(v12);
  if (!v15)
  {
    goto LABEL_2;
  }

  v16 = v15;
  v17 = a1[8];
  if (!v17)
  {
    sub_100004A34(v15);
LABEL_2:
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(__dst, 0, sizeof(__dst));
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst[0] = *a2;
      *&__dst[1] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst[1] + 8, *a3, *(a3 + 8));
    }

    else
    {
      *(&__dst[1] + 8) = *a3;
      *(&__dst[2] + 1) = *(a3 + 16);
    }

    v38 = 0uLL;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(&v39, *a6, *(a6 + 1));
    }

    else
    {
      v39 = *a6;
      *&v40 = *(a6 + 2);
    }

    *(&v40 + 1) = 0;
    v41 = 0uLL;
    sub_100034C50(&v40 + 8, *a7, a7[1], a7[1] - *a7);
    LOBYTE(v42) = 0;
    cf = 0;
    sub_10092E208(__dst, &cf);
    v25 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v24 = 45;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(v18, *a6, *(a6 + 1));
    }

    else
    {
      *v18 = *a6;
      v19 = *(a6 + 2);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v20, *a3, *(a3 + 8));
    }

    else
    {
      *v20 = *a3;
      v21 = *(a3 + 16);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v23 = *(a2 + 16);
    }

    v36 = 0;
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v34, *a2, *(a2 + 8));
  }

  else
  {
    *v34 = *a2;
    v35 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v32, *a3, *(a3 + 8));
  }

  else
  {
    *v32 = *a3;
    v33 = *(a3 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v30, *a6, *(a6 + 1));
  }

  else
  {
    *v30 = *a6;
    v31 = *(a6 + 2);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_100034C50(&v27, *a7, a7[1], a7[1] - *a7);
  (*(*v17 + 32))(v17, v34, v32, a4, a5, v30, &v27);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  sub_100004A34(v16);
}

void sub_100253F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_100254084()
{
  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  if (*(v0 - 161) < 0)
  {
    operator delete(*(v0 - 184));
  }

  if (*(v0 - 185) < 0)
  {
    operator delete(*(v0 - 208));
  }

  JUMPOUT(0x10025407CLL);
}

void sub_1002540BC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, const void **a5, unsigned __int8 *a6, const void **a7, unsigned __int8 *a8, uint64_t a9, uint64_t *a10)
{
  if (a8[1] == 1)
  {
    sub_100319F10(*a10, *a8);
  }

  if (*(a9 + 4) == 1)
  {
    sub_100319F28(*a10, *a9);
  }

  if ((*(a1 + 160) & 1) == 0)
  {
    sub_10025329C(a1, 1);
  }

  v17 = *a3;
  v18 = *a6;
  sub_10005C7A4(&v39, a5);
  sub_100010024(&v38, a7);
  sub_100254358(a1, a2, v17, v18, &v39, &v38);
  sub_10001021C(&v38);
  sub_100005978(&v39);
  v31[0] = a4;
  v31[1] = *a6;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v32, *a2, *(a2 + 8));
  }

  else
  {
    v32 = *a2;
    v33 = *(a2 + 16);
  }

  sub_1002549A0(a1, a2, &__p);
  sub_10005C7A4(&v36, a5);
  sub_100010024(&v37, a7);
  sub_100254AA0(a1 + 448, v31);
  sub_10001021C(&v37);
  sub_100005978(&v36);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  v19 = *(a1 + 352);
  v20 = *(v19 + 343);
  if (v20 >= 0)
  {
    v21 = *(v19 + 343);
  }

  else
  {
    v21 = *(v19 + 328);
  }

  v22 = *(a2 + 23);
  v23 = v22;
  v24 = *(a2 + 8);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 8);
  }

  if (v21 == v22 && ((v25 = (v19 + 320), v26 = *(v19 + 320), v20 >= 0) ? (v27 = v25) : (v27 = v26), v23 >= 0 ? (v28 = a2) : (v28 = *a2), !memcmp(v27, v28, v21)))
  {
    sub_100254C38(a1);
    sub_100254E74(a1);
  }

  else
  {
    if (v23 < 0)
    {
      sub_100005F2C(v29, *a2, v24);
    }

    else
    {
      *v29 = *a2;
      v30 = *(a2 + 16);
    }

    sub_100255D0C(a1, v29);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_100254300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254358(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void **a5, const void **a6)
{
  v57 = a3;
  if ((*(a1 + 384) & 1) == 0)
  {
    *(a1 + 156) = a3;
    v8 = *(a1 + 72);
    if (v8)
    {
      v13 = std::__shared_weak_count::lock(v8);
      if (v13)
      {
        v14 = *(a1 + 64);
        if (v14)
        {
          *v55 = 0u;
          v56 = 0u;
          memset(&v54, 0, sizeof(v54));
          __p[0] = 0;
          __p[1] = 0;
          v53 = 0;
          memset(&v51, 0, sizeof(v51));
          memset(&v50, 0, sizeof(v50));
          v15 = sub_10025CD10((a1 + 328), a2);
          v17 = v15;
          v43 = v13;
          if (*(a1 + 336) != v15)
          {
            v18 = *(v15 + 647);
            if (v18 < 0)
            {
              v18 = *(v15 + 632);
            }

            if (v18)
            {
              sub_1001696A4(v55, (v15 + 624));
            }

            v58 = *(v17 + 274);
            sub_100922314(&v58, v16, buf);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *buf;
            v53 = *&buf[16];
            std::string::operator=(&v54, (v17 + 344));
            std::string::operator=(&v51, (v17 + 416));
            if (*(v17 + 1024) == 1)
            {
              std::string::operator=(&v50, (v17 + 1000));
            }
          }

          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v40 = sub_10064A0D0(a3);
            if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = &v54;
            }

            else
            {
              v20 = v54.__r_.__value_.__r.__words[0];
            }

            v21 = *a2;
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            if (BYTE8(v56) == 1)
            {
              v38 = v21;
              v39 = v20;
              sub_10000501C(&v49, " -> ");
              if ((BYTE8(v56) & 1) == 0)
              {
                sub_1000D1644();
              }

              if ((SBYTE7(v56) & 0x80u) == 0)
              {
                v22 = v55;
              }

              else
              {
                v22 = v55[0];
              }

              if ((SBYTE7(v56) & 0x80u) == 0)
              {
                v23 = BYTE7(v56);
              }

              else
              {
                v23 = v55[1];
              }

              v24 = std::string::append(&v49, v22, v23);
              v25 = *&v24->__r_.__value_.__l.__data_;
              v59 = v24->__r_.__value_.__r.__words[2];
              v58 = v25;
              v24->__r_.__value_.__l.__size_ = 0;
              v24->__r_.__value_.__r.__words[2] = 0;
              v24->__r_.__value_.__r.__words[0] = 0;
              v26 = &v58;
              if (v59 < 0)
              {
                v26 = v58;
              }

              *buf = 136315906;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = v39;
              *&buf[22] = 2080;
              v61 = v38;
              v62 = 2080;
              v63 = v26;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I update pending plan state %s: [IMEI:%s ICCID:%s]%s", buf, 0x2Au);
              if (SHIBYTE(v59) < 0)
              {
                operator delete(v58);
              }

              if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v49.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *buf = 136315906;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = v20;
              *&buf[22] = 2080;
              v61 = v21;
              v62 = 2080;
              v63 = "";
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I update pending plan state %s: [IMEI:%s ICCID:%s]%s", buf, 0x2Au);
            }
          }

          (*(*v14 + 64))(v14, &v54, __p, a2, a3, v55);
          v41 = v17;
          v27 = *(a1 + 904);
          v28 = *(a1 + 912);
          v42 = a4;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(__dst, *a2, *(a2 + 8));
          }

          else
          {
            *__dst = *a2;
            v48 = *(a2 + 16);
          }

          v29 = HIBYTE(v48);
          if (v27 == v28)
          {
LABEL_57:
            v37 = 0;
          }

          else
          {
            if (v48 >= 0)
            {
              v30 = HIBYTE(v48);
            }

            else
            {
              v30 = __dst[1];
            }

            if (v48 >= 0)
            {
              v31 = __dst;
            }

            else
            {
              v31 = __dst[0];
            }

            v32 = v27 + 432;
            while (1)
            {
              v33 = *(v32 + 23);
              v34 = v33;
              if ((v33 & 0x80u) != 0)
              {
                v33 = *(v32 + 8);
              }

              if (v30 == v33)
              {
                v35 = v34 >= 0 ? v32 : *v32;
                if (!memcmp(v31, v35, v30))
                {
                  break;
                }
              }

              v36 = v32 + 848;
              v32 += 1280;
              if (v36 == v28)
              {
                goto LABEL_57;
              }
            }

            v37 = 1;
          }

          if (v29 < 0)
          {
            operator delete(__dst[0]);
          }

          v13 = v43;
          if (a3 == 11 && *(a1 + 336) != v41)
          {
            buf[0] = 1;
            sub_100261ECC(a1, buf, &v57, v41, v37, *(v41 + 700));
          }

          sub_10005C7A4(&v46, a5);
          sub_100010024(&v45, a6);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v44, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
          }

          else
          {
            v44 = v51;
          }

          sub_10026C910(a1, a2, a3, v42, &v46, &v45, &v44, &v50);
          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          sub_10001021C(&v45);
          sub_100005978(&v46);
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (BYTE8(v56) == 1 && SBYTE7(v56) < 0)
          {
            operator delete(v55[0]);
          }

          goto LABEL_80;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766594();
    }

LABEL_80:
    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}