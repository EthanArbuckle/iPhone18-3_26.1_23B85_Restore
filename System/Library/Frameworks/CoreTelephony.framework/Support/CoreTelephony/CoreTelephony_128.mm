void sub_10116DAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16)
{
  sub_1008F0650(&a10, a11);
  if (a16 == 1)
  {
    sub_100D237B8(&a13, a14);
  }

  _Unwind_Resume(a1);
}

void sub_10116DB20(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

const char *sub_10116E1A8(int a1)
{
  v1 = "ntw.ctr.?";
  if (a1 == 2)
  {
    v1 = "ntw.ctr.2";
  }

  if (a1 == 1)
  {
    return "ntw.ctr.1";
  }

  else
  {
    return v1;
  }
}

void sub_10116E1D4(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10116E2D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting state", v6, 2u);
  }

  v3 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  *(a1 + 120) = 0;
  return sub_10116F210(a1, 0);
}

void sub_10116E388(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = v4;
  if (*(a1 + 88))
  {
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 120);
      if (v7 > 2)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_101F14578[v7];
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Already configured managed hours from source %s", buf, 0xCu);
    }
  }

  else
  {
    *buf = 0u;
    v12 = 0u;
    sub_1011E9954((a1 + 56), a2, buf);
    if (*buf == *&buf[8])
    {
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I No managed hours configuration found in carrier bundle", v10, 2u);
      }
    }

    else
    {
      sub_10116E534(a1, buf, 2u);
    }

    sub_1003EC530(&v12 + 1);
    v10[0] = buf;
    sub_101028494(v10);
  }
}

void sub_10116E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_101022E8C(va);
  _Unwind_Resume(a1);
}

void sub_10116E534(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if ((sub_1011EA444(a1 + 56, a2) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = a2[3];
    *v49 = 138412290;
    *&v49[4] = v15;
    v16 = "#I Current managed hours have expired (%@)";
    v17 = v14;
    v18 = 12;
    goto LABEL_22;
  }

  v6 = a2[1];
  if (*a2 == v6)
  {
    goto LABEL_16;
  }

  v7 = *a2 + 16;
  while ((*(v7 - 16) & 0xFFFFFFFD) != 1)
  {
LABEL_9:
    v13 = v7 + 16;
    v7 += 32;
    if (v13 == v6)
    {
      goto LABEL_16;
    }
  }

  AbsoluteTime = CFDateGetAbsoluteTime(*v7);
  v9 = CFDateGetAbsoluteTime(*(v7 - 8));
  cf[0] = 0;
  getCurrentDate();
  v10 = *(v7 + 8);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  *v49 = 0u;
  *v49 = v10;
  sub_100431ADC(&v49[8], v7);
  LOBYTE(v50[0]) = 1;
  theDate[0] = 0;
  v11 = cf[0];
  *&v42 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  computeDeadlineAfterDate(v49, v11);
  sub_1003EC530(&v42);
  v12 = CFDateGetAbsoluteTime(theDate[0]);
  if (v12 - CFDateGetAbsoluteTime(cf[0]) > AbsoluteTime - v9)
  {
    sub_1003EC530(theDate);
    sub_100176638(v50 + 1);
    sub_1003EC530(&v49[8]);
    sub_1003EC530(cf);
    goto LABEL_9;
  }

  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = cf[0];
    v22 = *(v7 - 8);
    v21 = *v7;
    v23 = asString();
    *buf = 138413058;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    *&buf[24] = v21;
    v47 = 2080;
    v48 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Current time %@, is within window [start=%@, end=%@, day=%s]", buf, 0x2Au);
  }

  sub_1003EC530(theDate);
  sub_100176638(v50 + 1);
  sub_1003EC530(&v49[8]);
  sub_1003EC530(cf);
  sub_10116F210(a1, 2);
LABEL_16:
  if (*a2 == a2[1])
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v49 = 0;
    v16 = "#I No time windows to schedule";
    v17 = v26;
    v18 = 2;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, v49, v18);
    return;
  }

  v42 = 0uLL;
  v43 = 0;
  sub_1011EA610(a2, &v42);
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v25 = "???";
    }

    else
    {
      v25 = off_101F14578[a3];
    }

    *v49 = 136315138;
    *&v49[4] = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Instantiating scheduler from source: %s", v49, 0xCu);
    v24 = *(a1 + 40);
  }

  PeriodicSchedulerConfiguration::dumpState(&v42, v24);
  v27 = *(a1 + 72);
  v28 = *(a1 + 24);
  object = v28;
  if (v28)
  {
    dispatch_retain(v28);
  }

  v39 = v42;
  v40 = v43;
  v43 = 0;
  v42 = 0uLL;
  v29 = *(a1 + 16);
  if (!v29 || (v30 = *(a1 + 8), (v31 = std::__shared_weak_count::lock(v29)) == 0))
  {
    sub_100013CC4();
  }

  v37 = v30;
  v38 = v31;
  (*(*v27 + 16))(v49, v27, &object, &v39, &v37);
  v32 = *v49;
  memset(v49, 0, sizeof(v49));
  v33 = *(a1 + 96);
  *(a1 + 88) = v32;
  if (v33)
  {
    sub_100004A34(v33);
    if (*&v49[8])
    {
      sub_100004A34(*&v49[8]);
    }
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  *buf = &v39;
  sub_100DABB8C(buf);
  if (object)
  {
    dispatch_release(object);
  }

  if (a2[3])
  {
    memset(buf, 0, sizeof(buf));
    v34 = *(a1 + 16);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v35);
        *&buf[24] = 0;
        operator new();
      }
    }

    sub_100013CC4();
  }

  v36 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  (*(**(a1 + 88) + 16))(*(a1 + 88));
  *(a1 + 120) = a3;
  *v49 = &v42;
  sub_100DABB8C(v49);
}

void sub_10116EC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, dispatch_object_t object, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_1003EC530(&a18);
  sub_100176638((v35 + 24));
  sub_1003EC530((v35 + 8));
  sub_1003EC530(&__p);
  _Unwind_Resume(a1);
}

void sub_10116ED2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176))
  {
    v4 = *(a1 + 184);
    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      v16 = *(a1 + 40);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v22) = 0;
      v17 = "#I User data SIM has not settled yet, ignoring carrier bundle change event";
      v18 = v16;
      v19 = 2;
      goto LABEL_29;
    }

    v7 = *(a2 + 8);
    v6 = a2 + 8;
    v5 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v6;
    do
    {
      if (*(v5 + 32) >= v4)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < v4));
    }

    while (v5);
    if (v8 != v6 && *(v8 + 32) <= v4)
    {
      v9 = *(v8 + 40);
    }

    else
    {
LABEL_10:
      v9 = 255;
    }

    v10 = *(a1 + 168);
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = a1 + 168;
    do
    {
      if (*(v10 + 32) >= v4)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < v4));
    }

    while (v10);
    if (v11 != a1 + 168 && *(v11 + 32) <= v4)
    {
      v12 = *(v11 + 40);
    }

    else
    {
LABEL_18:
      v12 = 255;
    }

    if (v9 != v12)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (v9 == 255)
      {
        v20 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle became known, loading managed hours", &v22, 2u);
        }

        goto LABEL_37;
      }

      v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (v12 <= 5)
      {
        if (((1 << v12) & 0x31) != 0)
        {
LABEL_35:
          v21 = *v14;
          if (!os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v22 = 136315138;
          v23 = asString();
          v17 = "#I Ignoring bundle change type: %s";
          v18 = v21;
          v19 = 12;
LABEL_29:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
          return;
        }

        if (((1 << v12) & 6) != 0)
        {
          v15 = *v14;
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136315138;
            v23 = asString();
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Resetting due to bundle change (%s)", &v22, 0xCu);
          }

          sub_10116E2D4(a1);
          goto LABEL_37;
        }
      }

      if (v12 != 255)
      {
LABEL_37:
        sub_10116E388(a1, v4);
        return;
      }

      goto LABEL_35;
    }
  }
}

void sub_10116F000(uint64_t a1, int a2)
{
  v4 = *(a1 + 184);
  if (subscriber::isValidSimSlot())
  {
    v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    if (v4 != a2)
    {
      v6 = *(a1 + 168);
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = a1 + 168;
      do
      {
        if (*(v6 + 32) >= v4)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v4));
      }

      while (v6);
      if (v7 == a1 + 168 || v4 < *(v7 + 32) || *(v7 + 40) == 255)
      {
LABEL_14:
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle is not known yet", &v10, 2u);
        }
      }

      else
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315394;
          v11 = subscriber::asString();
          v12 = 2080;
          v13 = subscriber::asString();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I User data SIM has changed from %s to %s", &v10, 0x16u);
        }

        sub_10116E2D4(a1);
        sub_10116E388(a1, v4);
      }
    }
  }
}

void sub_10116F1AC(uint64_t a1)
{
  if ((rest::carrier_space::operator==() & 1) == 0)
  {
    sub_10116E2D4(a1);

    sub_10116E534(a1, (a1 + 128), 1u);
  }
}

uint64_t sub_10116F210(uint64_t a1, int a2)
{
  LODWORD(v5) = a2;
  HIDWORD(v5) = *(a1 + 184);
  result = rest::operator==();
  if ((result & 1) == 0)
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), HIDWORD(v5));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = rest::asString();
      v8 = 2080;
      v9 = rest::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting interface cost from %s to %s", buf, 0x16u);
    }

    *(a1 + 224) = v5;
    result = *(a1 + 216);
    if (result)
    {
      return (*(*result + 48))(result, a1 + 224);
    }
  }

  return result;
}

void sub_10116F354(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 120);
    if (v3 > 2)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101F14578[v3];
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Data Source: %s", &v9, 0xCu);
  }

  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 228));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = rest::asString();
    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Internet Cost: %s", &v9, 0xCu);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Scheduler Config:", &v9, 2u);
      v7 = *(a1 + 88);
    }

    (*(*v7 + 32))(v7);
  }
}

uint64_t sub_10116F504(uint64_t a1, uint64_t a2, SchedulerSpec *a3)
{
  v3 = *(a3 + 3);
  {
    sub_1007CF3E8();
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "???";
    if (*v6 == 1)
    {
      v8 = "kEnd";
    }

    if (*v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = "kStart";
    }

    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Scheduler timer has fired with event type %s, spec:", &v11, 0xCu);
    v7 = *(a1 + 40);
  }

  SchedulerSpec::dumpState(a3, v7);
  return sub_10116F210(a1, 2 * (*v6 == 0));
}

