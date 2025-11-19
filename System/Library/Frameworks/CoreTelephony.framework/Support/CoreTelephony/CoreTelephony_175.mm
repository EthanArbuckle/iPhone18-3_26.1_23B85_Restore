void sub_1014DB638(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v9 = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_1014DB73C;
  v12 = &unk_101F43E68;
  v13 = v2;
  v3 = os_state_add_handler();
  *(v2 + 104) = v3;
  if (!v3)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not add state capture handler", buf, 2u);
    }
  }

  v5 = v1[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v1[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete();
}

char *sub_1014DB73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 16);
  if (v3 == 3)
  {
    propertyList = 0;
    v4 = kCommCenterPreferencesNoBackupAppID;
    *error = CFPreferencesCopyValue(@"PersonalWallet", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100138C38(&propertyList, error);
    if (propertyList)
    {
      err = 0;
      *error = 0;
      *&error[8] = &err;
      Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, error);
      theData = Data;
      sub_1003A5C24(error);
      if (Data)
      {
        Length = CFDataGetLength(Data);
        v7 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
        *v7 = 1;
        *(v7 + 1) = Length;
        strlcpy(v7 + 136, "PersonalWallet", 0x40uLL);
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v7 + 200, BytePtr, Length);
      }

      else
      {
        v11 = CFErrorCopyDescription(err);
        v14 = v11;
        v12 = *(v2 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *error = 138412290;
          *&error[4] = v11;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not convert PersonalWallet to serialized CF representation: %@", error, 0xCu);
        }

        sub_100005978(&v14);
        v7 = 0;
      }

      sub_10002D760(&theData);
      sub_1003A5A8C(&err);
      if (Data)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *error = 138412546;
        *&error[4] = @"PersonalWallet";
        *&error[12] = 2112;
        *&error[14] = v4;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get contents of %@ at %@", error, 0x16u);
      }
    }

    v7 = 0;
LABEL_15:
    sub_10001021C(&propertyList);
    return v7;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *error = 67109120;
    *&error[4] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Skipping state handler for %d", error, 8u);
  }

  return 0;
}

void sub_1014DB9C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_10002D760(va);
  sub_1003A5A8C(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014DBA00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  result = isReal();
  if (result)
  {
    result = sub_100007A6C((v2 + 10), *v1);
    if (v2 + 11 == result)
    {
      v4 = v2[5];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v1;
        v6 = *(*v1 + 23);
        v7 = v6 < 0;
        if (v6 < 0)
        {
          v6 = (*v1)[1];
        }

        if (v7)
        {
          v5 = **v1;
        }

        if (!v6)
        {
          v5 = "<invalid>";
        }

        v8 = 136315138;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I activating wallet %s", &v8, 0xCu);
      }

      return sub_1013B731C((v2 + 10), *v1);
    }
  }

  return result;
}

void sub_1014DBB04(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 24);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 23);
    v5 = (v4 & 0x80u) != 0;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v1 + 8);
    }

    if (v5)
    {
      v6 = *v1;
    }

    else
    {
      v6 = v1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = "<invalid>";
    }

    buf = 136315138;
    *buf_4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I removing wallet %s", &buf, 0xCu);
  }

  sub_1000727F0((v2 + 80), v1);
  sub_1014D799C(v2, v1);
}

void sub_1014DBE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Block_object_dispose(&a20, 8);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Block_object_dispose(&a27, 8);
  if (a33)
  {
    sub_100004A34(a33);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1014DBF20(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1014DBF30(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

__n128 sub_1014DBF40(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1014DBF50(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014DBF60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40) && v4 + 88 == sub_100007A6C(v4 + 80, (a1 + 56)))
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 79);
          v9 = (v8 & 0x80u) != 0;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(a1 + 64);
          }

          if (v9)
          {
            v10 = *(a1 + 56);
          }

          else
          {
            v10 = (a1 + 56);
          }

          if (v8)
          {
            v11 = v10;
          }

          else
          {
            v11 = "<invalid>";
          }

          v14 = 136315138;
          v15 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I postmortem wallet cleanup %s", &v14, 0xCu);
        }

        sub_1014D799C(v4, a1 + 56);
      }

      sub_100004A34(v6);
    }
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 48);
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  if (v13)
  {
    sub_100004A34(v13);
  }
}

char *sub_1014DC0BC(char *result, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v2 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v2;
  return result;
}

void sub_1014DC0E8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

