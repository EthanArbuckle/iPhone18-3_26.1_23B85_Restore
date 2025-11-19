uint64_t sub_10154405C(uint64_t a1)
{
  v2 = 672;
  do
  {
    v3 = a1 + v2;
    if (*(a1 + v2 - 9) < 0)
    {
      operator delete(*(v3 - 32));
    }

    if (*(v3 - 33) < 0)
    {
      operator delete(*(a1 + v2 - 56));
    }

    v4 = a1 + v2;
    if (*(a1 + v2 - 73) < 0)
    {
      operator delete(*(v4 - 96));
    }

    if (*(v4 - 105) < 0)
    {
      operator delete(*(a1 + v2 - 128));
    }

    if (*(a1 + v2 - 129) < 0)
    {
      operator delete(*(a1 + v2 - 152));
    }

    v2 -= 168;
  }

  while (v2);
  return a1;
}

void sub_10154411C(void *a1)
{
  if (a1)
  {
    sub_10154411C(*a1);
    sub_10154411C(a1[1]);
    for (i = 0; i != -84; i -= 21)
    {
      v3 = &a1[i];
      if (SHIBYTE(a1[i + 87]) < 0)
      {
        operator delete(v3[85]);
      }

      if (*(v3 + 679) < 0)
      {
        operator delete(a1[i + 82]);
      }

      v4 = &a1[i];
      if (SHIBYTE(a1[i + 79]) < 0)
      {
        operator delete(v4[77]);
      }

      if (*(v4 + 607) < 0)
      {
        operator delete(a1[i + 73]);
      }

      if (SHIBYTE(a1[i + 72]) < 0)
      {
        operator delete(a1[i + 70]);
      }
    }

    operator delete(a1);
  }
}

uint64_t *sub_1015441E4(uint64_t a1, int a2)
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
      v4 = *(v2 + 32);
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

void sub_1015442F4(_Unwind_Exception *a1)
{
  if (v2)
  {
    v5 = v3 - 128;
    v6 = -v2;
    do
    {
      v5 = sub_100AC6EA8(v5) - 168;
      v6 += 168;
    }

    while (v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1015443A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4AB50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015443D8(void *a1, xpc_object_t *a2)
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

uint64_t sub_1015444B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101544570(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4ABD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1015445A0(uint64_t a1)
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

uint64_t sub_101544694(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015446E0(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 72) + 40))(*(**a1 + 72), *(*a1 + 8), *(*a1 + 12), 1, 0);
  operator delete();
}

void sub_101544790(uint64_t a1)
{
  if (qword_101FCAD08 != -1)
  {
    dispatch_once(&qword_101FCAD08, &stru_101F4ACD8);
  }

  v2 = qword_101FCAD00;
  v3 = *(a1 + 8);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Starting STK alert session manager", v6, 2u);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    if (global_queue)
    {
      dispatch_retain(global_queue);
    }

    operator new();
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Unable to load SIMToolkitUI on this platform", buf, 2u);
  }
}

void sub_1015448B4(uint64_t a1, uint64_t a2)
{
  if (qword_101FCAD08 != -1)
  {
    dispatch_once(&qword_101FCAD08, &stru_101F4ACD8);
  }

  if (qword_101FCAD00)
  {
    cf = 0;
    v4 = *(a2 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    if (v4)
    {
      v10 = 0;
      if (ctu::cf::convert_copy())
      {
        v5 = cf;
        cf = v10;
        *buf = v5;
        sub_100005978(buf);
        global_queue = dispatch_get_global_queue(0, 0);
        if (global_queue)
        {
          dispatch_retain(global_queue);
        }

        operator new();
      }
    }

    v7 = *(a1 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Device language passed is not valid", buf, 2u);
    }

    sub_100005978(&cf);
  }

  else
  {
    v8 = *(a1 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Unable to load SIMToolkitUI on this platform", buf, 2u);
    }
  }
}

void sub_101544A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_101544AA4(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  STKAlertSessionManagerInterface::~STKAlertSessionManagerInterface(a1);
}

void sub_101544AE0(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  STKAlertSessionManagerInterface::~STKAlertSessionManagerInterface(a1);

  operator delete();
}

uint64_t sub_101544B5C(uint64_t a1)
{
  result = off_101FB9C80[0]();
  if (a1)
  {

    operator delete();
  }

  return result;
}

void sub_101544BB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101544BDC()
{
  if (qword_101FCAD08 != -1)
  {
    dispatch_once(&qword_101FCAD08, &stru_101F4ACD8);
  }

  v0 = dlsym(qword_101FCAD00, "STKAlertSessionManagerStart");
  off_101FB9C80[0] = v0;

  return v0();
}

const void ***sub_101544C44(const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100005978(v2);
    operator delete();
  }

  return a1;
}

const void ***sub_101544C8C(const void **a1)
{
  v2 = a1;
  off_101FB9C88(*a1);
  return sub_101544C44(&v2);
}

void sub_101544CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_101544C44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101544CE0(uint64_t a1)
{
  if (qword_101FCAD08 != -1)
  {
    dispatch_once(&qword_101FCAD08, &stru_101F4ACD8);
  }

  v2 = dlsym(qword_101FCAD00, "STKAlertSessionManagerSetDeviceLanguage");
  off_101FB9C88 = v2;

  return (v2)(a1);
}

void AttachApnModule::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1015455A4(uint64_t a1)
{
  *a1 = off_101F4AD08;
  sub_100D92208(*(a1 + 168));
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10032D3A4(a1 + 112, *(a1 + 120));
  sub_1000FEFCC((a1 + 88));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  AttachApnModuleInterface::~AttachApnModuleInterface(a1);
}

void sub_101545678(uint64_t a1)
{
  sub_1015455A4(a1);

  operator delete();
}

void sub_1015456B0(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  (*(**(a1 + 144) + 16))(&v1);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1010B56D0();
}

void sub_101545764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101545788(uint64_t a1, dispatch_object_t object)
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

void sub_1015458D4(uint64_t a1, uint64_t a2)
{
  v4 = rest::operator==();
  if ((v4 & 1) == 0)
  {
    PushCount_sync = AttachApnManagerInterface::getPushCount_sync(v4);
    v6 = *(a1 + 112);
    if (v6 != (a1 + 120))
    {
      v7 = (a1 + 168);
      v8 = (a2 + 8);
      v9 = PushCount_sync;
      v10 = "#E handleCarrierBundlesUpdated_sync: Invalid simSlot: %s";
      do
      {
        v11 = *(v6 + 8);
        v12 = *v7;
        if (!*v7)
        {
          goto LABEL_11;
        }

        v13 = a1 + 168;
        do
        {
          if (*(v12 + 32) >= v11)
          {
            v13 = v12;
          }

          v12 = *(v12 + 8 * (*(v12 + 32) < v11));
        }

        while (v12);
        if (v13 != v7 && *(v13 + 32) <= v11)
        {
          v16 = *v8;
          if (!*v8)
          {
            goto LABEL_22;
          }

          v17 = v8;
          do
          {
            if (*(v16 + 32) >= v11)
            {
              v17 = v16;
            }

            v16 = *(v16 + 8 * (*(v16 + 32) < v11));
          }

          while (v16);
          if (v17 == v8 || v11 < *(v17 + 8))
          {
            goto LABEL_22;
          }

          if ((rest::operator==() & 1) == 0)
          {
            v11 = *(v6 + 8);
LABEL_22:
            v29 = 0;
            v30 = 0;
            sub_101545E84(&v29, a1, v11);
            (*(*v29 + 80))(v29, v6 + 5);
            if (sub_101286A80(v6 + 40))
            {
              v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v6 + 8));
              v19 = *v18;
              if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
              {
                v20 = v10;
                v21 = v9;
                v22 = asString();
                v23 = asString();
                v24 = v6 + 6;
                if (*(v6 + 71) < 0)
                {
                  v24 = *v24;
                }

                *buf = 136315650;
                v33 = v22;
                v34 = 2080;
                v35 = v23;
                v36 = 2080;
                v37 = v24;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I handleCarrierBundlesUpdated_sync: changeType: %s, techType: %s, bundleId: %s", buf, 0x20u);
                v9 = v21;
                v10 = v20;
                v8 = (a2 + 8);
              }

              v31[0] = off_101F4B310;
              v31[1] = v18;
              v28 = v28 & 0xFFFFFFFF00000000 | v9;
              v31[2] = v28;
              v31[3] = v31;
              (*(*v29 + 32))(v29, 1, v31);
              sub_10002B644(v31);
            }

            if (v30)
            {
              sub_100004A34(v30);
            }
          }
        }

        else
        {
LABEL_11:
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = subscriber::asString();
            *buf = 136315138;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
          }
        }

        v25 = v6[1];
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
            v26 = v6[2];
            v27 = *v26 == v6;
            v6 = v26;
          }

          while (!v27);
        }

        v6 = v26;
      }

      while (v26 != (a1 + 120));
    }
  }
}

void sub_101545C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  sub_10002B644(va);
  if (a9)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void sub_101545C6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *(a1 + 168);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 168;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 168 && *(v7 + 32) <= a2)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I handleRefreshAttachApn_sync: cause %s", &buf, 0xCu);
    }

    sub_101545E84(&buf, a1, v3);
    v11[0] = off_101F4B3F0;
    v11[3] = v11;
    (*(*buf + 32))(buf, 0, v11);
    sub_10002B644(v11);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  else
  {
LABEL_8:
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E handleRefreshAttachApn_sync: Invalid simSlot: %s", &buf, 0xCu);
    }
  }
}

void sub_101545E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10002B644(&a9);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void *sub_101545E84(void *result, uint64_t a2, int a3)
{
  v5 = *(a2 + 168);
  v3 = (a2 + 168);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  v7 = v4;
  do
  {
    if (*(v7 + 8) >= a3)
    {
      v6 = v7;
    }

    v7 = v7[*(v7 + 8) < a3];
  }

  while (v7);
  if (v6 != v3 && *(v6 + 8) <= a3)
  {
    while (1)
    {
      while (1)
      {
        v8 = *(v4 + 8);
        if (v8 <= a3)
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      if (v8 >= a3)
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
LABEL_15:
        sub_1000A58E4("map::at:  key not found");
      }
    }

    v10 = v4[5];
    v9 = v4[6];
    *result = v10;
    result[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_101545F24(uint64_t a1, int a2, char a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1015495C0;
  v9[3] = &unk_101F4B380;
  v9[4] = a1 + 8;
  v9[5] = &v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A698;
    v14 = &unk_101F4B3C0;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10005973C;
    v14 = &unk_101F4B3A0;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

void sub_10154605C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_10009CF40(&v9, a4);
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

void sub_101546194(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015461AC(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
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

uint64_t sub_1015462D4(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101549D00;
  v7[3] = &unk_101F4B460;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A698;
    v12 = &unk_101F4B3C0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10005973C;
    v12 = &unk_101F4B3A0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_101546408(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
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

void sub_10154654C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_101546564(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_10009CF40(&v9, a4);
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

void sub_1015466AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1015466C4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = AttachApnManagerInterface::getPushCount_sync;
  v5[3] = &unk_101F4B500;
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
    v9 = sub_10154A63C;
    v10 = &unk_101F4B540;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10154A600;
    v10 = &unk_101F4B520;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1015467EC(uint64_t a1, int a2, int a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10154A678;
  v9[3] = &unk_101F4B560;
  v9[4] = a1 + 8;
  v9[5] = &v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A698;
    v14 = &unk_101F4B3C0;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10005973C;
    v14 = &unk_101F4B3A0;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

void sub_101546920(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10154A7E0;
  block[3] = &unk_101F4B580;
  block[4] = a1 + 8;
  block[5] = &v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1015469AC(uint64_t a1)
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

void sub_101546A90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101546AE4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101546B24(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101546B50(ServiceManager::Service *this)
{
  *this = off_101F4AEA8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101546BAC(ServiceManager::Service *this)
{
  *this = off_101F4AEA8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101546C2C@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101546C6C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101545788(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101545788(v4, 0);
}

void sub_101546D0C(uint64_t a1)
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

void sub_101546DEC(uint64_t a1, int a2, ServiceStage *this)
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

void sub_101546F24(uint64_t **a1)
{
  v1 = **a1;
  (*(**(v1 + 144) + 24))(*(v1 + 144));
  v2 = *(v1 + 160);
  if (v2 != (v1 + 168))
  {
    do
    {
      (*(*v2[5] + 16))(v2[5]);
      v3 = v2[1];
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
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (v1 + 168));
  }

  Registry::createRestModuleOneTimeUseConnection(&v6, *(v1 + 56));
  ctu::RestModule::connect();
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  operator new();
}

void sub_101547A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    sub_1001018AC(&a37);
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_101547A3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    sub_100101814(&a49);
    if (a37)
    {
      (*(*a37 + 8))(a37);
    }

    std::__shared_weak_count::__release_weak(v49);
    JUMPOUT(0x101547CC4);
  }

  _Unwind_Resume(a1);
}

void sub_101547A6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x101547B90);
}

void sub_101547A88(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v2 = va_arg(va1, void);
  sub_100083940((v1 + 8));
  sub_1000FF844(va1);
  sub_1000049E0(va);
  JUMPOUT(0x101547CF0);
}

void sub_101547AA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_101547AE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, atomic_uint *a48)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(&a48);
    JUMPOUT(0x101547CBCLL);
  }

  _Unwind_Resume(a1);
}

void sub_101547AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_10154881C(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_101547B14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(v3);
    *v2 = off_101E263F8;
    sub_100083940((v2 + 16));
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_101547B30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x101547B38);
  }

  _Unwind_Resume(a1);
}

void sub_101547B54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x101547B5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_101547B9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x101547CC4);
}

void sub_101547BA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x101547BB0);
  }

  _Unwind_Resume(a1);
}