void sub_10116F634(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10116F644(uint64_t a1)
{
  sub_10116F67C(a1);

  operator delete();
}

uint64_t sub_10116F67C(uint64_t a1)
{
  *a1 = off_101F14058;
  v2 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10116F798(a1 + 192);
  sub_10032D3A4(a1 + 160, *(a1 + 168));
  sub_1003EC530((a1 + 152));
  v9 = (a1 + 128);
  sub_101028494(&v9);
  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  PeriodicSchedulerDelegateInterface::~PeriodicSchedulerDelegateInterface(a1);
  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

uint64_t sub_10116F798(uint64_t a1)
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

void sub_10116F81C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10116F870(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10116F8B0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10116F8DC(ServiceManager::Service *this)
{
  *this = off_101F141A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10116F938(ServiceManager::Service *this)
{
  *this = off_101F141A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10116F9B8@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10116F9FC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10116E1D4(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10116E1D4(v4, 0);
}

void sub_10116FA8C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10116FB6C(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_10116FCA4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_10116FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10116FD68(void *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/props/managed_hours");
  operator new();
}

void sub_1011701DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1011702D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14268;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101170310(void *a1)
{
  v2 = a1[1];
  v7 = *v2;
  v3 = *(v2 + 3);
  v8 = *(v2 + 2);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  v9 = v3;
  *(v2 + 3) = 0;
  rest::carrier_space::read_rest_value();
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  sub_1003EC530(&v9);
  v10 = &v7;
  sub_101028494(&v10);
}

uint64_t sub_1011703DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011704A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F142E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011704DC(void *a1, xpc_object_t *a2)
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

uint64_t sub_1011705B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10117067C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011706B4(void *a1, xpc_object_t *a2)
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

uint64_t sub_1011707AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101170874(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F143E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011708AC(void *a1)
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

uint64_t sub_1011708F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011709B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F14468;
  a2[1] = v2;
  return result;
}

void sub_1011709DC()
{
  v3 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/cc/props/internet_interface_cost");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_101170A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101170AC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101170B10(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  operator delete();
}

void *sub_101170B9C(void *a1)
{
  *a1 = off_101F144F8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101170BE8(void *a1)
{
  *a1 = off_101F144F8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101170CC8(uint64_t result, uint64_t a2)
{
  *a2 = off_101F144F8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101170D08(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101170D18(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101170D58(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_101170E68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101170EB4(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Managed hours expiration timer triggered, stopping scheduler", buf, 2u);
  }

  sub_10116E2D4(v1);
  operator delete();
}

std::bad_cast *sub_101170F74(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  return result;
}

void stewie::ConnectionAssistantGPSDataSource::currentGPSTime(stewie::ConnectionAssistantGPSDataSource *this@<X0>, unint64_t *a2@<X8>)
{
  if (*(this + 40) == 1)
  {
    v4 = (*(**(this + 1) + 16))(*(this + 1));
    v5 = *(this + 4);
    v6 = v4 >= v5;
    v7 = v4 - v5;
    if (v6)
    {
      v8 = v7 + *(this + 2);
    }

    else
    {
      v9 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        v11[0] = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Mach continuous time now is less than GPS data timestamp", v11, 2u);
      }

      v8 = *(this + 2);
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

void stewie::ConnectionAssistantGPSDataSource::handleDumpState(stewie::ConnectionAssistantGPSDataSource *this)
{
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ******************************************", &__p, 2u);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * ConnectionAssistantGPSDataSource state *", &__p, 2u);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ******************************************", &__p, 2u);
    v2 = *this;
  }

  v3 = *(this + 40);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v4)
    {
      v5 = *(this + 2);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] GPS time, ns: %llu", &__p, 0xCu);
      v2 = *this;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 6);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] gpsUTCLeapSecond: %d", &__p, 8u);
      v2 = *this;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      std::to_string(&__p, *(this + 4));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446210;
      v20 = p_p;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Recorded at: %{public}s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (v4)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Time not set", &__p, 2u);
  }

  v8 = *(this + 72);
  v9 = *this;
  v10 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (!v10)
    {
      return;
    }

    v11 = *(this + 6) * 180.0 / 3.14159265;
    v12 = *(this + 7) * 180.0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 134284033;
    v13 = *(this + 8);
    *(__p.__r_.__value_.__r.__words + 4) = v11;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2049;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v12 / 3.14159265;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2049;
    v18 = v13;
    v14 = "#I [d] Location: [%{private}.6f, %{private}.6f, %{private}.6f]";
    v15 = v9;
    v16 = 32;
  }

  else
  {
    if (!v10)
    {
      return;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v14 = "#I [d] Location not set";
    v15 = v9;
    v16 = 2;
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &__p, v16);
}

const char *sub_101171424(unsigned int a1)
{
  if (a1 > 6)
  {
    return "?";
  }

  else
  {
    return off_101F15030[a1];
  }
}

uint64_t sub_101171450(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "rm.op");
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("OperatingModeManager", v2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(a1 + 72) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(a1 + 72) = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v8, &__p);
  ctu::OsLogLogger::OsLogLogger((a1 + 80), v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&__p);
  *a1 = off_101F14780;
  sub_10000501C(&__p, "OperatingModeManager");
  RestServiceBase::RestServiceBase();
  if (v11 < 0)
  {
    operator delete(__p.var0);
  }

  *a1 = off_101F145A0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  v5 = CTStopwatch::CTStopwatch();
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 208) = 0u;
  v6 = capabilities::ct::supportsStewie(v5);
  if (v6 && capabilities::ct::supportsSARAveraging(v6))
  {
    v9 = @"Stewie";
    memset(v8, 0, sizeof(v8));
    sub_10005B328(v8, &v9, &__p, 1uLL);
    sub_1001A92B8(&__p);
  }

  return a1;
}

void sub_101171728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_101647468(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v18 + 18);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(v18 + 16);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(v18 + 12);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_1011717F4(v18);
  _Unwind_Resume(a1);
}

RestServiceBase *sub_1011717F4(RestServiceBase *a1)
{
  RestServiceBase::~RestServiceBase(a1);
  ctu::OsLogLogger::~OsLogLogger((v2 + 80));
  sub_1000C0544(a1 + 6);
  return a1;
}

void sub_10117182C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Running", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/prefs-nb/debug_baseband_operating_mode");
  operator new();
}

void sub_101171C40(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, ...)
{
  va_start(va, a8);
  sub_1000062D4(va);
  if (a8 < 0)
  {
    operator delete(a3);
  }

  _Unwind_Resume(a1);
}

void sub_101171CC0(void *a1, char a2)
{
  a1[21] = 0;
  if ((a2 & 1) == 0)
  {
    v3 = CTStopwatch::stop((a1 + 17));
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    a1[21] = v5;
  }

  CTStopwatch::start((a1 + 17));
  v6 = a1[10];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[21];
    StartTime = CTStopwatch::getStartTime((a1 + 17));
    if (v9)
    {
      v10 = StartTime;
    }

    else
    {
      v10 = 0;
    }

    v11 = 134218240;
    v12 = v7;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Update Operating Mode Assertion Time: assertionHoldTime=%lld ms, currentTime=%lld ms", &v11, 0x16u);
  }
}

void sub_101171DA8(void *a1)
{
  v2 = a1[10];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping", __p, 2u);
  }

  sub_1011749E4(__p);
  ctu::RestModule::unobserveProperty();
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_101174E8C(__p);
  ctu::RestModule::unobserveProperty();
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_101174C38(__p);
  ctu::RestModule::unobserveProperty();
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1011750E0(__p);
  v3 = ctu::RestModule::unobserveProperty();
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (capabilities::ct::supportsStewie(v3))
  {
    sub_101175334(__p);
    ctu::RestModule::unobserveProperty();
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = a1[16];
  a1[15] = 0;
  a1[16] = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_101171ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101171F08(uint64_t a1)
{
  v2 = *(a1 + 220);
  if (!v2)
  {
    if (capabilities::ct::supportsStewie(a1) && (*(a1 + 216) - 1) < 2)
    {
      return 3;
    }

    if (*(a1 + 176))
    {
      if ((*(a1 + 200) - 1) >= 2)
      {
        return 4 * ((*(a1 + 184) - 1) < 2);
      }

      return 2;
    }

    if ((*(a1 + 208) - 1) >= 2)
    {
      if ((*(a1 + 200) - 1) < 2)
      {
        return 2;
      }

      if ((*(a1 + 192) - 1) >= 2)
      {
        return 4 * ((*(a1 + 184) - 1) < 2);
      }
    }

    return 5;
  }

  v3 = *(a1 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] evaluation uses forced debug mode: %s", &v5, 0xCu);
    return *(a1 + 220);
  }

  return v2;
}

uint64_t sub_101172058(_BYTE *a1)
{
  result = (*(*a1 + 48))(a1);
  if (!result)
  {
    if (a1[176] == 1)
    {
      if (capabilities::ct::supportsCampOnlyMode(result))
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 5;
    }
  }

  return result;
}

BOOL sub_1011720C8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 104);
  if (v3 != a2)
  {
    v5 = *(a1 + 80);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = sub_101171424(v3);
      v9 = 2080;
      v10 = sub_101171424(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [... ] Operating mode transitioning from %s to %s", &v7, 0x16u);
    }

    *(a1 + 104) = a2;
  }

  return v3 != a2;
}

uint64_t sub_1011721B0(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = *(result + 80);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v10 = asString();
    v11 = 2080;
    v12 = asString();
    v5 = "#I [ XX ] Operating mode set to: %s (was %s)";
    goto LABEL_7;
  }

  if (!*(result + 108))
  {
    return result;
  }

  v4 = *(result + 80);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = asString();
    v11 = 2080;
    v12 = asString();
    v5 = "#I [    ] Operating mode set to: %s (was %s)";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
  }

LABEL_8:
  v3[27] = a2;
  result = (*(*v3 + 40))(v3);
  if (a2)
  {
    v6 = v3[28];
    v3[28] = a2;
    sub_101171CC0(v3, 0);
    v7 = v3[28] | (v6 << 32);
    v8[0] = off_101F14BB0;
    v8[1] = v3;
    v8[2] = v7;
    v8[3] = v8;
    sub_101172388(v3, v8);
  }

  return result;
}

void sub_101172388(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  sub_10000501C(&v5, "/granted");
  v4 = std::string::insert(&v5, 0, "/cc/assertions/baseband_booted", 0x1EuLL);
  __p = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = a1;
  v9 = a1;
  sub_10001C168(v10, a2);
  v10[7] = 0;
  operator new();
}

void sub_1011724D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_101175FF8(v22 - 56);
  sub_10001C200(v21 + 16);
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

