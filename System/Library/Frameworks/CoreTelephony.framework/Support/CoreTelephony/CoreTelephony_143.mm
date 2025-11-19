void sub_1012727EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101272808(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101272808(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_101272860(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((TelephonyBasebandRemoveFreqList() & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Remove Frequency List Failed", buf, 2u);
    }
  }

  sub_101272808(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012728F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101272808(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101272A00()
{
  ctu::OsLogLogger::~OsLogLogger(v1);
  TMKXPCServer.shutdown()();
  operator delete();
}

void sub_101272A5C(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  if (a3 == 10)
  {
    v5 = [NEPolicyRouteRule routeRuleWithAction:2 forType:8];
    *&buf = v5;
    v6 = [NSArray arrayWithObjects:&buf count:1];
    v24 = [NEPolicyResult routeRules:v6];
  }

  else
  {
    v24 = 0;
    if (a3 == 1)
    {
      v24 = +[NEPolicyResult drop];
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x4812000000;
  v33 = sub_101272FBC;
  v34 = sub_101272FE0;
  v35 = &unk_101CF8E15;
  memset(v36, 0, 24);
  v7 = NEHelperCacheCopyAppUUIDMapping();
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v7) == &_xpc_type_array)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (xpc_get_type(v8) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10127300C;
    applier[3] = &unk_101F22388;
    applier[5] = a1;
    applier[6] = a2;
    applier[4] = &buf;
    xpc_array_apply(v8, applier);
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  v9 = *(*(&buf + 1) + 48);
  v10 = *(*(&buf + 1) + 56);
  v29[0] = &v25;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v29[1] = 0;
    if (!((v11 >> 3) >> 61))
    {
      sub_100018A1C(v11 >> 3);
    }

    sub_1000CE3D4();
  }

  xpc_release(v8);
  _Block_object_dispose(&buf, 8);
  v29[0] = v36;
  sub_100B27AE4(v29);
  v12 = v25;
  for (i = v26; v12 != i; ++v12)
  {
    v14 = *(a1 + 16);
    v15 = [NEPolicy alloc];
    v30[0] = *v12;
    v16 = +[NEPolicyCondition allInterfaces];
    v30[1] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:2];
    v18 = [v15 initWithOrder:a3 result:v24 conditions:v17];
    v19 = [v14 addPolicy:v18];

    if (v19)
    {
      operator new();
    }

    v20 = *(a1 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "A condition was not added for %{public}s", &buf, 0xCu);
    }
  }

  *&buf = &v25;
  sub_100B27AE4(&buf);
}

__n128 sub_101272FBC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10127300C(void *a1, int a2, xpc_object_t object)
{
  if (object)
  {
    v5 = a1[5];
    if (xpc_get_type(object) == &_xpc_type_uuid)
    {
      bytes = xpc_uuid_get_bytes(object);
      if (!uuid_is_null(bytes))
      {
        v7 = *(v5 + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = a1[6];
          if (*(v8 + 23) < 0)
          {
            v8 = *v8;
          }

          *v30 = 136446722;
          *&v30[4] = v8;
          *&v30[12] = 1040;
          *&v30[14] = 16;
          *&v30[18] = 2096;
          *&v30[20] = bytes;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Adding condition for bundle %{public}s with uuid %{uuid_t}.16P", v30, 0x1Cu);
        }

        v9 = *(a1[4] + 8);
        v10 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(object)];
        v11 = [NEPolicyCondition effectiveApplication:v10];
        v12 = v11;
        v14 = v9[7];
        v13 = v9[8];
        if (v14 >= v13)
        {
          v16 = v9[6];
          v17 = (v14 - v16) >> 3;
          if ((v17 + 1) >> 61)
          {
            sub_1000CE3D4();
          }

          v18 = v13 - v16;
          v19 = v18 >> 2;
          if (v18 >> 2 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          v31 = v9 + 6;
          if (v20)
          {
            sub_100018A1C(v20);
          }

          v21 = (8 * v17);
          *v21 = v12;
          v15 = 8 * v17 + 8;
          v22 = v9[6];
          v23 = v9[7];
          v24 = (v21 + v22 - v23);
          if (v23 != v22)
          {
            v25 = v9[6];
            v26 = v24;
            do
            {
              v27 = *v25;
              *v25++ = 0;
              *v26++ = v27;
            }

            while (v25 != v23);
            do
            {
            }

            while (v22 != v23);
            v22 = v9[6];
          }

          v9[6] = v24;
          v9[7] = v15;
          v28 = v9[8];
          v9[8] = 0;
          *&v30[16] = v22;
          *&v30[24] = v28;
          *v30 = v22;
          *&v30[8] = v22;
          sub_100B277EC(v30);
        }

        else
        {
          *v14 = v11;
          v15 = (v14 + 1);
          v9[7] = v15;
        }

        v9[7] = v15;
      }
    }
  }

  return 1;
}

void sub_101273298(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_1012732DC(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_101273334(uint64_t a1, NSObject **a2, void *a3, uint64_t a4, uint64_t *a5, int a6)
{
  *a1 = &off_101F22510;
  v12 = a1 + 8;
  *(a1 + 8) = &off_101F22580;
  ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "oos.geo.ctrl");
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v13 = *a2;
  *(a1 + 32) = *a2;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 40) = 0;
  ctu::OsLogLogger::OsLogLogger(v28, &v27);
  ctu::OsLogLogger::OsLogLogger((a1 + 48), v28);
  ctu::OsLogLogger::~OsLogLogger(v28);
  ctu::OsLogContext::~OsLogContext(&v27);
  *a1 = off_101F22400;
  *(a1 + 8) = off_101F224A8;
  *(a1 + 56) = 0;
  *(a1 + 64) = *a3;
  v14 = a3[1];
  *(a1 + 72) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 48);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27.var0) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I GeofenceController is initializing", &v27, 2u);
  }

  v16 = *(a5 + 23);
  v17 = *a5;
  v18 = +[NSString defaultCStringEncoding];
  if (v16 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = v17;
  }

  v20 = [NSString stringWithCString:v19 encoding:v18];
  v21 = [OOSLocationController alloc];
  v22 = *(a1 + 56);
  *(a1 + 56) = v21;

  v23 = *(a1 + 56);
  if (a6)
  {
    v24 = [v23 initWithBundleIdentifier:v20 withQueue:a4];
  }

  else
  {
    v24 = [v23 initWithBundlePath:v20 withQueue:a4];
  }

  v25 = *(a1 + 56);
  *(a1 + 56) = v24;

  [*(a1 + 56) setDelegate:v12];
  return a1;
}

void sub_10127354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  ctu::OsLogLogger::~OsLogLogger(&a12);
  sub_1000C0544((v12 + 16));
  ctu::OsLogContext::~OsLogContext(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012735C8(uint64_t a1)
{
  *a1 = off_101F22400;
  *(a1 + 8) = off_101F224A8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  return a1;
}

void sub_101273658(uint64_t a1)
{
  sub_1012735C8(a1);

  operator delete();
}

void sub_101273690(uint64_t a1)
{
  sub_1012735C8(a1 - 8);

  operator delete();
}

id sub_1012736CC(uint64_t a1)
{
  v4 = *(a1 + 56);
  if (v4)
  {

    return [v4 isLocationServiceEnabled_sync];
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid Location module", v7, 2u);
    }

    return 0;
  }
}

id sub_101273750(uint64_t a1)
{
  v4 = *(a1 + 56);
  if (v4)
  {

    return [v4 isCircularGeofenceSupported_sync];
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid Location module", v7, 2u);
    }

    return 0;
  }
}

void sub_1012737DC(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 56))
  {
    if (fabs(*a2) <= 90.0)
    {
      if (fabs(a2[1]) <= 180.0)
      {
        v11 = *(a1 + 48);
        if (a2[2] > 0.0)
        {
          if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I OOS circle info is valid.", v15, 2u);
          }

          v13 = [NSString alloc];
          if (*(a3 + 23) >= 0)
          {
            v14 = a3;
          }

          else
          {
            v14 = *a3;
          }

          [*(a1 + 56) setupCircularGeoFence:objc_msgSend(v13 withName:{"initWithUTF8String:", v14), *a2, a2[1], a2[2]}];
          objc_claimAutoreleasedReturnValue();
          operator new();
        }

        if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
        {
          v16 = 0;
          v8 = "Invalid radius for OOS Geofence";
          v9 = &v16;
          v10 = v11;
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *(a1 + 48);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v8 = "Invalid longitude for OOS Geofence";
          v9 = buf;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = *(a1 + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v8 = "Invalid latitude for OOS Geofence";
        v9 = &v18;
LABEL_10:
        v10 = v7;
LABEL_11:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v8 = "Invalid Location module";
      v9 = &v19;
      goto LABEL_10;
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_101273A2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Attempting to stop OOS geofencing for[%s]", &v10, 0xCu);
      v4 = *(a1 + 56);
    }

    v9 = *(*a2 + 8);
    [v4 stopGeofence:v9];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid Location module", &v10, 2u);
  }
}

void sub_101273B70(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Attempting to reset monitored OOS regions", v4, 2u);
      v2 = *(a1 + 56);
    }

    [v2 resetMonitoredRegions];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Invalid Location module", buf, 2u);
  }
}

void sub_101273C2C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting..", v2, 2u);
  }
}

void sub_101273C8C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Ending..", v2, 2u);
  }
}

void sub_101273CEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101273E48(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101273FA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101274100(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10127425C(uint64_t a1, uint64_t a2, int *a3)
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

  v7 = *a3;
  v5 = *(a1 + 24);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012743CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012744B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10127459C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012746F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101274874(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F226B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1012748D4(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = v1 + 8;
    if (v1[31] < 0)
    {
      v9 = *v9;
    }

    *buf = 136446210;
    v13 = v9;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set up geofence for OOS Region %{public}s", buf, 0xCu);
  }

  v4 = *(v2 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 64);
      if (v7)
      {
        (*(*v7 + 16))(v7, v1 + 8);
      }

      sub_100004A34(v6);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1012749F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101274A14(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Successfully set up geofence for OOS Region %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_101274B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101274B50(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring started for OOS Region %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_101274C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101274C8C(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed for OOS Region %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 32))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_101274DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101274DC8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    *buf = 136446466;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence didDetermineState for OOS Region %{public}s as state %d", buf, 0x12u);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        (*(*v9 + 40))(v9, v1 + 8, v1 + 32);
      }

      sub_100004A34(v8);
    }
  }

  sub_1003BD228(&v12);
  return sub_1000049E0(&v11);
}

