void sub_10134EE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, xpc_object_t object, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, xpc_object_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  sub_100641DD4((v75 - 160));
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  xpc_release(object);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_100005978(&a54);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

void sub_10134F408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10134F508(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10134F66C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I =====DumpState for PhoneNumberRegistrationController======", buf, 2u);
  }

  subscriber::makeSimSlotRange();
  v3 = v22;
  if (v22 != v23)
  {
    do
    {
      if (v24(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v23);
    while (v3 != v23)
    {
      v4 = *v3;
      v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Slot: %s PNR request cookies:", buf, 0xCu);
      }

      v30 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_10164F640(*(a1 + 72), v4, buf);
      if (*(&v30 + 1))
      {
        v7 = 0;
        do
        {
          v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(*&buf[8] + 8 * ((v7 + v30) / 0xAA)) + 24 * ((v7 + v30) % 0xAA);
            if (*(v9 + 23) < 0)
            {
              v9 = *v9;
            }

            *v25 = 134218242;
            v26 = v7;
            v27 = 2080;
            v28 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cookie %zu = %s", v25, 0x16u);
          }

          ++v7;
        }

        while (v7 < *(&v30 + 1));
      }

      sub_100641DD4(buf);
      do
      {
        ++v3;
      }

      while (v3 != v23 && (v24(*v3) & 1) == 0);
    }
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 152);
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PNR support status cache: %zu elements", buf, 0xCu);
  }

  v12 = *(a1 + 136);
  if (v12 != (a1 + 144))
  {
    do
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12[4];
        v15 = *(v12 + 55);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = v12[5];
        }

        if (v16 >= 0)
        {
          v14 = (v12 + 4);
        }

        if (v15)
        {
          v17 = v14;
        }

        else
        {
          v17 = "<invalid>";
        }

        v18 = asString();
        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I  | %s: %s", buf, 0x16u);
      }

      v19 = v12[1];
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
          v20 = v12[2];
          v21 = *v20 == v12;
          v12 = v20;
        }

        while (!v21);
      }

      v12 = v20;
    }

    while (v20 != (a1 + 144));
  }
}

void sub_10134FA68(uint64_t a1)
{
  sub_10134FAA0(a1);

  operator delete();
}

uint64_t sub_10134FAA0(uint64_t a1)
{
  *a1 = off_101F30F38;
  sub_1010DD940(*(a1 + 144));
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

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

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PhoneNumberRegistrationControllerInterface::~PhoneNumberRegistrationControllerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10134FB70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134FBC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134FC04(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10134FC30(ServiceManager::Service *this)
{
  *this = off_101F310B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10134FC8C(ServiceManager::Service *this)
{
  *this = off_101F310B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10134FD0C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10134FD50(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10134C33C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10134C33C(v4, 0);
}

uint64_t sub_10134FDF4(uint64_t result, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = *(result + 8);
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

  return result;
}

void sub_10134FF38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134FF78(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134FFB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10006DCAC(result + 64, *(result + 72));
    sub_101350034(v1 + 40, *(v1 + 48));
    sub_100077CD4(v1 + 16, *(v1 + 24));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_101350034(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_101350034(a1, *a2);
    sub_101350034(a1, a2[1]);
    sub_100641DD4(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *sub_101350090(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 120));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_1013500D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013500F4(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 56));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/events/dump_state");
  operator new();
}

void sub_101350208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1013502DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F311E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101350314(void *a1)
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

uint64_t sub_10135035C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013503A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1013503E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_101350420(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_101350498(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v1 + 3);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling phone number registration send %x", buf, 8u);
  }

  v6 = *(v2 + 72);
  if (!v6)
  {
LABEL_44:
    operator delete();
  }

  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  sub_10164E744(v6, *(v1 + 3), v26);
  v7 = HIBYTE(v27);
  if (v27 < 0)
  {
    v7 = v26[1];
  }

  if (!v7)
  {
    v10 = *v3;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v1 + 3);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Token for message id %x not found", buf, 8u);
    }

    goto LABEL_42;
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *v24 = *buf;
  v25 = *&buf[16];
  memset(buf, 0, 24);
  ctu::cf::assign();
  *__p = *buf;
  v23 = *&buf[16];
  v21 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v21 = v9;
    if (!v9)
    {
      v12 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
LABEL_17:
    xpc_release(v9);
    v19 = xpc_BOOL_create(*(v1 + 16));
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    v13 = v24;
    if (v25 < 0)
    {
      v13 = v24[0];
    }

    *buf = &v21;
    *&buf[8] = v13;
    sub_10000F688(buf, &v19, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v19);
    v19 = 0;
    if (v27 >= 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v26[0];
    }

    v17 = xpc_string_create(v14);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v15 = __p;
    if (v23 < 0)
    {
      v15 = __p[0];
    }

    *buf = &v21;
    *&buf[8] = v15;
    sub_10000F688(buf, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
    if (*(v1 + 2) == 1)
    {
      *buf = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v16 = xpc_null_create();
      sub_10002A37C(90, buf, &v16);
      xpc_release(v16);
      xpc_release(*buf);
    }

    v29 = 0;
    memset(buf, 0, sizeof(buf));
    buf[0] = *(v1 + 16);
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(&buf[8], v26[0], v26[1]);
    }

    else
    {
      *&buf[8] = *v26;
      *&buf[24] = v27;
    }

    LODWORD(v29) = 0;
    (***(v2 + 104))(*(v2 + 104), *(v1 + 2), buf);
    if (buf[31] < 0)
    {
      operator delete(*&buf[8]);
    }

    xpc_release(v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

LABEL_42:
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    goto LABEL_44;
  }

  v12 = xpc_null_create();
LABEL_16:
  v21 = v12;
  goto LABEL_17;
}

void sub_1013508D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  xpc_release(object);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL sub_101350A00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  sub_100010024(&theDict, v1[1]);
  v3 = *v1[2];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  v5 = CTGreenTeaOsLogHandle;
  if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got PNR response SMS", &buf, 2u);
  }

  v6 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10134C67C(&buf, theDict);
    v8 = (SBYTE7(v81) & 0x80u) == 0 ? &buf : buf;
    *valuePtr = 136315138;
    *&valuePtr[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Incoming response description: (#pnr) %s ", valuePtr, 0xCu);
    if (SBYTE7(v81) < 0)
    {
      operator delete(buf);
    }
  }

  CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationVersionKey);
  buf = 0uLL;
  *&v81 = 0;
  ctu::cf::assign();
  v73 = buf;
  v74 = v81;
  if (sub_10164F6E8(*(v2 + 72), &v73))
  {
    v71 = 0uLL;
    v72 = 0;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationCookieKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    v71 = buf;
    v72 = v81;
    v9 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v9 = BYTE7(v81);
    }

    if (!v9 || (sub_10164E80C(*(v2 + 72), &v71, v3) & 1) == 0)
    {
      v27 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v28 = &v71;
        if (v72 < 0)
        {
          v28 = v71;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Response cookie %s doesn't match any stored cookies:", &buf, 0xCu);
      }

      v81 = 0u;
      v82 = 0u;
      buf = 0u;
      v59 = v3;
      sub_10164F640(*(v2 + 72), v3, &buf);
      v29 = *(&v82 + 1);
      if (*(&v82 + 1))
      {
        v30 = 0;
        do
        {
          v31 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(*(&buf + 1) + 8 * ((v30 + v82) / 0xAA)) + 24 * ((v30 + v82) % 0xAA);
            if (*(v32 + 23) < 0)
            {
              v32 = *v32;
            }

            *valuePtr = 134218242;
            *&valuePtr[4] = v30;
            *&valuePtr[12] = 2082;
            *&valuePtr[14] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#E Cookie %zu = %{public}s", valuePtr, 0x16u);
            v29 = *(&v82 + 1);
          }

          ++v30;
        }

        while (v30 < v29);
      }

      sub_100641DD4(&buf);
      v25 = 0;
      v26 = 2;
      LODWORD(v3) = v59;
      goto LABEL_140;
    }

    v69[0] = 0;
    v69[1] = 0;
    v70 = 0;
    v10 = kCTPhoneNumberRegistrationSignatureKey;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationSignatureKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    *v69 = buf;
    v70 = v81;
    v11 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v11 = BYTE7(v81);
    }

    if (!v11)
    {
      v33 = *v6;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#E Signature is empty", &buf, 2u);
      }

      v25 = 0;
      v26 = 4;
      goto LABEL_138;
    }

    v67[0] = 0;
    v67[1] = 0;
    v68 = 0;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationNumberKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    *v67 = buf;
    v68 = v81;
    v12 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v12 = BYTE7(v81);
    }

    if (!v12)
    {
      v34 = *v6;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#E Incoming response has empty phone number", &buf, 2u);
      }

      v25 = 0;
      v26 = 5;
      goto LABEL_136;
    }

    v65 = 0;
    v66 = 0;
    v64 = 0;
    ServiceMap = Registry::getServiceMap(*(v2 + 56));
    v14 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    *&buf = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &buf);
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
LABEL_52:
        (*(*v21 + 8))(&v64, v21, v3);
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        if (v64 && isReal())
        {
          *valuePtr = 0;
          *&valuePtr[8] = 0;
          v35 = Registry::getServiceMap(*(v2 + 56));
          sub_1013519A8(v35, valuePtr);
          v36 = *valuePtr;
          if (*valuePtr)
          {
            CSIPhoneNumber::CSIPhoneNumber();
            (*(*v36 + 312))(v36, &v64, &buf);
            sub_10034F8E8(&buf);
          }

          if (*&valuePtr[8])
          {
            sub_100004A34(*&valuePtr[8]);
          }

          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          __src = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          buf = 0u;
          v37 = Registry::getServiceMap(*(v2 + 56));
          sub_1005A589C(v37, valuePtr);
          (*(**valuePtr + 192))(&buf);
          if (*&valuePtr[8])
          {
            sub_100004A34(*&valuePtr[8]);
          }

          v38 = BYTE7(v84);
          if (SBYTE7(v84) < 0)
          {
            v38 = *(&__src + 1);
          }

          if (v38)
          {
            if (SBYTE7(v84) < 0)
            {
              sub_100005F2C(__dst, __src, *(&__src + 1));
            }

            else
            {
              *__dst = __src;
              v62 = v84;
            }

            if (SHIBYTE(v62) < 0)
            {
              sub_100005F2C(&__p, __dst[0], __dst[1]);
            }

            else
            {
              __p = *__dst;
              v77 = v62;
            }

            v75 = 0;
            if (SHIBYTE(v77) < 0)
            {
              sub_100005F2C(valuePtr, __p, *(&__p + 1));
            }

            else
            {
              *valuePtr = __p;
              *&valuePtr[16] = v77;
            }

            value = 0;
            if (ctu::cf::convert_copy())
            {
              v39 = v75;
              v75 = value;
              *v79 = v39;
              sub_100005978(v79);
            }

            if ((valuePtr[23] & 0x80000000) != 0)
            {
              operator delete(*valuePtr);
            }

            object = v75;
            v75 = 0;
            sub_100005978(&v75);
            if (SHIBYTE(v77) < 0)
            {
              operator delete(__p);
            }

            *valuePtr = v66;
            v66 = object;
            object = 0;
            sub_100005978(valuePtr);
            sub_100005978(&object);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          sub_100FB0A00(&buf);
        }

        __p = 0uLL;
        ctu::TextConverter::TextConverter(&__p);
        if (v70 >= 0)
        {
          v40 = v69;
        }

        else
        {
          v40 = v69[0];
        }

        if (v70 >= 0)
        {
          v41 = HIBYTE(v70);
        }

        else
        {
          v41 = v69[1];
        }

        ctu::TextConverter::setSource(&__p, v40, v41);
        ctu::TextConverter::pushConversion();
        buf = 0uLL;
        *&v81 = 0;
        ctu::TextConverter::readChars(&buf, &__p, 0x7FFFFFFFuLL);
        value = 0;
        if ((SBYTE7(v81) & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        if ((SBYTE7(v81) & 0x80u) == 0)
        {
          v43 = BYTE7(v81);
        }

        else
        {
          v43 = *(&buf + 1);
        }

        value = CFDataCreate(kCFAllocatorDefault, p_buf, v43);
        if (value)
        {
          v75 = 0;
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
          v75 = MutableCopy;
          v25 = MutableCopy != 0;
          if (MutableCopy)
          {
            CFDictionarySetValue(MutableCopy, v10, value);
            CFDictionarySetValue(v75, kCTPhoneNumberRegistrationResponseStatusKey, kCTPhoneNumberRegistrationResponseStatusSuccess);
            if (v66)
            {
              CFDictionarySetValue(v75, kCTPhoneNumberRegistrationResponseLabelID, v66);
            }

            v45 = v75;
            *v79 = 0;
            *valuePtr = 1;
            v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, valuePtr);
            v47 = kCTPhoneNumberRegistrationMechanismKey;
            if (v46)
            {
              v48 = *v79;
              *v79 = v46;
              *valuePtr = v48;
              sub_100029A48(valuePtr);
            }

            object = *v79;
            *v79 = 0;
            sub_100029A48(v79);
            CFDictionarySetValue(v45, v47, object);
            sub_100029A48(&object);
            v49 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
            {
              sub_10134C67C(valuePtr, v75);
              v51 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
              *v79 = 136315138;
              *&v79[4] = v51;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Modified response description: %s", v79, 0xCu);
              if ((valuePtr[23] & 0x80000000) != 0)
              {
                operator delete(*valuePtr);
              }
            }

            object = 0;
            ctu::cf_to_xpc(valuePtr, v75, v50);
            v52 = *valuePtr;
            object = *valuePtr;
            if (*valuePtr && xpc_get_type(*valuePtr) == &_xpc_type_dictionary)
            {
              xpc_retain(v52);
            }

            else
            {
              object = xpc_null_create();
            }

            xpc_release(*valuePtr);
            if (v3 == 1)
            {
              v55 = *v6;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                sub_10134C67C(valuePtr, v75);
                v56 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
                *v79 = 136315138;
                *&v79[4] = v56;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Modified response description: %s", v79, 0xCu);
                if ((valuePtr[23] & 0x80000000) != 0)
                {
                  operator delete(*valuePtr);
                }
              }

              *valuePtr = object;
              if (object)
              {
                xpc_retain(object);
              }

              else
              {
                *valuePtr = xpc_null_create();
              }

              *v79 = xpc_null_create();
              sub_10002A37C(83, valuePtr, v79);
              xpc_release(*v79);
              xpc_release(*valuePtr);
            }

            v57 = *(v2 + 40);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Issuing PNR Response received", valuePtr, 2u);
            }

            (*(**(v2 + 104) + 16))(*(v2 + 104), v3, &object);
            xpc_release(object);
          }

          else
          {
            v54 = *v6;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#E Failed to convert response from immutable -> mutable", valuePtr, 2u);
            }
          }

          sub_1000296E0(&v75);
        }

        else
        {
          v53 = *v6;
          v25 = 0;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#E Failed to convert signature byte blob to CFData", valuePtr, 2u);
            v25 = 0;
          }
        }

        sub_10002D760(&value);
        if (SBYTE7(v81) < 0)
        {
          operator delete(buf);
        }

        ctu::TextConverter::~TextConverter(&__p);
        if (v65)
        {
          sub_100004A34(v65);
        }

        sub_100005978(&v66);
        v26 = 0;
LABEL_136:
        if (SHIBYTE(v68) < 0)
        {
          operator delete(v67[0]);
        }

LABEL_138:
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69[0]);
        }

LABEL_140:
        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71);
        }

        goto LABEL_142;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_52;
  }

  v23 = *v6;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = &v73;
    if (v74 < 0)
    {
      v24 = v73;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Response version %s doesn't match", &buf, 0xCu);
  }

  v25 = 0;
  v26 = 3;
LABEL_142:
  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  *&v81 = sub_10119D738;
  *(&v81 + 1) = &unk_101F16AF0;
  LODWORD(v82) = v3;
  BYTE4(v82) = v26;
  sub_10119D58C(0x800E1);
  sub_10001021C(&theDict);
  return v25;
}

void sub_101351744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, uint64_t a23, uint64_t a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, const void *a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, xpc_object_t a61, uint64_t a62, void *a63)
{
  sub_100005978(&a53);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100FB0A00(&a63);
  if (a24)
  {
    sub_100004A34(a24);
  }

  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_10001021C(&a14);
  _Unwind_Resume(a1);
}