void sub_101172530(uint64_t a1)
{
  v2 = *(a1 + 108);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (*(a1 + 184) == 1)
      {
        v21 = *(a1 + 80);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N [    ] granting camp-only-mode assertion", buf, 2u), *(a1 + 184) == 1))
        {
          sub_10000501C(__p, "/cc/assertions/baseband_camp_only_assertion");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objectf = xpc_int64_create(*(a1 + 180));
          if (!objectf)
          {
            objectf = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objectf);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    else if (v2 == 5)
    {
      if (*(a1 + 208) == 1)
      {
        v6 = *(a1 + 80);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [    ] granting emergency-online assertion", buf, 2u), *(a1 + 208) == 1))
        {
          sub_10000501C(__p, "/cc/assertions/emergency_online");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objecta = xpc_int64_create(*(a1 + 204));
          if (!objecta)
          {
            objecta = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objecta);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (*(a1 + 192) == 1)
      {
        v7 = *(a1 + 80);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [    ] granting baseband-online mode assertion", buf, 2u), *(a1 + 192) == 1))
        {
          sub_10000501C(__p, "/cc/assertions/baseband_online");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objectb = xpc_int64_create(*(a1 + 188));
          if (!objectb)
          {
            objectb = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objectb);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (*(a1 + 200) == 2)
      {
        v8 = *(a1 + 80);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = asString();
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N [    ] airplane-mode was granted but now in mode %s; revoking!", buf, 0xCu);
        }

        sub_101173194((a1 + 196));
      }

      if (*(a1 + 216) == 2)
      {
        v10 = *(a1 + 80);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT) || (v11 = asString(), *buf = 136315138, *&buf[4] = v11, _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N [    ] stewie-mode was granted but now in mode %s; revoking!", buf, 0xCu), *(a1 + 216)))
        {
          sub_10000501C(__p, "/cc/assertions/stewie_mode_assertion");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objectc = xpc_int64_create(*(a1 + 212));
          if (!objectc)
          {
            objectc = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objectc);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (*(a1 + 184) == 2)
      {
        v12 = *(a1 + 80);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = asString();
          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N [    ] camp-only-mode was granted but now in mode %s; revoking!", buf, 0xCu);
        }

        goto LABEL_81;
      }
    }
  }

  else if ((v2 - 1) >= 2)
  {
    if (v2 == 3)
    {
      if ((capabilities::ct::supportsStewie(a1) & 1) == 0)
      {
        __TUAssertTrigger();
      }

      if (*(a1 + 216) == 1)
      {
        v14 = *(a1 + 80);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [    ] granting stewie-mode assertion", buf, 2u), *(a1 + 216) == 1))
        {
          sub_10000501C(__p, "/cc/assertions/stewie_mode_assertion");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objectd = xpc_int64_create(*(a1 + 212));
          if (!objectd)
          {
            objectd = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objectd);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (*(a1 + 208) == 2)
      {
        v15 = *(a1 + 80);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT) || (v16 = asString(), *buf = 136315138, *&buf[4] = v16, _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N [    ] emergency-mode was granted but now in mode %s; revoking!", buf, 0xCu), *(a1 + 208)))
        {
          sub_10000501C(__p, "/cc/assertions/emergency_online");
          *buf = *__p;
          v35 = v33;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          ctu::path_join_impl();
          objecte = xpc_int64_create(*(a1 + 204));
          if (!objecte)
          {
            objecte = xpc_null_create();
          }

          ctu::RestModule::setProperty();
          xpc_release(objecte);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (*(a1 + 200) == 2)
      {
        v17 = *(a1 + 80);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          *buf = 136315138;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N [    ] airplane-mode was granted but now in mode %s; revoking!", buf, 0xCu);
        }

        sub_101173194((a1 + 196));
      }

      if (*(a1 + 184) == 2)
      {
        v19 = *(a1 + 80);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *buf = 136315138;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N [    ] camp-only-mode was granted but now in mode %s; revoking!", buf, 0xCu);
        }

        goto LABEL_81;
      }
    }
  }

  else
  {
    if (*(a1 + 200) == 1)
    {
      v3 = *(a1 + 80);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] granting airplane mode assertion", buf, 2u), *(a1 + 200) == 1))
      {
        sub_10000501C(__p, "/cc/assertions/airplane_mode");
        *buf = *__p;
        v35 = v33;
        __p[1] = 0;
        v33 = 0;
        __p[0] = 0;
        ctu::path_join_impl();
        object = xpc_int64_create(*(a1 + 196));
        if (!object)
        {
          object = xpc_null_create();
        }

        ctu::RestModule::setProperty();
        xpc_release(object);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(a1 + 184) == 2)
    {
      v4 = *(a1 + 80);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asString();
        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N [    ] camp-only-mode was granted but now in mode %s; revoking!", buf, 0xCu);
      }

LABEL_81:
      sub_101173084((a1 + 180));
    }
  }

  if ((*(a1 + 108) - 1) <= 3 && *(a1 + 192) == 2)
  {
    v22 = *(a1 + 80);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT) || (v23 = asString(), *buf = 136315138, *&buf[4] = v23, _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N [    ] baseband-online was granted but now in mode %s; revoking!", buf, 0xCu), *(a1 + 192)))
    {
      sub_10000501C(__p, "/cc/assertions/baseband_online");
      *buf = *__p;
      v35 = v33;
      __p[1] = 0;
      v33 = 0;
      __p[0] = 0;
      ctu::path_join_impl();
      objectg = xpc_int64_create(*(a1 + 188));
      if (!objectg)
      {
        objectg = xpc_null_create();
      }

      ctu::RestModule::setProperty();
      xpc_release(objectg);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_101172F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101173084(unsigned int *a1)
{
  if (a1[1])
  {
    sub_10000501C(v3, "/cc/assertions/baseband_camp_only_assertion");
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

void sub_10117314C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_101173194(unsigned int *a1)
{
  if (a1[1])
  {
    sub_10000501C(v3, "/cc/assertions/airplane_mode");
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

void sub_10117325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1011732A4(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        sub_10117388C(a1);
        break;
      case 5:
        sub_101173904(a1);
        break;
      case 6:
        sub_10117379C(a1);
        break;
    }
  }

  else if (v1 < 2)
  {
    sub_1011732F8(a1);
  }

  else if (v1 == 2)
  {
    sub_101173724(a1);
  }

  else if (v1 == 3)
  {
    sub_101173814(a1);
  }
}

void sub_1011732F8(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  if (v2 == *(a1 + 108))
  {
    v3 = *(a1 + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [----] Operating Mode: %s; no further changes needed", &buf, 0xCu);
    }

    sub_1011720C8(a1, 1u);
    (*(*a1 + 40))(a1);
    return;
  }

  sub_1011721B0(a1, 0);
  if (isBasebandBootedInMode())
  {
    v4 = *(a1 + 120);
    if (!v4)
    {
      v6 = *(a1 + 80);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = asString();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [.   ] Booted baseband assertion required for next mode %s; grabbing now!", &buf, 0xCu);
      }

      sub_10000501C(&buf, "/cc/assertions/baseband_booted");
      ctu::rest::AssertionHandle::create();
      if (v12 < 0)
      {
        operator delete(buf);
      }

      v7 = *(a1 + 128);
      *(a1 + 120) = v10;
      if (v7)
      {
        sub_100004A34(v7);
      }

      *&buf = off_101F14C30;
      *(&buf + 1) = a1;
      p_buf = &buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(&buf);
      goto LABEL_31;
    }

    if (*(v4 + 68) != 2)
    {
LABEL_31:
      v8 = *(a1 + 80);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [..  ] Baseband not booted in correct state for %s; waiting", &buf, 0xCu);
      }

      return;
    }
  }

  else
  {
    v5 = *(a1 + 128);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  if (v2 <= 2)
  {
    if (v2 == 1)
    {

      sub_10117388C(a1);
    }

    else if (v2 == 2)
    {

      sub_101173724(a1);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:

        sub_10117379C(a1);
        break;
      case 4:

        sub_101173904(a1);
        break;
      case 5:

        sub_101173814(a1);
        break;
    }
  }
}

uint64_t sub_101173724(uint64_t a1)
{
  if (sub_1011720C8(a1, 2u))
  {
    (*(**(a1 + 88) + 32))(*(a1 + 88), 0);
  }

  sub_1011721B0(a1, 2);

  return sub_1011732F8(a1);
}

uint64_t sub_10117379C(uint64_t a1)
{
  if (sub_1011720C8(a1, 6u))
  {
    (*(**(a1 + 88) + 32))(*(a1 + 88), 1);
  }

  sub_1011721B0(a1, 3);

  return sub_1011732F8(a1);
}

uint64_t sub_101173814(uint64_t a1)
{
  if (sub_1011720C8(a1, 3u))
  {
    (*(**(a1 + 88) + 32))(*(a1 + 88), 2);
  }

  sub_1011721B0(a1, 5);

  return sub_1011732F8(a1);
}

uint64_t sub_10117388C(uint64_t a1)
{
  if (sub_1011720C8(a1, 4u))
  {
    (*(**(a1 + 88) + 32))(*(a1 + 88), 0);
  }

  sub_1011721B0(a1, 1);

  return sub_1011732F8(a1);
}

uint64_t sub_101173904(uint64_t a1)
{
  if (sub_1011720C8(a1, 5u))
  {
    (*(**(a1 + 88) + 32))(*(a1 + 88), 3);
  }

  sub_1011721B0(a1, 4);

  return sub_1011732F8(a1);
}

void sub_101173980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v9, *a3, *(a3 + 8));
    v8 = *(a3 + 23);
    v11 = v7;
    v12 = a2;
    if (v8 < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
LABEL_5:
      sub_10117409C(v14, a4);
      v14[7] = 0;
      operator new();
    }
  }

  else
  {
    *v9 = *a3;
    v10 = *(a3 + 16);
    v11 = v7;
    v12 = a2;
  }

  *__p = *a3;
  __p[2] = *(a3 + 16);
  goto LABEL_5;
}

void sub_101173B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101173BC8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_101171424(*(a1 + 104));
    *buf = 136315650;
    v24 = v3;
    v25 = 2080;
    *v26 = asString();
    *&v26[8] = 2080;
    *&v26[10] = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I TransitionState=%s; stableMode=%s (last mode=%s)", buf, 0x20u);
    v2 = *(a1 + 80);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      v5 = *(v4 + 68);
      v6 = "pending";
      if (!v5)
      {
        v6 = "REVOKED";
      }

      if (v5 == 2)
      {
        v7 = "held";
      }

      else
      {
        v7 = v6;
      }
    }

    else
    {
      v7 = "<none>";
    }

    *buf = 136315138;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I   -- booted assertion acquired=%s", buf, 0xCu);
    v2 = *(a1 + 80);
  }

  v8 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v9 = ctu::rest::asString();
    v10 = *(a1 + 204);
    v11 = ctu::rest::asString();
    v12 = *(a1 + 188);
    v13 = ctu::rest::asString();
    v14 = *(a1 + 196);
    v15 = ctu::rest::asString();
    v16 = *(a1 + 180);
    *buf = 136316930;
    v24 = v9;
    v25 = 1024;
    *v26 = v10;
    *&v26[4] = 2080;
    *&v26[6] = v11;
    *&v26[14] = 1024;
    *&v26[16] = v12;
    v27 = 2080;
    v28 = v13;
    v29 = 1024;
    v30 = v14;
    v31 = 2080;
    v32 = v15;
    v33 = 1024;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I   -- emergency assertion=%s (%d) online assertion=%s (%d); airplane assertion=%s (%d); camp-only assertion=%s (%d)", buf, 0x42u);
  }

  if (capabilities::ct::supportsStewie(v8))
  {
    v17 = *(a1 + 80);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = ctu::rest::asString();
      v19 = *(a1 + 212);
      *buf = 136315394;
      v24 = v18;
      v25 = 1024;
      *v26 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I   -- stewie mode assertion=%s (%d)", buf, 0x12u);
      v17 = *(a1 + 80);
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 176))
      {
        v20 = "blocked due to regulatory";
      }

      else
      {
        v20 = "unblocked";
      }

      *buf = 136315138;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I   -- [CellularTx]: %s", buf, 0xCu);
    }
  }

  v21 = *(a1 + 88);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v22[0] = off_101F14FC0;
  v22[1] = a1;
  v22[3] = v22;
  sub_101172388(a1, v22);
}

RestServiceBase *sub_101173F48(RestServiceBase *this)
{
  *this = off_101F145A0;
  v2 = *(this + 18);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 80));
  sub_1000C0544(this + 6);
  return this;
}

void sub_101173FC4(RestServiceBase *this)
{
  *this = off_101F145A0;
  v2 = *(this + 18);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 80));
  sub_1000C0544(this + 6);

  operator delete();
}

uint64_t sub_101174060(uint64_t a1)
{
  sub_101175FF8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_10117409C(uint64_t a1, uint64_t a2)
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

uint64_t sub_101174134(uint64_t a1)
{
  *a1 = off_101F14700;
  sub_101175FF8(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_101174188(uint64_t a1)
{
  *a1 = off_101F14700;
  sub_101175FF8(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1011742C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14700;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v4;
  }

  return sub_10117409C(a2 + 48, a1 + 48);
}

void sub_10117433C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_101174360(void *a1)
{
  sub_1011746E0(a1 + 8);

  operator delete(a1);
}

void sub_10117439C(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[1];
  if (xpc_get_type(v3) == &_xpc_type_null)
  {
    v7 = *(v4 + 80);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[3];
      v9 = a1 + 3;
      v8 = v10;
      if (*(v9 + 23) >= 0)
      {
        v8 = v9;
      }

      *object = 136315138;
      *&object[4] = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not get %s", object, 0xCu);
    }
  }

  else
  {
    v5 = xpc_null_create();
    if (v3 && xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v6 = v3;
    }

    else
    {
      v6 = xpc_null_create();
    }

    if (xpc_get_type(v6) != &_xpc_type_array)
    {
      if (v5)
      {
        xpc_retain(v5);
        v11 = v5;
      }

      else
      {
        v11 = xpc_null_create();
      }

      xpc_release(v6);
      v6 = v11;
    }

    xpc_release(v5);
    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      *object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        *object = xpc_null_create();
      }

      v17 = a1[9];
      if (!v17)
      {
        sub_100022DB4();
      }

      (*(*v17 + 48))(v17, object);
      xpc_release(*object);
      *object = 0;
    }

    else
    {
      v12 = *(v4 + 80);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = a1[3];
        v14 = a1 + 3;
        v13 = v15;
        if (*(v14 + 23) >= 0)
        {
          v13 = v14;
        }

        v16 = *(v14 - 1);
        *object = 136315394;
        *&object[4] = v13;
        v19 = 2080;
        v20 = v16;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get array of %s %s assertion holders", object, 0x16u);
      }
    }

    xpc_release(v6);
  }

  xpc_release(v3);
}