void sub_101274EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1003BD228(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101274F18(void **a1)
{
  v1 = **a1;
  v2 = v1[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed with error...", buf, 2u);
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v1[8];
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

void sub_101275020(void **a1)
{
  v1 = **a1;
  v2 = v1[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Location services disabled", buf, 2u);
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v1[8];
      if (v6)
      {
        (*(*v6 + 56))(v6);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

uint64_t *sub_101275128(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Entered OOS Region %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (**v8)(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_101275240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101275264(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Exited OOS Region %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 8))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_10127537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012753A0()
{
  v1[0] = off_101F22700;
  v1[3] = v1;
  inactive = dispatch_workloop_create_inactive("WeaGeofenceManager");
  sub_1001FA58C(v1, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v1);
  operator new();
}

void sub_101275B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, dispatch_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t a26, uint64_t a27, uint64_t a28, dispatch_object_t a29, uint64_t a30, uint64_t a31)
{
  __cxa_free_exception(v34);
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  v38 = *(v36 - 168);
  if (v38)
  {
    sub_100004A34(v38);
  }

  v39 = *(v36 - 152);
  if (v39)
  {
    sub_100004A34(v39);
  }

  if (v33)
  {
    dispatch_release(v33);
  }

  sub_100004A34(v31);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  sub_100004A34(v31);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101275E58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101275EC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F22780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101275F18(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void CellularUsageReliableNetworkFallback::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t CellularUsageReliableNetworkFallback::CellularUsageReliableNetworkFallback(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = off_101F3E8E0;
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cu.rnf");
  ctu::OsLogLogger::OsLogLogger(v9, &v8);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F227D0;
  v6 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(a1 + 32, a3);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1012760B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012760D4(uint64_t a1)
{
  *a1 = off_101F227D0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_101276144(uint64_t a1)
{
  sub_1012760D4(a1);

  operator delete();
}

void sub_10127617C(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  PersonalityIdFromSlotId();
  sub_101276220(a1, __p);
  (*(*a1 + 56))(a1, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101276204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101276220(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
    *v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, v20);
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
LABEL_10:
          v15 = *(a1 + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not get the cellular usage store interface!", v20, 2u);
          }

          if (*(a1 + 95) < 0)
          {
            operator delete(*(a1 + 72));
          }

          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 96) = 0;
          *(a1 + 88) = 0;
LABEL_28:
          if ((v14 & 1) == 0)
          {
            sub_100004A34(v12);
          }

          return;
        }

LABEL_20:
        v16 = (a1 + 72);
        std::string::operator=((a1 + 72), a2);
        v17 = (*(*v13 + 216))(v13, a1 + 72);
        *(a1 + 96) = v17;
        v18 = *(a1 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = "false";
          if (v17)
          {
            v19 = "true";
          }

          if ((v17 & 0x100) == 0)
          {
            v19 = "no-value";
          }

          if (*(a1 + 95) < 0)
          {
            v16 = *v16;
          }

          *v20 = 136315394;
          *&v20[4] = v19;
          v21 = 2080;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Initialized with user value of %s for %s", v20, 0x16u);
        }

        goto LABEL_28;
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
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
}

void sub_10127649C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012764CC(uint64_t a1)
{
  v25 = 0;
  *buf = CFPreferencesCopyValue(@"ReliableNetworkFallbackToCellular", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10017A3BC(&v25, buf);
  if (!v25)
  {
    return sub_100045C8C(&v25);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
        goto LABEL_8;
      }

LABEL_12:
      subscriber::makeSimSlotRange();
      v13 = *buf;
      v14 = v23;
      if (*buf != v23)
      {
        v15 = v24;
        do
        {
          if (v15(*v13))
          {
            break;
          }

          ++v13;
        }

        while (v13 != v14);
        v16 = v23;
        while (v13 != v16)
        {
          __dst[0] = 0;
          __dst[1] = 0;
          v21 = 0;
          PersonalityIdFromSlotId();
          if (SHIBYTE(v19) < 0)
          {
            sub_100005F2C(__dst, __p[0], __p[1]);
            operator delete(__p[0]);
          }

          else
          {
            *__dst = *__p;
            v21 = v19;
          }

          (*(*v10 + 224))(v10, __dst, v25 == kCFBooleanTrue);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__dst[0]);
          }

          do
          {
            ++v13;
          }

          while (v13 != v14 && (v15(*v13) & 1) == 0);
        }
      }

      CFPreferencesSetValue(@"ReliableNetworkFallbackToCellular", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  v12 = *(a1 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get the cellular usage store interface!", buf, 2u);
  }

LABEL_26:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return sub_100045C8C(&v25);
}

void sub_101276788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  if ((v28 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_100045C8C(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1012767FC(uint64_t a1, int a2)
{
  CFSimSlotBundlePrefsDomain = getCFSimSlotBundlePrefsDomain(a2, 1);
  if (CFSimSlotBundlePrefsDomain)
  {
    v4 = CFSimSlotBundlePrefsDomain;
    *buf = @"ReliableNetworkFallback";
    *&buf[8] = @"UserCanEdit";
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    sub_10005B328(__p, buf, &v33, 2uLL);
    cf = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_13:
    (*(*v13 + 24))(&cf, v13, v4, __p, 0, 0);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    v16 = cf;
    v17 = 1;
    buf[0] = 1;
    if (cf)
    {
      v18 = CFGetTypeID(cf);
      if (v18 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v16, v19);
        v17 = buf[0];
      }

      else
      {
        v17 = 1;
      }
    }

    sub_10000A1EC(&cf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v35 = 0;
    PersonalityIdFromSlotId();
    if (SHIBYTE(v33) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
        if ((v17 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v17 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      *__p = *buf;
      v35 = v33;
      if ((v17 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    if (SHIBYTE(v35) >= 0)
    {
      v20 = HIBYTE(v35);
    }

    else
    {
      v20 = __p[1];
    }

    if (v20)
    {
      v21 = *(a1 + 95);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a1 + 80);
      }

      if (v20 != v21 || (SHIBYTE(v35) >= 0 ? (v23 = __p) : (v23 = __p[0]), v22 >= 0 ? (v24 = (a1 + 72)) : (v24 = *(a1 + 72)), memcmp(v23, v24, v20)))
      {
        sub_101276220(a1, __p);
      }

      LOBYTE(v4) = sub_101276C68((a1 + 16), v4);
      if (*(a1 + 97) == 1)
      {
        LOBYTE(v4) = *(a1 + 96);
      }

      goto LABEL_49;
    }

LABEL_44:
    LODWORD(v4) = sub_101276C68((a1 + 16), v4);
    v25 = *(a1 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HIBYTE(v35);
      v27 = __p[1];
      v28 = CSIBOOLAsString(v4);
      if (v26 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      *buf = 67109634;
      *&buf[4] = v17 & 1;
      *&buf[8] = 1024;
      *&buf[10] = v29 == 0;
      *&buf[14] = 2080;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I User can't change the setting (%d) or subscriberId empty (%d), returning the carrier bundle value: %s", buf, 0x18u);
    }

LABEL_49:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    return v4 & 1;
  }

  v15 = *(a1 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid slot %s", __p, 0xCu);
  }

  LOBYTE(v4) = 1;
  return v4 & 1;
}

void sub_101276BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101276C68(Registry **a1, uint64_t a2)
{
  v23[0] = @"ReliableNetworkFallback";
  v23[1] = @"DefaultValue";
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_10005B328(&__p, v23, &v24, 2uLL);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  v23[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v23);
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
  (*(*v12 + 24))(&cf, v12, a2, &__p, 0, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = cf;
  v15 = 1;
  LOBYTE(v23[0]) = 1;
  if (cf)
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v23, v14, v17);
      v15 = v23[0];
    }

    else
    {
      v15 = 1;
    }
  }

  sub_10000A1EC(&cf);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v15 & 1;
}

void sub_101276E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101276E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  PersonalityIdFromSlotId();
  if ((__p[23] & 0x80000000) != 0)
  {
    sub_100005F2C(v26, *__p, *&__p[8]);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    *v26 = *__p;
    v27 = *&__p[16];
  }

  v6 = HIBYTE(v27);
  if (v27 < 0)
  {
    v6 = v26[1];
  }

  if (v6)
  {
    (*(*a1 + 40))(a1, a2);
    v7 = *(a1 + 97);
    v8 = *(a1 + 96);
    if (v7 == 1 && v8 == a3)
    {
      goto LABEL_40;
    }

    v9 = *(a1 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "false";
      v11 = "no-value";
      if (v8)
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

      if (v7)
      {
        v11 = v12;
      }

      if (a3)
      {
        v10 = "true";
      }

      *__p = 136315394;
      *&__p[4] = v11;
      *&__p[12] = 2080;
      *&__p[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User setting changing from %s to %s", __p, 0x16u);
    }

    *(a1 + 96) = a3 | 0x100;
    ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
    *__p = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, __p);
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
LABEL_25:
          v23 = *(a1 + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not get the cellular usage store interface!", __p, 2u);
          }

          if (*(a1 + 95) < 0)
          {
            operator delete(*(a1 + 72));
          }

          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 96) = 0;
          *(a1 + 88) = 0;
          (*(*a1 + 56))(a1, a2);
          goto LABEL_38;
        }

LABEL_37:
        (*(*a1 + 56))(a1, a2);
        (*(*v21 + 224))(v21, v26, a3);
LABEL_38:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_40;
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
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  v24 = *(a1 + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = subscriber::asString();
    *__p = 136315138;
    *&__p[4] = v25;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No Personality for slot %s", __p, 0xCu);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  (*(*a1 + 56))(a1, a2);
LABEL_40:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_101277284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012772E8(uint64_t a1)
{
  v2 = (*(*a1 + 40))(a1);
  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = CSIBOOLAsString(v2);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Reevaluating the reliable network fallback setting value: %s", &v5, 0xCu);
  }

  if (*(a1 + 65) != 1 || *(a1 + 64) != v2)
  {
    *(a1 + 64) = v2 | 0x100;
    sub_10000FFD0(a1 + 32, v2);
  }
}

void sub_1012773E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "false";
    if (*(a1 + 64))
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    if (*(a1 + 65))
    {
      v5 = v4;
    }

    else
    {
      v5 = "no-value";
    }

    if (*(a1 + 96))
    {
      v3 = "true";
    }

    if (*(a1 + 97))
    {
      v6 = v3;
    }

    else
    {
      v6 = "no-value";
    }

    v7 = 136315394;
    v8 = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I reported=%s, user=%s", &v7, 0x16u);
  }
}

void sub_10127753C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101277578(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012775B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012775E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101277620(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012779C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
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

uint64_t sub_101277BC0(uint64_t a1)
{
  *a1 = &off_101F228E0;
  sub_10001021C((a1 + 328));
  v2 = *(a1 + 320);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10032D3A4(a1 + 248, *(a1 + 256));
  sub_100220B4C(a1 + 136);
  sub_1000296E0((a1 + 128));
  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101277CC4(uint64_t a1)
{
  sub_101277BC0(a1);

  operator delete();
}

void sub_101277CFC(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4 && std::__shared_weak_count::lock(v4))
  {
    if (object)
    {
      dispatch_retain(object);
      dispatch_group_enter(object);
    }

    operator new();
  }

  sub_100013CC4();
}

void sub_101277E18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I handleCommandDriverStarted", buf, 2u);
  }

  *(a1 + 272) = 1;
  sub_101277F2C(a1, 1);
  *buf = 0;
  v6 = 0;
  (*(**(a1 + 96) + 120))(buf);
  if (*buf)
  {
    v3 = *buf;
    v4 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10127800C(a1, &v3, 1);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_101277F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

const void **sub_101277F2C(const void **result, int a2)
{
  if (*(result + 272) == 1)
  {
    v9 = v2;
    v10 = v3;
    v4 = result;
    if ((result[36] & 1) == 0)
    {
      v6 = result[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I sending collected P2P messages to BB", buf, 2u);
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = sub_1012791CC;
      v7[3] = &unk_101F229A0;
      v7[4] = v4;
      return sub_1012787C8(v4, a2, v7);
    }
  }

  return result;
}

void sub_10127800C(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 272) == 1)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (capabilities::ct::supportsP2PAsGizmo(a1))
    {
      v7 = 0x100000001;
      if (!v6)
      {
LABEL_16:
        v13 = HIDWORD(v7);
        v14 = *a2;
        if (*a2 && (v7 & 1) == 0)
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I paired device doesn't have active SIM", buf, 2u);
          }

          v16 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          if (v16)
          {
            sub_100004A34(v16);
            v14 = *a2;
          }

          else
          {
            v14 = 0;
          }
        }

        if (v14 != *(a1 + 296) || *(a1 + 312) != v13 || a3)
        {
          v19 = *(a1 + 40);
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v14)
            {
              v21 = "is";
            }

            else
            {
              v21 = "is not";
            }

            v22 = subscriber::asString();
            v23 = "";
            *buf = 136315650;
            *&buf[4] = v21;
            v37 = 2080;
            if (a3)
            {
              v23 = " (forced BB update)";
            }

            v38 = v22;
            v39 = 2080;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I paired device %s in proximity. Associated slot:%s%s", buf, 0x20u);
          }

          if (capabilities::ct::supportsP2PAsPhone(v20))
          {
            if (*(a1 + 296))
            {
              v24 = *(a1 + 312);
              if (v24 != v13)
              {
                v25 = *(a1 + 64);
                v33 = 0;
                v34 = 0;
                (*(*v25 + 48))(v25, v24, &v33);
                if (v34)
                {
                  sub_100004A34(v34);
                }
              }
            }

            v26 = *(a1 + 64);
            v27 = a2[1];
            v31 = *a2;
            v32 = v27;
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v26 + 48))(v26, v13, &v31);
            if (v32)
            {
              sub_100004A34(v32);
            }
          }

          v29 = *a2;
          v28 = a2[1];
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
          }

          v30 = *(a1 + 304);
          *(a1 + 296) = v29;
          *(a1 + 304) = v28;
          if (v30)
          {
            sub_100004A34(v30);
          }

          *(a1 + 312) = v13;
        }

        return;
      }

LABEL_15:
      sub_100004A34(v6);
      goto LABEL_16;
    }

    v35 = 0;
    v10 = sub_10005D028();
    sub_10000501C(buf, "vinyl.sim.active");
    v11 = sub_10005D0D8(v10, buf, &v35);
    v12 = v11;
    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
      if (v12)
      {
LABEL_14:
        v7 = v35 | &_mh_execute_header;
        if (!v6)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (v11)
    {
      goto LABEL_14;
    }

    if (*(a1 + 136) == 1 && cellplan::RemoteSimSubscriptionInfo::isSimReadyToUse((a1 + 144)))
    {
      if ((*(a1 + 136) & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
      }

      v17 = *(a1 + 240) << 32;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = &_mh_execute_header;
    }

    v7 = v17 | v18;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v9 = "is";
    }

    else
    {
      v9 = " is not";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N BB client is not connected. Paired device indicated as %s in proximity", buf, 0xCu);
  }
}

void sub_1012783C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101278420(uint64_t result)
{
  *(result + 272) = 0;
  *(result + 288) = 0;
  return result;
}

const void **sub_10127842C(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3[1] - *a3;
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v34) = 2048;
    *(&v34 + 2) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I passing to companion P2PMessage of type %d and length %zu", buf, 0x12u);
  }

  v26 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = v26;
    v26 = Mutable;
    *buf = v11;
    sub_1000296E0(buf);
  }

  __p = 0;
  *buf = a2;
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
  if (v12)
  {
    v13 = __p;
    __p = v12;
    *buf = v13;
    sub_100029A48(buf);
  }

  v32 = __p;
  __p = 0;
  sub_100029A48(&__p);
  CFDictionaryAddValue(v26, @"message.type", v32);
  sub_100029A48(&v32);
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v15 != *a3 && (a4 & 1) == 0)
  {
    v17 = v26;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_100034C50(&v22, v14, v15, v16);
    v29 = 0;
    v30 = 0;
    __p = 0;
    sub_100034C50(&__p, v22, v23, v23 - v22);
    v27 = 0;
    *buf = 0;
    v34 = 0uLL;
    sub_100034C50(buf, __p, v29, v29 - __p);
    v31 = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v27;
      v27 = v31;
      v32 = v18;
      sub_10002D760(&v32);
    }

    if (*buf)
    {
      *&v34 = *buf;
      operator delete(*buf);
    }

    v19 = v27;
    v25 = v27;
    v27 = 0;
    sub_10002D760(&v27);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    CFDictionaryAddValue(v17, @"message.data", v19);
    sub_10002D760(&v25);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  *buf = CFStringCreateWithFormat(0, 0, @"%@%d", v16, @"p2p.network.info.", a2);
  (*(**(a1 + 96) + 32))(&v21);
  sub_100005978(&v21);
  sub_100005978(buf);
  return sub_1000296E0(&v26);
}

void sub_101278704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  sub_10002D760(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1012787B0(uint64_t a1)
{
  result = *(a1 + 320);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

const void **sub_1012787C8(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 328))
  {
    v6 = 0;
  }

  else
  {
    v6 = capabilities::ct::supportsP2PAsGizmo(a1);
  }

  v7 = *(a1 + 128);
  if (v7 && (Count = CFDictionaryGetCount(v7)) != 0)
  {
    if (*(a1 + 272))
    {
      v9 = Count;
      v43 = 0;
      cf = 0;
      v42 = 0;
      valuePtr = xmmword_10193AF60;
      v47 = 0x300000002F00;
      v40 = 0;
      v41 = 0;
      *buf = 0;
      sub_100094068(buf, &valuePtr, &v48, 6uLL);
      v10 = *buf;
      v11 = v40;
      if (*buf != v40)
      {
        while (1)
        {
          v12 = *v10;
          key = 0;
          v45 = 0;
          LODWORD(valuePtr) = v12;
          v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          if (v13)
          {
            v14 = v45;
            v45 = v13;
            *&valuePtr = v14;
            sub_100029A48(&valuePtr);
          }

          key = v45;
          v45 = 0;
          sub_100029A48(&v45);
          Value = CFDictionaryGetValue(*(a1 + 128), key);
          v16 = Value;
          if (Value)
          {
            v17 = CFGetTypeID(Value);
            if (v17 == CFDictionaryGetTypeID())
            {
              break;
            }
          }

          sub_100029A48(&key);
          if (++v10 == v11)
          {
            goto LABEL_22;
          }
        }

        sub_1003F510C(&cf, &key);
        v45 = CFDictionaryGetValue(v16, @"id");
        *&valuePtr = 0;
        v21 = sub_1002AF4F0(&valuePtr, &v45);
        v22 = v43;
        v43 = valuePtr;
        *&valuePtr = v22;
        sub_100029A48(v21);
        v45 = CFDictionaryGetValue(v16, @"body");
        *&valuePtr = 0;
        v23 = sub_1009F4864(&valuePtr, &v45);
        v24 = v42;
        v42 = valuePtr;
        *&valuePtr = v24;
        sub_10002D760(v23);
        sub_100029A48(&key);
      }

LABEL_22:
      if (!cf)
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        sub_1000CE3D4();
      }

      if (*buf)
      {
        v40 = *buf;
        operator delete(*buf);
      }

      v33 = a3;
      goto LABEL_28;
    }
  }

  else
  {
    if ((a2 & v6 & 1) == 0)
    {
      v20 = *(a1 + 128);
      *(a1 + 128) = 0;
      *buf = v20;
      sub_1000296E0(buf);
      return (*(a3 + 16))(a3);
    }

    if (*(a1 + 272) == 1)
    {
      v33 = a3;
      v43 = 0;
      cf = 0;
      v42 = 0;
LABEL_28:
      *(a1 + 288) = 1;
      v25 = *(a1 + 16);
      if (!v25 || (v26 = *(a1 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
      {
        sub_100013CC4();
      }

      v28 = v27;
      p_shared_weak_owners = &v27->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v30 = *(a1 + 64);
      v31 = cf;
      v32 = v42;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 1174405120;
      v34[2] = sub_101278D9C;
      v34[3] = &unk_101F22970;
      v34[5] = a1;
      v34[6] = v26;
      v35 = v28;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v36 = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      v37 = v43;
      if (v43)
      {
        CFRetain(v43);
      }

      v34[4] = v33;
      (*(*v30 + 40))(v30, v31, v32, v6, a1 + 296, v34);
      sub_100029A48(&v37);
      sub_100029A48(&v36);
      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      std::__shared_weak_count::__release_weak(v28);
      sub_10002D760(&v42);
      sub_100029A48(&v43);
      return sub_100029A48(&cf);
    }
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E bb update interrupted, client went offline", buf, 2u);
  }

  return (*(a3 + 16))(a3);
}

void sub_101278CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26, const void *a27)
{
  operator delete(v28);
  operator delete(v27);
  if (__p)
  {
    operator delete(__p);
  }

  sub_10002D760(&a25);
  sub_100029A48(&a26);
  sub_100029A48(&a27);
  _Unwind_Resume(a1);
}

void sub_101278D9C(uint64_t a1, int a2, int a3, const void **a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    v9 = *(a1 + 40);
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (!*(a1 + 48))
      {
LABEL_25:
        sub_100004A34(v11);
        return;
      }

      *(v9 + 288) = 0;
      if (*a4)
      {
        sub_1000676D4((v9 + 328), a4);
        (*(**(v9 + 96) + 136))(*(v9 + 96), *(v9 + 328));
      }

      v12 = *(v9 + 128);
      if (v12 && (v13 = *(a1 + 64)) != 0 && (a3 & 1) == 0)
      {
        Value = CFDictionaryGetValue(v12, v13);
        if (Value)
        {
          v15 = CFDictionaryGetValue(Value, @"id");
          if (CFNumberCompare(*(a1 + 72), v15, 0) == kCFCompareEqualTo)
          {
            CFDictionaryRemoveValue(*(v9 + 128), *(a1 + 64));
            v32 = *(v9 + 40);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_24;
            }

            v34 = *(a1 + 72);
            v36 = 0;
            ctu::cf::assign(&v36, v34, v33);
            v35 = "failure";
            if (a2)
            {
              v35 = "success";
            }

            *buf = 136315394;
            v38 = v35;
            v39 = 1024;
            *v40 = v36;
            v23 = "#N send ack = %s, remove message %d from cache";
            v24 = v32;
            v25 = 18;
            goto LABEL_23;
          }

          v16 = *(v9 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (a2)
            {
              v18 = "success";
            }

            else
            {
              v18 = "failure";
            }

            v19 = *(a1 + 72);
            v36 = 0;
            ctu::cf::assign(&v36, v19, v17);
            v20 = v36;
            v36 = 0;
            ctu::cf::assign(&v36, v15, v21);
            v22 = *(a1 + 64);
            *buf = 136315906;
            v38 = v18;
            v39 = 1024;
            *v40 = v20;
            *&v40[4] = 1024;
            *&v40[6] = v36;
            v41 = 2112;
            v42 = v22;
            v23 = "#N send ack = %s, message found but ID is different %d vs %d (replaced?), name: %@";
            v24 = v16;
            v25 = 34;
            goto LABEL_23;
          }

LABEL_24:
          sub_1012787C8(v9, 0, *(a1 + 32));
          goto LABEL_25;
        }

        v29 = *(v9 + 40);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        v30 = "failure";
        v31 = *(a1 + 64);
        if (a2)
        {
          v30 = "success";
        }

        *buf = 136315394;
        v38 = v30;
        v39 = 2112;
        *v40 = v31;
        v23 = "#N send ack = %s, message not found, name: %@";
        v24 = v29;
      }

      else
      {
        v26 = *(v9 + 40);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        v27 = "failure";
        if (a2)
        {
          v27 = "success";
        }

        v28 = "yes";
        if (!a3)
        {
          v28 = "no";
        }

        *buf = 136315394;
        v38 = v27;
        v39 = 2080;
        *v40 = v28;
        v23 = "#N send ack = %s, retry = %s";
        v24 = v26;
      }

      v25 = 22;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      goto LABEL_24;
    }
  }
}