void sub_1013519A8(std::mutex *this@<X0>, void *a2@<X8>)
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

uint64_t sub_101351A6C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_101351AA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = **(v1 + 16);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = sub_10134D098(v2, v3, &object);
  xpc_release(object);
  return v5;
}

uint64_t *sub_101351B34(uint64_t **a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v5 = v1[1];
  v3 = (v1 + 1);
  v4 = v5;
  if (*(v5 + 48))
  {
    v6 = sub_10134C6FC(v2, v3);
    if (v6)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(*v3);
        v9 = *v3 + 24;
        v10 = *v9;
        v11 = *(*v3 + 47);
        v12 = *(*v3 + 4);
        v13 = asStringBool(v6 < 0x100u);
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        if ((v11 & 0x80u) == 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = v10;
        }

        *buf = 136315650;
        *&buf[4] = v8;
        v26 = 2080;
        if (!v14)
        {
          v15 = "<invalid>";
        }

        v27 = v15;
        v28 = 2080;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s updatePNRSupport for %s to %s", buf, 0x20u);
      }

      v16 = *(v2 + 104);
      PersonalityInfo::uuid(buf, *v3);
      (*(*v16 + 40))(v16, *buf, v6 < 0x100u);
      sub_1000475BC(buf);
    }
  }

  else
  {
    v17 = *(v2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(v4);
      v19 = *v3 + 24;
      v20 = *(*v3 + 47);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(*v3 + 4);
      }

      if (v21 < 0)
      {
        v19 = *(*v3 + 3);
      }

      if (!v20)
      {
        v19 = "<invalid>";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v26 = 2080;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s updatePNRSupport for %s called on non-active persona", buf, 0x16u);
    }
  }

  sub_1000049E0(&v24);
  return sub_1000049E0(&v23);
}

void sub_101351D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  sub_1000475BC(&a11);
  sub_1000049E0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101351D94(uint64_t *a1)
{
  v1 = *a1;
  v61 = a1;
  v62 = v1;
  v2 = *v1;
  v64 = 0;
  v65 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v12 = 1;
LABEL_9:
  v13 = v1 + 8;
  (**v10)(&v64, v10, v1 + 8);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = v64;
  v15 = *(v2 + 40);
  if (v64)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(v14);
      v17 = v64 + 24;
      v18 = *(v64 + 3);
      v19 = *(v64 + 47);
      v20 = *(v64 + 4);
      v21 = asStringBool(*(v1 + 32));
      if ((v19 & 0x80u) == 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      if ((v19 & 0x80u) == 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v68 = 2080;
      if (!v22)
      {
        v23 = "<invalid>";
      }

      v69 = v23;
      v70 = 2080;
      v71 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s forgetPNRSupport for %s to %s", buf, 0x20u);
    }

    v24 = sub_100007A6C(v2 + 136, (v1 + 8));
    if (v2 + 144 != v24)
    {
      v25 = v24;
      v26 = *(v24 + 8);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        v32 = v24;
        do
        {
          v27 = v32[2];
          v33 = *v27 == v32;
          v32 = v27;
        }

        while (!v33);
      }

      if (*(v2 + 136) == v24)
      {
        *(v2 + 136) = v27;
      }

      v34 = *(v2 + 144);
      --*(v2 + 152);
      sub_100018288(v34, v25);
      if (*(v25 + 55) < 0)
      {
        operator delete(*(v25 + 32));
      }

      operator delete(v25);
    }

    v35 = *(v2 + 56);
    if (*(v1 + 32) == 1)
    {
      v36 = Registry::getServiceMap(v35);
      v37 = v36;
      if (v38 < 0)
      {
        v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
        v40 = 5381;
        do
        {
          v38 = v40;
          v41 = *v39++;
          v40 = (33 * v40) ^ v41;
        }

        while (v41);
      }

      std::mutex::lock(v36);
      *buf = v38;
      v42 = sub_100009510(&v37[1].__m_.__sig, buf);
      if (v42)
      {
        v44 = v42[3];
        v43 = v42[4];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v37);
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v43);
          v45 = 0;
LABEL_59:
          (*(*v44 + 32))(v44, v13, @"PNRStatus", @"PNRCtrl", 0, 2);
          if ((v45 & 1) == 0)
          {
            sub_100004A34(v43);
          }

          v56 = *(v2 + 104);
          PersonalityInfo::uuid(buf, v64);
          (*(*v56 + 40))(v56, *buf, 0);
          sub_1000475BC(buf);
          goto LABEL_69;
        }
      }

      else
      {
        v44 = 0;
      }

      std::mutex::unlock(v37);
      v43 = 0;
      v45 = 1;
      goto LABEL_59;
    }

    v46 = Registry::getServiceMap(v35);
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
    *buf = v48;
    v52 = sub_100009510(&v47[1].__m_.__sig, buf);
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
        goto LABEL_64;
      }
    }

    else
    {
      v54 = 0;
    }

    std::mutex::unlock(v47);
    v53 = 0;
    v55 = 1;
LABEL_64:
    v57 = v64;
    v66 = 0;
    *buf = 1;
    v58 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v58)
    {
      v66 = v58;
      *buf = 0;
      sub_100029A48(buf);
      v59 = v66;
    }

    else
    {
      v59 = 0;
    }

    v66 = 0;
    sub_100029A48(&v66);
    (*(*v54 + 16))(v54, v57 + 24, @"PNRStatus", v59, @"PNRCtrl", 0, 2, 0, v61, v62, v59);
    sub_100029A48(&v63);
    if ((v55 & 1) == 0)
    {
      sub_100004A34(v53);
    }

    goto LABEL_69;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v28 = *(v1 + 31);
    v29 = (v28 & 0x80u) != 0;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v1 + 16);
    }

    if (v29)
    {
      v30 = *(v1 + 8);
    }

    else
    {
      v30 = (v1 + 8);
    }

    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing info of %s to forgetPNRSupport", buf, 0xCu);
  }

LABEL_69:
  if (v65)
  {
    sub_100004A34(v65);
  }

  sub_1003023A8(&v62);
  return sub_1000049E0(&v61);
}

void sub_101352340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, const void *a15)
{
  sub_1000475BC(&a15);
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void stewie::StewieConnectionAssistant::create(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (!*a1)
  {
    sub_1000208E8();
    v4 = qword_101FCA948;
    if (!os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "timerService must be provided";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
    goto LABEL_7;
  }

  if (*a2)
  {
    operator new();
  }

  sub_1000208E8();
  v4 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v5 = "sbServices must be provided";
    goto LABEL_9;
  }

LABEL_7:
  *a3 = 0;
  a3[1] = 0;
}

uint64_t sub_101352B74(uint64_t a1)
{
  *a1 = off_101F31388;
  *(a1 + 48) = off_101F31490;
  v2 = *(a1 + 856);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 776);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 760) == 1)
  {
    sub_1013542A4((a1 + 720));
  }

  if (*(a1 + 624) == 1)
  {
    v5 = *(a1 + 616);
    if (v5)
    {
      sub_100004A34(v5);
    }

    if (*(a1 + 520) == 1)
    {
      sub_1000475BC((a1 + 464));
    }

    if (*(a1 + 407) < 0)
    {
      operator delete(*(a1 + 384));
    }

    v6 = *(a1 + 368);
    *(a1 + 368) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  sub_10135C5A4((a1 + 328), 0);
  v7 = *(a1 + 320);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10135C558((a1 + 216), 0);
  v11 = *(a1 + 208);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(a1 + 120);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    sub_100004A34(v20);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101352D64(uint64_t a1)
{
  sub_101352B74(a1);

  operator delete();
}

void sub_101352D9C(uint64_t a1)
{
  sub_101352B74(a1 - 48);

  operator delete();
}

void sub_101352DD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100976680(*a2);
    *buf = 136315138;
    *v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I requestStewie: reason = %s", buf, 0xCu);
  }

  if (*(a2 + 48) == 1)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 42);
      if (*(a2 + 43))
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      if (*(a2 + 46))
      {
        v9 = *(a2 + 44);
      }

      else
      {
        v9 = 0;
      }

      v10 = sub_1009762C8(v9);
      *buf = 67109634;
      *v27 = v7;
      *&v27[4] = 2080;
      *&v27[6] = v8;
      *&v27[14] = 2080;
      *&v27[16] = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I conversationID = %hhu, committed = %s, fromService = %s", buf, 0x1Cu);
    }
  }

  if (*(a2 + 88) == 1)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 56);
      sub_100E253C8(a2 + 64, &__p);
      v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v14 = __p.__r_.__value_.__r.__words[0];
      if (*(a2 + 82))
      {
        v15 = *(a2 + 80);
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_1009762C8(v15);
      p_p = &__p;
      *buf = 67109634;
      if (v13 < 0)
      {
        p_p = v14;
      }

      *v27 = v12;
      *&v27[4] = 2082;
      *&v27[6] = p_p;
      *&v27[14] = 2080;
      *&v27[16] = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I conversationID = %hhu, providerId = %{public}s, fromService = %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 4) == 1)
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v19 = *(a2 + 8);
      }

      if (!*(a2 + 32))
      {
        v19 = "<none>";
      }

      *buf = 136446210;
      *v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Request for offer, reason: %{public}s", buf, 0xCu);
    }

    if (*(a2 + 32) == 1)
    {
      __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
      *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
    }

    *&v27[3] = *(a2 + 40);
    *&v27[19] = *(a2 + 56);
    v28 = *(a2 + 72);
    v29 = *(a2 + 88);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      if (std::__shared_weak_count::lock(v21))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  v20 = (a2 + 40);
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 32) == 1)
    {
      __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
      *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
    }

    v22 = *(a2 + 56);
    *&v27[3] = *v20;
    *&v27[19] = v22;
    v28 = *(a2 + 72);
    v29 = *(a2 + 88);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v23 = *(a1 + 16);
    if (v23 && std::__shared_weak_count::lock(v23))
    {
      operator new();
    }

    sub_100013CC4();
  }

  if (*(a2 + 32) == 1)
  {
    __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
    *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
  }

  v24 = *(a2 + 56);
  *&v27[3] = *v20;
  *&v27[19] = v24;
  v28 = *(a2 + 72);
  v29 = *(a2 + 88);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v25 = *(a1 + 16);
  if (v25 && std::__shared_weak_count::lock(v25))
  {
    operator new();
  }

  sub_100013CC4();
}

void sub_10135357C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013535C8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_1009766A4(a3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I exitStewie: reason = %s", buf, 0xCu);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101353734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353744(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D5F0(&v5, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101353874(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353884(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D784(&v5, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013539B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1013539C4(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D918(&v5, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101353AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101353BF4(void *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = *a3;
    if (*a3)
    {
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v4 + 32);
        v10 = *(v4 + 72);
        v11 = *(v4 + 8);
        v12 = v6[2];
        v19 = v6[1];
        v13 = v6[4];
        v14 = (*(*a1 + 240))(a1);
        buf[0] = 134219777;
        *&buf[1] = v9;
        v21 = 1024;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2048;
        v26 = (v11 * 1000000000.0);
        v27 = 2049;
        v28 = v12;
        v29 = 2049;
        v30 = v19;
        v31 = 2049;
        v32 = v13;
        v33 = 2048;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I updateTimeAndLocation - [time: %llu, leap second: %d, timestamp: %f (%llu ns)] and [lat: %{private}f, lng: %{private}f, alt: %{private}f] received at: %llu ns (continuous time)", buf, 0x4Eu);
      }

      v15 = a2[1];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a3[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = a1[2];
      if (v17)
      {
        if (std::__shared_weak_count::lock(v17))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  v18 = a1[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "updateTimeAndLocation - null timeFreqData or locationData received", buf, 2u);
  }
}