Class sub_1014DC0FC@<X0>(void *a1@<X8>)
{
  result = off_101FB97F8();
  *a1 = 0;
  a1[1] = 0;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1014DC430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t a9, std::__shared_weak_count *a10, dispatch_object_t object, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    (*(object->isa + 1))(object);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1014DC578(uint64_t a1, dispatch_object_t object)
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

void sub_1014DC6A0(uint64_t a1, int a2)
{
  if (*(a1 + 80) != a2)
  {
    sub_1014DC6E8(@"com.apple.coretelephony.ToggleAirplaneMode");

    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC6E8(uint64_t a1)
{
  v2 = [(objc_class *)off_101FB97F8() sharedInstance];
  [v2 reloadControlsForExtension:a1 kind:a1 reason:@"com.apple.commcenter"];
}

void sub_1014DC764(uint64_t a1, int a2)
{
  if (*(a1 + 81) != a2)
  {
    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC780(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *a2;
  if (v3 - v2 == a2[1] - *a2)
  {
    while (v2 != v3)
    {
      if (!BasicSimInfo::operator==())
      {
        goto LABEL_5;
      }

      v2 += 168;
      v4 += 168;
    }
  }

  else
  {
LABEL_5:

    sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
  }
}

void sub_1014DC808(uint64_t a1)
{
  *a1 = off_101F43F10;
  v4 = (a1 + 88);
  sub_1000B2AF8(&v4);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  ToggleSettingsManagerInterface::~ToggleSettingsManagerInterface(a1);
}

void sub_1014DC890(uint64_t a1)
{
  sub_1014DC808(a1);

  operator delete();
}

Class sub_1014DC8C8()
{
  if (qword_101FCACA0 != -1)
  {
    dispatch_once(&qword_101FCACA0, &stru_101F43FC8);
  }

  result = objc_getClass("CHSControlService");
  qword_101FCAC98 = result;
  off_101FB97F8 = sub_1014DC92C;
  return result;
}

void sub_1014DC968(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DC9BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DC9FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014DCA28(ServiceManager::Service *this)
{
  *this = off_101F44058;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DCA84(ServiceManager::Service *this)
{
  *this = off_101F44058;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1014DCB04@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DCB44(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014DC578(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014DC578(v4, 0);
}

void sub_1014DCBE8(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
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

void sub_1014DCD10(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/airplane_mode");
  operator new();
}

void sub_1014DD104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10002B644(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  std::__shared_weak_count::__release_weak(v19);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1014DD24C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F440D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014DD284(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1014DD31C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014DD3E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44158;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014DD41C(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1014DD4B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014DD57C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F441D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014DD5B4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_1014DD658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1014DD674(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014DD6C0(void *a1)
{
  *a1 = off_101F44258;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014DD70C(void *a1)
{
  *a1 = off_101F44258;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014DD7EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F44258;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014DD82C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014DD83C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014DD87C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 16))
      {
        sub_1014DC6E8(@"com.apple.coretelephony.ToggleCellularData");
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1014DD8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014DD944(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_100D89210(&v4);
  return sub_1000049E0(&v3);
}

void sub_1014DD98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100D89210(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014DDA1C(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10159BCDC();
}

void sub_1014DDA94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014DDAAC(MMIFactoryInterface *this)
{
  *this = off_101F442D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  MMIFactoryInterface::~MMIFactoryInterface(this);
}

void sub_1014DDB08(MMIFactoryInterface *this)
{
  *this = off_101F442D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  MMIFactoryInterface::~MMIFactoryInterface(this);

  operator delete();
}

void stewie::TargetInstantAtLocationCacheFactory::createFactory(void *a1@<X0>, void *a2@<X1>, os_log_t *a3@<X2>, void *a4@<X8>)
{
  if (!*a1)
  {
    v5 = *a3;
    if (!os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = 0;
    v6 = "targets required";
    v7 = &v9;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_7;
  }

  if (*a2)
  {
    operator new();
  }

  v5 = *a3;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v6 = "targetFactory required";
    v7 = &v8;
    goto LABEL_9;
  }

LABEL_7:
  *a4 = 0;
  a4[1] = 0;
}

void sub_1014DDD40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v6 = *(a1 + 16);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  stewie::TargetInstantAtLocationCache::create(&v6, &v4, (a1 + 8), a2);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1014DDDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *sub_1014DDDE8(void *a1)
{
  *a1 = off_101F44318;
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

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_1014DDE48(void *a1)
{
  *a1 = off_101F44318;
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

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  operator delete();
}

void sub_1014DDECC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DDF04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014DDF34(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DDF74@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsBIPController(a1);
  *a2 = 0;
  a2[1] = 0;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1014DE2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1014DE464(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1014DE564(uint64_t a1)
{
  result = (*(**(a1 + 56) + 32))(*(a1 + 56));
  if (*(a1 + 120) != result)
  {
    *(a1 + 120) = result;
    result = *(a1 + 112);
    if (result)
    {
      v3 = *(*result + 48);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1014DE604(uint64_t a1)
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

void sub_1014DE688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014DE6DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1014DE71C(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1014DE604((result + 11));
    v2 = v1[10];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[8];
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      sub_100004A34(v4);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_1014DE7A0(ServiceManager::Service *this)
{
  *this = off_101F44460;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DE7FC(ServiceManager::Service *this)
{
  *this = off_101F44460;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1014DE87C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DE8C0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014DE464(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014DE464(v4, 0);
}

void sub_1014DE960(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DEA40(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1014DEB54(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  (*(**(v2 + 56) + 24))(*(v2 + 56));
  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014DEC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014DEC1C(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v11, *(v2 + 40));
  ctu::RestModule::connect();
  if (v12)
  {
    sub_100004A34(v12);
  }

  v4 = (v2 + 88);
  *buf = off_101F444E0;
  v14 = v2 + 72;
  v15 = buf;
  if (buf != (v2 + 88))
  {
    v5 = *(v2 + 112);
    if (v5 == v4)
    {
      v16[1] = v2 + 72;
      v16[2] = 0;
      v15 = 0;
      v16[0] = off_101F444E0;
      (*(*v5 + 24))(v5, buf);
      (*(**(v2 + 112) + 32))(*(v2 + 112));
      *(v2 + 112) = 0;
      v15 = buf;
      (*(v16[0] + 24))(v16, v2 + 88);
      (*(v16[0] + 32))(v16);
    }

    else
    {
      *(v2 + 88) = off_101F444E0;
      *(v2 + 96) = v2 + 72;
      v15 = v5;
    }

    *(v2 + 112) = v4;
  }

  sub_1014DE604(buf);
  v6 = *(v2 + 112);
  if (v6)
  {
    (*(*v6 + 48))(v6, v2 + 120);
  }

  v7 = *(v2 + 56);
  *buf = off_101F44570;
  v14 = v2;
  v15 = buf;
  (*(*v7 + 16))(v7, buf);
  sub_10002B644(buf);
  sub_1000FF844(&v10);
  return sub_1000049E0(&v9);
}

void sub_1014DEEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014DEF80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F444E0;
  a2[1] = v2;
  return result;
}

void sub_1014DEFAC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/power_source");
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

void sub_1014DF060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014DF0A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DF160(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F44570;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014DF194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014DF1E0(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  sub_1014DE564(v1);
  operator delete();
}

void sub_1014DF9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, ...)
{
  va_start(va, a17);

  sub_1005A16F4(va);
  sub_100010250((v24 - 120));

  _Unwind_Resume(a1);
}

void sub_1014DFC58(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void *sub_1014DFCB4(void *a1)
{
  *a1 = off_101F447E8;
  v2 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
    v3 = a1[3];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  return a1;
}

uint64_t sub_1014DFD18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1[25] == 1 && (v1[26] & 1) == 0 && (v1[27] & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_1014DFFE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v4 = 136315138;
    v5 = sub_10097677C(v3);
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Encountered failure in state:  %s", &v4, 0xCu);
  }

  sub_1014E0F84();
}

uint64_t sub_1014E00EC(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (a2)
  {
    v5 = *(v3 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = sub_10097677C(1u);
      v8 = 2048;
      v9 = 60;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to disable GPS within %lld seconds", buf, 0x16u);
      v3 = *(v2 + 8);
    }

    sub_1014DFFE4(v3);
  }

  if ((*(v3 + 25) & 1) == 0)
  {
    v4 = *(v3 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = sub_10097677C(1u);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s Stewie is no longer required", buf, 0xCu);
    }

    sub_1014E0404();
  }

  if (!*(v3 + 32))
  {
    operator new();
  }

  return result;
}

void sub_1014E03B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E0468(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v5 = 17;
    strcpy(__p, "ReEvaluationTimer");
    v7[0] = off_101F44898;
    v7[1] = a1;
    v7[3] = v7;
    AutoStartTimer::create();
    v2 = v6;
    v6 = 0uLL;
    v3 = *(a1 + 24);
    *(a1 + 16) = v2;
    if (v3)
    {
      sub_100004A34(v3);
      if (*(&v6 + 1))
      {
        sub_100004A34(*(&v6 + 1));
      }
    }

    sub_10002B644(v7);
    if (v5 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_1014E055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_10002B644(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014E0588(capabilities::ct *a1, int a2)
{
  v3 = *(a1 + 1);
  if (a2)
  {
    v7 = *(v3 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = sub_10097677C(2u);
      v10 = 2048;
      v11 = 60;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to Enter Stewie mode within %lld seconds", buf, 0x16u);
      v3 = *(a1 + 1);
    }

    sub_1014DFFE4(v3);
  }

  if ((*(v3 + 25) & 1) == 0)
  {
    v4 = *(v3 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = sub_10097677C(2u);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s Stewie is no longer required", buf, 0xCu);
    }

    sub_1014E0404();
  }

  if (*(v3 + 24) == 1 && *(v3 + 29) == 1 && *(v3 + 28) == 1)
  {
    operator new();
  }

  v5 = capabilities::ct::requiresSeparateOperatingModeForStewie(a1);
  v6 = *(a1 + 1);
  if (!v5 || (*(v6 + 24) & 1) == 0)
  {

    sub_1011350E4(v6);
  }
}

uint64_t sub_1014E0994(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = *(v2 + 8);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v5 = 136315138;
    v6 = sub_10097677C(3u);
    v4 = "%s Operating mode is no longer Stewie";
    goto LABEL_14;
  }

  if (*(v2 + 29) != 1 || (*(v2 + 28) & 1) == 0)
  {
    v3 = *(v2 + 8);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v5 = 136315138;
    v6 = sub_10097677C(3u);
    v4 = "%s Stewie assertion was revoked";
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, &v5, 0xCu);
    v2 = *(v1 + 8);
LABEL_11:
    sub_1014DFFE4(v2);
  }

  if ((*(v2 + 25) & 1) == 0)
  {

    sub_1014E0404();
  }

  return result;
}

uint64_t sub_1014E0B00(uint64_t a1)
{
  sub_101135330(*(a1 + 8));
  v2 = *(a1 + 8);
  if (*(v2 + 24) != 1)
  {
LABEL_4:
    sub_101135420(v2);
    operator new();
  }

  result = capabilities::ct::requiresSeparateOperatingModeForStewie(v2);
  if ((result & 1) == 0)
  {
    v2 = *(a1 + 8);
    goto LABEL_4;
  }

  return result;
}

void sub_1014E0DC4(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void *sub_1014E0DFC(void *a1)
{
  *a1 = off_101F44688;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_1014DFCB4(a1);
}

void sub_1014E0E58(void *a1)
{
  *a1 = off_101F44688;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0ECC(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0F08(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void sub_1014E0F44(void *a1)
{
  sub_1014DFCB4(a1);

  operator delete();
}

void *sub_1014E11B0(void *a1)
{
  *a1 = off_101F44818;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014E11FC(void *a1)
{
  *a1 = off_101F44818;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014E12DC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F44818;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014E131C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014E132C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014E136C(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[2])
      {
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);
        if (v4)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136315138;
            v10 = sub_10097677C(1u);
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s Successfully disabled GPS", &v9, 0xCu);
          }

          operator new();
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10 = sub_10097677C(1u);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to disable GPS - assertion rejected", &v9, 0xCu);
          v7 = *(v5 + 8);
        }

        sub_1014DFFE4(v7);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014E1770(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1014E17F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014E18B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F44898;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014E18E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[3];
  v1[2] = 0;
  v1[3] = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(*v1 + 24);

  return v3(v1, 1);
}

uint64_t sub_1014E1948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sms::Controller::handleWea(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_1014E30EC(v35, a3);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_1014E30EC(&__p, a4);
  v11 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sms::asString();
    v13 = v35;
    if (v36 < 0)
    {
      v13 = v35[0];
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v39 = 2082;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I WEA format: [%{public}s] pdu: [%{public}s]", buf, 0x16u);
  }

  v14 = HIBYTE(v34);
  v15 = SHIBYTE(v34);
  if (v34 < 0)
  {
    v14 = v33;
  }

  if (v14)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      p_p = __p;
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136642819;
      *&buf[4] = p_p;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I WAC pdu: [%{sensitive}s]", buf, 0xCu);
    }
  }

  if (a5 == 3)
  {
    v18 = 4;
  }

  else
  {
    v18 = a5;
  }

  if (v18 == 2)
  {
    *__dst = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v20 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
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
        goto LABEL_29;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_29:
    (*(*v27 + 80))(__dst, v27, a2, 1, @"SMSSettings", 0, 0);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    operator new();
  }

  if ((v18 & 0xFFFFFFFE) == 4)
  {
    operator new();
  }

  v29 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v30 = sms::asString();
    *buf = 136446210;
    *&buf[4] = v30;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid WEA format %{public}s", buf, 0xCu);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  return 2;
}

void sub_1014E2E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  v57 = *(v55 - 200);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if ((v54 & 1) == 0)
  {
    sub_100004A34(v53);
  }

  sub_100004A34(a18);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void sub_1014E30EC(uint64_t *a1, uint64_t a2)
{
  if (*a2 == *(a2 + 8))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v4[0] = 0;
    v4[1] = 0;
    ctu::TextConverter::TextConverter(v4);
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::setSource(v4, *a2, *(a2 + 8) - *a2);
    ctu::TextConverter::readChars(a1, v4, 0x7FFFFFFFuLL);
    ctu::TextConverter::~TextConverter(v4);
  }
}

void sub_1014E3190()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_1014E34D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  sub_100DBA588(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::dispatchWea(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1014E3688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sms::Controller::copyCellBroadcastAlertTypes(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      (*(**(a1 + 2584) + 16))(*(a1 + 2584), v8);
      return;
    }

    v5 = *(a1 + 32) == 0;
  }

  else
  {
    v5 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1014E716C;
  v9[3] = &unk_101F44A28;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v6 = *(a1 + 24);
  *a3 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v5)
  {
    v12 = sub_1014E71A0;
    v13 = &unk_101F44A48;
    v14 = a3;
    v15 = &v10;
    dispatch_sync(v6, block);
  }

  else
  {
    v12 = sub_1014E7218;
    v13 = &unk_101F44A68;
    v14 = a3;
    v15 = &v10;
    dispatch_async_and_wait(v6, block);
  }
}

uint64_t sms::Controller::getCellBroadcastSettingForAlertType(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v10[3] = a4;
  v11 = a3;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v6 = (*(**(a1 + 2584) + 40))(*(a1 + 2584), v12, v11, a4);
      return v6 & 1;
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E7290;
  v13[3] = &unk_101F44A88;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059610;
    v17 = &unk_101F44AA8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A56C;
    v17 = &unk_101F44AC8;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  v6 = v20;
  return v6 & 1;
}

uint64_t sms::Controller::setCellBroadcastSettingForAlertType(capabilities::ct *a1, unsigned int a2, uint64_t a3, char a4)
{
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9[0] = a1;
  v9[1] = &v12;
  v9[2] = &v11;
  v9[3] = &v10;
  if (*(a1 + 4))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = sub_1014E3C90(a1, v12, v11, v10);
      return v5 & 1;
    }

    v6 = *(a1 + 4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E72CC;
  v13[3] = &unk_101F44AE8;
  v13[4] = a1 + 8;
  v13[5] = v9;
  v14 = v13;
  v7 = *(a1 + 3);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v16 = sub_100059610;
    v17 = &unk_101F44AA8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v7, block);
  }

  else
  {
    v16 = sub_10006A56C;
    v17 = &unk_101F44AC8;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v7, block);
  }

  v5 = v20;
  return v5 & 1;
}

uint64_t sub_1014E3C90(capabilities::ct *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    if (a4)
    {
      subscriber::makeSimSlotRange();
      v8 = v16;
      if (v16 == v17)
      {
        goto LABEL_21;
      }

      do
      {
        if (v18(*v8))
        {
          break;
        }

        ++v8;
      }

      while (v8 != v17);
      if (v8 == v17)
      {
LABEL_21:
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v10 = *v8;
          v11 = (*(**(a1 + 323) + 48))(*(a1 + 323), v10, a3, 1);
          v12 = *(*(**(a1 + 6) + 16))(*(a1 + 6), v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Cell broadcast setting has been changed, pushing the configuration to baseband again", buf, 2u);
          }

          sms::Controller::setupBasebandForCellBroadcast_sync(a1, v10);
          do
          {
            ++v8;
          }

          while (v8 != v17 && (v18(*v8) & 1) == 0);
          v9 |= v11;
        }

        while (v8 != v17);
      }

      return v9 & 1;
    }

    v13 = *(**(a1 + 323) + 48);
  }

  else
  {
    v13 = *(**(a1 + 323) + 48);
  }

  v9 = v13();
  v14 = *(*(**(a1 + 6) + 16))(*(a1 + 6), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cell broadcast setting has been changed, pushing the configuration to baseband again", &v16, 2u);
  }

  sms::Controller::setupBasebandForCellBroadcast_sync(a1, a2);
  return v9 & 1;
}

uint64_t sms::Controller::storeMMIAlertPreference(sms::Controller *this, char a2)
{
  v8 = a2;
  v7[0] = this;
  v7[1] = &v8;
  if (*(this + 4))
  {
    if (dispatch_workloop_is_current())
    {
      v3 = sub_1014E4070(this);
      return v3 & 1;
    }

    v4 = *(this + 4) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1014E72E8;
  v9[3] = &unk_101F44B08;
  v9[4] = this + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(this + 3);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_100059610;
    v13 = &unk_101F44AA8;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A56C;
    v13 = &unk_101F44AC8;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  v3 = v16;
  return v3 & 1;
}

uint64_t sub_1014E4070(uint64_t a1)
{
  v2 = (*(**(a1 + 2584) + 208))(*(a1 + 2584));
  if (v2)
  {
    subscriber::makeSimSlotRange();
    v3 = v6;
    if (v6 != v7)
    {
      do
      {
        if (v8(*v3))
        {
          break;
        }

        ++v3;
      }

      while (v3 != v7);
      while (v3 != v7)
      {
        v4 = *v3++;
        sms::Controller::setupBasebandForCellBroadcast_sync(a1, v4);
        while (v3 != v7 && (v8(*v3) & 1) == 0)
        {
          ++v3;
        }
      }
    }
  }

  return v2;
}

void sms::Controller::setupBasebandForCellBroadcast_sync(uint64_t a1, int a2)
{
  v22 = a2;
  if (subscriber::isValidSimSlot())
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sms::Controller::getDynamicMessageModes_sync(a1, a2, &v19);
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
    v5 = v4;
    v6 = v19;
    if (v19 != v20)
    {
      while (*v6 != 4)
      {
        if (++v6 == v20)
        {
          goto LABEL_16;
        }
      }
    }

    if (v6 == v20)
    {
LABEL_16:
      v12 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v16 = 0;
      v13 = "#I Device inherently does not support cell broadcast, not pushing any configuration";
    }

    else
    {
      if ((capabilities::ct::supportsGemini(v4) & 1) != 0 || (*v16 = &v22, *(sub_1002D750C(a1 + 2560, &v22)[5] + 285)))
      {
        *v16 = 0;
        v17 = 0;
        v18 = 0;
        memset(__p, 0, sizeof(__p));
        if (sub_1014E4BD8(a1, v22, v16, __p))
        {
          v7 = *(a1 + 112);
          if (v7)
          {
            (*(*v7 + 120))(v7, v22);
            (*(**(a1 + 112) + 128))(*(a1 + 112), v22);
          }

          v8 = v22;
          v23 = 0;
          v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
          if ((*(**(a1 + 2584) + 24))(*(a1 + 2584), v8, &v23))
          {
            v10 = *v9;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = CSIBOOLAsString(v23);
              *buf = 136315138;
              v25 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Alerts enabled: %s", buf, 0xCu);
            }
          }

          sub_1014E46B8(a1, v8, v23);
        }

        else
        {
          v14 = *v5;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Deactivating the CMAS as could not read the config from operator bundle", buf, 2u);
          }

          sub_1014E46B8(a1, v22, 0);
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (*v16)
        {
          operator delete(*v16);
        }

        goto LABEL_26;
      }

      v12 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        return;
      }

      *v16 = 0;
      v13 = "#I SMS not ready. Baseband not being setup for CMAS";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v16, 2u);
    goto LABEL_26;
  }
}

uint64_t sms::Controller::injectCellBroadcastMessage(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v9, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v12 = *(a3 + 2);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1014E72F8;
  v13[3] = &unk_101F44B28;
  v13[4] = a1 + 8;
  v13[5] = &v8;
  v14 = v13;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v21 = 0;
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = sub_10006A56C;
    v18 = &unk_101F44AC8;
    v19 = &v21;
    v20 = &v14;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v21 = 0;
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = sub_100059610;
    v18 = &unk_101F44AA8;
    v19 = &v21;
    v20 = &v14;
    dispatch_sync(v5, &block);
  }

  v6 = v21;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  return v6 & 1;
}

void sub_1014E469C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E46B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  if (subscriber::isValidSimSlot())
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    *buf = &v21;
    v7 = sub_1002D750C(a1 + 2560, &v21)[5];
    v20 = 1;
    *buf = &v20;
    if (*(sub_100D4E740(v7 + 256, 1) + 32) == 1)
    {
      *buf = &v21;
      v8 = sub_1002D750C(a1 + 2560, &v21)[5];
      v19 = 0;
      *buf = &v19;
      if (*(sub_100D4E740(v8 + 256, 0) + 32) == 1)
      {
        *buf = &v21;
        if (*(sub_1002D750C(a1 + 2560, &v21)[5] + 280) == a3)
        {
          v9 = *v6;
          if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109120;
          *&buf[4] = a3;
          v10 = "#I Activation (%d) has been done before";
          v11 = v9;
          v12 = 8;
          goto LABEL_13;
        }
      }
    }

    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sms::asString(a3);
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Going ahead and issuing activation (%s) request to baseband", buf, 0xCu);
    }

    *buf = &v21;
    *(sub_1002D750C(a1 + 2560, &v21)[5] + 280) = a3;
    *buf = &v21;
    v15 = sub_1002D750C(a1 + 2560, &v21)[5];
    v20 = 1;
    *buf = &v20;
    *(sub_100D4E740(v15 + 256, 1) + 32) = 0;
    *buf = &v21;
    v16 = sub_1002D750C(a1 + 2560, &v21)[5];
    v20 = 0;
    *buf = &v20;
    *(sub_100D4E740(v16 + 256, 0) + 32) = 0;
    v17 = *(a1 + 112);
    if (v17)
    {
      (*(*v17 + 96))(v17, 1, a3, v21);
      (*(**(a1 + 112) + 96))(*(a1 + 112), 0, a3, v21);
      return;
    }

    v18 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "#I WMS Driver is not yet available";
      v11 = v18;
      v12 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }
}

uint64_t sms::Controller::handleCBActivation(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v11 = a4;
  v12 = a3;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = CSIBOOLAsString(a2);
      v14 = 2080;
      v15 = sms::asString(a3);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SMS Broadcast activation result %s for mode %s", buf, 0x16u);
    }

    *buf = &v11;
    v10 = sub_1002D750C(a1 + 2560, &v11)[5];
    *buf = &v12;
    result = sub_100D4E740(v10 + 256, v12);
    if (a2)
    {
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1014E4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  theArray = (*(**(a1 + 2584) + 104))(*(a1 + 2584), a2, @"MessageIDParameters3GPP");
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  v10 = theArray;
  v74 = a4;
  if (theArray)
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I The CMAS Configuration for 3GPP has been be retrieved", buf, 2u);
      v10 = theArray;
    }

    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v15 = ValueAtIndex;
        if (ValueAtIndex && (v16 = CFGetTypeID(ValueAtIndex), v16 == CFDictionaryGetTypeID()))
        {
          *&buf[4] = 0;
          *buf = 0;
          Value = CFDictionaryGetValue(v15, @"FromServiceID");
          v18 = Value;
          if (Value && (v19 = CFGetTypeID(Value), v19 == CFNumberGetTypeID()) && CFNumberGetValue(v18, kCFNumberSInt16Type, buf))
          {
            v20 = CFDictionaryGetValue(v15, @"ToServiceID");
            v21 = v20;
            if (v20)
            {
              v22 = CFGetTypeID(v20);
              if (v22 == CFNumberGetTypeID())
              {
                if (CFNumberGetValue(v21, kCFNumberSInt16Type, &buf[2]))
                {
                  buf[4] = 1;
                  v24 = *(a3 + 8);
                  v23 = *(a3 + 16);
                  if (v24 >= v23)
                  {
                    v33 = *a3;
                    v34 = v24 - *a3;
                    v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 1) + 1;
                    if (v35 > 0x2AAAAAAAAAAAAAAALL)
                    {
                      sub_1000CE3D4();
                    }

                    v36 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v33) >> 1);
                    if (2 * v36 > v35)
                    {
                      v35 = 2 * v36;
                    }

                    if (v36 >= 0x1555555555555555)
                    {
                      v37 = 0x2AAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v37 = v35;
                    }

                    if (v37)
                    {
                      if (v37 <= 0x2AAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      sub_100013D10();
                    }

                    v38 = 2 * (v34 >> 1);
                    *v38 = *buf;
                    *(v38 + 4) = *&buf[4];
                    v26 = v38 + 6;
                    v39 = v38 - v34;
                    memcpy((v38 - v34), v33, v34);
                    *a3 = v39;
                    *(a3 + 8) = v26;
                    *(a3 + 16) = 0;
                    if (v33)
                    {
                      operator delete(v33);
                    }
                  }

                  else
                  {
                    v25 = *buf;
                    *(v24 + 4) = *&buf[4];
                    *v24 = v25;
                    v26 = v24 + 6;
                  }

                  *(a3 + 8) = v26;
                  continue;
                }
              }
            }

            v32 = *(a1 + 40);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              v28 = valuePtr;
              v29 = v32;
              v30 = "Failed to retrieve ToServiceID in MessageID dictionary";
              goto LABEL_24;
            }
          }

          else
          {
            v31 = *(a1 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *valuePtr = 0;
              v28 = valuePtr;
              v29 = v31;
              v30 = "Failed to retrieve FromServiceID in MessageID dictionary";
              goto LABEL_24;
            }
          }
        }

        else
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v28 = buf;
            v29 = v27;
            v30 = "Failed to retrieve MessageID dictionary";
LABEL_24:
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, v28, 2u);
          }
        }
      }
    }

    if (*a3 != *(a3 + 8))
    {
      v40 = 1;
      goto LABEL_42;
    }

    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#N 3GPP does not have any configuration", buf, 2u);
    }
  }

  v40 = 0;
LABEL_42:
  v42 = (*(**(a1 + 2584) + 104))(*(a1 + 2584), a2, @"MessageIDParameters3GPP2");
  *buf = v42;
  if (v42)
  {
    v43 = *v9;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I The CMAS Configuration for 3GPP2 has been be retrieved", valuePtr, 2u);
      v42 = *buf;
    }

    v44 = CFArrayGetCount(v42);
    if (v44 >= 1)
    {
      for (j = 0; v44 != j; ++j)
      {
        v46 = CFArrayGetValueAtIndex(*buf, j);
        v47 = v46;
        if (v46 && (v48 = CFGetTypeID(v46), v48 == CFDictionaryGetTypeID()))
        {
          v77 = 0;
          *valuePtr = 0;
          v49 = CFDictionaryGetValue(v47, @"Category");
          v50 = v49;
          if (v49 && (v51 = CFGetTypeID(v49), v51 == CFNumberGetTypeID()) && CFNumberGetValue(v50, kCFNumberSInt16Type, valuePtr))
          {
            v52 = CFDictionaryGetValue(v47, @"Language");
            v53 = v52;
            if (v52)
            {
              v54 = CFGetTypeID(v52);
              if (v54 == CFNumberGetTypeID())
              {
                if (CFNumberGetValue(v53, kCFNumberSInt16Type, &valuePtr[2]))
                {
                  LOBYTE(v77) = 1;
                  v56 = *(v74 + 8);
                  v55 = *(v74 + 16);
                  if (v56 >= v55)
                  {
                    v65 = *v74;
                    v66 = v56 - *v74;
                    v67 = 0xAAAAAAAAAAAAAAABLL * (v66 >> 1) + 1;
                    if (v67 > 0x2AAAAAAAAAAAAAAALL)
                    {
                      sub_1000CE3D4();
                    }

                    v68 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v65) >> 1);
                    if (2 * v68 > v67)
                    {
                      v67 = 2 * v68;
                    }

                    if (v68 >= 0x1555555555555555)
                    {
                      v69 = 0x2AAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v69 = v67;
                    }

                    if (v69)
                    {
                      if (v69 <= 0x2AAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      sub_100013D10();
                    }

                    v70 = 2 * (v66 >> 1);
                    *v70 = *valuePtr;
                    *(v70 + 4) = v77;
                    v58 = v70 + 6;
                    v71 = v70 - v66;
                    memcpy((v70 - v66), v65, v66);
                    *v74 = v71;
                    *(v74 + 8) = v58;
                    *(v74 + 16) = 0;
                    if (v65)
                    {
                      operator delete(v65);
                    }
                  }

                  else
                  {
                    v57 = *valuePtr;
                    *(v56 + 4) = v77;
                    *v56 = v57;
                    v58 = v56 + 6;
                  }

                  *(v74 + 8) = v58;
                  continue;
                }
              }
            }

            v64 = *(a1 + 40);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *v75 = 0;
              v60 = v75;
              v61 = v64;
              v62 = "Failed to retrieve Language in MessageID dictionary";
              goto LABEL_65;
            }
          }

          else
          {
            v63 = *(a1 + 40);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *v75 = 0;
              v60 = v75;
              v61 = v63;
              v62 = "Failed to retrieve Category in MessageID dictionary";
              goto LABEL_65;
            }
          }
        }

        else
        {
          v59 = *(a1 + 40);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 0;
            v60 = valuePtr;
            v61 = v59;
            v62 = "Failed to retrieve MessageID dictionary";
LABEL_65:
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, v60, 2u);
          }
        }
      }
    }

    if (*v74 == *(v74 + 8))
    {
      v72 = *(a1 + 40);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#N 3GPP2 does not have any configuration", valuePtr, 2u);
      }
    }

    else
    {
      v40 = 1;
    }
  }

  sub_100010250(buf);
  sub_100010250(&theArray);
  return v40;
}