const void **sub_101279118(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1003F5164((a1 + 64), (a2 + 64));

  return sub_1003F5164((a1 + 72), (a2 + 72));
}

void sub_101279178(uint64_t a1)
{
  sub_100029A48((a1 + 72));
  sub_100029A48((a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1012791CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I bb update complete (no more messages)", v2, 2u);
  }
}

void sub_101279230(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Update BB capability to the phone side", v5, 2u);
  }

  if (*a2)
  {
    sub_1000676D4((a1 + 328), a2);
    (*(**(a1 + 96) + 136))(*(a1 + 96), *(a1 + 328));
  }
}

void sub_1012792E0(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v20 = 138412290;
    v21 = v2;
    v5 = "#I Cache: %@";
    v6 = v3;
    v7 = 12;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    LOWORD(v20) = 0;
    v5 = "#I No cache";
    v6 = v3;
    v7 = 2;
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v20, v7);
LABEL_7:
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 272));
    v20 = 136315138;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Client connected: %s", &v20, 0xCu);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 280);
    v20 = 134217984;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Message counter: %zu", &v20, 0xCu);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 288));
    v20 = 136315138;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Busy: %s", &v20, 0xCu);
    v8 = *(a1 + 40);
  }

  v12 = *(a1 + 296);
  v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v13)
    {
      return;
    }

    v14 = v12;
    if (*(v12 + 23) < 0)
    {
      v14 = *v12;
    }

    v15 = *(v12 + 24);
    v16 = (v12 + 32);
    if (*(v12 + 55) < 0)
    {
      v16 = *v16;
    }

    v20 = 136315650;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 2080;
    v25 = v16;
    v17 = "#I Last reported device: hw=%s sw=%d uuid=%s";
    v18 = v8;
    v19 = 28;
  }

  else
  {
    if (!v13)
    {
      return;
    }

    LOWORD(v20) = 0;
    v17 = "#I No last reported device";
    v18 = v8;
    v19 = 2;
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v20, v19);
}

void sub_10127955C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012795B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012795F0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10127961C(ServiceManager::Service *this)
{
  *this = off_101F22B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101279678(ServiceManager::Service *this)
{
  *this = off_101F22B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1012796F8@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101279738(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101277CFC(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101277CFC(v4, 0);
}

void sub_1012797D8(uint64_t a1)
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

void sub_1012798B8(uint64_t a1, int a2, ServiceStage *this)
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

uint64_t *sub_1012799CC(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I shutting down", buf, 2u);
  }

  v4 = *(v2 + 64);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  ctu::RestModule::disconnect((v2 + 112));
  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_101279A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101279A98(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I bootstrapping", buf, 2u);
  }

  (*(**(v1 + 56) + 16))(buf);
  v3 = *buf;
  memset(buf, 0, sizeof(buf));
  v4 = *(v1 + 104);
  *(v1 + 96) = v3;
  if (v4)
  {
    sub_100004A34(v4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  v5 = *(v1 + 96);
  v6 = *(v1 + 24);
  v18[4] = v1;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  v20 = sub_101279EFC;
  v21 = &unk_101F22B78;
  v22 = v1;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_101279F88;
  v18[3] = &unk_101F22B98;
  (*(*v5 + 16))(v5, v6, buf, 0, v18, &stru_101F22BD8);
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v1 + 64);
    v9 = *(v1 + 8);
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = v10;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = v9;
        v17 = v12;
        std::__shared_weak_count::__release_weak(v11);
        sub_100004A34(v13);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        std::__shared_weak_count::__release_weak(v11);
      }

      (*(*v8 + 16))(v8, &v16);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      Registry::createRestModuleOneTimeUseConnection(&v14, *(v1 + 80));
      ctu::RestModule::connect();
      if (v15)
      {
        sub_100004A34(v15);
      }

      sub_10000501C(&v23, "/cc/events/dump_state");
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101279E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  sub_1000062D4(v13 - 88);
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
  }

  sub_100146328(&a9);
  _Unwind_Resume(a1);
}

void sub_101279EFC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10127800C(v2, &v5, 0);
  v4 = v6;
  if (v6)
  {

    sub_100004A34(v4);
  }
}

void sub_101279F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101279F88(uint64_t a1, int a2, const __CFString *a3, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (!cf)
  {
    v10 = *(v4 + 40);
    goto LABEL_18;
  }

  v7 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v7 == TypeID)
  {
    v9 = cf;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 40);
  if (!a3 || v7 != TypeID)
  {
LABEL_18:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "received malformed P2P message. discarding...", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I received P2P message '%@' from companion device: %@", buf, 0x16u);
  }

  if (!CFStringHasPrefix(a3, @"p2p.network.info."))
  {
    v16 = *(v4 + 40);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v32 = *&buf[16];
    v17 = __p;
    if ((buf[23] & 0x80u) != 0)
    {
      v17 = *buf;
    }

    *buf = 136315138;
    *&buf[4] = v17;
    v18 = "#N received unknown P2P message '%s'' from companion device - bail out";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  Value = CFDictionaryGetValue(v9, @"message.type");
  v12 = Value;
  if (Value)
  {
    v13 = CFGetTypeID(Value);
    if (v13 == CFNumberGetTypeID())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = CFDictionaryGetValue(v9, @"message.data");
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v15 = CFDictionaryGetValue(v9, @"message.data");
    if (!v15)
    {
LABEL_35:
      v16 = *(v4 + 40);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = *buf;
      v32 = *&buf[16];
      v26 = __p;
      if ((buf[23] & 0x80u) != 0)
      {
        v26 = *buf;
      }

      *buf = 136315138;
      *&buf[4] = v26;
      v18 = "#N Received empty P2P message '%s' means is was revoked by iPhone";
      goto LABEL_39;
    }

    v14 = 0;
  }

  v19 = CFGetTypeID(v15);
  v20 = CFDataGetTypeID();
  if (!v14)
  {
    goto LABEL_35;
  }

  if (v19 != v20)
  {
    v12 = v14;
LABEL_42:
    v27 = *(v4 + 128);
    if (v27)
    {
      CFDictionaryRemoveValue(v27, v12);
    }

    return;
  }

  if (CFDataGetLength(v15) > 2039)
  {
    v28 = *(v4 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E invalid data received. discarding...", buf, 2u);
    }
  }

  else
  {
    if (!*(v4 + 128))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v22 = *(v4 + 128);
        *(v4 + 128) = Mutable;
        *buf = v22;
        sub_1000296E0(buf);
      }
    }

    v23 = *(v4 + 280) + 1;
    *(v4 + 280) = v23;
    __p[0] = 0;
    *buf = v23;
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v24)
    {
      __p[0] = v24;
      *buf = 0;
      sub_100029A48(buf);
      v25 = __p[0];
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    __p[0] = 0;
    sub_100029A48(__p);
    *buf = *off_101F22958;
    __p[0] = v25;
    __p[1] = v15;
    v29 = CFDictionaryCreate(0, buf, __p, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(*(v4 + 128), v14, v29);
    sub_101277F2C(v4, 0);
    sub_10001021C(&v29);
    sub_100029A48(&v30);
  }
}