void sub_101353EBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353ECC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleStewieTxDeferTime - stewieTxDeferTime: %llu", buf, 0xCu);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135402C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135403C(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a1 + 624) != 1)
  {
    return;
  }

  v4 = *(a1 + 360);
  v5 = v4 == 1 && (*(a1 + 336) & 0xFFFFFFFE) == 2;
  v6 = *(a1 + 848);
  if (!v6)
  {
    if (*(a1 + 885) == 1 && (v9 = *(a1 + 216)) != 0 && (*(v9 + 184) & 1) != 0)
    {
      if (!v5)
      {
        if (a2 && *(a1 + 544) == 1 && *(a1 + 536) == 1 && *(a1 + 883) != 4)
        {
          if (*(a1 + 576) == 1)
          {
            v13 = *(a1 + 568) + 1;
          }

          else
          {
            v13 = 1;
            *(a1 + 576) = 1;
          }

          isExpired = 0;
          *(a1 + 568) = v13;
          *(a1 + 560) = 0;
          if ((v4 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_9;
        }

        goto LABEL_27;
      }

      if (!a2 || *(a1 + 576) != 1 || (v10 = *(a1 + 560) + 1, *(a1 + 560) = v10, v10 < 8))
      {
LABEL_27:
        isExpired = 0;
        if (!v4)
        {
          goto LABEL_28;
        }

LABEL_9:
        if (*(a1 + 336) == 3)
        {
          v8 = isExpired;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_29;
      }
    }

    else if (*(a1 + 576) != 1)
    {
      goto LABEL_27;
    }

    isExpired = 0;
    *(a1 + 576) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  if (*(a1 + 576) == 1)
  {
    *(a1 + 576) = 0;
  }

  isExpired = AutoStartTimer::isExpired(v6);
  if (*(a1 + 360))
  {
    goto LABEL_9;
  }

LABEL_28:
  v8 = 1;
LABEL_29:
  if (*(a1 + 576) == 1 && *(a1 + 568) > 0x14uLL)
  {
    isExpired = v8;
  }

  if (isExpired != *(a1 + 552))
  {
    *(a1 + 552) = isExpired;
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "kLow";
      if (!isExpired)
      {
        v12 = "kUnknown";
      }

      v14 = 136315138;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Visibility level changed to: %s", &v14, 0xCu);
    }
  }
}

void sub_101354258(void *a1, void *a2)
{
  sub_100004AA0(v4, a2);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }
}

void *sub_1013542A4(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101354310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354408(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleStewieStateChanged", v6, 2u);
  }

  *v6 = *a2;
  *&v6[14] = *(a2 + 14);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354738(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      if (std::__shared_weak_count::lock(v3))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData - not provisioned", buf, 2u);
  }
}

void sub_10135489C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135499C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I stopTargetDataTracking", buf, 2u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354CD4(uint64_t a1, void *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354FCC(uint64_t a1, uint64_t a2)
{
  sub_1000BA468(&v5, a2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
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

void sub_1013550FC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    if (a2[1])
    {
      v6 = v5;
    }

    else
    {
      v6 = "<none>";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleAreGPSSatsVisibleChanged: areGpsSatsVisible = %s", buf, 0xCu);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135528C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135529C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_10135538C(uint64_t a1, uint64_t a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100976680(*a2);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I requestAssistantApp_sync: reason = %s", &buf, 0xCu);
  }

  buf = 0uLL;
  v93 = 0;
  p_buf = 0;
  v90 = 0;
  v91 = 0;
  sub_10000501C(&p_buf, "reason=");
  v86 = 0;
  v87 = 0;
  v88 = 0;
  sub_10000501C(&v86, "conversationId=");
  v83 = 0;
  v84 = 0;
  v85 = 0;
  sub_10000501C(&v83, "action=");
  v80 = 0;
  v81 = 0;
  v82 = 0;
  sub_10000501C(&v80, "providerId=");
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_10000501C(&v77, "fromService=");
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  sub_10000501C(v75, "offerKind=");
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  sub_10000501C(v73, "emergencyOrRoadsideSessionInitiatedBy=");
  v71[0] = 0;
  v71[1] = 0;
  v72 = 0;
  sub_10000501C(v71, "request");
  if (*(a2 + 4) == 1)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v9 = 0;
      goto LABEL_220;
    }

    LOWORD(__p[0]) = 0;
    v35 = "SOSBuddy is not interested in learning about offer requests";
LABEL_238:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v35, __p, 2u);
    goto LABEL_5;
  }

  v10 = *a2;
  if (*a2 > 4)
  {
    if (v10 > 7)
    {
      switch(v10)
      {
        case 8:
          if (v91 >= 0)
          {
            v36 = HIBYTE(v91);
          }

          else
          {
            v36 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v37 = __p;
          sub_1000677C4(__p, v36 + 9);
          if (v70 < 0)
          {
            v37 = __p[0];
          }

          if (v36)
          {
            if (v91 >= 0)
            {
              v38 = &p_buf;
            }

            else
            {
              v38 = p_buf;
            }

            memmove(v37, v38, v36);
          }

          strcpy(v37 + v36, "Messaging");
          sub_1000D1054(&buf, __p);
          break;
        case 9:
          if (v91 >= 0)
          {
            v29 = HIBYTE(v91);
          }

          else
          {
            v29 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v30 = __p;
          sub_1000677C4(__p, v29 + 12);
          if (v70 < 0)
          {
            v30 = __p[0];
          }

          if (v29)
          {
            if (v91 >= 0)
            {
              v31 = &p_buf;
            }

            else
            {
              v31 = p_buf;
            }

            memmove(v30, v31, v29);
          }

          strcpy(v30 + v29, "IMessageLite");
          sub_1000D1054(&buf, __p);
          break;
        case 10:
          if (v91 >= 0)
          {
            v17 = HIBYTE(v91);
          }

          else
          {
            v17 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v18 = __p;
          sub_1000677C4(__p, v17 + 6);
          if (v70 < 0)
          {
            v18 = __p[0];
          }

          if (v17)
          {
            if (v91 >= 0)
            {
              v19 = &p_buf;
            }

            else
            {
              v19 = p_buf;
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "SatSms");
          sub_1000D1054(&buf, __p);
          break;
        default:
          goto LABEL_123;
      }
    }

    else
    {
      switch(v10)
      {
        case 5:
          v8 = *(a1 + 40);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_5;
          }

          LOWORD(__p[0]) = 0;
          v35 = "SOSBuddy is not interested in learning about kTryOut";
          goto LABEL_238;
        case 6:
          if (v91 >= 0)
          {
            v26 = HIBYTE(v91);
          }

          else
          {
            v26 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v27 = __p;
          sub_1000677C4(__p, v26 + 6);
          if (v70 < 0)
          {
            v27 = __p[0];
          }

          if (v26)
          {
            if (v91 >= 0)
            {
              v28 = &p_buf;
            }

            else
            {
              v28 = p_buf;
            }

            memmove(v27, v28, v26);
          }

          strcpy(v27 + v26, "FindMy");
          sub_1000D1054(&buf, __p);
          break;
        case 7:
          if (v91 >= 0)
          {
            v11 = HIBYTE(v91);
          }

          else
          {
            v11 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v12 = __p;
          sub_1000677C4(__p, v11 + 8);
          if (v70 < 0)
          {
            v12 = __p[0];
          }

          if (v11)
          {
            if (v91 >= 0)
            {
              v13 = &p_buf;
            }

            else
            {
              v13 = p_buf;
            }

            memmove(v12, v13, v11);
          }

          strcpy(v12 + v11, "Roadside");
          sub_1000D1054(&buf, __p);
          break;
        default:
          goto LABEL_123;
      }
    }

    goto LABEL_121;
  }

  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        if (v91 >= 0)
        {
          v32 = HIBYTE(v91);
        }

        else
        {
          v32 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v33 = __p;
        sub_1000677C4(__p, v32 + 13);
        if (v70 < 0)
        {
          v33 = __p[0];
        }

        if (v32)
        {
          if (v91 >= 0)
          {
            v34 = &p_buf;
          }

          else
          {
            v34 = p_buf;
          }

          memmove(v33, v34, v32);
        }

        strcpy(v33 + v32, "EmergencyText");
        sub_1000D1054(&buf, __p);
        break;
      case 3:
        if (v91 >= 0)
        {
          v23 = HIBYTE(v91);
        }

        else
        {
          v23 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v24 = __p;
        sub_1000677C4(__p, v23 + 22);
        if (v70 < 0)
        {
          v24 = __p[0];
        }

        if (v23)
        {
          if (v91 >= 0)
          {
            v25 = &p_buf;
          }

          else
          {
            v25 = p_buf;
          }

          memmove(v24, v25, v23);
        }

        strcpy(v24 + v23, "EmergencyFallDetection");
        sub_1000D1054(&buf, __p);
        break;
      case 4:
        if (v91 >= 0)
        {
          v14 = HIBYTE(v91);
        }

        else
        {
          v14 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v15 = __p;
        sub_1000677C4(__p, v14 + 14);
        if (v70 < 0)
        {
          v15 = __p[0];
        }

        if (v14)
        {
          if (v91 >= 0)
          {
            v16 = &p_buf;
          }

          else
          {
            v16 = p_buf;
          }

          memmove(v15, v16, v14);
        }

        strcpy(v15 + v14, "EmergencyKappa");
        sub_1000D1054(&buf, __p);
        break;
      default:
        goto LABEL_123;
    }

    goto LABEL_121;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    if (v91 >= 0)
    {
      v20 = HIBYTE(v91);
    }

    else
    {
      v20 = v90;
    }

    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    v21 = __p;
    sub_1000677C4(__p, v20 + 13);
    if (v70 < 0)
    {
      v21 = __p[0];
    }

    if (v20)
    {
      if (v91 >= 0)
      {
        v22 = &p_buf;
      }

      else
      {
        v22 = p_buf;
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, "EmergencyCall");
    sub_1000D1054(&buf, __p);
LABEL_121:
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_123:
  if (*(a2 + 48) == 1)
  {
    std::to_string(&v68, *(a2 + 42));
    if (v88 >= 0)
    {
      v39 = &v86;
    }

    else
    {
      v39 = v86;
    }

    if (v88 >= 0)
    {
      v40 = HIBYTE(v88);
    }

    else
    {
      v40 = v87;
    }

    v41 = std::string::insert(&v68, 0, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v70 = v41->__r_.__value_.__r.__words[2];
    *__p = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 43))
    {
      v43 = "resumeConversation";
    }

    else
    {
      v43 = "startConversation";
    }

    sub_10000501C(&v68, v43);
    if (v85 >= 0)
    {
      v44 = &v83;
    }

    else
    {
      v44 = v83;
    }

    if (v85 >= 0)
    {
      v45 = HIBYTE(v85);
    }

    else
    {
      v45 = v84;
    }

    v46 = std::string::insert(&v68, 0, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v70 = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 46) == 1 && *(a2 + 44) == 8)
    {
      if (v79 >= 0)
      {
        v48 = HIBYTE(v79);
      }

      else
      {
        v48 = v78;
      }

      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      v49 = __p;
      sub_1000677C4(__p, v48 + 8);
      if (v70 < 0)
      {
        v49 = __p[0];
      }

      if (v48)
      {
        if (v79 >= 0)
        {
          v50 = &v77;
        }

        else
        {
          v50 = v77;
        }

        memmove(v49, v50, v48);
      }

      strcpy(v49 + v48, "Roadside");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a2 + 88) == 1)
  {
    std::to_string(&v68, *(a2 + 56));
    if (v88 >= 0)
    {
      v51 = &v86;
    }

    else
    {
      v51 = v86;
    }

    if (v88 >= 0)
    {
      v52 = HIBYTE(v88);
    }

    else
    {
      v52 = v87;
    }

    v53 = std::string::insert(&v68, 0, v51, v52);
    v54 = *&v53->__r_.__value_.__l.__data_;
    v70 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 57))
    {
      v55 = "resumeConversation";
    }

    else
    {
      v55 = "startConversation";
    }

    sub_10000501C(&v68, v55);
    if (v85 >= 0)
    {
      v56 = &v83;
    }

    else
    {
      v56 = v83;
    }

    if (v85 >= 0)
    {
      v57 = HIBYTE(v85);
    }

    else
    {
      v57 = v84;
    }

    v58 = std::string::insert(&v68, 0, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v70 = v58->__r_.__value_.__r.__words[2];
    *__p = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 72) == 1)
    {
      std::to_string(&v68, *(a2 + 64));
      if (v82 >= 0)
      {
        v60 = &v80;
      }

      else
      {
        v60 = v80;
      }

      if (v82 >= 0)
      {
        v61 = HIBYTE(v82);
      }

      else
      {
        v61 = v81;
      }

      v62 = std::string::insert(&v68, 0, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v70 = v62->__r_.__value_.__r.__words[2];
      *__p = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    if (*(a2 + 82) == 1 && *(a2 + 80) == 1)
    {
      if (v79 >= 0)
      {
        v64 = HIBYTE(v79);
      }

      else
      {
        v64 = v78;
      }

      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      v65 = __p;
      sub_1000677C4(__p, v64 + 9);
      if (v70 < 0)
      {
        v65 = __p[0];
      }

      if (v64)
      {
        if (v79 >= 0)
        {
          v66 = &v77;
        }

        else
        {
          v66 = v77;
        }

        memmove(v65, v66, v64);
      }

      strcpy(v65 + v64, "Emergency");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a2 + 40) == 1 && (sub_10000501C(__p, "launchDemo"), sub_1000D1054(&buf, __p), SHIBYTE(v70) < 0))
  {
    operator delete(__p[0]);
    if (a3)
    {
LABEL_213:
      sub_10000501C(__p, "relaunch");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (a3)
  {
    goto LABEL_213;
  }

  if (*(a1 + 624) == 1)
  {
    sub_100168A48(v73, (a1 + 384), __p);
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_101356260((a1 + 72), v71, &buf);
LABEL_220:
  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(p_buf);
  }

  p_buf = &buf;
  sub_1000087B4(&p_buf);
  return v9;
}

void sub_1013560A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v52 - 129) < 0)
  {
    operator delete(*(v52 - 152));
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (*(v52 - 81) < 0)
  {
    operator delete(*(v52 - 104));
  }

  *(v52 - 104) = v52 - 80;
  sub_1000087B4((v52 - 104));
  _Unwind_Resume(a1);
}

BOOL sub_101356260(uint64_t *a1, std::string::size_type a2, std::string **a3)
{
  sub_1000208E8();
  v6 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I launchAssistantApp(%s)", &buf, 0xCu);
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    memset(&buf, 0, sizeof(buf));
    std::operator+<char>();
    v9 = a3[1];
    if (*a3 != v9)
    {
      sub_1000D1184(*a3, v9, "&", 1uLL, &v20);
      v10 = std::string::insert(&v20, 0, "?", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v22 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if (v22 >= 0)
      {
        v13 = HIBYTE(v22);
      }

      else
      {
        v13 = __p[1];
      }

      std::string::append(&buf, v12, v13);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    __p[0] = 0x400000001;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("stw.ca.ui", v14);
    v16 = *a1;
    object = v15;
    v23[0] = off_101F31948;
    v23[3] = v23;
    (*(*v16 + 24))(v16, &buf, __p, &object, v23);
    sub_10000FF50(v23);
    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_1000208E8();
    v17 = qword_101FCA948;
    if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "assistant app command must be specified", &buf, 2u);
    }
  }

  return v8 != 0;
}

void sub_101356500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL stewie::StewieConnectionAssistant::presentAlertInAssistantApp(uint64_t *a1, unsigned int *a2)
{
  sub_1000208E8();
  v4 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (v5 > 2)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101F31AA8[v5];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I presentAlertInAssistantApp: %s", &buf, 0xCu);
  }

  buf = 0uLL;
  v31 = 0;
  p_buf = 0;
  v28 = 0;
  v29 = 0;
  sub_10000501C(&p_buf, "alertKind=");
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10000501C(&v24, "requestedProviderId=");
  v7 = *a2;
  if (!*a2)
  {
    v19 = 0;
    goto LABEL_48;
  }

  if (v7 == 1)
  {
    if (v29 >= 0)
    {
      v12 = HIBYTE(v29);
    }

    else
    {
      v12 = v28;
    }

    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    v13 = __p;
    sub_1000677C4(__p, v12 + 19);
    if (v23 < 0)
    {
      v13 = __p[0];
    }

    if (v12)
    {
      if (v29 >= 0)
      {
        v14 = &p_buf;
      }

      else
      {
        v14 = p_buf;
      }

      memmove(v13, v14, v12);
    }

    strcpy(v13 + v12, "EmergencyToRoadside");
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a2 + 16) != 1)
    {
      goto LABEL_45;
    }

    std::to_string(&v21, *(a2 + 1));
    if (v26 >= 0)
    {
      v15 = &v24;
    }

    else
    {
      v15 = v24;
    }

    if (v26 >= 0)
    {
      v16 = HIBYTE(v26);
    }

    else
    {
      v16 = v25;
    }

    v17 = std::string::insert(&v21, 0, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v23 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v11 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_45;
    }

    if (v29 >= 0)
    {
      v8 = HIBYTE(v29);
    }

    else
    {
      v8 = v28;
    }

    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    v9 = __p;
    sub_1000677C4(__p, v8 + 19);
    if (v23 < 0)
    {
      v9 = __p[0];
    }

    if (v8)
    {
      if (v29 >= 0)
      {
        v10 = &p_buf;
      }

      else
      {
        v10 = p_buf;
      }

      memmove(v9, v10, v8);
    }

    strcpy(v9 + v8, "RoadsideToEmergency");
    sub_1000D1054(&buf, __p);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v11 = __p[0];
  }

  operator delete(v11);
LABEL_45:
  sub_10000501C(__p, "alert");
  v19 = sub_101356260(a1, __p, &buf);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_48:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(p_buf);
  }

  p_buf = &buf;
  sub_1000087B4(&p_buf);
  return v19;
}