void sub_1011745F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101174694(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011746E0(uint64_t a1)
{
  sub_101175FF8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

xpc_object_t *sub_101174730(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

RestServiceBase *sub_101174764(RestServiceBase *a1)
{
  RestServiceBase::~RestServiceBase(a1);
  ctu::OsLogLogger::~OsLogLogger((v2 + 80));
  sub_1000C0544(a1 + 6);
  return a1;
}

void sub_10117479C(RestServiceBase *a1)
{
  RestServiceBase::~RestServiceBase(a1);
  ctu::OsLogLogger::~OsLogLogger((v2 + 80));
  sub_1000C0544(a1 + 6);

  operator delete();
}

__n128 sub_101174870(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F147B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011748A8(void *a1, xpc_object_t *a2)
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

uint64_t sub_101174998(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011749E4(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/emergency_online");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101174A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101174AF4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101174B24(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 204);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Emergency online assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_101174BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101174C38(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/baseband_camp_only_assertion");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101174CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101174D48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F148B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101174D78(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 180);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband camp only assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_101174E40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101174E8C(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/baseband_online");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101174EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101174F9C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101174FCC(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 188);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband online assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_101175094(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011750E0(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/airplane_mode");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101175150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1011751F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F149B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101175220(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 196);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Airplane mode assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_1011752E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101175334(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/stewie_mode_assertion");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1011753A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101175444(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14A30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101175474(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 212);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I stewie mode assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_10117553C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011755F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F14AB0;
  a2[1] = v2;
  return result;
}

void sub_101175624(uint64_t a1, xpc *this, BOOL a3)
{
  v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = *(a1 + 8);
  if (*(v5 + 176) != v4)
  {
    v6 = v4;
    *(v5 + 176) = v4;
    v7 = *(v5 + 80);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "unblocked";
      if (v6)
      {
        v8 = "blocked due to regulatory";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [CellularTx]: %s", &v9, 0xCu);
    }

    sub_1011732A4(v5);
  }
}

uint64_t sub_10117570C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011757D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14B30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10117580C(void *a1)
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

uint64_t sub_101175854(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101175914(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101175944(uint64_t a1, uint64_t a2)
{
  *v14 = *a2;
  v15 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = v3[10];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    v6 = v14;
    if (v15 < 0)
    {
      v6 = v14[0];
    }

    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending %s notification; Assertion holders: %s", buf, 0x16u);
  }

  v24 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v24 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v24 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_13;
  }

  v9 = xpc_null_create();
LABEL_12:
  v24 = v9;
LABEL_13:
  xpc_release(v8);
  if (v15 >= 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = v14[0];
  }

  v22 = xpc_string_create(v10);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v21 = *&buf[16];
  v11 = *buf;
  if ((buf[23] & 0x80u) == 0)
  {
    v11 = __p;
  }

  v16[0] = &v24;
  v16[1] = v11;
  sub_10000F688(v16, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v22);
  v22 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v21 = *&buf[16];
  if ((buf[23] & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  object = xpc_string_create(v12);
  if (!object)
  {
    object = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v16 = *buf;
  v17 = *&buf[16];
  v13 = *buf;
  if ((buf[23] & 0x80u) == 0)
  {
    v13 = v16;
  }

  v18[0] = &v24;
  v18[1] = v13;
  sub_10000F688(v18, &object, buf);
  xpc_release(*buf);
  *buf = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v3 + 56))(v3, &v24);
  __p[0] = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v16[0] = xpc_null_create();
  sub_10002A37C(140, __p, v16);
  xpc_release(v16[0]);
  xpc_release(__p[0]);
  xpc_release(v24);
  sub_1011A8B50(v3, 255, *(a1 + 20), *(a1 + 16), v14);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_101175CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101175DF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101175EB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F14C30;
  a2[1] = v2;
  return result;
}

void sub_101175EE0(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 80);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = "is";
    }

    else
    {
      v5 = "is NOT";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Booted baseband assertion %s granted", &v6, 0xCu);
  }

  sub_1011732A4(v3);
}

uint64_t sub_101175FAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101175FF8(uint64_t a1)
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

void *sub_101176078(void *a1)
{
  *a1 = off_101F14CB0;
  sub_10001C200((a1 + 3));
  return a1;
}

void sub_1011760BC(void *a1)
{
  *a1 = off_101F14CB0;
  sub_10001C200((a1 + 3));

  operator delete();
}

uint64_t sub_1011761A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F14CB0;
  *(a2 + 8) = *(a1 + 8);
  return sub_10001C168(a2 + 24, a1 + 24);
}

void sub_1011761E0(void *a1)
{
  sub_10001C200(a1 + 24);

  operator delete(a1);
}

void sub_10117621C(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *(a1 + 8);
  sub_10000501C(&v6, "/granted");
  v5 = std::string::insert(&v6, 0, "/cc/assertions/airplane_mode", 0x1CuLL);
  __p = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  object[0] = v4;
  object[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object[1] = xpc_null_create();
  }

  v9 = *(a1 + 16);
  sub_10001C168(v10, a1 + 24);
  v10[7] = 0;
  operator new();
}

void sub_1011763C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10117645C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011764A8(uint64_t a1)
{
  sub_10001C200(a1 + 24);
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1011764E4(uint64_t a1)
{
  *a1 = off_101F14D30;
  sub_10001C200(a1 + 32);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_101176538(uint64_t a1)
{
  *a1 = off_101F14D30;
  sub_10001C200(a1 + 32);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

void sub_101176644(_Unwind_Exception *a1)
{
  sub_101174730(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101176664(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101F14D30;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[2] = xpc_null_create();
  }

  a2[3] = a1[3];
  return sub_10001C168((a2 + 4), (a1 + 4));
}

void sub_1011766F8(uint64_t a1)
{
  sub_10001C200(a1 + 32);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

void sub_101176730(xpc_object_t *a1)
{
  sub_10001C200((a1 + 4));
  xpc_release(a1[2]);

  operator delete(a1);
}

void sub_101176778(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[1];
  sub_10000501C(&v7, "/granted");
  v5 = std::string::insert(&v7, 0, "/cc/assertions/baseband_camp_only_assertion", 0x2BuLL);
  __p = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v6 = a1[2];
  v9[0] = v4;
  v9[1] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v9[1] = xpc_null_create();
  }

  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = a1[3];
  sub_10001C168(v12, (a1 + 4));
  v12[8] = 0;
  operator new();
}

void sub_101176954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, xpc_object_t a24, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101176A0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101176A58(uint64_t a1)
{
  sub_10001C200(a1 + 32);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_101176AA4(uint64_t a1)
{
  *a1 = off_101F14DA0;
  sub_10001C200(a1 + 40);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_101176B08(uint64_t a1)
{
  *a1 = off_101F14DA0;
  sub_10001C200(a1 + 40);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

void sub_101176C30(uint64_t a1)
{
  sub_10001C200(a1 + 40);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

void sub_101176C78(xpc_object_t *a1)
{
  sub_10001C200((a1 + 5));
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);

  operator delete(a1);
}

void sub_101176CD0(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[1];
  sub_10000501C(&v8, "/granted");
  v5 = std::string::insert(&v8, 0, "/cc/assertions/baseband_online", 0x1EuLL);
  __p = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v6 = a1[2];
  v10[0] = v4;
  v10[1] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v10[1] = xpc_null_create();
  }

  v7 = a1[3];
  v11 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v11 = xpc_null_create();
  }

  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v13 = a1[4];
  sub_10001C168(v14, (a1 + 5));
  v14[7] = 0;
  operator new();
}

void sub_101176EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, xpc_object_t a24, xpc_object_t a25, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101176FB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101177004(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  v5 = a2[2];
  a1[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a1[2] = xpc_null_create();
  }

  a1[3] = a2[3];
  sub_10001C168((a1 + 4), (a2 + 4));
  return a1;
}

void sub_10117708C(_Unwind_Exception *a1)
{
  sub_101174730(v2);
  sub_101174730(v1);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_1011770B0(xpc_object_t *a1)
{
  sub_10001C200((a1 + 5));
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;
  return a1;
}

uint64_t sub_10117710C(uint64_t a1)
{
  *a1 = off_101F14E10;
  sub_10001C200(a1 + 48);
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_101177180(uint64_t a1)
{
  *a1 = off_101F14E10;
  sub_10001C200(a1 + 48);
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

void sub_1011772B8(xpc_object_t *a1)
{
  sub_10001C200((a1 + 6));
  xpc_release(a1[4]);
  a1[4] = 0;
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);
  a1[2] = 0;
}

void sub_101177310(xpc_object_t *a1)
{
  sub_10001C200((a1 + 6));
  xpc_release(a1[4]);
  a1[4] = 0;
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);

  operator delete(a1);
}

void sub_101177378(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[1];
  sub_10000501C(&v9, "/granted");
  v5 = std::string::insert(&v9, 0, "/cc/assertions/stewie_mode_assertion", 0x24uLL);
  __p = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v6 = a1[2];
  v11 = v4;
  v12 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v7 = a1[3];
  v13 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v8 = a1[4];
  v14 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v15 = a1[5];
  v16 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v16 = xpc_null_create();
  }

  sub_10001C168(v17, (a1 + 6));
  v17[8] = 0;
  operator new();
}

void sub_101177588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, xpc_object_t a24, xpc_object_t a25, xpc_object_t a26, uint64_t a27, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101177668(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F14F70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011776B4(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  v5 = a2[2];
  a1[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a1[2] = xpc_null_create();
  }

  v6 = a2[3];
  a1[3] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    a1[3] = xpc_null_create();
  }

  a1[4] = a2[4];
  sub_10001C168((a1 + 5), (a2 + 5));
  return a1;
}

void sub_101177764(_Unwind_Exception *a1)
{
  sub_101174730(v3);
  sub_101174730(v2);
  sub_101174730(v1);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_101177794(xpc_object_t *a1)
{
  sub_10001C200((a1 + 6));
  xpc_release(a1[5]);
  a1[5] = 0;
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;
  return a1;
}

uint64_t sub_101177800(uint64_t a1)
{
  *a1 = off_101F14E80;
  sub_101177794((a1 + 8));
  return a1;
}

void sub_101177844(uint64_t a1)
{
  *a1 = off_101F14E80;
  sub_101177794((a1 + 8));

  operator delete();
}

void sub_101177954(xpc_object_t *a1)
{
  sub_101177794(a1 + 1);

  operator delete(a1);
}

void sub_101177990(void *a1, void **a2)
{
  v4 = *a2;
  v5 = xpc_null_create();
  *a2 = v5;
  v6 = a1[1];
  capabilities::ct::supportsStewie(v5);
  sub_10000501C(&v12, "/granted");
  v7 = std::string::insert(&v12, 0, "/cc/assertions/emergency_online", 0x1FuLL);
  __p = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v8 = a1[2];
  v14 = v6;
  v15 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v9 = a1[3];
  v16 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v16 = xpc_null_create();
  }

  v10 = a1[4];
  v17 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v17 = xpc_null_create();
  }

  v11 = a1[6];
  v18 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v18 = xpc_null_create();
  }

  v19 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v19 = xpc_null_create();
  }

  sub_10001C168(v20, (a1 + 7));
  v20[8] = 0;
  operator new();
}

void sub_101177BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, xpc_object_t a24, xpc_object_t a25, xpc_object_t a26, xpc_object_t a27, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101177CC4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F14F60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101177D10(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  v5 = a2[2];
  a1[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a1[2] = xpc_null_create();
  }

  v6 = a2[3];
  a1[3] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    a1[3] = xpc_null_create();
  }

  a1[4] = a2[4];
  v7 = a2[5];
  a1[5] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    a1[5] = xpc_null_create();
  }

  sub_10001C168((a1 + 6), (a2 + 6));
  return a1;
}

void sub_101177DE0(_Unwind_Exception *a1)
{
  sub_101174730(v4);
  sub_101174730(v3);
  sub_101174730(v2);
  sub_101174730(v1);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_101177E1C(xpc_object_t *a1)
{
  sub_10001C200((a1 + 6));
  xpc_release(a1[5]);
  a1[5] = 0;
  xpc_release(a1[4]);
  a1[4] = 0;
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;
  return a1;
}

uint64_t sub_101177E98(uint64_t a1)
{
  *a1 = off_101F14EF0;
  sub_101177E1C((a1 + 8));
  return a1;
}

void sub_101177EDC(uint64_t a1)
{
  *a1 = off_101F14EF0;
  sub_101177E1C((a1 + 8));

  operator delete();
}

void sub_101177FEC(xpc_object_t *a1)
{
  sub_101177E1C(a1 + 1);

  operator delete(a1);
}

void sub_101178028(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v18 = *a2;
  *a2 = xpc_null_create();
  memset(&v20, 0, sizeof(v20));
  sub_1011784B0(&__p, "Booted", (a1 + 16));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v20, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1011784B0(&__p, "Airplane", (a1 + 24));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v20, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1011784B0(&__p, "CampOnly", (a1 + 32));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v20, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (capabilities::ct::supportsStewie(v10))
  {
    sub_1011784B0(&__p, "Stewie", (a1 + 48));
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(&v20, v11, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_1011784B0(&__p, "Online", (a1 + 40));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v20, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1011784B0(&__p, "Emergency", &v18);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v20, v15, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v20;
  }

  v17 = *(a1 + 80);
  if (!v17)
  {
    sub_100022DB4();
  }

  (*(*v17 + 48))(v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  xpc_release(v3);
}

void sub_1011782B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_10117832C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F14F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101178378(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  v5 = a2[2];
  a1[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a1[2] = xpc_null_create();
  }

  v6 = a2[3];
  a1[3] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    a1[3] = xpc_null_create();
  }

  v7 = a2[4];
  a1[4] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    a1[4] = xpc_null_create();
  }

  v8 = a2[5];
  a1[5] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    a1[5] = xpc_null_create();
  }

  sub_10001C168((a1 + 6), (a2 + 6));
  return a1;
}

void sub_101178468(_Unwind_Exception *a1)
{
  sub_101174730(v5);
  sub_101174730(v4);
  sub_101174730(v3);
  sub_101174730(v2);
  sub_101174730(v1);
  _Unwind_Resume(a1);
}

void sub_1011784B0(std::string *a1, char *a2, xpc_object_t *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (xpc_get_type(*a3) == &_xpc_type_array && xpc_array_get_count(*a3))
  {
    memset(&v28, 0, sizeof(v28));
    __s.__r_.__value_.__r.__words[0] = *a3;
    if (__s.__r_.__value_.__r.__words[0])
    {
      xpc_retain(__s.__r_.__value_.__l.__data_);
    }

    else
    {
      __s.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    sub_100008EA4(&__p.__r_.__value_.__l.__data_, &__s.__r_.__value_.__l.__data_, 0);
    xpc_release(__s.__r_.__value_.__l.__data_);
    __s.__r_.__value_.__r.__words[0] = *a3;
    if (__s.__r_.__value_.__r.__words[0])
    {
      xpc_retain(__s.__r_.__value_.__l.__data_);
    }

    else
    {
      __s.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    if (xpc_get_type(*a3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(*a3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(&object.__r_.__value_.__l.__data_, &__s.__r_.__value_.__l.__data_, count);
    xpc_release(__s.__r_.__value_.__l.__data_);
    memset(&v28, 0, sizeof(v28));
    if (__p.__r_.__value_.__l.__size_ != object.__r_.__value_.__l.__size_ || (v12 = object.__r_.__value_.__r.__words[0], __p.__r_.__value_.__r.__words[0] != object.__r_.__value_.__r.__words[0]))
    {
      v27.__r_.__value_.__r.__words[0] = &__p;
      v27.__r_.__value_.__l.__size_ = __p.__r_.__value_.__l.__size_;
      sub_10117897C(&__s, &v27);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v28 = __s;
      while (1)
      {
        if (++__p.__r_.__value_.__l.__size_ == object.__r_.__value_.__l.__size_)
        {
          v12 = object.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] == object.__r_.__value_.__r.__words[0])
          {
            break;
          }
        }

        *(&__s.__r_.__value_.__s + 23) = 2;
        strcpy(&__s, ", ");
        std::string::append(&v28, &__s, 2uLL);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        v27.__r_.__value_.__r.__words[0] = &__p;
        v27.__r_.__value_.__l.__size_ = __p.__r_.__value_.__l.__size_;
        sub_10117897C(&__s, &v27);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&v28, p_s, size);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }
    }

    xpc_release(v12);
    object.__r_.__value_.__r.__words[0] = 0;
    xpc_release(__p.__r_.__value_.__l.__data_);
    sub_10000501C(&object, a2);
    v15 = std::string::append(&object, " [", 2uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v28;
    }

    else
    {
      v17 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v28.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&__p, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v27, "] ", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__s;
    }

    else
    {
      v23 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v23, v24);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = object.__r_.__value_.__r.__words[0];
      goto LABEL_57;
    }
  }

  else
  {
    sub_10000501C(&v28, a2);
    v6 = std::string::append(&v28, " [None] ", 8uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    __s.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&__s.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__s;
    }

    else
    {
      v8 = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = __s.__r_.__value_.__r.__words[0];
LABEL_57:
      operator delete(v10);
    }
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_10117884C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a16);
  if (*(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  _Unwind_Resume(a1);
}

void sub_10117897C(uint64_t a1, uint64_t a2)
{
  sub_100008EF0(a2, &object);
  __p = 0;
  v4 = 0;
  v5 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
}

void sub_1011789E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_101178A7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F14FC0;
  a2[1] = v2;
  return result;
}

void sub_101178AA8(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(*(a1 + 8) + 80);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asString();
    v4 = __p;
    if (v6 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315394;
    v8 = v3;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Operating mode: %s; Assertion holders: %s", buf, 0x16u);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101178B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101178BB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101178BFC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void *sub_101178C84(void *a1, void *a2)
{
  v4 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "call.metrics");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(v4, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F150A8;
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101178D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  CallMetricsUtilityInterface::~CallMetricsUtilityInterface(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_101178D8C(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  result = *a3;
  if (*a3)
  {
    result = sub_1005F52CC(result);
    if (result)
    {
      v6[0] = 0;
      v6[1] = 524538;
      if (sub_10079D818())
      {
        operator new();
      }

      v5 = *(a1 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Not submitting Thumper Handoff metric since it's not collectable", buf, 2u);
      }

      return sub_101179A40(v6);
    }
  }

  return result;
}

wis::MetricContainer **sub_101179074(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x800C6u);
  if (v5)
  {
    v3 = 0;
    v4 = 0;
    sub_10001C610(&v3);
    if (v3)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  return sub_10001C0A0(&v5);
}

void sub_1011791C8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0((v1 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101179248(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Submit AWD Metric redialCallOverCS", v12, 2u);
  }

  v5 = *(a1 + 48);
  if (sub_1000BE6C0(**(a1 + 40)) == 2)
  {
    v6 = 1000;
  }

  else
  {
    v6 = v5;
  }

  a2[21] |= 2u;
  a2[4] = v6;
  v7 = sub_1000BF6A8(**(a1 + 40));
  a2[21] |= 0x1000u;
  a2[16] = v7;
  v8 = sub_1005F56F8(**(a1 + 40));
  a2[21] |= 0x20u;
  a2[8] = v8;
  result = sub_1005F5700(**(a1 + 40));
  v10 = a2[21];
  a2[7] = result;
  v11 = *(a1 + 52);
  a2[21] = v10 | 0x810;
  a2[15] = v11;
  return result;
}

void sub_101179348(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    if (*(sub_1005F5708(*a2) + 48))
    {
      *buf = 0;
      v7 = 524610;
      if (sub_10079D818())
      {
        operator new();
      }

      v4 = *(a1 + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CallMetricRedial: Not submitting redial delay metric since it's not collectable", v5, 2u);
      }

      sub_101179BE4(buf);
    }

    else
    {
      v3 = *(a1 + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "CallMetricRedial: No redial delay information found. Do not submit.", buf, 2u);
      }
    }
  }
}

uint64_t *sub_101179618(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting unciphered connection AWD metric", buf, 2u);
  }

  *buf = 0;
  v7 = 524544;
  if (sub_10079D818())
  {
    operator new();
  }

  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Not submitting unciphered radio connection metric since it's not collectable", v5, 2u);
  }

  return sub_101179D88(buf);
}

void sub_10117977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_101179D88(va);
  _Unwind_Resume(a1);
}

void sub_1011797E8(void *a1)
{
  *a1 = off_101F150A8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CallMetricsUtilityInterface::~CallMetricsUtilityInterface(a1);
}

void sub_101179858(void *a1)
{
  *a1 = off_101F150A8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  CallMetricsUtilityInterface::~CallMetricsUtilityInterface(a1);

  operator delete();
}

void sub_10117995C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101179998(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011799D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101179A00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101179A40(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 56))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 56) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101179B94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_101179BE4(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 72))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 72) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101179D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_101179D88(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 28))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 28) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101179EDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

