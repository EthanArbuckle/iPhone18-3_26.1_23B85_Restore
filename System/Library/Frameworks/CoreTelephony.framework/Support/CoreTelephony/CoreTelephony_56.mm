void sub_100392BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_100392C18(uint64_t a1, char a2)
{
  sub_100393F5C((a1 + 24));
  v4 = sub_100394138((a1 + 8));

  return sub_10039417C(v4, a2);
}

void sub_100392C84(uint64_t a1)
{
  shouldRadioInitInAirplaneMode = capabilities::ct::shouldRadioInitInAirplaneMode(a1);
  v3 = *(a1 + 72);
  if ((v3 - 1) >= 5 && v3 != 7 && (v3 != 8 || shouldRadioInitInAirplaneMode == 0))
  {
    v12 = *(a1 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband booted in online mode, current request: %s", &v17, 0xCu);
    }

    v13 = *(a1 + 68);
    if (v13 <= 1)
    {
      if (v13)
      {
        if (v13 != 1)
        {
          return;
        }

        v14 = a1;
        v15 = 4;
      }

      else
      {
        v14 = a1;
        v15 = 2;
      }

      goto LABEL_31;
    }

    if (v13 != 2)
    {
      if (v13 != 3)
      {
        return;
      }

      goto LABEL_30;
    }

    if (*(a1 + 72) == 8)
    {
      return;
    }

LABEL_27:
    v14 = a1;
    v15 = 1;
LABEL_31:
    sub_100392EE8(v14, v15, 1);
    return;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Baseband booted in airplane mode", &v17, 2u);
  }

  if (!isActiveLowPowerMode())
  {
    v7 = *(a1 + 68);
    v8 = *(a1 + 8);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 3)
    {
      if (v9)
      {
        v10 = asString();
        v17 = 136315138;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband out of airplane mode %s", &v17, 0xCu);
      }

LABEL_30:
      v14 = a1;
      v15 = 3;
      goto LABEL_31;
    }

    if (v9)
    {
      v16 = asString();
      v17 = 136315138;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband out of airplane mode %s", &v17, 0xCu);
    }

    goto LABEL_27;
  }

  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I In Airplane Mode: Do Nothing", &v17, 2u);
  }
}

void sub_100392EE8(uint64_t a1, unsigned int a2, char a3)
{
  v3 = a2;
  if (*(a1 + 73) != a2)
  {
    if (*(a1 + 73))
    {
      *(a1 + 74) = a2;
      goto LABEL_14;
    }

    v20 = *(a1 + 72);
    if (*(a1 + 76) == 1)
    {
      if ((v20 - 1) < 5 || v20 == 7)
      {
        v22 = *(a1 + 8);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v23 = "#I Forcing AP mode - in AP mode, no outstanding requests ...";
        v24 = v22;
        v25 = 2;
LABEL_40:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
        return;
      }

      v48 = *(a1 + 8);
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v3 = 2;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Forcing low power mode", buf, 2u);
        if (*(a1 + 73))
        {
          goto LABEL_14;
        }

        v42 = 1;
      }

      else
      {
        v42 = 1;
        v3 = 2;
      }

      goto LABEL_72;
    }

    if (v20 != 2)
    {
      if ((a2 - 1) <= 3u)
      {
        v42 = 0x7060100u >> (8 * ((a2 - 1) & 0x1F));
      }

      else
      {
        v42 = 8;
      }

LABEL_72:
      if (*(a1 + 72) == v42)
      {
        v43 = *(a1 + 8);
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (v3 > 4)
        {
          v44 = "???";
        }

        else
        {
          v44 = off_101E46FB0[v3];
        }

        v49 = asString();
        *buf = 136315394;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        v23 = "#I Dropping operation request %s - Already in %s";
        v24 = v43;
        goto LABEL_39;
      }

      *(a1 + 73) = v3;
      v45 = 0x706010008uLL >> (8 * v3);
      if (v3 >= 5)
      {
        LOBYTE(v45) = 8;
      }

      sub_100393C84(a1, v45 & 0xF, a3);
LABEL_14:
      v16 = *(a1 + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v17 = *(a1 + 73);
      if (v17 > 4)
      {
        v18 = "???";
      }

      else
      {
        v18 = off_101E46FB0[v17];
      }

      v37 = *(a1 + 74);
      if (v37 > 4)
      {
        v38 = "???";
      }

      else
      {
        v38 = off_101E46FB0[v37];
      }

      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = v38;
      v23 = "#I Operating Mode Requests: Current (%s) Pending (%s)";
      v24 = v16;
LABEL_39:
      v25 = 22;
      goto LABEL_40;
    }

    v26 = *(a1 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Baseband is in factory test mode. Ignoring request to make it go online", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 32));
    v28 = ServiceMap;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(ServiceMap);
    *buf = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, buf);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        v36 = 0;
LABEL_81:
        if (v35)
        {
          if (((*(*v35 + 32))(v35) & 1) == 0)
          {
            v46 = *(a1 + 8);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              v47 = asString();
              sub_10176E11C(v47, buf, v46);
            }
          }
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_86;
        }

        return;
      }
    }

    else
    {
      v35 = 0;
    }

    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
    goto LABEL_81;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176E164(v3, a1, v5);
  }

  if (!*(a1 + 74))
  {
    return;
  }

  *(a1 + 74) = 0;
  if (v3 != 1)
  {
    goto LABEL_65;
  }

  memset(&buf[8], 0, 32);
  v65 = 0x500000000000000;
  *&v66[8] = 0u;
  v70 = 0u;
  v69 = 0u;
  memset(&v67, 0, sizeof(v67));
  v68 = 23;
  qmemcpy(&buf[23], "\tRadio", 6);
  qmemcpy(buf, "Telephony", 9);
  v66[23] = 14;
  qmemcpy(v66, "Operating Mode", 14);
  sub_1000167D4(&v67, "Requesting operating mode matching current requested operating mode with pending request", 0x58uLL);
  v60 = &v68;
  v61 = 0;
  sub_1001E9F04(&v60, 5uLL);
  v68 |= 0x11uLL;
  v6 = Registry::getServiceMap(*(a1 + 32));
  v7 = v6;
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

  std::mutex::lock(v6);
  v60 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v60);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_42;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_42:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_43;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_43:
  sub_100D9EC48(__dst, buf);
  v63 = 0;
  (*(*v14 + 16))(v14, __dst, v62);
  sub_10010DF14(v62);
  if (v59 < 0)
  {
    operator delete(__p);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (SBYTE7(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if ((v66[23] & 0x80000000) != 0)
  {
    operator delete(*v66);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_65:
  v39 = *(a1 + 56);
  if (v39)
  {
    v40 = std::__shared_weak_count::lock(v39);
    if (v40)
    {
      v34 = v40;
      v41 = *(a1 + 48);
      if (v41)
      {
        (*(*v41 + 32))(v41);
      }

LABEL_86:
      sub_100004A34(v34);
    }
  }
}

void sub_1003935B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039363C(uint64_t a1, int a2)
{
  if (*(a1 + 68) != a2)
  {
    *(a1 + 68) = a2;
    active = isActiveLowPowerMode();
    if (active)
    {
      v5 = "Entering airplane mode";
    }

    else
    {
      v5 = "Exiting airplane mode";
    }

    v14 = _os_activity_create(&_mh_execute_header, v5, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v14, state);
    os_activity_scope_leave(state);
    sub_1000C0590(&v14);
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (active)
      {
        v7 = "Entering";
      }

      else
      {
        v7 = "Exiting";
      }

      v8 = asString();
      *state = 136315394;
      *&state[4] = v7;
      *&state[12] = 2080;
      *&state[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s airplane mode: operatingModeType: %s", state, 0x16u);
    }

    if (*(a1 + 64))
    {
      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            return;
          }

          v9 = *(a1 + 72);
          v10 = 4;
          if (v9 == 1)
          {
            goto LABEL_29;
          }

          if (v9 == 7)
          {
            return;
          }
        }

        else
        {
          v13 = *(a1 + 72);
          if (v13 == 1)
          {
            return;
          }

          v10 = 2;
          if (v13 == 7)
          {
            goto LABEL_29;
          }
        }

        sub_1000C5B08(&event::radio::disabling);
LABEL_29:
        sub_100392EE8(a1, v10, 1);
        return;
      }

      if (a2 == 3)
      {
        if ((sub_100393890(a1) & 1) == 0)
        {
          return;
        }

        v10 = 3;
        goto LABEL_29;
      }

      if (a2 == 2 && (sub_100393890(a1) & 1) != 0)
      {
        v10 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v11 = *(a1 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *state = 136315138;
        *&state[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Baseband not initialized for request %s", state, 0xCu);
      }

      sub_100392988(a1, active);
    }
  }
}

uint64_t sub_100393890(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
      v1 = 1;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v36 = (*(*v11 + 72))(v11);
  v35 = (*(*v11 + 80))(v11);
  v13 = Registry::getServiceMap(*(a1 + 32));
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
      v1 = v21 + 8;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v22 = 0;
      if (!v20)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
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
LABEL_15:
    v23 = *(a1 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10176E230(v23);
    }

    goto LABEL_23;
  }

LABEL_19:
  (*(*v20 + 16))(v20, 1);
  isSimUnreadable = subscriber::isSimUnreadable();
  if (v35 != 1 || (v36 & 1) != 0 || (v25 = (a1 + 65), isSimUnreadable & 1 | ((*(a1 + 65) & 1) == 0)))
  {
    v1 = 1;
  }

  else
  {
    v27 = *(a1 + 8);
    v1 = 0;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = printers::asString(&v35, v28);
      v31 = printers::asString(&v36, v30);
      v33 = printers::asString(v25, v32);
      v34 = subscriber::asString();
      *buf = 136315906;
      *&buf[4] = v29;
      v38 = 2080;
      v39 = v31;
      v40 = 2080;
      v41 = v33;
      v42 = 2080;
      v43 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Waiting to exit airplane mode; activation enabled: %s, baseband activated: %s, with ticket: %s, sim %s", buf, 0x2Au);
      v1 = 0;
    }
  }

LABEL_23:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return (v20 != 0) & v1;
}

void sub_100393BCC(_Unwind_Exception *exception_object)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100393C24(capabilities::ct *a1, void *a2)
{
  result = capabilities::ct::supportsVoiceCall(a1);
  if ((result & 1) == 0)
  {
    v5 = a2[1];
    if (*a2 == v5)
    {
      v7 = 1;
    }

    else
    {
      v6 = *a2 + 168;
      do
      {
        v7 = *(v6 - 160) == 1;
        v8 = *(v6 - 160) != 1 || v6 == v5;
        v6 += 168;
      }

      while (!v8);
    }

    *(a1 + 76) = v7;
  }

  return result;
}