void sub_1013568D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a29 = (v34 - 64);
  sub_1000087B4(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_101356974(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  sub_10016A270(a1 + 8, (a2 + 2));
  v5 = *(a2 + 10);
  v6 = *(a2 + 14);
  v7 = *(a2 + 18);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = *(a2 + 6);
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  return a1;
}

uint64_t sub_101356A00(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

unint64_t sub_101356A50()
{
  mach_continuous_time();
  TMConvertTicksToSeconds();
  return (v0 * 1000000000.0);
}

unint64_t sub_101356A7C()
{
  mach_continuous_time();
  TMConvertTicksToSeconds();
  return (v0 * 1000000000.0);
}

void sub_101356AA8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 328);
  if (v2)
  {
    *v81 = 0;
    stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v2, v81);
    if (*v81)
    {
      v3 = *(a1 + 216);
      if (v3)
      {
        v4 = *(a1 + 328);
        if (*(v4 + 72) == 1)
        {
          v5 = *(v4 + 48);
          v6 = *(v4 + 64);
        }

        else
        {
          v5 = 0uLL;
          v6 = 0;
        }

        *v63 = v5;
        *&v63[16] = v6;
        if (*(v4 + 40) == 1)
        {
          v7 = *(v4 + 24);
        }

        else
        {
          v7 = 0;
        }

        stewie::ConnectionAssistantTargetDataSource::updateGPSData(v3, v63, v7, v81);
      }

      sub_101357970(a1);
      if (*(a1 + 624) == 1 && *(a1 + 600) == 1 && *(a1 + 592) < *v81)
      {
        *(a1 + 600) = 0;
      }
    }
  }

  v8 = *(a1 + 176);
  if (!v8)
  {
    v8 = (*(*a1 + 240))(a1);
    *(a1 + 176) = v8;
  }

  *(a1 + 176) = v8 + 1;
  dispatch_assert_queue_V2(*(a1 + 24));
  v77 = 0u;
  memset(v76, 0, sizeof(v76));
  v78 = 0;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  memset(v71, 0, sizeof(v71));
  v70 = 0u;
  v69 = 0u;
  *__p = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  *&v63[24] = 0u;
  *v63 = *(a1 + 176);
  *&v63[8] = *(a1 + 865);
  *&v63[22] = *(a1 + 879);
  BYTE8(v77) = 0;
  memset(&v76[7], 0, 25);
  BYTE2(v78) = *(a1 + 887);
  HIDWORD(v78) = *(a1 + 888);
  memset(&v79, 0, sizeof(v79));
  v9 = *(a1 + 216);
  if (!v9)
  {
    goto LABEL_69;
  }

  if (*(v9 + 184) == 1)
  {
    *&v63[32] = *(v9 + 152);
    v64 = vdivq_f64(vmulq_f64(*(v9 + 160), vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
    LOBYTE(v65) = 1;
  }

  if (*(v9 + 240) != 1 || !*(v9 + 200) || !*(v9 + 208))
  {
LABEL_69:
    if (*(a1 + 624) == 1)
    {
      if (*(a1 + 552))
      {
        DWORD2(v65) = *(a1 + 552);
        BYTE12(v65) = 1;
      }

      v35 = *(a1 + 848);
      if (v35)
      {
        LOBYTE(v35) = *(a1 + 864);
      }

      LOBYTE(v66) = v35 & 1;
      if (*(a1 + 600) == 1)
      {
        v36 = *(a1 + 328);
        if (v36)
        {
          v37 = 315964800;
          if (*(v36 + 40))
          {
            v38 = *(v36 + 24);
            v39 = *(a1 + 584) / 0x3B9ACA00uLL - v38;
            v37 = 315964800 - v38;
          }

          else
          {
            v39 = *(a1 + 584) / 0x3B9ACA00uLL;
          }

          v36 = 1000000 * v39 + 315964800000000;
          v40 = 1000000 * (v37 + *(a1 + 592) / 0x3B9ACA00uLL);
        }

        else
        {
          v40 = 0;
        }

        *&v70 = v36;
        *(&v70 + 1) = v40;
        LOBYTE(v71[0]) = 1;
      }

      if ((*(a1 + 360) & 1) == 0)
      {
        goto LABEL_127;
      }

      memset(__src, 0, sizeof(__src));
      if (*(a1 + 520) == 1)
      {
        v41 = *(a1 + 328);
        if (v41)
        {
          v80 = 0;
          stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v41, &v80);
          v42 = *(a1 + 512);
          if (v42)
          {
            if (v42 + 2000000000 < v80)
            {
              goto LABEL_107;
            }

            v43 = 1;
            v44 = 100;
          }

          else
          {
            v45 = *(a1 + 496);
            if (v45 && (v46 = *(a1 + 504)) != 0)
            {
              v47 = (v80 / 0x3B9ACA00 - v45 / 0x3B9ACA00);
              if (v80 / 0x3B9ACA00 <= v45 / 0x3B9ACA00)
              {
                v47 = 0.0;
              }

              v44 = llround(fmin(v47 / v46, 0.85) * 100.0);
              v43 = 1;
            }

            else
            {
              v44 = 0;
              v43 = 0;
            }
          }

          sub_1000BA468(v81, (a1 + 464));
          v48 = *(a1 + 328);
          if (v48)
          {
            v49 = 315964800;
            if (*(v48 + 40) == 1)
            {
              v49 = 315964800 - *(v48 + 24);
            }

            v50 = 1000000 * (v49 + *(a1 + 496) / 0x3B9ACA00uLL);
          }

          else
          {
            v50 = 0;
          }

          *&v81[8] = v50;
          v81[16] = 1;
          v51 = *(a1 + 504);
          if (v51)
          {
            *&v81[24] = *(a1 + 504);
            LOBYTE(v51) = 1;
          }

          else
          {
            v81[24] = 0;
          }

          v81[28] = v51;
          *&v81[32] = v44 | (v43 << 8);
          *&v81[36] = sub_101357EFC(*(a1 + 472));
          if (BYTE8(__src[2]) == 1)
          {
            sub_1000475BC(__src);
          }

          *&__src[0] = *v81;
          *v81 = 0;
          *(__src + 8) = *&v81[8];
          *(&__src[1] + 8) = *&v81[24];
          BYTE8(__src[2]) = 1;
          sub_1000475BC(v81);
        }
      }
    }

    else
    {
      if (*(a1 + 360) != 1)
      {
        goto LABEL_132;
      }

      memset(__src, 0, sizeof(__src));
    }

LABEL_107:
    v52 = *(a1 + 336);
    switch(v52)
    {
      case 3:
        *v81 = 3;
        v52 = 2;
        break;
      case 2:
        *v81 = 2;
        break;
      case 1:
        *v81 = 2;
        v52 = 1;
        break;
      default:
        v52 = 0;
        *v81 = 1;
        break;
    }

    v53 = *(a1 + 340);
    *&v81[4] = v52;
    *&v81[8] = v53;
    *&v81[12] = *(a1 + 344);
    v81[16] = *(a1 + 348);
    *&v81[20] = *(a1 + 352);
    v81[24] = *(a1 + 356);
    v81[32] = 0;
    v84 = 0;
    v54 = BYTE8(__src[2]);
    if (BYTE8(__src[2]) == 1)
    {
      *&v81[32] = *&__src[0];
      if (*&__src[0])
      {
        CFRetain(*&__src[0]);
      }

      v82 = *(__src + 8);
      v83 = *(&__src[1] + 8);
      v84 = 1;
    }

    if (BYTE8(v74) == 1 && v74 == 1)
    {
      sub_1000475BC(&v71[5]);
    }

    *&v71[1] = *v81;
    *(&v71[2] + 1) = *&v81[9];
    LOBYTE(v71[5]) = 0;
    LOBYTE(v74) = 0;
    if (v54)
    {
      v71[5] = *&v81[32];
      *&v81[32] = 0;
      v72 = v82;
      v73 = v83;
      LOBYTE(v74) = 1;
      BYTE8(v74) = 1;
      sub_1000475BC(&v81[32]);
    }

    else
    {
      BYTE8(v74) = 1;
    }

    if (BYTE8(__src[2]) == 1)
    {
      sub_1000475BC(__src);
    }

    if ((*(a1 + 624) & 1) == 0)
    {
LABEL_132:
      std::string::operator=(&v76[5], (a1 + 256));
      v58 = *(a1 + 312);
      v57 = *(a1 + 320);
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      v59 = v76[9];
      v76[8] = v58;
      v76[9] = v57;
      if (v59)
      {
        sub_100004A34(v59);
      }

      if ((*(a1 + 624) & 1) == 0)
      {
        if (*(a1 + 656) == 1)
        {
          v60 = *(a1 + 640);
          v61 = *(a1 + 648);
          LODWORD(v76[10]) = *(a1 + 632);
          v76[11] = v60;
          LOWORD(v77) = v61;
          BYTE8(v77) = 1;
        }

        if (*(a1 + 664) == 1)
        {
          LOWORD(v78) = 257;
        }
      }

      operator new();
    }

LABEL_127:
    if (*(a1 + 420) == 1)
    {
      v55 = *(a1 + 412);
      LODWORD(v75) = *(a1 + 408);
      DWORD1(v75) = v55;
      BYTE8(v75) = *(a1 + 416);
      BYTE12(v75) = 1;
    }

    if (*(a1 + 456) == 1)
    {
      v56 = *(a1 + 424);
      *&v81[6] = *(a1 + 432);
      v81[14] = *(a1 + 440);
      *(__src + 7) = *(a1 + 448);
      BYTE9(__src[0]) = *(a1 + 450);
      LOWORD(v76[0]) = v56;
      *(v76 + 2) = *v81;
      *(&v76[1] + 1) = *&v81[7];
      *(&v76[3] + 1) = WORD4(__src[0]);
      *(&v76[2] + 1) = *&__src[0];
      LOBYTE(v76[4]) = 1;
    }

    std::string::operator=(&v79, (a1 + 384));
    goto LABEL_132;
  }

  memset(v81, 0, 24);
  v10 = *(v9 + 224);
  if (*(v9 + 216) == 1)
  {
    if (v10)
    {
      v11 = *(v9 + 232);
      if (v10 < v11)
      {
        v12 = *(a1 + 328);
        if (v12)
        {
          v13 = 315964800;
          if (*(v12 + 40))
          {
            v14 = *(v12 + 24);
            v15 = v10 / 0x3B9ACA00 - v14;
            v13 = 315964800 - v14;
          }

          else
          {
            v15 = v10 / 0x3B9ACA00;
          }

          *&__src[0] = 1000000 * v15 + 315964800000000;
          v26 = 1000000 * (v13 + v11 / 0x3B9ACA00);
        }

        else
        {
          v26 = 0;
          *&__src[0] = 0;
        }

LABEL_49:
        *(&__src[0] + 1) = v26;
        sub_10135B2E4(v81, __src, &__src[1], 2uLL);
        goto LABEL_55;
      }

      if (!v11)
      {
        v24 = *(a1 + 328);
        if (v24)
        {
          v25 = 315964800;
          if (*(v24 + 40) == 1)
          {
            v25 = 315964800 - *(v24 + 24);
          }

          v23 = 1000000 * (v25 + v10 / 0x3B9ACA00);
        }

        else
        {
          v23 = 0;
        }

LABEL_54:
        *&__src[0] = v23;
        sub_10135B2E4(v81, __src, __src + 8, 1uLL);
      }
    }
  }

  else
  {
    v16 = *(v9 + 232);
    if (v10)
    {
      if (!v16 || v16 >= v10)
      {
        goto LABEL_55;
      }

      v17 = *(a1 + 328);
      if (v17)
      {
        v18 = 315964800;
        if (*(v17 + 40))
        {
          v19 = *(v17 + 24);
          v20 = v16 / 0x3B9ACA00 - v19;
          v18 = 315964800 - v19;
        }

        else
        {
          v20 = v16 / 0x3B9ACA00;
        }

        *&__src[0] = 1000000 * v20 + 315964800000000;
        v26 = 1000000 * (v18 + v10 / 0x3B9ACA00);
      }

      else
      {
        v26 = 0;
        *&__src[0] = 0;
      }

      goto LABEL_49;
    }

    if (v16)
    {
      v21 = *(a1 + 328);
      if (v21)
      {
        v22 = 315964800;
        if (*(v21 + 40) == 1)
        {
          v22 = 315964800 - *(v21 + 24);
        }

        v23 = 1000000 * (v22 + *(v9 + 232) / 0x3B9ACA00uLL);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_54;
    }
  }

LABEL_55:
  v27 = *(a1 + 328);
  if (v27)
  {
    v28 = 315964800;
    if (*(v27 + 40))
    {
      v29 = *(v27 + 24);
      v30 = *(v9 + 200) / 0x3B9ACA00uLL - v29;
      v28 = 315964800 - v29;
    }

    else
    {
      v30 = *(v9 + 200) / 0x3B9ACA00uLL;
    }

    v31 = 1000000 * v30 + 315964800000000;
    v32 = 1000000 * (v28 + *(v9 + 208) / 0x3B9ACA00uLL);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = *(v9 + 216);
  v34 = *v81;
  v62 = v33;
  if (*&v81[8] != *v81)
  {
    if (((*&v81[8] - *v81) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1000CE3D4();
  }

  if (BYTE8(v69) == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(&v66 + 1) = v31;
  *&v67 = v32;
  BYTE8(v67) = v62;
  __p[0] = 0;
  __p[1] = 0;
  *&v69 = 0;
  BYTE8(v69) = 1;
  if (v34)
  {
    operator delete(v34);
  }

  goto LABEL_69;
}

void sub_101357900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 - 240);
  if (v5)
  {
    operator delete(v5);
  }

  sub_101357E70(va);
  _Unwind_Resume(a1);
}

void sub_101357970(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 216);
  if (v2)
  {
    if (*(v2 + 304) == 1 && (v3 = *(v2 + 256)) != 0 && *(v2 + 264) && *(v2 + 272))
    {
      v4 = *(a1 + 200);
      if (!v4 || *v4 != v3)
      {
        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service plot was changed, caching version %llu in CA", buf, 0xCu);
          v2 = *(a1 + 216);
        }

        dispatch_assert_queue_V2(*(a1 + 24));
        if (!*(v2 + 256) || !*(v2 + 264) || !*(v2 + 272))
        {
          v6 = *(a1 + 40);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid service plot was supplied to buildServicePlot_sync, proceeding anyway", buf, 2u);
          }
        }

        v8 = *(v2 + 280);
        v7 = *(v2 + 288);
        if (v7 != v8)
        {
          v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
          if (!(v9 >> 59))
          {
            sub_10135B40C(v9);
          }

          sub_1000CE3D4();
        }

        operator new();
      }
    }

    else if (*(a1 + 200))
    {
      v10 = *(a1 + 208);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      if (v10)
      {
        sub_100004A34(v10);
      }

      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Service plot was reset, resetting CA cached service plot too", buf, 2u);
      }
    }
  }

  else
  {
    v12 = *(a1 + 208);
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    if (v12)
    {

      sub_100004A34(v12);
    }
  }
}

void sub_101357E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101357E70(uint64_t a1)
{
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v2 = *(a1 + 336);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 240) == 1 && *(a1 + 232) == 1)
  {
    sub_1000475BC((a1 + 192));
  }

  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      *(a1 + 112) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_101357EFC(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_10195A240[a1 - 1];
  }
}

__n128 sub_101357F20(const void **a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    a1 = sub_1000475BC(a1);
    *(a1 + 56) = 0;
  }

  v3 = sub_1000BA468(a1, a2);
  result = *(a2 + 8);
  v3[3] = *(a2 + 24);
  *(v3 + 1) = result;
  v3[4] = *(a2 + 32);
  *(v3 + 10) = *(a2 + 40);
  v3[6] = *(a2 + 48);
  *(v3 + 56) = 1;
  return result;
}

void sub_101357F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135806C(uint64_t a1)
{
  v1 = a1;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************", buf, 2u);
    v2 = *v3;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * StewieConnectionAssistant state *", buf, 2u);
    v2 = *v3;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************", buf, 2u);
  }

  v4 = *(v1 + 104);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = *v3;
    v7 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v8 = *v4;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[3];
      *buf = 67109888;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      LOWORD(v279) = 1024;
      *(&v279 + 2) = v10;
      HIWORD(v279) = 1024;
      *v280 = v11;
      v12 = "#I [d] (CAConfig) Model vector: [x: %d|%d, y: %d|%d]";
      v13 = v6;
      v14 = 26;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "#I [d] (CAConfig) Model vector is not defined";
      v13 = v6;
      v14 = 2;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
  }

LABEL_14:
  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v1 + 240) * 180.0 / 3.14159265;
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] Service threshold: %.2f", buf, 0xCu);
    v15 = *(v1 + 40);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v1 + 248) * 180.0 / 3.14159265;
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] Anchor service threshold: %.2f", buf, 0xCu);
    v15 = *(v1 + 40);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = (v1 + 256);
    if (*(v1 + 279) < 0)
    {
      v18 = *v18;
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] iso3166Alpha3CountryCode: %{public}s", buf, 0xCu);
    v15 = *v3;
  }

  v19 = *(v1 + 280);
  v20 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_39;
    }

    *buf = 0;
    v30 = "#I [d] TargetGen2ToGen1Mapping not set";
    goto LABEL_38;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] TargetGen2ToGen1Mapping: [", buf, 2u);
    v19 = *(v1 + 280);
  }

  v23 = *v19;
  v21 = v19 + 1;
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      v24 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v22 + 7);
        v26 = *(v22 + 8);
        *buf = 67109376;
        *&buf[4] = v25;
        *&buf[8] = 1024;
        *&buf[10] = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I [d] TargetGen2ToGen1Mapping     %d -> %d", buf, 0xEu);
      }

      v27 = v22[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v22[2];
          v29 = *v28 == v22;
          v22 = v28;
        }

        while (!v29);
      }

      v22 = v28;
    }

    while (v28 != v21);
  }

  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v30 = "#I [d] TargetGen2ToGen1Mapping ]";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
  }

LABEL_39:
  v31 = *(v1 + 296);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  else
  {
    v32 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I [d] AnchorStorage not set", buf, 2u);
    }
  }

  v33 = *(v1 + 624);
  v34 = *(v1 + 40);
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v33 != 1)
  {
    if (!v35)
    {
      goto LABEL_175;
    }

    *buf = 0;
    v42 = "#I [d] State: On is not set";
    goto LABEL_174;
  }

  if (v35)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] State: On", buf, 2u);
    v34 = *v3;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = sub_100976680(*(v1 + 376));
    *buf = 136315138;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] lastRequestReason: %s", buf, 0xCu);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v37 = (v1 + 384);
    if (*(v1 + 407) < 0)
    {
      v37 = *v37;
    }

    *buf = 136446210;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] emergencyOrRoadsideSessionInitiatedBy: %{public}s", buf, 0xCu);
    v34 = *v3;
  }

  v38 = *(v1 + 420);
  v39 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v38 != 1)
  {
    if (!v39)
    {
      goto LABEL_75;
    }

    *buf = 0;
    v43 = "#I [d] (Conversation) Conversation not set";
    v44 = v34;
    v45 = 2;
    goto LABEL_74;
  }

  if (v39)
  {
    v40 = *(v1 + 408);
    if (v40 > 4)
    {
      v41 = "???";
    }

    else
    {
      v41 = off_101F31B38[v40];
    }

    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) requestReason: %s", buf, 0xCu);
    v34 = *v3;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(v1 + 412);
    *buf = 67109120;
    *&buf[4] = v46;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) conversationID: %hhu", buf, 8u);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 413))
    {
      v47 = "true";
    }

    else
    {
      v47 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v47;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) committed: %s", buf, 0xCu);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 416) == 1)
    {
      v48 = sub_1009762C8(*(v1 + 414));
    }

    else
    {
      v48 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v48;
    v43 = "#I [d] (Conversation) fromService: %{public}s";
    v44 = v34;
    v45 = 12;
LABEL_74:
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
  }