void sub_101179F2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  LazuliDataCache::create();
}

void sub_101179FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_101179FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = 0;
  a5[1] = 0;
  sub_100F66448();
}

void sub_10117A058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_10117A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_101422A28();
}

void sub_10117A0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a4 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1011E6D58();
}

void sub_10117A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10117A2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
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

void sub_10117A334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    operator new();
  }

  *a4 = 0;
  v6 = *(a5 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1009A9D8C();
}

void sub_10117A440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117A478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1015ADD00();
}

void sub_10117A4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001151C4();
}

void sub_10117A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10117A5F0@<X0>(dispatch_object_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v18 = *a1;
    if (v18)
    {
      dispatch_retain(v18);
    }

    v11 = a2[1];
    v16 = *a2;
    v17 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__dst, *a3, *(a3 + 8));
    }

    else
    {
      *__dst = *a3;
      v15 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v13 = *(a4 + 16);
    }

    sub_10036582C();
  }

  *a5 = 0;
  a5[1] = 0;
  return result;
}

void sub_10117A720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    dispatch_release(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10117A774@<X0>(void *a1@<X8>)
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    sub_100B09888();
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_10117A7F8(LazuliComponentsFactoryInterface *a1)
{
  LazuliComponentsFactoryInterface::~LazuliComponentsFactoryInterface(a1);

  operator delete();
}

void sub_10117A850(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F15280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10117A8D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10117A908(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[13];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[11];
    if (v3)
    {
      sub_100004A34(v3);
    }

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

    v6 = v1[5];
    if (v6)
    {
      sub_100004A34(v6);
    }

    v7 = v1[3];
    if (v7)
    {
      sub_100004A34(v7);
    }

    v8 = v1[1];
    if (v8)
    {
      sub_100004A34(v8);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10117A9B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10117AA84(uint64_t a1, void *a2, int a3)
{
  v6 = (a1 + 8);
  v7 = "reg.mdl.c2k";
  if (a3 == 2)
  {
    v7 = "reg.mdl.c2k.2";
  }

  if (a3 == 1)
  {
    v8 = "reg.mdl.c2k.1";
  }

  else
  {
    v8 = v7;
  }

  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, v8);
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger(v6, v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101F15330;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 40) = 16776960;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v9 = a2[1];
  *(a1 + 112) = *a2;
  *(a1 + 120) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = a3;
  return a1;
}

void sub_10117ABA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  C2KRegistrationModelInterface::~C2KRegistrationModelInterface(v2);
  _Unwind_Resume(a1);
}

void sub_10117ABDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 112));
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
  v26 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v26);
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
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
LABEL_13:
  v15 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = Registry::getServiceMap(*(a1 + 112));
  v17 = v16;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v16);
  v26 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v26);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      goto LABEL_23;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
LABEL_23:
  v25 = *(a1 + 88);
  *(a1 + 80) = v24;
  *(a1 + 88) = v23;
  if (v25)
  {
    sub_100004A34(v25);
  }
}

uint64_t sub_10117AD80(uint64_t a1)
{
  cf = 0;
  (*(**(a1 + 64) + 80))(&cf);
  v2 = cf;
  v3 = 2;
  if (cf)
  {
    buf[0] = 2;
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v2, v5);
      v3 = buf[0];
    }

    else
    {
      v3 = 2;
    }
  }

  *(a1 + 42) = v3;
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fCarrierSpecifiedDefaultRI = %d", buf, 8u);
  }

  sub_10000A1EC(&cf);
  v7 = *(*a1 + 104);

  return v7(a1);
}

void sub_10117AF08(uint64_t a1)
{
  *a1 = off_101F15330;
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10001021C((a1 + 48));
  sub_100034450(*(a1 + 24));
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  C2KRegistrationModelInterface::~C2KRegistrationModelInterface(a1);
}

void sub_10117AFA4(uint64_t a1)
{
  sub_10117AF08(a1);

  operator delete();
}

void sub_10117AFDC(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = *(a1 + 16);
  if (v3 != (a1 + 24))
  {
    do
    {
      v4 = *(a1 + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asString();
        v6 = *(v3 + 32);
        *buf = 136315394;
        v16 = v5;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RAT %s: Roaming Indicator %u", buf, 0x12u);
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
    }

    while (v8 != v2);
  }

  v10 = *(a1 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 41);
    *buf = 67109120;
    LODWORD(v16) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Default Roaming Indicator %u", buf, 8u);
    v10 = *(a1 + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 42);
    *buf = 67109120;
    LODWORD(v16) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier Default Roaming Indicator %u", buf, 8u);
    v10 = *(a1 + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = CSIBOOLAsString(*(a1 + 56));
    *buf = 136315138;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Is in 1x home system: %s", buf, 0xCu);
    v10 = *(a1 + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CSIBOOLAsString(*(a1 + 40));
    *buf = 136315138;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Is data supported: %s", buf, 0xCu);
  }
}

uint64_t *sub_10117B238(capabilities::ct *a1, int a2, char a3)
{
  v5 = *(a1 + 3);
  v6 = a1 + 16;
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 7);
      if (v8 <= a2)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= a2)
    {
      break;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  *(v7 + 32) = a3;
  result = capabilities::ct::supportsVoiceCall(a1);
  if (result)
  {
    if (a2 != 3)
    {
      return result;
    }
  }

  else if (a2 != 4)
  {
    return result;
  }

  v10 = 5;
  v11 = &v10;
  result = sub_100D4E740(v6, 5);
  *(result + 32) = a3;
  return result;
}

uint64_t sub_10117B33C(void *a1, int a2)
{
  v2 = a1[3];
  if (!v2)
  {
    return (*(*a1 + 56))();
  }

  v3 = a1 + 3;
  do
  {
    if (*(v2 + 28) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < a2));
  }

  while (v2);
  if (v3 != a1 + 3 && *(v3 + 7) <= a2)
  {
    return *(v3 + 32);
  }

  else
  {
    return (*(*a1 + 56))();
  }
}