void sub_100393C84(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 75) = a3;
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = *(a1 + 8);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (a2 == 1)
        {
          if (v10)
          {
            v11 = 136315138;
            v12 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Delay entering %s", &v11, 0xCu);
          }

          (*(*v8 + 24))(v8);
        }

        else
        {
          if (v10)
          {
            v11 = 136315138;
            v12 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Requesting mode %s now", &v11, 0xCu);
          }

          (*(*v8 + 16))(v8, a2);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100393E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176E274(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100393EB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100393EEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100393F1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100393F5C(uint64_t *a1)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v6 = 0u;
  sub_10000D518(&v6);
  v2 = asString();
  strlen(v2);
  sub_10000C030(&v6);
  sub_10006EE70(&v6 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10039410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100394138(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10039417C(uint64_t *a1, char a2)
{
  v24 = a2;
  v23 = 0uLL;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v3);
  v4 = a1[1];
  if (v4)
  {
    if (atomic_load_explicit((v4 + 8), memory_order_acquire) == 1)
    {
      sub_1003943F4(a1, &v27, 0, 1);
    }

    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = *a1;
  }

  v7 = v23;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v26[0] = v7;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v24;
  v8 = sub_10039448C(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_1003946DC(v8);
  v9 = sub_10039448C(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_10039448C(&v23);
  v12 = *(sub_1003946DC(v11) + 8);
  v13 = sub_10039448C(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_1003946DC(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_10039492C(&v20);
  v14 = sub_10039448C(&v23);
  v15 = sub_1003946DC(v14);
  v16 = sub_10039448C(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_1003946DC(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_10039492C(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_100394720(v10, v26, v25);
  sub_100394CF4(v22);
  sub_1003955AC(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_1003943A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1003943F4(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_10039448C(a1);
  v10 = sub_1003946DC(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_10039448C(a1);
    v11 = *(sub_1003946DC(v12) + 8);
  }

  v14 = v11;
  return sub_1003944D0(a1, a2, a3, &v14, a4);
}

uint64_t sub_10039448C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003944D0(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_10039448C(a1);
  result = sub_1003946DC(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1003945E8(v10 + 2);
        sub_10039462C(v15, a2);
        v10 = v22;
      }

      if (*(sub_1003945E8(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_10039448C(a1);
        v18 = sub_1003946DC(v17);
        v19 = sub_1003945E8(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_10039448C(a1);
      result = sub_1003946DC(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1003945E8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10039462C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100394698(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100394698(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1003946DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100394720(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003947A8(a2);
    *a2 = *(*a2 + 8);
    sub_10039492C(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003947A8(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_100394848((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_100394848(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1003945E8(a2);
  v3 = (sub_100394698((v2 + 32)) + 24);

  return sub_100394894(v3);
}

uint64_t sub_100394894(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10039492C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
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
      v14 = 0u;
      v15 = 0u;
      v3 = sub_100394B8C((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1003945E8((*a1 + 16));
      sub_100394BD0(v4, &v14, (a1[2] + 8));
      v5 = sub_1003945E8((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_1003945E8((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
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
        v14 = 0u;
        v15 = 0u;
        v13 = sub_100394B8C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_100394B50(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394B8C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100394BD0(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100394698(result + 4); ; i += 6)
    {
      result = sub_100394698(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_100394CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100394CF4(uint64_t a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_100394D38(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_100394D38(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_10039448C(a1);
  if (sub_1003946DC(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_10039448C(a1);
    v8 = *(sub_1003946DC(v7) + 8);
    sub_1003944D0(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100394ED8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100394F7C(&v2, a2);
}

uint64_t sub_100394F38(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100394F7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100394FE8(&v2);
}

void sub_100395058(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100395098(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1003951B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10039533C(a1, a2);
  sub_1003953A8((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_10039533C(void *result, uint64_t a2)
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

uint64_t sub_1003953A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100395410(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10039547C(&v2);
}

void sub_1003954EC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10039552C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1003955AC(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100395684(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100395788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003957BC(void *a1, NSObject **a2, uint64_t *a3, void *a4)
{
  *a1 = off_101E2DC48;
  sub_1003959A4(a1 + 1, a2, &kCtLoggingSystemName, &off_101E46FD8);
  *a1 = off_101E46FF0;
  v7 = a4[1];
  a1[6] = *a4;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanPolicyManager");
  v8 = a1[3];
  v14 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = a1[4];
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  v10 = *a3;
  v11 = a3[1];
  a1[10] = *a3;
  a1[11] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = a1[10];
  }

  (*(*v10 + 768))(v10);
  return a1;
}

void sub_10039591C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = v17[11];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[9];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v17[7];
  if (v22)
  {
    sub_100004A34(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_1003959A4(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

uint64_t sub_100395A14(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I bootstrapped", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(a1 + 48));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  result = *(a1 + 96);
  if (result)
  {
    (*(*result + 16))(result);
    sub_100004AA0(buf, (a1 + 8));
    v4 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    operator new();
  }

  return result;
}

void sub_100395B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100396848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100395BDC(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I shutdown", v5, 2u);
  }

  v3 = a1[12];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  return ctu::RestModule::disconnect((a1 + 8));
}

uint64_t sub_100395C74(capabilities::ct *a1, __int16 a2)
{
  v4 = capabilities::ct::supportsGemini(a1);
  result = 1;
  if (!v4 || (a2 & 0x100) == 0)
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    return 0;
  }

  (***(a1 + 10))(&__p);
  ServiceMap = Registry::getServiceMap(__p);
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
  v22 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_12:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_13:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (!v14)
  {
LABEL_23:
    v18 = 0;
    result = 0;
    if (v15)
    {
      return result;
    }

    goto LABEL_24;
  }

  sub_10000501C(&__p, "CN");
  v16 = (*(*v14 + 24))(v14, &__p);
  v17 = v16;
  if (v21 < 0)
  {
    operator delete(__p);
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v16 & 0x100) == 0)
  {
    goto LABEL_23;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = 1;
  result = 1;
  if ((v15 & 1) == 0)
  {
LABEL_24:
    sub_100004A34(v13);
    return v18;
  }

  return result;
}

void sub_100395E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100395E70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    sub_1003968C8(v3, a2);
    v3[7] = 0;
    operator new();
  }

  return sub_100395FD8(a2, 0);
}

void sub_100395FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100396848(va);
  sub_100396344(v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100395FD8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = BYTE4(a2);
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100396034(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 96))
  {
    sub_100396D38(v5, a3);
    v5[7] = 0;
    operator new();
  }

  v3 = a2 ^ 1;

  return sub_1003961B4(a3, v3, 6);
}

void sub_100396188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100396848(va);
  sub_100294724(v8 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1003961B4(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100396210(void *a1)
{
  *a1 = off_101E46FF0;
  v2 = a1[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(a1);
}

void sub_1003962A0(void *a1)
{
  *a1 = off_101E46FF0;
  v2 = a1[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(a1);

  operator delete();
}

uint64_t sub_100396344(uint64_t a1)
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

void sub_100396444(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100396518);
  __cxa_rethrow();
}

void sub_100396484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003964D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396518(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100396544(void *a1)
{
  *a1 = off_101E47148;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100396590(void *a1)
{
  *a1 = off_101E47148;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100396670(uint64_t result, uint64_t a2)
{
  *a2 = off_101E47148;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003966B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003966C0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100396700(void *a1, __int16 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109378;
          v9[1] = v4 & 1;
          v10 = 2080;
          v11 = asString();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cellular plan regulatory restriction active and reason_code : %{BOOL}d :%s", v9, 0x12u);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1003967FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396848(uint64_t a1)
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

uint64_t sub_1003968C8(uint64_t a1, uint64_t a2)
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

void *sub_100396960(void *a1)
{
  *a1 = off_101E471D8;
  sub_100396344((a1 + 2));
  return a1;
}

void sub_1003969A4(void *a1)
{
  *a1 = off_101E471D8;
  sub_100396344((a1 + 2));

  operator delete();
}

uint64_t sub_100396A84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E471D8;
  a2[1] = v2;
  return sub_1003968C8((a2 + 2), a1 + 16);
}

void sub_100396ABC(void *a1)
{
  sub_100396344(a1 + 16);

  operator delete(a1);
}

uint64_t sub_100396AF8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = v3 >> 8;
  v5 = *(a1 + 8);
  if ((*(**(v5 + 80) + 104))(*(v5 + 80)) && (v3 & 1) != 0 && (sub_100395C74(v5, v3 | 0x100u) & 1) == 0)
  {
    v7 = *(v5 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I China Install not allowed with reason_code:%s", &v8, 0xCu);
    }

    return sub_100395FD8(a1 + 16, ((v4 << 24) | (v3 << 8)) + 0x100010001);
  }

  else
  {

    return sub_100395FD8(a1 + 16, (v4 << 24) | (v3 << 8) | 0x100010000);
  }
}

uint64_t sub_100396C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396CB8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100396D38(uint64_t a1, uint64_t a2)
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

void *sub_100396DD0(void *a1)
{
  *a1 = off_101E47258;
  sub_100294724((a1 + 3));
  return a1;
}

void sub_100396E14(void *a1)
{
  *a1 = off_101E47258;
  sub_100294724((a1 + 3));

  operator delete();
}

uint64_t sub_100396F00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E47258;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_100396D38(a2 + 24, a1 + 24);
}

void sub_100396F44(void *a1)
{
  sub_100294724(a1 + 24);

  operator delete(a1);
}

uint64_t sub_100396F80(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (capabilities::ct::supportsGemini(a1) && (v3 & 1) != 0 && (sub_100395C74(v4, v3 | 0x100u) & 1) == 0)
  {
    v11 = *(v4 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14[0] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I China Install not allowed with reason_code:%s", &v13, 0xCu);
    }

    v10 = v3 >> 8;
    v8 = a1 + 24;
    v9 = 0;
  }

  else
  {
    v5 = *(v4 + 5);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v13 = 67109378;
      LODWORD(v14[0]) = v3;
      WORD2(v14[0]) = 2080;
      *(v14 + 6) = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cellular plan regulatory restriction active : %{BOOL}d reason_code:%s", &v13, 0x12u);
    }

    if (*(a1 + 16) == 1)
    {
      v7 = v3 | ~capabilities::ct::supportsGemini(v6);
      v8 = a1 + 24;
      v9 = v7 & 1;
    }

    else
    {
      v8 = a1 + 24;
      v9 = (v3 & 1) == 0;
    }

    v10 = v3 >> 8;
  }

  return sub_1003961B4(v8, v9, v10);
}

uint64_t sub_10039710C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100397158(uint64_t a1, uint64_t a2)
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

void sub_10039724C(void *a1)
{
  *a1 = off_101E472D8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1003972AC(void *a1)
{
  sub_10039724C(a1);

  operator delete();
}

uint64_t sub_1003972E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100293290(v4, a2);
    sub_1003973B4(v2, v4);
    return sub_10028ED7C(v4);
  }

  else
  {

    return sub_100186828(a2, 4);
  }
}

void sub_100397398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

void sub_1003973B4(uint64_t a1, uint64_t a2)
{
  v4 = +[D2DConnectionFactory sharedInstance];
  (***(a1 + 56))(&v15);
  v16 = v15;
  v15 = 0uLL;
  v5 = *(a1 + 24);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = [v4 createConnectionWithRegistry:&v16 queue:&object];
  v7 = *(a1 + 144);
  *(a1 + 144) = v6;

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  v8 = *(a1 + 144);
  sub_100004AA0(&v10, (a1 + 8));
  sub_100397DC0(&v10, &v15);
  if (v15)
  {
    v9 = v15 + 136;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  v13 = *(&v15 + 1);
  v15 = 0uLL;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_100397E44;
  v17[3] = &unk_101E47410;
  v17[4] = a1;
  sub_100293290(v18, a2);
  [v8 setDelegate:&v12 forTarget:0 completion:v17];
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10028ED7C(v18);
}

void sub_100397588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028ED7C(v19 + 40);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10039760C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_100A843E8(v1);
  }
}

uint64_t sub_100397620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_100397664(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100397674(v2, a2);
  }
}

void sub_100397674(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I try to connect target", v8, 2u);
  }

  v5 = *(a1 + 144);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v5 tryConnectWithCode:v7];
}

void sub_10039773C(uint64_t a1, int a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v13 = *a4;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "s.xtp");
  sub_1007D0FF4(a1, a2, &object, &v13, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E47330;
  *(a1 + 136) = off_101E473D0;
  *(a1 + 184) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 240) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  if (a2 == 1)
  {
    v9 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v10 = *(a1 + 168);
    *(a1 + 168) = v9;

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Create CellularPlanCrossPlatformSourceTransportController::impl", __p, 2u);
    }

    (***(a1 + 56))(v12);
    v12[3] = a1 + 40;
    sub_10039C900();
  }

  __assert_rtn("impl", "CellularPlanCrossPlatformSourceTransportController.mm", 152, "cellplan::PlanTransferEndpoint::kSource == endpoint");
}

void sub_100397AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10039CE5C(&a17);
  sub_100009970(&a9, a10);
  sub_100009970(v27, *(v26 + 232));
  v30 = *(v26 + 216);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (*(v26 + 207) < 0)
  {
    operator delete(*v28);
  }

  v31 = *(v26 + 160);
  if (v31)
  {
    sub_100004A34(v31);
  }

  TMKXPCServer.shutdown()();
  sub_1007D10DC(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_100397C3C(uint64_t a1)
{
  *a1 = off_101E47330;
  *(a1 + 136) = off_101E473D0;
  sub_100A843E8(a1);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I destory CellularPlanCrossPlatformSourceTransportController::impl", v6, 2u);
  }

  sub_100009970(a1 + 224, *(a1 + 232));
  v3 = *(a1 + 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  return sub_1007D10DC(a1);
}

void sub_100397D4C(uint64_t a1)
{
  sub_100397C3C(a1);

  operator delete();
}

void sub_100397D84(uint64_t a1)
{
  sub_100397C3C(a1 - 136);

  operator delete();
}

void *sub_100397DC0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_100397E44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (*(a1 + 64))
  {
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start connection", v4, 2u);
    }

    [*(v1 + 144) start];
    sub_100186828(a1 + 40, 0);
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_10176E298();
  }
}

void sub_100397F14(uint64_t a1, int a2)
{
  if (*(a1 + 48) != 1)
  {
    sub_10176E2D8();
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I connection state changed to %d", buf, 8u);
  }

  v20 = 0;
  v21 = 0;
  (*(*a1 + 32))(&v20, a1);
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v16);
  Registry::getNotificationSenderFactory(buf, v16);
  v5 = *buf;
  (***(a1 + 56))(&v12);
  Registry::getTimerService(&v14, v12);
  (*(*v5 + 168))(&v18, v5, &v14, a1 + 24);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    v6 = objc_opt_new();
    v7 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v6 setObject:v7 forKey:@"kCrossTransferEndpoint"];

    v8 = [NSNumber numberWithBool:a2 == 1];
    [v6 setObject:v8 forKey:@"kCrossTransferConnected"];

    v9 = v18;
    v11 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    (*(*v9 + 40))(v9, &v11);
    sub_10001021C(&v11);
  }

  if (a2 == 1)
  {
    v10 = *(a1 + 152);
    sub_10000501C(buf, "kConnected");
    (*(*v10 + 24))(v10, buf);
    if (v24 < 0)
    {
      operator delete(*buf);
    }
  }

  else if (!a2)
  {
    sub_10039831C(a1);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_100398238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039831C(uint64_t a1)
{
  sub_1007D114C(a1, 1, 1);
  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_100398434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 168) decodeMessage:v3];
  if (!v4)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E4F0();
    }

    sub_1003991D4(a1, 2);
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Timer received: %@", &buf, 0xCu);
  }

  v8 = v6;
  sub_10000501C(&buf, [v6 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = buf;
  v9 = *(a1 + 152);
  v10 = v6;
  sub_10000501C(&buf, [v6 UTF8String]);
  (*(*v9 + 24))(v9, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    v12 = [v11 versions];
    sub_100399308(v12, &buf);
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    *(a1 + 184) = buf;
    *(&buf.__r_.__value_.__s + 23) = 0;
    buf.__r_.__value_.__s.__data_[0] = 0;

    if ((*(a1 + 207) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 192))
      {
LABEL_13:
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v11 friendlyDeviceName];
          v15 = [v11 sessionID];
          LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
          *(buf.__r_.__value_.__r.__words + 4) = v14;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Got SessionRequest friendlyDeviceName=%@, session:%lld", &buf, 0x16u);
        }

        v16 = [v11 sessionID];
        v17 = *(a1 + 232);
        *(a1 + 176) = v16;
        sub_100009970(a1 + 224, v17);
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
        *(a1 + 224) = a1 + 232;
        (***(a1 + 56))(&buf);
        ServiceMap = Registry::getServiceMap(buf.__r_.__value_.__l.__data_);
        v19 = ServiceMap;
        v20 = "22CellularPlanController";
        if (("22CellularPlanController" & 0x8000000000000000) != 0)
        {
          v21 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
          v22 = 5381;
          do
          {
            v20 = v22;
            v23 = *v21++;
            v22 = (33 * v22) ^ v23;
          }

          while (v23);
        }

        std::mutex::lock(ServiceMap);
        v70[0] = v20;
        v24 = sub_100009510(&v19[1].__m_.__sig, v70);
        if (v24)
        {
          v26 = v24[3];
          v25 = v24[4];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v19);
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v25);
            v27 = 0;
LABEL_49:
            (*(*a1 + 32))(&v72, a1);
            v78[0] = off_101E47698;
            v78[1] = a1;
            v78[3] = v78;
            (*(*v26 + 480))(v26, 1, 5, &v72, 0, v78);
            sub_10028ED7C(v78);
            if (v73)
            {
              sub_100004A34(v73);
            }

            if ((v27 & 1) == 0)
            {
              sub_100004A34(v25);
            }

            if (buf.__r_.__value_.__l.__size_)
            {
              sub_100004A34(buf.__r_.__value_.__l.__size_);
            }

            goto LABEL_100;
          }
        }

        else
        {
          v26 = 0;
        }

        std::mutex::unlock(v19);
        v25 = 0;
        v27 = 1;
        goto LABEL_49;
      }
    }

    else if (*(a1 + 207))
    {
      goto LABEL_13;
    }

    *(a1 + 120) = 1;
    sub_1003991D4(a1, 1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v4;
    v29 = v28;
    if (*(a1 + 176))
    {
      v30 = [v28 sessionID];
      v31 = *(a1 + 176);
      if (v30 == v31)
      {
        v32 = [v29 status];
        v33 = [v32 count] == 0;

        if (!v33)
        {
          v34 = [v29 status];
          v35 = [v34 objectAtIndexedSubscript:0];
          *(a1 + 128) = [v35 status];
        }

        v36 = [v29 status];
        sub_1003993F4(a1, v36, 1);

        v37 = [v29 status];
        sub_100399BC8(a1, v37);

        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I received Session notification which means session ends", &buf, 2u);
        }

        sub_10039831C(a1);
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E480(&buf, v31, [v29 sessionID]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E4BC();
    }

LABEL_60:

    goto LABEL_100;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v4;
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Received SimTransferProfile Request %@", &buf, 0xCu);
    }

    if (*(a1 + 176))
    {
      v41 = [v39 sessionID];
      v42 = *(a1 + 176);
      if (v41 == v42)
      {
        v43 = [v39 iccid];
        if (v43)
        {
        }

        else
        {
          v51 = [v39 iccid];
          v52 = [v51 length] == 0;

          if (v52)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10176E418();
            }

LABEL_98:
            v50 = 2;
LABEL_99:
            *(a1 + 120) = v50;
            sub_100399EA0(a1, 2);
          }
        }

        v53 = [v39 iccid];
        v54 = sub_100399FD8(a1, v53);

        if (v54)
        {
          v55 = [NSString stringWithUTF8String:sub_100649C38(1)];
          v56 = *(a1 + 40);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Send TransferPlanTransferReq", &buf, 2u);
          }

          v71 = 0;
          std::to_string(&buf, *(a1 + 176));
          v57 = [v39 iccid];
          v58 = v57;
          sub_10000501C(v76, [v57 UTF8String]);
          memset(v70, 0, sizeof(v70));
          sub_10016FB64(v70, v76, v78, 1uLL);
          v59 = [v39 iccid];
          v60 = v59;
          sub_10000501C(v74, [v59 UTF8String]);
          memset(v69, 0, sizeof(v69));
          sub_10016FB64(v69, v74, v76, 1uLL);
          v67[0] = 0;
          v67[1] = 0;
          v68 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v66 = 0;
          sub_10092144C(&buf, v70, v69, v67, __p, &v71);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v67[0]);
          }

          v67[0] = v69;
          sub_1000087B4(v67);
          if (v75 < 0)
          {
            operator delete(v74[0]);
          }

          v69[0] = v70;
          sub_1000087B4(v69);
          if (v77 < 0)
          {
            operator delete(v76[0]);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v61 = v71;
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3321888768;
          v62[2] = sub_10039A05C;
          v62[3] = &unk_101E47440;
          buf.__r_.__value_.__r.__words[0] = a1;
          sub_1002306AC((a1 + 8), &buf.__r_.__value_.__l.__size_);
          v63 = *&buf.__r_.__value_.__l.__data_;
          v64 = buf.__r_.__value_.__r.__words[2];
          if (buf.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((buf.__r_.__value_.__r.__words[2] + 16), 1uLL, memory_order_relaxed);
          }

          sub_100A84468(a1, v55, v61, 0, v62);
          if (buf.__r_.__value_.__r.__words[2])
          {
            std::__shared_weak_count::__release_weak(buf.__r_.__value_.__r.__words[2]);
          }

          if (v64)
          {
            std::__shared_weak_count::__release_weak(v64);
          }

          sub_10001021C(&v71);

          goto LABEL_100;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176E3E4();
        }

        goto LABEL_98;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E3A8(&buf, v42, [v39 sessionID]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E44C();
    }

    v50 = 1;
    goto LABEL_99;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v4;
    v29 = v44;
    if (!*(a1 + 176))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E374();
      }

      goto LABEL_60;
    }

    v45 = [v44 sessionID];
    v46 = *(a1 + 176);
    v47 = *(a1 + 40);
    if (v45 != v46)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E338(&buf, v46, [v29 sessionID]);
      }

      goto LABEL_60;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v29 status];
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I received ProfileNotification %@", &buf, 0xCu);
    }

    v49 = [v29 status];
    sub_1003993F4(a1, v49, 0);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E304();
  }

LABEL_100:
}

void sub_1003991D4(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reply Session Error %ld", &v7, 0xCu);
  }

  a1[22] = 0;
  v5 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
  [(ObjcSimTransferStartSessionResponse *)v5 setMsgError:a2];
  sub_10039BB74(a1, v5);
  a1[15] = a2;
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I end session due to session error", &v7, 2u);
  }

  sub_10039831C(a1);
}

void sub_100399308(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  v3 = objc_alloc_init(CellularPlanCrossPlatformTransportUtility);
  v4 = [(CellularPlanCrossPlatformTransportUtility *)v3 getSupportVersions];
  v5 = [(CellularPlanCrossPlatformTransportUtility *)v3 findHighestMatchingVersionFrom:v4 to:v7];
  v6 = v5;
  if (v5)
  {
    sub_10000501C(a2, [v5 UTF8String]);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_1003993F4(uint64_t a1, void *a2, int a3)
{
  v28 = a2;
  v29 = a1;
  v45 = 0;
  v46 = 0;
  (***(a1 + 56))(&__dst);
  v27 = a3;
  Registry::getNotificationSenderFactory(&__p, __dst);
  v5 = __p;
  (***(a1 + 56))(&v41);
  Registry::getTimerService(&v43, v41);
  (*(*v5 + 168))(&v45, v5, &v43, a1 + 24);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (v42)
  {
    sub_100004A34(v42);
  }

  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (v45)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&__p = v7;
      sub_1000296E0(&__p);
    }

    *v38 = 0;
    v39 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v8)
    {
      v9 = *v38;
      *v38 = v8;
      *&__p = v9;
      sub_1000296E0(&__p);
    }

    if ([v28 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = v28;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v53 count:16];
      if (v11)
      {
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            v15 = [v14 iccid];
            v16 = v15;
            sub_10000501C(v31, [v15 UTF8String]);
            if (SHIBYTE(v32) < 0)
            {
              sub_100005F2C(&__dst, v31[0], v31[1]);
            }

            else
            {
              __dst = *v31;
              v49 = v32;
            }

            v47 = 0;
            if (SHIBYTE(v49) < 0)
            {
              sub_100005F2C(&__p, __dst, *(&__dst + 1));
            }

            else
            {
              __p = __dst;
              v51 = v49;
            }

            v52 = 0;
            if (ctu::cf::convert_copy())
            {
              v17 = v47;
              v47 = v52;
              v41 = v17;
              sub_100005978(&v41);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(__p);
            }

            v33 = v47;
            v47 = 0;
            sub_100005978(&v47);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(__dst);
            }

            sub_1001768B8(*v38, @"kSourceIccid", v33);
            sub_100005978(&v33);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            if ([v14 status])
            {
              v18 = [v14 status];
              v19 = sub_10039C558(v18, v18);
              *&__dst = 0;
              *&__p = v19;
              v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
              if (v20)
              {
                v21 = __dst;
                *&__dst = v20;
                *&__p = v21;
                sub_100029A48(&__p);
              }
            }

            else
            {
              *&__dst = 0;
              *&__p = 5;
              v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
              if (v22)
              {
                v23 = __dst;
                *&__dst = v22;
                *&__p = v23;
                sub_100029A48(&__p);
              }
            }

            v41 = __dst;
            *&__dst = 0;
            sub_100029A48(&__dst);
            sub_100209DF4(*v38, @"kInstallStatus", v41);
            sub_100029A48(&v41);
            sub_10039D64C(v39, *v38);
          }

          v11 = [v10 countByEnumeratingWithState:&v34 objects:v53 count:16];
        }

        while (v11);
      }
    }

    else
    {
      *&__dst = 0;
      *&__p = 5;
      v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
      if (v24)
      {
        *&__dst = v24;
        *&__p = 0;
        sub_100029A48(&__p);
        v25 = __dst;
      }

      else
      {
        v25 = 0;
      }

      v41 = v25;
      *&__dst = 0;
      sub_100029A48(&__dst);
      sub_100209DF4(*v38, @"kInstallStatus", v25);
      sub_100029A48(&v41);
      sub_10039D64C(v39, *v38);
    }

    if (v27)
    {
      sub_10039D6BC(theDict, @"kCrossTransferEndSession", 1);
      if (*(v29 + 249) == 1)
      {
        sub_10039D6BC(theDict, @"kCrossTransferSecureIntentRejected", 1);
      }
    }

    sub_1002B24E0(theDict, @"kMultiplePlanInstallStatus", v39);
    v26 = v45;
    sub_100010180(&v30, &theDict);
    (*(*v26 + 40))(v26, &v30);
    sub_10001021C(&v30);
    sub_1000296E0(v38);
    sub_1000279DC(&v39);
    sub_1000296E0(&theDict);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E524();
  }

  if (v46)
  {
    sub_100004A34(v46);
  }
}

void sub_100399A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, const void *a29, const void *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_1000296E0(&a28);
  sub_1000279DC(&a29);
  sub_1000296E0(&a30);
  if (a38)
  {
    sub_100004A34(a38);
  }

  _Unwind_Resume(a1);
}

void sub_100399BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v12 = v3;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v4)
    {
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          if ([v7 status] == 1)
          {
            v8 = [NSString stringWithUTF8String:sub_100649C38(2)];
            v21[0] = @"kSourceIccid";
            v9 = [v7 iccid];
            v22[0] = v9;
            v22[1] = &stru_101F6AFB8;
            v21[1] = @"kTargetEid";
            v21[2] = @"kTargetName";
            v22[2] = @"Android";
            v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

            v11 = *(a1 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fake transfer confirmation : %@", buf, 0xCu);
            }

            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3321888768;
            v14[2] = nullsub_506;
            v14[3] = &unk_101E474D8;
            sub_100A84468(a1, v8, v10, 0, v14);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v4);
    }

    v3 = v12;
  }
}

void sub_100399EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reply Profile Error %ld", &v7, 0xCu);
  }

  v5 = objc_alloc_init(ObjcSimTransferProfileResponse);
  [(ObjcSimTransferProfileResponse *)v5 setMsgError:a2];
  [(ObjcSimTransferProfileResponse *)v5 setSessionID:*(a1 + 176)];
  sub_10039BFE4(a1, v5);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I end session due to profile error", &v7, 2u);
  }

  sub_10039831C(a1);
}

BOOL sub_100399FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10000501C(__p, [v3 UTF8String]);
  v4 = sub_10016FA58(a1 + 224, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != 0;
}

void sub_10039A05C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(a1 + 32);
  if (v15)
  {
    *(v17 + 120) = 3;
    sub_100399EA0(v17, 3);
  }

  v32 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v31 = 0;
  *__p = 0u;
  v30 = 0u;
  sub_10039AA88(&v32, __p);
  v18 = objc_alloc_init(ObjcSimTransferProfileResponse);
  if (LOBYTE(__p[0]) == 1)
  {
    v19 = *(v17 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I User Declined transfer on source", buf, 2u);
    }

    *(v17 + 249) = 1;
    v20 = 7;
  }

  else
  {
    v20 = 0;
  }

  [(ObjcSimTransferProfileResponse *)v18 setMsgError:v20];
  if ([v31 count])
  {
    v21 = [v31 objectAtIndexedSubscript:0];
    [(ObjcSimTransferProfileResponse *)v18 setItem:v21];
  }

  v22 = [(ObjcSimTransferProfileResponse *)v18 item];
  v23 = *(v17 + 88);
  *(v17 + 88) = v22;

  [(ObjcSimTransferProfileResponse *)v18 setSessionID:*(v17 + 176)];
  (***(v17 + 56))(&v27);
  *buf = v27;
  v27 = 0uLL;
  v24 = sub_1009347B8(buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v27 + 1))
  {
    sub_100004A34(*(&v27 + 1));
  }

  if ((v24 & 1) == 0)
  {
    if (v30 >= 0)
    {
      v25 = &__p[1];
    }

    else
    {
      v25 = __p[1];
    }

    v26 = [NSString stringWithUTF8String:v25];
    [(ObjcSimTransferProfileResponse *)v18 setSourceEID:v26];
  }

  sub_10039BFE4(v17, v18);

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  sub_10001021C(&v32);
}

void sub_10039A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  sub_10039C58C(va);
  sub_10001021C(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_10039A374(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10039A398(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039A3B0(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E558();
  }

  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v16 = 0;
  v17 = 0;
  (***(a1 + 56))(&v12);
  Registry::getNotificationSenderFactory(&v14, v12);
  v2 = v14;
  (***(a1 + 56))(&v8);
  Registry::getTimerService(&v10, v8);
  (*(*v2 + 168))(&v16, v2, &v10, a1 + 24);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v16)
  {
    v3 = objc_opt_new();
    v4 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v3 setObject:v4 forKey:@"kCrossTransferEndpoint"];

    v5 = [NSNumber numberWithBool:1];
    [v3 setObject:v5 forKey:@"kIsCodeError"];

    v6 = v16;
    v7 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    (*(*v6 + 40))(v6, &v7);
    sub_10001021C(&v7);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_10039A600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);

  v5 = *(v3 - 40);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10039A69C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E58C();
  }
}

void sub_10039A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039A750(uint64_t a1, uint64_t *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  (***(a1 + 56))(&v15);
  Registry::getNotificationSenderFactory(&v17, v15);
  v4 = v17;
  (***(a1 + 56))(&v11);
  Registry::getTimerService(&v13, v11);
  (*(*v4 + 168))(v19, v4, &v13, a1 + 24);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v19[0])
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKey:@"kCrossTransferTimeout"];

    v9 = v19[0];
    v10 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v9 + 40))(v9, &v10);
    sub_10001021C(&v10);
  }

  sub_10039831C(a1);
}

void sub_10039A960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);

  v5 = *(v3 - 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10039AA04(uint64_t a1, uint64_t a2)
{
  sub_1007D1B2C(a1, a2);

  sub_1007D114C(a1, 1, 0);
}

void sub_10039AA44(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 136;
  sub_1007D1B2C(a1 - 136, a2);

  sub_1007D114C(v2, 1, 0);
}

uint64_t sub_10039AA88@<X0>(const void **a1@<X1>, uint64_t a2@<X8>)
{
  v46 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  *v42 = 0u;
  v43 = 0u;
  sub_100010024(&v41, a1);
  sub_10091F7B4(&v41, v42);
  sub_10001021C(&v41);
  v3 = +[NSMutableArray array];
  memset(&v40, 0, sizeof(v40));
  sub_10000501C(&v40, "");
  v4 = *(&v43 + 1);
  if (*(&v43 + 1) != &v44)
  {
    v37 = a2;
    while (1)
    {
      v5 = *(v4 + 353);
      v6 = objc_alloc_init(ObjcSimTransferItem);
      v7 = v4 + 2;
      if (*(v4 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = [NSString stringWithUTF8String:v7, v37];
      [(ObjcSimTransferItem *)v6 setIccid:v8];

      v9 = v4 + 13;
      if (*(v4 + 127) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      [(ObjcSimTransferItem *)v6 setMcc:v10];

      v11 = v4 + 8;
      if (*(v4 + 151) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      [(ObjcSimTransferItem *)v6 setMnc:v12];

      v13 = v4 + 19;
      if (*(v4 + 175) < 0)
      {
        v13 = *v13;
      }

      v14 = [NSString stringWithUTF8String:v13];
      [(ObjcSimTransferItem *)v6 setGid1:v14];

      v15 = v4 + 11;
      if (*(v4 + 199) < 0)
      {
        v15 = *v15;
      }

      v16 = [NSString stringWithUTF8String:v15];
      [(ObjcSimTransferItem *)v6 setGid2:v16];

      v17 = v4 + 25;
      if (*(v4 + 223) < 0)
      {
        v17 = *v17;
      }

      v18 = [NSString stringWithUTF8String:v17];
      [(ObjcSimTransferItem *)v6 setCarrierName:v18];

      v19 = v4 + 31;
      if (*(v4 + 271) < 0)
      {
        v19 = *v19;
      }

      v20 = [NSString stringWithUTF8String:v19];
      [(ObjcSimTransferItem *)v6 setPhoneNumber:v20];

      v21 = v4 + 14;
      if (*(v4 + 247) < 0)
      {
        v21 = *v21;
      }

      v22 = [NSString stringWithUTF8String:v21];
      [(ObjcSimTransferItem *)v6 setImsi:v22];

      v23 = v4 + 17;
      if (*(v4 + 295) < 0)
      {
        v23 = *v23;
      }

      v24 = [NSString stringWithUTF8String:v23];
      [(ObjcSimTransferItem *)v6 setImei:v24];

      [(ObjcSimTransferItem *)v6 setError:0];
      if ((*(v4 + 319) & 0x8000000000000000) != 0)
      {
        if (*(v4 + 38))
        {
LABEL_25:
          v25 = objc_alloc_init(ObjcSimTransferProfileTokenInfo);
          v26 = v4 + 37;
          if (*(v4 + 319) < 0)
          {
            v26 = *v26;
          }

          v27 = [NSString stringWithUTF8String:v26];
          [(ObjcSimTransferProfileTokenInfo *)v25 setToken:v27];

          v28 = v4 + 20;
          if (*(v4 + 343) < 0)
          {
            v28 = *v28;
          }

          v29 = [NSString stringWithUTF8String:v28];
          [(ObjcSimTransferProfileTokenInfo *)v25 setTokenExpiry:v29];

          [(ObjcSimTransferItem *)v6 setToken:v25];
        }
      }

      else if (*(v4 + 319))
      {
        goto LABEL_25;
      }

      std::string::operator=(&v40, (v4 + 56));
      [v3 addObject:v6];

      v30 = *(v4 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v4 + 2);
          v32 = *v31 == v4;
          v4 = v31;
        }

        while (!v32);
      }

      v4 = v31;
      if (v31 == &v44)
      {
        v33 = v5 == 2;
        a2 = v37;
        goto LABEL_38;
      }
    }
  }

  v33 = 0;
LABEL_38:
  v34 = [v3 copy];
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *&v40.__r_.__value_.__l.__data_;
    *&v39 = *(&v40.__r_.__value_.__l + 2);
  }

  *a2 = v33;
  *(a2 + 8) = __p;
  v35 = v39;
  v39 = 0u;
  __p = 0u;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  if (SBYTE7(v39) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  sub_10039C608(&v43 + 8, v44);
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  return sub_100111C2C(v45);
}

void sub_10039AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10039C5C8(&a23);
  sub_100111C2C(&a31);
  _Unwind_Resume(a1);
}

void sub_10039B028(uint64_t a1)
{
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v12 = 0u;
  v11 = 0;
  sub_10092DD0C(v12, &v11);
  v2 = [NSString stringWithUTF8String:sub_100649C38(0)];
  v3 = v11;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I send ListReq", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_10039B23C;
  v7[3] = &unk_101E47470;
  sub_100004AA0(buf, (a1 + 8));
  v6 = *buf;
  v5 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
    v8 = a1;
    v9 = v6;
    v10 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = a1;
    v9 = *buf;
    v10 = 0;
  }

  sub_100A84468(a1, v2, v3, 0, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_10001021C(&v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }
}

void sub_10039B1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, const void *a16, __int16 a17, char a18, char a19)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_10001021C(&a16);
  sub_100265450(&a17);
  _Unwind_Resume(a1);
}

void sub_10039B23C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v9;
  v56 = v10;
  v14 = v11;
  v15 = v12;
  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I get ListReq response inError=%@", buf, 0xCu);
  }

  if (v14)
  {
    sub_1003991D4(v16, 3);
  }

  theDict = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  sub_1000167D4((v16 + 96), "ObjcSimTransferStartSessionResponse", 0x23uLL);
  if (!CFDictionaryContainsKey(theDict, @"CrossPlatformTransferListReqErr"))
  {
    v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    sub_10039AA88(&theDict, v63);
    v55 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
    [(ObjcSimTransferStartSessionResponse *)v55 setMsgError:0];
    v23 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
    [(ObjcSimTransferStartSessionResponse *)v55 setSessionID:v23];

    v24 = (v16 + 184);
    if (*(v16 + 207) < 0)
    {
      v24 = *v24;
    }

    v25 = [NSString stringWithUTF8String:v24];
    [(ObjcSimTransferStartSessionResponse *)v55 setVersion:v25];

    [(ObjcSimTransferStartSessionResponse *)v55 setItems:v65];
    v62 = 0;
    (***(v16 + 56))(buf);
    ServiceMap = Registry::getServiceMap(*&buf[0]);
    v27 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    *&v58 = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, &v58);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
LABEL_37:
        (*(*v34 + 152))(&v62, v34);
        if ((v35 & 1) == 0)
        {
          sub_100004A34(v33);
        }

        if (*(&buf[0] + 1))
        {
          sub_100004A34(*(&buf[0] + 1));
        }

        [(ObjcSimTransferStartSessionResponse *)v55 setFriendlyDeviceName:v62];
        v43 = [(ObjcSimTransferStartSessionResponse *)v55 items];
        v44 = [v43 objectAtIndexedSubscript:0];
        v45 = *(v16 + 88);
        *(v16 + 88) = v44;

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v46 = v65;
        v47 = [v46 countByEnumeratingWithState:&v58 objects:buf count:16];
        if (v47)
        {
          v48 = *v59;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v59 != v48)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v58 + 1) + 8 * i);
              v51 = [v50 iccid];
              v52 = v51;
              sub_10000501C(&__p, [v51 UTF8String]);
              sub_10017695C(v16 + 224, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v47 = [v46 countByEnumeratingWithState:&v58 objects:buf count:16];
          }

          while (v47);
        }

        v53 = *(v16 + 40);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(*(v16 + 224), (v16 + 232), ",", 1, &__p);
          v54 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *v67 = 136315138;
          v68 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Reply Session Response selected iccids=%s", v67, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10039BB74(v16, v55);
        sub_100005978(&v62);

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63[1]);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(theDict, @"CrossPlatformTransferListReqErr");
  v19 = Value;
  LODWORD(buf[0]) = 0;
  if (Value)
  {
    v20 = CFGetTypeID(Value);
    if (v20 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v19, v21);
    }

    v22 = buf[0];
  }

  else
  {
    v22 = 0;
  }

  v36 = *(v16 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I ListReq error: send Session Response With error", buf, 2u);
  }

  switch(v22)
  {
    case 2:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:5];
      v41 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v41];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

      goto LABEL_34;
    case 1:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:6];
      v40 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v40];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

      goto LABEL_34;
    case 0:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:7];
      v38 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v38];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