void sub_101547BE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x101547BE8);
  }

  _Unwind_Resume(a1);
}

void sub_101547C00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_1000062D4(&a52);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  JUMPOUT(0x101547CF0);
}

void sub_101547C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  JUMPOUT(0x101547CF0);
}

void sub_101547C3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x101547CD4);
}

void sub_101547C48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x101547CB0);
  }

  _Unwind_Resume(a1);
}

void sub_101547CF8(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  (*(**(v1 + 144) + 32))(*(v1 + 144));
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I AttachApnModule started", buf, 2u);
  }

  operator delete();
}

uint64_t *sub_101547DD8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  (*(**(v2 + 144) + 40))(*(v2 + 144));
  v4 = *(v2 + 160);
  if (v4 != (v2 + 168))
  {
    do
    {
      (*(*v4[5] + 24))(v4[5]);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (v2 + 168));
  }

  ctu::RestModule::disconnect((v2 + 72));
  v8 = (v2 + 88);
  for (i = *(v2 + 96); i != v8; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC(v8);
  sub_1000FF844(&v12);
  return sub_1000049E0(&v11);
}

void sub_101547F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101547FC4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4AF68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101547FFC(void *a1)
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

uint64_t sub_101548044(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10154810C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4AFE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101548144(void *a1, xpc_object_t *a2)
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

uint64_t sub_10154821C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015482DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10154830C(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    *v20 = *v4;
    type = ctu::rest::detail::read_enum_string_value(v20, a2, v7);
    *v4 = *v20;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    type = xpc::dyn_cast_or_default(a2, 0, v7);
    *v4 = type;
  }

  v10 = *(a1 + 16);
  if (capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(type))
  {
    v11 = *(v10 + 136);
    v12 = v11 == v5 || v5 == 0;
    v13 = v12 || v5 == 3;
    v14 = v13 || v11 == 0;
    if (!v14 && v11 != 3)
    {
      v16 = *(v10 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = subscriber::asString();
        v19 = subscriber::asString();
        *v20 = 136315394;
        *&v20[4] = v18;
        *&v20[12] = 2080;
        *&v20[14] = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Changing preferred data sim from %s -> %s", v20, 0x16u);
      }

      sub_101545E84(v20, v10, 1);
      (*(**v20 + 72))(*v20);
      if (*&v20[8])
      {
        sub_100004A34(*&v20[8]);
      }
    }
  }
}

void sub_1015484BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015484DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101548528(void *a1)
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

uint64_t sub_101548574(uint64_t a1)
{
  sub_101549094((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1015485B8(uint64_t a1)
{
  sub_101548900(a1);

  operator delete();
}

uint64_t sub_1015485F0(uint64_t a1)
{
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v6, v2);
  if (*(a1 + 32))
  {
    for (i = *sub_1002A9D34((a1 + 32)); i != *(sub_1002A9D34((a1 + 32)) + 8); i += 6)
    {
      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          sub_100100F00(a1, v6);
        }

        sub_10004B040(v8);
        break;
      }

      sub_10004B040(v8);
    }
  }

  v4 = *(a1 + 24);
  sub_10004A704(*(&v7 + 1));
  sub_10004A6B0(v6);
  return v4;
}

void sub_101548728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(v3 - 80);
  sub_1000FFEDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10154876C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_101548798(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1015487C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

uint64_t sub_10154881C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_101549094((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101548890(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_101549094((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101548900(uint64_t a1)
{
  *a1 = off_101F4B108;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

uint64_t sub_101548990(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject **sub_1015489D8(NSObject **a1, NSObject *a2, void *aBlock)
{
  *a1 = a2;
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
    a2 = *a1;
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  dispatch_retain(a2);
  return a1;
}

uint64_t sub_101548A28(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_1015489D8(a2, *result, *(result + 8));
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_101549414(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvN10subscriber7SimSlotERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvN10subscriber7SimSlotERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_101548B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v17 = *(a3 + 16);
  }

  v4 = *(a1 + 8);
  if (v4 && (v5 = _Block_copy(v4)) != 0 && (v6 = _Block_copy(v5), (v7 = v6) != 0))
  {
    v8 = _Block_copy(v6);
    v9 = v8;
    if (v8)
    {
      v10 = _Block_copy(v8);
      v11 = v10;
      if (v10)
      {
        v12 = _Block_copy(v10);
        v13 = v12;
        if (v12)
        {
          v14 = _Block_copy(v12);
          v15 = v14;
          if (v14)
          {
            v19 = _Block_copy(v14);
            _Block_release(v15);
          }

          else
          {
            v19 = 0;
          }

          _Block_release(v13);
        }

        else
        {
          v19 = 0;
        }

        _Block_release(v11);
      }

      else
      {
        v19 = 0;
      }

      v18 = off_101F4B250;
      _Block_release(v9);
    }

    else
    {
      v18 = off_101F4B250;
      v19 = 0;
    }

    _Block_release(v7);
  }

  else
  {
    v18 = off_101F4B250;
    v19 = 0;
  }

  operator new();
}

uint64_t sub_101548E3C(uint64_t a1)
{
  sub_1002A9F30(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_101549094(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {
    operator delete();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  return result;
}

void sub_101548EF0(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvN10subscriber7SimSlotERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvN10subscriber7SimSlotERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
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
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_101548FDC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_101549070(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_101549094(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_1015490E4(void *a1)
{
  *a1 = off_101F4B280;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101549130(void *a1)
{
  *a1 = off_101F4B280;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10154919C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_10154924C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1015492F0(void *a1)
{
  *a1 = off_101F4B2D0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10154933C(void *a1)
{
  *a1 = off_101F4B2D0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101549414(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

__n128 sub_1015494C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B310;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1015494FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != AttachApnManagerInterface::getPushCount_sync(a1))
  {
    v3 = **(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleCarrierBundlesUpdated_sync: AttachAPN settings were pushed", v4, 2u);
    }
  }
}

uint64_t sub_101549574(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015495C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v1 + 168;
  do
  {
    if (*(v4 + 32) >= v3)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v3));
  }

  while (v4);
  if (v5 != *v1 + 168 && *(v5 + 32) <= v3)
  {
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asStringBool(*(v1 + 12));
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I alwaysPush = %s", &v11, 0xCu);
    }

    sub_101545E84(&v11, v2, *(v1 + 8));
    v7 = (*(*v11 + 88))(v11, *(v1 + 12), 0);
    if (*(&v11 + 1))
    {
      sub_100004A34(*(&v11 + 1));
    }
  }

  else
  {
LABEL_8:
    v6 = *(v2 + 40);
    v7 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E triggerBundleCheck: Invalid simSlot: %s", &v11, 0xCu);
      return 0;
    }
  }

  return v7;
}

void sub_10154978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1015497AC(int **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = v1[2];
  v4 = *(*v1 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v1 + 168;
  do
  {
    if (*(v4 + 32) >= v3)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v3));
  }

  while (v4);
  if (v5 != *v1 + 168 && *(v5 + 32) <= v3)
  {
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v1[3];
      *buf = 67109120;
      LODWORD(v17) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I setAttachAPNSettingsType type = %d for current sim", buf, 8u);
    }

    sub_101545E84(&v14, v2, v1[2]);
    v9 = v14;
    v10 = v1[3];
    sub_10009CF40(buf, (v1 + 4));
    (*(*v9 + 40))(v9, v10, buf);
    sub_10002B644(buf);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
LABEL_8:
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E setAttachAPNSettingsType: Invalid simSlot: %s", buf, 0xCu);
    }
  }

  sub_1015499D4(&v13);
  return sub_1000049E0(&v12);
}

void sub_101549994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  sub_10002B644(&a13);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1015499D4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015499D4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B644(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_101549A24(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 56));
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
  v21 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v21);
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
        goto LABEL_23;
      }

      goto LABEL_10;
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
    goto LABEL_23;
  }

LABEL_10:
  subscriber::makeSimSlotRange();
  v12 = v21;
  v13 = v22;
  if (v21 != v22)
  {
    v14 = v23;
    do
    {
      if (v14(*v12))
      {
        break;
      }

      ++v12;
    }

    while (v12 != v13);
    v15 = v22;
    while (v12 != v15)
    {
      v19 = 0;
      v20 = 0;
      sub_100419930(v10, &v19);
      if (v19)
      {
        (*(*v19 + 72))(v19, 1);
      }

      if (v20)
      {
        sub_100004A34(v20);
      }

      do
      {
        ++v12;
      }

      while (v12 != v13 && (v14(*v12) & 1) == 0);
    }
  }

LABEL_23:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_1000FF844(&v18);
  return sub_1000049E0(&v17);
}

void sub_101549BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  sub_1000FF844(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101549CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101549D00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v7 = *(v4 + 168);
  v5 = v4 + 168;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= v3)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < v3));
  }

  while (v6);
  if (v8 != v5 && *(v8 + 32) <= v3)
  {
    sub_101545E84(&v12, v2, v3);
    v10 = (*(*v12 + 56))(v12);
    if (*(&v12 + 1))
    {
      sub_100004A34(*(&v12 + 1));
    }
  }

  else
  {
LABEL_8:
    v9 = *(v2 + 40);
    v10 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12) = 136315138;
      *(&v12 + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E settingFromUIAllowed: Invalid simSlot: %s", &v12, 0xCu);
      return 0;
    }
  }

  return v10;
}

void sub_101549E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101549E64(_DWORD **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = v1[2];
  v4 = *(*v1 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v1 + 168;
  do
  {
    if (*(v4 + 32) >= v3)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v3));
  }

  while (v4);
  if (v5 != *v1 + 168 && *(v5 + 32) <= v3)
  {
    sub_101545E84(buf, v2, v3);
    v8 = (*(**buf + 56))(*buf);
    sub_10000FFD0((v1 + 4), v8);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
LABEL_8:
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E settingFromUIAllowed: Invalid sim slot", buf, 2u);
    }

    sub_10000FFD0((v1 + 4), 0);
  }

  sub_100EDCE18(&v10);
  return sub_1000049E0(&v9);
}