void sub_10117B3A4(uint64_t a1, int a2)
{
  if (*(a1 + 41) != a2)
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting default roaming indicator to %u", v5, 8u);
    }

    *(a1 + 41) = a2;
  }
}

uint64_t sub_10117B45C(uint64_t a1)
{
  result = *(a1 + 41);
  if (result == 255)
  {
    return *(a1 + 42);
  }

  return result;
}

const __CFDictionary *sub_10117B478(uint64_t a1)
{
  v5 = 0;
  result = *(a1 + 48);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"version");
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v5, v2, v4);
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10117B4E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ERI: Clearing and re-initializing data", buf, 2u);
      v2 = *(a1 + 48);
    }

    *(a1 + 48) = 0;
    *buf = v2;
    sub_10001021C(buf);
  }

  url = 0;
  (*(**(a1 + 80) + 120))(&url);
  if (url)
  {
    v4 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, url, @"ERI.plist", 0);
    if (v4)
    {
      v44 = v4;
      v5 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v4);
      v6 = v5;
      if (!v5)
      {
        v7 = 0;
LABEL_52:
        sub_1002030AC(&v44);
        goto LABEL_53;
      }

      v43 = v5;
      if (CFReadStreamOpen(v5))
      {
        v7 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v6, 0, 0, 0, 0);
        CFReadStreamClose(v6);
        if (!v7)
        {
LABEL_51:
          sub_1005A8614(&v43);
          goto LABEL_52;
        }

        v8 = CFGetTypeID(v7);
        TypeID = CFDictionaryGetTypeID();
        v10 = *(a1 + 48);
        if (v8 == TypeID)
        {
          v11 = v7;
        }

        else
        {
          v11 = 0;
        }

        *(a1 + 48) = v11;
        *buf = v10;
        sub_10001021C(buf);
        v12 = *(a1 + 48);
        v13 = *(a1 + 8);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14 && (*buf = 0, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I ERI: Data initialized successfully", buf, 2u), (v12 = *(a1 + 48)) == 0))
          {
            v42 = *(a1 + 8);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I ERI: No current data", buf, 2u);
            }
          }

          else
          {
            Value = CFDictionaryGetValue(v12, @"name");
            v16 = Value;
            if (Value && (v17 = CFGetTypeID(Value), v17 == CFStringGetTypeID()))
            {
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              *buf = 0u;
              CFStringGetCString(v16, buf, 128, 0x8000100u);
              v18 = *(a1 + 8);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                v47[0] = buf;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I ERI: Name = %s", valuePtr, 0xCu);
              }
            }

            else
            {
              v19 = *(a1 + 8);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not get name from ERI data", buf, 2u);
              }
            }

            v20 = CFDictionaryGetValue(*(a1 + 48), @"version");
            v21 = v20;
            if (v20 && (v22 = CFGetTypeID(v20), v22 == CFNumberGetTypeID()))
            {
              *valuePtr = 0;
              CFNumberGetValue(v21, kCFNumberIntType, valuePtr);
              v23 = *(a1 + 8);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = *valuePtr;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I ERI: Version = %d", buf, 8u);
              }
            }

            else
            {
              v24 = *(a1 + 8);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not get version from ERI data", buf, 2u);
              }
            }

            v25 = CFDictionaryGetValue(*(a1 + 48), @"roaming_indicator_table");
            v26 = v25;
            if (v25 && (v27 = CFGetTypeID(v25), v27 == CFDictionaryGetTypeID()))
            {
              Count = CFDictionaryGetCount(v26);
              v29 = *(a1 + 8);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = Count;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I ERI: RIT count = %d", buf, 8u);
              }
            }

            else
            {
              v30 = *(a1 + 8);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not get roaming indicator table from ERI data", buf, 2u);
              }

              v26 = 0;
              Count = 0;
            }

            v31 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
            CFDictionaryGetKeysAndValues(v26, v31, 0);
            if (Count >= 1)
            {
              for (i = 0; Count != i; ++i)
              {
                v33 = CFGetTypeID(v31[i]);
                if (v33 == CFStringGetTypeID())
                {
                  v34 = v31[i];
                  v54 = 0u;
                  v55 = 0u;
                  v53 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  *buf = 0u;
                  CFStringGetCString(v34, buf, 128, 0x8000100u);
                  v35 = *(a1 + 8);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 67109378;
                    LODWORD(v47[0]) = i;
                    WORD2(v47[0]) = 2080;
                    *(v47 + 6) = buf;
                    v36 = valuePtr;
                    v37 = v35;
                    v38 = "#I ERI: keys[%02d] = %s";
                    v39 = 18;
LABEL_47:
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, v36, v39);
                  }
                }

                else
                {
                  v40 = *(a1 + 8);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = i;
                    v36 = buf;
                    v37 = v40;
                    v38 = "#I ERI: keys[%02d] = <non-string key type>";
                    v39 = 8;
                    goto LABEL_47;
                  }
                }
              }
            }

            free(v31);
          }

          v7 = 1;
          *(a1 + 43) = 1;
          goto LABEL_51;
        }

        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N ERI: Failed to initialize ERI data", buf, 2u);
        }
      }

      v7 = 0;
      goto LABEL_51;
    }
  }

  v7 = 0;
LABEL_53:
  sub_1002030AC(&url);
  return v7;
}

void sub_10117BB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  sub_1002030AC(va);
  sub_1002030AC(va1);
  _Unwind_Resume(a1);
}

void sub_10117BBB4(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Is home system is changing from %s to %s", &v6, 0x16u);
    }

    *(a1 + 56) = a2;
  }
}

void sub_10117BC8C(uint64_t a1, int a2, uint64_t *a3, void **a4)
{
  v31 = 0;
  value = 0;
  if (ctu::cf::convert_copy())
  {
    v30 = v31;
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = CFDictionaryGetValue(v8, @"roaming_indicator_table");
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDictionaryGetTypeID())
        {
          *key = 0;
          if (sub_10117BF54(key, v12, v13, v14, v15, v16, v17, v18, a2))
          {
            v33[0] = *key;
            v19 = CFDictionaryGetValue(v10, *key);
            v20 = v19;
            if (!v19 || (v21 = CFGetTypeID(v19), v21 != CFDictionaryGetTypeID()))
            {
              sub_100005978(v33);
              goto LABEL_20;
            }

            sub_100005978(v33);
            if (CFDictionaryGetValueIfPresent(v20, v31, &value) && value)
            {
              *a4 = value;
LABEL_20:
              sub_100005978(&v30);
              return;
            }

            v28 = *(a1 + 8);
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            if (*(a3 + 23) >= 0)
            {
              v29 = a3;
            }

            else
            {
              v29 = *a3;
            }

            *key = 136315394;
            *&key[4] = v29;
            v35 = 1024;
            v36 = a2;
            v24 = "#N ERI: Key %s not present for indicator %d";
            v25 = key;
            v26 = v28;
            v27 = 18;
LABEL_19:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v24, v25, v27);
            goto LABEL_20;
          }

          v23 = *(a1 + 8);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          LOWORD(v33[0]) = 0;
          v24 = "#N ERI: Couldn't create indicatorCFStr";
          v25 = v33;
LABEL_18:
          v26 = v23;
          v27 = 2;
          goto LABEL_19;
        }
      }

      v23 = *(a1 + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *key = 0;
      v24 = "#N ERI: Couldn't load ERI table";
    }

    else
    {
      v23 = *(a1 + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *key = 0;
      v24 = "#N ERI: ERI data not loaded";
    }

    v25 = key;
    goto LABEL_18;
  }

  v22 = *(a1 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *key = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N ERI: failed to create CF representation of key", key, 2u);
  }
}

void sub_10117BF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100005978(va1);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10117BF54(CFStringRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  format = 0;
  if (ctu::cf::convert_copy(&format, "%d", 0x8000100, kCFAllocatorDefault, a5) && (v10 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, &a9)) != 0)
  {
    *a1 = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (format)
  {
    CFRelease(format);
  }

  return v11;
}

void sub_10117BFEC(uint64_t a1)
{
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v2 = (*(*a1 + 40))(a1);
  v55 = 0;
  cf = 0;
  sub_10000501C(__p, "text");
  sub_10117BC8C(a1, v2, __p, &cf);
  if (v57 < 0)
  {
    operator delete(*__p);
  }

  v3 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      goto LABEL_95;
    }
  }

  cf = 0;
  v2 = (*(*a1 + 56))(a1);
  sub_10000501C(__p, "text");
  sub_10117BC8C(a1, v2, __p, &cf);
  if (v57 < 0)
  {
    operator delete(*__p);
  }

  v3 = cf;
  if (cf)
  {
LABEL_95:
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      v6 = *(a1 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 96);
          if (v9)
          {
            v10 = *(a1 + 8);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v9 + 432))(__p, v9);
              IntValue = MCC::getIntValue(__p);
              *buf = 67109120;
              v60 = IntValue;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I QMI_NAS_REGISTERED with roaming indicator and derived MCC = %03d", buf, 8u);
              if (v58 < 0)
              {
                operator delete(*&__p[8]);
              }

              v10 = *(a1 + 8);
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v52;
              if (v53 < 0)
              {
                v12 = v52[0];
              }

              *__p = 67109378;
              *&__p[4] = v2;
              *&__p[8] = 2080;
              *&__p[10] = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I ERI: Indicator %d:text = %s", __p, 0x12u);
            }
          }

          sub_100004A34(v8);
        }
      }

      cf = 0;
      sub_10000501C(__p, "Data_Supported");
      sub_10117BC8C(a1, v2, __p, &cf);
      if (v57 < 0)
      {
        operator delete(*__p);
      }

      v13 = cf;
      if (cf)
      {
        v14 = CFGetTypeID(cf);
        if (v14 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v55, v13, v15);
          v16 = *(a1 + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v55)
            {
              v17 = "true";
            }

            else
            {
              v17 = "false";
            }

            *__p = 136315138;
            *&__p[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I fDataSupportedBasedOnRoamingIndicator = %s", __p, 0xCu);
          }
        }
      }

      cf = 0;
      sub_10000501C(__p, "is_home_system");
      sub_10117BC8C(a1, v2, __p, &cf);
      if (v57 < 0)
      {
        operator delete(*__p);
      }

      v18 = cf;
      __p[0] = 0;
      if (cf)
      {
        v19 = CFGetTypeID(cf);
        if (v19 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(__p, v18, v20);
          LOBYTE(v21) = __p[0];
          goto LABEL_46;
        }
      }

      goto LABEL_45;
    }
  }

  v22 = *(a1 + 104);
  if (v22)
  {
    v21 = std::__shared_weak_count::lock(v22);
    if (v21)
    {
      v23 = *(a1 + 96);
      if (v23)
      {
        v24 = *(a1 + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 67109120;
          *&__p[4] = v2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#N ERI: Couldn't load data for indicator %d, aborting", __p, 8u);
        }

        (*(*v23 + 312))(v23, 0xFFFFFFFFLL);
        goto LABEL_44;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = *(a1 + 8);
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  *__p = 0;
  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not lock parent RegistrationModel!", __p, 2u);
  if (v21)
  {
LABEL_44:
    sub_100004A34(v21);
LABEL_45:
    LOBYTE(v21) = 0;
  }

LABEL_46:
  v26 = v55;
  v27 = *(a1 + 40);
  if (v27 != v55)
  {
    v28 = *(a1 + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109376;
      *&__p[4] = v27;
      *&__p[8] = 1024;
      *&__p[10] = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I ERI: Data_Supported Status:Current %d Applied %d", __p, 0xEu);
    }

    *(a1 + 40) = v26;
  }

  (*(*a1 + 120))(a1, v21 & 1);
  v29 = *(a1 + 104);
  if (!v29)
  {
    v30 = 0;
    goto LABEL_62;
  }

  v30 = std::__shared_weak_count::lock(v29);
  if (!v30 || (v31 = *(a1 + 96)) == 0)
  {
LABEL_62:
    v43 = *(a1 + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not lock parent RegistrationModel for updating configuration", __p, 2u);
    }

    goto LABEL_64;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 112));
  v33 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *__p = v34;
  v38 = sub_100009510(&v33[1].__m_.__sig, __p);
  if (!v38)
  {
    v40 = 0;
LABEL_70:
    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    if (!v40)
    {
LABEL_59:
      v42 = *(a1 + 8);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Could not get ActivationInterface for querying service provisioned state", __p, 2u);
      }

LABEL_80:
      if ((v41 & 1) == 0)
      {
        sub_100004A34(v39);
      }

      if (SHIBYTE(v53) < 0)
      {
        sub_100005F2C(__dst, v52[0], v52[1]);
        if (SHIBYTE(v53) < 0)
        {
          sub_100005F2C(v48, v52[0], v52[1]);
          goto LABEL_86;
        }
      }

      else
      {
        *__dst = *v52;
        v51 = v53;
      }

      *v48 = *v52;
      v49 = v53;
LABEL_86:
      (*(*v31 + 352))(v31, __dst, v48, 7);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_64;
    }

    goto LABEL_71;
  }

  v40 = v38[3];
  v39 = v38[4];
  if (!v39)
  {
    goto LABEL_70;
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v33);
  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v39);
  v41 = 0;
  if (!v40)
  {
    goto LABEL_59;
  }