__n128 sub_10127A490(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F22C08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10127A4C8(void *a1)
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

uint64_t sub_10127A510(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10127A5D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F22C88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10127A600(uint64_t a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  sub_10022C090(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v6 = 0;
  v7 = 0;
  (*(**(v3 + 96) + 120))(&v6);
  if (v6)
  {
    v4 = v6;
    v5 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10127800C(v3, &v4, 0);
    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10127A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_10127A6D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10127A790(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F22D08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10127A7C0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v16 = *v3;
  v17 = v5;
  if (v3[2])
  {
    v5[2] = &v17;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v16 = &v17;
  }

  sub_10032CF1C(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 248);
  if (v7 != (v6 + 256))
  {
    do
    {
      v8 = v17;
      if (!v17)
      {
        goto LABEL_13;
      }

      v9 = *(v7 + 8);
      v10 = &v17;
      do
      {
        if (*(v8 + 8) >= v9)
        {
          v10 = v8;
        }

        v8 = v8[*(v8 + 8) < v9];
      }

      while (v8);
      if (v10 == &v17 || v9 < *(v10 + 8) || *(v10 + 40) != *(v7 + 40))
      {
LABEL_13:
        if (*(v7 + 40) - 1 <= 2)
        {
          v11 = *(v6 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I CB changed, drop my BBInfo", buf, 2u);
          }

          v12 = *(v6 + 328);
          *(v6 + 328) = 0;
          *buf = v12;
          sub_10001021C(buf);
          sub_101277F2C(v6, 1);
        }
      }

      v13 = v7[1];
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
          v14 = v7[2];
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      v7 = v14;
    }

    while (v14 != (v6 + 256));
  }

  sub_10032D3A4(&v16, v17);
}

uint64_t sub_10127A974(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10127A9C0(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I starting", buf, 2u);
  }

  (*(**(v1 + 64) + 24))(*(v1 + 64));
  operator delete();
}

CFTimeZoneRef TimeHandler::getSystemTimeZone@<X0>(CFTimeZoneRef *a1@<X8>)
{
  result = CFTimeZoneCopySystem();
  *a1 = result;
  return result;
}

uint64_t SaveDataModeController::create@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::getBasebandBootStrategy(a1);
  *a2 = 0;
  a2[1] = 0;
  if (result != 2)
  {
    operator new();
  }

  return result;
}

void sub_10127B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v9);
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x10127B378);
}

uint64_t sub_10127B3CC(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_101283998(a1);
}

void sub_10127B40C(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10127B500(uint64_t a1, xpc_object_t object, NSObject **a3)
{
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    xpc_null_create();
  }

  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

uint64_t sub_10127B664(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_10000FED0(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_10127B7AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10127B7BC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_10127B8AC(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101287F1C;
  v7[3] = &unk_101F238C8;
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
    v11 = sub_10006A38C;
    v12 = &unk_101F23908;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100059430;
    v12 = &unk_101F238E8;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_10127B9E0(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_10127BACC(capabilities::ct *a1, int a2)
{
  if (capabilities::ct::supports5G(a1))
  {
    v7 = a1;
    v8 = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_101287FD0;
    v9[3] = &unk_101F23928;
    v9[4] = a1 + 8;
    v9[5] = &v7;
    v10 = v9;
    v4 = *(a1 + 3);
    if (*(a1 + 4))
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_10006A38C;
      v14 = &unk_101F23908;
      v15 = &v17;
      v16 = &v10;
      dispatch_async_and_wait(v4, &block);
    }

    else
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100059430;
      v14 = &unk_101F238E8;
      v15 = &v17;
      v16 = &v10;
      dispatch_sync(v4, &block);
    }

    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10127BC20(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101287FE0;
  v7[3] = &unk_101F23948;
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
    v11 = sub_10006A38C;
    v12 = &unk_101F23908;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100059430;
    v12 = &unk_101F238E8;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_10127BD54(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_10127BE40(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_101288080;
  v5[3] = &unk_101F23968;
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
    v9 = sub_10006A38C;
    v10 = &unk_101F23908;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100059430;
    v10 = &unk_101F238E8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_10127BF6C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

const __CFDate *sub_10127C050(uint64_t a1, const __CFDate **a2)
{
  result = *a2;
  if (*a2)
  {
    CFDateGetAbsoluteTime(result);
    CFAbsoluteTimeGetCurrent();
    Registry::getTimerService(&v8, *(a1 + 56));
    sub_10000501C(v6, "OverriddenInterfaceCost timer");
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v5);
        *__p = *v6;
        v10 = v7;
        v6[0] = 0;
        v6[1] = 0;
        v7 = 0;
        v11 = 0;
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_10127C43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10127C4C4(uint64_t a1)
{
  v2 = *(a1 + 2232);
  if (v2)
  {
    *(a1 + 2232) = 0;
    (*(*v2 + 8))(v2);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    v13 = kCommCenterPreferencesNoBackupAppID;
    (*(*v11 + 16))(v11, @"OverriddenInexpensiveExpirationTime", 0, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v11 + 48))(v11, v13, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10127C674(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10127C68C(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

uint64_t sub_10127C7B0(capabilities::ct *a1)
{
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  subscriber::makeSimSlotRange();
  v2 = *buf;
  v3 = v21;
  if (*buf != v21)
  {
    v4 = v22;
    do
    {
      if (v22(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v21);
    v5 = v21;
    while (v2 != v5)
    {
      v6 = *v2;
      PersistedLowDataMode_sync = SaveDataModeController::getPersistedLowDataMode_sync(a1, v6);
      v8 = sub_10127CC8C(a1, v6);
      v9 = sub_10127CEF0(a1, v6);
      if ((v8 & 0x100) == 0)
      {
        LOBYTE(v8) = v9;
      }

      v10 = sub_10127D0F0(a1, v6);
      v11 = v10;
      if ((v10 & 0x100) == 0)
      {
        v12 = sub_10127D354(a1, v6);
        v11 = (v12 < 0x100u) | v12;
      }

      rest::SaveDataModePreference::SaveDataModePreference(&v19, PersistedLowDataMode_sync & ((PersistedLowDataMode_sync & 0x100) >> 8), v8 & 1, v11 & 1);
      v13 = v24[0];
      if (!v24[0])
      {
LABEL_16:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 7);
          if (v15 <= v6)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_16;
          }
        }

        if (v15 >= v6)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (v4(*v2) & 1) == 0);
    }
  }

  v16 = sub_10127D7D8(a1 + 200, &v23);
  sub_10127DB08(a1);
  if (v16)
  {
    v17 = *(a1 + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Persisted save data modes restored", buf, 2u);
    }

    sub_10127DF58(a1);
  }

  sub_10006DCAC(&v23, v24[0]);
  return v16;
}

uint64_t SaveDataModeController::getPersistedLowDataMode_sync(uint64_t a1, uint64_t a2)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v22 = 0;
  PersonalityIdFromSlotId();
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
    operator delete(__p[0]);
  }

  else
  {
    *__dst = *__p;
    v22 = v20;
  }

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
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
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
        goto LABEL_10;
      }

LABEL_16:
      v17 = (*(*v12 + 184))(v12, __dst);
      v16 = v17;
      v15 = HIBYTE(v17);
      if (v13)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to get low data mode settings", __p, 2u);
  }

  v15 = 0;
  v16 = 0;
  if ((v13 & 1) == 0)
  {
LABEL_17:
    sub_100004A34(v11);
  }

LABEL_18:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  return v16 | (v15 << 8);
}

void sub_10127CC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10127CC8C(uint64_t a1, uint64_t a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    v4 = 0;
    v5 = 0;
    return v5 | (v4 << 8);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v22 = 0;
  PersonalityIdFromSlotId();
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
    operator delete(__p[0]);
  }

  else
  {
    *__dst = *__p;
    v22 = v20;
  }

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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
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
      v15 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_18:
      v17 = (*(*v14 + 200))(v14, __dst);
      v5 = v17;
      v4 = HIBYTE(v17);
      if (v15)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (v14)
  {
    goto LABEL_18;
  }

LABEL_12:
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to get smart data mode settings", __p, 2u);
  }

  v4 = 0;
  v5 = 0;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_19:
  sub_100004A34(v13);
LABEL_20:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  return v5 | (v4 << 8);
}

void sub_10127CEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10127CEF0(uint64_t a1, uint64_t a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    v15 = 0;
    return v15 & 1;
  }

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
        goto LABEL_8;
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
LABEL_8:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Cannot find carrier settings interface", buf, 2u);
    }

    v15 = 0;
    if (v13)
    {
      return v15 & 1;
    }

LABEL_20:
    sub_100004A34(v11);
    return v15 & 1;
  }

LABEL_15:
  v15 = 1;
  (*(*v12 + 96))(buf, v12, a2, 1, @"Enable5GAutoByDefault", 0, 0);
  v16 = *buf;
  v20 = 1;
  if (*buf)
  {
    v17 = CFGetTypeID(*buf);
    if (v17 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v16, v18);
      v15 = v20;
    }

    else
    {
      v15 = 1;
    }
  }

  sub_10000A1EC(buf);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  return v15 & 1;
}

void sub_10127D0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10127D0F0(uint64_t a1, uint64_t a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    v4 = 0;
    v5 = 0;
    return v5 | (v4 << 8);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v22 = 0;
  PersonalityIdFromSlotId();
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
    operator delete(__p[0]);
  }

  else
  {
    *__dst = *__p;
    v22 = v20;
  }

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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
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
      v15 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_18:
      v17 = (*(*v14 + 232))(v14, __dst);
      v5 = v17;
      v4 = HIBYTE(v17);
      if (v15)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (v14)
  {
    goto LABEL_18;
  }

LABEL_12:
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to get interface cost settings", __p, 2u);
  }

  v4 = 0;
  v5 = 0;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_19:
  sub_100004A34(v13);
LABEL_20:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  return v5 | (v4 << 8);
}

void sub_10127D308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10127D354(capabilities::ct *a1, uint64_t a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    v10 = 0;
    v11 = 0;
    return v10 | (v11 << 8);
  }

  v4 = (*(**(a1 + 6) + 16))(*(a1 + 6), a2);
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  PersonalityIdFromSlotId();
  v5 = sub_100007A6C(a1 + 504, __p);
  if ((a1 + 512) == v5)
  {
    goto LABEL_48;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v5 + 72;
  do
  {
    if (*(v6 + 28) >= 15)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 15));
  }

  while (v6);
  if (v7 == v5 + 72 || *(v7 + 28) >= 16)
  {
LABEL_10:
    v8 = *v4;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v10 = 1;
      v11 = 1;
      goto LABEL_49;
    }

    *buf = 0;
    v9 = "#N 5G entitlement state not found";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_13;
  }

  v12 = *(v7 + 32);
  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v8 = *v4;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v9 = "#N 5G entitlement state disabled";
      goto LABEL_12;
    }

    v27 = *v4;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N 5G entitlement state not allowed", buf, 2u);
    }

LABEL_48:
    v10 = 0;
    v11 = 0;
    goto LABEL_49;
  }

  v15 = *(v5 + 96);
  v13 = v5 + 96;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v13;
  do
  {
    if (*(v14 + 32) >= 15)
    {
      v16 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 32) < 15));
  }

  while (v14);
  if (v16 == v13 || *(v16 + 32) > 15)
  {
    goto LABEL_13;
  }

  v17 = *(v16 + 40);
  v18 = *(v16 + 48);
  if (v17 == v18)
  {
LABEL_58:
    v8 = *v4;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "#N No 5G plan found";
    goto LABEL_12;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    while (1)
    {
      if (*(v17 + 4) == 1)
      {
        if (*v17 == 1)
        {
          v21 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I 5G unmetered plan found", buf, 2u);
          }

          v22 = 1;
        }

        else if (*(v17 + 16) == 1)
        {
          v25 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(v17 + 12);
            *buf = 67109120;
            LODWORD(v34) = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I 5G metered plan with volume cap of %d GB found", buf, 8u);
          }

          v22 = *(v17 + 12) > 99;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_44;
      }

      if (*(v17 + 9) != 1)
      {
        break;
      }

      v23 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v24 = CSIBOOLAsString(*(v17 + 8));
        *buf = 136315138;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I 5G plan with 5G experience '%s' found", buf, 0xCu);
      }

      v22 = *(v17 + 8);
LABEL_44:
      v20 = v19 & v20 | v22;
      v17 += 64;
      v19 = 1;
      if (v17 == v18)
      {
        goto LABEL_53;
      }
    }

    v17 += 64;
  }

  while (v17 != v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_53:
  v29 = *v4;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = "disabled";
    if (v20)
    {
      v30 = "enabled";
    }

    *buf = 136315138;
    v34 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N HDM is %s by 5G plan", buf, 0xCu);
  }

  v11 = 1;
  v10 = (v20 & 1) == 0;