LABEL_34:
      v42 = [NSString stringWithUTF8String:v39];
      [(ObjcSimTransferStartSessionResponse *)v37 setVersion:v42];

      sub_10039BB74(v16, v37);
      *(v16 + 120) = [(ObjcSimTransferStartSessionResponse *)v37 msgError];

      break;
  }

LABEL_58:
  sub_10001021C(&theDict);
}

void sub_10039B998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_10001021C(&a36);

  _Unwind_Resume(a1);
}

uint64_t sub_10039BB40(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10039BB64(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039BB74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 168) encodeStartSessionResponse:a2];
  sub_10039BBEC(a1, v3, @"ObjcSimTransferStartSessionResponse");
}

void sub_10039BBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 152);
  sub_10000501C(__p, [v6 UTF8String]);
  (*(*v7 + 24))(v7, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, [v6 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = *__p;
  *(a1 + 112) = v18;
  sub_100004AA0(__p, (a1 + 8));
  v9 = __p[0];
  v8 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = *(a1 + 144);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_10039C05C;
  v12[3] = &unk_101E474A8;
  v14 = a1;
  v15 = v9;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v6;
  v13 = v11;
  [v10 send:v5 completion:v12];

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_10039BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10039BDEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RequestID's %@ becomes available", buf, 0xCu);
  }

  if (*(a1 + 248) == 1 && [v3 isEqualToString:qword_101FBA2B0])
  {
    *(a1 + 248) = 0;
    v5 = *(a1 + 216);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I RequestID's handler becomes available", buf, 2u);
    }

    *buf = 0uLL;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }
}