LABEL_71:
  v44 = (*(*v31 + 776))(v31);
  v45 = (*(*v40 + 56))(v40);
  if (v44 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  if (v46 != 1 || !capabilities::ct::supportsVoiceCall(v45))
  {
    goto LABEL_80;
  }

  v47 = *(a1 + 8);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#N Aborting ERI operator name lookup, baseband is not provisioned", __p, 2u);
  }

  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

LABEL_64:
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }
}

void sub_10117C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, void *a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v39);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10117C96C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117C9A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10117C9E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10117CA10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__CFString *sub_10117CA50(int a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1)
    {
      if (a1 == 2)
      {
        v3 = kCTCellMonitorRadioAccessTechnologyUMTS;
      }

      else
      {
        if (a1 != 3)
        {
          return result;
        }

        v3 = kCTCellMonitorRadioAccessTechnologyCDMA1x;
      }
    }

    else
    {
      v3 = kCTCellMonitorRadioAccessTechnologyGSM;
    }
  }

  else if (a1 > 8)
  {
    if (a1 == 9)
    {
      v3 = kCTCellMonitorRadioAccessTechnologyUTRAN2;
    }

    else
    {
      if (a1 != 10)
      {
        return result;
      }

      v3 = kCTCellMonitorRadioAccessTechnologyNR;
    }
  }

  else if (a1 == 4)
  {
    v3 = kCTCellMonitorRadioAccessTechnologyCDMAEVDO;
  }

  else
  {
    if (a1 != 7)
    {
      return result;
    }

    v3 = kCTCellMonitorRadioAccessTechnologyLTE;
  }

  return *v3;
}

const void **sub_10117CAF4(const void **a1, const void *a2, double a3)
{
  v10 = 0;
  valuePtr = *&a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v10 = v5;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = 0;
  sub_100029A48(&v10);
  v8 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  sub_100029A7C(a1, a2, &v8);
  sub_10000A1EC(&v8);
  return sub_100029A48(&v9);
}

void sub_10117CBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_100029A48(&a10);
  _Unwind_Resume(a1);
}

_DWORD *sub_10117CBCC(_DWORD *result, _DWORD *a2, void *a3)
{
  v5 = *a3;
  v3 = a3 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    while (1)
    {
      if (!*(v4 + 8))
      {
        v6 = *(v4 + 9);
        v7 = result;
        if (v6 == 1)
        {
          goto LABEL_6;
        }

        if (v6 == 2)
        {
          break;
        }
      }

LABEL_7:
      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
      if (v9 == v3)
      {
        return result;
      }
    }

    v7 = a2;
LABEL_6:
    *v7 = *(v4 + 5);
    goto LABEL_7;
  }

  return result;
}

_DWORD *sub_10117CC44(_DWORD *result, _DWORD *a2, void *a3)
{
  v5 = *a3;
  v3 = a3 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    while (1)
    {
      if (!*(v4 + 8))
      {
        v6 = *(v4 + 9);
        v7 = result;
        if (v6 == 4)
        {
          goto LABEL_6;
        }

        if (v6 == 3)
        {
          break;
        }
      }

LABEL_7:
      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
      if (v9 == v3)
      {
        return result;
      }
    }

    v7 = a2;
LABEL_6:
    *v7 = *(v4 + 5);
    goto LABEL_7;
  }

  return result;
}

_DWORD *sub_10117CCBC(_DWORD *result, _DWORD *a2, void *a3)
{
  v5 = *a3;
  v3 = a3 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    while (1)
    {
      if (*(v4 + 8) == 3)
      {
        v6 = *(v4 + 9);
        v7 = a2;
        if (v6 == 3)
        {
          goto LABEL_6;
        }

        if (v6 == 1)
        {
          break;
        }
      }

LABEL_7:
      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
      if (v9 == v3)
      {
        return result;
      }
    }

    v7 = result;
LABEL_6:
    *v7 = *(v4 + 5);
    goto LABEL_7;
  }

  return result;
}

void sub_10117CDE8(LASDDatabaseIDSFactoryInterface *this)
{
  *this = off_101F15480;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  LASDDatabaseIDSFactoryInterface::~LASDDatabaseIDSFactoryInterface(this);
}

void sub_10117CE44(LASDDatabaseIDSFactoryInterface *this)
{
  *this = off_101F15480;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  LASDDatabaseIDSFactoryInterface::~LASDDatabaseIDSFactoryInterface(this);

  operator delete();
}

const char *sub_10117CEB4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F15770[a1];
  }
}

void sub_10117CED8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10117D1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, dispatch_object_t object, void *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18)
{
  v21 = *(v19 - 56);
  *(v19 - 56) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10117D31C(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, a1);
  operator new();
}

void sub_10117D410(void *a1, NSObject **a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (v8)
      {
        *(v5 + 129) = 1;
        v9 = dispatch_group_create();
        v10 = v9;
        if (*(v5 + 128) == 1)
        {
          if (v9)
          {
            dispatch_retain(v9);
            dispatch_group_enter(v10);
          }

          v11 = *(v5 + 120);
          *(v5 + 120) = v10;
          if (v11)
          {
            dispatch_group_leave(v11);
            dispatch_release(v11);
          }
        }

        if (v10)
        {
          v12 = *(v5 + 32);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14[0]) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Waiting for baseband manager shutdown transition", v14, 2u);
          }

          v13 = *a2;
          v14[0] = v5;
          v14[1] = v13;
          if (v13)
          {
            dispatch_retain(v13);
            dispatch_group_enter(v13);
          }

          v14[2] = v8;
          v14[3] = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v14[4] = v10;
          dispatch_retain(v10);
          operator new();
        }

        if (*(v5 + 184))
        {
          sub_10117D638(v5);
        }

        else
        {
          sub_10117D900(v5);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10117D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10117D5E4(&a9);
  dispatch_release(v10);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void *sub_10117D5E4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
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

void sub_10117D638(void *a1)
{
  v2 = a1[23];
  a1[23] = 0;
  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    v4 = a1[4];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [....] cancel shutdown hysteresis timer", v8, 2u);
      v3 = a1[22];
    }

    (*(*v3 + 16))(v3);
    v5 = a1[22];
    a1[22] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  if (a1[24])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [....] Release shutdown hysteresis power assertion", buf, 2u);
    }

    v7 = a1[25];
    a1[24] = 0;
    a1[25] = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10117D778(uint64_t result, uint64_t a2)
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

void sub_10117D794(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10117D7A4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10117CEB4(*(a1 + 104));
    v5 = asString();
    v6 = *(a1 + 112) != 0;
    v7 = *(a1 + 184) != 0;
    v8 = *(a1 + 192) != 0;
    v10 = 136316162;
    v11 = v4;
    v12 = 2080;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I TransitionState=%s; mode=%s; group active=%d; hysteresis active=%d; power assertion held=%d", &v10, 0x28u);
  }

  (*(**(a1 + 72) + 24))(*(a1 + 72), v2);
  return (*(**(a1 + 88) + 56))(*(a1 + 88), v2);
}

void sub_10117D900(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_10117DCF8(a1);
      }

      else if (v1 == 2)
      {
        sub_10117DE10(a1);
      }

      return;
    }

LABEL_10:
    sub_10117D950(a1);
    return;
  }

  switch(v1)
  {
    case 3:
      goto LABEL_10;
    case 4:
      sub_10117E054(a1);
      break;
    case 5:
      sub_10117E18C(a1);
      break;
  }
}

void sub_10117D950(uint64_t a1)
{
  v2 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v3 = v2;
  if (v2 <= 3 && v2 != 1)
  {
    if (*(a1 + 129))
    {
      v3 = 2;
    }

    else
    {
      v3 = v2;
    }
  }

  if (*(a1 + 128))
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      v7 = asString();
      v8 = sub_10117CEB4(*(a1 + 104));
      *buf = 136315650;
      *&buf[4] = v6;
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [----] Baseband Mode: Current=%s; Next=%s; Transition=%s", buf, 0x20u);
    }

    if (*(a1 + 129) == 1 && *(a1 + 168) <= 2u)
    {
      sub_10117E18C(a1);
      return;
    }

    if (*(a1 + 104) == 3)
    {
      if (v3 < 2)
      {
        return;
      }

      if (v3 == 3)
      {
        sub_10117D638(a1);
      }
    }

    if ((v3 == 3) != (*(a1 + 168) == 3))
    {
      if (v3 == 3)
      {
        sub_10117DE10(a1);
        return;
      }

      if ((*(**(a1 + 88) + 48))(*(a1 + 88)) <= 0 || *(a1 + 129) == 1)
      {
        goto LABEL_43;
      }

      if (sub_10117E3E8(a1, 3u))
      {
        v10 = *(a1 + 168);
        if (v10 >= 3)
        {
          if (v10 == 3)
          {
            *buf = 0;
            sub_10117E8D0(buf, a1);
            v11 = *buf;
            v12 = *buf;
            if (*buf)
            {
              dispatch_retain(*buf);
            }

            sub_10117E4D0(a1, &v12);
            if (v11)
            {
              dispatch_release(v11);
              dispatch_release(v11);
            }
          }
        }

        else
        {
          sub_10117D950(a1);
        }
      }

      else if (!*(a1 + 184))
      {
LABEL_43:
        sub_10117E054(a1);
      }
    }

    else
    {
      v9 = *(a1 + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [    ] baseband boot-state matches; committing new mode", buf, 2u);
      }

      sub_10117E6F8(a1, v3);
      sub_10117E3E8(a1, 0);
    }
  }

  else if (v3 == 1)
  {

    sub_10117E6F8(a1, 1);
  }

  else if (v3 == 3 || v3 == 2 && (*(a1 + 129) & 1) == 0)
  {

    sub_10117DCF8(a1);
  }
}

void sub_10117DCD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117DCF8(uint64_t a1)
{
  if (!sub_10117E3E8(a1, 1u))
  {
    goto LABEL_17;
  }

  v2 = *(a1 + 88);
  v3 = *(a1 + 16);
  object = v3;
  v8 = 0;
  if (v3)
  {
    dispatch_retain(v3);
  }

  (*(*v2 + 16))(&v8, v2, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v4 = v8;
  v6 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v5 = sub_10117E4D0(a1, &v6);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (!v5)
  {
LABEL_17:
    if (!*(a1 + 112))
    {
      *(a1 + 128) = 1;
      sub_10117D950(a1);
    }
  }
}

void sub_10117DDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v12)
  {
    dispatch_release(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117DE10(uint64_t a1)
{
  sub_10117D638(a1);
  if (!sub_10117E3E8(a1, 2u))
  {
LABEL_26:
    if (!*(a1 + 112))
    {
      sub_10117E6F8(a1, 3);
      sub_10117D950(a1);
    }

    return;
  }

  v2 = *(a1 + 168);
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      return;
    }

    goto LABEL_26;
  }

  sub_10117E6F8(a1, 0);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
        goto LABEL_17;
      }

      goto LABEL_14;
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
    goto LABEL_17;
  }

LABEL_14:
  v13 = *(a1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Acquire EOS booted assertion prior to booting BB", buf, 2u);
  }

  (*(*v11 + 16))(v11);
LABEL_17:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *buf = 0;
  (*(**(a1 + 88) + 32))(buf);
  v14 = *buf;
  v16 = *buf;
  if (*buf)
  {
    dispatch_retain(*buf);
  }

  v15 = sub_10117E4D0(a1, &v16);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (*buf)
  {
    dispatch_release(*buf);
  }

  if (!v15)
  {
    goto LABEL_26;
  }
}