LABEL_75:
  v49 = *(v1 + 456);
  v50 = *(v1 + 40);
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
  if (v49 != 1)
  {
    if (!v51)
    {
      goto LABEL_95;
    }

    *buf = 0;
    v54 = "#I [d] (RoadsideConversation) roadsideConversationState not set";
    v55 = v50;
    v56 = 2;
    goto LABEL_94;
  }

  if (v51)
  {
    v52 = *(v1 + 424);
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) conversationID: %hhu", buf, 8u);
    v50 = *(v1 + 40);
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 440) == 1)
    {
      std::to_string(buf, *(v1 + 432));
      if (v280[1] >= 0)
      {
        v53 = buf;
      }

      else
      {
        v53 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v53;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = "<none>";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
    }

    v50 = *v3;
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 450) == 1)
    {
      v57 = sub_1009762C8(*(v1 + 448));
    }

    else
    {
      v57 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v57;
    v54 = "#I [d] (RoadsideConversation) fromService: %{public}s";
    v55 = v50;
    v56 = 12;
LABEL_94:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
  }

LABEL_95:
  v58 = *(v1 + 520);
  v59 = *(v1 + 40);
  v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
  if (v58 != 1)
  {
    if (!v60)
    {
      goto LABEL_128;
    }

    *buf = 0;
    v66 = "#I [d] (Transmission) Progress not set";
    v67 = v59;
    v68 = 2;
    goto LABEL_127;
  }

  if (v60)
  {
    stewie::dumpToString((v1 + 464), buf);
    if (v280[1] >= 0)
    {
      v61 = buf;
    }

    else
    {
      v61 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136380675;
    *(v277.__r_.__value_.__r.__words + 4) = v61;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageID: %{private}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, *(v1 + 472));
    if (v280[1] >= 0)
    {
      v62 = buf;
    }

    else
    {
      v62 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v62;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageType: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v63 = sub_10097665C(*(v1 + 476));
    *buf = 136315138;
    *&buf[4] = v63;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) TransportType: %s", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(v1 + 480);
    if (v64 > 3)
    {
      v65 = "???";
    }

    else
    {
      v65 = off_101F31AC0[v64];
    }

    *buf = 136315138;
    *&buf[4] = v65;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) StatusType: %s", buf, 0xCu);
    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(v1 + 488);
    *buf = 134217984;
    *&buf[4] = v69;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageSizeInBytes: %zu", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v70 = *(v1 + 496) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v70;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) sentAt (GPS time, seconds): %llu", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v71 = *(v1 + 504);
    *buf = 67109120;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) estimatedTimeToSendSeconds: %u", buf, 8u);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v72 = *(v1 + 512) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v72;
    v66 = "#I [d] (Transmission) deliveredAt (GPS time, seconds): %llu";
    v67 = v59;
    v68 = 12;
LABEL_127:
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v66, buf, v68);
  }

LABEL_128:
  v73 = *(v1 + 544);
  v74 = *(v1 + 40);
  v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
  if (v73 != 1)
  {
    if (!v75)
    {
      goto LABEL_146;
    }

    *buf = 0;
    v80 = "#I [d] (DeviceOrientationData) deviceOrientationData not set";
    v81 = v74;
    v82 = 2;
    goto LABEL_145;
  }

  if (v75)
  {
    v76 = *(v1 + 528);
    *buf = 134217984;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fTimeStamp: %llu", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 536))
    {
      v77 = "true";
    }

    else
    {
      v77 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fTargetLocked: %s", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 537))
    {
      v78 = "true";
    }

    else
    {
      v78 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v78;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fIsDeviceStationary: %s", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v79 = *(v1 + 540);
    *buf = 67109120;
    *&buf[4] = v79;
    v80 = "#I [d] (DeviceOrientationData) fX: %d";
    v81 = v74;
    v82 = 8;
LABEL_145:
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v80, buf, v82);
  }

LABEL_146:
  v83 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v84 = *(v1 + 552);
    if (v84 > 3)
    {
      v85 = "???";
    }

    else
    {
      v85 = off_101F31AE0[v84];
    }

    *buf = 136315138;
    *&buf[4] = v85;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I [d] visibilityLevel: %s", buf, 0xCu);
    v83 = *v3;
  }

  v86 = *(v1 + 576);
  v87 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
  if (v86 != 1)
  {
    if (!v87)
    {
      goto LABEL_159;
    }

    *buf = 0;
    v90 = "#I [d] (VisibilityTicks) visibilityTicks not set";
    v91 = v83;
    v92 = 2;
    goto LABEL_158;
  }

  if (v87)
  {
    v88 = *(v1 + 568);
    *buf = 134217984;
    *&buf[4] = v88;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I [d] (VisibilityTicks) numTicksElapsedWaitingForSync: %llu", buf, 0xCu);
    v83 = *(v1 + 40);
  }

  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v89 = *(v1 + 560);
    *buf = 134217984;
    *&buf[4] = v89;
    v90 = "#I [d] (VisibilityTicks) numTicksElapsedWaitingToResetVisibility: %llu";
    v91 = v83;
    v92 = 12;
LABEL_158:
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v90, buf, v92);
  }

LABEL_159:
  v93 = *(v1 + 600);
  v94 = *(v1 + 40);
  v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
  if (v93 != 1)
  {
    if (!v95)
    {
      goto LABEL_167;
    }

    *buf = 0;
    v98 = "#I [d] (TxDeferInterval) txDeferInterval not set";
    v99 = v94;
    v100 = 2;
    goto LABEL_166;
  }

  if (v95)
  {
    v96 = *(v1 + 584) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v96;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I [d] (TxDeferInterval) startsAt (GPS time, seconds): %llu", buf, 0xCu);
    v94 = *(v1 + 40);
  }

  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v97 = *(v1 + 592) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v97;
    v98 = "#I [d] (TxDeferInterval) endsAt (GPS time, seconds): %llu";
    v99 = v94;
    v100 = 12;
LABEL_166:
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, v98, buf, v100);
  }

LABEL_167:
  v101 = *(v1 + 608);
  v34 = *(v1 + 40);
  v102 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (!v101)
  {
    if (!v102)
    {
      goto LABEL_175;
    }

    *buf = 0;
    v42 = "#I [d] (TargetServiceSchedule) targetServiceSchedule not set";
    goto LABEL_174;
  }

  if (v102)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (TargetServiceSchedule) targetServiceSchedule {", buf, 2u);
  }

  (*(*v101 + 24))(v101, v3);
  v34 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v42 = "#I [d] (TargetServiceSchedule) }";
LABEL_174:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
  }

LABEL_175:
  v103 = *(v1 + 656);
  v104 = *(v1 + 40);
  v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
  if (v103 == 1)
  {
    if (v105)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] State: Off", buf, 2u);
      v104 = *v3;
    }

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v106 = sub_1009766A4(*(v1 + 632));
      *buf = 136315138;
      *&buf[4] = v106;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] (Off) exitReason: %s", buf, 0xCu);
      v104 = *(v1 + 40);
    }

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v107 = *(v1 + 648);
      sub_10097642C(*(v1 + 648), buf);
      v108 = v280[1] >= 0 ? buf : *buf;
      LODWORD(v277.__r_.__value_.__l.__data_) = 67109378;
      HIDWORD(v277.__r_.__value_.__r.__words[0]) = v107;
      LOWORD(v277.__r_.__value_.__r.__words[1]) = 2080;
      *(&v277.__r_.__value_.__r.__words[1] + 2) = v108;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] (Off) wasActiveservices: { [Mask: %u] %s }", &v277, 0x12u);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v105)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] State: Off is not set", buf, 2u);
  }

  v109 = *(v1 + 40);
  if (*(v1 + 664) == 1 && os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: TryOut mode offer pending", buf, 2u);
    v109 = *v3;
  }

  if (*(v1 + 680) == 1 && os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: Assistant app is on", buf, 2u);
    v109 = *v3;
  }

  if (*(v1 + 712) == 1)
  {
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: Assistant app is off", buf, 2u);
      v109 = *v3;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = *(v1 + 704);
      *buf = 67109120;
      *&buf[4] = v110;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Assistant App Off) fReopenRequestsSent: %u", buf, 8u);
      v109 = *(v1 + 40);
    }
  }

  v111 = *(v1 + 360);
  v112 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
  if (v111 == 1)
  {
    if (v112)
    {
      v113 = sub_1009766EC(*(v1 + 336));
      *buf = 136315138;
      *&buf[4] = v113;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) connectionStatus: %s", buf, 0xCu);
      v109 = *(v1 + 40);
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v114 = sub_100976710(*(v1 + 340));
      *buf = 136315138;
      *&buf[4] = v114;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) registrationStatus: %s", buf, 0xCu);
      v109 = *(v1 + 40);
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 348) == 1)
      {
        v115 = sub_100976734(*(v1 + 344));
      }

      else
      {
        v115 = "<none>";
      }

      *buf = 136315138;
      *&buf[4] = v115;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) congestionStatus: %s", buf, 0xCu);
      v109 = *v3;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 356) == 1)
      {
        std::to_string(buf, *(v1 + 352));
      }

      else
      {
        sub_10000501C(buf, "<none>");
      }

      v116 = buf;
      if (v280[1] < 0)
      {
        v116 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) rssi: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v112)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) Connection not set", buf, 2u);
  }

  v117 = *(v1 + 184);
  v118 = *(v1 + 40);
  v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (!v117)
  {
    if (!v119)
    {
      goto LABEL_413;
    }

    *buf = 0;
    v129 = "#I [d] (CAState) CAState not set";
    goto LABEL_411;
  }

  if (v119)
  {
    v120 = *v117;
    *buf = 134217984;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) Version: %llu", buf, 0xCu);
    v117 = *(v1 + 184);
    v118 = *(v1 + 40);
  }

  v121 = *(v117 + 56);
  v122 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (v121 != 1)
  {
    if (!v122)
    {
      goto LABEL_234;
    }

    *buf = 0;
    v126 = "#I [d] (CAState) (Target) Target not set";
    v127 = v118;
    v128 = 2;
    goto LABEL_233;
  }

  if (v122)
  {
    v123 = *(v117 + 8);
    *buf = 67109120;
    *&buf[4] = v123;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Target) ID: %u", buf, 8u);
    v118 = *v3;
  }

  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    v124 = v117[5];
    *buf = 134217984;
    *&buf[4] = v124;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Target) X: %.1f", buf, 0xCu);
    v118 = *v3;
  }

  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    v125 = v117[6];
    *buf = 134217984;
    *&buf[4] = v125;
    v126 = "#I [d] (CAState) (Target) Y: %.1f";
    v127 = v118;
    v128 = 12;
LABEL_233:
    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, v126, buf, v128);
  }

LABEL_234:
  v130 = *(v1 + 184);
  v131 = *(v130 + 68);
  v132 = *(v1 + 40);
  v133 = os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
  if (v131 == 1)
  {
    if (!v133)
    {
      goto LABEL_243;
    }

    v134 = *(v130 + 64);
    if (v134 > 3)
    {
      v135 = "???";
    }

    else
    {
      v135 = off_101F31AE0[v134];
    }

    *buf = 136315138;
    *&buf[4] = v135;
    v136 = "#I [d] (CAState) (Visibility) aggregateVisibility: %s";
    v137 = v132;
    v138 = 12;
  }

  else
  {
    if (!v133)
    {
      goto LABEL_243;
    }

    *buf = 0;
    v136 = "#I [d] (CAState) (Visibility) Visibility not set";
    v137 = v132;
    v138 = 2;
  }

  _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, v136, buf, v138);
LABEL_243:
  v139 = *(v1 + 184);
  v140 = *(v139 + 128);
  v141 = *(v1 + 40);
  v142 = os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
  if (v140 != 1)
  {
    if (!v142)
    {
      goto LABEL_279;
    }

    *buf = 0;
    v151 = "#I [d] (CAState) (ServiceIntervals) ServiceIntervals not set";
    goto LABEL_278;
  }

  if (v142)
  {
    std::to_string(buf, *(v139 + 80));
    if (v280[1] >= 0)
    {
      v143 = buf;
    }

    else
    {
      v143 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v143;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) startsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v141 = *v3;
  }

  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, *(v139 + 88));
    if (v280[1] >= 0)
    {
      v144 = buf;
    }

    else
    {
      v144 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v144;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) endsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v141 = *v3;
  }

  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v139 + 96))
    {
      v145 = "true";
    }

    else
    {
      v145 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v145;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) atStart: %{public}s", buf, 0xCu);
  }

  v146 = *(v139 + 104);
  v147 = *(v139 + 112);
  if (v146 != v147)
  {
    v148 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) changesAt: [", buf, 2u);
      v146 = *(v139 + 104);
      v147 = *(v139 + 112);
    }

    for (; v146 != v147; ++v146)
    {
      v149 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        std::to_string(buf, *v146);
        v150 = v280[1] >= 0 ? buf : *buf;
        LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
        *(v277.__r_.__value_.__r.__words + 4) = v150;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals)     %{public}s", &v277, 0xCu);
        if ((v280[1] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    v141 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v151 = "#I [d] (CAState) (ServiceIntervals) ]";
LABEL_278:
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, v151, buf, 2u);
    }
  }

LABEL_279:
  v152 = *(v1 + 184);
  v153 = *(v152 + 240);
  v154 = *(v1 + 40);
  v155 = os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
  if (v153 != 1)
  {
    if (!v155)
    {
      goto LABEL_349;
    }

    *buf = 0;
    v158 = "#I [d] (CAState) (Connection) connectionState not set";
LABEL_321:
    v167 = v154;
    v168 = 2;
LABEL_348:
    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, v158, buf, v168);
    goto LABEL_349;
  }

  if (v155)
  {
    v156 = *(v152 + 160);
    if (v156 > 3)
    {
      v157 = "???";
    }

    else
    {
      v157 = off_101F31B00[v156];
    }

    *buf = 136446210;
    *&buf[4] = v157;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) connectionStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v159 = *(v152 + 164);
    if (v159 > 2)
    {
      v160 = "???";
    }

    else
    {
      v160 = off_101F31B20[v159];
    }

    *buf = 136446210;
    *&buf[4] = v160;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) syncStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v161 = sub_100976710(*(v152 + 168));
    *buf = 136446210;
    *&buf[4] = v161;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) registrationStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 176) == 1)
    {
      v162 = sub_100976734(*(v152 + 172));
    }

    else
    {
      v162 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v162;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) congestionStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 184) == 1)
    {
      std::to_string(buf, *(v152 + 180));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v163 = buf;
    if (v280[1] < 0)
    {
      v163 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v163;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) rssi: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  v164 = *(v152 + 232);
  v165 = os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
  if (v164 != 1)
  {
    if (!v165)
    {
      goto LABEL_349;
    }

    *buf = 0;
    v158 = "#I [d] (CAState) (Connection) (TransmissionProgress) TransmissionProgress not set";
    goto LABEL_321;
  }

  if (v165)
  {
    stewie::dumpToString((v152 + 192), buf);
    if (v280[1] >= 0)
    {
      v166 = buf;
    }

    else
    {
      v166 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v166;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) messageId: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 208) == 1)
    {
      std::to_string(buf, *(v152 + 200));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v169 = buf;
    if (v280[1] < 0)
    {
      v169 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v169;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) startedAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 220) == 1)
    {
      std::to_string(buf, *(v152 + 216));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v170 = buf;
    if (v280[1] < 0)
    {
      v170 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v170;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) estimatedDurationSeconds: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 225) == 1)
    {
      std::to_string(buf, *(v152 + 224));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v171 = buf;
    if (v280[1] < 0)
    {
      v171 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v171;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) progressPercents: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v172 = stewie::asString(*(v152 + 228));
    *buf = 136446210;
    *&buf[4] = v172;
    v158 = "#I [d] (CAState) (Connection) (TransmissionProgress) payloadType: %{public}s";
    v167 = v154;
    v168 = 12;
    goto LABEL_348;
  }