void sub_101549FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101549FD4(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v1 + 168;
  do
  {
    if (*(v4 + 32) >= v3)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v3));
  }

  while (v4);
  if (v5 != *v1 + 168 && *(v5 + 32) <= v3)
  {
    v9 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    v16 = 0;
    v17 = 0;
    sub_101545E84(&v16, v2, *(v1 + 8));
    v10 = (*(*v16 + 88))(v16, *(v1 + 12), 0);
    v11 = *v9;
    v12 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I pushAttachAPNSettings: start to push", buf, 2u);
      }

      *buf = v9;
      sub_10009CF40(&buf[8], v1 + 16);
      v19 = 0;
      operator new();
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I pushAttachAPNSettings: no need to push", buf, 2u);
    }

    v13 = *(v1 + 40);
    if (!v13)
    {
      sub_100022DB4();
    }

    (*(*v13 + 48))(v13);
    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else
  {
LABEL_8:
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E pushAttachAPNSettings: Invalid simSlot: %s", buf, 0xCu);
    }

    v7 = *(v1 + 40);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7);
  }

  sub_10154A330(&v15);
  return sub_1000049E0(&v14);
}

void sub_10154A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10002B644(&a18);
  sub_10002B644(v18 + 8);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10154A330(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10154A330(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B644(v1 + 16);
    operator delete();
  }

  return result;
}

void *sub_10154A380(void *a1)
{
  *a1 = off_101F4B490;
  sub_10002B644((a1 + 2));
  return a1;
}

void sub_10154A3C4(void *a1)
{
  *a1 = off_101F4B490;
  sub_10002B644((a1 + 2));

  operator delete();
}

uint64_t sub_10154A4A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F4B490;
  a2[1] = v2;
  return sub_10009CF40((a2 + 2), a1 + 16);
}

void sub_10154A4DC(void *a1)
{
  sub_10002B644(a1 + 16);

  operator delete(a1);
}

uint64_t sub_10154A518(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I pushAttachAPNSettings: completed", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3);
}

uint64_t sub_10154A5B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154A600(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10154A63C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10154A678(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v1 + 168;
  do
  {
    if (*(v4 + 32) >= v3)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v3));
  }

  while (v4);
  if (v5 != *v1 + 168 && *(v5 + 32) <= v3)
  {
    sub_101545E84(&v9, v2, *(v1 + 8));
    v7 = (*(*v9 + 48))(v9, *(v1 + 12));
    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  else
  {
LABEL_8:
    v6 = *(v2 + 40);
    v7 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315138;
      *(&v9 + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E isAttachAPNTypeSupported: Invalid simSlot: %s", &v9, 0xCu);
      return 0;
    }
  }

  return v7;
}

void sub_10154A7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10154A7E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v7 = *(v4 + 168);
  v5 = v4 + 168;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= v3)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < v3));
  }

  while (v6);
  if (v8 != v5 && *(v8 + 32) <= v3)
  {
    sub_101545E84(&v10, v2, v3);
    (*(*v10 + 64))(v10);
    if (*(&v10 + 1))
    {
      sub_100004A34(*(&v10 + 1));
    }
  }

  else
  {
LABEL_8:
    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 136315138;
      *(&v10 + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E handlePRIFilePushed: Invalid simSlot: %s", &v10, 0xCu);
    }
  }
}

void sub_10154A90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10154A92C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 160);
  v3 = (v1 + 168);
  if (v2 != (v1 + 168))
  {
    do
    {
      (*(*v2[5] + 104))(v2[5]);
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

void TimeHandler::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10154B1B0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x10154B160);
}

void sub_10154B1E0(uint64_t a1)
{
  *a1 = off_101F4B5B0;
  v2 = *(a1 + 1856);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 1840);
  if (v3)
  {
    sub_100004A34(v3);
  }

  EmergencyMode::~EmergencyMode((a1 + 1812));
  sub_10006EC28(a1 + 1776, *(a1 + 1784));
  v4 = *(a1 + 1768);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 1752);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10004C4EC(a1 + 1720, *(a1 + 1728));
  sub_10004543C(a1 + 904);
  sub_10004543C(a1 + 96);
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100952474((a1 + 72));
  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  TimeHandlerInterface::~TimeHandlerInterface(a1);
}

void sub_10154B2F4(uint64_t a1)
{
  sub_10154B1E0(a1);

  operator delete();
}

void sub_10154B32C(uint64_t a1, dispatch_object_t object)
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

void sub_10154B42C(uint64_t a1, int a2, int a3, int a4, MCC *a5, const MCC *a6, int a7, char a8)
{
  MCC::MCC(&v13, a5);
  MCC::MCC(&v14, a6);
  v15 = a7;
  v16 = a8;
  v12 = *(a1 + 16);
  if (v12)
  {
    if (std::__shared_weak_count::lock(v12))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10154B5C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 111) < 0)
  {
    operator delete(*(v26 + 88));
  }

  sub_10004F058(a1);
}

void sub_10154B608(uint64_t a1, int a2, int a3, int a4, MCC *a5, const MCC *a6, int a7, char a8)
{
  MCC::MCC(&v13, a5);
  MCC::MCC(&v14, a6);
  v15 = a7;
  v16 = a8;
  v12 = *(a1 + 16);
  if (v12)
  {
    if (std::__shared_weak_count::lock(v12))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10154B7A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 111) < 0)
  {
    operator delete(*(v26 + 88));
  }

  sub_10004F058(a1);
}

void sub_10154B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v25 = 0;
  v26 = 0;
  sub_1000529AC(&v25, a1, a2);
  v17 = v25;
  if (v25)
  {
    sub_10105C2F4(&v24, (a1 + 72));
    v18 = *(a3 + 16);
    *buf = *a3;
    v21 = v18;
    v23 = *(a3 + 48);
    v22 = *(a3 + 32);
    (*(*v17 + 32))(v17, &v24, buf, a4, a5, a6, a7, a8, a9);
    sub_100952474(&v24);
  }

  else
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find model for reporting time update", buf, 2u);
    }
  }

  if (v26)
  {
    sub_100004A34(v26);
  }
}

void sub_10154B958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10154B980(uint64_t a1)
{
  if (*(a1 + 1712))
  {
    (*(**(a1 + 1832) + 384))(*(a1 + 1832));
    v2 = *(a1 + 1776);
    if (v2 != (a1 + 1784))
    {
      do
      {
        (*(*v2[5] + 72))(v2[5]);
        v3 = v2[1];
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
            v4 = v2[2];
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
      }

      while (v4 != (a1 + 1784));
    }

    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Airplane mode has been enabled, resetting all timestamps, location", v7, 2u);
    }
  }
}

void sub_10154BA98(uint64_t a1)
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

void sub_10154BB9C(uint64_t a1)
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

void sub_10154BCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  sub_1000529AC(&v10, a1, a2);
  if (v10)
  {
    (*(*v10 + 24))(v10, a3, a4);
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find model for network info change", v9, 2u);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10154BDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10154BDC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 1800));
    v12 = 136315138;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Fetch Time From Network Request Active: %s", &v12, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 1712));
    v12 = 136315138;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Airplane mode toggled: %s", &v12, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(a1 + 1848) != 0);
    v12 = 136315138;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Airplane mode assertion held: %s", &v12, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 1804);
    v12 = 67109120;
    LODWORD(v13) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Time cache validity period: %d", &v12, 8u);
  }

  v7 = *(a1 + 1776);
  v8 = (a1 + 1784);
  if (v7 != v8)
  {
    do
    {
      (*(*v7[5] + 80))(v7[5]);
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }
}

void sub_10154BFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_10154C0D8(uint64_t a1)
{
  if (*(a1 + 1800))
  {
    v2 = *(a1 + 1808);
    v3 = *(a1 + 1820);
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "Is Not";
      if (v3 != 5)
      {
        v5 = "Is";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s in Emergency", &buf, 0xCu);
      v4 = *(a1 + 40);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "are not";
      if (v2)
      {
        v6 = "are";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cellular calls %s active", &buf, 0xCu);
    }

    if (v3 != 5 || v2)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 60;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Delaying for %lld seconds until checking again", &buf, 0xCu);
      }

      Registry::getTimerService(&v21, *(a1 + 56));
      v10 = v21;
      sub_10000501C(v19, "Force fetch network time");
      v11 = *(a1 + 16);
      if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
      {
        sub_100013CC4();
      }

      v14 = v13;
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      *__p = *v19;
      v24 = v20;
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      *&buf = off_101F4BA18;
      *(&buf + 1) = v12;
      v26 = v14;
      p_buf = &buf;
      (*(*v10 + 32))(v10, __p, 0, 60000000, &buf);
      sub_10002B644(&buf);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (v22)
      {
        sub_100004A34(v22);
      }
    }

    else
    {
      if (!*(a1 + 1848))
      {
        sub_10000501C(&buf, "/cc/assertions/airplane_mode");
        ctu::rest::AssertionHandle::create();
        if (SHIBYTE(v26) < 0)
        {
          operator delete(buf);
        }

        v15 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v16 = *(a1 + 1856);
        *(a1 + 1848) = v15;
        if (v16)
        {
          sub_100004A34(v16);
          if (__p[1])
          {
            sub_100004A34(__p[1]);
          }
        }

        v17 = *(a1 + 16);
        if (v17)
        {
          v18 = std::__shared_weak_count::lock(v17);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v18);
            operator new();
          }
        }

        sub_100013CC4();
      }

      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Network time fetch request is pending with airplane mode assertion held", &buf, 2u);
      }

      *(a1 + 1800) = 0;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Network Time fetch request is not active anymore", &buf, 2u);
    }
  }
}

void sub_10154C55C(uint64_t a1)
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

uint64_t sub_10154C64C(uint64_t a1)
{
  v5 = 0;
  v4[0] = &v5;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10154EE08;
  block[3] = &unk_101F4BB88;
  block[4] = a1 + 8;
  block[5] = v4;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  return v5;
}