void sub_1014E53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  sub_100010250(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sms::Controller::handleCBSetConfigResult(uint64_t a1, char a2, int a3, uint64_t a4)
{
  if (subscriber::isValidSimSlot())
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
    if (a2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = sms::asString(a3);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Set Broadcast Config succeeded for mode %s", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = sms::asString(a3);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Set Broadcast Config failed for mode %s", &v9, 0xCu);
    }
  }
}

void sms::Controller::handleCBGetConfig3GPP(uint64_t a1, int a2, unsigned __int16 ***a3, uint64_t a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  memset(v45, 0, sizeof(v45));
  sub_1014E4BD8(a1, a4, &v46, v45);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a4);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sms::asString(a2);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get Broadcast Config for 3GPP, activated: %s", buf, 0xCu);
    v9 = *v8;
  }

  v11 = *a3;
  v42 = a4;
  if (*a3)
  {
    v13 = *v11;
    v12 = v11[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Broadcast config 3GPP:", buf, 2u);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *buf = 0u;
    sub_10000C320(buf);
    for (; v13 != v12; v13 += 6)
    {
      sub_10000C030(&v52);
      v14 = std::ostream::operator<<();
      sub_10000C030(v14);
      v15 = std::ostream::operator<<();
      v16 = sub_10000C030(v15);
      v17 = CSIBOOLAsString(*(v13 + 4) != 0);
      strlen(v17);
      v18 = sub_10000C030(v16);
      sub_10000C030(v18);
    }

    v19 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v20 = v44 >= 0 ? __p : __p[0];
      *v49 = 136446210;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v49, 0xCu);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v52 = v21;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[1]);
    }

    std::locale::~locale(&v53);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v9 = *v8;
  }

  v23 = v46;
  v22 = v47;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Current Broadcast config 3GPP:", buf, 2u);
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *buf = 0u;
  sub_10000C320(buf);
  for (; v23 != v22; v23 += 6)
  {
    sub_10000C030(&v52);
    v24 = std::ostream::operator<<();
    sub_10000C030(v24);
    v25 = std::ostream::operator<<();
    v26 = sub_10000C030(v25);
    v27 = CSIBOOLAsString(v23[4] != 0);
    strlen(v27);
    v28 = sub_10000C030(v26);
    sub_10000C030(v28);
  }

  v29 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, __p);
    v30 = v44 >= 0 ? __p : __p[0];
    *v49 = 136446210;
    v50 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v49, 0xCu);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!*a3)
  {
    v38 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v39 = "#I Sending the 3GPP CMAS config to Baseband";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, __p, 2u);
LABEL_47:
    v40 = *(a1 + 112);
    if (v40)
    {
      (*(*v40 + 104))(v40, &v46, v42);
    }

    goto LABEL_49;
  }

  v31 = v47;
  v32 = **a3;
  if (v47 - v46 != (*a3)[1] - v32)
  {
LABEL_42:
    v38 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v39 = "#I 3GPPs are not equal";
    goto LABEL_46;
  }

  if (v46 != v47)
  {
    v33 = 0;
    while (1)
    {
      v34 = &v32[v33];
      v35 = v46 + v33 * 2;
      if (*(v46 + v33 * 2) != v32[v33] || *(v35 + 1) != v34[1] || v35[4] != *(v34 + 4))
      {
        break;
      }

      v33 += 3;
      if (v35 + 6 == v47)
      {
        goto LABEL_36;
      }
    }

    do
    {
      v37 = v31 - 6;
      if (*(v31 - 3) != *v32 || *(v31 - 2) != v32[1] || *(v31 - 2) != *(v32 + 4))
      {
        goto LABEL_42;
      }

      v32 += 3;
      v31 -= 6;
    }

    while (v37 != v46);
  }

LABEL_36:
  v36 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I 3GPPs are equal", __p, 2u);
  }

LABEL_49:
  *&v52 = v41;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  std::locale::~locale(&v53);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v45[0])
  {
    operator delete(v45[0]);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

void sub_1014E5DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10068C9D8(&a25);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::handleCBGetConfig3GPP2(uint64_t a1, int a2, unsigned __int16 ***a3, uint64_t a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  memset(v48, 0, sizeof(v48));
  v45 = 0;
  v46 = 0;
  v47 = 0;
  sub_1014E4BD8(a1, a4, v48, &v45);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a4);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sms::asString(a2);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get Broadcast Config for 3GPP2, activated: %s", buf, 0xCu);
    v9 = *v8;
  }

  v11 = *a3;
  v42 = a4;
  if (*a3)
  {
    v13 = *v11;
    v12 = v11[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Broadcast config 3GPP2:", buf, 2u);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *buf = 0u;
    sub_10000C320(buf);
    for (; v13 != v12; v13 += 6)
    {
      sub_10000C030(&v52);
      v14 = std::ostream::operator<<();
      sub_10000C030(v14);
      v15 = std::ostream::operator<<();
      v16 = sub_10000C030(v15);
      v17 = CSIBOOLAsString(*(v13 + 4) != 0);
      strlen(v17);
      v18 = sub_10000C030(v16);
      sub_10000C030(v18);
    }

    v19 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v20 = v44 >= 0 ? __p : __p[0];
      *v49 = 136446210;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v49, 0xCu);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v52 = v21;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[1]);
    }

    std::locale::~locale(&v53);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v9 = *v8;
  }

  v23 = v45;
  v22 = v46;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Current Broadcast config 3GPP2:", buf, 2u);
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *buf = 0u;
  sub_10000C320(buf);
  for (; v23 != v22; v23 += 6)
  {
    sub_10000C030(&v52);
    v24 = std::ostream::operator<<();
    sub_10000C030(v24);
    v25 = std::ostream::operator<<();
    v26 = sub_10000C030(v25);
    v27 = CSIBOOLAsString(v23[4] != 0);
    strlen(v27);
    v28 = sub_10000C030(v26);
    sub_10000C030(v28);
  }

  v29 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, __p);
    v30 = v44 >= 0 ? __p : __p[0];
    *v49 = 136446210;
    v50 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v49, 0xCu);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!*a3)
  {
    v38 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v39 = "#I Sending the 3GPP2 CMAS config to Baseband";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, __p, 2u);
LABEL_47:
    v40 = *(a1 + 112);
    if (v40)
    {
      (*(*v40 + 112))(v40, &v45, v42);
    }

    goto LABEL_49;
  }

  v31 = v46;
  v32 = **a3;
  if (v46 - v45 != (*a3)[1] - v32)
  {
LABEL_42:
    v38 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    LOWORD(__p[0]) = 0;
    v39 = "#I 3GPP2s are not equal";
    goto LABEL_46;
  }

  if (v45 != v46)
  {
    v33 = 0;
    while (1)
    {
      v34 = &v32[v33];
      v35 = v45 + v33 * 2;
      if (*(v45 + v33 * 2) != v32[v33] || *(v35 + 1) != v34[1] || v35[4] != *(v34 + 4))
      {
        break;
      }

      v33 += 3;
      if (v35 + 6 == v46)
      {
        goto LABEL_36;
      }
    }

    do
    {
      v37 = v31 - 6;
      if (*(v31 - 3) != *v32 || *(v31 - 2) != v32[1] || *(v31 - 2) != *(v32 + 4))
      {
        goto LABEL_42;
      }

      v32 += 3;
      v31 -= 6;
    }

    while (v37 != v45);
  }

LABEL_36:
  v36 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I 3GPP2s are equal", __p, 2u);
  }

LABEL_49:
  *&v52 = v41;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  std::locale::~locale(&v53);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48[0])
  {
    operator delete(v48[0]);
  }
}

void sub_1014E66BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10068C9D8(&a25);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sms::Controller::handleCellBroadcast_sync(uint64_t a1, uint64_t a2)
{
  v21 = *(*a2 + 8);
  v4 = v21;
  if (subscriber::isValidSimSlot())
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sms::Controller::getDynamicMessageModes_sync(a1, v21, &v18);
    v5 = v18;
    if (v18 != v19)
    {
      while (*v5 != 4)
      {
        if (++v5 == v19)
        {
          goto LABEL_16;
        }
      }
    }

    if (v5 != v19)
    {
      (*(**a2 + 192))(&__p);
      if ((v17 & 0x80u) == 0)
      {
        v6 = v17;
      }

      else
      {
        v6 = v16;
      }

      v22 = &v21;
      v7 = sub_1002D750C(a1 + 2560, &v21)[5];
      v9 = *(v7 + 296);
      v8 = *(v7 + 304);
      TransportType = sms::Model::getTransportType(*a2);
      sms::Controller::submitSMSReceivedMetric(a1, v4, v6, (v8 - v9) >> 4, 7u, TransportType, 0);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      v11 = *(a1 + 2584);
      v12 = *(a2 + 8);
      v13 = *a2;
      v14 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v11 + 112))(v11, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }

LABEL_16:
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_1014E68BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E6924(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014E69C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014E6A14(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  ctu::TextConverter::~TextConverter((a1 + 72));
  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

void sub_1014E6A98(void *a1, std::mutex *this)
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
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1014E6B5C(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1014E3190();
}

void sub_1014E6BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1014E6BF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014E6BF0(uint64_t *result)
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

void *sub_1014E6C44(void *a1)
{
  *a1 = off_101F449B8;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014E6C90(void *a1)
{
  *a1 = off_101F449B8;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1014E6D70(uint64_t result, uint64_t a2)
{
  *a2 = off_101F449B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014E6DB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014E6DC0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014E6E00(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[1];
  v6 = a1[3];
  v7[0] = a1[2];
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    sub_1014E3688(v5, v7, v3, v4);
  }

  sub_1014E3688(v5, v7, v3, 0);
}

uint64_t sub_1014E6EC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014E6F0C(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v1 + 40);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = *(v1 + 40);
  }

  *(v2 + 2600) = v5;
  v8 = *(v2 + 2608);
  *(v2 + 2608) = v6;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v4 + 8));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = CSIBOOLAsString(v7 & 1);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Power assertion for CMAS operation created: %s", buf, 0xCu);
  }

  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 24))(v2, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1014E710C(&v12);
  return sub_1000049E0(&v11);
}

void sub_1014E70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  sub_100004A34(v13);
  if (!v12)
  {
LABEL_5:
    sub_1014E710C(&a10);
    sub_1000049E0(&a9);
    _Unwind_Resume(a1);
  }

LABEL_4:
  sub_100004A34(v12);
  goto LABEL_5;
}

uint64_t *sub_1014E710C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

const void **sub_1014E71A0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1014E7218(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

uint64_t sub_1014E72F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (((*(**(*v1 + 2584) + 32))(*(*v1 + 2584)) & 1) == 0)
  {
    v13 = *(v2 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Inject Cell Broadcast: Device does not support CMAS", &buf, 2u);
    }

    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 80));
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
  buf.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &buf);
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
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_12:
  v14 = (*(*v11 + 32))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if ((v14 & 1) == 0)
  {
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Injecting Cell Broadcast not supported", &buf, 2u);
    }

    return 0;
  }

  if (*(v1 + 55) < 0)
  {
    sub_100005F2C(__p, v1[4], v1[5]);
  }

  else
  {
    *__p = *(v1 + 2);
    v48 = v1[6];
  }

  memset(&buf, 0, sizeof(buf));
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&buf, v1[1], v1[2]);
  }

  else
  {
    v18 = *(v1 + 1);
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v18;
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(buf.__r_.__value_.__r.__words[2]) < 8u)
    {
      v19 = *(v2 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
LABEL_32:
        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = p_buf;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Invalid message while injecting WEA: [%s]", &v61, 0xCu);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    v21 = &buf;
LABEL_35:
    if (v21->__r_.__value_.__s.__data_[0] == 50)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      v27 = *(v2 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v46 = subscriber::asString();
        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = v46;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid slot while injecting WEA: [%s]", &v61, 0xCu);
      }

      goto LABEL_48;
    }

    v23 = (*(**(v2 + 48) + 16))(*(v2 + 48), v22);
    memset(&v61, 0, sizeof(v61));
    std::string::basic_string(&v61, &buf, 2uLL, 5uLL, &v59);
    v24 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v61.__r_.__value_.__l.__size_ != 5)
      {
        v32 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_68:
          v33 = v61.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v26 = v61.__r_.__value_.__r.__words[0];
      if (*v61.__r_.__value_.__l.__data_ != 544043879 || *(v61.__r_.__value_.__r.__words[0] + 4) != 58)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) != 5)
      {
        v32 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }

        goto LABEL_70;
      }

      if (LODWORD(v61.__r_.__value_.__l.__data_) != 544043879 || v61.__r_.__value_.__s.__data_[4] != 58)
      {
        v26 = &v61;
LABEL_58:
        data = v26->__r_.__value_.__l.__data_;
        v30 = v26->__r_.__value_.__s.__data_[4];
        if (data != 1937010037 || v30 != 58)
        {
          v32 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            if (v24 < 0)
            {
              goto LABEL_68;
            }

LABEL_66:
            v33 = &v61;
LABEL_69:
            LODWORD(v59) = 136315138;
            *(&v59 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Unknown PDU type: %s", &v59, 0xCu);
          }

LABEL_70:
          v16 = 0;
LABEL_114:
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          goto LABEL_49;
        }

        v34 = 5;
LABEL_73:
        std::string::erase(&buf, 0, 7uLL);
        v55[0] = 0;
        v55[1] = 0;
        ctu::TextConverter::TextConverter(v55);
        ctu::TextConverter::pushConversion();
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &buf;
        }

        else
        {
          v35 = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        ctu::TextConverter::setSource(v55, v35, size);
        v59 = 0uLL;
        v60 = 0;
        ctu::TextConverter::readChars(&v59, v55, 0x7FFFFFFFuLL);
        v53[0] = 0;
        v53[1] = 0;
        v54 = 0;
        v37 = HIBYTE(v48);
        if (v48 < 0)
        {
          v37 = __p[1];
        }

        if (v37)
        {
          v52[0] = 0;
          v52[1] = 0;
          ctu::TextConverter::TextConverter(v52);
          ctu::TextConverter::pushConversion();
          if (v48 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          if (v48 >= 0)
          {
            v39 = HIBYTE(v48);
          }

          else
          {
            v39 = __p[1];
          }

          ctu::TextConverter::setSource(v52, v38, v39);
          v49 = 0;
          v50 = 0;
          v51 = 0;
          ctu::TextConverter::readChars(&v49, v52, 0x7FFFFFFFuLL);
          if (v51 >= 0)
          {
            v40 = &v49;
          }

          else
          {
            v40 = v49;
          }

          if (v51 >= 0)
          {
            v41 = HIBYTE(v51);
          }

          else
          {
            v41 = v50;
          }

          v58 = 0;
          memset(v57, 0, sizeof(v57));
          sub_1002853E4(v57, v40, v40 + v41, v41);
          if (v53[0])
          {
            v53[1] = v53[0];
            operator delete(v53[0]);
          }

          *v53 = *v57;
          v54 = v58;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v49);
          }

          ctu::TextConverter::~TextConverter(v52);
        }

        if (v60 >= 0)
        {
          v42 = &v59;
        }

        else
        {
          v42 = v59;
        }

        if (v60 >= 0)
        {
          v43 = HIBYTE(v60);
        }

        else
        {
          v43 = *(&v59 + 1);
        }

        v50 = 0;
        v51 = 0;
        v49 = 0;
        sub_1002853E4(&v49, v42, v42 + v43, v43);
        (*(*v2 + 384))(v2, v22, &v49, v53, v34);
        v44 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
        {
          v45 = sms::asString();
          *v57 = 136315138;
          *&v57[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I WEA processing status: %s", v57, 0xCu);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v53[0])
        {
          v53[1] = v53[0];
          operator delete(v53[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        ctu::TextConverter::~TextConverter(v55);
        v16 = 1;
        goto LABEL_114;
      }
    }

    v34 = 4;
    goto LABEL_73;
  }

  if (buf.__r_.__value_.__l.__size_ >= 8)
  {
    v21 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
    goto LABEL_32;
  }

LABEL_48:
  v16 = 0;
LABEL_49:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_1014E7A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  ctu::TextConverter::~TextConverter(&a27);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void *ImsSmsCommandDriver::ImsSmsCommandDriver(void *a1)
{
  v2 = CSISMSCommandDriver::CSISMSCommandDriver();
  v20[0] = off_101E2B528;
  v20[1] = sub_1000A8464;
  v20[3] = v20;
  *(v2 + 11) = 0;
  if ((capabilities::ct::supportsGemini(v2) & 1) == 0)
  {
    operator new();
  }

  if (!a1[11])
  {
    operator new();
  }

  sub_1000A8744(v20);
  *a1 = off_101F44B58;
  a1[13] = 0;
  a1[12] = a1 + 13;
  a1[16] = 0;
  a1[14] = 0;
  a1[15] = a1 + 16;
  a1[17] = 0;
  a1[19] = 0;
  a1[18] = a1 + 19;
  a1[20] = 0;
  sub_10000501C(&__p, "ImsSmsDriver");
  v3 = a1[3];
  v16 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[4];
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
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

  a1[24] = 0;
  a1[23] = a1 + 24;
  a1[25] = 0;
  a1[27] = 0;
  a1[26] = a1 + 27;
  a1[28] = 0;
  a1[29] = 0;
  a1[30] = 0;
  subscriber::makeSimSlotRange();
  v5 = v21;
  v6 = v22;
  if (v21 != v22)
  {
    v7 = v23;
    do
    {
      if (v7(*v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != v6);
    v8 = v22;
    while (v5 != v8)
    {
      v14 = *v5;
      v19 = &v14;
      *(sub_100051AD8((a1 + 15), &v14) + 32) = 0;
      v19 = &v14;
      v9 = sub_100E11800((a1 + 18), v14);
      v10 = v9[6];
      v9[5] = 0;
      v9[6] = 0;
      if (v10)
      {
        sub_100004A34(v10);
      }

      v19 = &v14;
      v11 = sub_100E11800((a1 + 12), v14);
      v12 = v11[6];
      v11[5] = 0;
      v11[6] = 0;
      if (v12)
      {
        sub_100004A34(v12);
      }

      do
      {
        ++v5;
      }

      while (v5 != v6 && (v7(*v5) & 1) == 0);
    }
  }

  return a1;
}

void sub_1014E80C0(uint64_t a1)
{
  sub_10000501C(__p, "/cc/props/ims_registration_state");
  v4[0] = off_101F44CC8;
  v4[1] = a1 + 208;
  v4[2] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/ims_client_state");
  operator new();
}

void sub_1014E8224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014E8270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = (a1 + 192);
  if (v2 != (a1 + 192))
  {
    v6 = a2 + 8;
    while (1)
    {
      v26 = SlotIdFromPersonalityIdEx();
      if (!v26)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v2 + 55);
          v16 = (v15 & 0x80u) != 0;
          if ((v15 & 0x80u) != 0)
          {
            v15 = v2[5];
          }

          if (v16)
          {
            v17 = v2[4];
          }

          else
          {
            v17 = (v2 + 4);
          }

          v18 = v15 == 0;
          v19 = "<invalid>";
          if (!v18)
          {
            v19 = v17;
          }

          *buf = 136315138;
          v28 = v19;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unknown PersonalityID : %s !", buf, 0xCu);
        }

        goto LABEL_36;
      }

      v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
      v8 = sub_100007A6C(a2, v2 + 4);
      v9 = *(v2 + 56);
      if (v6 != v8 && *(v8 + 56) == v9)
      {
        v10 = *v7;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = "not ready";
          if (v9)
          {
            v11 = "ready";
          }

          *buf = 136315138;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IMS client has not changed state from %s", buf, 0xCu);
        }

        goto LABEL_36;
      }

      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      if (v9)
      {
        goto LABEL_25;
      }

LABEL_36:
      v24 = v2[1];
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
          v25 = v2[2];
          v18 = *v25 == v2;
          v2 = v25;
        }

        while (!v18);
      }

      v2 = v25;
      if (v25 == v3)
      {
        return;
      }
    }

    v13 = "not ready";
    if (v9)
    {
      v13 = "ready";
    }

    *buf = 136315138;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I IMS client is now %s", buf, 0xCu);
    if ((v2[7] & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_25:
    if (*sub_1000A8C4C(a1 + 120, &v26) != 1)
    {
LABEL_35:
      sub_1014E9470(a1, v26);
      goto LABEL_36;
    }

    *sub_1000A8C4C(a1 + 120, &v26) = 0;
    v20 = *(a1 + 80);
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = *(a1 + 72);
        if (v22)
        {
          (*(*v22 + 72))(v22, v26, 0, 1, 0);
LABEL_34:
          sub_100004A34(v21);
          goto LABEL_35;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = *v7;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }
}

void sub_1014E85DC(uint64_t a1)
{
  *a1 = off_101F44B58;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100009970(a1 + 208, *(a1 + 216));
  sub_100009970(a1 + 184, *(a1 + 192));
  v4 = *(a1 + 176);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100D92208(*(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_100D92208(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  CSISMSCommandDriver::~CSISMSCommandDriver(a1);
}

void sub_1014E8700(uint64_t a1)
{
  sub_1014E85DC(a1);

  operator delete();
}

void sub_1014E87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
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

uint64_t sub_1014E8804(uint64_t a1, int a2)
{
  v9 = a2;
  v3 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1014E8898(&v7, a2);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v4)
  {
    v5 = *sub_1000A8C4C(a1 + 120, &v9);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1014E8880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014E8898(uint64_t a1, int a2)
{
  subscriber::makeSimSlotRange();
  v3 = v8;
  if (v8 == v9)
  {
    goto LABEL_12;
  }

  do
  {
    if (v10(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v9);
  if (v3 == v9)
  {
LABEL_12:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v3++;
      v6 = v5 == a2;
      while (v3 != v9 && (v10(*v3) & 1) == 0)
      {
        ++v3;
      }

      v4 |= v6;
    }

    while (v3 != v9);
  }

  return v4 & 1;
}

void sub_1014E8960(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) expired", buf, 2u);
  }

  v4 = *(v2 + 232);
  *(v2 + 232) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v42 = 0;
  v43 = 0;
  memset(buf, 0, sizeof(buf));
  v5 = *(a1 + 48);
  {
    v42 = v9;
    v43 = v7;
    v10 = buf;
  }

  else
  {
    v10 = &v42;
  }

  *v10 = 0;
  *(v10 + 1) = 0;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v11 = v42;
  if (!v42)
  {
    goto LABEL_48;
  }

  v45 = *(a1 + 56);
  v12 = v45;
  v44 = xmmword_10197EB50;
  v13 = (*(*v42[11] + 16))(v42[11], v45);
  *buf = &v45;
  if (!sub_100E11800(v11 + 144, v12)[5])
  {
    v28 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I No pending actions", buf, 2u);
    }

    goto LABEL_48;
  }

  *buf = &v45;
  v14 = sub_100E11800(v11 + 144, v45);
  v15 = v45;
  if (*(v14[5] + 44) == 1)
  {
    ServiceMap = Registry::getServiceMap(*(v11 + 56));
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
        v25 = 0;
        if (!v24)
        {
LABEL_22:
          v26 = *(v11 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface", buf, 2u);
          }

          v27 = 1;
LABEL_37:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          BYTE8(v44) = v27;
          v30 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_40;
          }

          v41 = CSIBOOLAsString(v27);
          *buf = 136315138;
          *&buf[4] = v41;
          v32 = "SMS was sent. TR1M expiry error [Fatal: %s]";
          goto LABEL_54;
        }

LABEL_31:
        *buf = *off_101EE8080;
        v51 = *off_101EE8090;
        v48 = 0;
        v49 = 0;
        __p = 0;
        sub_10005B328(&__p, buf, &v52, 4uLL);
        v46 = 0;
        (*(*v24 + 104))(buf, v24, v15, 1, &__p, 0, 0);
        sub_10002FE1C(&v46, buf);
        sub_10000A1EC(buf);
        if (v46)
        {
          v33 = (*(**(v11 + 88) + 16))(*(v11 + 88), v15);
          buf[0] = 1;
          ctu::cf::assign(buf, v46, v34);
          v27 = buf[0];
          v35 = *v33;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = CSIBOOLAsString(v27);
            *buf = 136315138;
            *&buf[4] = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Carrier preference: shouldConsiderAcceptedSmsAsFatal: %s", buf, 0xCu);
          }
        }

        else
        {
          v27 = 1;
        }

        sub_100045C8C(&v46);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v29 = sub_1014E9160(v11, v45);
  BYTE8(v44) = v29;
  v30 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    v31 = CSIBOOLAsString(v29);
    *buf = 136315138;
    *&buf[4] = v31;
    v32 = "SMS was not sent. TR1M expiry error [Fatal: %s]";
LABEL_54:
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
  }

LABEL_40:
  v37 = *(v11 + 80);
  if (v37)
  {
    v38 = std::__shared_weak_count::lock(v37);
    if (v38)
    {
      v39 = *(v11 + 72);
      if (v39)
      {
        (*(*v39 + 48))(v39, v45, &v44);
        goto LABEL_47;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = *v13;
  if (!os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    if (!v38)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  *buf = 0;
  _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to get SMS controller interface during TR1M expiry handling", buf, 2u);
  if (v38)
  {
LABEL_47:
    sub_100004A34(v38);
  }

LABEL_48:
  if (v43)
  {
    sub_100004A34(v43);
  }
}

void sub_1014E8F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_100045C8C(&a15);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014E8FB4(uint64_t result, uint64_t a2)
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

void sub_1014E8FD0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014E8FE0(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 232);
    *(a1 + 232) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) destroyed", v5, 2u);
    }
  }
}

void sub_1014E90A0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (SmsRetransmission) destroyed", v5, 2u);
    }
  }
}