LABEL_49:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  return v10 | (v11 << 8);
}

void sub_10127D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10127D7D8(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == a2[2])
  {
    v4 = *(a1 + 32);
    v5 = (a1 + 40);
    if (v4 == (a1 + 40))
    {
      return 0;
    }

    v6 = *a2;
    while (*(v4 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  if ((a1 + 32) != a2)
  {
    v15 = *a2;
    v13 = a2 + 1;
    v14 = v15;
    if (*(a1 + 48) && ((v17 = (a1 + 40), v16 = *(a1 + 40), v18 = *(a1 + 32), *(a1 + 32) = a1 + 40, *(v16 + 16) = 0, *(a1 + 40) = 0, *(a1 + 48) = 0, *(v18 + 8)) ? (v19 = *(v18 + 8)) : (v19 = v18), v19))
    {
      v20 = sub_1000685CC(v19);
      if (v14 == v13)
      {
        v21 = v19;
        v28 = v14;
      }

      else
      {
        do
        {
          v21 = v20;
          v22 = *(v14 + 7);
          *(v19 + 28) = v22;
          v23 = *(v14 + 16);
          *(v19 + 34) = *(v14 + 34);
          *(v19 + 32) = v23;
          v24 = *v17;
          v25 = (a1 + 40);
          v26 = (a1 + 40);
          if (*v17)
          {
            do
            {
              while (1)
              {
                v25 = v24;
                if (v22 >= *(v24 + 7))
                {
                  break;
                }

                v24 = *v24;
                v26 = v25;
                if (!*v25)
                {
                  goto LABEL_31;
                }
              }

              v24 = v24[1];
            }

            while (v24);
            v26 = v25 + 1;
          }

LABEL_31:
          sub_1000070DC((a1 + 32), v25, v26, v19);
          if (v20)
          {
            v20 = sub_1000685CC(v20);
          }

          else
          {
            v20 = 0;
          }

          v27 = v14[1];
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
              v28 = v14[2];
              v9 = *v28 == v14;
              v14 = v28;
            }

            while (!v9);
          }

          if (!v21)
          {
            break;
          }

          v19 = v21;
          v14 = v28;
        }

        while (v28 != v13);
      }

      sub_10006DCAC(a1 + 32, v21);
      if (v20)
      {
        for (i = v20[2]; i; i = i[2])
        {
          v20 = i;
        }

        sub_10006DCAC(a1 + 32, v20);
      }
    }

    else
    {
      v28 = v14;
    }

    if (v28 != v13)
    {
      operator new();
    }
  }

  v30 = *(a1 + 24);
  if (v30)
  {
    (*(*v30 + 48))(v30, a1 + 32);
  }

  return 1;
}

void sub_10127DB08(uint64_t a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    v24 = *(a1 + 88);
    v33 = v24;
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    subscriber::makeSimSlotRange();
    v2 = v27;
    v3 = v28;
    if (v27 != v28)
    {
      v4 = v29;
      do
      {
        if (v29(*v2))
        {
          break;
        }

        ++v2;
      }

      while (v2 != v28);
      v5 = v28;
      while (v2 != v5)
      {
        v6 = *v2;
        if (*v2 == v24)
        {
          sub_10000501C(v25, "");
          sub_10127F980(buf, a1, v25);
          sub_101280704(a1, buf, 0);
          if (v36 < 0)
          {
            operator delete(*&v35[4]);
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }

        v7 = v31;
        if (!v31)
        {
LABEL_19:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v8 = v7;
            v9 = *(v7 + 7);
            if (v9 <= v6)
            {
              break;
            }

            v7 = *v8;
            if (!*v8)
            {
              goto LABEL_19;
            }
          }

          if (v9 >= v6)
          {
            break;
          }

          v7 = v8[1];
          if (!v7)
          {
            goto LABEL_19;
          }
        }

        do
        {
          ++v2;
        }

        while (v2 != v3 && (v4(*v2) & 1) == 0);
      }
    }

    if (*(a1 + 304) == v32)
    {
      v10 = *(a1 + 288);
      if (v10 == (a1 + 296))
      {
        goto LABEL_56;
      }

      v11 = v30;
      while (1)
      {
        v12 = *(v10 + 7) == *(v11 + 7) && *(v10 + 32) == *(v11 + 32);
        if (!v12)
        {
          break;
        }

        v13 = v10[1];
        v14 = v10;
        if (v13)
        {
          do
          {
            v10 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v10 = v14[2];
            v12 = *v10 == v14;
            v14 = v10;
          }

          while (!v12);
        }

        v15 = v11[1];
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
            v16 = v11[2];
            v12 = *v16 == v11;
            v11 = v16;
          }

          while (!v12);
        }

        v11 = v16;
        if (v10 == (a1 + 296))
        {
          goto LABEL_56;
        }
      }
    }

    if ((a1 + 288) != &v30)
    {
      sub_10062AA68((a1 + 288), v30, &v31);
    }

    v17 = *(a1 + 280);
    if (v17)
    {
      (*(*v17 + 48))(v17, a1 + 288);
    }

    if (subscriber::isValidSimSlot())
    {
      v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (*sub_1000A8C4C(&v30, &v33))
        {
          v19 = "'expensive'";
        }

        else
        {
          v19 = "'cheap'";
        }

        *buf = 136315138;
        *v35 = v19;
        v20 = "#I Potential interface cost expensive changed to %s";
        v21 = v18;
        v22 = 12;
        goto LABEL_55;
      }
    }

    else
    {
      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "#I Potential interface cost expensive changed";
        v21 = v23;
        v22 = 2;
LABEL_55:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }

LABEL_56:
    sub_10006DCAC(&v30, v31);
  }
}

void sub_10127DF58(uint64_t a1)
{
  v2 = *(a1 + 232);
  v3 = (a1 + 240);
  if (v2 != (a1 + 240))
  {
    v4 = &_mh_execute_header;
    do
    {
      v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 7));
      v6 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = rest::asString((v2 + 4), v7);
        *buf = 136315138;
        v28 = v8;
        _os_log_impl(v4, v6, OS_LOG_TYPE_DEFAULT, "#I Save data mode: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        PersistedLowDataMode_sync = SaveDataModeController::getPersistedLowDataMode_sync(a1, *(v2 + 7));
        if (PersistedLowDataMode_sync)
        {
          v10 = "enabled";
        }

        else
        {
          v10 = "disabled";
        }

        if ((PersistedLowDataMode_sync & 0x100) != 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = "undefined";
        }

        v12 = sub_10127CC8C(a1, *(v2 + 7));
        if (v12)
        {
          v13 = "enabled";
        }

        else
        {
          v13 = "disabled";
        }

        v14 = v4;
        if ((v12 & 0x100) != 0)
        {
          v15 = v13;
        }

        else
        {
          v15 = "undefined";
        }

        v16 = sub_10127D0F0(a1, *(v2 + 7));
        v17 = "'cheap'";
        if (v16)
        {
          v17 = "'expensive'";
        }

        *buf = 136315650;
        v28 = v11;
        if ((v16 & 0x100) == 0)
        {
          v17 = "'undefined'";
        }

        v29 = 2080;
        v30 = v15;
        v4 = v14;
        v31 = 2080;
        v32 = v17;
        _os_log_impl(v14, v6, OS_LOG_TYPE_DEFAULT, "#I Persisted values: LDM=%s, SDM=%s, IC=%s", buf, 0x20u);
      }

      v18 = v2[1];
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
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }

  v21 = *(a1 + 288);
  if (v21 != (a1 + 296))
  {
    do
    {
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v21 + 7));
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v21 + 32))
        {
          v23 = "'expensive'";
        }

        else
        {
          v23 = "'cheap'";
        }

        *buf = 136315138;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Potential interface cost expensive: %s", buf, 0xCu);
      }

      v24 = v21[1];
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
          v25 = v21[2];
          v20 = *v25 == v21;
          v21 = v25;
        }

        while (!v20);
      }

      v21 = v25;
    }

    while (v25 != (a1 + 296));
  }

  if (*(a1 + 2232))
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Overridden interface cost timer was scheduled", buf, 2u);
    }
  }
}

uint64_t sub_10127E2B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v30 = a2;
  if (subscriber::isValidSimSlot())
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
    PersistedLowDataMode_sync = SaveDataModeController::getPersistedLowDataMode_sync(a1, v4);
    if (BYTE1(a3) == (PersistedLowDataMode_sync & 0xFF00) >> 8 && ((a3 >> 8) & 1) != 0)
    {
      if (a3 != PersistedLowDataMode_sync)
      {
        goto LABEL_5;
      }
    }

    else if (BYTE1(a3) != (PersistedLowDataMode_sync & 0xFF00) >> 8)
    {
LABEL_5:
      v8 = *v6;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "disabled";
        if (a3)
        {
          v9 = "enabled";
        }

        if ((a3 & 0x100) == 0)
        {
          v9 = "undefined";
        }

        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Low data mode settings changed to %s", buf, 0xCu);
      }

      v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      memset(buf, 0, sizeof(buf));
      PersonalityIdFromSlotId();
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
        operator delete(__p[0]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v32;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v16 = ServiceMap;
      if (v17 < 0)
      {
        v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
        v19 = 5381;
        do
        {
          v17 = v19;
          v20 = *v18++;
          v19 = (33 * v19) ^ v20;
        }

        while (v20);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v17;
      v21 = sub_100009510(&v16[1].__m_.__sig, __p);
      if (v21)
      {
        v23 = v21[3];
        v22 = v21[4];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v16);
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v22);
          v24 = 0;
          if (!v23)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v23 = 0;
      }

      std::mutex::unlock(v16);
      v22 = 0;
      v24 = 1;
      if (!v23)
      {
LABEL_29:
        v25 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p[0]) = 0;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to set low data mode settings", __p, 2u);
        }

LABEL_41:
        if ((v24 & 1) == 0)
        {
          sub_100004A34(v22);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v12 = 1;
        LODWORD(v4) = v30;
        goto LABEL_46;
      }

LABEL_33:
      (*(*v23 + 192))(v23, buf, a3);
      v26 = *v10;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = "disabled";
        if (a3)
        {
          v27 = "enabled";
        }

        v28 = a3 & 0x100;
        if ((a3 & 0x100) == 0)
        {
          v27 = "undefined";
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Low data mode settings persisted with value %s", __p, 0xCu);
      }

      else
      {
        v28 = a3 & 0x100;
      }

      (*(**(a1 + 2216) + 24))(*(a1 + 2216), v4, a3 & (v28 != 0));
      goto LABEL_41;
    }

    v12 = 0;
LABEL_46:
    memset(buf, 0, sizeof(buf));
    sub_101288980(buf, (a1 + 232));
    __p[0] = &v30;
    *(sub_101288B0C(buf, v4) + 32) = BYTE1(a3) & a3 & 1;
    if (sub_10127D7D8(a1 + 200, buf))
    {
      sub_10127E7F4(a1, v30);
    }

    sub_10006DCAC(buf, *&buf[8]);
    return v12;
  }

  v11 = *(a1 + 40);
  v12 = 0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "disabled";
    if (a3)
    {
      v13 = "enabled";
    }

    if ((a3 & 0x100) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = "undefined";
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E Ignoring low data mode settings %s for %s", buf, 0x16u);
    return 0;
  }

  return v12;
}

void sub_10127E77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10127E7F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = a2;
    v5 = a1 + 152;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v5 != a1 + 152 && *(v5 + 32) <= a2)
    {
      v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (*(v5 + 64) != 2)
      {
        goto LABEL_20;
      }

      v7 = 600;
      if (v3 == 2)
      {
        v7 = 1408;
      }

      if (*(a1 + v7 + 804))
      {
        v8 = 1;
        goto LABEL_21;
      }

      v9 = *(a1 + 240);
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = a1 + 240;
      do
      {
        if (*(v9 + 28) >= v3)
        {
          v10 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 28) < v3));
      }

      while (v9);
      if (v10 != a1 + 240 && *(v10 + 28) <= v3)
      {
        v8 = *(v10 + 32);
      }

      else
      {
LABEL_20:
        v8 = 0;
      }

LABEL_21:
      __dst[0] = 0;
      __dst[1] = 0;
      v35 = 0;
      if (*(v5 + 63) < 0)
      {
        sub_100005F2C(__dst, *(v5 + 40), *(v5 + 48));
      }

      else
      {
        *__dst = *(v5 + 40);
        v35 = *(v5 + 56);
      }

      v11 = HIBYTE(v35);
      if (v35 >= 0)
      {
        v12 = HIBYTE(v35);
      }

      else
      {
        v12 = __dst[1];
      }

      v13 = *v6;
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        if (v14)
        {
          v16 = "disabled";
          if (v8)
          {
            v16 = "enabled";
          }

          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E No interface name. Failed to set network interface constraint %s", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v14)
      {
        v15 = "disabled";
        if (v8)
        {
          v15 = "enabled";
        }

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Evaluated interface constraint: %s", buf, 0xCu);
        v11 = HIBYTE(v35);
      }

      if (v11 < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v33 = v35;
      }

      v17 = HIBYTE(v33);
      v18 = SHIBYTE(v33);
      if (v33 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
LABEL_58:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_60:
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__dst[0]);
        }

        return;
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "Disable";
        if (v8)
        {
          v20 = "Enable";
        }

        v21 = __p[0];
        if (v18 >= 0)
        {
          v21 = __p;
        }

        *buf = 136315394;
        *&buf[4] = v20;
        v37 = 2080;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s network interface constrained for '%s'", buf, 0x16u);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      *buf = v24;
      v28 = sub_100009510(&v23[1].__m_.__sig, buf);
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
          goto LABEL_56;
        }
      }

      else
      {
        v30 = 0;
      }

      std::mutex::unlock(v23);
      v29 = 0;
      v31 = 1;