void sub_10154C6E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10154C738(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154C778(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10154C7A4(ServiceManager::Service *this)
{
  *this = off_101F4B758;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10154C800(ServiceManager::Service *this)
{
  *this = off_101F4B758;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10154C880@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10154C8C4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10154B32C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10154B32C(v4, 0);
}

void sub_10154C964(uint64_t a1)
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

void sub_10154CA44(uint64_t a1, int a2, ServiceStage *this)
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

uint64_t *sub_10154CB7C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10154CC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10154CC1C(void *a1)
{
  v1 = *a1;
  v34 = a1;
  v35 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  *(v2 + 1760) = v12;
  v13 = *(v2 + 1768);
  *(v2 + 1768) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = Registry::getServiceMap(*(v2 + 56));
  v15 = v14;
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

  std::mutex::lock(v14);
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
      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
LABEL_21:
  *(v2 + 1744) = v22;
  v23 = *(v2 + 1752);
  *(v2 + 1752) = v21;
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = Registry::getServiceMap(*(v2 + 56));
  v25 = v24;
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

  std::mutex::lock(v24);
  *buf = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      goto LABEL_31;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
LABEL_31:
  *(v2 + 1832) = v32;
  v33 = *(v2 + 1840);
  *(v2 + 1840) = v31;
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_10000501C(&__p, "/cc/events/dump_state");
  operator new();
}

void sub_10154D0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

__n128 sub_10154D1DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10154D214(void *a1)
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

uint64_t sub_10154D25C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10154D31C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10154D34C(uint64_t a1, const xpc::object *a2)
{
  v4 = *(a1 + 8);
  bzero(v6, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v6, v4);
  read_rest_value(v4, a2);
  sub_10154BCA4(*(a1 + 16), 1, v6, *(a1 + 16) + 96);
  return sub_10004543C(v6);
}

uint64_t sub_10154D40C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10154D4CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10154D4FC(uint64_t a1, const xpc::object *a2)
{
  v4 = *(a1 + 8);
  bzero(v6, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v6, v4);
  read_rest_value(v4, a2);
  sub_10154BCA4(*(a1 + 16), 2, v6, *(a1 + 16) + 904);
  return sub_10004543C(v6);
}

uint64_t sub_10154D5BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10154D684(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4B998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10154D6BC(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_10154D744(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10154D790(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v7 = v3;
  sub_100952474(&v7);
  v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorSystemDefault, 0.0);
  CFCalendarSetTimeZone(*(v1 + 72), v7);
  if (!*(v1 + 72))
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Could not create gregorian calendar", buf, 2u);
    }
  }

  sub_1006680EC(&v7);
  operator delete();
}

void sub_10154D880(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006680EC(va);
  operator delete();
}

uint64_t *sub_10154D8BC(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v4;
  v8[2] = *(v1 + 48);
  v9 = *(v1 + 64);
  sub_10154B7E4(v2, v3, v8, *(v1 + 72), v1 + 80, v1 + 112, *(v1 + 144), *(v1 + 148), 1);
  sub_10154D958(&v7);
  return sub_1000049E0(&v6);
}

void sub_10154D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_10154D958(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10154D958(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10154D9C0(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v4;
  v8[2] = *(v1 + 48);
  v9 = *(v1 + 64);
  sub_10154B7E4(v2, v3, v8, *(v1 + 72), v1 + 80, v1 + 112, *(v1 + 144), *(v1 + 148), 0);
  sub_10154D958(&v7);
  return sub_1000049E0(&v6);
}

void sub_10154DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_10154D958(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_10154DA58(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  if (v3 == 65534 || v3 == 0)
  {
    v5 = *(*(*v2[6] + 16))(v2[6], *(v1 + 3));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      std::to_string(&v10, *(v1 + 2));
      v6 = (v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v10 : v10.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Invalid values for LAC: %s", buf, 0xCu);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    *&v10.__r_.__value_.__l.__data_ = 0uLL;
    sub_1000529AC(&v10, v2, *(v1 + 3));
    v7 = v10.__r_.__value_.__r.__words[0];
    if (v10.__r_.__value_.__r.__words[0])
    {
      v8 = ((*v2)[11])(v2);
      (*(*v7 + 48))(v7, v8, *(v1 + 2), *(v1 + 4));
    }

    else
    {
      v9 = *(*(*v2[6] + 16))(v2[6], *(v1 + 3));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not find model for LAC update", buf, 2u);
      }
    }

    if (v10.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v10.__r_.__value_.__l.__size_);
    }
  }

  operator delete();
}

void sub_10154DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  operator delete();
}

void sub_10154DCD0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 0;
  v6 = 0;
  sub_1000529AC(&v5, v2, *(v1 + 2));
  if (v5)
  {
    (*(*v5 + 64))(v5, *(v1 + 3), *(v1 + 4), *(v1 + 5));
  }

  else
  {
    v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not find model for SID/NID update", buf, 2u);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  operator delete();
}

void sub_10154DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

uint64_t *sub_10154DE20(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v3 = *(*v1 + 1832);
  if (!v3)
  {
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find registration controller to fetch time from network", v25, 2u);
    }

    object = xpc_int64_create(35);
    if (!object)
    {
      object = xpc_null_create();
    }

    *v25 = *(v1 + 16);
    *&v25[8] = "kPosixError";
    sub_10000F688(v25, &object, buf);
    xpc_release(*buf);
    *buf = 0;
    xpc_release(object);
    goto LABEL_52;
  }

  if ((*(v1 + 8) - 1) <= 1)
  {
    (*(*v3 + 384))(v3);
    if (*(v1 + 8) == 1)
    {
      goto LABEL_46;
    }
  }

  v4 = *(v2 + 1776);
  if (v4 == (v2 + 1784))
  {
    v6 = 2;
    goto LABEL_47;
  }

  v5 = (v2 + 1728);
  v6 = 2;
  while (1)
  {
    *__p = 0u;
    v27 = 0u;
    memset(v25, 0, sizeof(v25));
    MCCAndMNC::MCCAndMNC(v25);
    v7 = *v5;
    v8 = *(v4 + 8);
    if (*v5)
    {
      v9 = v2 + 1728;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        MCC::operator=();
        MCC::operator=();
        v8 = *(v4 + 8);
      }
    }

    v10 = v2 + 904;
    if (v8 == 2)
    {
      goto LABEL_17;
    }

    if (v8 == 1)
    {
      v10 = v2 + 96;
LABEL_17:
      v6 = (*(*v4[5] + 16))(v4[5], *(v1 + 8), v10, v25);
      goto LABEL_20;
    }

    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v8, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find model to fetch time from network", buf, 2u);
    }

LABEL_20:
    if (v6 == 1)
    {
      break;
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

    if (v25[31] < 0)
    {
      operator delete(*&v25[8]);
    }

    v12 = v4[1];
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
        v13 = v4[2];
        v14 = *v13 == v4;
        v4 = v13;
      }

      while (!v14);
    }

    v4 = v13;
    if (v13 == (v2 + 1784))
    {
      goto LABEL_47;
    }
  }

  if (*(v2 + 1800) == 1)
  {
    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N A request is already active", buf, 2u);
    }
  }

  else
  {
    *(v2 + 1800) = 1;
    sub_10154C0D8(v2);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  if (v25[31] < 0)
  {
    operator delete(*&v25[8]);
  }

LABEL_46:
  v6 = 1;
LABEL_47:
  v17 = *(v2 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asString();
    v19 = asString();
    *v25 = 136315394;
    *&v25[4] = v18;
    *&v25[12] = 2080;
    *&v25[14] = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Received request to fetch time from network with type %s, and result is %s", v25, 0x16u);
  }

  object = xpc_int64_create(v6);
  if (!object)
  {
    object = xpc_null_create();
  }

  *v25 = *(v1 + 16);
  *&v25[8] = "kNetworkTimeFetchResult";
  sub_10000F688(v25, &object, buf);
  xpc_release(*buf);
  *buf = 0;
  xpc_release(object);
LABEL_52:
  sub_1001FF3DC(&v22);
  return sub_1000049E0(&v21);
}