void sub_10039BFB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039BFE4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 168) encodeProfileResponse:a2];
  sub_10039BBEC(a1, v3, @"ObjcSimTransferProfileResponse");
}

void sub_10039C05C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 40);
        if (v3)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = a1[4];
            v10 = [v3 localizedDescription];
            sub_10176E5C0(v9, v10, &v12, v8);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[4];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Send %@ Success", &v12, 0xCu);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10039C170(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

void sub_10039C190(uint64_t a1)
{
  v2 = [*(a1 + 72) objectForKeyedSubscript:qword_101FBA2B0];

  if (v2)
  {
    memset(buf, 0, sizeof(buf));
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Start Timer to wait requestID handler available", buf, 2u);
  }

  (***(a1 + 56))(&v9);
  Registry::getTimerService(&v11, v9);
  sub_10000501C(__p, "requestID.waiting");
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10039C49C;
  v6[3] = &unk_101E26008;
  v6[4] = a1;
  v4 = objc_retainBlock(v6);
  *buf = *__p;
  v15 = v8;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  ctu::TimerService::createOneShotTimerImpl();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*buf);
  }

  sub_10039C50C((a1 + 208), &v13);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  *(a1 + 248) = 1;
}

void sub_10039C424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24)
{
  v27 = *(v25 - 72);
  *(v25 - 72) = 0;
  if (v27)
  {
    sub_10176B574(v27);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10039C49C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Time out, reply session error", v3, 2u);
  }

  sub_1003991D4(v1, 3);
}