uint64_t sub_1014E9160(uint64_t a1, uint64_t a2)
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_11:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface", buf, 2u);
    }

    v15 = 0;
    goto LABEL_18;
  }

LABEL_12:
  *buf = *off_101EE8060;
  v26 = *off_101EE8070;
  v23 = 0;
  v24 = 0;
  __p = 0;
  sub_10005B328(&__p, buf, &v27, 4uLL);
  v21 = 0;
  (*(*v12 + 104))(buf, v12, a2, 1, &__p, 0, 0);
  sub_10002FE1C(&v21, buf);
  sub_10000A1EC(buf);
  if (v21)
  {
    v16 = (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
    buf[0] = 0;
    ctu::cf::assign(buf, v21, v17);
    v15 = buf[0];
    v18 = *v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = CSIBOOLAsString(v15);
      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Carrier preference: shouldConsiderNonAcceptedSmsAsFatal: %s", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0;
  }

  sub_100045C8C(&v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

LABEL_18:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v15;
}

void sub_1014E9408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_100045C8C(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1014E9470(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v4 = *(a1 + 64);
  v10 = *(a1 + 56);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_1014E8898(&v10, a2);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v5)
  {
    (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
    memset(__p, 0, 24);
    PersonalityIdFromSlotId();
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v7);
        (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
        operator new();
      }
    }

    sub_100013CC4();
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid slot for create IMS client", __p, 2u);
  }
}

void sub_1014E9860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::__shared_weak_count::__release_weak(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014E98C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = (a1 + 216);
  if (v2 != (a1 + 216))
  {
    v50 = a2 + 8;
    do
    {
      v54 = 0;
      v55 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      *buf = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, buf);
      if (v12)
      {
        v13 = v12[3];
        v14 = v12[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v7);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v14);
          v15 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v13 = 0;
      }

      std::mutex::unlock(v7);
      v14 = 0;
      v15 = 1;
LABEL_11:
      (**v13)(&v54, v13, (v2 + 4));
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      if (!v54)
      {
        goto LABEL_67;
      }

      if (*(v54 + 49))
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v54 + 52);
      }

      v53 = v16;
      v17 = *(a1 + 64);
      v51 = *(a1 + 56);
      v52 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = sub_1014E8898(&v51, v16);
      if (v52)
      {
        sub_100004A34(v52);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_67;
      }

      v19 = (*(**(a1 + 88) + 16))(*(a1 + 88), v53);
      if (v50 == sub_100007A6C(a2, v2 + 4))
      {
        v24 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = v24;
          v26 = "#I IMS registration status changed: New info added";
          v27 = 2;
          goto LABEL_50;
        }

LABEL_51:
        if (*(v2 + 14) == 1)
        {
          v36 = (*(v2 + 60) >> 1) & 1;
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        *sub_1000A8C4C(a1 + 120, &v53) = v36;
        v37 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          v38 = sub_1000A8C4C(a1 + 120, &v53);
          v39 = CSIBOOLAsString(*v38);
          v40 = CSIBOOLAsString(*(v2 + 64));
          *buf = 136315394;
          *&buf[4] = v39;
          v57 = 2080;
          v58 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IMS registered : %s , Over Wifi : %s", buf, 0x16u);
        }

        if (*sub_1000A8C4C(a1 + 120, &v53) == 1)
        {
          sub_1014E9470(a1, v53);
        }

        v41 = *(a1 + 80);
        if (v41)
        {
          v42 = std::__shared_weak_count::lock(v41);
          if (v42)
          {
            v43 = *(a1 + 72);
            if (v43)
            {
              v44 = v53;
              v45 = sub_1000A8C4C(a1 + 120, &v53);
              (*(*v43 + 72))(v43, v44, *v45, 1, *(v2 + 64));
LABEL_66:
              sub_100004A34(v42);
              goto LABEL_67;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        v46 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
        }

        if (!v42)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      *buf = 0;
      v20 = *sub_100005C2C(a2, buf, v2 + 4);
      if (!v20)
      {
        sub_1000A58E4("map::at:  key not found");
      }

      v21 = *(v20 + 64);
      if (*(v20 + 56) == 1)
      {
        v22 = *(v20 + 60);
        v23 = (v22 >> 1) & 1;
        if (*(v2 + 14) == 1)
        {
          if (v23 != (*(v2 + 60) & 2) >> 1)
          {
            goto LABEL_35;
          }
        }

        else if ((v22 & 2) != 0)
        {
LABEL_35:
          v28 = *v19;
          if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

LABEL_36:
          v29 = CSIBOOLAsString(v23);
          if (*(v2 + 14) == 1)
          {
            v30 = (*(v2 + 60) >> 1) & 1;
          }

          else
          {
            v30 = 0;
          }

          v35 = CSIBOOLAsString(v30);
          *buf = 136315394;
          *&buf[4] = v29;
          v57 = 2080;
          v58 = v35;
          v25 = v28;
          v26 = "#I IMS registration status changed: From %s to %s";
LABEL_49:
          v27 = 22;
LABEL_50:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
          goto LABEL_51;
        }
      }

      else if (*(v2 + 14) == 1 && (*(v2 + 60) & 2) != 0)
      {
        v28 = *v19;
        if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        v23 = 0;
        goto LABEL_36;
      }

      v31 = *(v2 + 64);
      if (v31 != v21)
      {
        v32 = *v19;
        if (!os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        if (v21)
        {
          v33 = "WLAN";
        }

        else
        {
          v33 = "Baseband";
        }

        *buf = 136315394;
        *&buf[4] = v33;
        if (v31)
        {
          v34 = "WLAN";
        }

        else
        {
          v34 = "Baseband";
        }

        v57 = 2080;
        v58 = v34;
        v25 = v32;
        v26 = "#I IMS transport changed: From %s to %s";
        goto LABEL_49;
      }

LABEL_67:
      if (v55)
      {
        sub_100004A34(v55);
      }

      v47 = v2[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v2[2];
          v49 = *v48 == v2;
          v2 = v48;
        }

        while (!v49);
      }

      v2 = v48;
    }

    while (v48 != v3);
  }
}

void sub_1014E9E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void ImsSmsCommandDriver::handleMessageSendFailure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 31) < 0)
  {
    sub_100005F2C(v6, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *v6 = *(a3 + 8);
    v7 = *(a3 + 24);
  }

  v8 = *(a3 + 32);
  if (*(a3 + 63) < 0)
  {
    sub_100005F2C(__p, *(a3 + 40), *(a3 + 48));
  }

  else
  {
    *__p = *(a3 + 40);
    v10 = *(a3 + 56);
  }

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

void sub_1014EA0B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  sub_10004F058(a1);
}

void ImsSmsCommandDriver::handleMessageSendSuccess(uint64_t a1)
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

void sub_1014EA1EC(uint64_t a1, int a2)
{
  v6 = a2;
  sub_1014E8FE0(a1);
  sub_1014E90A0(a1);
  v7 = &v6;
  v4 = sub_100E11800(a1 + 144, a2);
  v5 = v4[6];
  v4[5] = 0;
  v4[6] = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1014EA254(uint64_t a1, sms::Model **a2)
{
  v53 = *(*a2 + 2);
  v4 = v53;
  v5 = (*(**(a1 + 88) + 16))(*(a1 + 88), v53);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(**a2 + 168))(&v50);
  v6 = *a2;
  v7 = *(*a2 + 12);
  if (v7 == 2)
  {
    v27 = *(v6 + 2);
    sms::Model::getDAForSmsOverIMS(v6, buf);
    __p = 0;
    v57 = 0;
    v58 = 0;
    TextToEmergencyFlag = sms::Model::getTextToEmergencyFlag(*a2);
    v29 = sub_1014EAAE8(a1, v27, 2, &v50, buf, &__p, TextToEmergencyFlag);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(*buf);
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    else if (!v29)
    {
      goto LABEL_24;
    }

LABEL_7:
    *buf = &v53;
    v11 = sub_100E11800(a1 + 144, v53);
    v13 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = v11[6];
    v11[5] = v13;
    v11[6] = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Sms segment sent", buf, 2u);
    }

    v16 = v53;
    v61 = 0;
    v62 = 0;
    Registry::getTimerService(&v61, *(a1 + 56));
    if (!v61)
    {
      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to get timer interface.", buf, 2u);
      }

LABEL_70:
      v35 = v62;
      if (!v62)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    valuePtr = 130;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    *buf = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, buf);
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
LABEL_43:
        number = 0;
        *buf = *off_101EE8040;
        v64 = *off_101EE8050;
        v57 = 0;
        v58 = 0;
        __p = 0;
        sub_10005B328(&__p, buf, v65, 4uLL);
        (*(*v25 + 104))(v68, v25, v16, 1, &__p, 0, 0);
        sub_10010B240(&number, v68);
        sub_10000A1EC(v68);
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        if (number)
        {
          CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        }

        v37 = *(a1 + 232);
        if (v37 && ((*(*v37 + 24))(v37) & 1) == 0)
        {
          v49 = *(a1 + 40);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) active.", buf, 2u);
          }
        }

        else
        {
          v38 = *(a1 + 16);
          if (!v38 || (v39 = *(a1 + 8), (v40 = std::__shared_weak_count::lock(v38)) == 0))
          {
            sub_100013CC4();
          }

          v41 = v40;
          atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v40);
          v42 = v61;
          sub_10000501C(&__p, "TR1M timer");
          v43 = valuePtr;
          v44 = *(a1 + 24);
          object = v44;
          if (v44)
          {
            dispatch_retain(v44);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 1174405120;
          *&v64 = sub_1014E8960;
          *(&v64 + 1) = &unk_101F44C00;
          v65[0] = a1;
          v65[1] = v39;
          v66 = v41;
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v67 = v16;
          aBlock = _Block_copy(buf);
          sub_100D23364(v42, &__p, 2, 1000000 * v43, &object, &aBlock);
          v45 = *v68;
          *v68 = 0;
          v46 = *(a1 + 232);
          *(a1 + 232) = v45;
          if (v46)
          {
            (*(*v46 + 8))(v46);
            v47 = *v68;
            *v68 = 0;
            if (v47)
            {
              (*(*v47 + 8))(v47);
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

          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p);
          }

          if (*(a1 + 232))
          {
            v48 = *(a1 + 40);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *v68 = 67109120;
              *&v68[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Sms Timer (TR1M) started: %u sec", v68, 8u);
            }
          }

          if (v66)
          {
            std::__shared_weak_count::__release_weak(v66);
          }

          std::__shared_weak_count::__release_weak(v41);
        }

        sub_100029A48(&number);
        if ((v26 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        goto LABEL_70;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_43;
  }

  if (v7 != 1)
  {
    goto LABEL_24;
  }

  v8 = *(v6 + 2);
  sms::Model::getDAForSmsOverIMS(v6, buf);
  __p = 0;
  v57 = 0;
  v58 = 0;
  v9 = sms::Model::getTextToEmergencyFlag(*a2);
  v10 = sub_1014EAAE8(a1, v8, 1, &v50, buf, &__p, v9);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v64) < 0)
  {
    operator delete(*buf);
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_24:
  v30 = *v5;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Sms segment not sent", buf, 2u);
  }

  *buf = xmmword_10197EB60;
  v31 = *(a1 + 80);
  if (v31)
  {
    v32 = std::__shared_weak_count::lock(v31);
    if (v32)
    {
      v33 = *(a1 + 72);
      if (v33)
      {
        (*(*v33 + 48))(v33, v4, buf);
LABEL_34:
        v35 = v32;
LABEL_71:
        sub_100004A34(v35);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = *(a1 + 40);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", &__p, 2u);
  }

  if (v32)
  {
    goto LABEL_34;
  }

LABEL_72:
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_1014EA9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, dispatch_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EAAE8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  memset(&__p, 0, sizeof(__p));
  v14 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  if (a3 == 1)
  {
    v15 = "application/vnd.3gpp.sms";
  }

  else
  {
    v15 = "application/vnd.3gpp2.sms";
  }

  if (a3 == 1)
  {
    v16 = 24;
  }

  else
  {
    v16 = 25;
  }

  sub_1000167D4(&__p, v15, v16);
  if (*(a5 + 23) >= 0)
  {
    v17 = *(a5 + 23);
  }

  else
  {
    v17 = *(a5 + 8);
  }

  v18 = *v14;
  v19 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = sms::asString();
      if (*(a5 + 23) >= 0)
      {
        v21 = a5;
      }

      else
      {
        v21 = *a5;
      }

      if (*(a6 + 23) >= 0)
      {
        v22 = a6;
      }

      else
      {
        v22 = *a6;
      }

      *buf = 136315650;
      *&buf[4] = v20;
      v30 = 2080;
      v31 = v21;
      v32 = 2080;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Sending SMS start - content type: %s, destination: %s, inReplyTo: %s", buf, 0x20u);
    }

    *buf = &v28;
    if (sub_100E11800(a1 + 96, a2)[5])
    {
      *buf = &v28;
      v23 = sub_100E11800(a1 + 96, v28);
      ImsSmsCommandDriverDelegate::sendSms(v23[5], a5, a6, a4, &__p, a7);
      v24 = 1;
      goto LABEL_26;
    }

    v25 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid delegate while sending SMS", buf, 2u);
    }
  }

  else if (v19)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to send SMS - Destination not set", buf, 2u);
  }

  v24 = 0;