void sub_10154E274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_1002FECBC(va2);
  sub_1001FF3DC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_10154E2DC(void *a1)
{
  *a1 = off_101F4BA18;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10154E328(void *a1)
{
  *a1 = off_101F4BA18;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10154E400(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F4BA18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10154E438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10154E448(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10154E488(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10154E5A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10154E5EC(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10154C0D8(*v1);
  sub_10024BAAC(&v4);
  return sub_1000049E0(&v3);
}

void sub_10154E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_10154E64C(void *a1)
{
  *a1 = off_101F4BA98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10154E698(void *a1)
{
  *a1 = off_101F4BA98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10154E778(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F4BA98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_10154E7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10154E7C8(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10154E808(void *a1, char *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[1];
      if (v8)
      {
        v9 = *(*(v5 + 1848) + 68);
        if (v9)
        {
          v10 = *(v8 + 40);
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (v9 == 2 && (v4 & 1) != 0)
          {
            if (v11)
            {
              LODWORD(buf) = 134217984;
              *(&buf + 4) = 5;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Acquired airplane mode assertion, delaying for %lld seconds before enabling radio", &buf, 0xCu);
            }

            Registry::getTimerService(&v18, *(v8 + 56));
            v12 = v18;
            sub_10000501C(v16, "Enable radio");
            v14 = a1[1];
            v13 = a1[2];
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
            }

            *__p = *v16;
            v21 = v17;
            v16[0] = 0;
            v16[1] = 0;
            v17 = 0;
            *&buf = off_101F4BB08;
            *(&buf + 1) = v14;
            v23 = v13;
            p_buf = &buf;
            (*(*v12 + 32))(v12, __p, 0, 5000000, &buf);
            sub_10002B644(&buf);
            if (SHIBYTE(v21) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v17) < 0)
            {
              operator delete(v16[0]);
            }

            v15 = v19;
            if (!v19)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          if (v11)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not acquire airplane mode assertion", &buf, 2u);
          }
        }

        v15 = *(v5 + 1856);
        *(v5 + 1848) = 0;
        *(v5 + 1856) = 0;
        if (v15)
        {
LABEL_20:
          sub_100004A34(v15);
        }
      }

LABEL_21:
      sub_100004A34(v7);
    }
  }
}

void sub_10154EA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  sub_10002B644(&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_10154EA7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10154EAC8(void *a1)
{
  *a1 = off_101F4BB08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10154EB14(void *a1)
{
  *a1 = off_101F4BB08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10154EBEC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F4BB08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10154EC24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10154EC34(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10154EC74(uint64_t a1)
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
        v6 = *(v5 + 1856);
        *(v5 + 1848) = 0u;
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10154ECE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10154ED34(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  *(v1 + 1804) = v2;
  v3 = *(v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Time cache validity period has been set to %u", buf, 8u);
  }

  operator delete();
}

uint64_t sub_10154EEA4(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F4BC88;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_10154EF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10154EF48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = a2;
  v5[0] = off_101F4BD08;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_10154EFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10154EFEC(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F4BD88;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_10154F07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10154F090(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = off_101F4BE08;
  v3[3] = v3;
  sub_100125DF8(v1, v3);
  return sub_10002B210(v3);
}

void sub_10154F118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_10154F12C(CTXPCCarrierBundleNotificationInterface *this)
{
  *this = off_101F4BBB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCarrierBundleNotificationInterface::~CTXPCCarrierBundleNotificationInterface(this);
}

void sub_10154F188(CTXPCCarrierBundleNotificationInterface *this)
{
  *this = off_101F4BBB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCarrierBundleNotificationInterface::~CTXPCCarrierBundleNotificationInterface(this);

  operator delete();
}

void sub_10154F260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10154F29C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10154F2D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10154F304(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154F3B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4BC88;
  a2[1] = v2;
  return result;
}

void sub_10154F3E0(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 carrierBundleChange:v3];
}

uint64_t sub_10154F474(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154F530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4BD08;
  a2[1] = v2;
  return result;
}

void sub_10154F55C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 carrierBundleChange:v3];
}

uint64_t sub_10154F5F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154F6AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4BD88;
  a2[1] = v2;
  return result;
}

void sub_10154F6D8(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 operatorBundleChange:v3];
}

uint64_t sub_10154F76C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10154F848(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10154F910(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "dmclient.fw");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101F4BE98;
  return a1;
}

void sub_10154F9BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  DataMigrationFrameworkInterface::~DataMigrationFrameworkInterface(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10154F9F0(uint64_t a1)
{
  v2 = DMIsMigrationNeeded();
  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DMIsMigrationNeeded returning %d", v5, 8u);
  }

  return v2;
}

BOOL sub_10154FAD8(uint64_t a1, Registry **a2, uint64_t a3)
{
  if ((DMGetUserDataDisposition() & 4) == 0)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*a2);
  v7 = ServiceMap;
  if (v8 < 0)
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return 0;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    std::mutex::unlock(v7);
    if (v14)
    {
      goto LABEL_12;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  if (!v14)
  {
    v15 = 0;
LABEL_36:
    sub_100004A34(v13);
    return v15;
  }

LABEL_12:
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v24, *a3, *(a3 + 8));
  }

  else
  {
    *v24 = *a3;
    v25 = *(a3 + 16);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(__dst, v24[0], v24[1]);
  }

  else
  {
    *__dst = *v24;
    v29 = v25;
  }

  v27 = 0;
  if (SHIBYTE(v29) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v33 = v29;
  }

  v30 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = v27;
    v27 = v30;
    v31 = v16;
    sub_100005978(&v31);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v27;
  v26 = v27;
  v27 = 0;
  sub_100005978(&v27);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  __dst[0] = 0;
  (*(*v14 + 40))(__p, v14, v17, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10002FE1C(__dst, __p);
  sub_10000A1EC(__p);
  v15 = __dst[0] == 0;
  if (__dst[0])
  {
    v18 = *(a1 + 8);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    LOWORD(__p[0]) = 0;
    v19 = "#I Migration previously completed";
    v20 = v18;
    v21 = 2;
  }

  else
  {
    (*(*v14 + 16))(v14, v26, kCFBooleanTrue, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v22 = *(a1 + 8);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    LODWORD(__p[0]) = 138412290;
    *(__p + 4) = v26;
    v19 = "#I Missing %@ key, migration steps necessary";
    v20 = v22;
    v21 = 12;
  }

  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, __p, v21);
LABEL_35:
  sub_100045C8C(__dst);
  sub_100005978(&v26);
  if (v13)
  {
    goto LABEL_36;
  }

  return v15;
}

void sub_10154FE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100045C8C(&__p);
  sub_100005978(&a16);
  if (v34)
  {
    sub_100004A34(v34);
  }

  _Unwind_Resume(a1);
}

void sub_10154FF10(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  DataMigrationFrameworkInterface::~DataMigrationFrameworkInterface(a1);
}

void sub_10154FF4C(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  DataMigrationFrameworkInterface::~DataMigrationFrameworkInterface(a1);

  operator delete();
}

void sub_101550004(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101550040(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101550078(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015500A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void lasd::write_rest_value(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
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
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_null_create();
  if (*(a1 + 1))
  {
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    xpc_release(v7);
    v7 = v8;
  }

  v14 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "payload";
  sub_10000F688(&v12, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  v10 = xpc_int64_create(*a1);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "slot";
  sub_10000F688(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v9 = v16;
  *a2 = v16;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v7);
  xpc_release(v16);
}

void sub_10155029C(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(*(v2 - 40));
  _Unwind_Resume(a1);
}

void lasd::read_rest_value(xpc_object_t **a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v14 = xpc_null_create();
    p_object = &object;
    v10 = "payload";
    sub_100006354(&p_object, &v11);
    sub_100DAF7B4(&v14, &v11);
    xpc_release(v11);
    if (xpc_get_type(v14) == &_xpc_type_null)
    {
      v6 = a1[1];
      a1[1] = 0;
    }

    else
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
      v6 = a1[1];
      a1[1] = v5;
    }

    p_object = v6;
    sub_10000A1EC(&p_object);
    p_object = &object;
    v10 = "slot";
    sub_100006354(&p_object, &v11);
    type = xpc_get_type(v11);
    if (type == &_xpc_type_string)
    {
      v13 = *a1;
      ctu::rest::detail::read_enum_string_value(&v13, &v11, v8);
      *a1 = v13;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v11, 0, v8);
    }

    xpc_release(v11);
    xpc_release(v14);
  }

  else
  {
    LODWORD(p_object) = 0;
    v10 = 0;
    *a1 = 0;
    if (&p_object != a1)
    {
      v14 = a1[1];
      a1[1] = 0;
      v10 = 0;
      sub_10000A1EC(&v14);
    }

    sub_10000A1EC(&v10);
  }

  xpc_release(object);
}

void sub_1015504D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_101550630(_Unwind_Exception *exception_object)
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

void sub_101550658(uint64_t a1, uint64_t a2, NSObject **a3, __int128 *a4)
{
  v8 = (a1 + 8);
  ServiceMap = Registry::getServiceMap(*a2);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v25 = v11;
  v15 = sub_100009510(v10 + 8, &v25);
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
        goto LABEL_21;
      }

      goto LABEL_10;
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
    goto LABEL_21;
  }

LABEL_10:
  v25 = 0;
  v26 = 0;
  (**v17)(&v25, v17, a4);
  if (v25)
  {
    if (*(v25 + 49))
    {
      if (*(v25 + 49) == 1)
      {
        v19 = 0;
        v10 = "5wi.auth.T";
        goto LABEL_18;
      }
    }

    else
    {
      v20 = *(v25 + 52);
      if (v20 == 1)
      {
        v19 = 0;
        v10 = "5wi.auth.1";
LABEL_18:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (!v19)
        {
LABEL_22:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, v10);
          *v8 = 0;
          v8[1] = 0;
          v21 = *a3;
          *(a1 + 24) = *a3;
          if (v21)
          {
            dispatch_retain(v21);
          }

          *(a1 + 32) = 0;
          ctu::OsLogLogger::OsLogLogger(&v25, &v24);
          ctu::OsLogLogger::OsLogLogger((a1 + 40), &v25);
          ctu::OsLogLogger::~OsLogLogger(&v25);
          ctu::OsLogContext::~OsLogContext(&v24);
          *a1 = off_101F4BF98;
          if (*(a4 + 23) < 0)
          {
            sub_100005F2C((a1 + 48), *a4, *(a4 + 1));
          }

          else
          {
            v22 = *a4;
            *(a1 + 64) = *(a4 + 2);
            *(a1 + 48) = v22;
          }

          *(a1 + 72) = *a2;
          v23 = *(a2 + 8);
          *(a1 + 80) = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          operator new();
        }

LABEL_21:
        v10 = "5wi.auth";
        goto LABEL_22;
      }

      if (v20 == 2)
      {
        v19 = 0;
        v10 = "5wi.auth.2";
        goto LABEL_18;
      }
    }
  }

  v19 = 1;
  goto LABEL_18;
}

void sub_10155097C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20)
{
  ctu::OsLogLogger::~OsLogLogger((v20 + 40));
  sub_1000C0544(v21);
  IMSAuthenticationManagerInterface::~IMSAuthenticationManagerInterface(v20);
  _Unwind_Resume(a1);
}

void sub_101550A3C(uint64_t a1)
{
  *a1 = off_101F4BF98;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  IMSAuthenticationManagerInterface::~IMSAuthenticationManagerInterface(a1);
}

void sub_101550AC8(uint64_t a1)
{
  sub_101550A3C(a1);

  operator delete();
}

void sub_101550B00(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 72));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_101550B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101550B64(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_101550BD8(uint64_t a1, uint64_t *a2, char **this, int a4)
{
  if (!*a2)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#E Invalid client handle. Ignoring AUTH request";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    return;
  }

  if ((ims::aka::Request::isValid(this) & 1) == 0)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#E Failed to deserialize Auth challenge. Can't authenticate";
    goto LABEL_20;
  }

  v36[0] = 0;
  v36[1] = 0;
  *buf = v36;
  v8 = *(this + 1);
  if (v8 < 2)
  {
    goto LABEL_6;
  }

  if (v8 == 2)
  {
    v29 = 0;
    __src = 0;
    v31 = 0;
    v37[0] = *(this + 16) - *(this + 2);
    sub_101551910(&v29, 0, v37);
    sub_10005F5A8(&v29, __src, this[1], this[2], this[2] - this[1]);
    v37[0] = *(this + 88) - *(this + 20);
    sub_101551910(&v29, __src, v37);
    sub_10005F5A8(&v29, __src, this[10], this[11], this[11] - this[10]);
    v37[0] = *(this + 112) - *(this + 26);
    sub_101551910(&v29, __src, v37);
    sub_10005F5A8(&v29, __src, this[13], this[14], this[14] - this[13]);
    LODWORD(v27) = 2;
    *v37 = &v27;
    v15 = sub_1004FCB34(buf, &v27) + 5;
    if (v15 != (this + 7))
    {
      sub_1001122C4(v15, this[7], this[8], this[8] - this[7]);
    }

    v27 = 0;
    v28 = 0;
    sGetSubscriberSimInterface();
    if (v27)
    {
      PersonalityIDToSimSlot();
      memset(v26, 0, sizeof(v26));
      sub_100034C50(v26, v29, __src, __src - v29);
      v16 = a2[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1004F1F78(&v24, buf);
      sub_1015521BC(&v25, this);
      v41 = 0;
      operator new();
    }

    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      ims::aka::asString();
      v23 = v38 >= 0 ? v37 : *v37;
      *v39 = 136315138;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Subscriber interface is not available. Auth Mode [%s] not handled", v39, 0xCu);
      if (v38 < 0)
      {
        operator delete(*v37);
      }
    }

    if (v28)
    {
      sub_100004A34(v28);
    }

    v19 = v29;
    if (!v29)
    {
      goto LABEL_50;
    }

    __src = v29;
  }

  else
  {
    if (v8 == 3)
    {
LABEL_6:
      *v37 = 0;
      v29 = v37;
      v9 = sub_1004FCB34(buf, v37) + 5;
      if (v9 != (this + 1))
      {
        sub_1001122C4(v9, this[1], this[2], this[2] - this[1]);
      }

      *v37 = 1;
      v29 = v37;
      v10 = sub_1004FCB34(buf, v37) + 5;
      if (v10 != (this + 4))
      {
        sub_1001122C4(v10, this[4], this[5], this[5] - this[4]);
      }

      v11 = *(this + 1);
      if (v11 == 3)
      {
        v12 = 2;
      }

      else if (v11 == 2)
      {
        v12 = 5;
      }

      else if (*(this + 1))
      {
        v12 = 4;
      }

      else if (a4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v20 = *a2;
      v21 = a2[1];
      v34[0] = v20;
      v34[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1004F1F78(&v33, buf);
      sub_1015521BC(&v32, this);
      sub_101551328(a1, v34, v12, &v33, &v32);
    }

    v17 = *(a1 + 40);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    ims::aka::asString();
    v18 = v31 >= 0 ? &v29 : v29;
    *v37 = 136315138;
    *&v37[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E Can't authenticate. Auth Mode [%s] not handled", v37, 0xCu);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v19 = v29;
  }

  operator delete(v19);
LABEL_50:
  sub_10004EC58(buf, v36[0]);
}

void sub_101551204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, void *__p, uint64_t a39, uint64_t a40, char a41)
{
  if (a37)
  {
    sub_100004A34(a37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_10004EC58(v41 - 192, *(v41 - 184));
  _Unwind_Resume(a1);
}

void sub_101551328(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, __int16 *a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received challenge for context %s", buf, 0xCu);
  }

  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v12 = *a2;
  v11 = a2[1];
  *buf = a1;
  *&buf[8] = v12;
  v34 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v35) = a3;
  sub_1015521BC(&v35 + 8, a5);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *v29 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, v29);
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
      if (!v21)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  if (!v21)
  {
LABEL_11:
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Missing subscriber controller", v29, 2u);
    }

    v32[0] = 0;
    v32[1] = 0;
    v31 = v32;
    sub_101551BA0(buf);
  }

LABEL_16:
  *v29 = 0;
  v30 = 0u;
  *&v29[8] = &v30;
  *v29 = PersonalityIDToSimSlot();
  *&v29[4] = a3;
  if (&v29[8] != a4)
  {
    sub_100BE09D8(&v29[8], *a4, (a4 + 8));
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      p_shared_weak_owners = &v24->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
      v27 = *v29;
      sub_1004F1F78(&v28, &v29[8]);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1015521BC(&v26, &v35 + 4);
      v32[5] = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101551848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, void *a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_10004EC58(&a42, a43);
  if ((v52 & 1) == 0)
  {
    sub_100004A34(v51);
  }

  sub_10155213C(&a49);
  _Unwind_Resume(a1);
}