LABEL_349:
  v173 = *(v1 + 184);
  v174 = *(v173 + 260);
  v175 = *(v1 + 40);
  v176 = os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT);
  if (v174 != 1)
  {
    if (!v176)
    {
      goto LABEL_370;
    }

    *buf = 0;
    v179 = "#I [d] (CAState) (Conversation) conversationState not set";
    v180 = v175;
    v181 = 2;
    goto LABEL_369;
  }

  if (v176)
  {
    v177 = *(v173 + 248);
    if (v177 > 4)
    {
      v178 = "???";
    }

    else
    {
      v178 = off_101F31B38[v177];
    }

    *buf = 136446210;
    *&buf[4] = v178;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) requestReason: %{public}s", buf, 0xCu);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    v182 = *(v173 + 252);
    *buf = 67109120;
    *&buf[4] = v182;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) conversationId: %hhu", buf, 8u);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v173 + 253))
    {
      v183 = "true";
    }

    else
    {
      v183 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v183;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) committed: %{public}s", buf, 0xCu);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v173 + 256) == 1)
    {
      v184 = sub_1009762C8(*(v173 + 254));
    }

    else
    {
      v184 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v184;
    v179 = "#I [d] (CAState) (Conversation) fromService: %{public}s";
    v180 = v175;
    v181 = 12;
LABEL_369:
    _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, v179, buf, v181);
  }

LABEL_370:
  v185 = *(v1 + 184);
  v186 = *(v185 + 296);
  v187 = *(v1 + 40);
  v188 = os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT);
  if (v186 == 1)
  {
    if (v188)
    {
      v189 = *(v185 + 264);
      *buf = 67109120;
      *&buf[4] = v189;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (RoadsideConversation) conversationId: %hhu", buf, 8u);
      v187 = *v3;
    }

    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      sub_100E253C8(v185 + 272, buf);
      if (v280[1] >= 0)
      {
        v190 = buf;
      }

      else
      {
        v190 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v190;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v187 = *v3;
    }

    if (!os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_388;
    }

    if (*(v185 + 290) == 1)
    {
      v191 = sub_1009762C8(*(v185 + 288));
    }

    else
    {
      v191 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v191;
    v192 = "#I [d] (CAState) (RoadsideConversation) fromService: %{public}s";
    v193 = v187;
    v194 = 12;
    goto LABEL_387;
  }

  if (v188)
  {
    *buf = 0;
    v192 = "#I [d] (CAState) (RoadsideConversation) roadsideConversationState not set";
    v193 = v187;
    v194 = 2;
LABEL_387:
    _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, v192, buf, v194);
  }

LABEL_388:
  v195 = *(v1 + 40);
  v196 = os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
  v197 = *(v1 + 184);
  if (v196)
  {
    v198 = (v197 + 384);
    if (*(v197 + 407) < 0)
    {
      v198 = *v198;
    }

    *buf = 136446210;
    *&buf[4] = v198;
    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) emergencyOrRoadsideSessionInitiatedBy: %{public}s", buf, 0xCu);
    v197 = *(v1 + 184);
    v195 = *(v1 + 40);
  }

  v199 = *(v197 + 368);
  v200 = os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
  if (v199 == 1)
  {
    if (v200)
    {
      v201 = sub_1009766A4(*(v197 + 344));
      *buf = 136446210;
      *&buf[4] = v201;
      _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) exitReason: %{public}s", buf, 0xCu);
      v195 = *v3;
    }

    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
    {
      v202 = *(v197 + 360);
      sub_10097642C(v202, buf);
      v203 = v280[1] >= 0 ? buf : *buf;
      LODWORD(v277.__r_.__value_.__l.__data_) = 67109378;
      HIDWORD(v277.__r_.__value_.__r.__words[0]) = v202;
      LOWORD(v277.__r_.__value_.__r.__words[1]) = 2080;
      *(&v277.__r_.__value_.__r.__words[1] + 2) = v203;
      _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) wasActiveservices: { [Mask: %u] %s }", &v277, 0x12u);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v200)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) connectionClosedState not set", buf, 2u);
  }

  v204 = *(v1 + 184);
  v205 = *(v204 + 377);
  v118 = *(v1 + 40);
  v206 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (v205 == 1)
  {
    if (!v206)
    {
      goto LABEL_413;
    }

    if (*(v204 + 376))
    {
      v207 = "true";
    }

    else
    {
      v207 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v207;
    v129 = "#I [d] (CAState) (TryOut) tryOutOfferPending: %{public}s";
    v208 = v118;
    v209 = 12;
    goto LABEL_412;
  }

  if (!v206)
  {
    goto LABEL_413;
  }

  *buf = 0;
  v129 = "#I [d] (CAState) (TryOut) tryOutState not set";
LABEL_411:
  v208 = v118;
  v209 = 2;
LABEL_412:
  _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, v129, buf, v209);
LABEL_413:
  v210 = *(v1 + 200);
  v211 = *(v1 + 40);
  v212 = os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT);
  if (!v210)
  {
    if (!v212)
    {
      goto LABEL_451;
    }

    *buf = 0;
    v229 = "#I [d] (CAServicePlot) ServicePlot not set";
    v230 = v211;
    v231 = 2;
    goto LABEL_450;
  }

  if (v212)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) ServicePlot is valid, all times are GPS times", buf, 2u);
    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    v213 = *v210;
    *buf = 134217984;
    *&buf[4] = v213;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) version: %llu", buf, 0xCu);
    v211 = *v3;
  }

  v275 = v210;
  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, v210[1]);
    if (v280[1] >= 0)
    {
      v214 = buf;
    }

    else
    {
      v214 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v214;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) startsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, v210[2]);
    if (v280[1] >= 0)
    {
      v215 = buf;
    }

    else
    {
      v215 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v215;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) endsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) readings [", buf, 2u);
  }

  v216 = v210[3];
  for (i = v210[4]; v216 != i; v216 += 32)
  {
    v218 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      std::to_string(&v277, *v216);
      v219 = v1;
      v220 = v3;
      v221 = SHIBYTE(v277.__r_.__value_.__r.__words[2]);
      v222 = v277.__r_.__value_.__r.__words[0];
      std::to_string(&v276, *(v216 + 8));
      v223 = &v277;
      if (v221 < 0)
      {
        v223 = v222;
      }

      v224 = &v276;
      if ((v276.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v224 = v276.__r_.__value_.__r.__words[0];
      }

      v225 = *(v216 + 16) * 180.0 / 3.14159265;
      v226 = *(v216 + 24) * 180.0;
      *buf = 136446979;
      *&buf[4] = v223;
      *&buf[12] = 2082;
      v279 = v224;
      *v280 = 2049;
      *&v280[2] = v225;
      v281 = 2049;
      v282 = v226 / 3.14159265;
      _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) readings - at: %{public}s, targetID: %{public}s, heading: %{private}.2f, service: %{private}.2f", buf, 0x2Au);
      if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v276.__r_.__value_.__l.__data_);
      }

      v3 = v220;
      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v277.__r_.__value_.__l.__data_);
      }

      v1 = v219;
    }
  }

  v227 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v228 = (v275[4] - v275[3]) >> 5;
    *buf = 134217984;
    *&buf[4] = v228;
    v229 = "#I [d] (CAServicePlot) readings ] %zu readings";
    v230 = v227;
    v231 = 12;
LABEL_450:
    _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, v229, buf, v231);
  }

LABEL_451:
  v232 = *(v1 + 760);
  v233 = *(v1 + 40);
  v234 = os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
  if (v232 != 1)
  {
    if (!v234)
    {
      goto LABEL_472;
    }

    *buf = 0;
    v239 = "#I [d] Offer not set";
    v240 = v233;
    v241 = 2;
    goto LABEL_471;
  }

  if (v234)
  {
    if (*(v1 + 736))
    {
      v235 = "true";
    }

    else
    {
      v235 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v235;
    _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "#I [d] Offer requested: %s", buf, 0xCu);
    v233 = *(v1 + 40);
  }

  if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
  {
    v236 = *(v1 + 720);
    if (v236)
    {
      isExpired = AutoStartTimer::isExpired(v236);
      v238 = "running";
      if (isExpired)
      {
        v238 = "expired";
      }
    }

    else
    {
      v238 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v238;
    _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "#I [d] Offer tracker: %s", buf, 0xCu);
    v233 = *v3;
  }

  if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 744))
    {
      v242 = "true";
    }

    else
    {
      v242 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v242;
    v239 = "#I [d] Offer is presented: %s";
    v240 = v233;
    v241 = 12;
LABEL_471:
    _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, v239, buf, v241);
  }

LABEL_472:
  v243 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v244 = *(v1 + 768);
    if (v244)
    {
      v245 = AutoStartTimer::isExpired(v244);
      v246 = "running";
      if (v245)
      {
        v246 = "expired";
      }
    }

    else
    {
      v246 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v246;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Declined offer tracker: %s", buf, 0xCu);
    v243 = *v3;
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    v247 = *(v1 + 808);
    v248 = *(v1 + 816);
    *buf = 134218240;
    *&buf[4] = v247;
    *&buf[12] = 2048;
    v279 = v248;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Offer since last metric report: presented - %llu, accepted - %llu", buf, 0x16u);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 784))
    {
      v249 = "true";
    }

    else
    {
      v249 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v249;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Instant offer is presented: %s", buf, 0xCu);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    v250 = *(v1 + 824);
    v251 = *(v1 + 832);
    *buf = 134218240;
    *&buf[4] = v250;
    *&buf[12] = 2048;
    v279 = v251;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Instant offer since last metric report: presented - %llu, accepted - %llu", buf, 0x16u);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 840))
    {
      v252 = "true";
    }

    else
    {
      v252 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v252;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Messaging was used at least once this time off grid: %s", buf, 0xCu);
    v243 = *(v1 + 40);
  }

  v253 = *(v1 + 842);
  v254 = os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT);
  if (v253 == 1)
  {
    if (!v254)
    {
      goto LABEL_502;
    }

    if (*(v1 + 841))
    {
      v255 = "on";
    }

    else
    {
      v255 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v255;
    v256 = "#I [d] OffTheGrid mode: %s";
    v257 = v243;
    v258 = 12;
  }

  else
  {
    if (!v254)
    {
      goto LABEL_502;
    }

    *buf = 0;
    v256 = "#I [d] OffTheGrid mode: not fetched yet";
    v257 = v243;
    v258 = 2;
  }

  _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, v256, buf, v258);
LABEL_502:
  v259 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 843))
    {
      v260 = "yes";
    }

    else
    {
      v260 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v260;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Display is active: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 844))
    {
      v261 = "yes";
    }

    else
    {
      v261 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v261;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Coversheet is active: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 845))
    {
      v262 = "yes";
    }

    else
    {
      v262 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v262;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Suppress banner: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 800))
    {
      v263 = "true";
    }

    else
    {
      v263 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v263;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d]] Last instant offer source connection assistant: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 847) == 1)
    {
      if (*(v1 + 846))
      {
        v264 = "true";
      }

      else
      {
        v264 = "false";
      }
    }

    else
    {
      v264 = "<none>";
    }

    *buf = 136315138;
    *&buf[4] = v264;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] GPS Satellites are visible: %s", buf, 0xCu);
    v259 = *v3;
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    v265 = *(v1 + 848);
    if (v265)
    {
      v266 = AutoStartTimer::isExpired(v265);
      v267 = "running";
      if (v266)
      {
        v267 = "expired";
      }
    }

    else
    {
      v267 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v267;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] GPS acquisition tracker: %s", buf, 0xCu);
    v259 = *v3;
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 864))
    {
      v268 = "true";
    }

    else
    {
      v268 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v268;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Surface GPS acquisition status to user: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 887))
    {
      v269 = "true";
    }

    else
    {
      v269 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v269;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Is emergency voice call capable: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    v270 = sub_100976934(*(v1 + 888));
    *buf = 136315138;
    *&buf[4] = v270;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Stewie internet interface: %s", buf, 0xCu);
  }

  v271 = *(v1 + 216);
  if (v271)
  {
    stewie::ConnectionAssistantTargetDataSource::handleDumpState(v271);
  }

  else
  {
    v272 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v272, OS_LOG_TYPE_DEFAULT, "#I [d] TargetDataSource not set", buf, 2u);
    }
  }

  v273 = *(v1 + 328);
  if (v273)
  {
    stewie::ConnectionAssistantGPSDataSource::handleDumpState(v273);
  }

  else
  {
    v274 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_DEFAULT, "#I [d] GPSDataSource not set", buf, 2u);
    }
  }
}