void *sub_10039C50C(void *a1, uint64_t *a2)
{
  sub_10039D0F4(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_10039C558(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1017FABD0[a2 - 1];
  }
}

uint64_t sub_10039C58C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10039C5C8(uint64_t a1)
{
  sub_10039C608(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10039C608(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10039C608(a1, *a2);
    sub_10039C608(a1, a2[1]);
    sub_10039C664((a2 + 4));

    operator delete(a2);
  }
}

void sub_10039C664(uint64_t a1)
{
  sub_10027DF50(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10039C750(void *a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E47568;
  sub_10039C848((a1 + 3), a2, a3, a4);
}

void sub_10039C7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10039C848(uint64_t a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10039773C(a1, v6, &v11, v10);
}

void sub_10039C8DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10039C974(void *a1, __int128 *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E475B8;
  sub_10039CA6C(a1 + 3, a2, a3);
  return a1;
}

void sub_10039C9F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E475B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10039CA6C(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_100A07A54(a1, &v5, *a3);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  return a1;
}

void sub_10039CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10039CAD4(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10039CB54(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_10039CB54(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10039CBE4();
  }

  return result;
}

void sub_10039CC80(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10039CD0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E47608;
  a2[1] = v2;
  return result;
}

void sub_10039CD38(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last received event: %s timeout in %d", &v9, 0x12u);
  }

  sub_10039A750(v5, a2);
}

uint64_t sub_10039CE10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039CE5C(uint64_t a1)
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

uint64_t sub_10039CF4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E47698;
  a2[1] = v2;
  return result;
}

void sub_10039CF78(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = v3[5];
  if (*a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176E61C(v2, v4);
    }

    v3[15] = 3;
    sub_1003991D4(v3, 3);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I create bootstrap plan transfer success", v5, 2u);
  }

  sub_10039C190(v3);
}

uint64_t sub_10039D028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10039D074(uint64_t **a1)
{
  v1 = a1;
  sub_10039B028(**a1);
  operator delete();
}

uint64_t *sub_10039D0F4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_10039D178(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10039D1B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10039D1E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10039D220(uint64_t **a1)
{
  v1 = a1;
  sub_10039B028(**a1);
  operator delete();
}

void sub_10039D2A0(uint64_t **a1)
{
  v1 = **a1;
  [*(v1 + 144) stop:{sub_1007D1B8C(v1), a1}];
  (***(v1 + 56))(&v12);
  ServiceMap = Registry::getServiceMap(v12);
  v3 = ServiceMap;
  v4 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v5 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
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
  v14[0] = off_101E47768;
  v14[3] = v14;
  (*(*v10 + 1016))(v10, 1, v14);
  sub_10039D5CC(v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  operator delete();
}

void sub_10039D484(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  sub_10039D5CC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  if (a3)
  {
    sub_100004A34(a3);
  }

  operator delete();
}

uint64_t sub_10039D580(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E477D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039D5CC(uint64_t a1)
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

BOOL sub_10039D64C(__CFArray *a1, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    CFArrayAppendValue(a1, cf);
  }

  sub_100DA3324(&v5);
  return cf != 0;
}

void sub_10039D6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039D6BC(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = *v6;
  v11 = *v6;
  if (cf)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  sub_100DA3324(&v11);
  sub_100DA3324(&v12);
  return v9;
}

void sub_10039D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

void sub_10039D770(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10039D78C()
{
  v0 = objc_autoreleasePoolPush();
  qword_101FBA2B0 = [NSString stringWithUTF8String:sub_100649C38(0)];

  objc_autoreleasePoolPop(v0);
}

double sub_10039D7EC(uint64_t a1)
{
  *a1 = off_101E477F8;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_10039D820(uint64_t a1)
{
  *a1 = off_101E477F8;
  v4 = *(a1 + 48);
  v2 = (a1 + 48);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    sub_100140988(a1 + 40, v5);
  }

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    sub_100140988(a1 + 32, v6);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7)
  {
    sub_100140988(a1 + 24, v7);
  }

  sub_100140928((a1 + 16), 0);
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    sub_100140988(a1 + 8, v8);
  }

  PB::Base::~Base(a1);
}

void sub_10039D8E0(uint64_t a1)
{
  sub_10039D820(a1);

  operator delete();
}

uint64_t sub_10039D918(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *result = off_101E477F8;
  *(result + 40) = 0u;
  *(result + 64) = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = *(a2 + 56);
    *(result + 64) |= 1u;
    *(result + 56) = v3;
    v2 = *(a2 + 64);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 60);
    *(result + 64) |= 2u;
    *(result + 60) = v4;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039DC40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "activationStatus", *(a1 + 56));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    PB::TextFormatter::format(this, "associationType", *(a1 + 60));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "eid", v5);
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10039DD4C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_83;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            operator new();
          }

          if (v22 == 8)
          {
            operator new();
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 64) |= 2u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v41 = 0;
              v42 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v43 = v32 - v33;
              if (!v17)
              {
                v43 = 0;
              }

              v44 = (v34 + v33);
              v45 = v33 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_78;
                }

                v46 = *v44;
                *(this + 1) = v45;
                v37 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