void sub_101551910(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      sub_1000CE3D4();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = (__src - v10);
    if (__src == v10)
    {
      operator new();
    }

    *v14 = *a3;
    memcpy(v14 + 1, __src, *(a1 + 8) - __src);
    v15 = *a1;
    v16 = &v14[*(a1 + 8) - __src + 1];
    *(a1 + 8) = __src;
    v17 = &v14[v15 - __src];
    memcpy(v17, v15, __src - v15);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_101551AFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101551B14(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    *(a1 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    *(a1 + 72) = v6;
    operator delete(v6);
  }

  sub_10004EC58(a1 + 32, *(a1 + 40));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_101551BA0(uint64_t a1)
{
  v1 = *(*a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Received callback for AuthChallenge", buf, 2u);
  }

  *&buf[4] = 0;
  v3 = 0;
  *buf = 1;
  operator new();
}

void *sub_1015520B0(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    a1[9] = v6;
    operator delete(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void *sub_10155213C(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

uint64_t sub_1015521BC(uint64_t a1, __int16 *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100034C50(a1 + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_100034C50(a1 + 32, *(a2 + 4), *(a2 + 5), *(a2 + 5) - *(a2 + 4));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_100034C50(a1 + 56, *(a2 + 7), *(a2 + 8), *(a2 + 8) - *(a2 + 7));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100034C50(a1 + 80, *(a2 + 10), *(a2 + 11), *(a2 + 11) - *(a2 + 10));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_100034C50(a1 + 104, *(a2 + 13), *(a2 + 14), *(a2 + 14) - *(a2 + 13));
  *(a1 + 128) = *(a2 + 32);
  return a1;
}

void sub_101552290(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[5] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[2] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015523C0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101552494);
  __cxa_rethrow();
}

void sub_101552400(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101552454(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101552494(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_1015524C0(void *a1)
{
  *a1 = off_101F4C0D0;
  sub_101551B14((a1 + 1));
  return a1;
}

void sub_101552504(void *a1)
{
  *a1 = off_101F4C0D0;
  sub_101551B14((a1 + 1));

  operator delete();
}

void sub_101552604(_Unwind_Exception *a1)
{
  sub_10004EC58(v1 + 40, *(v1 + 48));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101552638(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C0D0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  sub_1004F1F78((a2 + 40), a1 + 40);
  return sub_1015521BC(a2 + 64, (a1 + 64));
}

void sub_1015526B8(_Unwind_Exception *a1)
{
  sub_10004EC58(v1 + 40, *(v1 + 48));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1015526EC(void *a1)
{
  sub_101551B14(a1 + 8);

  operator delete(a1);
}

void sub_101552728(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v15 = "SDAuthenticationManager";
    v16 = 2080;
    v17 = "operator()";
    v7 = "#I DATA.%s: %s: Successful write to EF-GBABP (Bootstrapping parameters)";
    v8 = v5;
    v9 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "#E Failed to write to EF-GBABP (Bootstrapping parameters)";
    v8 = v5;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_7:
  v10 = *(a1 + 24);
  v13[0] = *(a1 + 16);
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 32);
  sub_1004F1F78(&v12, a1 + 40);
  sub_1015521BC(buf, (a1 + 64));
  sub_101551328(v4, v13, v11, &v12, buf);
}

void sub_1015528D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_101550B64(va1);
  sub_10004EC58(va, v6);
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101552914(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101552960(void *a1)
{
  *a1 = off_101F4C150;
  sub_1015520B0(a1 + 1);
  return a1;
}

void sub_1015529A4(void *a1)
{
  *a1 = off_101F4C150;
  sub_1015520B0(a1 + 1);

  operator delete();
}

void sub_101552AB0(_Unwind_Exception *a1)
{
  v3 = v1[6];
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

uint64_t sub_101552ADC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101F4C150;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(a1 + 56);
  return sub_1015521BC(a2 + 64, (a1 + 64));
}

void sub_101552B68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
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

void sub_101552B94(void *a1)
{
  sub_1015520B0(a1 + 1);

  operator delete(a1);
}

void sub_101552BD0(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  if (v12)
  {
    v4[2] = &v11;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      if (*(a1 + 8))
      {
        v13 = *(a1 + 32);
        v8 = *(a1 + 48);
        v14 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *(a1 + 56);
        sub_1015521BC(&v16, (a1 + 64));
        v17 = v10;
        v18[0] = v11;
        v18[1] = v12;
        if (v12)
        {
          v11[2] = v18;
          v10 = &v11;
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v17 = v18;
        }

        v9 = *(v6 + 16);
        if (v9)
        {
          if (std::__shared_weak_count::lock(v9))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v7);
    }
  }

  sub_10004EC58(&v10, v11);
}

void sub_101552E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100004A34(v15);
  sub_10004EC58(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_101552E94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101552EE0(uint64_t a1)
{
  sub_10004EC58(a1 + 168, *(a1 + 176));
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_101552F6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_1004F1F78(&v4, v1 + 168);
  sub_101551BA0(v1);
}

void sub_101552FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_10004EC58(&a12, a13);
  sub_101552FFC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101552FFC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_101552EE0(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_101553044(uint64_t a1)
{
  *a1 = off_101F4C1D0;
  *(a1 + 48) = off_101F4C220;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    sub_100004A34(v3);
  }

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

  v4 = *(a1 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    sub_100004A34(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101553168(uint64_t a1)
{
  sub_101553044(a1);

  operator delete();
}

void sub_1015531A0(uint64_t a1)
{
  sub_101553044(a1 - 48);

  operator delete();
}

uint64_t sub_1015531DC(uint64_t a1, uint64_t *a2, NSObject **a3, void *a4, __int128 *a5, __int128 *a6, __int128 *a7, int a8)
{
  ctu::OsLogContext::OsLogContext(&v30, kCtLoggingSystemName, "tkn.mgr");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v16 = *a3;
  *(a1 + 24) = *a3;
  if (v16)
  {
    dispatch_retain(v16);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v31, &v30);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v31);
  ctu::OsLogLogger::~OsLogLogger(v31);
  ctu::OsLogContext::~OsLogContext(&v30);
  *a1 = off_101F4C1D0;
  v18 = *a2;
  v17 = a2[1];
  *(a1 + 48) = off_101F4C220;
  *(a1 + 56) = v18;
  *(a1 + 64) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v19 = *a4;
  v20 = *a3;
  object = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  (*(*v19 + 24))(v19, &object, a5);
  if (object)
  {
    dispatch_release(object);
  }

  (*(**a4 + 16))(*a4, a5);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 136), *a6, *(a6 + 1));
  }

  else
  {
    v21 = *a6;
    *(a1 + 152) = *(a6 + 2);
    *(a1 + 136) = v21;
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 160), *a7, *(a7 + 1));
  }

  else
  {
    v22 = *a7;
    *(a1 + 176) = *(a7 + 2);
    *(a1 + 160) = v22;
  }

  *(a1 + 184) = a8;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 192), *a5, *(a5 + 1));
  }

  else
  {
    v23 = *a5;
    *(a1 + 208) = *(a5 + 2);
    *(a1 + 192) = v23;
  }

  sub_10000501C(&__p, "AnonymizedCarrierTokenManager");
  v24 = *(a1 + 24);
  v26 = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  ctu::RestModule::RestModule();
  if (v26)
  {
    dispatch_release(v26);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  return a1;
}

void sub_10155346C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, dispatch_object_t a18, char a19, uint64_t a20, char a21)
{
  if (*(v21 + 183) < 0)
  {
    operator delete(*(v21 + 160));
  }

  if (*(v21 + 159) < 0)
  {
    operator delete(*(v21 + 136));
  }

  v24 = *(v21 + 128);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(v21 + 112);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v21 + 96);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v21 + 80);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v21 + 64);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 40));
  sub_1000C0544(v22);
  _Unwind_Resume(a1);
}

void sub_101553580(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 56));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/wifi_status");
  operator new();
}

void sub_101553784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015537DC(uint64_t a1)
{
  if (*(a1 + 232) != 1 && (*(**(a1 + 104) + 16))(*(a1 + 104)) <= 9)
  {
    v2 = *(a1 + 16);
    if (!v2 || (v3 = *(a1 + 8), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      sub_100013CC4();
    }

    v5 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    Registry::getTimerService(&v17, *(a1 + 56));
    v6 = v17;
    sub_10000501C(__p, "fetch.tokens.timer");
    v7 = *(a1 + 24);
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 3321888768;
    aBlock[2] = sub_101553C78;
    aBlock[3] = &unk_101F4C238;
    aBlock[4] = a1;
    aBlock[5] = v3;
    v12 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = _Block_copy(aBlock);
    sub_100D23364(v6, __p, 2, 15000000, &object, &v13);
    v8 = v19;
    v19 = 0;
    v9 = *(a1 + 240);
    *(a1 + 240) = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v10 = v19;
      v19 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (v13)
    {
      _Block_release(v13);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1015539E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 48);
  if (v27)
  {
    sub_100004A34(v27);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_101553A74(uint64_t a1)
{
  (*(**(a1 + 104) + 24))(*(a1 + 104));
  v2 = *(**(a1 + 104) + 40);

  return v2();
}

void sub_101553B18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  *(a1 + 120) = v3;
  *(a1 + 128) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_101553B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(a1 + 104) + 32))(*(a1 + 104));
  (***(a1 + 104))(*(a1 + 104), a3);
  if ((*(**(a1 + 104) + 32))(*(a1 + 104)))
  {
    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 120);
          if (v9)
          {
            (**v9)(v9);
          }

          sub_100004A34(v8);
        }
      }
    }
  }
}

void sub_101553C78(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && !*(v3 + 232) && (*(**(v3 + 104) + 16))(*(v3 + 104)) <= 9)
      {
        v6 = *(v3 + 184);
        v7 = (*(**(v3 + 104) + 16))(*(v3 + 104));
        (*(**(v3 + 88) + 8))(*(v3 + 88), v3 + 160, v3 + 136, (v6 - v7 + 10));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101553D98(uint64_t result, uint64_t a2)
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

void sub_101553DB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_101553E40(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C330;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101553E78(void *a1, xpc_object_t *a2)
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

uint64_t sub_101553F68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t PDPDataSessionActivator::PDPDataSessionActivator(uint64_t a1, uint64_t *a2, NSObject **a3, int a4)
{
  if (a4 == 18)
  {
    v8 = "em.data.9";
  }

  else
  {
    v8 = "em.data.???";
  }

  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, v8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = *a3;
  *(a1 + 24) = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v19, &v18);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v19);
  ctu::OsLogLogger::~OsLogLogger(v19);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101F4C3B0;
  v11 = *a2;
  v10 = a2[1];
  if (a4 == 18)
  {
    v12 = "em.DataActivator.9";
  }

  else
  {
    v12 = "em.DataActivator.???";
  }

  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v12 = *(a1 + 48);
  }

  sub_10000501C(&__p, v12);
  v13 = *(a1 + 24);
  v15 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  ctu::RestModule::RestModule();
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  sub_1001FAF00((a1 + 120), &rest::kDefaultRadioAccessTechnologies);
  *(a1 + 148) = -1;
  *(a1 + 152) = a4;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 2;
  *(a1 + 184) = 2;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return a1;
}

void sub_101554170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_1004EDBF8(v21, *(v19 + 96));
  v23 = *(v19 + 80);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v19 + 64);
  if (v24)
  {
    sub_100004A34(v24);
  }

  DataSessionActivator::~DataSessionActivator(v19);
  ctu::OsLogLogger::~OsLogLogger((v19 + 40));
  sub_1000C0544(v20);
  _Unwind_Resume(a1);
}

void sub_101554218(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 56));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/connection_state");
  operator new();
}

void sub_1015544B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101554514(uint64_t a1)
{
  v2 = *(a1 + 180);
  memset(v18, 0, sizeof(v18));
  v17 = v18;
  v3 = *(a1 + 96);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = a1 + 96;
  do
  {
    if (*(v3 + 32) >= v2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v2));
  }

  while (v3);
  if (v4 != a1 + 96 && *(v4 + 32) <= v2)
  {
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v15 = *(v4 + 40);
    if (v15 != v4 + 48)
    {
      operator new();
    }

    v16 = *(a1 + 172);
    *buf = -1;
    *&buf[4] = v16;
    memset(&buf[8], 0, 33);
    *&buf[44] = 2;
    v18[1] = *buf;
    v18[2] = *&buf[16];
    v18[3] = *&buf[32];
    sub_10006DCAC(&v19, 0);
    v5 = *&v18[0];
    v6 = DWORD1(v18[1]);
  }

  else
  {
LABEL_8:
    v5 = 0;
    v6 = *(a1 + 172);
    *(&v18[1] + 8) = 0uLL;
    *(&v18[2] + 8) = 0uLL;
    BYTE8(v18[3]) = 0;
    HIDWORD(v18[3]) = 2;
  }

  sub_10006DCAC(&v17, v5);
  v7 = *(a1 + 172);
  if (v6 != v7)
  {
    *(a1 + 172) = v6;
    v8 = &v18[2];
    v9 = 32;
    while (1)
    {
      v10 = *(v8 - 2);
      v11 = *v8;
      if ((ConnectionTypeToMask() & v11) != 0)
      {
        break;
      }

      v8 += 2;
      v9 -= 16;
      if (!v9)
      {
        v12 = 2;
        goto LABEL_15;
      }
    }

    v12 = v10 == 18;
LABEL_15:
    *(a1 + 176) = v12;
    if (*(a1 + 172) == 2)
    {
      sub_101556320(a1);
    }

    else if (v7 == 2)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s disconnected.", buf, 0xCu);
      }

      if (*(a1 + 280))
      {
        memset(buf, 0, 32);
        sub_10009CF40(buf, a1 + 256);
        sub_101554F4C(a1);
        if (!*&buf[24])
        {
          sub_100022DB4();
        }

        (*(**&buf[24] + 48))(*&buf[24]);
        sub_10002B644(buf);
      }
    }
  }
}