void sub_10135B0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10135B0DC(void *a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  object[0] = a1;
  object[1] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object[1] = xpc_null_create();
  }

  sub_101362508(&v8, a3);
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135B240(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135B288(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10135B2E4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_10103C5F8(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_10135B40C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10135B454(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_1003BCAB4(result, a4);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_10135B4D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_10135B4F0(unint64_t *result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v93 = *(a2 - 2);
        v94 = *v8;
        if (v93 < *v8)
        {
          v95 = v8[1];
          *v8 = v93;
          v8[1] = *(a2 - 1);
          *(a2 - 2) = v94;
          *(a2 - 1) = v95;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v88 = v8[2];
      v89 = *v8;
      v90 = v8[4];
      if (v88 >= *v8)
      {
        if (v90 < v88)
        {
          v146 = v8[3];
          v147 = v8[5];
          v8[2] = v90;
          v8[3] = v147;
          v8[4] = v88;
          v8[5] = v146;
          if (v90 < v89)
          {
            v148 = v8[1];
            *v8 = v90;
            v8[1] = v147;
            v8[2] = v89;
            v8[3] = v148;
          }

          goto LABEL_195;
        }
      }

      else
      {
        v91 = v8[1];
        if (v90 < v88)
        {
          v92 = v8[5];
          *v8 = v90;
          v8[1] = v92;
          goto LABEL_193;
        }

        v162 = v8[3];
        *v8 = v88;
        v8[1] = v162;
        v8[2] = v89;
        v8[3] = v91;
        if (v90 < v89)
        {
          v163 = v8[5];
          v8[2] = v90;
          v8[3] = v163;
LABEL_193:
          v8[4] = v89;
          v8[5] = v91;
          v88 = v89;
LABEL_195:
          v164 = *(a2 - 2);
          if (v164 < v88)
          {
            v165 = v8[5];
            v8[4] = v164;
            v8[5] = *(a2 - 1);
            *(a2 - 2) = v88;
            *(a2 - 1) = v165;
            v166 = v8[4];
            v167 = v8[2];
            if (v166 < v167)
            {
              v168 = v8[3];
              v169 = v8[5];
              v8[2] = v166;
              v8[3] = v169;
              v8[4] = v167;
              v8[5] = v168;
              v170 = *v8;
              if (v166 < *v8)
              {
                v171 = v8[1];
                *v8 = v166;
                v8[1] = v169;
                v8[2] = v170;
                v8[3] = v171;
              }
            }
          }

          return result;
        }
      }

      v88 = v90;
      goto LABEL_195;
    }

    if (v9 == 5)
    {

      return sub_10135BF40(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v100 = v8 + 2;
      v102 = v8 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v8;
          do
          {
            v105 = v100;
            v106 = v104[2];
            v107 = *v104;
            if (v106 < *v104)
            {
              v108 = v104[3];
              v109 = v103;
              while (1)
              {
                v110 = v8 + v109;
                v111 = *(v8 + v109 + 8);
                *(v110 + 2) = v107;
                *(v110 + 3) = v111;
                if (!v109)
                {
                  break;
                }

                v107 = *(v110 - 2);
                v109 -= 16;
                if (v106 >= v107)
                {
                  v112 = (v8 + v109 + 16);
                  goto LABEL_131;
                }
              }

              v112 = v8;
LABEL_131:
              *v112 = v106;
              v112[1] = v108;
            }

            v100 = v105 + 2;
            v103 += 16;
            v104 = v105;
          }

          while (v105 + 2 != a2);
        }
      }

      else if (!v102)
      {
        v154 = v8 + 3;
        do
        {
          v155 = v100;
          v156 = v8[2];
          v157 = *v8;
          if (v156 < *v8)
          {
            v158 = v8[3];
            v159 = v154;
            do
            {
              v160 = v159;
              v161 = *(v159 - 2);
              v159 -= 2;
              *(v160 - 1) = v157;
              *v160 = v161;
              v157 = *(v160 - 5);
            }

            while (v156 < v157);
            *(v159 - 1) = v156;
            *v159 = v158;
          }

          v100 = v155 + 2;
          v154 += 2;
          v8 = v155;
        }

        while (v155 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v113 = (v9 - 2) >> 1;
        v114 = v113;
        do
        {
          v115 = v114;
          if (v113 >= v114)
          {
            v116 = (2 * v114) | 1;
            v117 = &v8[2 * v116];
            if (2 * v115 + 2 >= v9)
            {
              v118 = *v117;
            }

            else
            {
              v118 = *v117;
              v119 = v117[2];
              if (*v117 <= v119)
              {
                v118 = v117[2];
              }

              if (*v117 < v119)
              {
                v117 += 2;
                v116 = 2 * v115 + 2;
              }
            }

            v120 = &v8[2 * v115];
            v121 = *v120;
            if (v118 >= *v120)
            {
              v122 = v120[1];
              do
              {
                v123 = v117;
                *v120 = v118;
                v120[1] = v117[1];
                if (v113 < v116)
                {
                  break;
                }

                v124 = (2 * v116) | 1;
                v117 = &v8[2 * v124];
                v116 = 2 * v116 + 2;
                if (v116 >= v9)
                {
                  v118 = *v117;
                  v116 = v124;
                }

                else
                {
                  v118 = *v117;
                  result = v117 + 2;
                  v125 = v117[2];
                  if (*v117 <= v125)
                  {
                    v118 = v117[2];
                  }

                  if (*v117 >= v125)
                  {
                    v116 = v124;
                  }

                  else
                  {
                    v117 += 2;
                  }
                }

                v120 = v123;
              }

              while (v118 >= v121);
              *v123 = v121;
              v123[1] = v122;
            }
          }

          v114 = v115 - 1;
        }

        while (v115);
        do
        {
          if (v9 >= 2)
          {
            v126 = 0;
            v127 = *v8;
            v128 = v8[1];
            v129 = v8;
            do
            {
              v130 = &v129[2 * v126];
              v131 = v130 + 2;
              v132 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 >= v9)
              {
                v133 = *v131;
                v126 = v132;
              }

              else
              {
                v135 = v130[4];
                v134 = v130 + 4;
                v133 = v135;
                result = *(v134 - 2);
                v136 = result >= v135;
                if (result > v135)
                {
                  v133 = *(v134 - 2);
                }

                if (v136)
                {
                  v126 = v132;
                }

                else
                {
                  v131 = v134;
                }
              }

              *v129 = v133;
              v129[1] = v131[1];
              v129 = v131;
            }

            while (v126 <= ((v9 - 2) >> 1));
            if (v131 == a2 - 2)
            {
              *v131 = v127;
              v131[1] = v128;
            }

            else
            {
              *v131 = *(a2 - 2);
              v131[1] = *(a2 - 1);
              *(a2 - 2) = v127;
              *(a2 - 1) = v128;
              v137 = (v131 - v8 + 16) >> 4;
              v138 = v137 < 2;
              v139 = v137 - 2;
              if (!v138)
              {
                v140 = v139 >> 1;
                v141 = &v8[2 * v140];
                v142 = *v141;
                v143 = *v131;
                if (*v141 < *v131)
                {
                  v144 = v131[1];
                  do
                  {
                    v145 = v141;
                    *v131 = v142;
                    v131[1] = v141[1];
                    if (!v140)
                    {
                      break;
                    }

                    v140 = (v140 - 1) >> 1;
                    v141 = &v8[2 * v140];
                    v142 = *v141;
                    v131 = v145;
                  }

                  while (*v141 < v143);
                  *v145 = v143;
                  v145[1] = v144;
                }
              }
            }
          }

          a2 -= 2;
          v138 = v9-- > 2;
        }

        while (v138);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = *v8;
      if (*v10 >= *v8)
      {
        if (v11 < v12)
        {
          v18 = v10[1];
          *v10 = v11;
          v10[1] = *(a2 - 1);
          *(a2 - 2) = v12;
          *(a2 - 1) = v18;
          v19 = *v8;
          if (*v10 < *v8)
          {
            v20 = v8[1];
            v21 = v10[1];
            *v8 = *v10;
            v8[1] = v21;
            *v10 = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = v8[1];
        if (v11 < v12)
        {
          *v8 = v11;
          v8[1] = *(a2 - 1);
          goto LABEL_27;
        }

        v26 = v10[1];
        *v8 = v12;
        v8[1] = v26;
        *v10 = v13;
        v10[1] = v14;
        v27 = *(a2 - 2);
        if (v27 < v13)
        {
          *v10 = v27;
          v10[1] = *(a2 - 1);
LABEL_27:
          *(a2 - 2) = v13;
          *(a2 - 1) = v14;
        }
      }

      v28 = *(v10 - 2);
      v29 = v8[2];
      v30 = *(a2 - 4);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *(v10 - 1);
          *(v10 - 2) = v30;
          *(v10 - 1) = *(a2 - 3);
          *(a2 - 4) = v28;
          *(a2 - 3) = v32;
          v33 = *(v10 - 2);
          v34 = v8[2];
          if (v33 < v34)
          {
            v35 = v8[3];
            v36 = *(v10 - 1);
            v8[2] = v33;
            v8[3] = v36;
            *(v10 - 2) = v34;
            *(v10 - 1) = v35;
          }
        }
      }

      else
      {
        v31 = v8[3];
        if (v30 < v28)
        {
          v8[2] = v30;
          v8[3] = *(a2 - 3);
          goto LABEL_39;
        }

        v39 = *(v10 - 1);
        v8[2] = v28;
        v8[3] = v39;
        *(v10 - 2) = v29;
        *(v10 - 1) = v31;
        v40 = *(a2 - 4);
        if (v40 < v29)
        {
          *(v10 - 2) = v40;
          *(v10 - 1) = *(a2 - 3);
LABEL_39:
          *(a2 - 4) = v29;
          *(a2 - 3) = v31;
        }
      }

      v41 = v10[2];
      v42 = v8[4];
      v43 = *(a2 - 6);
      if (v41 >= v42)
      {
        if (v43 < v41)
        {
          v45 = v10[3];
          v10[2] = v43;
          v10[3] = *(a2 - 5);
          *(a2 - 6) = v41;
          *(a2 - 5) = v45;
          v46 = v10[2];
          v47 = v8[4];
          if (v46 < v47)
          {
            v48 = v8[5];
            v49 = v10[3];
            v8[4] = v46;
            v8[5] = v49;
            v10[2] = v47;
            v10[3] = v48;
          }
        }
      }

      else
      {
        v44 = v8[5];
        if (v43 < v41)
        {
          v8[4] = v43;
          v8[5] = *(a2 - 5);
          goto LABEL_48;
        }

        v50 = v10[3];
        v8[4] = v41;
        v8[5] = v50;
        v10[2] = v42;
        v10[3] = v44;
        v51 = *(a2 - 6);
        if (v51 < v42)
        {
          v10[2] = v51;
          v10[3] = *(a2 - 5);
LABEL_48:
          *(a2 - 6) = v42;
          *(a2 - 5) = v44;
        }
      }

      v52 = *v10;
      v53 = *(v10 - 2);
      v54 = v10[2];
      if (*v10 >= v53)
      {
        if (v54 >= v52)
        {
LABEL_55:
          v53 = v52;
        }

        else
        {
          v57 = v10[1];
          v58 = v10[3];
          *v10 = v54;
          v10[1] = v58;
          v10[2] = v52;
          v10[3] = v57;
          if (v54 >= v53)
          {
            goto LABEL_58;
          }

          v59 = *(v10 - 1);
          *(v10 - 2) = v54;
          *(v10 - 1) = v58;
          *v10 = v53;
          v10[1] = v59;
        }
      }

      else
      {
        v55 = *(v10 - 1);
        if (v54 < v52)
        {
          v56 = v10[3];
          *(v10 - 2) = v54;
          *(v10 - 1) = v56;
          v10[2] = v53;
          v10[3] = v55;
          goto LABEL_55;
        }

        v60 = v10[1];
        *(v10 - 2) = v52;
        *(v10 - 1) = v60;
        *v10 = v53;
        v10[1] = v55;
        if (v54 < v53)
        {
          v61 = v10[3];
          *v10 = v54;
          v10[1] = v61;
          v10[2] = v53;
          v10[3] = v55;
LABEL_58:
          v53 = v54;
        }
      }

      v62 = v10[1];
      v63 = *v8;
      *v8 = v53;
      v8[1] = v62;
      *v10 = v63;
      goto LABEL_60;
    }

    v15 = *v8;
    v16 = *v10;
    if (*v8 >= *v10)
    {
      if (v11 < v15)
      {
        v22 = v8[1];
        *v8 = v11;
        v8[1] = *(a2 - 1);
        *(a2 - 2) = v15;
        *(a2 - 1) = v22;
        v23 = *v10;
        if (*v8 < *v10)
        {
          v24 = v10[1];
          v25 = v8[1];
          *v10 = *v8;
          v10[1] = v25;
          *v8 = v23;
          v8[1] = v24;
        }
      }
    }

    else
    {
      v17 = v10[1];
      if (v11 < v15)
      {
        *v10 = v11;
        v10[1] = *(a2 - 1);
LABEL_36:
        *(a2 - 2) = v16;
        *(a2 - 1) = v17;
        goto LABEL_60;
      }

      v37 = v8[1];
      *v10 = v15;
      v10[1] = v37;
      *v8 = v16;
      v8[1] = v17;
      v38 = *(a2 - 2);
      if (v38 < v16)
      {
        *v8 = v38;
        v8[1] = *(a2 - 1);
        goto LABEL_36;
      }
    }

LABEL_60:
    --a3;
    v64 = *v8;
    if ((a4 & 1) == 0 && *(v8 - 2) >= v64)
    {
      if (v64 >= *(a2 - 2))
      {
        v79 = v8 + 2;
        do
        {
          v7 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 2;
        }

        while (v64 >= *v7);
      }

      else
      {
        v7 = v8;
        do
        {
          v78 = v7[2];
          v7 += 2;
        }

        while (v64 >= v78);
      }

      v80 = a2;
      if (v7 < a2)
      {
        v80 = a2;
        do
        {
          v81 = *(v80 - 2);
          v80 -= 2;
        }

        while (v64 < v81);
      }

      v82 = v8[1];
      if (v7 < v80)
      {
        v83 = *v7;
        v84 = *v80;
        do
        {
          v85 = v7[1];
          *v7 = v84;
          v7[1] = v80[1];
          *v80 = v83;
          v80[1] = v85;
          do
          {
            v86 = v7[2];
            v7 += 2;
            v83 = v86;
          }

          while (v64 >= v86);
          do
          {
            v87 = *(v80 - 2);
            v80 -= 2;
            v84 = v87;
          }

          while (v64 < v87);
        }

        while (v7 < v80);
      }

      if (v7 - 2 != v8)
      {
        *v8 = *(v7 - 2);
        v8[1] = *(v7 - 1);
      }

      a4 = 0;
      *(v7 - 2) = v64;
      *(v7 - 1) = v82;
      goto LABEL_2;
    }

    v65 = 0;
    v66 = v8[1];
    do
    {
      v67 = v8[v65 + 2];
      v65 += 2;
    }

    while (v67 < v64);
    v68 = &v8[v65];
    v69 = a2;
    if (v65 == 2)
    {
      v69 = a2;
      do
      {
        if (v68 >= v69)
        {
          break;
        }

        v71 = *(v69 - 2);
        v69 -= 2;
      }

      while (v71 >= v64);
    }

    else
    {
      do
      {
        v70 = *(v69 - 2);
        v69 -= 2;
      }

      while (v70 >= v64);
    }

    if (v68 >= v69)
    {
      v7 = &v8[v65];
    }

    else
    {
      v72 = *v69;
      v7 = &v8[v65];
      v73 = v69;
      do
      {
        v74 = v7[1];
        *v7 = v72;
        v7[1] = v73[1];
        *v73 = v67;
        v73[1] = v74;
        do
        {
          v75 = v7[2];
          v7 += 2;
          v67 = v75;
        }

        while (v75 < v64);
        do
        {
          v76 = *(v73 - 2);
          v73 -= 2;
          v72 = v76;
        }

        while (v76 >= v64);
      }

      while (v7 < v73);
    }

    if (v7 - 2 != v8)
    {
      *v8 = *(v7 - 2);
      v8[1] = *(v7 - 1);
    }

    *(v7 - 2) = v64;
    *(v7 - 1) = v66;
    if (v68 < v69)
    {
      goto LABEL_85;
    }

    v77 = sub_10135C0EC(v8, v7 - 2);
    result = sub_10135C0EC(v7, a2);
    if (!result)
    {
      if (v77)
      {
        goto LABEL_2;
      }

LABEL_85:
      result = sub_10135B4F0(v8, v7 - 2, a3, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = v7 - 2;
    if (v77)
    {
      return result;
    }
  }

  v96 = v8[2];
  v97 = *v8;
  v98 = *(a2 - 2);
  if (v96 >= *v8)
  {
    if (v98 < v96)
    {
      v149 = v8[3];
      v8[2] = v98;
      v8[3] = *(a2 - 1);
      *(a2 - 2) = v96;
      *(a2 - 1) = v149;
      v150 = v8[2];
      v151 = *v8;
      if (v150 < *v8)
      {
        v152 = v8[1];
        v153 = v8[3];
        *v8 = v150;
        v8[1] = v153;
        v8[2] = v151;
        v8[3] = v152;
      }
    }
  }

  else
  {
    v99 = v8[1];
    if (v98 >= v96)
    {
      v172 = v8[3];
      *v8 = v96;
      v8[1] = v172;
      v8[2] = v97;
      v8[3] = v99;
      v173 = *(a2 - 2);
      if (v173 >= v97)
      {
        return result;
      }

      v8[2] = v173;
      v8[3] = *(a2 - 1);
    }

    else
    {
      *v8 = v98;
      v8[1] = *(a2 - 1);
    }

    *(a2 - 2) = v97;
    *(a2 - 1) = v99;
  }

  return result;
}

unint64_t *sub_10135BF40(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      v9 = a2[1];
      *a2 = v7;
      a2[1] = a3[1];
      *a3 = v5;
      a3[1] = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        v11 = result[1];
        *result = *a2;
        result[1] = a2[1];
        *a2 = v10;
        a2[1] = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    v8 = result[1];
    if (v7 < v5)
    {
      *result = v7;
      result[1] = a3[1];
LABEL_9:
      *a3 = v6;
      a3[1] = v8;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    result[1] = a2[1];
    *a2 = v6;
    a2[1] = v8;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    v12 = a3[1];
    *a3 = *a4;
    a3[1] = a4[1];
    *a4 = v5;
    a4[1] = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      v14 = a2[1];
      *a2 = *a3;
      a2[1] = a3[1];
      *a3 = v13;
      a3[1] = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        v16 = result[1];
        *result = *a2;
        result[1] = a2[1];
        *a2 = v15;
        a2[1] = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    v18 = a4[1];
    *a4 = *a5;
    a4[1] = a5[1];
    *a5 = v17;
    a5[1] = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = a3[1];
      *a3 = *a4;
      a3[1] = a4[1];
      *a4 = v19;
      a4[1] = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        v22 = a2[1];
        *a2 = *a3;
        a2[1] = a3[1];
        *a3 = v21;
        a3[1] = v22;
        v23 = *result;
        if (*a2 < *result)
        {
          v24 = result[1];
          *result = *a2;
          result[1] = a2[1];
          *a2 = v23;
          a2[1] = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_10135C0EC(unint64_t *a1, unint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 < v6)
        {
          v21 = a1[3];
          a1[2] = v8;
          a1[3] = *(a2 - 1);
          *(a2 - 2) = v6;
          *(a2 - 1) = v21;
          v22 = a1[2];
          v23 = *a1;
          if (v22 < *a1)
          {
            v24 = a1[1];
            v25 = a1[3];
            *a1 = v22;
            a1[1] = v25;
            a1[2] = v23;
            a1[3] = v24;
          }
        }

        return 1;
      }

      v9 = a1[1];
      if (v8 >= v6)
      {
        v32 = a1[3];
        *a1 = v6;
        a1[1] = v32;
        a1[2] = v7;
        a1[3] = v9;
        v33 = *(a2 - 2);
        if (v33 >= v7)
        {
          return 1;
        }

        a1[2] = v33;
        a1[3] = *(a2 - 1);
      }

      else
      {
        *a1 = v8;
        a1[1] = *(a2 - 1);
      }

      *(a2 - 2) = v7;
      *(a2 - 1) = v9;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10135BF40(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1[2];
    v17 = *a1;
    v18 = a1[4];
    if (v16 >= *a1)
    {
      if (v18 < v16)
      {
        v29 = a1[3];
        v30 = a1[5];
        a1[2] = v18;
        a1[3] = v30;
        a1[4] = v16;
        a1[5] = v29;
        if (v18 < v17)
        {
          v31 = a1[1];
          *a1 = v18;
          a1[1] = v30;
          a1[2] = v17;
          a1[3] = v31;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v19 = a1[1];
      if (v18 < v16)
      {
        v20 = a1[5];
        *a1 = v18;
        a1[1] = v20;
LABEL_47:
        a1[4] = v17;
        a1[5] = v19;
        v16 = v17;
LABEL_49:
        v48 = *(a2 - 2);
        if (v48 < v16)
        {
          v49 = a1[5];
          a1[4] = v48;
          a1[5] = *(a2 - 1);
          *(a2 - 2) = v16;
          *(a2 - 1) = v49;
          v50 = a1[4];
          v51 = a1[2];
          if (v50 < v51)
          {
            v52 = a1[3];
            v53 = a1[5];
            a1[2] = v50;
            a1[3] = v53;
            a1[4] = v51;
            a1[5] = v52;
            v54 = *a1;
            if (v50 < *a1)
            {
              v55 = a1[1];
              *a1 = v50;
              a1[1] = v53;
              a1[2] = v54;
              a1[3] = v55;
            }
          }
        }

        return 1;
      }

      v46 = a1[3];
      *a1 = v16;
      a1[1] = v46;
      a1[2] = v17;
      a1[3] = v19;
      if (v18 < v17)
      {
        v47 = a1[5];
        a1[2] = v18;
        a1[3] = v47;
        goto LABEL_47;
      }
    }

    v16 = v18;
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      v5 = a1[1];
      *a1 = v3;
      a1[1] = *(a2 - 1);
      *(a2 - 2) = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 4;
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 >= *a1)
  {
    if (v11 < v12)
    {
      v26 = a1[3];
      v27 = a1[5];
      a1[2] = v11;
      a1[3] = v27;
      a1[4] = v12;
      a1[5] = v26;
      if (v11 < v13)
      {
        v28 = a1[1];
        *a1 = v11;
        a1[1] = v27;
        a1[2] = v13;
        a1[3] = v28;
      }
    }
  }

  else
  {
    v14 = a1[1];
    if (v11 >= v12)
    {
      v34 = a1[3];
      *a1 = v12;
      a1[1] = v34;
      a1[2] = v13;
      a1[3] = v14;
      if (v11 >= v13)
      {
        goto LABEL_34;
      }

      v35 = a1[5];
      a1[2] = v11;
      a1[3] = v35;
    }

    else
    {
      v15 = a1[5];
      *a1 = v11;
      a1[1] = v15;
    }

    a1[4] = v13;
    a1[5] = v14;
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 < *v10)
    {
      v41 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = v40;
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v40 = v43[2];
        v42 -= 16;
        if (v39 >= v40)
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v39;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v10 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void sub_10135C430(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F315C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10135C4B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10135C4E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10135C518(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

stewie::ConnectionAssistantTargetDataSource *sub_10135C558(stewie::ConnectionAssistantTargetDataSource **a1, stewie::ConnectionAssistantTargetDataSource *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    stewie::ConnectionAssistantTargetDataSource::~ConnectionAssistantTargetDataSource(result);

    operator delete();
  }

  return result;
}

ctu::OsLogLogger *sub_10135C5A4(ctu::OsLogLogger **a1, ctu::OsLogLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ctu::OsLogLogger::~OsLogLogger(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_10135C5F0(uint64_t *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = (v1 + 104);
  v4 = *(v1 + 127);
  if (v4 < 0)
  {
    if (*(v1 + 112) != 19)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    v3 = *v3;
  }

  else if (v4 != 19)
  {
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 11);
  v10 = v5 == 0x697463656E6E6F63 && v6 == 0x7473697373416E6FLL && v7 == 0x746E617473697373;
LABEL_16:
  *(v2 + 800) = v10;
  if (*(v1 + 8) == 8 && (*(v2 + 865) & 0x30) != 0 && (*(v2 + 867) & 0x30) == 0)
  {
    if (*(v2 + 843) != 1 || *(v2 + 844) == 1)
    {
      v11 = *(v2 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v12 = "#I Instant offer requested while display is not active or coversheet is active, ignoring this request";
      goto LABEL_21;
    }

    if (!v10 && (*(v2 + 845) & 1) != 0)
    {
      v11 = *(v2 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v12 = "#I Instant offer requested while suppress banner is true and source is not connection assistant, ignoring this request";
      goto LABEL_21;
    }

    if ((*(v2 + 842) & (*(v2 + 841) != 0)) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (*(v2 + 784))
    {
      v15 = *(v2 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = sub_100976680(8u);
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Instant offer already pending, replacing it with new one for: %s", buf, 0xCu);
      }
    }

    else
    {
      ++*(v2 + 824);
      v16 = *(v2 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = sub_100976680(8u);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Presenting instant offer for: %s", buf, 0xCu);
      }

      v17 = *(v2 + 144);
      v18 = *(v2 + 24);
      object = v18;
      if (v18)
      {
        dispatch_retain(v18);
      }

      sub_100004AA0(buf, (v2 + 8));
      v19 = *buf;
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v19 + 1));
      }

      *buf = off_101F31848;
      *&buf[8] = v19;
      v27 = buf;
      (*(*v17 + 16))(&v25, v17, v14, &object, buf);
      v20 = v25;
      v25 = 0uLL;
      v21 = *(v2 + 792);
      *(v2 + 784) = v20;
      if (v21)
      {
        sub_100004A34(v21);
        if (*(&v25 + 1))
        {
          sub_100004A34(*(&v25 + 1));
        }
      }

      sub_10135E90C(buf);
      if (object)
      {
        dispatch_release(object);
      }
    }
  }

  else
  {
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "#I Instant offer is not relevant at the moment (due to service state), ignoring this request";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }
  }

LABEL_22:
  sub_10135C9B8(&v23);
  return sub_1000049E0(&v22);
}

void sub_10135C974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, char a15)
{
  sub_10135E90C(&a15);
  if (object)
  {
    dispatch_release(object);
  }

  sub_10135C9B8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135C9B8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 127) < 0)
    {
      operator delete(*(v1 + 104));
    }

    if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10135CA2C(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (!sub_10135538C(*v1, (v1 + 1), 0))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to start assistant app", buf, 2u);
    }
  }

  sub_10135C9B8(&v6);
  return sub_1000049E0(&v5);
}

void sub_10135CABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10135C9B8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10135CAD8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v2 + 664) = 0;
  v3 = *(v2 + 624);
  if (v3 == 1)
  {
    v4 = *(v1 + 2);
    *(v2 + 376) = v4;
    if ((v1[7] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10135D464(v2 + 368);
    *(v2 + 592) = 0u;
    *(v2 + 608) = 0u;
    *(v2 + 560) = 0u;
    *(v2 + 576) = 0u;
    *(v2 + 528) = 0u;
    *(v2 + 544) = 0u;
    *(v2 + 496) = 0u;
    *(v2 + 512) = 0u;
    *(v2 + 464) = 0u;
    *(v2 + 480) = 0u;
    *(v2 + 432) = 0u;
    *(v2 + 448) = 0u;
    *(v2 + 400) = 0u;
    *(v2 + 416) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 384) = 0u;
    *(v2 + 624) = 1;
    v4 = *(v1 + 2);
    *(v2 + 376) = v4;
    if (*(v1 + 56) != 1)
    {
      goto LABEL_14;
    }
  }

  if ((v4 - 1) >= 4)
  {
    v4 = 0;
  }

  v5 = *(v1 + 50);
  v6 = *(v1 + 51);
  LOWORD(aBlock) = *(v1 + 26);
  BYTE2(aBlock) = *(v1 + 54);
  if (*(v2 + 420) == 1)
  {
    *(v2 + 420) = 0;
  }

  *(v2 + 408) = v4;
  *(v2 + 412) = v5;
  *(v2 + 413) = v6;
  *(v2 + 414) = aBlock;
  *(v2 + 416) = BYTE2(aBlock);
  *(v2 + 420) = 1;
  if ((*(v2 + 407) & 0x8000000000000000) != 0)
  {
    if (*(v2 + 392))
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 407))
  {
    goto LABEL_14;
  }

  std::string::operator=((v2 + 384), (v1 + 13));
LABEL_14:
  if (*(v1 + 96) != 1)
  {
    goto LABEL_23;
  }

  if ((*(v2 + 624) & 1) == 0)
  {
    sub_1000D1644();
  }

  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  *(&aBlock + 6) = v1[9];
  BYTE14(aBlock) = *(v1 + 80);
  *&v22[7] = *(v1 + 44);
  v22[9] = *(v1 + 90);
  if (*(v2 + 456) == 1)
  {
    *(v2 + 456) = 0;
  }

  *(v2 + 424) = v7;
  *(v2 + 425) = v8;
  *(v2 + 426) = aBlock;
  *(v2 + 433) = *(&aBlock + 7);
  *(v2 + 441) = *v22;
  *(v2 + 449) = *&v22[8];
  *(v2 + 456) = 1;
  if ((*(v2 + 407) & 0x8000000000000000) != 0)
  {
    if (*(v2 + 392))
    {
      goto LABEL_23;
    }
  }

  else if (*(v2 + 407))
  {
    goto LABEL_23;
  }

  std::string::operator=((v2 + 384), (v1 + 13));
LABEL_23:
  if (*(v2 + 656) == 1)
  {
    *(v2 + 656) = 0;
  }

  if ((v3 & 1) == 0)
  {
    sub_100004AA0(&aBlock, (v2 + 8));
    v9 = aBlock;
    if (*(&aBlock + 1))
    {
      atomic_fetch_add_explicit((*(&aBlock + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v9 + 1));
    }

    v10 = *(v2 + 56);
    sub_10000501C(v22, "stw.catick");
    v11 = *(v2 + 24);
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1174405120;
    v19 = sub_10135CFCC;
    v20 = &unk_101F31678;
    v21 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v15 = _Block_copy(&aBlock);
    sub_100E7CA80(v10, v22, 2, 1000000, &object, &v15);
    if ((*(v2 + 624) & 1) == 0)
    {
      sub_1000D1644();
    }

    v12 = *buf;
    *buf = 0;
    v13 = *(v2 + 368);
    *(v2 + 368) = v12;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      v14 = *buf;
      *buf = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v23 < 0)
    {
      operator delete(*v22);
    }

    sub_10135403C(v2, 0);
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v21 + 1));
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v9 + 1));
    }
  }

  sub_101356AA8(v2);
}

void sub_10135CEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10135CFCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        if (*(v4 + 624) != 1 || *(v4 + 680) == 1)
        {
          if (*(v4 + 712) == 1)
          {
            *(v4 + 712) = 0;
          }

          goto LABEL_19;
        }

        v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        rep = v5.__d_.__rep_;
        if ((*(v4 + 712) & 1) == 0)
        {
          v9 = *(v4 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Looks like Assistant app is not running, starting countdown", &buf, 2u);
            if (*(v4 + 712))
            {
              *(v4 + 712) = 0;
            }
          }

          *(v4 + 688) = rep;
          *(v4 + 696) = rep;
          *(v4 + 704) = 0;
          *(v4 + 708) = 0;
          *(v4 + 711) = BYTE2(buf);
          *(v4 + 709) = buf;
          *(v4 + 712) = 1;
LABEL_19:
          sub_10135403C(v4, 1);
          sub_101356AA8(v4);
        }

        if (v5.__d_.__rep_ - *(v4 + 696) < 3000000000)
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 704);
        if (v7 >= 6)
        {
          if ((*(v4 + 708) & 1) == 0)
          {
            *(v4 + 708) = 1;
            v8 = *(v4 + 40);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v7;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Too many Assistant app reopen requests sent (%u), failed to reopen the app", &buf, 8u);
            }
          }

          goto LABEL_19;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        buf = 0u;
        v47 = 0u;
        v10 = *(v4 + 376);
        sub_10000501C(&v44, "AppRelaunch");
        LODWORD(buf) = v10;
        BYTE4(buf) = 0;
        BYTE8(buf) = 0;
        LOBYTE(v48) = 0;
        BYTE8(v48) = 0;
        BYTE10(v48) = 0;
        LOBYTE(v49) = 0;
        BYTE8(v49) = 0;
        BYTE8(v51) = 0;
        v52 = v44;
        v53 = v45;
        v44 = 0uLL;
        v45 = 0;
        if (*(v4 + 420))
        {
          v11 = *(v4 + 408);
          v12 = *(v4 + 412);
          v13 = *(v4 + 413);
          v14 = *(v4 + 414);
          sub_10000501C(__p, "AppRelaunch");
          if ((v11 - 1) >= 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = v11;
          }

          *v24 = v15;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v12;
          v30 = v13;
          v31 = v14;
          v32 = 1;
          v33 = 0;
          v41 = 0;
          v42 = *__p;
          v43 = v23;
          __p[0] = 0;
          __p[1] = 0;
          v23 = 0;
        }

        else
        {
          if (*(v4 + 456) != 1)
          {
LABEL_32:
            ++*(v4 + 704);
            *(v4 + 696) = rep;
            if (sub_10135538C(v4, &buf, 1))
            {
              v21 = *(v4 + 40);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Assistant app reopen request sent, waiting for the app to start", v24, 2u);
              }
            }

            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52);
            }

            if (v48 == 1 && SHIBYTE(v47) < 0)
            {
              operator delete(*(&buf + 1));
            }

            goto LABEL_19;
          }

          v16 = *(v4 + 424);
          v17 = *(v4 + 425);
          v18 = *(v4 + 432);
          v19 = *(v4 + 440);
          v20 = *(v4 + 448);
          sub_10000501C(__p, "AppRelaunch");
          *v24 = 7;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v32 = 0;
          v33 = v16;
          v34 = v17;
          v35 = 0;
          v36 = 0;
          v37 = v18;
          v38 = v19;
          v39 = v20;
          v40 = 0;
          v41 = 1;
          v43 = v23;
          v42 = *__p;
          __p[1] = 0;
          v23 = 0;
          __p[0] = 0;
        }

        sub_101356974(&buf, v24);
        sub_101356A00(v24);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_32;
      }

      sub_100004A34(v3);
    }
  }
}