LABEL_26:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_1014EAD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsSmsCommandDriver::handleMessageReceived(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_10132AF04(&v5, a3);
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

const void **sub_1014EAEEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = CFStringCreateWithCString(kCFAllocatorDefault, "IMSConfig", 0x8000100u);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, "SMS", 0x8000100u);
  v16 = v9;
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  v14 = 0;
  v15 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  v18[0] = v17;
  v18[1] = v9;
  v18[2] = v15;
  __p = 0;
  v13 = 0;
  sub_10005B328(&__p, v18, &v19, 3uLL);
  (*(**a3 + 104))(*a3, a2, 1, &__p, *a5, 1);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_100005978(&v15);
  sub_100005978(&v16);
  return sub_100005978(&v17);
}

void sub_1014EB064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  sub_100005978(&a13);
  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014EB0B0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1014EB134(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

__n128 sub_1014EB220(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014EB250(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_1008E2524(v3, a2);
  v6 = v17;
  v15 = v17;
  v16[0] = v18;
  v16[1] = v19;
  if (v19)
  {
    *(v18 + 2) = v16;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    v7 = *(a1 + 16);
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    if (v6 != v16)
    {
      while (1)
      {
        v23 = 0;
        v8 = v21;
        if (v20 == &v21)
        {
          break;
        }

        v9 = &v21;
        if (v21)
        {
          do
          {
            v10 = v8;
            v8 = *(v8 + 1);
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = v9[2];
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (v11);
        }

        if ((sub_1000068BC(v10 + 4, v6 + 4) & 0x80) != 0)
        {
          if (!v21)
          {
LABEL_18:
            v23 = &v21;
LABEL_19:
            operator new();
          }

          goto LABEL_14;
        }

        v12 = sub_100005C2C(&v20, &v23, v6 + 4);
LABEL_15:
        if (!*v12)
        {
          goto LABEL_19;
        }

        v13 = v6[1];
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
            v14 = v6[2];
            v11 = *v14 == v6;
            v6 = v14;
          }

          while (!v11);
        }

        v6 = v14;
        if (v14 == v16)
        {
          goto LABEL_28;
        }
      }

      v10 = &v21;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_14:
      v23 = v10;
      v12 = v10 + 1;
      goto LABEL_15;
    }
  }

  else
  {
    v15 = v16;
    v7 = *(a1 + 16);
    v21 = 0;
    v22 = 0;
    v20 = &v21;
  }

LABEL_28:
  sub_1014E98C0(v7, &v20);
  sub_100009970(&v20, v21);
  sub_100009970(&v15, v16[0]);
  sub_100009970(&v17, v18);
}

void sub_1014EB4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, char *a14, uint64_t a15, char a16, char *a17)
{
  sub_100009970(&a16, a17);
  sub_100009970(&a10, a11);
  sub_100009970(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014EB524(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014EB5EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44D48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014EB624(void *a1, xpc_object_t *a2)
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

  sub_100901888(v3, a2);
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

uint64_t sub_1014EB6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014EB814(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1014EB8E8);
  __cxa_rethrow();
}

void sub_1014EB854(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014EB8A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EB8E8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_1014EB934(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1014EB9B0(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = (*(**(*v1 + 88) + 16))(*(*v1 + 88), *(v1 + 8));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 16);
    v7 = CSIBOOLAsString(*(v1 + 21));
    *buf = 67109378;
    v19 = v6;
    *v20 = 2080;
    *&v20[2] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I SMS Send failure [SIP error: %u, fatal: %s]", buf, 0x12u);
  }

  v8 = *(v3 + 80);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(v3 + 72);
      if (v11)
      {
        v12 = *(v1 + 21);
        *buf = *(v1 + 16);
        v19 = 0;
        *&v20[4] = 4;
        *v20 = v12;
        *v17 = v1 + 8;
        if (sub_100E11800(v3 + 144, *(v1 + 8))[5])
        {
          if (sub_1014E9160(v3, *v2))
          {
            v20[0] = 1;
          }

          (*(*v11 + 48))(v11, *v2, buf);
        }

        else
        {
          v13 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No pending actions for send failure", v17, 2u);
          }
        }
      }

      sub_100004A34(v10);
    }
  }

  sub_1014EBBCC(&v16);
  return sub_1000049E0(&v15);
}

void sub_1014EBBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1014EBBCC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EBBCC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return result;
}

void sub_1014EBC34(uint64_t **a1)
{
  v1 = (*a1 + 1);
  v2 = **a1;
  v3 = (*(**(v2 + 88) + 16))(*(v2 + 88), *v1);
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SMS Send success", buf, 2u);
  }

  v5 = *(v2 + 80);
  if (!v5 || (v6 = std::__shared_weak_count::lock(v5)) == 0)
  {
LABEL_15:
    operator delete();
  }

  v7 = v6;
  v8 = *(v2 + 72);
  if (v8)
  {
    *buf = v1;
    if (sub_100E11800(v2 + 144, *v1)[5])
    {
      *buf = v1;
      if (*(sub_100E11800(v2 + 144, *v1)[5] + 48) == 2)
      {
        sub_1014E90A0(v2);
        sub_1014E8FE0(v2);
        (*(*v8 + 40))(v8, *v1);
        goto LABEL_14;
      }

      *buf = v1;
      if (*(sub_100E11800(v2 + 144, *v1)[5] + 48) == 1)
      {
        sub_1014E90A0(v2);
        *buf = v1;
        *(sub_100E11800(v2 + 144, *v1)[5] + 44) = 1;
        goto LABEL_14;
      }

      v13 = *v3;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      sub_100E11800(v2 + 144, *v1);
      v14 = sms::asString();
      *buf = 136315138;
      *&buf[4] = v14;
      v10 = "Unknown sms type in sms send success: %s";
      v11 = v13;
      v12 = 12;
    }

    else
    {
      v9 = *v3;
      if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v10 = "Failed to get pending messages";
      v11 = v9;
      v12 = 2;
    }

    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

LABEL_14:
  sub_100004A34(v7);
  goto LABEL_15;
}

uint64_t *sub_1014EBF0C(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 88) + 16))(*(*v1 + 88), *(v1 + 8));
  if (subscriber::isValidSimSlot())
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_100034C50(&v21, v4, v5, v5 - v4);
    v6 = (v1 + 88);
    if (!std::string::compare((v1 + 88), "application/vnd.3gpp.sms"))
    {
      if (*(v1 + 39) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 16), *(v1 + 24));
      }

      else
      {
        *__dst = *(v1 + 16);
        v20 = *(v1 + 32);
      }

      v13 = (*(**(v2 + 88) + 16))(*(v2 + 88), *(v1 + 8));
      if (*(v1 + 136) != *(v1 + 144))
      {
        operator new();
      }

      v14 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Empty PDU while parsing 3GPP message", buf, 2u);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_28;
    }

    if (std::string::compare((v1 + 88), "application/vnd.3gpp2.sms"))
    {
      v7 = *v3;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v1 + 111) < 0)
        {
          v6 = *v6;
        }

        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMS message with unrecognized content type: '%s'! Ignoring message.", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v9 = *(v2 + 80);
    if (v9)
    {
      v10 = *(v1 + 8);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          v25 = 0u;
          *v26 = 0u;
          *buf = 0u;
          sms::MTSmsDetails::MTSmsDetails();
          *v27 = off_101F44F58;
          *&v27[8] = v2;
          v28 = v10;
          v29 = v27;
          (*(*v12 + 32))(v12, buf, v27);
          sub_10124FD90(v27);
          sms::MTSmsDetails::~MTSmsDetails(buf);
LABEL_25:
          sub_100004A34(v11);
LABEL_28:
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
    }

    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = *v3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to handle Incoming SMS for invalid slot", buf, 2u);
  }

LABEL_30:
  sub_1014ECA6C(&v18);
  return sub_1000049E0(&v17);
}

void sub_1014EC8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  v41 = v37[4];
  if (v41)
  {
    sub_100004A34(v41);
  }

  operator delete(v37);
  sub_1014EB0B0(&a20);
  sms::MTSmsDetails::~MTSmsDetails((v39 - 160));
  sub_100004A34(v38);
  sub_100004A34(v36);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  sub_1014ECA6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014ECA6C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 136);
    if (v2)
    {
      *(v1 + 144) = v2;
      operator delete(v2);
    }

    if (*(v1 + 135) < 0)
    {
      operator delete(*(v1 + 112));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

void sub_1014ECB34(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014ECBB0(uint64_t a1)
{
  *a1 = off_101F44EC8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014ECC1C(uint64_t a1)
{
  *a1 = off_101F44EC8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1014ECD78(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1014ECDB0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F44EC8;
  v4 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  *(a2 + 8) = v4;
  v5 = *(result + 4);
  *(a2 + 24) = *(result + 3);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (result[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(result + 5), *(result + 6));
  }

  else
  {
    v6 = *(result + 40);
    *(a2 + 56) = *(result + 7);
    *(a2 + 40) = v6;
  }

  if (v3[87] < 0)
  {
    return sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  v7 = *(v3 + 4);
  *(a2 + 80) = *(v3 + 10);
  *(a2 + 64) = v7;
  return result;
}

void sub_1014ECE68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014ECE98(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1014ECEFC(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014ECF5C(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v7 = *(a1 + 8);
  v8 = (*(**(v7 + 88) + 16))(*(v7 + 88), *(a1 + 16));
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    buf.var0 = 136315138;
    *&buf.var1 = sms::asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Message pdu processing status: %s", &buf, 0xCu);
  }

  if (v4 != 5)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    *__p = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    *v91 = 0u;
    memset(v92, 0, sizeof(v92));
    memset(&buf, 0, sizeof(buf));
    SmsPduEncoder::SmsPduEncoder(&buf, 0);
    *&buf.var0 = &off_101F5AA30;
    BYTE8(v113) = 0;
    if (v4 == 1)
    {
      v11 = *v8;
      v12 = &_mh_execute_header;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_108:
        v56 = sms::asString();
        *v115 = 136315138;
        *&v115[4] = v56;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Rejecting MT SMS with RP-ERROR: %s", v115, 0xCu);
      }

LABEL_109:
      sub_10163A77C(&buf, *(*(a1 + 24) + 788), v12);
      memset(v115, 0, sizeof(v115));
      *&v116 = 0;
      sub_10163A968(&buf, v115);
      sub_1014EAAE8(v7, *(a1 + 16), 1, v115, a1 + 64, a1 + 40, 0);
      v57 = *v115;
      if (!*v115)
      {
LABEL_112:
        SmsPduEncoder::~SmsPduEncoder(&buf);
        goto LABEL_113;
      }

      *&v115[8] = *v115;
LABEL_111:
      operator delete(v57);
      goto LABEL_112;
    }

    v13 = *(a1 + 16);
    *&v117 = @"SMSSettings";
    *(&v117 + 1) = @"RejectUserSmsWithErrorCode";
    *&v116 = 0;
    memset(v115, 0, sizeof(v115));
    sub_10005B328(v115, &v117, &v118, 2uLL);
    cf[0] = 0;
    ServiceMap = Registry::getServiceMap(*(v7 + 56));
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
    *&v117 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v117);
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
        goto LABEL_102;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
LABEL_102:
    (*(*v22 + 104))(v85, v22, v13, 1, v115, 0, 0);
    sub_10010B240(cf, v85);
    sub_10000A1EC(v85);
    if ((v23 & 1) == 0)
    {
      sub_100004A34(v21);
    }

    LODWORD(v117) = -1;
    ctu::cf::assign(&v117, cf[0], v53);
    v54 = v117;
    sub_100029A48(cf);
    if (*v115)
    {
      *&v115[8] = *v115;
      operator delete(*v115);
    }

    v11 = *v8;
    v55 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v54 < 0)
    {
      if (v55)
      {
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending RP-ACK", v115, 2u);
      }

      *v115 = 0u;
      v116 = 0u;
      v115[0] = *(*(a1 + 24) + 788);
      v58 = *(a1 + 16);
      v59 = Registry::getServiceMap(*(v7 + 56));
      v60 = v59;
      if (v61 < 0)
      {
        v62 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
        v63 = 5381;
        do
        {
          v61 = v63;
          v64 = *v62++;
          v63 = (33 * v63) ^ v64;
        }

        while (v64);
      }

      std::mutex::lock(v59);
      *&v117 = v61;
      v65 = sub_100009510(&v60[1].__m_.__sig, &v117);
      if (v65)
      {
        v67 = v65[3];
        v66 = v65[4];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v67 = 0;
        v66 = 0;
      }

      std::mutex::unlock(v60);
      cf[0] = v67;
      cf[1] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v66);
      }

      sub_10000501C(&v117, "EnableExtraRPAckFields");
      v83[0] = kCFBooleanFalse;
      if (kCFBooleanFalse)
      {
        CFRetain(kCFBooleanFalse);
      }

      sub_1014EAEEC(v85, v58, cf, &v117, v83);
      v68 = v85[0];
      LOBYTE(v81[0]) = 0;
      if (v85[0])
      {
        v69 = CFGetTypeID(v85[0]);
        if (v69 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v81, v68, v70);
          LOBYTE(v68) = v81[0];
        }

        else
        {
          LOBYTE(v68) = 0;
        }
      }

      sub_10000A1EC(v85);
      sub_10000A1EC(v83);
      if (SHIBYTE(v118) < 0)
      {
        operator delete(v117);
      }

      if (v66)
      {
        sub_100004A34(v66);
      }

      sub_10163A494(&buf, v115, v68 & 1);
      v117 = 0uLL;
      v118 = 0;
      sub_10163A968(&buf, &v117);
      sub_1014EAAE8(v7, *(a1 + 16), 1, &v117, a1 + 64, a1 + 40, 0);
      if (v117)
      {
        *(&v117 + 1) = v117;
        operator delete(v117);
      }

      if ((SHIBYTE(v116) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

      v57 = *&v115[8];
      goto LABEL_111;
    }

    LOBYTE(v12) = v54;
    if (v55)
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  v81[0] = 0;
  v81[1] = 0;
  v82 = 0;
  sub_1000AE428(&buf, *(a1 + 24) + 792);
  CSIPhoneNumber::getFullNumber(v81, &buf);
  if (SBYTE7(v97) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(*(&v94 + 1));
  }

  if (SBYTE7(v93) < 0)
  {
    operator delete(v92[2]);
  }

  if (SHIBYTE(v92[0]) < 0)
  {
    operator delete(v91[0]);
  }

  if (*(&buf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(buf.var2.__rep_.__l.__data_);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(*(a1 + 24) + 788);
  if (SHIBYTE(v82) < 0)
  {
    sub_100005F2C(__dst, v81[0], v81[1]);
  }

  else
  {
    *__dst = *v81;
    v80 = v82;
  }

  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(v77, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *v77 = *(a1 + 64);
    v78 = *(a1 + 80);
  }

  v24 = *(a1 + 24);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  sub_100034C50(&v74, *(v24 + 760), *(v24 + 768), *(v24 + 768) - *(v24 + 760));
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(v72, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *v72 = *(a1 + 40);
    v73 = *(a1 + 56);
  }

  v25 = Registry::getServiceMap(*(v7 + 56));
  v26 = v25;
  if (v27 < 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  *&buf.var0 = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      if (!v33)
      {
        goto LABEL_86;
      }

LABEL_43:
      v117 = 0uLL;
      v118 = 0;
      sub_1001E0090(&v117, v74, v75, v75 - v74);
      v35 = v10;
      v36 = *(v6 + 8);
      v71 = (*(**(v7 + 88) + 16))(*(v7 + 88), v36);
      v37 = Registry::getServiceMap(*(v7 + 56));
      v38 = v37;
      if (v39 < 0)
      {
        v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
        v41 = 5381;
        do
        {
          v39 = v41;
          v42 = *v40++;
          v41 = (33 * v41) ^ v42;
        }

        while (v42);
      }

      std::mutex::lock(v37);
      *&buf.var0 = v39;
      v43 = sub_100009510(&v38[1].__m_.__sig, &buf);
      if (v43)
      {
        v45 = v43[3];
        v44 = v43[4];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }

      std::mutex::unlock(v38);
      *v115 = v45;
      *&v115[8] = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v44);
      }

      sub_10000501C(&buf, "UseRpOriginatingAddressAsSender");
      v89 = kCFBooleanTrue;
      if (kCFBooleanTrue)
      {
        CFRetain(kCFBooleanTrue);
      }

      sub_1014EAEEC(cf, v36, v115, &buf, &v89);
      v46 = cf[0];
      LOBYTE(v85[0]) = 0;
      if (cf[0])
      {
        v47 = CFGetTypeID(cf[0]);
        if (v47 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v85, v46, v48);
        }
      }

      v49 = LOBYTE(v85[0]);
      sub_10000A1EC(cf);
      sub_10000A1EC(&v89);
      if (buf.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&buf.var0);
      }

      if (v44)
      {
        sub_100004A34(v44);
      }

      cf[0] = 0;
      cf[1] = 0;
      v88 = 0;
      v50 = v77;
      if (v49)
      {
        v51 = __dst;
      }

      else
      {
        v51 = v77;
      }

      v52 = &v80 + 7;
      if (!v49)
      {
        v52 = &v78 + 7;
      }

      if (*v52 < 0)
      {
        if (v49)
        {
          v50 = __dst;
        }

        sub_100005F2C(cf, *v51, v50[1]);
      }

      else
      {
        *cf = *v51;
        v88 = v51[2];
      }

      if (SHIBYTE(v88) < 0)
      {
        sub_100005F2C(v85, cf[0], cf[1]);
      }

      else
      {
        *v85 = *cf;
        v86 = v88;
      }

      if (SHIBYTE(v118) < 0)
      {
        sub_100005F2C(v83, v117, *(&v117 + 1));
      }

      else
      {
        *v83 = v117;
        v84 = v118;
      }

      *&buf.var0 = v7;
      buf.var2.__rep_.__l.__data_ = v6;
      buf.var2.__rep_.__l.__size_ = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      buf.var2.__rep_.__s.__data_[16] = v35;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(v91, v77[0], v77[1]);
      }

      else
      {
        *v91 = *v77;
        v92[0] = v78;
      }

      if (SHIBYTE(v73) < 0)
      {
        sub_100005F2C(&v92[1], v72[0], v72[1]);
      }

      else
      {
        *&v92[1] = *v72;
        v92[3] = v73;
      }

      *&v93 = v71;
      DWORD2(v93) = v36;
      *(&v116 + 1) = 0;
      operator new();
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v26);
  v32 = 0;
  v34 = 1;
  if (v33)
  {
    goto LABEL_43;
  }