LABEL_65:
                  LODWORD(v37) = 0;
                  goto LABEL_78;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(this + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_78:
            *(a1 + 60) = v37;
            goto LABEL_53;
          }

          if (v22 == 6)
          {
            operator new();
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          operator new();
        }

        if (v22 == 4)
        {
          *(a1 + 64) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v47 = 0;
            v48 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v49 = v23 - v24;
            if (!v17)
            {
              v49 = 0;
            }

            v50 = (v25 + v24);
            v51 = v24 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_81;
              }

              v52 = *v50;
              *(this + 1) = v51;
              v28 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              --v49;
              ++v50;
              ++v51;
              v14 = v48++ > 8;
              if (v14)
              {
LABEL_73:
                LODWORD(v28) = 0;
                goto LABEL_81;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_81:
          *(a1 + 56) = v28;
          goto LABEL_53;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_83:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_10039E2C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 64);
  if (v5)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 4u);
    v5 = *(v3 + 64);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 60), 5u);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 40))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_10039E3AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_10027F75C(a4);
  std::string::operator=(*(a4 + 16), (a1 + 144));
  sub_10039FB08(a4);
  std::string::operator=(*(a4 + 24), (a1 + 168));
  sub_10039FB7C(a4);
  std::string::operator=(*(a4 + 32), (a1 + 16));
  sub_10039FBF0(a4);
  std::string::operator=(*(a4 + 56), (a1 + 96));
  sub_10039FC64(a4);
  std::string::operator=(*(a4 + 64), (a1 + 120));
  sub_10039FCD8(a4);
  std::string::operator=(*(a4 + 88), (a1 + 40));
  v8 = *(a1 + 90);
  v9 = *(a4 + 128);
  *(a4 + 128) = v9 | 8;
  *(a4 + 123) = v8;
  v10 = *(a1 + 89);
  *(a4 + 128) = v9 | 0x18;
  *(a4 + 124) = v10;
  v11 = *(a1 + 92);
  *(a4 + 128) = v9 | 0x1C;
  *(a4 + 122) = v11;
  v12 = *(a1 + 91);
  *(a4 + 128) = v9 | 0x1E;
  *(a4 + 121) = v12;
  sub_10039FD4C(a4);
  result = std::string::operator=(*(a4 + 96), (a1 + 64));
  if (a2)
  {
    *(a4 + 128) |= 1u;
    *(a4 + 120) = 1;
  }

  if (*a3 == 1)
  {
    sub_10039FDC0(a4);
    std::string::operator=(*(a4 + 72), (a3 + 8));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039FE34(a4);
    std::string::operator=(*(a4 + 48), (a3 + 32));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039F9C0(a4);
    std::string::operator=(*(a4 + 40), (a3 + 56));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039EFFC(a4);
    std::string::operator=(*(a4 + 8), (a3 + 80));
    result = sub_100B47B18(a4);
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    if (*(a3 + 177) == 1)
    {
      v14 = *(a4 + 112);
      v15 = *(a3 + 176);
      *(v14 + 92) |= 0x10u;
      *(v14 + 84) = v15;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 208) == 1)
    {
      v16 = *(a4 + 112);
      sub_10039FC64(v16);
      result = std::string::operator=(*(v16 + 64), (a3 + 184));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 240) == 1)
    {
      v17 = *(a4 + 112);
      sub_10039F9C0(v17);
      result = std::string::operator=(*(v17 + 40), (a3 + 216));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 304) == 1)
    {
      v18 = *(a4 + 112);
      sub_10039FB7C(v18);
      result = std::string::operator=(*(v18 + 32), (a3 + 280));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 336) == 1)
    {
      v19 = *(a4 + 112);
      sub_10039FBF0(v19);
      result = std::string::operator=(*(v19 + 56), (a3 + 312));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 433) == 1)
    {
      v20 = *(a4 + 112);
      v21 = *(a3 + 432);
      *(v20 + 92) |= 0x40u;
      *(v20 + 89) = v21;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    v22 = *(a4 + 112);
    v23 = *(a3 + 376);
    *(v22 + 92) |= 2u;
    *(v22 + 72) = v23;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v24 = *(a4 + 112);
    v25 = *(a3 + 377);
    *(v24 + 92) |= 0x20u;
    *(v24 + 88) = v25;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v26 = *(a4 + 112);
    v27 = *(a3 + 378);
    *(v26 + 92) |= 8u;
    *(v26 + 80) = v27;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v28 = *(a3 + 375);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a3 + 360);
    }

    if (v28)
    {
      v29 = *(a4 + 112);
      sub_10039FE34(v29);
      result = std::string::operator=(*(v29 + 48), (a3 + 352));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 408) == 1)
    {
      v30 = *(a4 + 112);
      sub_10027F75C(v30);
      result = std::string::operator=(*(v30 + 16), (a3 + 384));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 424) == 1)
    {
      v31 = *(a4 + 112);
      v32 = *(a3 + 416);
      *(v31 + 92) |= 1u;
      *(v31 + 8) = v32;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 345) == 1 && *(a3 + 344) - 1 <= 2)
    {
      v33 = dword_1017FAC50[(*(a3 + 344) - 1)];
      v34 = *(a4 + 112);
      *(v34 + 92) |= 4u;
      *(v34 + 76) = v33;
    }
  }

  return result;
}

BOOL sub_10039E7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    std::string::operator=((a2 + 16), v3);
    v7 = *(a1 + 88);
    if (v7)
    {
      std::string::operator=((a2 + 40), v7);
    }

    v8 = *(a1 + 96);
    if (v8)
    {
      std::string::operator=((a2 + 64), v8);
    }

    *(a2 + 90) = *(a1 + 123) & (*(a1 + 128) << 28 >> 31);
    *(a2 + 89) = *(a1 + 124) & (*(a1 + 128) << 27 >> 31);
    *(a2 + 92) = *(a1 + 122) & (*(a1 + 128) << 29 >> 31);
    *(a2 + 91) = *(a1 + 121) & (*(a1 + 128) << 30 >> 31);
    v9 = *(a1 + 16);
    if (v9)
    {
      std::string::operator=((a2 + 144), v9);
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      std::string::operator=((a2 + 168), v10);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      std::string::operator=((a2 + 96), v11);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      std::string::operator=((a2 + 120), v12);
    }

    v13 = *(a1 + 72);
    if (v13)
    {
      std::string::operator=(a3, v13);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      std::string::operator=((a3 + 24), v14);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      std::string::operator=((a3 + 48), v15);
    }

    v16 = *(a1 + 8);
    if (v16)
    {
      std::string::operator=((a3 + 72), v16);
    }

    v17 = *(a1 + 112);
    if (v17)
    {
      if ((*(v17 + 92) & 0x10) != 0)
      {
        *(a3 + 168) = *(v17 + 84) | 0x100;
        v17 = *(a1 + 112);
      }

      v18 = *(v17 + 64);
      if (v18)
      {
        sub_1001696A4((a3 + 176), v18);
        v17 = *(a1 + 112);
      }

      v19 = *(v17 + 40);
      if (v19)
      {
        sub_1001696A4((a3 + 208), v19);
        v17 = *(a1 + 112);
      }

      v20 = *(v17 + 32);
      if (v20)
      {
        sub_1001696A4((a3 + 272), v20);
        v17 = *(a1 + 112);
      }

      v21 = *(v17 + 56);
      if (v21)
      {
        sub_1001696A4((a3 + 304), v21);
        v17 = *(a1 + 112);
      }

      v22 = *(v17 + 92);
      if ((v22 & 2) != 0)
      {
        *(a3 + 368) = *(v17 + 72);
        v22 = *(v17 + 92);
        if ((v22 & 0x20) == 0)
        {
LABEL_35:
          if ((v22 & 8) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else if ((*(v17 + 92) & 0x20) == 0)
      {
        goto LABEL_35;
      }

      *(a3 + 369) = *(v17 + 88);
      if ((*(v17 + 92) & 8) == 0)
      {
LABEL_37:
        v23 = *(v17 + 48);
        if (v23)
        {
          std::string::operator=((a3 + 344), v23);
          v17 = *(a1 + 112);
        }

        v24 = *(v17 + 16);
        if (v24)
        {
          sub_1001696A4((a3 + 376), v24);
          v17 = *(a1 + 112);
        }

        v25 = *(v17 + 92);
        if ((v25 & 0x40) != 0)
        {
          *(a3 + 424) = *(v17 + 89) | 0x100;
          v17 = *(a1 + 112);
          v25 = *(v17 + 92);
          if ((v25 & 1) == 0)
          {
LABEL_43:
            if ((v25 & 0x40) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_51;
          }
        }

        else if ((*(v17 + 92) & 1) == 0)
        {
          goto LABEL_43;
        }

        *(a3 + 408) = *(v17 + 8);
        *(a3 + 416) = 1;
        v17 = *(a1 + 112);
        v25 = *(v17 + 92);
        if ((v25 & 0x40) == 0)
        {
LABEL_44:
          if ((v25 & 4) == 0)
          {
            return v3 != 0;
          }

LABEL_52:
          v26 = *(v17 + 76);
          if (v26 <= 2)
          {
            *(a3 + 336) = 0x10301010102uLL >> (16 * v26);
          }

          return v3 != 0;
        }

LABEL_51:
        *(a3 + 424) = *(v17 + 89) | 0x100;
        v17 = *(a1 + 112);
        if ((*(v17 + 92) & 4) == 0)
        {
          return v3 != 0;
        }

        goto LABEL_52;
      }

LABEL_36:
      *(a3 + 370) = *(v17 + 80);
      goto LABEL_37;
    }
  }

  return v3 != 0;
}

void sub_10039EA60(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3] == 3;
  v8 = *(a4 + 88);
  *(a4 + 88) = v8 | 0x20;
  *(a4 + 84) = v7;
  v9 = a1[3];
  *(a4 + 88) = v8 | 0x21;
  *(a4 + 64) = v9;
  v10 = a1[1];
  *(a4 + 88) = v8 | 0x29;
  *(a4 + 76) = v10;
  sub_10039EF40(a4);
  PB::Data::assign(*(a4 + 8), a1 + 16, a1 + 32);
  v11 = *a1;
  *(a4 + 88) |= 0x10u;
  *(a4 + 80) = v11;
  v12 = *(a1 + 55);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 5);
  }

  if (v12)
  {
    sub_10039FBF0(a4);
    std::string::operator=(*(a4 + 56), (a1 + 8));
  }

  if (*a3 == 1 && *(a3 + 8) == a1[1])
  {
    v13 = *(a3 + 39);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 24);
    }

    if (v13)
    {
      sub_10039F9C0(a4);
      std::string::operator=(*(a4 + 40), (a3 + 16));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 63) < 0)
    {
      v14 = *(a3 + 48);
      if (!v14)
      {
        goto LABEL_18;
      }

      sub_100005F2C(&__p, *(a3 + 40), v14);
    }

    else
    {
      if (!*(a3 + 63))
      {
        goto LABEL_18;
      }

      __p = *(a3 + 40);
      v18 = *(a3 + 56);
    }

    sub_10039EFA8(a4, &__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

LABEL_18:
  v15 = a1[2];
  *(a4 + 88) |= 4u;
  *(a4 + 72) = v15;
  if (*(a1 + 80) == 1)
  {
    v16 = *(a1 + 7);
    if (v16 != *(a1 + 8))
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_100F11F00(v19, v16);
      sub_1001405D4();
    }
  }
}

void sub_10039EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10039EF40(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

__n128 sub_10039EFA8(uint64_t a1, __n128 *a2)
{
  sub_10039FE34(a1);
  v4 = *(a1 + 48);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t sub_10039EFFC(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 88) & 2) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4 || *(v4 + 8) != 16)
  {
    return 0;
  }

  *(a2 + 16) = **v4;
  v7 = *(a1 + 76) & (*(a1 + 88) << 28 >> 31);
  *(a2 + 4) = v7;
  *a3 = v7;
  *(a2 + 12) = 0;
  if (*(a1 + 88))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    if ((*(a1 + 88) & 0x20) == 0)
    {
      goto LABEL_13;
    }

    if (*(a1 + 84))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  *(a2 + 12) = v8;