LABEL_56:
      (*(*v30 + 16))(v30, __p, v8 & 1);
      if ((v31 & 1) == 0)
      {
        sub_100004A34(v29);
      }

      goto LABEL_58;
    }
  }
}

void sub_10127EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SaveDataModeController::getSmartDataMode_sync(capabilities::ct *a1, int a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 30);
  v5 = (a1 + 240);
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    if (*(v4 + 28) >= a2)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a2));
  }

  while (v4);
  if (v7 != v5 && *(v7 + 7) <= a2)
  {
    v8 = *(v7 + 33);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10127ECC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = a2;
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "disabled";
      if (a3)
      {
        v13 = "enabled";
      }

      if ((a3 & 0x100) != 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = "undefined";
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = subscriber::asString();
      v15 = "#E Ignoring smart data mode settings %s for %s";
      v16 = v12;
      v17 = 22;
      goto LABEL_24;
    }

    return 0;
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if ((capabilities::ct::supports5G(v6) & 1) == 0)
  {
    v18 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "#I Smart data mode not supported";
      v16 = v18;
      v17 = 2;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      return 0;
    }

    return 0;
  }

  v7 = sub_10127CC8C(a1, a2);
  if (a3 >> 8 == HIBYTE(v7) && (a3 & 0x100) != 0)
  {
    if (a3 != v7)
    {
      goto LABEL_6;
    }
  }

  else if (a3 >> 8 != HIBYTE(v7))
  {
LABEL_6:
    v8 = *v6;
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = "disabled";
      if (a3)
      {
        v10 = "enabled";
      }

      if ((a3 & 0x100) == 0)
      {
        v10 = "undefined";
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Smart data mode settings changed to %s", buf, 0xCu);
    }

    if (!capabilities::ct::supports5G(v9))
    {
      goto LABEL_53;
    }

    v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    memset(buf, 0, sizeof(buf));
    PersonalityIdFromSlotId();
    if (SHIBYTE(v42) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      operator delete(__p[0]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v42;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v21 = ServiceMap;
    if (v22 < 0)
    {
      v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v22;
    v26 = sub_100009510(&v21[1].__m_.__sig, __p);
    if (v26)
    {
      v28 = v26[3];
      v27 = v26[4];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21);
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v27);
        v29 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v28 = 0;
    }

    std::mutex::unlock(v21);
    v27 = 0;
    v29 = 1;
LABEL_37:
    if (v28)
    {
      (*(*v28 + 208))(v28, buf, a3);
      v30 = *v11;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = "disabled";
        if (a3)
        {
          v31 = "enabled";
        }

        if ((a3 & 0x100) == 0)
        {
          v31 = "undefined";
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Smart data mode settings persisted with value %s", __p, 0xCu);
      }

      v32 = *(a1 + 2216);
      v33 = sub_10127CEF0(a1, a2);
      if ((a3 & 0x100) != 0)
      {
        v34 = a3;
      }

      else
      {
        v34 = v33;
      }

      (*(*v32 + 32))(v32, a2, v34 & 1);
    }

    else
    {
      v35 = *v11;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to set smart data mode settings", __p, 2u);
        if (v29)
        {
LABEL_51:
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

LABEL_53:
          v19 = 1;
          goto LABEL_54;
        }

LABEL_50:
        sub_100004A34(v27);
        goto LABEL_51;
      }
    }

    if (v29)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v19 = 0;
LABEL_54:
  memset(buf, 0, sizeof(buf));
  sub_101288980(buf, (a1 + 232));
  v36 = sub_10127CEF0(a1, a2);
  __p[0] = &v40;
  v37 = sub_101288B0C(buf, v40);
  if ((a3 >> 8))
  {
    v38 = a3;
  }

  else
  {
    v38 = v36;
  }

  *(v37 + 33) = v38 & 1;
  sub_10127D7D8(a1 + 200, buf);
  sub_10006DCAC(buf, *&buf[8]);
  return v19;
}

void sub_10127F1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SaveDataModeController::getInterfaceCostExpensive_sync(capabilities::ct *a1, int a2)
{
  if (!capabilities::ct::supports5G(a1))
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 30);
  v5 = (a1 + 240);
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    if (*(v4 + 28) >= a2)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a2));
  }

  while (v4);
  if (v7 != v5 && *(v7 + 7) <= a2)
  {
    v8 = *(v7 + 34);
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

  return v8 & 1;
}

void sub_10127F2C4(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v42 = a2;
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = "'cheap'";
    if (a3)
    {
      v11 = "'expensive'";
    }

    if ((a3 & 0x100) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = "'undefined'";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = subscriber::asString();
    v13 = "#E Ignoring interface cost settings %s for %s";
    v14 = v10;
    v15 = 22;
    goto LABEL_18;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if ((capabilities::ct::supports5G(v8) & 1) == 0)
  {
    v16 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v13 = "#I Setting interface cost not supported";
    v14 = v16;
    v15 = 2;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    return;
  }

  v48 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000501C(__p, "");
  sub_10127F980(buf, a1, __p);
  if (SBYTE7(v40) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = sub_10127D0F0(a1, v42);
  if (a3 >> 8 == BYTE1(v9) && (a3 & 0x100) != 0)
  {
    if (a3 == v9)
    {
      goto LABEL_49;
    }
  }

  else if (a3 >> 8 == BYTE1(v9))
  {
    goto LABEL_49;
  }

  if (!a4)
  {
    v19 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Interface expensive settings changed without persisting", __p, 2u);
    }

    goto LABEL_49;
  }

  v17 = v42;
  if (capabilities::ct::supports5G(v9))
  {
    v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), v17);
    __p[0] = 0;
    __p[1] = 0;
    *&v40 = 0;
    PersonalityIdFromSlotId();
    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(__p, *v49, *&v49[8]);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*v49);
      }
    }

    else
    {
      *__p = *v49;
      *&v40 = v50;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v21 = ServiceMap;
    if (v22 < 0)
    {
      v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    std::mutex::lock(ServiceMap);
    *v49 = v22;
    v26 = sub_100009510(&v21[1].__m_.__sig, v49);
    if (v26)
    {
      v28 = v26[3];
      v27 = v26[4];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21);
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v27);
        v29 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v28 = 0;
    }

    std::mutex::unlock(v21);
    v27 = 0;
    v29 = 1;
LABEL_36:
    if (v28)
    {
      (*(*v28 + 240))(v28, __p, a3);
      v30 = *v18;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = "'cheap'";
        if (a3)
        {
          v31 = "'expensive'";
        }

        if ((a3 & 0x100) == 0)
        {
          v31 = "'undefined'";
        }

        *v49 = 136315138;
        *&v49[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Interface expensive settings persisted with value %s", v49, 0xCu);
        if (v29)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v32 = *v18;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v49 = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Could not get cellular usage store to set interface cost settings", v49, 2u);
        if (v29)
        {
LABEL_47:
          if (SBYTE7(v40) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_49;
        }

LABEL_46:
        sub_100004A34(v27);
        goto LABEL_47;
      }
    }

    if (v29)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_49:
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v33 = sub_101288980(v49, (a1 + 232));
  __p[0] = &v42;
  v34 = BYTE1(a3) ^ 1 | a3;
  *(sub_101288B0C(v33, v42) + 34) = v34 & 1;
  if (sub_10127D7D8(a1 + 200, v49))
  {
    v40 = 0u;
    v41 = 0u;
    *__p = 0u;
    sub_10000501C(v43, "");
    sub_10127F980(__p, a1, v43);
    if (v46 < 0)
    {
      operator delete(*v43);
    }

    v35 = buf[0];
    if (buf[0] != LOBYTE(__p[0]))
    {
      v36 = *v8;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = CSIBOOLAsString(v35);
        v38 = CSIBOOLAsString(LOBYTE(__p[0]));
        *v43 = 136315394;
        *&v43[4] = v37;
        v44 = 2080;
        v45 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Interface expensive settings changed from %s -> %s", v43, 0x16u);
      }
    }

    sub_10127FEF8(a1, buf, __p);
    (*(**(a1 + 2216) + 40))(*(a1 + 2216), v42, v34 & 1);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[1]);
    }
  }

  sub_10006DCAC(v49, *&v49[8]);
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_10127F8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10127F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x10127F958);
  }

  JUMPOUT(0x10127F95CLL);
}

void sub_10127F980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v53, *a3, *(a3 + 8));
  }

  else
  {
    *v53 = *a3;
    v54 = *(a3 + 16);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 1;
  sub_10000501C(&__p, "");
  NetworkInterfaceInfo::NetworkInterfaceInfo();
  if (v57 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  v5 = *(a2 + 88);
  *a1 = SaveDataModeController::getInterfaceCostExpensive_sync(a2, v5);
  v7 = a2 + 104;
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = a2 + 104;
  do
  {
    if (*(v6 + 28) >= v5)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < v5));
  }

  while (v6);
  if (v8 == v7 || v5 < *(v8 + 28))
  {
LABEL_13:
    v8 = a2 + 104;
  }

  sub_10000501C(&__p, "/cc/props/in_home_countries_definite");
  v9 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v10 = v57;
  }

  else
  {
    v10 = v56;
  }

  v11 = HIBYTE(v54);
  if (v54 < 0)
  {
    v11 = v53[1];
  }

  if (v10 != v11)
  {
    v14 = 1;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((v57 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v54 >= 0)
  {
    v13 = v53;
  }

  else
  {
    v13 = v53[0];
  }

  v14 = memcmp(p_p, v13, v10) != 0;
  if (v9 < 0)
  {
LABEL_29:
    operator delete(__p);
  }

LABEL_30:
  if (v8 != v7 && v14)
  {
    *(a1 + 1) = *(v8 + 33);
  }

  v17 = a2 + 128;
  v16 = *(a2 + 128);
  if (!v16)
  {
    goto LABEL_42;
  }

  v18 = a2 + 128;
  do
  {
    if (*(v16 + 28) >= v5)
    {
      v18 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 28) < v5));
  }

  while (v16);
  if (v18 == v17 || v5 < *(v18 + 28))
  {
LABEL_42:
    v18 = a2 + 128;
  }

  sub_10000501C(&__p, "/cc/props/data_ui_indicators");
  v19 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v20 = v57;
  }

  else
  {
    v20 = v56;
  }

  v21 = HIBYTE(v54);
  if (v54 < 0)
  {
    v21 = v53[1];
  }

  if (v20 != v21)
  {
    v24 = 1;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if ((v57 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  if (v54 >= 0)
  {
    v23 = v53;
  }

  else
  {
    v23 = v53[0];
  }

  v24 = memcmp(v22, v23, v20) != 0;
  if (v19 < 0)
  {
LABEL_58:
    operator delete(__p);
  }

LABEL_59:
  if (v18 != v17 && v24)
  {
    *(a1 + 4) = *(v18 + 32);
  }

  v27 = a2 + 152;
  v26 = *(a2 + 152);
  if (!v26)
  {
    goto LABEL_71;
  }

  v28 = a2 + 152;
  do
  {
    if (*(v26 + 32) >= v5)
    {
      v28 = v26;
    }

    v26 = *(v26 + 8 * (*(v26 + 32) < v5));
  }

  while (v26);
  if (v28 == v27 || v5 < *(v28 + 32))
  {
LABEL_71:
    v28 = a2 + 152;
  }

  sub_10000501C(&__p, "/cc/props/internal_internet_connection_state");
  v29 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v30 = v57;
  }

  else
  {
    v30 = v56;
  }

  v31 = HIBYTE(v54);
  if (v54 < 0)
  {
    v31 = v53[1];
  }

  if (v30 != v31)
  {
    v34 = 1;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  if ((v57 & 0x80u) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p;
  }

  if (v54 >= 0)
  {
    v33 = v53;
  }

  else
  {
    v33 = v53[0];
  }

  v34 = memcmp(v32, v33, v30) != 0;
  if (v29 < 0)
  {
LABEL_87:
    operator delete(__p);
  }

LABEL_88:
  if (v28 != v27 && v34)
  {
    std::string::operator=((a1 + 8), (v28 + 40));
    v36 = *(v28 + 64);
    *(a1 + 36) = *(v28 + 68);
    *(a1 + 32) = v36;
  }

  sub_10000501C(&__p, "/cc/props/internet_interface_cost");
  v37 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v38 = v57;
  }

  else
  {
    v38 = v56;
  }

  v39 = HIBYTE(v54);
  if (v54 < 0)
  {
    v39 = v53[1];
  }

  if (v38 == v39)
  {
    if ((v57 & 0x80u) == 0)
    {
      v40 = &__p;
    }

    else
    {
      v40 = __p;
    }

    if (v54 >= 0)
    {
      v41 = v53;
    }

    else
    {
      v41 = v53[0];
    }

    v42 = memcmp(v40, v41, v38) != 0;
    if (v37 < 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v42 = 1;
    if (v57 < 0)
    {
LABEL_108:
      operator delete(__p);
    }
  }

  if (v42 && *(a2 + 172) == *(a2 + 88))
  {
    *(a1 + 40) = *(a2 + 168);
  }

  v44 = a2 + 184;
  v43 = *(a2 + 184);
  if (!v43)
  {
    goto LABEL_119;
  }

  v45 = a2 + 184;
  do
  {
    if (*(v43 + 28) >= v5)
    {
      v45 = v43;
    }

    v43 = *(v43 + 8 * (*(v43 + 28) < v5));
  }

  while (v43);
  if (v45 == v44 || v5 < *(v45 + 28))
  {
LABEL_119:
    v45 = a2 + 184;
  }

  sub_10000501C(&__p, "/cc/props/private_network_sims_active");
  v46 = v57;
  if ((v57 & 0x80u) == 0)
  {
    v47 = v57;
  }

  else
  {
    v47 = v56;
  }

  v48 = HIBYTE(v54);
  if (v54 < 0)
  {
    v48 = v53[1];
  }

  if (v47 != v48)
  {
    v51 = 1;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  if ((v57 & 0x80u) == 0)
  {
    v49 = &__p;
  }

  else
  {
    v49 = __p;
  }

  if (v54 >= 0)
  {
    v50 = v53;
  }

  else
  {
    v50 = v53[0];
  }

  v51 = memcmp(v49, v50, v47) != 0;
  if (v46 < 0)
  {
LABEL_135:
    operator delete(__p);
  }

LABEL_136:
  if (v45 != v44 && v51)
  {
    *(a1 + 44) = *(v45 + 32);
  }

  *(a1 + 45) = *(a2 + 2232) != 0;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }
}

void sub_10127FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 31) < 0)
  {
    operator delete(*(v20 + 8));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10127FEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10127DB08(a1);
  v6 = sub_101280704(a1, a2, 1);
  v7 = sub_101280704(a1, a3, 1);
  if (v6 != v7)
  {
    v8 = v7;
    v9 = *(a1 + 152);
    memset(&v30, 0, sizeof(v30));
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 88);
    v11 = a1 + 152;
    do
    {
      if (*(v9 + 32) >= v10)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * (*(v9 + 32) < v10));
    }

    while (v9);
    if (v11 == a1 + 152 || v10 < *(v11 + 32))
    {
      goto LABEL_21;
    }

    std::string::operator=(&v30, (v11 + 40));
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = subscriber::asString();
        v15 = "'cheap'";
        if (v6)
        {
          v16 = "'expensive'";
        }

        else
        {
          v16 = "'cheap'";
        }

        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        if (v8)
        {
          v15 = "'expensive'";
        }

        *&buf[22] = 2080;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Evaluated interface cost for %s changed from %s -> %s", buf, 0x20u);
      }

      __p = v30;
      memset(&v30, 0, sizeof(v30));
      sub_101280258(a1, &__p, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_21:
      v18 = *(a1 + 40);
      v17 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        v19 = "'cheap'";
        if (v8)
        {
          v19 = "'expensive'";
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E No interface name. Failed to set interface cost %s", buf, 0xCu);
      }
    }

    v20 = capabilities::ct::supports5GSlicing(v17);
    if (v20)
    {
      memset(buf, 0, sizeof(buf));
      if (capabilities::ct::supports5GSlicing(v20))
      {
        v21 = *(a1 + 584);
        if (v21)
        {
          v22 = *(a1 + 88);
          v23 = a1 + 584;
          do
          {
            if (*(v21 + 32) >= v22)
            {
              v23 = v21;
            }

            v21 = *(v21 + 8 * (*(v21 + 32) < v22));
          }

          while (v21);
          if (v23 != a1 + 584 && v22 >= *(v23 + 32))
          {
            v24 = *(v23 + 40);
            v25 = (v23 + 48);
            if (v24 != (v23 + 48))
            {
              do
              {
                if (isSlice())
                {
                  sub_101280A08(buf, v24 + 5);
                }

                v26 = v24[1];
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
                  do
                  {
                    v27 = v24[2];
                    v28 = *v27 == v24;
                    v24 = v27;
                  }

                  while (!v28);
                }

                v24 = v27;
              }

              while (v27 != v25);
            }
          }
        }
      }

      sub_1012807CC(a1, a3, buf);
      if (*buf)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }
}