LABEL_86:
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81[0]);
  }

LABEL_113:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1014EDB6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014EDE54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014EDF18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1014EDF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v4 = *(*(**(*(a1 + 8) + 88) + 16))(*(*(a1 + 8) + 88), *(a1 + 16));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = sms::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SMS message processing status: %s", &v5, 0xCu);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1014EE03C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EE054(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EE0A0(uint64_t a1)
{
  *a1 = off_101F44FD8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014EE10C(uint64_t a1)
{
  *a1 = off_101F44FD8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1014EE27C(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1014EE2B4(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F44FD8;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = result[32];
  if (result[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(result + 5), *(result + 6));
  }

  else
  {
    v5 = *(result + 40);
    *(a2 + 56) = *(result + 7);
    *(a2 + 40) = v5;
  }

  if (v3[87] < 0)
  {
    result = sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  else
  {
    v6 = *(v3 + 4);
    *(a2 + 80) = *(v3 + 10);
    *(a2 + 64) = v6;
  }

  v7 = *(v3 + 24);
  *(a2 + 88) = *(v3 + 11);
  *(a2 + 96) = v7;
  return result;
}

void sub_1014EE37C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014EE3AC(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1014EE410(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014EE470(uint64_t a1, unsigned __int8 *a2, std::string *a3)
{
  v4 = *a2;
  v9 = *a3;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v5 = *(a1 + 8);
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  SmsPduEncoder::SmsPduEncoder(v13, 0);
  *&v13[0] = &off_101F5AA30;
  BYTE8(v14) = 0;
  if (v4)
  {
    *__p = 0u;
    v12 = 0u;
    std::string::operator=(&__p[1], &v9);
    LOBYTE(__p[0]) = *(a1 + 32);
    BYTE2(__p[0]) = (*(**(a1 + 16) + 432))(*(a1 + 16));
    BYTE1(__p[0]) = (*(**(a1 + 16) + 344))(*(a1 + 16));
    v6 = **(a1 + 88);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I SMS PP-Data succeeded. Sending RP-ACK", buf, 2u);
    }

    sub_10163A494(v13, __p, 1);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    v7 = **(a1 + 88);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SMS PP-Data failed. Sending RP-ERROR", __p, 2u);
    }

    sub_10163A77C(v13, *(a1 + 32), 111);
  }

  v8 = *(a1 + 96);
  sub_10163A968(v13, __p);
  sub_1014EAAE8(v5, v8, 1, __p, a1 + 40, a1 + 64, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  SmsPduEncoder::~SmsPduEncoder(v13);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1014EE6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  SmsPduEncoder::~SmsPduEncoder(&a25);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014EE72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EE778@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  v3 = capabilities::ct::supportsSIMProvisioningAsSignupSource(a1);
  if ((v3 & 1) != 0 || (result = capabilities::ct::supportsSIMProvisioningAsSignupDestination(v3), result))
  {
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1014EE884(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EE8CC(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_object_t *a4)
{
  v7 = (a1 + 8);
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, "lasd.ids");
  if (v8)
  {
    dispatch_retain(v8);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2("LASDDatabaseIDSUtility", initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v10);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + 24) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 32) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  ctu::OsLogLogger::OsLogLogger(v15, &v14);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  ctu::OsLogContext::~OsLogContext(&v14);
  if (v8)
  {
    dispatch_release(v8);
  }

  *a1 = off_101F45080;
  v11 = *a2;
  v12 = *(a2 + 8);
  *(a1 + 48) = *a2;
  *(a1 + 56) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 64), v11);
  *(a1 + 104) = 0;
  (*(**a3 + 16))();
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 191) = 0;
  return a1;
}

void sub_1014EEAA4(_Unwind_Exception *a1)
{
  sub_10142A708((v1 + 10));
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
  LASDDatabaseIDSInterface::~LASDDatabaseIDSInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1014EEB2C(uint64_t a1, uint64_t a2)
{
  sub_1012650F4(v4, a2);
  v4[3] = a1;
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

void sub_1014EEC30(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
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

void sub_1014EED54(uint64_t a1)
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

void sub_1014EEE34(uint64_t a1)
{
  v4 = a1;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      (*(**(a1 + 112) + 56))(*(a1 + 112));
      sub_1014EF0BC(a1);
      return;
    }

    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014F03A4;
  block[3] = &unk_101F45268;
  block[4] = a1 + 8;
  block[5] = &v4;
  v3 = *(a1 + 24);
  if (v2)
  {
    dispatch_sync(v3, block);
  }

  else
  {
    dispatch_async_and_wait(v3, block);
  }
}

void sub_1014EEF24(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_1005C0F8C(&v8, a2);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014EF090(uint64_t result, uint64_t a2)
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

void sub_1014EF0AC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014EF0BC(uint64_t a1)
{
  v2 = *(a1 + 167);
  if (v2 < 0)
  {
    if (!*(a1 + 152))
    {
      return;
    }
  }

  else if (!*(a1 + 167))
  {
    return;
  }

  v3 = (a1 + 144);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 144);
    if ((v2 & 0x80000000) != 0)
    {
      v5 = *v3;
    }

    v10 = 136315138;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing out the directory %s where databases were previously received", &v10, 0xCu);
  }

  v6 = (*(**(a1 + 64) + 112))(*(a1 + 64), a1 + 144);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 167) < 0)
      {
        v3 = *v3;
      }

      v9 = strerror(v7);
      v10 = 136315394;
      v11 = v3;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Could not remove %s directory: %s", &v10, 0x16u);
    }
  }

  else if (*(a1 + 167) < 0)
  {
    **(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 167) = 0;
  }
}

void sub_1014EF24C(uint64_t a1)
{
  sub_1014EF284(a1);

  operator delete();
}

void sub_1014EF284(uint64_t a1)
{
  *a1 = off_101F45080;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10142A708(a1 + 80);
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  LASDDatabaseIDSInterface::~LASDDatabaseIDSInterface(a1);
}

void sub_1014EF428(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1014EF4FC);
  __cxa_rethrow();
}

void sub_1014EF468(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014EF4BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EF4FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t *sub_1014EF528(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(v1 + 24);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Database version updated", buf, 2u);
  }

  sub_1014EF0BC(v2);
  (***(v2 + 112))(*(v2 + 112), v1);
  sub_1014EF5FC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014EF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1014EF5FC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EF5FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_101264468(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t *sub_1014EF650(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstapping", buf, 2u);
  }

  v4 = v2[14];
  v5 = v1[1];
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6 = v1[3];
  v14 = v1[2];
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v2[2];
  if (!v7 || (v8 = v2[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  *buf = off_101F45298;
  v18 = v8;
  v19 = v10;
  v20 = buf;
  (*(*v4 + 40))(v4, &group, &v14, buf);
  sub_1012643E8(buf);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1014EF840(&v13);
  return sub_1000049E0(&v12);
}

void sub_1014EF7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_group_t group, char a15)
{
  sub_1012643E8(&a15);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1014EF840(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EF840(uint64_t *result)
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

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete();
  }

  return result;
}

void sub_1014EF8AC(unint64_t **a1)
{
  v1 = **a1;
  ServiceMap = Registry::getServiceMap(*(v1 + 48));
  v3 = ServiceMap;
  v4 = "38CellularPlanIDSServiceManagerInterface";
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v24[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v24);
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
LABEL_9:
      (*(*v10 + 16))(v28, v10);
      v12 = *v28;
      memset(v28, 0, sizeof(v28));
      v13 = *(v1 + 136);
      *(v1 + 128) = v12;
      if (v13)
      {
        sub_100004A34(v13);
        if (*&v28[8])
        {
          sub_100004A34(*&v28[8]);
        }
      }

      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      if (*(v1 + 128))
      {
        (*(**(v1 + 112) + 48))(*(v1 + 112));
        v14 = *(v1 + 16);
        if (!v14 || (v15 = *(v1 + 8), (v16 = std::__shared_weak_count::lock(v14)) == 0))
        {
          sub_100013CC4();
        }

        v17 = v16;
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        v19 = 0;
        v20 = *(v1 + 128);
        *v28 = 0xF000E000D000CLL;
        do
        {
          v21 = *&v28[v18];
          if (v21 >= 0x10)
          {
            sub_1000A58E4("bitset set argument out of range");
          }

          v19 |= 1 << v21;
          v18 += 2;
        }

        while (v18 != 8);
        v26[4] = v1;
        *buf = v19;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 0x40000000;
        v26[2] = sub_1014EFD28;
        v26[3] = &unk_101F451E8;
        *v28 = _NSConcreteStackBlock;
        *&v28[8] = 1174405120;
        v29 = sub_1014EFF0C;
        v30 = &unk_101F45208;
        v31 = v1;
        v32 = v15;
        v33 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1174405120;
        v24[2] = sub_1014F00BC;
        v24[3] = &unk_101F45238;
        v24[4] = v1;
        v24[5] = v15;
        v25 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (((*(*v20 + 40))(v20, "LASDDatabaseIDSUtility", buf, v26, v28, v24) & 1) == 0)
        {
          v22 = *(v1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Failed to register IDS callbacks", buf, 2u);
          }
        }

        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_weak(v33);
        }

        std::__shared_weak_count::__release_weak(v17);
      }

      else
      {
        v23 = *(v1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Can't start because IDS service not found", v28, 2u);
        }
      }

      operator delete();
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  goto LABEL_9;
}

void sub_1014EFCA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_weak(a31);
  }

  std::__shared_weak_count::__release_weak(v31);
  operator delete();
}

uint64_t sub_1014EFD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 56);
  ServiceMap = Registry::getServiceMap(*(v2 + 48));
  v5 = ServiceMap;
  v7 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v27 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v27);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_9:
  isIPhone = GestaltUtilityInterface::isIPhone(v13);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isIPhone)
  {
    return (v3 & 0xFFF80000) != 0;
  }

  v17 = Registry::getServiceMap(*(v2 + 48));
  v18 = v17;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v6 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v17);
  v27 = v6;
  v22 = sub_100009510(&v18[1].__m_.__sig, &v27);
  if (!v22)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
LABEL_20:
    std::mutex::unlock(v18);
    v23 = 0;
    v25 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
LABEL_21:
  isWatch = GestaltUtilityInterface::isWatch(v24);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (HIWORD(v3) > 0xEu)
  {
    return isWatch;
  }

  else
  {
    return 0;
  }
}