LABEL_13:
  *a2 = *(a1 + 80) & (*(a1 + 88) << 27 >> 31);
  if ((*(a1 + 88) & 4) != 0)
  {
    v11 = *(a1 + 72);
    if ((v11 - 1) >= 3)
    {
      v11 = 0;
    }

    *(a2 + 8) = v11;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = *(v12 + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    if (v13)
    {
      std::string::operator=((a2 + 32), v12);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = *(v14 + 23);
    if (v15 < 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15)
    {
      std::string::operator=((a3 + 8), v14);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17)
    {
      std::string::operator=((a3 + 32), v16);
    }
  }

  if (*(a1 + 24) == *(a1 + 16))
  {
    if (*(a2 + 80) == 1)
    {
      *&v26 = a2 + 56;
      sub_100112120(&v26);
      *(a2 + 80) = 0;
    }

    return 1;
  }

  v26 = 0uLL;
  *&v27 = 0;
  sub_100319BEC(a2 + 56, &v26);
  *&v54[0] = &v26;
  sub_100112120(v54);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (v18 == v19)
  {
    return 1;
  }

  v20 = v18 + 8;
  do
  {
    v21 = *(v20 - 8);
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
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
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = sub_10039E7C4(v21, v54, &v26);
    if (v9)
    {
      v53 = *(v21 + 32);
      v22 = sub_10031B9CC(a3 + 56, v53);
      sub_10031612C(v22 + 56, &v26);
      v23 = *(a2 + 64);
      if (v23 >= *(a2 + 72))
      {
        v24 = sub_10039FEA8((a2 + 56), v54);
      }

      else
      {
        sub_100F11F00(*(a2 + 64), v54);
        v24 = v23 + 216;
        *(a2 + 64) = v23 + 216;
      }

      *(a2 + 64) = v24;
    }

    else if (*(a2 + 80) == 1)
    {
      v53 = (a2 + 56);
      sub_100112120(&v53);
      *(a2 + 80) = 0;
    }

    sub_100111ED0(&v26);
    sub_100E3A5D4(v54);
    v25 = v20 != v19 && v9;
    v20 += 8;
  }

  while (v25);
  return v9;
}

BOOL sub_10039F3B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    sub_10027F75C(a2);
    std::string::operator=(*(a2 + 16), a1);
    v5 = *(a1 + 24);
    *(a2 + 40) |= 1u;
    *(a2 + 32) = v5;
    sub_10039EFFC(a2);
    std::string::operator=(*(a2 + 8), (a1 + 32));
    sub_10039FB08(a2);
    std::string::operator=(*(a2 + 24), (a1 + 56));
    v6 = *(a1 + 80);
    *(a2 + 40) |= 2u;
    *(a2 + 36) = v6;
  }

  return v2 != 0;
}

uint64_t sub_10039F468(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  std::string::operator=(this, v3);
  result = cellplan::deserializeRemotePlanSimSubscriptionStatus();
  if (result)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      std::string::operator=((this + 32), v6);
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      std::string::operator=((this + 56), v7);
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a1 + 36);
    }

    return 1;
  }

  return result;
}

void sub_10039F4E8(std::string *__str, uint64_t a2, std::string *this)
{
  std::string::operator=(this, __str);
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_10016C728(&this[1], v5);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v6 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176E6AC();
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    sub_10016C728(&this[2].__r_.__value_.__s.__data_[8], v7);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v8 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10176E6E0();
    }
  }

  if ((*(a2 + 68) & 8) != 0)
  {
    v10 = *(a2 + 60);
    if (v10 >= 0xA)
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v9 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10176E714();
    }

    LOBYTE(v10) = 0;
  }

  this[3].__r_.__value_.__s.__data_[16] = v10;
  if ((*(a2 + 68) & 2) != 0)
  {
    HIDWORD(this[5].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    this[5].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v11 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10176E748();
    }
  }

  if ((*(a2 + 68) & 0x10) != 0)
  {
    HIDWORD(this[5].__r_.__value_.__r.__words[1]) = *(a2 + 64);
    this[5].__r_.__value_.__s.__data_[8] = 1;
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v12 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10176E77C();
    }
  }
}

std::string *sub_10039F6D4(std::string *result, uint64_t a2)
{
  v3 = result;
  size = HIBYTE(result[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = result[3].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_10027F75C(a2);
    result = std::string::operator=(*(a2 + 16), v3 + 3);
  }

  v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80u) != 0)
  {
    v5 = v3->__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    sub_10039FB7C(a2);
    result = std::string::operator=(*(a2 + 32), v3);
  }

  v6 = HIBYTE(v3[1].__r_.__value_.__r.__words[2]);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v3[1].__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    sub_10039FB08(a2);
    result = std::string::operator=(*(a2 + 24), v3 + 1);
  }

  v7 = HIBYTE(v3[2].__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) != 0)
  {
    v7 = v3[2].__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    sub_10039EFFC(a2);
    v8 = *(a2 + 8);

    return std::string::operator=(v8, v3 + 2);
  }

  return result;
}

std::string *sub_10039F7C0(std::string *this, void *a2)
{
  v3 = this;
  v4 = a2[2];
  if (v4)
  {
    this = std::string::operator=(this + 3, v4);
  }

  v5 = a2[4];
  if (v5)
  {
    this = std::string::operator=(v3, v5);
  }

  v6 = a2[3];
  if (v6)
  {
    this = std::string::operator=(v3 + 1, v6);
  }

  v7 = a2[1];
  if (v7)
  {

    return std::string::operator=(v3 + 2, v7);
  }

  return this;
}

std::string *sub_10039F83C(std::string *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = std::string::operator=((a2 + 8), (result + 32));
    *(a2 + 64) = v3->__r_.__value_.__r.__words[0];
    data = v3[3].__r_.__value_.__s.__data_[15];
    if (data < 0)
    {
      data = v3[3].__r_.__value_.__l.__data_;
    }

    if (data)
    {
      sub_10039FE34(a2);
      result = std::string::operator=(*(a2 + 48), (v3 + 64));
    }

    v5 = v3[4].__r_.__value_.__s.__data_[15];
    if (v5 < 0)
    {
      v5 = v3[4].__r_.__value_.__l.__data_;
    }

    if (v5)
    {
      sub_10039F9C0(a2);
      sub_10039F9C0(a2);
      result = std::string::operator=(*(a2 + 40), (v3 + 88));
    }

    v6 = v3[5].__r_.__value_.__s.__data_[15];
    if (v6 < 0)
    {
      v6 = v3[5].__r_.__value_.__l.__data_;
    }

    if (v6)
    {
      sub_10039FBF0(a2);
      result = std::string::operator=(*(a2 + 56), (v3 + 112));
    }

    v7 = v3[6].__r_.__value_.__s.__data_[15];
    if (v7 < 0)
    {
      v7 = v3[6].__r_.__value_.__l.__data_;
    }

    if (v7)
    {
      sub_100633DEC(a2);
      result = std::string::operator=((*(a2 + 32) + 16), (v3 + 136));
      v8 = v3[7].__r_.__value_.__s.__data_[15];
      if (v8 < 0)
      {
        v8 = v3[7].__r_.__value_.__l.__data_;
      }

      if (v8)
      {
        v9 = *(a2 + 32);
        sub_10039EFFC(v9);
        result = std::string::operator=(*(v9 + 8), (v3 + 160));
      }

      *(*(a2 + 32) + 40) = v3[7].__r_.__value_.__s.__data_[16];
    }

    v10 = v3[2].__r_.__value_.__s.__data_[8];
    if (v3[2].__r_.__value_.__s.__data_[8])
    {
      v11 = *(a2 + 84) | 1;
      *(a2 + 84) = v11;
      *(a2 + 72) = v10;
    }

    else
    {
      v11 = *(a2 + 84);
    }

    v12 = v3[7].__r_.__value_.__s.__data_[17];
    *(a2 + 84) = v11 | 4;
    *(a2 + 80) = v12;
    v13 = v3[2].__r_.__value_.__s.__data_[9];
    if (v3[2].__r_.__value_.__s.__data_[9])
    {
      *(a2 + 84) = v11 | 6;
      *(a2 + 76) = v13;
    }
  }

  return result;
}

uint64_t sub_10039F9C0(uint64_t result)
{
  if (!*(result + 40))
  {
    operator new();
  }

  return result;
}

std::string *sub_10039FA34(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a2 + 32), (a1 + 8));
  *a2 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    result = std::string::operator=((a2 + 64), v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    result = std::string::operator=((a2 + 88), v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    result = std::string::operator=((a2 + 112), v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    result = std::string::operator=((a2 + 136), (v8 + 16));
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    if (v10)
    {
      result = std::string::operator=((a2 + 160), v10);
      v9 = *(a1 + 32);
    }

    *(a2 + 184) = *(v9 + 40);
  }

  *(a2 + 56) = (*(a1 + 84) << 31 >> 31) & *(a1 + 72);
  v11 = *(a1 + 84);
  if ((v11 & 4) != 0)
  {
    *(a2 + 185) = *(a1 + 80);
    v11 = *(a1 + 84);
  }

  *(a2 + 57) = *(a1 + 76) & (v11 << 30 >> 31);
  return result;
}

uint64_t sub_10039FB08(uint64_t result)
{
  if (!*(result + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FB7C(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FBF0(uint64_t result)
{
  if (!*(result + 56))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FC64(uint64_t result)
{
  if (!*(result + 64))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FCD8(uint64_t result)
{
  if (!*(result + 88))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FD4C(uint64_t result)
{
  if (!*(result + 96))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FDC0(uint64_t result)
{
  if (!*(result + 72))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FE34(uint64_t result)
{
  if (!*(result + 48))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10039FEA8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100112600(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  sub_100F11F00(216 * v2, a2);
  v15 = 216 * v2 + 216;
  v7 = a1[1];
  v8 = 216 * v2 + *a1 - v7;
  sub_10039FFF0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003A0120(&v13);
  return v12;
}

void sub_10039FFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003A0120(va);
  _Unwind_Resume(a1);
}

void sub_10039FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v9;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      v10 = *(v6 + 88);
      *(a4 + 92) = *(v6 + 92);
      *(a4 + 88) = v10;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      v15 = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 192) = v15;
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      v6 += 216;
      a4 += 216;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_100E3A5D4(v5) + 216;
    }
  }
}

uint64_t sub_1003A0120(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    sub_100E3A5D4(i - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003A0170(_BYTE *a1, __int128 *a2)
{
  v4 = *a1;
  v3 = a1 + 8;
  if (v4 == 1)
  {

    sub_10031612C(v3, a2);
  }

  else
  {
    sub_10027FEF8(v3, a2);
    *a1 = 1;
  }
}

void sub_1003A01E8(MegadomeClientInterface *a1)
{
  MegadomeClientInterface::~MegadomeClientInterface(a1);

  operator delete();
}

void sub_1003A0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A049C(&v5, a4);
  rest::write_rest_value();
  operator new();
}

void sub_1003A03E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A0464(uint64_t a1)
{
  sub_1001E3CE4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1003A049C(uint64_t a1, uint64_t a2)
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

void *sub_1003A051C(void *a1)
{
  *a1 = off_101E47888;
  sub_1001E3CE4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003A056C(void *a1)
{
  *a1 = off_101E47888;
  sub_1001E3CE4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1003A065C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A067C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E47888;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1003A0904((a2 + 3), a1 + 24);
}

void sub_1003A06E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A0700(void *a1)
{
  sub_1003A099C(a1 + 8);

  operator delete(a1);
}

void sub_1003A073C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v9 = 0;
  v10 = 0uLL;
  rest::MegadomeEventsQueryResult::MegadomeEventsQueryResult(&v9);
  rest::read_rest_value(&v9, &object, v3);
  v4 = v9;
  v7 = v9;
  v8 = v10;
  v10 = 0uLL;
  v9 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1001E2A18(v11, v4, v8, 0xEEEEEEEEEEEEEEEFLL * ((v8 - v7) >> 4));
  v5 = *(a1 + 48);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, v11);
  v12 = v11;
  sub_1001E26C4(&v12);
  v11[0] = &v7;
  sub_1001E26C4(v11);
  v11[0] = &v9;
  sub_1001E26C4(v11);
  xpc_release(object);
}

void sub_1003A0850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 40) = &a11;
  sub_1001E26C4((v17 - 40));
  *(v17 - 40) = &a14;
  sub_1001E26C4((v17 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A08B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A0904(uint64_t a1, uint64_t a2)
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

void sub_1003A099C(uint64_t a1)
{
  sub_1001E3CE4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1003A0B1C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
    sub_100004A34(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A0B48(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "ent.pnr");
  ctu::OsLogLogger::OsLogLogger(v10, &v9);
  ctu::OsLogLogger::OsLogLogger((a1 + 16), v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v9);
  *(a1 + 24) = *a2;
  v6 = a2[1];
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a3;
  v7 = a3[1];
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  Registry::getNotificationSenderFactory(&v9, *(a1 + 24));
  (*(*v9.var0 + 128))(v9.var0);
  if (v9.var1.fRef)
  {
    sub_100004A34(v9.var1.fRef);
  }

  return a1;
}

void sub_1003A0C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v13 = v11[6];
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = v11[4];
  if (v14)
  {
    sub_100004A34(v14);
  }

  ctu::OsLogLogger::~OsLogLogger((v11 + 2));
  v15 = v11[1];
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_1003A0CC4(void *a1)
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
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_1003A0D20(uint64_t a1, uint64_t a2)
{
  object = 0;
  sub_1003A0FF8(a1, a2, &object);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    if (*(**(a1 + 40) + 52) == 1)
    {
      *buf = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v11 = xpc_null_create();
      sub_10002A37C(83, buf, &v11);
      xpc_release(v11);
      xpc_release(*buf);
    }

    v6 = *(a1 + 56);
    v3 = *(a1 + 16);
    v7 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v10 = PersonalityInfo::logPrefix(**(a1 + 40));
      *buf = 136315394;
      *&buf[4] = v10;
      v14 = 2080;
      v15 = " ";
      v5 = "#W %s%sFailed to get PNR Notification interface.";
      goto LABEL_4;
    }

    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = PersonalityInfo::logPrefix(*v8);
      *buf = 136315394;
      *&buf[4] = v9;
      v14 = 2080;
      v15 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sIssuing PNR Response received", buf, 0x16u);
      v6 = *(a1 + 56);
      v8 = *(a1 + 40);
    }

    PersonalityInfo::uuid(buf, *v8);
    (*(*v6 + 24))(v6, *buf, &object);
    sub_1000475BC(buf);
  }

  else
  {
    v3 = *(a1 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 40));
      *buf = 136315394;
      *&buf[4] = v4;
      v14 = 2080;
      v15 = " ";
      v5 = "#W %s%sFailed to create PNR notification dictionary";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
    }
  }

LABEL_16:
  xpc_release(object);
}

void sub_1003A0FF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
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
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  if (*(a2 + 32) == *(a2 + 24))
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 40));
      sub_10176E800(v13, &v48);
    }
  }

  else
  {
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      v10 = *(a1 + 16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 40));
        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = asString();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding HTTP header for PNR signature version %s", buf, 0x20u);
      }

      v12 = *(a1 + 48);
      v36[0] = *(a1 + 40);
      v36[1] = v12;
      v36[2] = 0;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10082F9FC(a1 + 24, v36, *(a2 + 48));
    }

    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      v14 = PersonalityInfo::logPrefix(**(a1 + 40));
      sub_10176E7B0(v14, &v48);
    }
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *v37 = *buf;
  v38 = 0;
  v30 = xpc_string_create(v37);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *__p = *buf;
  v35 = *&buf[16];
  v15 = *buf;
  if ((buf[23] & 0x80u) == 0)
  {
    v15 = __p;
  }

  v32 = a3;
  v33 = v15;
  sub_10000F688(&v32, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v30);
  v30 = 0;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v17 = ServiceMap;
  if (v18 < 0)
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

  std::mutex::lock(ServiceMap);
  *buf = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (!v22)
  {
    std::mutex::unlock(v17);
    return;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v17);
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v23);
    if (!v24)
    {
LABEL_65:
      sub_100004A34(v23);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v17);
    if (!v24)
    {
      return;
    }
  }

  v47 = 0;
  v45 = 0u;
  *v46 = 0u;
  *v43 = 0u;
  *v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*v24 + 192))(buf, v24, **(a1 + 40) + 24);
  v25 = BYTE7(v42);
  if (SBYTE7(v42) < 0)
  {
    v25 = v41[1];
  }

  if (v25)
  {
    if ((SBYTE7(v42) & 0x80u) == 0)
    {
      v26 = v41;
    }

    else
    {
      v26 = v41[0];
    }

    v28 = xpc_string_create(v26);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v37[0] = 0;
    v37[1] = 0;
    v38 = 0;
    ctu::cf::assign();
    *__p = *v37;
    v35 = v38;
    v27 = __p;
    if (v38 < 0)
    {
      v27 = v37[0];
    }

    v32 = a3;
    v33 = v27;
    sub_10000F688(&v32, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v28);
    v28 = 0;
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  if (SHIBYTE(v44[0]) < 0)
  {
    operator delete(v43[0]);
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v23)
  {
    goto LABEL_65;
  }
}