void sub_101280208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101280258(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (!a2[1])
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a2;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = *a2;
    }

    v9 = "'cheap'";
    if (a3)
    {
      v9 = "'expensive'";
    }

    *v20 = 136315394;
    *&v20[4] = v8;
    v21 = 2080;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Setting interface cost for %s to %s", v20, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  *v20 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, v20);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_19:
  (*(*v18 + 40))(v18, a2, a3);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_101280430(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SaveDataModeController::isHighDataModeSupported_sync(uint64_t a1, uint64_t a2)
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
  cf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &cf);
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
        goto LABEL_19;
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
    goto LABEL_19;
  }

LABEL_10:
  if (!(*(*v12 + 16))(v12))
  {
    goto LABEL_19;
  }

  v14 = Registry::getServiceMap(*(a1 + 56));
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
  cf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &cf);
  if (!v20)
  {
    std::mutex::unlock(v15);
    goto LABEL_19;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    std::mutex::unlock(v15);
    if (v22)
    {
      goto LABEL_24;
    }

LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  if (!v22)
  {
    v23 = 0;
LABEL_29:
    sub_100004A34(v21);
    goto LABEL_20;
  }

LABEL_24:
  v23 = 1;
  (*(*v22 + 96))(&cf, v22, a2, 1, @"ShowHighDataModeSwitch", 0, 0);
  v25 = cf;
  v28 = 1;
  if (cf)
  {
    v26 = CFGetTypeID(cf);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v28, v25, v27);
      v23 = v28;
    }

    else
    {
      v23 = 1;
    }
  }

  sub_10000A1EC(&cf);
  if (v21)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v23 & 1;
}

void sub_1012806BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101280704(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && *(a2 + 32) != 2)
  {
    return 1;
  }

  v6 = *(a1 + 88);
  (*(**(a1 + 48) + 16))(*(a1 + 48), v6);
  if (*(a2 + 40) == 2 || (*(a2 + 44) & 1) != 0 || (*(a2 + 45) & 1) != 0)
  {
    return 0;
  }

  if ((*a2 & 1) != 0 || *(a2 + 1) != 1 || !SaveDataModeController::isHighDataModeSupported_sync(a1, v6))
  {
    return 1;
  }

  return DataUtils::is5gOrBetterIndicator(*(a2 + 4), v7) ^ 1;
}

void sub_1012807CC(uint64_t a1, uint64_t a2, int **a3)
{
  v5 = sub_101280704(a1, a2, 0);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = v5;
    do
    {
      if ((*v6 & 0x80000000) == 0)
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
        CSIPDPManager::getInterfaceNameById();
        v9 = HIBYTE(v19);
        v10 = SHIBYTE(v19);
        if (v19 < 0)
        {
          v9 = __p[1];
        }

        if (v9)
        {
          if ((v6[1] - 3) < 0xFFFFFFFE)
          {
            v11 = 1;
          }

          else
          {
            v11 = v8;
          }

          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = __p[0];
            v14 = asStringBool(v11);
            *buf = 136315394;
            v15 = __p;
            if (v10 < 0)
            {
              v15 = v13;
            }

            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Slice interface name: %s (cs), expensive: %s", buf, 0x16u);
            LOBYTE(v10) = HIBYTE(v19);
          }

          if ((v10 & 0x80) != 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v19;
          }

          sub_101280258(a1, buf, v11);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v16 = *(a1 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v6;
            *buf = 67109120;
            *&buf[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E No slice interface name for pdp %d (cs)", buf, 8u);
          }
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 += 12;
    }

    while (v6 != v7);
  }
}

void sub_1012809D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101280A08(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = v3 - *a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4) + 1;
    if (v10 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      sub_100013D10();
    }

    v13 = (16 * (v9 >> 4));
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v13[2] = a2[2];
    v7 = v13 + 3;
    v15 = v13 - v9;
    memcpy(v13 - v9, v8, v9);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = v3 + 3;
  }

  *(a1 + 8) = v7;
}

void sub_101280B3C(uint64_t a1, uint64_t a2)
{
  if (capabilities::ct::supports5GSlicing(a1))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v4 = *(a1 + 584);
    if (v4)
    {
      v5 = *(a1 + 88);
      v6 = a1 + 584;
      do
      {
        if (*(v4 + 32) >= v5)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v5));
      }

      while (v4);
      if (v6 != a1 + 584 && v5 >= *(v6 + 32))
      {
        v9 = *(a2 + 8);
        v8 = a2 + 8;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = v8;
        do
        {
          if (*(v7 + 32) >= v5)
          {
            v10 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v5));
        }

        while (v7);
        if (v10 != v8 && v5 >= *(v10 + 32))
        {
          v16 = *(v6 + 40);
          v17 = (v6 + 48);
          if (v16 != (v6 + 48))
          {
            v18 = (v10 + 48);
            do
            {
              if (isSlice())
              {
                v19 = *v18;
                if (!*v18)
                {
                  goto LABEL_61;
                }

                v20 = *(v16 + 8);
                v21 = v18;
                do
                {
                  if (*(v19 + 32) >= v20)
                  {
                    v21 = v19;
                  }

                  v19 = *(v19 + 8 * (*(v19 + 32) < v20));
                }

                while (v19);
                if (v21 == v18 || v20 < *(v21 + 8) || *(v21 + 10) != *(v16 + 10) || *(v21 + 11) != *(v16 + 11))
                {
                  goto LABEL_61;
                }

                v22 = v21 + 7;
                v23 = 6;
                do
                {
                  v24 = *(v22 - 2) == LODWORD(v16[v23]) && *v22 == v16[v23 + 1];
                  v25 = v24;
                  if (!v24)
                  {
                    break;
                  }

                  v22 += 2;
                  v24 = v23 == 8;
                  v23 += 2;
                }

                while (!v24);
                if (!v25 || *(v21 + 80) != *(v16 + 80) || *(v21 + 21) != *(v16 + 21))
                {
LABEL_61:
                  sub_101280A08(&v33, v16 + 5);
                }
              }

              v26 = v16[1];
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
                do
                {
                  v27 = v16[2];
                  v24 = *v27 == v16;
                  v16 = v27;
                }

                while (!v24);
              }

              v16 = v27;
            }

            while (v27 != v17);
          }
        }

        else
        {
LABEL_16:
          v11 = *(v6 + 40);
          v12 = (v6 + 48);
          if (v11 != (v6 + 48))
          {
            do
            {
              if (isSlice())
              {
                sub_101280A08(&v33, v11 + 5);
              }

              v13 = v11[1];
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
                  v14 = v11[2];
                  v24 = *v14 == v11;
                  v11 = v14;
                }

                while (!v24);
              }

              v11 = v14;
            }

            while (v14 != v12);
          }
        }
      }

      v15 = v33;
    }

    else
    {
      v15 = 0;
    }

    if (v15 != v34)
    {
      v31 = 0u;
      v32 = 0u;
      *v30 = 0u;
      sub_10000501C(__p, "");
      sub_10127F980(v30, a1, __p);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1012807CC(a1, v30, &v33);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[1]);
      }
    }

    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_101280E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_101280E4C(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 112))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 96);
    while (*(v5 + 7) == *(v6 + 7) && InHomeCountryStatus::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v24 = *(a1 + 88);
  sub_1001FAFB0(&v25, a2);
  v12 = *(a1 + 96);
  if (v12 != (a1 + 104))
  {
    v13 = a2 + 1;
    while (1)
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_29;
      }

      v16 = a2 + 1;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 7))
      {
        goto LABEL_29;
      }

      if ((InHomeCountryStatus::operator==() & 1) == 0)
      {
        break;
      }

LABEL_50:
      v22 = v12[1];
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
          v23 = v12[2];
          v9 = *v23 == v12;
          v12 = v23;
        }

        while (!v9);
      }

      v12 = v23;
      if (v23 == (a1 + 104))
      {
        goto LABEL_56;
      }
    }

    v15 = *(v12 + 7);
LABEL_29:
    if (v24 == v15)
    {
      v31 = 0u;
      v32 = 0u;
      *v30 = 0u;
      sub_10000501C(__p, "");
      sub_10127F980(v30, a1, __p);
      if (SBYTE7(v28) < 0)
      {
        operator delete(__p[0]);
      }

      v28 = 0u;
      v29 = 0u;
      *__p = 0u;
      sub_10000501C(buf, "/cc/props/in_home_countries_definite");
      sub_10127F980(__p, a1, buf);
      if (v36 < 0)
      {
        operator delete(*buf);
      }

      v17 = v26[0];
      if (v26[0])
      {
        v18 = v26;
        do
        {
          if (*(v17 + 7) >= v15)
          {
            v18 = v17;
          }

          v17 = v17[*(v17 + 7) < v15];
        }

        while (v17);
        if (v18 != v26 && *(v18 + 7) <= v15)
        {
          BYTE1(__p[0]) = *(v18 + 33);
        }
      }

      if (BYTE1(__p[0]) != BYTE1(v30[0]))
      {
        v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CSIBOOLAsString(BYTE1(__p[0]));
          v21 = CSIBOOLAsString(BYTE1(v30[0]));
          *buf = 136315394;
          *&buf[4] = v20;
          v34 = 2080;
          v35 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I InHomeCountry changed from %s -> %s", buf, 0x16u);
        }

        sub_10127FEF8(a1, __p, v30);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[1]);
      }
    }

    goto LABEL_50;
  }

LABEL_56:
  sub_10006DCAC(&v25, v26[0]);
}