void sub_1014EFEE0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014EFF0C(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        v7 = *a2;
        v8 = a2[1];
        memset(v10, 0, sizeof(v10));
        sub_1005F1008(v10, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 5));
        v9 = *(v5 + 16);
        if (v9)
        {
          if (std::__shared_weak_count::lock(v9))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014F00BC(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v8, *a2, *(a2 + 8));
        }

        else
        {
          *v8 = *a2;
          v9 = *(a2 + 16);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(__p, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          *__p = *(a2 + 24);
          v11 = *(a2 + 40);
        }

        v12 = *(a2 + 48);
        sub_10002D728(&v13, (a2 + 56));
        sub_1002030F8(&v14, (a2 + 64));
        *&v15[6] = *(a2 + 78);
        *v15 = *(a2 + 72);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014F0350(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void sub_1014F03A4(uint64_t a1)
{
  v1 = **(a1 + 40);
  (*(**(v1 + 112) + 56))(*(v1 + 112));

  sub_1014EF0BC(v1);
}

uint64_t *sub_1014F0404(void **a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if (v2 != v4)
  {
    while ((*(v2 + 24) & 1) == 0)
    {
      v2 += 96;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  if (v2 == v4)
  {
LABEL_20:
    v17 = *(v3 + 192);
    v18 = *(v3 + 40);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1)
    {
      v20 = (v3 + 168);
      if (v19)
      {
        v21 = (v3 + 168);
        if (*(v3 + 191) < 0)
        {
          v21 = *v20;
        }

        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
        *(buf[0].__r_.__value_.__r.__words + 4) = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Device with ID %s is in no longer in proximity", buf, 0xCu);
      }

      if (*(v3 + 191) < 0)
      {
        operator delete(*v20);
      }

      *v20 = 0;
      *(v3 + 176) = 0;
      *(v3 + 191) = 0;
      *(v3 + 184) = 0;
      if (*(v3 + 223) < 0)
      {
        operator delete(*(v3 + 200));
      }

      *(v3 + 200) = 0;
      *(v3 + 208) = 0;
      *(v3 + 224) = 0;
      *(v3 + 216) = 0;
      if (*(v3 + 255) < 0)
      {
        operator delete(*(v3 + 232));
      }

      *(v3 + 232) = 0;
      *(v3 + 240) = 0;
      *(v3 + 256) = 0;
      *(v3 + 248) = 0;
      goto LABEL_55;
    }

    if (!v19)
    {
      goto LABEL_55;
    }

    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    v22 = "#N No device in proximity";
    goto LABEL_36;
  }

  std::string::operator=((v3 + 168), v2);
  v5 = *(v2 + 26);
  *(v3 + 192) = *(v2 + 24);
  *(v3 + 194) = v5;
  std::string::operator=((v3 + 200), (v2 + 32));
  *(v3 + 224) = *(v2 + 56);
  std::string::operator=((v3 + 232), (v2 + 64));
  *(v3 + 256) = *(v2 + 88);
  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3 + 168;
    if (*(v3 + 191) < 0)
    {
      v7 = *(v3 + 168);
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
    *(buf[0].__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device with ID %s is in proximity", buf, 0xCu);
  }

  if ((*(**(v3 + 112) + 24))(*(v3 + 112), v2))
  {
    if (*(v3 + 192))
    {
      v35 = 0u;
      *v36 = 0u;
      *&v36[20] = 0;
      memset(buf, 0, sizeof(buf));
      v36[8] = 2;
      *&v36[12] = 0x50000003CLL;
      std::string::operator=(buf, (v3 + 168));
      *&v36[12] = 30;
      v36[8] = 2;
      v8 = *(v3 + 256);
      (*(**(v3 + 112) + 8))(&__dst);
      sub_1016316A4(buf, v8, &__dst.__r_.__value_.__l.__data_);
      sub_100077CD4(&__dst, __dst.__r_.__value_.__l.__size_);
      v9 = *(v3 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_100A432F0(v35);
        v11 = buf;
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = buf[0].__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v10;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sending the request message %s to device %s", &__dst, 0x16u);
      }

      v12 = *(v3 + 16);
      if (!v12 || (v13 = *(v3 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
      {
        sub_100013CC4();
      }

      v15 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = *(v3 + 128);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__dst, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = buf[0];
      }

      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, buf[1].__r_.__value_.__l.__data_, buf[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf[1];
      }

      v30 = v35;
      v31 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        CFRetain(*(&v35 + 1));
      }

      v32 = *v36;
      if (*v36)
      {
        CFRetain(*v36);
      }

      v33[0] = *&v36[8];
      *(v33 + 6) = *&v36[14];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 1174405120;
      v26[2] = sub_1014EEF24;
      v26[3] = &unk_101F450B0;
      v26[4] = v3;
      v26[5] = v13;
      v27 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      (*(*v16 + 48))(v16, &__dst, v26);
      sub_1002030AC(&v32);
      sub_10002D760(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }

      std::__shared_weak_count::__release_weak(v15);
      sub_1002030AC(v36);
      sub_10002D760(&v35 + 1);
      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      goto LABEL_55;
    }

    v18 = *(v3 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    v22 = "#I Can't exchange version info as there is no device in proximity";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
  }

LABEL_55:
  sub_100DB2BE0(&v25);
  return sub_1000049E0(&v24);
}

void sub_1014F0978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v24);
  sub_1005AD788(v25 - 160);
  sub_100DB2BE0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F0A1C(uint64_t *a1)
{
  v1 = *a1;
  v59 = a1;
  v60 = v1;
  v2 = v1 + 8;
  v3 = *v1;
  v4 = sub_101632548(v1 + 8);
  if (v4 > 2)
  {
    if ((v4 - 3) >= 2)
    {
      goto LABEL_173;
    }

    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100A432F0(*(v1 + 56));
      v10 = *(v1 + 32);
      v9 = v1 + 32;
      v8 = v10;
      if (*(v9 - 1) >= 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = *(v9 - 24);
      }

      if (*(v9 + 23) >= 0)
      {
        v8 = v9;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = v7;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v11;
      HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      buf[1].__r_.__value_.__r.__words[0] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received database file message %s from device %s, tx-id %s", buf, 0x20u);
    }

    v64 = 0;
    v65[0] = 0;
    v65[1] = 0;
    sub_1016320F0(v2, &v64);
    v62 = 0;
    v63 = 0;
    v61 = &v62;
    v12 = v64;
    if (v64 == v65)
    {
LABEL_133:
      sub_1001A8E08(&v61, v62);
      sub_1001A8E08(&v64, v65[0]);
      goto LABEL_173;
    }

    v13 = (v3 + 144);
    while (1)
    {
      if ((*(v12 + 87) & 0x8000000000000000) != 0)
      {
        if (v12[9])
        {
LABEL_18:
          memset(&__p, 0, sizeof(__p));
          v14 = *(v3 + 167);
          if (v14 < 0)
          {
            if (!*(v3 + 152))
            {
              goto LABEL_34;
            }

LABEL_20:
            v15 = *(v3 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v3 + 144;
              if ((v14 & 0x80000000) != 0)
              {
                v16 = *v13;
              }

              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
              *(buf[0].__r_.__value_.__r.__words + 4) = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Already have a directory created at %s", buf, 0xCu);
              LOBYTE(v14) = *(v3 + 167);
            }

            if ((v14 & 0x80) != 0)
            {
              goto LABEL_25;
            }

LABEL_37:
            *&__dst.__r_.__value_.__l.__data_ = *v13;
            __dst.__r_.__value_.__r.__words[2] = *(v3 + 160);
          }

          else
          {
            if (*(v3 + 167))
            {
              goto LABEL_20;
            }

LABEL_34:
            strcpy(buf, "/tmp/LASDTemp.XXXXXX");
            v20 = mkdtemp(buf);
            sub_100016890((v3 + 144), v20);
            v21 = v3 + 144;
            if (*(v3 + 167) < 0)
            {
              v21 = *v13;
            }

            (*(**(v3 + 64) + 56))(*(v3 + 64), v21, 511, 1);
            if ((*(v3 + 167) & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

LABEL_25:
            sub_100005F2C(&__dst, *(v3 + 144), *(v3 + 152));
          }

          v22 = *(v12 + 8);
          v23 = std::string::append(&__dst, "/", 1uLL);
          v24 = std::string::append(v23, "lasd", 4uLL);
          if (v22 > 7)
          {
            switch(v22)
            {
              case 8:
                v25 = "gsm";
                break;
              case 16:
                v25 = "scdma";
                break;
              case 32:
                v25 = "nr";
                break;
              default:
                goto LABEL_49;
            }
          }

          else
          {
            switch(v22)
            {
              case 1:
                v25 = "umts";
                break;
              case 2:
                v25 = "cdma";
                break;
              case 4:
                v25 = "lte";
                break;
              default:
LABEL_49:
                v25 = "unknown";
                break;
            }
          }

          v26 = strlen(v25);
          v27 = std::string::append(v24, v25, v26);
          v28 = std::string::append(v27, ".db", 3uLL);
          if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, v28->__r_.__value_.__l.__data_, v28->__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = *&v28->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v29;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v30 = v12 + 8;
          v31 = v12 + 8;
          if (*(v12 + 87) < 0)
          {
            v31 = *v30;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v33 = (*(**(v3 + 64) + 16))(*(v3 + 64), v31, p_p);
          if (v33)
          {
            v34 = *(v3 + 40);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

            v42 = *(v12 + 8);
            if (v42 > 7)
            {
              switch(v42)
              {
                case 8:
                  v43 = "gsm";
                  goto LABEL_110;
                case 16:
                  v43 = "scdma";
                  goto LABEL_110;
                case 32:
                  v43 = "nr";
                  goto LABEL_110;
              }
            }

            else
            {
              switch(v42)
              {
                case 1:
                  v43 = "umts";
                  goto LABEL_110;
                case 2:
                  v43 = "cdma";
                  goto LABEL_110;
                case 4:
                  v43 = "lte";
LABEL_110:
                  if (*(v12 + 87) < 0)
                  {
                    v30 = *v30;
                  }

                  v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v45 = __p.__r_.__value_.__r.__words[0];
                  v46 = strerror(v33);
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  v47 = &__p;
                  if (v44 < 0)
                  {
                    v47 = v45;
                  }

                  *(buf[0].__r_.__value_.__r.__words + 4) = v43;
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v30;
                  HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                  buf[1].__r_.__value_.__r.__words[0] = v47;
                  LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf[1].__r_.__value_.__r.__words[1] + 2) = v46;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Moving %s database file from %s to %s failed with err: (%s)", buf, 0x2Au);
                  goto LABEL_64;
              }
            }

            v43 = "unknown";
            goto LABEL_110;
          }

          if (*(v12 + 63) < 0)
          {
            v38 = v12[6];
            if (v38)
            {
              memset(buf, 0, sizeof(buf));
              sub_100005F2C(buf, v12[5], v38);
              goto LABEL_79;
            }
          }

          else if (*(v12 + 63))
          {
            memset(&buf[1], 0, sizeof(std::string));
            buf[0] = *(v12 + 5);
LABEL_79:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&buf[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              buf[1] = __p;
            }

            sub_101264AB4(&v61, v12 + 8);
            if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf[1].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_64;
          }

          v39 = *(v3 + 40);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = *(v12 + 8);
            if (v40 > 7)
            {
              switch(v40)
              {
                case 8:
                  v41 = "gsm";
                  break;
                case 16:
                  v41 = "scdma";
                  break;
                case 32:
                  v41 = "nr";
                  break;
                default:
                  goto LABEL_127;
              }
            }

            else
            {
              switch(v40)
              {
                case 1:
                  v41 = "umts";
                  break;
                case 2:
                  v41 = "cdma";
                  break;
                case 4:
                  v41 = "lte";
                  break;
                default:
LABEL_127:
                  v41 = "unknown";
                  break;
              }
            }

            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
            *(buf[0].__r_.__value_.__r.__words + 4) = v41;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Incoming %s database has version info missing so it can't be used for updating", buf, 0xCu);
          }

LABEL_64:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_66;
        }
      }

      else if (*(v12 + 87))
      {
        goto LABEL_18;
      }

      v17 = *(v3 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        break;
      }

LABEL_66:
      v35 = v12[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v12[2];
          v37 = *v36 == v12;
          v12 = v36;
        }

        while (!v37);
      }

      v12 = v36;
      if (v36 == v65)
      {
        if (v63)
        {
          (*(**(v3 + 112) + 32))(*(v3 + 112), &v61);
        }

        goto LABEL_133;
      }
    }

    v18 = *(v12 + 8);
    if (v18 > 7)
    {
      switch(v18)
      {
        case 8:
          v19 = "gsm";
          goto LABEL_120;
        case 16:
          v19 = "scdma";
          goto LABEL_120;
        case 32:
          v19 = "nr";
          goto LABEL_120;
      }
    }

    else
    {
      switch(v18)
      {
        case 1:
          v19 = "umts";
          goto LABEL_120;
        case 2:
          v19 = "cdma";
          goto LABEL_120;
        case 4:
          v19 = "lte";
LABEL_120:
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
          *(buf[0].__r_.__value_.__r.__words + 4) = v19;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Incoming %s database has file resource missing", buf, 0xCu);
          goto LABEL_66;
      }
    }

    v19 = "unknown";
    goto LABEL_120;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_173;
      }

      v5 = 1;
    }

    v49 = *(v3 + 40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v1 + 32;
      if (*(v1 + 31) >= 0)
      {
        v51 = v1 + 8;
      }

      else
      {
        v51 = *(v1 + 8);
      }

      if (*(v1 + 55) < 0)
      {
        v50 = *(v1 + 32);
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v51;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Received version info request from device %s, tx-id %s", buf, 0x16u);
    }

    memset(&__dst, 0, sizeof(__dst));
    sub_101631A78(v1 + 8, &__dst);
    if (__dst.__r_.__value_.__r.__words[2])
    {
      (*(**(v3 + 112) + 16))(*(v3 + 112), v1 + 8, &__dst);
      v74 = 0u;
      *v75 = 0u;
      *&v75[20] = 0;
      memset(buf, 0, sizeof(buf));
      v75[8] = 2;
      *&v75[12] = 0x50000003CLL;
      std::string::operator=(buf, (v1 + 8));
      std::string::operator=(&buf[1], (v1 + 32));
      *&v75[12] = 30;
      v75[8] = 2;
      (*(**(v3 + 112) + 8))(&__p);
      sub_1016316A4(buf, v5, &__p.__r_.__value_.__l.__data_);
      sub_100077CD4(&__p, __p.__r_.__value_.__l.__size_);
      v52 = *(v3 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = sub_100A432F0(v74);
        v54 = buf;
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = buf[0].__r_.__value_.__r.__words[0];
        }

        if (*(v1 + 55) >= 0)
        {
          v55 = v1 + 32;
        }

        else
        {
          v55 = *(v1 + 32);
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v54;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
        v68.__r_.__value_.__r.__words[0] = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Sending the response message %s to device %s, tx-id %s", &__p, 0x20u);
      }

      v56 = *(v3 + 128);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf[0];
      }

      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v68, buf[1].__r_.__value_.__l.__data_, buf[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v68 = buf[1];
      }

      v69 = v74;
      v70 = *(&v74 + 1);
      if (*(&v74 + 1))
      {
        CFRetain(*(&v74 + 1));
      }

      v71 = *v75;
      if (*v75)
      {
        CFRetain(*v75);
      }

      v72[0] = *&v75[8];
      *(v72 + 6) = *&v75[14];
      (*(*v56 + 48))(v56, &__p, 0);
      sub_1002030AC(&v71);
      sub_10002D760(&v70);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_1002030AC(v75);
      sub_10002D760(&v74 + 1);
      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v57 = *(v3 + 40);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#E Received invalid version info dictionary", buf, 2u);
      }
    }

    sub_100077CD4(&__dst, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = *(v3 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = "kUnknown";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#E Unhandled or Unknown message type %s", buf, 0xCu);
    }
  }

LABEL_173:
  sub_100EA5664(&v60);
  return sub_1000049E0(&v59);
}