void sub_10155494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_101554988(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a1 + 180))
  {
    return;
  }

  v4 = *(a2 + 8);
  if ((ConnectionTypeToMask() & v4) == 0)
  {
    return;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Activate error (%s)", &buf, 0xCu);
  }

  if (*(a2 + 4) != -9 || *(a1 + 168) > 4)
  {
    v16 = *(a1 + 128);
    if (!v16)
    {
      goto LABEL_34;
    }

    v17 = *(a1 + 180);
    v18 = a1 + 128;
    do
    {
      if (*(v16 + 28) >= v17)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * (*(v16 + 28) < v17));
    }

    while (v16);
    if (v18 != a1 + 128 && *(v18 + 28) <= v17)
    {
      v20 = *(v18 + 32) == 10;
      if ((isEmergencyEpsFbError() & v20) == 1)
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Current RAT is NR and got EPS-FB eligible error", &buf, 2u);
        }

        v19 = 1;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_34:
      isEmergencyEpsFbError();
    }

    v19 = 0;
LABEL_36:
    sub_1015563FC(a1, v19);
    return;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Got temporary error, schedule retry", &buf, 2u);
  }

  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  Registry::getTimerService(&v26, *(a1 + 56));
  v11 = v26;
  sub_10000501C(__p, *(a1 + 48));
  v12 = *(a1 + 24);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 1174405120;
  v30 = sub_101556500;
  v31 = &unk_101F4C3F8;
  v32 = v8;
  v33 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  aBlock = _Block_copy(&buf);
  sub_100D23364(v11, __p, 1, 300000, &object, &aBlock);
  v13 = v28;
  v28 = 0;
  v14 = *(a1 + 160);
  *(a1 + 160) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v28;
    v28 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
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

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  std::__shared_weak_count::__release_weak(v10);
}

void sub_101554CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101554D80(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a1 + 180))
  {
    v4 = *(a2 + 32);
    v6 = (ConnectionTypeToMask() & v4) == 0;
    v5 = (a1 + 288);
    v6 = v6 || v5 == (a2 + 8);
    if (!v6)
    {
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);

      sub_100008234(v5, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
    }
  }
}

void sub_101554E18(uint64_t a1, int *a2)
{
  if (a2[4] == *(a1 + 180))
  {
    v4 = *(a2 + 1);
    if ((ConnectionTypeToMask() & v4) != 0)
    {
      v5 = *(a1 + 148);
      v6 = *a2;
      if (v5 != *a2)
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8[0] = 67109376;
          v8[1] = v5;
          v9 = 1024;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I appID is changing from %d to %d", v8, 0xEu);
          v6 = *a2;
        }

        *(a1 + 148) = v6;
      }
    }
  }
}

void sub_101554F10(uint64_t a1)
{
  ctu::RestModule::disconnect((a1 + 72));

  sub_101554F4C(a1);
}

void sub_101554F4C(uint64_t a1)
{
  v2 = a1 + 192;
  v3 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  sub_10027E938(a1 + 224);
  sub_10016DBD4(a1 + 256);
  *(a1 + 180) = 0;
  *(a1 + 172) = 0x200000000;
  sub_100008764((a1 + 288));
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 160) = 0;
    (*(*v4 + 8))(v4);
  }

  *(a1 + 168) = 0;
  if ((anyContextType() & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I clear forced context type %s", &v6, 0xCu);
    }

    sub_101555AF0(a1, 2);
  }
}

uint64_t sub_1015550D4(uint64_t a1)
{
  *a1 = off_101F4C3B0;
  v6 = (a1 + 288);
  sub_1000087B4(&v6);
  sub_10002B644(a1 + 256);
  sub_10000FF50(a1 + 224);
  sub_1014F2D5C(a1 + 192);
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_1004EDBF8(a1 + 88, *(a1 + 96));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  DataSessionActivator::~DataSessionActivator(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015551C0(uint64_t a1)
{
  sub_1015550D4(a1);

  operator delete();
}

void sub_1015551F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = asString();
    v35 = 2080;
    v36 = subscriber::asString();
    v37 = 2080;
    v38 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Activating %s on SIM slot %s with type %s", buf, 0x20u);
  }

  if (*(a1 + 216))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Other Client is in using, fail the activation", buf, 2u);
    }

    if (*(a4 + 24))
    {
      sub_1000224C8(buf, a4);
      v14 = *(a1 + 16);
      if (v14)
      {
        if (std::__shared_weak_count::lock(v14))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  else
  {
    v15 = *(a3 + 24);
    if (v15)
    {
      if (v15 == a3)
      {
        v38 = buf;
        (*(*v15 + 24))(v15, buf);
      }

      else
      {
        v38 = (*(*v15 + 16))(v15);
      }
    }

    else
    {
      v38 = 0;
    }

    v16 = a1 + 192;
    if (buf != (a1 + 192))
    {
      v17 = v38;
      v18 = *(a1 + 216);
      if (v38 == buf)
      {
        if (v18 == v16)
        {
          memset(v39, 0, sizeof(v39));
          (*(*v38 + 24))();
          (*(*v38 + 32))(v38);
          v38 = 0;
          (*(**(a1 + 216) + 24))(*(a1 + 216), buf);
          (*(**(a1 + 216) + 32))(*(a1 + 216));
          *(a1 + 216) = 0;
          v38 = buf;
          (*(v39[0] + 24))(v39, a1 + 192);
          (*(v39[0] + 32))(v39);
        }

        else
        {
          (*(*v38 + 24))();
          (*(*v38 + 32))(v38);
          v38 = *(a1 + 216);
        }

        *(a1 + 216) = v16;
      }

      else if (v18 == v16)
      {
        (*(*v18 + 24))(*(a1 + 216), buf);
        (*(**(a1 + 216) + 32))(*(a1 + 216));
        *(a1 + 216) = v38;
        v38 = buf;
      }

      else
      {
        v38 = *(a1 + 216);
        *(a1 + 216) = v17;
      }
    }

    sub_1014F2D5C(buf);
    sub_1001210EC((a1 + 224), a4);
    sub_10025ABF0((a1 + 256), a5);
    if (*(a1 + 172) == 2)
    {
      v19 = *(a1 + 180);
      if (v19 && v19 != a2)
      {
        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          v22 = subscriber::asString();
          buf[0] = 136315394;
          *&buf[1] = v21;
          v35 = 2080;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s already activated on different Sim slot %s, fail the activation", buf, 0x16u);
        }

        v23 = *(a1 + 16);
        if (v23 && std::__shared_weak_count::lock(v23))
        {
          operator new();
        }

        sub_100013CC4();
      }

      if ((anyContextType() & 1) != 0 || *(a1 + 176) == a6)
      {
        v26 = *(a1 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = asString();
          v28 = asString();
          buf[0] = 136315394;
          *&buf[1] = v27;
          v35 = 2080;
          v36 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s already activated on context type %s", buf, 0x16u);
        }

        v29 = *(a1 + 16);
        if (v29 && std::__shared_weak_count::lock(v29))
        {
          operator new();
        }

        sub_100013CC4();
      }

      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = asString();
        v32 = asString();
        buf[0] = 136315394;
        *&buf[1] = v31;
        v35 = 2080;
        v36 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#E %s already activated on different context type %s, fail the activation", buf, 0x16u);
      }

      v33 = *(a1 + 16);
      if (v33 && std::__shared_weak_count::lock(v33))
      {
        operator new();
      }

      sub_100013CC4();
    }

    *(a1 + 180) = a2;
    if ((anyContextType() & 1) == 0)
    {
      v24 = *(a1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = asString();
        buf[0] = 136315138;
        *&buf[1] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I force to use %s context", buf, 0xCu);
      }

      sub_101555AF0(a1, a6);
    }

    sub_101555C44(a1);
  }
}

void sub_101555AA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101555AF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 184) = a2;
  v4 = anyContextType();
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v15);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    (*(*v13 + 112))(v13, *(a1 + 180), *(a1 + 152), v4 ^ 1u, a2);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_101555C28(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101555C44(uint64_t a1)
{
  ++*(a1 + 168);
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
  v19.__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (!v8)
  {
    v10 = 0;
LABEL_11:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
LABEL_7:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E no DataServiceInterface", &v19, 2u);
    }

    sub_1015563FC(a1, 0);
    goto LABEL_15;
  }

LABEL_12:
  v13 = *(a1 + 180);
  v14 = ConnectionTypeToMask();
  *(&v19.__r_.__value_.__s + 23) = 16;
  strcpy(&v19, "Activating from ");
  v15 = *(a1 + 48);
  v16 = strlen(v15);
  v17 = std::string::append(&v19, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v21 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  (*(*v10 + 88))(v10, v13, v14, 1, __p, 0, 0);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if (v11)
    {
      return;
    }

    goto LABEL_16;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if (v11)
  {
    return;
  }

LABEL_16:
  sub_100004A34(v9);
}

void sub_101555E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_101555E90(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Deactivating %s.", &buf, 0xCu);
  }

  v3 = *(a1 + 180);
  sub_101554F4C(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
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
        goto LABEL_9;
      }

      goto LABEL_14;
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
LABEL_9:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E no DataServiceInterface", &buf, 2u);
      if (v13)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (v13)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_14:
  v15 = ConnectionTypeToMask();
  *(&buf.__r_.__value_.__s + 23) = 18;
  strcpy(&buf, "Deactivating from ");
  v16 = *(a1 + 48);
  v17 = strlen(v16);
  v18 = std::string::append(&buf, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v21 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  (*(*v12 + 88))(v12, v3, v15, 0, __p, 0, 0);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (v13)
  {
    return;
  }

LABEL_18:
  sub_100004A34(v11);
}

void sub_101556110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_101556178(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
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
  *&v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
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
        goto LABEL_13;
      }

      goto LABEL_10;
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
    goto LABEL_13;
  }

LABEL_10:
  (*(*v12 + 128))(&v14, v12, *(a1 + 180), *(a1 + 152));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v14;
  *(a2 + 16) = v15;
LABEL_13:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1015562C4(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015562F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_10004EFD0(a2, *(a1 + 288), *(a1 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 296) - *(a1 + 288)) >> 3));
}

uint64_t sub_101556320(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s activated.", &v4, 0xCu);
  }

  result = *(a1 + 216);
  if (result)
  {
    v4 = *(a1 + 176);
    return (*(*result + 48))(result, &v4);
  }

  return result;
}

void sub_1015563FC(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 136315138;
    *(v5 + 4) = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s activation failed.", v5, 0xCu);
  }

  if (*(a1 + 248))
  {
    memset(v5, 0, sizeof(v5));
    sub_1000224C8(v5, a1 + 224);
    sub_101554F4C(a1);
    sub_10000FFD0(v5, a2);
    sub_10000FF50(v5);
  }
}