void sub_10117E018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117E054(uint64_t a1)
{
  sub_10117D638(a1);
  if (!sub_10117E3E8(a1, 4u))
  {
    goto LABEL_18;
  }

  v2 = *(a1 + 168);
  if (v2 < 3)
  {

    sub_10117D950(a1);
    return;
  }

  if (v2 != 3)
  {
    goto LABEL_18;
  }

  sub_10117E6F8(a1, 0);
  object = 0;
  (*(**(a1 + 88) + 40))(&object);
  v3 = object;
  v5 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = sub_10117E4D0(a1, &v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (!v4)
  {
LABEL_18:
    if (!*(a1 + 112))
    {
      sub_10117E6F8(a1, 2);
      sub_10117D950(a1);
    }
  }
}

void sub_10117E168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117E18C(uint64_t a1)
{
  sub_10117D638(a1);
  if (!sub_10117E3E8(a1, 5u) || *(a1 + 128) != 1)
  {
LABEL_24:
    if (!*(a1 + 112))
    {
      *(a1 + 128) = 0;
      sub_10117E6F8(a1, 2);
      v15 = *(a1 + 120);
      *(a1 + 120) = 0;
      if (v15)
      {
        dispatch_group_leave(v15);
        dispatch_release(v15);
      }

      sub_10117D950(a1);
    }

    return;
  }

  sub_10117E6F8(a1, 0);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
        goto LABEL_15;
      }

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
    goto LABEL_15;
  }

LABEL_12:
  v12 = *(a1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Releasing EOS booted assertion prior to BB shutdown", buf, 2u);
  }

  (*(*v10 + 24))(v10);
LABEL_15:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  *buf = 0;
  (*(**(a1 + 88) + 24))(buf);
  v13 = *buf;
  v16 = *buf;
  if (*buf)
  {
    dispatch_retain(*buf);
  }

  v14 = sub_10117E4D0(a1, &v16);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (*buf)
  {
    dispatch_release(*buf);
  }

  if (!v14)
  {
    goto LABEL_24;
  }
}

void sub_10117E3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10117E3E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 104);
  if (v3 != a2)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = sub_10117CEB4(v3);
      v9 = 2080;
      v10 = sub_10117CEB4(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I BB mode transitioning from %s to %s", &v7, 0x16u);
    }

    *(a1 + 104) = a2;
  }

  return v3 != a2;
}

BOOL sub_10117E4D0(void *a1, NSObject **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return v2 != 0;
  }

  if (a1[14])
  {
    v5 = a1[4];
    v6 = *a2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E ERROR: Transition group was already set?!?", buf, 2u);
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = *a2;
  }

  dispatch_retain(v6);
LABEL_8:
  v7 = a1[14];
  a1[14] = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  sub_100004AA0(buf, a1);
  v9 = *buf;
  v8 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = *a2;
  v11 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10117E638;
  block[3] = &unk_101F154E0;
  block[4] = a1;
  block[5] = v9;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_group_notify(v10, v11, block);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v2 != 0;
}

void sub_10117E638(void *a1)
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
        v6 = *(v3 + 32);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Transition group completed; checking for next step", v8, 2u);
        }

        v7 = *(v3 + 112);
        *(v3 + 112) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }

        sub_10117D900(v3);
      }

      sub_100004A34(v5);
    }
  }
}

BOOL sub_10117E6F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = asString();
      *&v9[12] = 2080;
      *&v9[14] = asString();
      v6 = "#I [ XX ] Baseband mode set to: %s (was %s)";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    *v9 = 136315394;
    *&v9[4] = asString();
    *&v9[12] = 2080;
    *&v9[14] = asString();
    v6 = "#I [    ] Baseband mode set to: %s (was %s)";
    goto LABEL_6;
  }

  if (*(a1 + 168) != a2)
  {
    *(a1 + 168) = a2;
    v7 = *(a1 + 160);
    if (v7)
    {
      (*(*v7 + 48))(v7, a1 + 168);
    }
  }

  (*(**(a1 + 72) + 32))(*(a1 + 72), a2);
  *v9 = _NSConcreteStackBlock;
  *&v9[8] = 0x40000000;
  *&v9[16] = sub_101260C04;
  v10 = &unk_101F21238;
  v11 = a1;
  return sub_101260A58(0x80105);
}

void sub_10117E8D0(NSObject **a1, uint64_t a2)
{
  sub_10117D638(a2);
  v4 = (*(**(a2 + 88) + 48))(*(a2 + 88));
  v5 = dispatch_group_create();
  v6 = v5;
  *a1 = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v6);
  }

  v7 = *(a2 + 184);
  *(a2 + 184) = v6;
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v8 = (*(**(a2 + 88) + 48))(*(a2 + 88));
  ServiceMap = Registry::getServiceMap(*(a2 + 40));
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
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
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
      v18 = 0;
      if (!v17)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_14:
  (*(*v17 + 8))(buf, v17, "Shutdown hysteresis", v8);
  v19 = *buf;
  memset(buf, 0, sizeof(buf));
  v20 = *(a2 + 200);
  *(a2 + 192) = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

LABEL_17:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_100004AA0(buf, a2);
  v22 = *buf;
  v21 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v21);
  }

  Registry::getTimerService(buf, *(a2 + 40));
  v23 = *buf;
  sub_10000501C(__p, "Baseband shutdown hysteresis");
  v24 = *(a2 + 16);
  object = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1174405120;
  v30[2] = sub_10117EDF0;
  v30[3] = &unk_101F15510;
  v30[4] = a2;
  v30[5] = v22;
  v31 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock = _Block_copy(v30);
  sub_100D23364(v23, __p, 0, 1000000 * v4, &object, &aBlock);
  v25 = v37;
  v37 = 0;
  v26 = *(a2 + 176);
  *(a2 + 176) = v25;
  if (v26)
  {
    (*(*v26 + 8))(v26);
    v27 = v37;
    v37 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v28 = *(a2 + 32);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (*(**(a2 + 88) + 48))(*(a2 + 88));
    *buf = 134217984;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I [.   ]  shutdown hysteresis timer (%lld sec) started", buf, 0xCu);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }
}

void sub_10117ED14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, void *aBlock, dispatch_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v27)
  {
    dispatch_release(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10117EDF0(void *a1)
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
        v6 = v3[4];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [... ] shutdown hysteresis timer expired", buf, 2u);
        }

        v7 = a1[7];
        if (!v7 || (dispatch_retain(v7), dispatch_group_enter(v7), v8 = v3[23], dispatch_group_leave(v7), dispatch_release(v7), v8 == v7))
        {
          sub_10117D638(v3);
        }

        else
        {
          v9 = v3[4];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [... ] another hysteresis timer was started right after previous timer expired; rare race!", v10, 2u);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10117EF14(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_10117EF44(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_10117EF94(uint64_t a1)
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

void sub_10117F018(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10117F06C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10117F0AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 200);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[23];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[23];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[22];
    v1[22] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    sub_10117EF94((v1 + 17));
    v6 = v1[15];
    if (v6)
    {
      dispatch_group_leave(v6);
      v7 = v1[15];
      if (v7)
      {
        dispatch_release(v7);
      }
    }

    v8 = v1[14];
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = v1[12];
    if (v9)
    {
      sub_100004A34(v9);
    }

    v10 = v1[10];
    if (v10)
    {
      sub_100004A34(v10);
    }

    v11 = v1[8];
    if (v11)
    {
      sub_100004A34(v11);
    }

    v12 = v1[6];
    if (v12)
    {
      sub_100004A34(v12);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_10117F1B4(ServiceManager::Service *this)
{
  *this = off_101F155B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10117F210(ServiceManager::Service *this)
{
  *this = off_101F155B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10117F290@<X0>(void *a1@<X8>)
{
  v2 = 4;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10117F2D4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10117D31C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10117D31C(v4, 0);
}

void sub_10117F364(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, v1);
  operator new();
}

void sub_10117F440(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    v2 = *(a1 + 8);
    sub_100004AA0(&v5, v2);
    v4 = v5;
    v3 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v5 = _NSConcreteStackBlock;
    v6 = 1174405120;
    v7 = sub_10117D410;
    v8 = &unk_101F154B0;
    v9 = v2;
    v10 = v4;
    v11 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    ServiceStage::scheduleAction();
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_10117F530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_10117F554(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 40));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  v2 = (v1 + 136);
  v7[0] = off_101F15630;
  v7[1] = v1 + 56;
  v8 = v7;
  if (v7 != (v1 + 136))
  {
    v3 = *(v1 + 160);
    if (v3 == v2)
    {
      __p[1] = (v1 + 56);
      __p[2] = 0;
      v8 = 0;
      __p[0] = off_101F15630;
      (*(*v3 + 24))(v3, v7);
      (*(**(v1 + 160) + 32))(*(v1 + 160));
      *(v1 + 160) = 0;
      v8 = v7;
      (*(__p[0] + 3))(__p, v1 + 136);
      (*(__p[0] + 4))(__p);
    }

    else
    {
      *(v1 + 136) = off_101F15630;
      *(v1 + 144) = v1 + 56;
      v8 = v3;
    }

    *(v1 + 160) = v2;
  }

  sub_10117EF94(v7);
  v4 = *(v1 + 160);
  if (v4)
  {
    (*(*v4 + 48))(v4, v1 + 168);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  operator new();
}

void sub_10117F8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10117F9A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F15630;
  a2[1] = v2;
  return result;
}

void sub_10117F9CC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/baseband_mode");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10117FA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10117FAC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10117FB8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F156C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10117FBC4(void *a1)
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

uint64_t sub_10117FBEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10117FC38(BasebandModeEvaluator::DelegateBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandModeEvaluator::DelegateBase::~DelegateBase(this);
}

void sub_10117FC78(BasebandModeEvaluator::DelegateBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandModeEvaluator::DelegateBase::~DelegateBase(this);

  operator delete();
}

void sub_10117FCCC(uint64_t a1)
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
        sub_10117D900(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10117FD40(void ***a1)
{
  v2 = a1;
  v1 = **a1;
  sub_10117D900(v1);
  sub_1012607A4(v1);
  operator delete();
}

void *sub_10117FDCC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = v1[1];
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    operator delete();
  }

  return result;
}

void *sub_10117FE44(uint64_t a1)
{
  v3 = a1;
  v1 = *(*a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Baseband manager shutdown complete", buf, 2u);
  }

  return sub_10117FDCC(&v3);
}

uint64_t sub_10117FEB4(uint64_t a1, void *a2, dispatch_object_t *a3)
{
  *a1 = off_101F157B0;
  v5 = (a1 + 8);
  v6 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "cu.metric");
  if (v6)
  {
    dispatch_retain(v6);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    dispatch_retain(v6);
    dispatch_retain(v6);
    v8 = dispatch_queue_create_with_target_V2("CellularUsageMetrics", v7, v6);
  }

  else
  {
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("CellularUsageMetrics", v9);
  }

  v10 = v8;
  *v5 = 0;
  v5[1] = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v6)
  {
    dispatch_release(v6);
    dispatch_release(v6);
    dispatch_release(v6);
  }

  ctu::OsLogLogger::OsLogLogger(v20, &v19);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v20);
  ctu::OsLogLogger::~OsLogLogger(v20);
  ctu::OsLogContext::~OsLogContext(&v19);
  if (v6)
  {
    dispatch_release(v6);
  }

  *a1 = off_101F157B0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = 20;
  *(a1 + 248) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  sub_10000501C(&__p, "CellularUsageMetrics");
  v11 = *(a1 + 24);
  v16 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(a1 + 32);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v13 = a2[1];
  *(a1 + 296) = *a2;
  *(a1 + 304) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  return a1;
}

void sub_101180124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100952474(v21);
  sub_101187040(*v23);
  sub_101186F9C(*v22);
  ctu::OsLogLogger::~OsLogLogger((v19 + 40));
  sub_1000C0544(v20);
  CellularUsageMetricsInterface::~CellularUsageMetricsInterface(v19);
  _Unwind_Resume(a1);
}

void sub_1011801CC(uint64_t a1)
{
  *a1 = off_101F157B0;
  sub_100009970(a1 + 312, *(a1 + 320));
  v2 = *(a1 + 304);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v4 = (a1 + 272);
  sub_1000B2AF8(&v4);
  v3 = *(a1 + 264);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100952474((a1 + 248));
  sub_101187040(*(a1 + 104));
  sub_101186F9C(*(a1 + 80));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CellularUsageMetricsInterface::~CellularUsageMetricsInterface(a1);
}