void sub_10135D40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_101356A00(&a31);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_10135D438(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10135D454(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10135D464(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    v1 = result;
    v2 = *(result + 248);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 152) == 1)
    {
      sub_1000475BC((v1 + 96));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(v1 + 256) = 0;
  }

  return result;
}

void sub_10135D4F8(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 664) = 0;
  if ((*(v2 + 656) & 1) == 0)
  {
    *(v2 + 632) = 0;
    *(v2 + 640) = 0;
    *(v2 + 648) = 0;
    *(v2 + 656) = 1;
  }

  *(v2 + 632) = *(v1 + 3);
  *(v2 + 640) = std::chrono::system_clock::now();
  *(v2 + 648) = *(v1 + 4);
  if (*(v2 + 624) == 1)
  {
    sub_10135D464(v2 + 368);
    sub_10135C558((v2 + 216), 0);
    sub_10135C5A4((v2 + 328), 0);
    if (*(v2 + 360) == 1)
    {
      *(v2 + 360) = 0;
    }
  }

  sub_101356AA8(v2);
}

uint64_t sub_10135D5F0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10135D670(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = v1[4];
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10135D734(&v6);
  return sub_1000049E0(&v5);
}

void sub_10135D70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10135D734(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135D734(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DD7078(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10135D784(uint64_t a1, uint64_t a2)
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