void sub_101556500(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        sub_101555C44(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_101556574(uint64_t result, uint64_t a2)
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

void sub_101556590(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_10155663C(void *a1, uint64_t *a2, NSObject **a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F4C4E0;
  PDPDataSessionActivator::PDPDataSessionActivator((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_1015566BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4C4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1015567B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C530;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015567EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_1004F86DC(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101556868(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101556930(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C5B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101556968(void *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, v6);
}

uint64_t sub_1015569E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101556AB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C630;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101556AE8(void *a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  DWORD2(v6) = -1;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, v5);
  v7 = v5 + 1;
  sub_1000087B4(&v7);
}

void sub_101556B8C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1000087B4((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101556BA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101556C6C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C6B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101556CA4(void *a1)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = 0xFFFFFFFFLL;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, v6);
}

uint64_t sub_101556D30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101556D7C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_10000FFD0(v3, 0);
  sub_10072A408(&v3);
  return sub_1000049E0(&v2);
}

void sub_101556DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10072A408(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101556DE0(uint64_t **a1)
{
  v1 = a1;
  sub_1015563FC(**a1, 0);
  operator delete();
}

void sub_101556E64(uint64_t **a1)
{
  v1 = a1;
  sub_1015563FC(**a1, 0);
  operator delete();
}

void sub_101556EE8(uint64_t **a1)
{
  v1 = a1;
  sub_101556320(**a1);
  operator delete();
}

double sub_101556FDC@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(&v4, a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_101557014(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10159BCDC();
}

void sub_10155708C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015570A4(IBICDMASettingsFactoryInterface *this)
{
  *this = off_101F4C730;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  IBICDMASettingsFactoryInterface::~IBICDMASettingsFactoryInterface(this);
}

void sub_101557100(IBICDMASettingsFactoryInterface *this)
{
  *this = off_101F4C730;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  IBICDMASettingsFactoryInterface::~IBICDMASettingsFactoryInterface(this);

  operator delete();
}

void sub_101557170(void *a1)
{
  *a1 = off_101F4C778;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  SilenceAssertionControllerInterface::~SilenceAssertionControllerInterface(a1);
}

void sub_1015571E0(void *a1)
{
  sub_101557170(a1);

  operator delete();
}

void sub_101557218(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Silence assertion feature is not supported on this platform", v4, 2u);
  }

  v5 = xpc_int64_create(45);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = *a2;
  v4[1] = "kPosixError";
  sub_10000F688(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_1015572D8(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Silence assertion feature is not supported on this platform", buf, 2u);
  }

  object = xpc_int64_create(45);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a3;
  v26 = "kPosixError";
  sub_10000F688(buf, &object, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v10 = ServiceMap;
  v11 = "11CCXpcServer";
  if (("11CCXpcServer" & 0x8000000000000000) != 0)
  {
    v12 = ("11CCXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
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
        goto LABEL_11;
      }

      goto LABEL_16;
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
LABEL_11:
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Silence Assertion response: cannot locate XPC server from reg. Not notifying assertion addition status", buf, 2u);
      if (v18)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (v18)
    {
      return;
    }

    goto LABEL_26;
  }

LABEL_16:
  BYTE7(v24[1]) = 16;
  strcpy(v24, "SilenceAssertion");
  v20 = *a2;
  v23 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v23 = xpc_null_create();
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v22 = *(a4 + 16);
  }

  sub_100A5EE64(v24, &v23, __p, 0);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v23);
  v23 = 0;
  if ((SBYTE7(v24[1]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(*&v24[0]);
  if (v18)
  {
    return;
  }

LABEL_26:
  sub_100004A34(v16);
}

void sub_101557544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

xpc_object_t *sub_1015575B0(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_1015575E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Silence assertion feature is not supported on this platform", v2, 2u);
  }
}

void *sub_101557644(void *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "silence.ctrl");
  sub_101557724(a1 + 1, "SilenceAssertionController", QOS_CLASS_UTILITY, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F4C778;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101557700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  SilenceAssertionControllerInterface::~SilenceAssertionControllerInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_101557724(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_10155778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

void sub_1015577CC(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  if (capabilities::ct::supportsSilenceAssertion(a1))
  {
    v3 = 0uLL;
    sub_101557894(&v3);
  }

  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_101557894(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101557AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    (*(a11->isa + 1))(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_101557BEC(uint64_t a1)
{
  *a1 = off_101F4C7B8;
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = *(a1 + 160);
    v4 = *(a1 + 152);
    if (v3 != v2)
    {
      do
      {
        sub_101558DBC(--v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 152);
    }

    *(a1 + 160) = v2;
    operator delete(v4);
  }

  sub_101559368(*(a1 + 136));
  v5 = *(a1 + 120);
  if (v5)
  {
    sub_100004A34(v5);
  }

  EmergencyMode::~EmergencyMode((a1 + 84));
  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_101557170(a1);
}

void sub_101557CA8(uint64_t a1)
{
  sub_101557BEC(a1);

  operator delete();
}

void sub_101557CE0(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[18];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %lu clients are waiting for silence assertion response", &v5, 0xCu);
    v2 = a1[5];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1[20] - a1[19]) >> 3;
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %lu clients are granted silence assertion", &v5, 0xCu);
  }
}

void sub_101557DD8(uint64_t a1, dispatch_object_t object)
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

void sub_101557ED8(uint64_t a1, uint64_t a2)
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

void sub_101557FD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 104);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer active for %f seconds", &buf, 0xCu);
  }

  if (*(a1 + 104) != 0.0)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Barring silence assertion", &buf, 2u);
    }

    v9 = xpc_BOOL_create(1);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    *&buf = *a2;
    *(&buf + 1) = "kRadioIsSilenceAssertionBarred";
    sub_10000F688(&buf, &v9, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v9);
    v9 = 0;
    v7 = xpc_double_create(*(a1 + 104));
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    *&buf = *a2;
    *(&buf + 1) = "kBarringEndTime";
    sub_10000F688(&buf, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
  }
}

void sub_101558168(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015581A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*(a1 + 80))
    {
      return;
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = radioStateAsString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Silence assertion granted; radio state is %s [not Online] -- time to party", &v10, 0xCu);
    }

    v4 = a1;
    v5 = 0;
    goto LABEL_12;
  }

  v6 = *(a1 + 152);
  v7 = *(a1 + 160);
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 == v7)
  {
    if (v9)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Silence assertion rejected; notifying clients waiting for response", &v10, 2u);
    }

    v4 = a1;
    v5 = 0x100000001;
LABEL_12:
    sub_101558308(v4, v5, 0.0);
    return;
  }

  if (v9)
  {
    v10 = 134217984;
    v11 = (v7 - v6) >> 3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Silence assertion revoked even though %lu clients were granted earlier", &v10, 0xCu);
  }
}

void sub_101558308(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v5 = *(a1 + 128);
  v6 = (a1 + 136);
  if (v5 != (a1 + 136))
  {
    v8 = HIDWORD(a2);
    v46 = HIDWORD(a2);
    v45 = (a1 + 136);
    do
    {
      if (v3)
      {
        v54 = xpc_int64_create(v8);
        if (!v54)
        {
          v54 = xpc_null_create();
        }

        *buf = v5[8];
        *&buf[8] = "kPosixError";
        sub_10000F688(buf, &v54, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v54);
        v54 = 0;
        v52 = xpc_double_create(a3);
        if (!v52)
        {
          v52 = xpc_null_create();
        }

        *buf = v5[8];
        *&buf[8] = "kBarringEndTime";
        sub_10000F688(buf, &v52, &v53);
        xpc_release(v53);
        v53 = 0;
        xpc_release(v52);
        v52 = 0;
      }

      else
      {
        v10 = *(a1 + 160);
        v9 = *(a1 + 168);
        if (v10 >= v9)
        {
          v12 = *(a1 + 152);
          v13 = (v10 - v12) >> 3;
          if ((v13 + 1) >> 61)
          {
            sub_1000CE3D4();
          }

          v14 = v9 - v12;
          v15 = v14 >> 2;
          if (v14 >> 2 <= (v13 + 1))
          {
            v15 = v13 + 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            sub_100013D10();
          }

          v18 = (8 * v13);
          v19 = v5[4];
          *(8 * v13) = v19;
          if (v19)
          {
            xpc_retain(v19);
          }

          else
          {
            *v18 = xpc_null_create();
          }

          v21 = *(a1 + 152);
          v20 = *(a1 + 160);
          v22 = v18 + v21 - v20;
          if (v20 != v21)
          {
            v23 = *(a1 + 152);
            v24 = (v18 + v21 - v20);
            do
            {
              *v24 = *v23;
              *v23++ = xpc_null_create();
              ++v24;
            }

            while (v23 != v20);
            v6 = v45;
            do
            {
              sub_101558DBC(v21++);
            }

            while (v21 != v20);
            v21 = *(a1 + 152);
          }

          v17 = v18 + 1;
          *(a1 + 152) = v22;
          *(a1 + 160) = v18 + 1;
          *(a1 + 168) = 0;
          if (v21)
          {
            operator delete(v21);
          }

          v8 = v46;
          v3 = a2;
        }

        else
        {
          v11 = v5[4];
          *v10 = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            *v10 = xpc_null_create();
          }

          v17 = v10 + 1;
        }

        *(a1 + 160) = v17;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 48));
      v26 = ServiceMap;
      v27 = "11CCXpcServer";
      if (("11CCXpcServer" & 0x8000000000000000) != 0)
      {
        v28 = ("11CCXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
        v29 = 5381;
        do
        {
          v27 = v29;
          v30 = *v28++;
          v29 = (33 * v29) ^ v30;
        }

        while (v30);
      }

      std::mutex::lock(ServiceMap);
      *buf = v27;
      v31 = sub_100009510(&v26[1].__m_.__sig, buf);
      if (v31)
      {
        v32 = v31[3];
        v33 = v31[4];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v33);
          v34 = 0;
          if (!v32)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v26);
      v33 = 0;
      v34 = 1;
      if (!v32)
      {
LABEL_42:
        v35 = *(a1 + 40);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Silence Assertion response: cannot locate XPC server from reg. Not notifying assertion addition status", buf, 2u);
          if (v34)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        goto LABEL_56;
      }

LABEL_47:
      BYTE7(v51[1]) = 16;
      strcpy(v51, "SilenceAssertion");
      v36 = v5[4];
      v50 = v36;
      if (v36)
      {
        xpc_retain(v36);
      }

      else
      {
        v50 = xpc_null_create();
      }

      if (*(v5 + 63) < 0)
      {
        sub_100005F2C(__p, v5[5], v5[6]);
      }

      else
      {
        *__p = *(v5 + 5);
        v49 = v5[7];
      }

      sub_100A5EE64(v51, &v50, __p, v3 == 0);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v50);
      v50 = 0;
      if (SBYTE7(v51[1]) < 0)
      {
        operator delete(*&v51[0]);
        if (v34)
        {
          goto LABEL_58;
        }

LABEL_57:
        sub_100004A34(v33);
        goto LABEL_58;
      }

LABEL_56:
      if ((v34 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_58:
      v37 = v5[1];
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
          v38 = v5[2];
          v39 = *v38 == v5;
          v5 = v38;
        }

        while (!v39);
      }

      v5 = v38;
    }

    while (v38 != v6);
  }

  v40 = *(a1 + 40);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = "Rejected";
    if (!v3)
    {
      v41 = "Granted";
    }

    v42 = (*(a1 + 160) - *(a1 + 152)) >> 3;
    *buf = 136315394;
    *&buf[4] = v41;
    *&buf[12] = 2048;
    *&buf[14] = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Silence Assertion response: %s. Num current holders: %lu", buf, 0x16u);
  }

  sub_101559368(*(a1 + 136));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = v6;
  if (*(a1 + 152) == *(a1 + 160))
  {
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Release limit to cmas assertion as no more clients need it", buf, 2u);
    }

    v44 = *(a1 + 120);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    if (v44)
    {
      sub_100004A34(v44);
    }
  }
}