void sub_1003A191C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, xpc_object_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A1BD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003A26D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1003A371C(v18);
  if (LOBYTE(STACK[0x218]) == 1)
  {
    sub_100111C2C(va);
  }

  _Unwind_Resume(a1);
}

void sub_1003A2D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_1003A371C(v55);
  sub_100111C2C(&a54);

  _Unwind_Resume(a1);
}

void sub_1003A32EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (v56 < 0)
  {
    operator delete(__p);
  }

  sub_100111C2C(&a54);
  _Unwind_Resume(a1);
}

void sub_1003A34E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100280100(va);
  sub_1006E1008(v2 - 128);
  PB::Writer::~Writer((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1003A36A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = __p;
  __p = 0;
  if (v14)
  {
    sub_1000DF0B0(&__p, v14);
  }

  __cxa_guard_abort(&qword_101FBA2C8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003A371C(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 200);
    sub_100112048(&v3);
    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    sub_10027E6B0(a1 + 32);
    if (*a1 == 1)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  return a1;
}

void sub_1003A379C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003A3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v10 - 89) < 0)
  {
    operator delete(*(v10 - 112));
  }

  std::ios::~ios();
  if (*(v10 - 65) < 0)
  {
    operator delete(*(v10 - 88));
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

std::string *sub_1003A3C64(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v26 = 0u;
  memset(v25, 0, sizeof(v25));
  sub_1003A4080(v25, a2, a3, a4, a6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  if (sub_1003A3E20(v25, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!sub_1003A3E20(v25, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v15 = *(&v29 + 1);
        for (i = v29; i != v15; ++i)
        {
          std::string::push_back(a1, *i);
        }
      }

      a1 = sub_1001D0800(v26, a1, a5, &a5[v11], v6);
      v12 = *(&v30 + 1);
      v13 = v31;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      sub_1003A3EBC(v25);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v13)
      {
        std::string::push_back(a1, *v12++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return a1;
}

void sub_1003A3DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003A3E20(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_1003A4508(v4, v7) == 0;
  }

  return v10;
}

uint64_t sub_1003A3EBC(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__p = 0u;
    v11 = sub_1001D0D18(v9, v8, v10, __p, v5 | 0x80u);
    sub_1003A4174(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v14 = sub_1001D0D18(v13, v7, v12, __p, v4 | 0x860u);
  sub_1003A4174(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_1003A4060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 24) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  sub_1001D0D18(a4, a2, a3, __p, a5);
  sub_1003A4174(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1003A4148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A4174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_1003A42F8(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

void sub_1003A42F8(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1003A4334(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_1003A4334(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1003A44B0(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1003A44B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003A4508(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1001CD6B4(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_1001CD6B4(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_1003A4624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A4640(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
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
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
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
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E90C(v17);
    }

    *a4 = 0;
    a4[80] = 0;
    if (v16)
    {
      return;
    }

LABEL_37:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  v21 = [NSData nonOwningDataWithBytes:v19 length:v20];
  v22 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Decoding client attestation XML document using BlastDoor", buf, 2u);
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  (*(*v15 + 16))(&v31, v15);
  *__p = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  *buf = 0;
  *&buf[8] = &v33;
  (*(*v31 + 48))(&v26);
  sub_1003A5C24(buf);
  v23 = v33;
  if (v33)
  {
    v24 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E850(v23, v24);
    }
  }

  else
  {
    if (BYTE8(v30))
    {
      v35 = 0;
      v36 = 0;
      sub_1003A5AC0();
    }

    v25 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E8C8(v25);
    }
  }

  *a4 = 0;
  a4[80] = 0;
  if (BYTE8(v30) == 1)
  {
    if (SBYTE7(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[1]);
    }

    *buf = &v26;
    sub_1003A5904(buf);
  }

  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_1003A5A8C(&v33);

  if ((v16 & 1) == 0)
  {
    goto LABEL_37;
  }
}

void sub_1003A4B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, const void *a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_1003A584C(&a23);
  v39 = *(v37 - 96);
  if (v39)
  {
    sub_100004A34(v39);
  }

  sub_1003A58A0(&a9);
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_1003A5A8C(&a22);

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1003A4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  __src = 0u;
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  sub_10000C320(&v32);
  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    v10 = *(a3 + 47);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 32);
    }

    if (v10)
    {
      sub_10000501C(__p, "--boundary");
      sub_100917DBC(&v32);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10000501C(__p, "Content-Disposition: form-data; name=applecertificate");
      sub_100917DBC(&v32);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10000501C(__p, "Content-Type: text/plain");
      sub_100917DBC(&v32);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100917E0C(&v32);
      v11 = sub_10000C030(v33);
      v12 = sub_10000C030(v11);
      v13 = sub_10000C030(v12);
      v14 = sub_10000C030(v13);
      v15 = sub_10000C030(v14);
      v16 = sub_10000C030(v15);
      sub_10000C030(v16);
      sub_100917E0C(&v32);
    }
  }

  if (*(a2 + 48) == 1)
  {
    v17 = *(a2 + 23);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *(a2 + 47);
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 32);
      }

      if (v18)
      {
        sub_10000501C(__p, "--boundary");
        sub_100917DBC(&v32);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = 0;
        __p[1] = 0;
        v31 = 0;
        std::to_string(&v28, *a4);
        v19 = std::string::insert(&v28, 0, "Content-Disposition: form-data; name=client_authenticity_result_", 0x41uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v29, "", 1uLL);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v31 = v21->__r_.__value_.__r.__words[2];
        *__p = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        sub_100917DBC(&v32);
        sub_10000501C(&v29, "Content-Type: text/plain");
        sub_100917DBC(&v32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        sub_100917E0C(&v32);
        sub_10000501C(&v29, "{");
        sub_100917DBC(&v32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v23 = std::string::append(&v28, ",", 2uLL);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        sub_100917DBC(&v32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v25 = std::string::append(&v28, "", 1uLL);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        sub_100917DBC(&v32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        sub_10000501C(&v29, "}");
        sub_100917DBC(&v32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v27 = *(a5 + 23);
        if ((v27 & 0x80u) != 0)
        {
          v27 = *(a5 + 8);
        }

        if (v27)
        {
          sub_10000501C(&v29, "--boundary");
          sub_100917DBC(&v32);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          sub_10000501C(&v29, "Content-Disposition: form-data; name=as_temp_token");
          sub_100917DBC(&v32);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          sub_10000501C(&v29, "Content-Type: text/plain");
          sub_100917DBC(&v32);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          sub_100917E0C(&v32);
          sub_10000C030(v33);
          sub_100917E0C(&v32);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  *&v28.__r_.__value_.__l.__data_ = 0uLL;
  sub_1003A5AC0();
}

void sub_1003A5688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1003A584C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1003A58A0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v3 = a1;
    sub_1003A5904(&v3);
  }

  return a1;
}

void sub_1003A5904(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_1003A5988(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003A5988(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_1003A59D0(&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1003A59D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003A5A24(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003A5A24(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 4;
    if (*(v5 - 8) == 1)
    {
      v6 = *v4;
      if (*v4)
      {
        *(v5 - 3) = v6;
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

const void **sub_1003A5A8C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1003A5B2C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E47990;
  sub_100A221C8(a1 + 3, a2);
  return a1;
}

void sub_1003A5BA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1003A5C24(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_1003A5A8C(&v6);
  return a1;
}

const void **sub_1003A5C7C(const void **result)
{
  if (*result)
  {
    sub_10005C7A4(&v2, result);
    v1 = v2;
    sub_100005978(&v2);
    return [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  }

  return result;
}

const void **sub_1003A5CF0()
{
  result = CUTWeakLinkClass();
  if (result)
  {
    v1 = [objc_msgSend(result "preferencesURL")];
    cf = v1;
    if (v1)
    {
      CFRetain(v1);
      v2 = cf;
      CFRetain(cf);
      sub_1003A5C7C(&v2);
      sub_100005978(&v2);
    }

    return sub_100005978(&cf);
  }

  return result;
}

void sub_1003A5D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_1003A5D8C(dispatch_object_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A5EB4();
}

void sub_1003A5E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A5FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A60B0(void *a1, NSObject **a2, void *a3, void *a4)
{
  *a1 = &off_101E9F2C0;
  v8 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, off_101FB1CA8);
  sub_1003A6294(v8, a2, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E479E0;
  a1[6] = off_101E47BA8;
  a1[7] = *a3;
  v9 = a3[1];
  a1[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  a1[9] = *a4;
  v10 = a4[1];
  a1[10] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  sub_10032E870();
}