void sub_101281278(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 136))
  {
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v5 = *(a1 + 120);
    while (1)
    {
      v6 = *(v4 + 7) == *(v5 + 7) && *(v4 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v6 = *v4 == v8;
          v8 = v4;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v4 == a2 + 1)
      {
        return;
      }
    }
  }

  v24 = *(a1 + 88);
  sub_100B92358(&v25, a2);
  v11 = *(a1 + 120);
  if (v11 != (a1 + 128))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v11 + 7);
      if (!*v12)
      {
        goto LABEL_31;
      }

      v15 = a2 + 1;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 == v12 || v14 < *(v15 + 7) || *(v15 + 8) != *(v11 + 8))
      {
LABEL_31:
        if (v24 == v14)
        {
          v31 = 0u;
          v32 = 0u;
          *v30 = 0u;
          sub_10000501C(__p, "");
          sub_10127F980(v30, a1, __p);
          if (SBYTE7(v28) < 0)
          {
            operator delete(__p[0]);
          }

          v28 = 0u;
          v29 = 0u;
          *__p = 0u;
          sub_10000501C(buf, "/cc/props/data_ui_indicators");
          sub_10127F980(__p, a1, buf);
          if (v36 < 0)
          {
            operator delete(*buf);
          }

          v16 = v26[0];
          if (v26[0])
          {
            v17 = v26;
            do
            {
              if (*(v16 + 7) >= v14)
              {
                v17 = v16;
              }

              v16 = v16[*(v16 + 7) < v14];
            }

            while (v16);
            if (v17 != v26 && *(v17 + 7) <= v14)
            {
              HIDWORD(__p[0]) = *(v17 + 8);
            }
          }

          if (HIDWORD(__p[0]) != HIDWORD(v30[0]))
          {
            v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = asString();
              v20 = asString();
              *buf = 136315394;
              *&buf[4] = v19;
              v34 = 2080;
              v35 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Indicator changed from %s -> %s", buf, 0x16u);
            }

            sub_10127FEF8(a1, __p, v30);
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[1]);
          }
        }
      }

      v21 = v11[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v11[2];
          v6 = *v22 == v11;
          v11 = v22;
        }

        while (!v6);
      }

      v11 = v22;
    }

    while (v22 != (a1 + 128));
  }

  sub_10006DCAC(&v25, v26[0]);
}

void sub_101281694(uint64_t a1, void *a2)
{
  v4 = *a2;
  if (a2[2] == *(a1 + 160))
  {
    v5 = a2 + 1;
    if (v4 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 144);
    while (*(v4 + 8) == *(v6 + 8) && operator==())
    {
      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v4 == v5)
      {
        return;
      }
    }

    v4 = *a2;
  }

  v26 = *(a1 + 88);
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v12 = a2 + 1;
  if (v4 != a2 + 1)
  {
    if (v27 != v28)
    {
      v13 = v28;
      do
      {
        v14 = v13[2];
        v9 = *v14 == v13;
        v13 = v14;
      }

      while (v9);
    }

    operator new();
  }

  v15 = *(a1 + 144);
  if (v15 != (a1 + 152))
  {
    while (1)
    {
      v16 = *v12;
      if (!*v12)
      {
        break;
      }

      v17 = *(v15 + 8);
      v18 = v12;
      do
      {
        if (*(v16 + 32) >= v17)
        {
          v18 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < v17));
      }

      while (v16);
      if (v18 == v12 || v17 < *(v18 + 8))
      {
        goto LABEL_34;
      }

      if ((operator==() & 1) == 0)
      {
        break;
      }

LABEL_56:
      v24 = v15[1];
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
          v25 = v15[2];
          v9 = *v25 == v15;
          v15 = v25;
        }

        while (!v9);
      }

      v15 = v25;
      if (v25 == (a1 + 152))
      {
        goto LABEL_62;
      }
    }

    v17 = *(v15 + 8);
LABEL_34:
    if (v26 == v17)
    {
      v33 = 0u;
      *v34 = 0u;
      *v32 = 0u;
      sub_10000501C(__p, "");
      sub_10127F980(v32, a1, __p);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__p[0]);
      }

      v30 = 0u;
      v31 = 0u;
      *__p = 0u;
      sub_10000501C(buf, "/cc/props/internal_internet_connection_state");
      sub_10127F980(__p, a1, buf);
      if (v38 < 0)
      {
        operator delete(*buf);
      }

      v19 = v28[0];
      if (v28[0])
      {
        v20 = v28;
        do
        {
          if (*(v19 + 8) >= v17)
          {
            v20 = v19;
          }

          v19 = *&v19[8 * (*(v19 + 8) < v17)];
        }

        while (v19);
        if (v20 != v28 && *(v20 + 8) <= v17)
        {
          std::string::operator=(&__p[1], (v20 + 5));
          LODWORD(v31) = *(v20 + 16);
          WORD2(v31) = *(v20 + 34);
        }
      }

      if (operator!=())
      {
        v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          v23 = CSIBOOLAsString(v34[5]);
          *buf = 136315394;
          *&buf[4] = v22;
          v36 = 2080;
          v37 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Internet connection state changed to %s (default=%s)", buf, 0x16u);
        }

        sub_10127FEF8(a1, __p, v32);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[1]);
      }
    }

    sub_10127E7F4(a1, v17);
    sub_1000471B0(a1, v17);
    goto LABEL_56;
  }

LABEL_62:
  sub_100077CD4(&v27, v28[0]);
}

void sub_101281BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, void *__p, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_100077CD4(v35, a15);
  _Unwind_Resume(a1);
}

void sub_101281C88(uint64_t a1, _DWORD *a2)
{
  if ((rest::operator==() & 1) == 0 && *(a1 + 172) == *(a1 + 88))
  {
    v12 = 0u;
    v13 = 0u;
    *v11 = 0u;
    sub_10000501C(__p, "");
    sub_10127F980(v11, a1, __p);
    if (SBYTE7(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = 0u;
    v10 = 0u;
    *__p = 0u;
    sub_10000501C(buf, "/cc/props/internet_interface_cost");
    sub_10127F980(__p, a1, buf);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }

    DWORD2(v10) = *a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = rest::asString();
      v6 = rest::asString();
      v7 = subscriber::asString();
      *buf = 136315650;
      *&buf[4] = v5;
      v15 = 2080;
      v16 = v6;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Network cost changed from %s -> %s for %s", buf, 0x20u);
    }

    sub_10127FEF8(a1, __p, v11);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }
  }
}

void sub_101281E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_101281E9C(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 192))
  {
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v5 = *(a1 + 176);
    while (1)
    {
      v6 = *(v4 + 7) == *(v5 + 7) && *(v4 + 32) == *(v5 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v6 = *v4 == v8;
          v8 = v4;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v4 == a2 + 1)
      {
        return;
      }
    }
  }

  v24 = *(a1 + 88);
  sub_1000517E4(&v25, a2);
  v11 = *(a1 + 176);
  if (v11 != (a1 + 184))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v11 + 7);
      if (!*v12)
      {
        goto LABEL_31;
      }

      v15 = a2 + 1;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 == v12 || v14 < *(v15 + 7) || *(v15 + 32) != *(v11 + 32))
      {
LABEL_31:
        if (v24 == v14)
        {
          v31 = 0u;
          *v32 = 0u;
          *v30 = 0u;
          sub_10000501C(__p, "");
          sub_10127F980(v30, a1, __p);
          if (SBYTE7(v28) < 0)
          {
            operator delete(__p[0]);
          }

          v28 = 0u;
          *v29 = 0u;
          *__p = 0u;
          sub_10000501C(buf, "/cc/props/private_network_sims_active");
          sub_10127F980(__p, a1, buf);
          if (v36 < 0)
          {
            operator delete(*buf);
          }

          v16 = v26[0];
          if (v26[0])
          {
            v17 = v26;
            do
            {
              if (*(v16 + 7) >= v14)
              {
                v17 = v16;
              }

              v16 = v16[*(v16 + 7) < v14];
            }

            while (v16);
            if (v17 != v26 && *(v17 + 7) <= v14)
            {
              v29[12] = *(v17 + 32);
            }
          }

          if (v29[12] != v32[12])
          {
            v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = CSIBOOLAsString(v29[12]);
              v20 = CSIBOOLAsString(v32[12]);
              *buf = 136315394;
              *&buf[4] = v19;
              v34 = 2080;
              v35 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Private network sim inexpensive changed from %s -> %s", buf, 0x16u);
            }

            sub_10127FEF8(a1, __p, v30);
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[1]);
          }
        }
      }

      v21 = v11[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v11[2];
          v6 = *v22 == v11;
          v11 = v22;
        }

        while (!v6);
      }

      v11 = v22;
    }

    while (v22 != (a1 + 184));
  }

  sub_10006DCAC(&v25, v26[0]);
}

uint64_t sub_1012822C0(capabilities::ct *a1, uint64_t a2)
{
  result = rest::operator==();
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 39);
  if (v5 == (a1 + 320))
  {
    return result;
  }

  v6 = 0;
  v7 = (a2 + 8);
  do
  {
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_11;
    }

    v9 = *(v5 + 8);
    v10 = v7;
    do
    {
      if (*(v8 + 32) >= v9)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < v9));
    }

    while (v8);
    if (v10 != v7 && v9 >= *(v10 + 8))
    {
      result = rest::operator==();
      if ((result & 1) != 0 || *(v5 + 40) - 1 > 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_11:
      if (*(v5 + 40) - 1 >= 3)
      {
        goto LABEL_13;
      }
    }

    v6 = 1;
LABEL_13:
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
        v13 = *v12 == v5;
        v5 = v12;
      }

      while (!v13);
    }

    v5 = v12;
  }

  while (v12 != (a1 + 320));
  if (v6)
  {
    v14 = *(a1 + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Carrier bundles changed. Reloading save data mode settings", v15, 2u);
    }

    return sub_10127C7B0(a1);
  }

  return result;
}

void sub_10128241C(uint64_t a1, uint64_t a2)
{
  if (capabilities::ct::supports5G(a1))
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
    *v30 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, v30);
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
          goto LABEL_8;
        }

        goto LABEL_12;
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
LABEL_8:
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No PersonalityShop", v30, 2u);
      }

LABEL_35:
      if ((v13 & 1) == 0)
      {
        sub_100004A34(v11);
      }

      return;
    }

LABEL_12:
    v15 = SlotIdFromPersonalityId();
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), v15);
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a2 + 23);
      v20 = *a2;
      v19 = *(a2 + 8);
      v21 = asString();
      if ((v18 & 0x80u) == 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = v19;
      }

      if ((v18 & 0x80u) == 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = v20;
      }

      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = "<invalid>";
      }

      *v30 = 136315394;
      *&v30[4] = v24;
      v31 = 2080;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Personality '%s' is %s", v30, 0x16u);
    }

    if (*(a2 + 24) == 1)
    {
      if (sub_10127C7B0(a1))
      {
        v25 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a2 + 23);
          v27 = (v26 & 0x80u) != 0;
          if ((v26 & 0x80u) != 0)
          {
            v26 = *(a2 + 8);
          }

          if (v27)
          {
            v28 = *a2;
          }

          else
          {
            v28 = a2;
          }

          if (v26)
          {
            v29 = v28;
          }

          else
          {
            v29 = "<invalid>";
          }

          *v30 = 136315138;
          *&v30[4] = v29;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Personality '%s' enabled. Save data mode settings reloaded", v30, 0xCu);
        }
      }
    }

    goto LABEL_35;
  }
}

void sub_1012826D0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101282708(uint64_t a1, void *a2)
{
  if (capabilities::ct::supports5G(a1))
  {
    if (a2[2] == *(a1 + 520))
    {
      v4 = *a2;
      if (*a2 == a2 + 1)
      {
        return;
      }

      v5 = *(a1 + 504);
      while (1)
      {
        v6 = *(v4 + 55);
        if (v6 >= 0)
        {
          v7 = *(v4 + 55);
        }

        else
        {
          v7 = v4[5];
        }

        v8 = *(v5 + 55);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = v5[5];
        }

        if (v7 != v8)
        {
          break;
        }

        v10 = v6 >= 0 ? v4 + 4 : v4[4];
        v11 = v9 >= 0 ? v5 + 4 : v5[4];
        if (memcmp(v10, v11, v7) || !sub_1001E3E0C((v4 + 7), (v5 + 7)))
        {
          break;
        }

        v12 = v4[1];
        v13 = v4;
        if (v12)
        {
          do
          {
            v4 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v4 = v13[2];
            v14 = *v4 == v13;
            v13 = v4;
          }

          while (!v14);
        }

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
            v14 = *v16 == v5;
            v5 = v16;
          }

          while (!v14);
        }

        v5 = v16;
        if (v4 == a2 + 1)
        {
          return;
        }
      }
    }

    v17 = *(a1 + 504);
    if (v17 != (a1 + 512))
    {
      do
      {
        v18 = sub_100007A6C(a2, v17 + 4);
        if (a2 + 1 == v18 || (sub_1001E3E0C(v18 + 56, (v17 + 7)) & 1) == 0)
        {
          v19 = SlotIdFromPersonalityId();
          v20 = (*(**(a1 + 48) + 16))(*(a1 + 48), v19);
          if ((sub_10127D0F0(a1, v19) & 0x100) != 0)
          {
            v23 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              v26[0] = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N Ignoring entitlement info as user already configured interface cost", v26, 2u);
            }
          }

          else
          {
            v21 = sub_10127D354(a1, v19);
            if (v21 >= 0x100u)
            {
              v22 = v21;
              if ((v21 & 1) == 0)
              {
                sub_10127E2B8(a1, v19, 0x100uLL);
              }

              sub_10127F2C4(a1, v19, v22, 0);
            }
          }
        }

        v24 = v17[1];
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
            v25 = v17[2];
            v14 = *v25 == v17;
            v17 = v25;
          }

          while (!v14);
        }

        v17 = v25;
      }

      while (v25 != (a1 + 512));
    }
  }
}