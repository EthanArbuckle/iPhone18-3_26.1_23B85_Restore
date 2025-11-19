void sub_100072AA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 72);
      if (v5)
      {
        v6 = *(v1 + 184);
        if (v6 != (v1 + 192))
        {
          do
          {
            if (*(v1 + 208))
            {
              if (*(v6 + 26) != 2)
              {
                goto LABEL_20;
              }

              v7 = *(v1 + 40);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#I Reporting the current service anomaly state", buf, 2u);
              }

              sub_100072868(v1, *(v6 + 25), &cf);
              (*(*v5 + 16))(v5, 2, &cf);
              v8 = cf;
              if (!cf)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v9 = *(v1 + 40);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                v10 = *(v6 + 25);
                v11 = "kOne";
                if (v10 == 1)
                {
                  v11 = "kTwo";
                }

                if (v10 == 2)
                {
                  v12 = "kUnknown";
                }

                else
                {
                  v12 = v11;
                }

                *buf = 136315138;
                v19 = v12;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I Reporting the initial service anomaly state for %s", buf, 0xCu);
              }

              sub_100072D38(&v17);
              (*(*v5 + 16))(v5, 2, &v17);
              v8 = v17;
              if (!v17)
              {
                goto LABEL_20;
              }
            }

            CFRelease(v8);
LABEL_20:
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
                v15 = *v14 == v6;
                v6 = v14;
              }

              while (!v15);
            }

            v6 = v14;
          }

          while (v14 != (v1 + 192));
        }

        *(v1 + 208) = 1;
      }

      sub_100008350(v4);
    }
  }
}

void sub_100072CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100072D38(void *a1@<X8>)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
  }

  CFDictionarySetValue(Mutable, wis::kWISInsightTypeKey, wis::kWISInsightTypeService);
  CFDictionarySetValue(theDict, wis::kWISAnomalyCategoryKey, wis::kWISAnomalyCategoryNetwork);
  CFDictionarySetValue(theDict, wis::kWISInsightStateKey, wis::kWISInsightStateNormal);
  sub_10001DE64(a1, &theDict);
  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_100072E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100057174(va);
  _Unwind_Resume(a1);
}

void sub_100072E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 16))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100072ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, NSObject *a10, __int16 a11, char a12, char a13)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  sub_1001FF5B8(&a10, &a11);
  _Unwind_Resume(a1);
}

void sub_100072EF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_100073034;
        v7[3] = &unk_1002AD150;
        v7[4] = v3;
        v8 = *(a1 + 56);
        sub_1000081C8(&v11, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1000736B4;
        block[3] = &unk_1002AD300;
        block[5] = v11;
        v10 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v10)
        {
          sub_100008350(v10);
        }

        if (v12)
        {
          sub_100008350(v12);
        }
      }

      sub_100008350(v5);
    }
  }
}

uint64_t sub_100073044(uint64_t result, uint64_t a2)
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

void sub_100073060(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100073070(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1000731B0;
        v7[3] = &unk_1002AD1A0;
        v7[4] = v3;
        v8 = *(a1 + 56);
        sub_1000081C8(&v11, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1000736B4;
        block[3] = &unk_1002AD300;
        block[5] = v11;
        v10 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v10)
        {
          sub_100008350(v10);
        }

        if (v12)
        {
          sub_100008350(v12);
        }
      }

      sub_100008350(v5);
    }
  }
}

void sub_100073240(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100073314);
  __cxa_rethrow();
}

void sub_100073280(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000732D4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100073314(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100073340(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_100070C80(*v1);
  sub_100057388(&v4);
  return sub_1000082FC(&v3);
}

void sub_100073384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100057388(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void sub_1000733A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000733A0(a1, *a2);
    sub_1000733A0(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_100073424(uint64_t **a1, std::string *a2, uint64_t a3)
{
  v6 = sub_10000FEF0(a1, &v9, &a2->__r_.__value_.__l.__data_);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  std::string::operator=((a3 + 32), a2);
  sub_10000AC70(a1, v9, v7, a3);
  return a3;
}

uint64_t *sub_1000734A8(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 25);
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

uint64_t *sub_10007357C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10001756C(a1, a2);
  v4 = a2[5];
  a2[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_1000735E0(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_1000736C4(uint64_t result, uint64_t a2)
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

void sub_1000736E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t *sub_1000736F0(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_1000737C4()
{
  if ((byte_1002D47D0 & 1) == 0)
  {
    byte_1002D47D0 = 1;
    return __cxa_atexit(sub_10002340C, &stru_1002D4780, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100073800()
{
  if ((byte_1002D4FE0 & 1) == 0)
  {
    byte_1002D4FE0 = 1;
    return __cxa_atexit(sub_1000607D0, &stru_1002D4F90, &_mh_execute_header);
  }

  return result;
}

void sub_100073C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26)
{
  v34 = v30;
  v32 = *(v31 - 96);

  _Unwind_Resume(a1);
}

void sub_1000744D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, char a13, void *a14, void *a15, void *a16, void *a17, int a18, int a19, void *a20, void *a21, void *a22, void *a23, int a24, int a25, void *a26, void *a27, void *a28, void *a29)
{
  if (a13)
  {
  }

  if (a14)
  {
  }

  if (a19)
  {
  }

  if (a21)
  {
  }

  if (a25)
  {
  }

  if (a26)
  {
  }

  _Unwind_Resume(a1);
}

void *sub_100074A88(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), a4);
  return a1;
}

void sub_100074B20(std::string *a1, xpc_object_t **a2)
{
  std::string::append(a1, "-XPC");
  v3 = *a2;
  if (*a2 && (v4 = *v3) != 0)
  {
    xpc_retain(*v3);
  }

  else
  {
    v4 = xpc_null_create();
    if (!v4)
    {
      xpc_null_create();
      v4 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
  }

  else
  {
    xpc_null_create();
  }

LABEL_9:
  xpc_release(v4);
  operator new();
}

void sub_100074D7C(_Unwind_Exception *a1)
{
  sub_100008350(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100074E08(uint64_t result, uint64_t a2)
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

void sub_100074E9C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100074F70);
  __cxa_rethrow();
}

void sub_100074EDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100074F30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100074F70(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    *(v1 + 64) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = (v1 + 40);
    sub_100075004(&v3);
    ctu::OsLogLogger::~OsLogLogger((v1 + 32));
    sub_100032AD8(v1);
    operator delete();
  }

  return result;
}

void sub_100075004(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100075058(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100075058(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_1000750A4(void **a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }

  v2 = *a1;

  os_release(v2);
}

void sub_10007510C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100075144(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100075184(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

void sub_1000751E0(uint64_t a1)
{
  *a1 = off_1002AD430;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_100075240(uint64_t a1)
{
  *a1 = off_1002AD430;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000752B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_1000752F4(uint64_t a1)
{
  *a1 = off_1002AD490;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_100075354(uint64_t a1)
{
  *a1 = off_1002AD490;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000753C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t sub_100075428(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_10007546C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

void **sub_1000754B4(void **a1)
{
  sub_1000754E8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000754E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_10007553C()
{
  if ((byte_1002D4D68 & 1) == 0)
  {
    byte_1002D4D68 = 1;
    return __cxa_atexit(sub_10004F900, &unk_1002D4D18, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100075578()
{
  if ((byte_1002D4FE0 & 1) == 0)
  {
    byte_1002D4FE0 = 1;
    return __cxa_atexit(sub_1000607D0, &stru_1002D4F90, &_mh_execute_header);
  }

  return result;
}

void sub_100075784(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100075D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100075E1C(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_1002008A0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performDatabaseMaintenance];
}

void sub_100075F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FMCoreData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_100075FD4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [*(a1 + 32) container];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000760B0;
  v4[3] = &unk_1002AD4E8;
  v4[4] = &v5;
  [v1 loadPersistentStoresWithCompletionHandler:v4];

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10007608C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000760B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(qword_1002DBE98 + 136);
  if (v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      sub_100200908(v5, v8, v9, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100200970();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

BOOL sub_1000764D0(void *a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100200A98(a1);
  }

  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  v13 = 0;
  [v2 destroyPersistentStoreAtURL:v4 withType:v3 options:0 error:&v13];
  v5 = v13;
  v6 = *(qword_1002DBE98 + 136);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v7 = a1[5];
      v9 = [v5 localizedDescription];
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Failed to destroy store (%@, %@): %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = a1[4];
    v11 = a1[5];
    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Successfully destroyed store (%@, %@)", buf, 0x16u);
  }

  return v5 == 0;
}

void sub_100076774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100076794(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000767AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"Configuration"];
  v5 = [[NSSortDescriptor alloc] initWithKey:@"version" ascending:0];
  v16 = v5;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  [v4 setSortDescriptors:v6];

  [v4 setFetchLimit:1];
  v15 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v15];
  v8 = v15;
  if (v8)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v8 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200B1C();
    }
  }

  else if ([v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v9 prevValues];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v10 = 0;
      }
    }

    v11 = [v9 values];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = -[FMStoredConfiguration init:prevValues:values:]([FMStoredConfiguration alloc], "init:prevValues:values:", [v9 version], v10, v11);
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100200B60();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100200B94();
  }
}

void sub_100076BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076BFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    *buf = 138412290;
    v41 = v20;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Updating config in DB, old config: %@", buf, 0xCu);
    v4 = *(qword_1002DBE98 + 136);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100200BC8(a1);
  }

  v5 = [NSEntityDescription insertNewObjectForEntityForName:@"Configuration" inManagedObjectContext:v3];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 version] + 1;
  }

  else
  {
    v7 = 0;
  }

  [v5 setVersion:v7];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [*(a1 + 32) values];
  }

  else
  {
    v9 = 0;
  }

  [v5 setPrevValues:v9];
  if (v8)
  {
  }

  [v5 setValues:*(a1 + 40)];
  v37 = 0;
  [v3 save:&v37];
  v10 = v37;
  if (!v10)
  {
    v12 = [NSFetchRequest fetchRequestWithEntityName:@"Configuration"];
    v36 = 0;
    v13 = [v3 countForFetchRequest:v12 error:&v36];
    v14 = v36;
    if (v14)
    {
      v11 = v14;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v11 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100200C84();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_40;
    }

    if (v13 < 0xB)
    {
      v11 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v15 = [NSFetchRequest fetchRequestWithEntityName:@"Configuration"];
    v16 = [[NSSortDescriptor alloc] initWithKey:@"version" ascending:1];
    v39 = v16;
    v17 = [NSArray arrayWithObjects:&v39 count:1];
    [v15 setSortDescriptors:v17];

    [v15 setFetchLimit:v13 - 10];
    v35 = 0;
    v18 = [v3 executeFetchRequest:v15 error:&v35];
    v19 = v35;
    if (v19)
    {
      v11 = v19;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v11 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100200CC8();
      }
    }

    else
    {
      v28 = v15;
      v29 = v12;
      v27 = v18;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v22)
      {
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v31 + 1) + 8 * i);
            v26 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v41 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Deleting Configuration: %@", buf, 0xCu);
            }

            [v3 deleteObject:v25];
          }

          v22 = [v21 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v22);
      }

      v12 = v29;
      v18 = v27;
      v15 = v28;
      v30 = 0;
      [v3 save:&v30];
      v11 = v30;
      if (!v11)
      {
        goto LABEL_39;
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v11 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100200D0C();
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_39:

    goto LABEL_40;
  }

  v11 = v10;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v11 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100200C40();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_41:
}

void sub_1000772A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000786D4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

BOOL sub_1000790DC(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [*(a1 + 32) objectID];
  v5 = v3 == v4;

  return v5;
}

void sub_10007A148(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10007B7E8(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[FMConfiguration sharedInstance];
  v4 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -[v3 OOSAreasDatabaseTimeToLive]);

  v5 = [*(a1 + 32) deleteOutOfServiceAreasOlderThan:v4 WithContext:v8];
  [*(a1 + 32) deleteOutOfServiceDurationsOlderThan:v4 WithContext:v8];
  [*(a1 + 32) sendOnDeviceDBTelemetryEventWithContext:v8 andNumberOfDeletedOOSAreasStale:v5];
  v6 = +[FMConfiguration sharedInstance];
  v7 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -[v6 FMDatabaseEntitiesTimeToLive]);

  [*(a1 + 32) deleteCongestionAreasOlderThan:v7 withContext:v8];
  [*(a1 + 32) deleteCongestionOccurrencesOlderThan:v7 withContext:v8];
  [*(a1 + 32) deleteTSAnomaliesWithContext:v8 olderThan:v7];
  [*(a1 + 32) deleteCellMapNodesAndEdgesOlderThan:v7 withContext:v8];
}

id sub_10007BD48(uint64_t a1)
{
  v13[0] = @"HighestSeenCount";
  v2 = *(a1 + 32);
  if (v2)
  {
    +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 seenCount]);
  }

  else
  {
    +[NSNull null];
  }
  v3 = ;
  v14[0] = v3;
  v13[1] = @"numNextCells";
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(a1 + 32) nextCells];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  }

  else
  {
    v6 = +[NSNull null];
    v5 = v6;
  }

  v14[1] = v6;
  v13[2] = @"NumDeletionsDBEntryStale";
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v14[2] = v7;
  v13[3] = @"NumDeletionsDBMaintenance";
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v14[3] = v8;
  v13[4] = @"NumOOSAreas";
  v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v14[4] = v9;
  v13[5] = @"NumOOSDurations";
  v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v14[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  if (v4)
  {
  }

  return v11;
}

void sub_10007C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C208(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_10007C6E8(void *a1@<X8>)
{
  sub_10007C81C(qword_1002D8330, a1);
  if (!*a1)
  {
    v2 = sub_10007C880();
    std::mutex::lock(v2);
    sub_10007C81C(qword_1002D8330, &v5);
    v3 = v5;
    v5 = 0uLL;
    v4 = a1[1];
    *a1 = v3;
    if (v4)
    {
      sub_100008350(v4);
      if (*(&v5 + 1))
      {
        sub_100008350(*(&v5 + 1));
      }

      if (!*a1)
      {
LABEL_8:
        sub_10007C8B8();
      }
    }

    else if (!v3)
    {
      goto LABEL_8;
    }

    std::mutex::unlock(v2);
  }
}

void sub_10007C7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  std::mutex::unlock(v11);
  v13 = *(v10 + 8);
  if (v13)
  {
    sub_100008350(v13);
  }

  _Unwind_Resume(a1);
}

void sub_10007C81C(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

uint64_t *sub_10007C880()
{
  if ((atomic_load_explicit(&qword_1002D8340, memory_order_acquire) & 1) == 0)
  {
    sub_1002018EC();
  }

  return &qword_1002D8348;
}

void sub_10007CA04(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10007CFB4);
  __cxa_rethrow();
}

void sub_10007CA5C(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void *sub_10007CAC8(void *a1)
{
  v2 = dispatch_queue_create("PRNGenerator", 0);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    a1[4] = 0;
    dispatch_release(v3);
  }

  else
  {
    a1[4] = 0;
  }

  *a1 = &off_1002AD608;
  return a1;
}

uint64_t sub_10007CB40(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10007CE78;
  v5[3] = &unk_1002AD6B0;
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
    v9 = sub_10007CEE0;
    v10 = &unk_1002AD6F0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10007CEA4;
    v10 = &unk_1002AD6D0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_10007CCD0(uint64_t a1)
{
  sub_100032AD8((a1 + 8));

  operator delete();
}

uint64_t sub_10007CD1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_10007CDD8(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_10007CDD8(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_10007CDD8(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_10007CEA4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10007CEE0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_10007CF20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10007CF74(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007CFB4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_10007CFE0(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void sub_10007D1A8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D8388;
  qword_1002D8388 = v1;
}

void sub_10007D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10007D6A0(id a1, __CFString *a2, __CFDictionary *a3)
{
  v4 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100201958(a2, v4);
  }
}

const void **sub_10007D6F0(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_10007D72C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ctServerRadioStateChangedNotification:a2];
}

void sub_10007D790(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ctServerCellularTransmitStateNotification:a2];
}

void sub_10007D85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TelephonyStateRelay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10007D93C(void *a1)
{
  v2 = objc_alloc_init(TelephonyDelegateEntry);
  [(TelephonyDelegateEntry *)v2 setDelegate:a1[4]];
  [(TelephonyDelegateEntry *)v2 setQueue:a1[6]];
  [*(a1[5] + 16) addObject:v2];
}

void sub_10007DA6C(uint64_t a1)
{
  v2 = [*(a1 + 32) findDelegateEntryByDelegate:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 16) removeObject:v2];
  }
}

void sub_10007DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);

  sub_10007DE84(va);
  sub_10007DE84(va1);
  _Unwind_Resume(a1);
}

const void **sub_10007DE40(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **sub_10007DE84(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10007DFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10007DE84(va);
  _Unwind_Resume(a1);
}

void sub_10007EB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) findDelegateEntryByDelegate:*(a1 + 40)];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 80);
    v4 = [v2 queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007EC5C;
    v6[3] = &unk_1002AD7E0;
    v7 = v2;
    v8 = v3;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

void sub_10007EC5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUpdate:0 forKey:14 withState:*(a1 + 40)];
}

void sub_10007ED90(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:"NotSet"];
  v3 = [*(a1 + 32) slotID];
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  v5 = [*(*(a1 + 40) + 48) objectAtIndexedSubscript:v4];

  v2 = v5;
LABEL_6:
  v6 = [NSString stringWithUTF8String:"NotSet"];
  v7 = [v2 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 40) findDelegateEntryByDelegate:*(a1 + 48)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007EF1C;
      block[3] = &unk_1002AD808;
      v12 = v9;
      v13 = *(a1 + 32);
      v14 = v2;
      dispatch_async(v10, block);
    }
  }
}

void sub_10007EF1C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUpdate:*(a1 + 40) forKey:9 withState:*(a1 + 48)];
}

void sub_10007F04C(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:0];
  v3 = [*(a1 + 32) slotID];
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  v5 = [*(*(a1 + 40) + 56) objectAtIndexedSubscript:v4];

  v2 = v5;
LABEL_6:
  v6 = [*(a1 + 40) findDelegateEntryByDelegate:*(a1 + 48)];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007F1A0;
    block[3] = &unk_1002AD808;
    v10 = v7;
    v11 = *(a1 + 32);
    v12 = v2;
    dispatch_async(v8, block);
  }
}

void sub_10007F1A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUpdate:*(a1 + 40) forKey:13 withState:*(a1 + 48)];
}

void sub_10007F2A4(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(*(a1 + 32) + 40)];
  v3 = [*(a1 + 32) findDelegateEntryByDelegate:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007F3A4;
    v6[3] = &unk_1002AD7E0;
    v7 = v4;
    v8 = v2;
    dispatch_async(v5, v6);
  }
}

void sub_10007F3A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUpdate:0 forKey:7 withState:*(a1 + 40)];
}

uint64_t sub_1000802D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = [v3 localSenderIdentityUUID];
    sub_100201E18(v4, v5, &v10);
  }

  if ([v3 service] == 1)
  {
    v6 = [v3 localSenderIdentityUUID];
    v7 = [v6 isEqual:*(a1 + 32)];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000805BC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleUpdate:*(a1 + 40) forKey:*(a1 + 56) withState:*(a1 + 48)];
}

void sub_100080CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  _Block_object_dispose((v27 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100080D7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100080D94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) NSDateToTimeOfDay:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = +[FMConfiguration sharedInstance];
  v7 = [v5 getMinutesSinceMidnightFrom:v4 addingOffset:{-objc_msgSend(v6, "OOSTimeOfDayWindowBackMinutes")}];

  v8 = *(a1 + 32);
  v9 = +[FMConfiguration sharedInstance];
  v10 = [v8 getMinutesSinceMidnightFrom:v4 addingOffset:{objc_msgSend(v9, "OOSTimeOfDayWindowForwardMinutes")}];

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [*(a1 + 32) getLocationOfInterestAt:v11 WithContext:v3];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = [*(a1 + 32) getLocationOfInterestAt:v13 WithContext:v3];
  }

  else
  {
    v14 = 0;
  }

  v48 = [*(a1 + 32) fmServingCellsToExistingServingCellsWithContext:v3 cells:*(a1 + 64)];
  if ((!*(a1 + 48) || v12) && (!v14 ? (v18 = *(a1 + 56) == 0) : (v18 = 1), v18 && v48))
  {
    [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
    v41 = v19 = v14;
    if (!v14)
    {
      v19 = +[NSNull null];
    }

    v45 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"((curVisit == %@) AND (subscriptionID == %@) AND (SUBQUERY(prevCells, $prevCell, $prevCell IN %@).@count == %d))", v19, *(a1 + 72), v48, [v48 count]);
    if (!v14)
    {
    }

    if (v7 >= v10)
    {
      v20 = @"((timeOfDay >= %d) OR (timeOfDay <= %d))";
    }

    else
    {
      v20 = @"((timeOfDay >= %d) AND (timeOfDay <= %d))";
    }

    v17 = v41;
    v46 = [NSPredicate predicateWithFormat:v20, v7, v10];
    v47 = [[NSMutableArray alloc] initWithObjects:{v45, v46, 0}];
    if (v12)
    {
      v21 = [NSPredicate predicateWithFormat:@"(prevVisit == %@)", v12];
      [v47 addObject:v21];
    }

    v43 = [NSCompoundPredicate andPredicateWithSubpredicates:v47];
    [v41 setPredicate:?];
    [v41 setReturnsObjectsAsFaults:0];
    v22 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v43 description];
      *buf = 138412290;
      v56 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSPredictor]:#I Fetching OutOfServiceArea with predicate %@", buf, 0xCu);
    }

    v53 = 0;
    v44 = [v3 executeFetchRequest:v41 error:&v53];
    v24 = v53;
    v25 = *(qword_1002DBE98 + 136);
    v42 = v24;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v42 localizedDescription];
        sub_100201F18(v26, buf, v25);
      }
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = [v44 count];
        *buf = 134217984;
        v56 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSPredictor]:#I Fetch done, %lu unfiltered results", buf, 0xCu);
      }

      v28 = [*(a1 + 32) filterOutOfServiceAreasWithContext:v3 unfilteredOutOfServiceAreas:v44 WithExactPrevCells:v48];
      v40 = [v28 mutableCopy];

      v29 = objc_alloc_init(NSMutableArray);
      v30 = *(*(a1 + 80) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      if ([v40 count])
      {
        if ([v40 count] == 1)
        {
          v32 = *(a1 + 88);
          v33 = [v40 firstObject];
          v34 = [v32 outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:v3 WithOutOfServiceArea:v33 FromTimestamp:*(a1 + 40)];

          if (v34)
          {
            [*(*(*(a1 + 80) + 8) + 40) addObject:v34];
          }
        }

        else
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_100201F70();
          }

          [v40 sortUsingComparator:&stru_1002AD898];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v35 = v40;
          v36 = [v35 countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v36)
          {
            v37 = *v50;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v50 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v39 = [*(a1 + 88) outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:v3 WithOutOfServiceArea:*(*(&v49 + 1) + 8 * i) FromTimestamp:*(a1 + 40)];
                if (v39)
                {
                  [*(*(*(a1 + 80) + 8) + 40) addObject:v39];
                }
              }

              v36 = [v35 countByEnumeratingWithState:&v49 objects:v54 count:16];
            }

            while (v36);
          }
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100201FA4();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100201EE4();
    }

    v15 = objc_alloc_init(NSMutableArray);
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

int64_t sub_100081504(id a1, OutOfServiceArea *a2, OutOfServiceArea *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100201FD8(v11, [(OutOfServiceArea *)v4 seenCount], [(OutOfServiceArea *)v5 seenCount], v6);
  }

  v7 = [(OutOfServiceArea *)v4 seenCount];
  if (v7 == [(OutOfServiceArea *)v5 seenCount])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(OutOfServiceArea *)v4 seenCount];
    if (v9 > [(OutOfServiceArea *)v5 seenCount])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

int64_t sub_100081D10(id a1, OutOfServiceDuration *a2, OutOfServiceDuration *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(OutOfServiceDuration *)v4 seconds];
  if (v6 == [(OutOfServiceDuration *)v5 seconds])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(OutOfServiceDuration *)v4 seconds];
    if (v8 < [(OutOfServiceDuration *)v5 seconds])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

int64_t sub_100081DAC(id a1, ServingCell *a2, ServingCell *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(ServingCell *)v4 lastSeen];
  if (v6)
  {
  }

  else
  {
    v7 = [(ServingCell *)v5 lastSeen];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = [(ServingCell *)v4 lastSeen];

  if (v8)
  {
    v9 = [(ServingCell *)v5 lastSeen];

    if (v9)
    {
      v10 = [(ServingCell *)v4 lastSeen];
      v11 = [(ServingCell *)v5 lastSeen];
      v12 = [v10 isEqualToDate:v11];

      if (v12)
      {
        v7 = 0;
      }

      else
      {
        v13 = [(ServingCell *)v5 lastSeen];
        v14 = [(ServingCell *)v4 lastSeen];
        v7 = [v13 compare:v14];
      }
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

uint64_t sub_100081F28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 seenCount];
  if (v7 == [v6 seenCount])
  {
    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [v5 seenCount];
    if (v9 > [v6 seenCount])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

uint64_t sub_1000821AC(uint64_t a1, xpc_object_t *a2)
{
  *a1 = off_1002AD998;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    v11 = a2;
    v12 = "WISMessageType";
    sub_100007DA4(&v11, &object);
    v5 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    if (v5 == 1)
    {
      v11 = a2;
      v12 = "WISMessageDeviceConfigurationId";
      sub_100007DA4(&v11, &object);
      *(a1 + 8) = xpc::dyn_cast_or_default(&object, 0, v6);
      xpc_release(object);
      v11 = a2;
      v12 = "WISMessageComponentId";
      sub_100007DA4(&v11, &object);
      *(a1 + 12) = xpc::dyn_cast_or_default(&object, 0, v7);
      xpc_release(object);
      v11 = a2;
      v12 = "WISMessagePid";
      sub_100007DA4(&v11, &object);
      *(a1 + 16) = xpc::dyn_cast_or_default(&object, 0, v8);
      xpc_release(object);
      v11 = a2;
      v12 = "WISMessageNeedsConfiguration";
      sub_100007DA4(&v11, &object);
      *(a1 + 20) = xpc::dyn_cast_or_default(&object, 0, v9);
      xpc_release(object);
    }
  }

  return a1;
}

void sub_1000823AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(1);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageType";
  sub_10000F50C(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = xpc_int64_create(*(a1 + 8));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageDeviceConfigurationId";
  sub_10000F50C(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_int64_create(*(a1 + 12));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageComponentId";
  sub_10000F50C(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(a1 + 16));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessagePid";
  sub_10000F50C(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = xpc_BOOL_create(*(a1 + 20));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageNeedsConfiguration";
  sub_10000F50C(&v15, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

uint64_t sub_100082658@<X0>(void *a1@<X8>)
{
  result = static xpc_event_publisher_action_t.remove.getter();
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_100082934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v17 = *(v15 + 8);
  if (v17)
  {
    sub_100008350(v17);
  }

  sub_100008350(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1000829EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100082A08(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100082A18(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), a4);
  return a1;
}

void *sub_100082AB0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100008350(v2);
  }

  sub_1000835C4(a1 + 56, *(a1 + 64));
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_100032AD8(a1);
}

void sub_100082B34(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v6, a1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100082CD4;
  v5[3] = &unk_1002AB568;
  v5[4] = a1;
  sub_100082BE8(a3, &v6, v5);
  if (v7)
  {
    sub_100008350(v7);
  }
}

void sub_100082BD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100082BE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100083640;
  v9[3] = &unk_1002ADB40;
  v7 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5;
  v10 = v8;
  sub_100160E88(a1, (v7 + 16), v9);

  if (v12)
  {
    sub_100008350(v12);
  }
}

void sub_100082CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100082CD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  [**(v1 + 80) prepareForShutdown];
  v3 = *(v1 + 88);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  if (v3)
  {
    sub_100008350(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100082D2C(void *a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1000081C8(&v6, a1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100082DE4;
    v5[3] = &unk_1002AB568;
    v5[4] = a1;
    sub_100082BE8(a3, &v6, v5);
    if (v7)
    {
      sub_100008350(v7);
    }
  }
}

void sub_100082DCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100082DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  sub_1000081C8(&v6, v1);
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008350(v3);
    v4 = **(v1 + 80);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = **(v1 + 80);
  }

  v8 = 0;
  operator new();
}

void sub_100082FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083138(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002ADA08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id *sub_100083198(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = a1[1];
  a1[1] = 0;

  return a1;
}

void sub_10008325C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100083330);
  __cxa_rethrow();
}

void sub_10008329C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000832F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083330(uint64_t result)
{
  if (result)
  {
    sub_100082AB0(result);

    operator delete();
  }

  return result;
}

void sub_100083370(void *a1, void *a2)
{
  v3 = a2;
  sub_1000081C8(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10008344C;
  block[3] = &unk_1002ADAB0;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100008350(v9);
  }

  if (v11)
  {
    sub_100008350(v11);
  }
}

uint64_t sub_10008345C(uint64_t result, uint64_t a2)
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

void sub_100083478(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100083488(void *a1)
{
  *a1 = off_1002ADAF0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000834D4(void *a1)
{
  *a1 = off_1002ADAF0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10008356C@<X0>(void *a1@<X8>)
{
  v2 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_1000835C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000835C4(a1, *a2);
    sub_1000835C4(a1, a2[1]);
    v4 = a2[10];
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = a2[10];
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    v6 = a2[7];
    if (v6)
    {
      a2[8] = v6;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

void sub_100083640(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_10008369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000836C0(uint64_t result, uint64_t a2)
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

void sub_1000836DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000836EC(void *a1)
{
  *a1 = off_1002ADB80;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100083738(void *a1)
{
  *a1 = off_1002ADB80;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100083818(uint64_t result, uint64_t a2)
{
  *a2 = off_1002ADB80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100083858(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100083868(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1000838A8(void *a1, char *a2)
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
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000839A8;
        v8[3] = &unk_1002ADBF0;
        v8[4] = v5;
        v9 = v4;
        sub_100083370(v5, v8);
      }

      sub_100008350(v7);
    }
  }
}

uint64_t sub_10008395C(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002ADC10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000839A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 41) = v2;
  v3 = *(v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "loc:#I Location auth status update call back with %d", v6, 8u);
  }

  pthread_mutex_lock(&stru_1002D4780);
  v4 = xmmword_1002D47C0;
  if (*(&xmmword_1002D47C0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D47C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4780);
  if (v4)
  {
    v5 = *(v1 + 41);
    sub_100089C58(v4);
  }

  if (*(&v4 + 1))
  {
    sub_100008350(*(&v4 + 1));
  }
}

void sub_100083AA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100083AB0(uint64_t a1)
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

void *sub_100083B30(void *a1)
{
  *a1 = off_1002ADC30;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100083B7C(void *a1)
{
  *a1 = off_1002ADC30;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100083C5C(uint64_t result, uint64_t a2)
{
  *a2 = off_1002ADC30;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100083C9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100083CAC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_100083CEC(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002ADCA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083D38(uint64_t a1)
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

void sub_100083DB8(uint64_t **a1)
{
  v1 = **a1;
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 80);
  if (v3)
  {
    [*v3 startLocationUpdates];
  }

  objc_autoreleasePoolPop(v2);
  operator delete();
}

uint64_t sub_100083E54()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100083E90()
{
  if ((byte_1002D47D0 & 1) == 0)
  {
    byte_1002D47D0 = 1;
    return __cxa_atexit(sub_10002340C, &stru_1002D4780, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100083ECC()
{
  if ((byte_1002D4938 & 1) == 0)
  {
    byte_1002D4938 = 1;
    return __cxa_atexit(sub_10002B41C, &stru_1002D48E8, &_mh_execute_header);
  }

  return result;
}

void sub_100083F08()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100083F30(uint64_t a1, xpc_object_t *a2)
{
  *a1 = off_1002ADCC0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary && xpc_dictionary_get_int64(*a2, "WISMessageType") == 2)
  {
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "WISMessageMetricId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "WISMessageProfileId");
    *v4 = xpc_dictionary_get_int64(*a2, "WISMessageSourceComponentId");
    *(a1 + 24) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "WISMessageTriggeringComponentId");
    *(a1 + 28) = xpc_dictionary_get_int64(*a2, "WISMessageSubmissionId");
    length = 0;
    data = xpc_dictionary_get_data(*a2, "WISMessageSerializedMetrics", &length);
    sub_1000842BC((a1 + 32), data, &data[length], length);
  }

  return a1;
}

void sub_10008406C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084094(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v4, "WISMessageSerializedMetrics", *(a1 + 32), *(a1 + 40) - *(a1 + 32));
  xpc_dictionary_set_int64(v4, "WISMessageType", 2);
  xpc_dictionary_set_int64(v4, "WISMessageMetricId", *(a1 + 12));
  xpc_dictionary_set_int64(v4, "WISMessageProfileId", *(a1 + 16));
  xpc_dictionary_set_int64(v4, "WISMessageTriggerId", *(a1 + 24));
  xpc_dictionary_set_int64(v4, "WISMessageSourceComponentId", *(a1 + 8));
  xpc_dictionary_set_int64(v4, "WISMessageTriggeringComponentId", *(a1 + 20));
  xpc_dictionary_set_int64(v4, "WISMessageSubmissionId", *(a1 + 28));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void *sub_1000841FC(void *a1)
{
  *a1 = off_1002ADCC0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10008424C(void *a1)
{
  *a1 = off_1002ADCC0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  operator delete();
}

void *sub_1000842BC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10000BDA8(v6, v10);
    }

    sub_100033FD0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_1000843EC(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "WISMessageMetricCountsArrayMetricId");
    v5 = xpc_dictionary_get_int64(object, "WISMessageMetricCountsArrayCount");
    p_int64 = &int64;
    *(sub_100084988(a1 + 16, &int64) + 8) = v5;
  }

  return 1;
}

uint64_t sub_1000844A0(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 24) = 0;
  *a1 = off_1002ADD00;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "WISMessageComponentId");
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerId");
    value = xpc_dictionary_get_value(*a2, "WISMessageMetricCountsArray");
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_1000845DC;
    applier[3] = &unk_1002ADD18;
    applier[4] = a1;
    xpc_array_apply(value, applier);
    *(a1 + 40) = xpc_dictionary_get_int64(*a2, "WISMessageLongesttime");
  }

  return a1;
}

void sub_100084600(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "WISMessageType", 5);
    xpc_dictionary_set_int64(v5, "WISMessageComponentId", *(a1 + 8));
    xpc_dictionary_set_int64(v5, "WISMessageTriggerId", *(a1 + 12));
    xpc_dictionary_set_int64(v5, "WISMessageLongesttime", *(a1 + 40));
    v6 = xpc_array_create(0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v6) == &_xpc_type_array)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = *(a1 + 16);
    if (v8 != (a1 + 24))
    {
      do
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        if (v9 || (v9 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v9) == &_xpc_type_dictionary)
          {
            xpc_retain(v9);
            v10 = v9;
          }

          else
          {
            v10 = xpc_null_create();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v9 = 0;
        }

        xpc_release(v9);
        xpc_dictionary_set_int64(v10, "WISMessageMetricCountsArrayMetricId", *(v8 + 7));
        xpc_dictionary_set_int64(v10, "WISMessageMetricCountsArrayCount", *(v8 + 8));
        xpc_array_append_value(v7, v10);
        xpc_release(v10);
        v11 = v8[1];
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
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != (a1 + 24));
    }

    xpc_dictionary_set_value(v5, "WISMessageMetricCountsArray", v7);
    *a2 = v5;
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
    xpc_release(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

uint64_t sub_1000848D0(uint64_t a1)
{
  *a1 = off_1002ADD00;
  sub_10001C4B0(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_10008491C(uint64_t a1)
{
  *a1 = off_1002ADD00;
  sub_10001C4B0(a1 + 16, *(a1 + 24));

  operator delete();
}

uint64_t *sub_100084988(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

__n128 sub_100084A58(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4)
{
  a1->n128_u64[0] = off_1002ADD60;
  a1->n128_u32[2] = a2;
  a1->n128_u32[3] = a3;
  result = *a4;
  a1[1] = *a4;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  return result;
}

void *sub_100084A88(void *a1)
{
  *a1 = off_1002ADD60;
  v2 = a1[3];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_100084AD4(void *a1)
{
  *a1 = off_1002ADD60;
  v1 = a1[3];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

void sub_100084B40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_int64_create(4);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = a2;
  v15 = "WISMessageType";
  sub_10000F50C(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v12 = xpc_int64_create(*(a1 + 12));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = a2;
  v15 = "WISMessageComponentId";
  sub_10000F50C(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(a1 + 8));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v14 = a2;
  v15 = "WISMessageDeviceConfigurationId";
  sub_10000F50C(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = xpc_data_create(*v7, *(v7 + 8) - *v7);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v14 = a2;
    v15 = "WISMessageComponentConfigurationBuffer";
    sub_10000F50C(&v14, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
  }
}

void sub_100084DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100084E80(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084E00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100084E40(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100084E80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

uint64_t sub_100084EE4()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v6 = 0;
    v2 = CFGetTypeID(v0);
    v4 = 0;
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      v4 = v6;
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_100084F68()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFEqual(v0, @"Internal"))
  {
    v2 = 1;
  }

  else
  {
    v2 = CFEqual(v1, @"Carrier") != 0;
  }

  CFRelease(v1);
  return v2;
}

void sub_100084FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006703C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100085004()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"Internal") != 0;
  CFRelease(v1);
  return v2;
}

void sub_100085070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006703C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100085084(char a1)
{
  if ((a1 & 0xFE) == 2)
  {
    return 0x40000000;
  }

  else
  {
    return 0x10000000;
  }
}

uint64_t sub_1000850A4()
{
  memset(&v2, 0, sizeof(v2));
  v1 = time(0);
  localtime_r(&v1, &v2);
  return v2.tm_gmtoff;
}

CFNotificationCenterRef sub_1000850EC@<X0>(void *a1@<X8>)
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_100085204(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    sub_1000334A4();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void sub_10008524C(const void **a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v3 = *a1;

    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, v3);
  }
}

void sub_1000852B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002ADE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100085314(uint64_t a1)
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

uint64_t sub_100085394(uint64_t a1, uint64_t a2)
{
  sub_100085418(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100085418(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_1000868E4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100086AF8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100087034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100087084(uint64_t a1, void *a2)
{
  v3 = a2;
  v48 = v3;
  v44 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  [*(a1 + 32) deleteCellMapEntitiesWithFetchRequest:? andContext:?];
  v4 = [*(a1 + 40) objectForKey:@"nodes"];
  v46 = a1;
  v43 = v4;
  if (v4)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v5)
    {
      v6 = *v55;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v55 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v54 + 1) + 8 * i);
          v9 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapNode" inManagedObjectContext:v3];
          v10 = [v8 objectForKey:@"band"];
          [v9 setBand:{objc_msgSend(v10, "shortValue")}];

          v11 = [v8 objectForKey:@"frequency"];
          [v9 setFrequency:{objc_msgSend(v11, "intValue")}];

          v12 = [v8 objectForKey:@"gci"];
          [v9 setGci:v12];

          v13 = [v8 objectForKey:@"lastSeen"];
          [v13 doubleValue];
          v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          [v9 setLastSeen:v14];

          v15 = [v8 objectForKey:@"pci"];
          [v9 setPci:{objc_msgSend(v15, "shortValue")}];

          v16 = [v8 objectForKey:@"rat"];
          [v9 setRat:{objc_msgSend(v16, "shortValue")}];

          v17 = [v8 objectForKey:@"scs"];
          [v9 setScs:v17];

          v18 = [v8 objectForKey:@"seenCount"];
          [v9 setSeenCount:{objc_msgSend(v18, "shortValue")}];

          v19 = [v8 objectForKey:@"sumConnDuration"];
          [v9 setSumConnDuration:{objc_msgSend(v19, "longLongValue")}];

          v20 = [v8 objectForKey:@"sumDlCongestionCount"];
          [v9 setSumDlCongestionCount:{objc_msgSend(v20, "intValue")}];

          v21 = [v8 objectForKey:@"sumL1MitigationCount"];
          [v9 setSumL1MitigationCount:{objc_msgSend(v21, "intValue")}];

          v22 = [v8 objectForKey:@"sumTotalDuration"];
          [v9 setSumTotalDuration:{objc_msgSend(v22, "longLongValue")}];

          v23 = [v8 objectForKey:@"sumUlCongestionCount"];
          [v9 setSumUlCongestionCount:{objc_msgSend(v23, "intValue")}];

          v3 = v48;
        }

        v5 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v5);
    }

    v24 = [*(a1 + 40) objectForKey:@"edges"];
    v42 = v24;
    if (v24)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v45 = v24;
      v25 = [v45 countByEnumeratingWithState:&v50 objects:v58 count:{16, v42, v43}];
      if (v25)
      {
        v26 = *v51;
        while (2)
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v51 != v26)
            {
              objc_enumerationMutation(v45);
            }

            v28 = *(*(&v50 + 1) + 8 * j);
            v29 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapEdge" inManagedObjectContext:v48];
            v30 = [v28 objectForKey:@"lastSeen"];
            [v30 doubleValue];
            v31 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
            [v29 setLastSeen:v31];

            v32 = [v28 objectForKey:@"seenCount"];
            [v29 setSeenCount:{objc_msgSend(v32, "shortValue")}];

            v33 = [v28 objectForKey:@"source"];
            v34 = [v28 objectForKey:@"destination"];
            v35 = v34;
            if (!v33 || !v34)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_1002028BC();
              }

              *(*(*(v46 + 56) + 8) + 24) = 0;

              goto LABEL_36;
            }

            v36 = [*(v46 + 32) fetchCellMapNodeWithGCI:v33 andContext:v48];
            [v29 setSource:v36];

            v37 = [*(v46 + 32) fetchCellMapNodeWithGCI:v35 andContext:v48];
            [v29 setDestination:v37];
          }

          v25 = [v45 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v49 = 0;
      v38 = [v48 save:&v49];
      v39 = v49;
      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      v41 = v46;
      if ((v40 & 1) == 0)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_10020292C(v46);
          v41 = v46;
        }

        *(*(*(v41 + 56) + 8) + 24) = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1002029A4();
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

LABEL_36:
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1002029E0();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_10008793C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

char *sub_10008795C@<X0>(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_10000F0D8(a2, a1);
  if ((a2 + 8) == result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else if (result[79] < 0)
  {
    v7 = *(result + 7);
    v8 = *(result + 8);

    return sub_10000FFF8(a3, v7, v8);
  }

  else
  {
    v6 = *(result + 56);
    *(a3 + 16) = *(result + 9);
    *a3 = v6;
  }

  return result;
}

void sub_1000879DC(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(__p, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&a2->__r_.__value_.__l.__data_;
    v33 = a2->__r_.__value_.__r.__words[2];
  }

  sub_100087F38(v31, (a1 + 96));
  sub_10008795C(__p, v31, &v34);
  sub_100013464(v31, v31[1]);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = HIBYTE(v35);
  if (v35 < 0)
  {
    v6 = *(&v34 + 1);
  }

  if (v6)
  {
    *a3 = v34;
    *(a3 + 16) = v35;
  }

  else
  {
    sub_100007ECC(v29, "kCellular");
    sub_100007ECC(v27, "cellular");
    v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v8 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v8 = a2;
      size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    v10 = v30;
    v11 = v29;
    if ((v30 & 0x80u) != 0)
    {
      v11 = v29[0];
      v10 = v29[1];
    }

    if (size >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = size;
    }

    v13 = &v8[v12];
    if (v12)
    {
      v16 = *v11;
      v14 = v11 + 1;
      v15 = v16;
      v17 = v8;
      v18 = &v8[v12];
      do
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v13)
          {
            goto LABEL_33;
          }
        }

        v20 = (v10 - 1);
        v21 = v14;
        while (v20)
        {
          if (v19 == v13)
          {
            goto LABEL_33;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            goto LABEL_30;
          }
        }

        v18 = v17;
LABEL_30:
        ++v17;
      }

      while (v17 != v13);
    }

    else
    {
      v18 = v8;
    }

LABEL_33:
    v25 = v18 != v13 || v10 == 0;
    if (v25 && v18 - v8 != -1)
    {
      v26 = a2;
      if ((v7 & 0x80000000) != 0)
      {
        v26 = a2->__r_.__value_.__r.__words[0];
      }

      sub_100087E18(a2, v26, v10 + v26, v27);
    }

    *a3 = *&a2->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&a2->__r_.__value_.__l + 2);
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }
  }
}

void sub_100087BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_100087C70(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100007ECC(v27, "cellular");
  sub_100007ECC(__p, "dCellular");
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(a1 + 23);
  }

  v7 = v26;
  v8 = v26;
  v9 = __p[0];
  if ((v26 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  else
  {
    v9 = __p;
  }

  if (v6 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = &v5[v10];
  if (v10)
  {
    v14 = *v9;
    v12 = v9 + 1;
    v13 = v14;
    v15 = v5;
    v16 = &v5[v10];
    do
    {
      v17 = v15 + 1;
      while (*v15 != v13)
      {
        ++v15;
        ++v17;
        if (v15 == v11)
        {
          goto LABEL_25;
        }
      }

      v18 = (v7 - 1);
      v19 = v12;
      while (v18)
      {
        if (v17 == v11)
        {
          goto LABEL_25;
        }

        v21 = *v17++;
        v20 = v21;
        v22 = *v19++;
        --v18;
        if (v20 != v22)
        {
          goto LABEL_22;
        }
      }

      v16 = v15;
LABEL_22:
      ++v15;
    }

    while (v15 != v11);
  }

  else
  {
    v16 = v5;
  }

LABEL_25:
  v23 = v16 != v11 || v7 == 0;
  if (v23 && v16 - v5 != -1)
  {
    v24 = a1;
    if ((v4 & 0x80000000) != 0)
    {
      v24 = *a1;
    }

    sub_100087E18(a1, v24, v7 + v24, v27);
    v8 = v26;
  }

  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((v8 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_100087DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100087E18(std::string *a1, uint64_t a2, uint64_t a3, const std::string::value_type *a4)
{
  v4 = a1;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  v5 = a2 - v4;
  v6 = a3 - a2;
  v7 = *(a4 + 1);
  if (a4[23] >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    a4 = *a4;
    v8 = v7;
  }

  return std::string::replace(a1, v5, v6, a4, v8);
}

uint64_t sub_100087E50(uint64_t **a1, std::string *a2, uint64_t a3)
{
  v6 = sub_10000FEF0(a1, &v9, &a2->__r_.__value_.__l.__data_);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  std::string::operator=((a3 + 32), a2);
  std::string::operator=((a3 + 56), a2 + 1);
  sub_10000AC70(a1, v9, v7, a3);
  return a3;
}

uint64_t sub_100087EE0(uint64_t a1)
{
  sub_100013464(*a1, *(a1 + 16));
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

    sub_100013464(*a1, v2);
  }

  return a1;
}

void *sub_100087F38(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100087F90(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_100087F90(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100088018(v5, (v5 + 1), v4 + 4);
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

uint64_t sub_100088018(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_1000135B8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_10000EC04();
  }

  return v3;
}

void sub_1000887A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100088838()
{
  result = TelephonyRadiosGetRadioVendor();
  if (result)
  {
    sub_10005591C();
    sub_100136BD4();
    sub_10002FD30();
    sub_1000F5B2C();
    if (sub_100085004())
    {
      sub_100088E40();
    }

    sub_100088F78();
  }

  return result;
}

uint64_t sub_10008891C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100088938(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100088948(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_1000889EC(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100008350(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_100008350(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_100032AD8(a1);
}

void sub_100088A4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v5, a1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1000891E8;
  v7[3] = &unk_1002AE0D8;
  v4 = v5;
  v7[5] = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = &stru_1002ADED0;
  sub_100160D80(a3, (v4 + 16), v7);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }
}

void sub_100088B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008350(a18);
  }

  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

id *sub_100088B38(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return sub_10009DAB8(result);
  }

  return result;
}

void sub_100088BC0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100088C94);
  __cxa_rethrow();
}

void sub_100088C00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100088C54(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100088C94(void *result)
{
  if (result)
  {
    sub_1000889EC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100088CE4(uint64_t result, uint64_t a2)
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

void sub_100088D00(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100088D10(void *a1)
{
  *a1 = off_1002ADF98;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_100088D5C(void *a1)
{
  *a1 = off_1002ADF98;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_100088DF0@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void *sub_100088E9C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002ADFF0;
  sub_1000C89A8(a1 + 3);
  return a1;
}

void sub_100088F18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002ADFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100088FD4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002AE040;
  sub_10009DA7C(a1 + 3);
  return a1;
}

void sub_100089050(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AE040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10008910C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002AE090;
  sub_100138B4C(a1 + 3);
  return a1;
}

void sub_100089188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AE090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000891F8(uint64_t result, uint64_t a2)
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

void sub_100089214(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t sub_100089224()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

void sub_100089608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1000896A0(uint64_t a1)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  *(a1 + 40) = sub_1000E0F18(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  sCreateWISMetadataLoaderForXpcConversion();
  v4 = v10;
  v10 = 0uLL;
  v5 = *(a1 + 64);
  *(a1 + 56) = v4;
  if (v5)
  {
    sub_100008350(v5);
    if (*(&v10 + 1))
    {
      sub_100008350(*(&v10 + 1));
    }
  }

  *(a1 + 73) = TelephonyRadiosGetRadio() != 7;
  v6 = sub_100089A7C();
  *(a1 + 72) = v6;
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 73);
    LODWORD(v10) = 67109632;
    DWORD1(v10) = v8;
    WORD4(v10) = 1024;
    *(&v10 + 10) = v9;
    HIWORD(v10) = 1024;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "conv:#I ConversionController init: BlockMask = %d, shimAPEventsToCA = %{BOOL}d, shimBBEventsToCA = %{BOOL}d", &v10, 0x14u);
  }
}

uint64_t sub_100089880(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10008989C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000898AC(void *a1)
{
  v1 = sub_100089960(a1, "ConversionController", QOS_CLASS_UTILITY, "conv");
  *(v1 + 10) = 0;
  *(v1 + 44) = 0;
  operator new();
}

void *sub_100089960(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_100089A04(uint64_t a1)
{
  v5 = (a1 + 80);
  sub_100075004(&v5);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    sub_10006A10C(v3);
    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  return sub_100032AD8(a1);
}

BOOL sub_100089A7C()
{
  v7 = 0x700000000;
  sub_10008A548(&v5, &v7, 2);
  Radio = TelephonyRadiosGetRadio();
  if (!v6[0])
  {
    goto LABEL_8;
  }

  v1 = v6;
  v2 = v6[0];
  do
  {
    if (*(v2 + 7) >= Radio)
    {
      v1 = v2;
    }

    v2 = v2[*(v2 + 7) < Radio];
  }

  while (v2);
  if (v1 == v6 || Radio < *(v1 + 7))
  {
LABEL_8:
    v1 = v6;
  }

  v3 = v1 == v6;
  sub_10001C4B0(&v5, v6[0]);
  return v3;
}

void sub_100089B6C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v5, a1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_10008A3E0;
  v7[3] = &unk_1002AE300;
  v4 = v5;
  v7[5] = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = &stru_1002AE158;
  sub_100160D80(a3, (v4 + 16), v7);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }
}

void sub_100089C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008350(a18);
  }

  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_100089D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

void sub_100089DA8(void *a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1000081C8(&v3, a1);
  operator new();
}

void sub_100089E94(void *a1, uint64_t a2, void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000081C8(&v8, a1);
  operator new();
}

uint64_t sub_10008A020(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  v1 = a1 + 80;
  if (v3 != v2)
  {
    v5 = v3 + 1;
    while (1)
    {
      v6 = *(v5 - 1);
      if (!v6 || *(v6 + 8) == -1)
      {
        break;
      }

      if (v5++ == v2)
      {
        v3 = *(a1 + 88);
        goto LABEL_17;
      }
    }

    v3 = v5 - 1;
    if (v5 - 1 != v2 && v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        if (v8 && *(v8 + 8) != -1)
        {
          v9 = *v5;
          *v5 = 0;
          *(v5 + 1) = 0;
          v10 = *(v3 + 1);
          *v3 = v9;
          *(v3 + 1) = v8;
          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          ++v3;
        }

        ++v5;
      }

      while (v5 != v2);
      v2 = *(a1 + 88);
    }
  }

LABEL_17:

  return sub_100008788(v1, v3, v2);
}

void sub_10008A178(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_10008A24C);
  __cxa_rethrow();
}

void sub_10008A1B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10008A20C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A24C(uint64_t result)
{
  if (result)
  {
    sub_100089A04(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10008A29C(uint64_t result, uint64_t a2)
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

void sub_10008A2B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_10008A2C8(void *a1)
{
  *a1 = off_1002AE2B0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_10008A314(void *a1)
{
  *a1 = off_1002AE2B0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_10008A390@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t sub_10008A3F0(uint64_t result, uint64_t a2)
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

void sub_10008A40C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_10008A41C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 32;
      sub_1000103F8(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_10008A470(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "conv:#I Setting location allowed to %{BOOL}d ", buf, 8u);
  }

  *(v2 + 44) = *(v1 + 8);
  operator delete();
}

void *sub_10008A548(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_10008A5C8(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10008A5C8(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_10008A660(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10008A660(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_10008A808(void **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = *(*v1 + 88);
    v5 = *(*v1 + 96);
    if (v4 >= v5)
    {
      v8 = v3[10];
      v9 = (v4 - v8) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_100033FD0();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v23[4] = v3 + 10;
      if (v12)
      {
        sub_10007546C((v3 + 10), v12);
      }

      v13 = v1[2];
      v14 = (16 * v9);
      *v14 = v2;
      v14[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
      }

      v7 = v14 + 2;
      v15 = v3[10];
      v16 = v3[11] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = v3[10];
      v3[10] = v17;
      v3[11] = v7;
      v19 = v3[12];
      v3[12] = 0;
      v23[2] = v18;
      v23[3] = v19;
      v23[0] = v18;
      v23[1] = v18;
      sub_1000754B4(v23);
    }

    else
    {
      v6 = v1[2];
      *v4 = v2;
      v4[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      v7 = v4 + 2;
    }

    v3[11] = v7;
  }

  sub_10001E298(&v22);
  return sub_1000082FC(&v21);
}

void sub_10008A93C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10001E298(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008A958(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (sub_100085004())
  {
    v3 = v1[4];
    v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v3 = xpc_null_create();
      v7 = v3;
    }

    sub_10001081C(v2, (v1 + 1), &v7);
    xpc_release(v3);
  }

  sub_10008AA1C(&v6);
  return sub_1000082FC(&v5);
}

void sub_10008A9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  xpc_release(v11);
  sub_10008AA1C(&a11);
  sub_1000082FC(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008AA1C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10008AA84()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10008AAC0()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10008AAFC()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

void sub_10008B2B8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_10008B93C(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_10008BC7C(id a1, NSUUID *a2, FMOOSContextState *a3, BOOL *a4)
{
  v4 = a3;
  [(FMOOSContextState *)v4 setOosAreaEntry:0];
  [(FMOOSContextState *)v4 setClientPrediction:0];
  [(FMOOSContextState *)v4 setPreviousCrowdsourcedOOSInsights:0];
  [(FMOOSContextState *)v4 setPredictionSuppressionReason:0];
}

void sub_10008C120(id *a1, unsigned int **a2)
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: On queue", buf, 2u);
  }

  if (*a2)
  {
    if ((sub_1000CBF78(*a2) & 0x100) == 0)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
      {
        sub_100202DA8();
      }

      return;
    }

    v5 = sub_1000CBF78(*a2);
    v6 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v95[0]) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings OOSRatePerTile: %d", buf, 8u);
    }

    v7 = sub_1000CC504(*a2);
    v8 = +[FMConfiguration sharedInstance];
    v9 = v7 < [v8 CellCoverageTileMinNumberOfObservations];

    if (v9)
    {
      v10 = *(qword_1002DBE98 + 128);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[FMConfiguration sharedInstance];
        v12 = [v11 CellCoverageTileMinNumberOfObservations];
        *buf = 134218240;
        v95[0] = v7;
        LOWORD(v95[1]) = 2048;
        *(&v95[1] + 2) = v12;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FederatedMobility[FMOOSModel]:Crowdsourced OOS learnings: total number of observations: %llu <  Min number of observations required %lu", buf, 0x16u);
      }

      return;
    }

    v13 = [a1[4] subscriptionID];
    v88 = [v13 unsignedIntegerValue];

    if (v88 >= 2)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100202D74();
      }

      return;
    }

    sub_1000CB984(*a2, buf);
    v80 = v95[0];
    v81 = *buf;
    v14 = v96;
    v79 = v97;
    v15 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v89 = 67109888;
      v90 = v81;
      LOWORD(v91) = 1024;
      *(&v91 + 2) = v80;
      HIWORD(v91) = 1024;
      LODWORD(v92[0]) = v14;
      WORD2(v92[0]) = 1024;
      *(v92 + 6) = v79;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Recovery Predictions MCC: %d, MNC: %d, RAT: %u, maxCount = %d", v89, 0x1Au);
    }

    v78 = v14;
    v16 = [a1[4] homeMcc];
    v87 = [v16 intValue];

    v17 = [a1[4] homeMnc];
    v86 = [v17 intValue];

    v18 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v89 = 67109376;
      v90 = v87;
      LOWORD(v91) = 1024;
      *(&v91 + 2) = v86;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings for homeMCC: %u, homeMNC: %u,", v89, 0xEu);
    }

    sub_1000CBB78(*a2, v87, v86, v89);
    v19 = [a1[4] previousCrowdsourcedOOSInsights];
    if (!v19)
    {
      goto LABEL_52;
    }

    v20 = [a1[4] previousCrowdsourcedOOSInsights];
    if (([v20 isSent] & 1) == 0)
    {

      goto LABEL_52;
    }

    v21 = [a1[4] previousCrowdsourcedOOSInsights];
    if (![v21 maxCount])
    {

      goto LABEL_52;
    }

    v22 = [a1[4] previousCrowdsourcedOOSInsights];
    v23 = [v22 lastOosRate];
    v24 = v23 == 0;

    if (v24)
    {
LABEL_52:
      v54 = [NSNumber numberWithUnsignedInt:v5];
      v55 = [a1[4] previousCrowdsourcedOOSInsights];
      v56 = v54;
      if (v55)
      {
        v57 = [a1[4] previousCrowdsourcedOOSInsights];
        v58 = [v57 minOosRate];
        v59 = [v58 compare:v54] == -1;

        v56 = v54;
        if (v59)
        {
          v60 = [a1[4] previousCrowdsourcedOOSInsights];
          v56 = [v60 minOosRate];
        }
      }

      v61 = [a1[4] previousCrowdsourcedOOSInsights];
      v85 = v54;
      if (v61)
      {
        v62 = [a1[4] previousCrowdsourcedOOSInsights];
        v63 = [v62 maxOosRate];
        v64 = [v63 compare:v54] == 1;

        v85 = v54;
        if (v64)
        {
          v65 = [a1[4] previousCrowdsourcedOOSInsights];
          v61 = [v65 maxOosRate];

          v85 = v61;
        }
      }

      v66 = [FMOOSRecoveryParameters alloc];
      v82 = [(FMOOSRecoveryParameters *)v66 init:v81 mnc:v80 rat:v78 band:*(v95 + 4) arfcn:*(&v95[1] + 4)];
      v67 = [FMOOSRecoveryParameters alloc];
      v83 = [(FMOOSRecoveryParameters *)v67 init:v87 mnc:v86 rat:v93 band:v91 arfcn:v92[0]];
      v68 = [FMOOSClientCrowdsourcedPrediction alloc];
      [a1[5] latitude];
      v70 = v69;
      [a1[5] longitude];
      v72 = [(FMOOSClientCrowdsourcedPrediction *)v68 initLastOosRate:v54 minOosRate:v56 maxOosRate:v85 maxCount:v79 isSent:0 latitude:v82 longitude:v70 oosRecoveryParametersForPopularPLMN:v71 oosRecoveryParametersForHomePLMN:v83];
      [a1[4] setPreviousCrowdsourcedOOSInsights:v72];

      v73 = [a1[6] isEqualToString:@"OutOfService"];
      if (v73)
      {
        v61 = +[FMConfiguration sharedInstance];
        [v61 sendCrowdsourcedPredictionLikelihood];
        if ([FMUtil randomlyFalseWithLikelihood:v74])
        {

LABEL_63:
          v77 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Not sending Crowdsourced prediction due to randomized suppression", v98, 2u);
          }

          [a1[4] setPredictionSuppressionReason:{objc_msgSend(a1[4], "predictionSuppressionReason") | 0x20000}];

          return;
        }
      }

      v75 = [a1[4] predictionSuppressionReason];
      if (v73)
      {
        v76 = (v75 & 0x20000) == 0;

        if (!v76)
        {
          goto LABEL_63;
        }
      }

      else if ((v75 & 0x20000) != 0)
      {
        goto LABEL_63;
      }

      operator new();
    }

    v25 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Checking if crowdsourced insight needs to be resent", v98, 2u);
    }

    v26 = [a1[4] previousCrowdsourcedOOSInsights];
    v27 = [v26 lastOosRate];
    v28 = [v27 intValue];

    v29 = +[FMConfiguration sharedInstance];
    v30 = [v29 CrowdsourcedOOSRateDiffThreshold];
    LODWORD(v31) = v28 - v5;
    if ((v28 - v5) >= 0)
    {
      v31 = v31;
    }

    else
    {
      v31 = v5 - v28;
    }

    v32 = v30 > v31;

    if (v32)
    {
      v33 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = +[FMConfiguration sharedInstance];
        v35 = [v34 CrowdsourcedOOSRateDiffThreshold];
        *v98 = 134217984;
        *&v98[4] = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: OOS Rate has not changed, while OOS, by more than %lu", v98, 0xCu);
      }

      v36 = [a1[4] previousCrowdsourcedOOSInsights];
      v37 = v79 - [v36 maxCount];
      if (v37 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = -v37;
      }

      v39 = [a1[4] previousCrowdsourcedOOSInsights];
      v40 = [v39 maxCount];

      v41 = +[FMConfiguration sharedInstance];
      v42 = v38 * 100.0 / v40 < [v41 CrowdsourcedMaxCountDiffPercentThreshold];

      if (v42)
      {
        v43 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = +[FMConfiguration sharedInstance];
          v45 = [v44 CrowdsourcedMaxCountDiffPercentThreshold];
          *v98 = 134217984;
          *&v98[4] = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Max Count has not changed, while OOS, by more than %lu percent, not resending insight", v98, 0xCu);
        }

        return;
      }

      v46 = [a1[4] previousCrowdsourcedOOSInsights];
      v47 = [v46 oosRecoveryParametersForPopularPLMN];
      if ([v47 mcc] == v81)
      {
        v48 = [a1[4] previousCrowdsourcedOOSInsights];
        v49 = [v48 oosRecoveryParametersForPopularPLMN];
        if ([v49 mnc] == v80)
        {
          v50 = [a1[4] previousCrowdsourcedOOSInsights];
          v51 = [v50 oosRecoveryParametersForPopularPLMN];
          v84 = [v51 rat] == v78;

          if (v84)
          {
            v52 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: No change in MCC, MNC, or RAT, while in OOS for popular PLMN", v98, 2u);
              v52 = *(qword_1002DBE98 + 136);
            }

            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: No change in recovery parameters for popular and home PLMN's, not sending an insight", v98, 2u);
            }

            return;
          }

          goto LABEL_50;
        }
      }
    }

LABEL_50:
    v53 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Insight needs to be resent", v98, 2u);
    }

    goto LABEL_52;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
  {
    sub_100202DDC();
  }
}

uint64_t sub_10008D35C(int *a1)
{
  v2 = a1[21];
  v3 = a1[20];
  if (v3 >= v2)
  {
    if (v2 == a1[22])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 18), v2 + 1);
      v2 = a1[21];
    }

    a1[21] = v2 + 1;
    sub_1000922AC();
  }

  v4 = *(a1 + 9);
  a1[20] = v3 + 1;
  return *(v4 + 8 * v3);
}

void sub_10008F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  pthread_mutex_unlock(&stru_1002D4830);
  sub_1000292F4(&a27);
  sub_1000292AC(&a28);

  _Unwind_Resume(a1);
}

void sub_10008FBC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 oosAreaEntry];
  if (!v7)
  {
LABEL_4:
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002032F4();
    }

    goto LABEL_18;
  }

  v8 = [v6 oosAreaEntry];
  v9 = [v8 clientPrediction];
  if (v9)
  {
    v10 = [v6 oosAreaEntry];
    v11 = [v10 clientPrediction];
    v12 = [v11 isSent];

    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v13 = [v6 previousCrowdsourcedOOSInsights];

  if (!v13)
  {
LABEL_14:
    [*(a1 + 40) fetchAndSendCrowdsourcedOOSInsightsPerTileForState:v6 atLocation:*(a1 + 32) withReason:@"LocationChangeDuringOOS"];
    goto LABEL_18;
  }

  v14 = [CLLocation alloc];
  [*(a1 + 32) latitude];
  v16 = v15;
  [*(a1 + 32) longitude];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  v19 = [CLLocation alloc];
  v20 = [v6 previousCrowdsourcedOOSInsights];
  [v20 latitude];
  v22 = v21;
  v23 = [v6 previousCrowdsourcedOOSInsights];
  [v23 longitude];
  v25 = [v19 initWithLatitude:v22 longitude:v24];

  [v18 distanceFromLocation:v25];
  v27 = v26;
  v28 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) latitude];
    v30 = v29;
    [*(a1 + 32) longitude];
    v32 = v31;
    v33 = [v6 previousCrowdsourcedOOSInsights];
    [v33 latitude];
    v35 = v34;
    v36 = [v6 previousCrowdsourcedOOSInsights];
    [v36 longitude];
    v46 = 134546433;
    v47 = v30;
    v48 = 2053;
    v49 = v32;
    v50 = 2053;
    v51 = v35;
    v52 = 2053;
    v53 = v37;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Current Location Lat:%{sensitive}lf, Long: %{sensitive}lf, Previous Location Lat: %{sensitive}lf, Long: %{sensitive}lf", &v46, 0x2Au);
  }

  v38 = +[FMConfiguration sharedInstance];
  v39 = v27 >= [v38 CrowdsourcedMinDistanceChangedWhileOOSThreshold];

  v40 = *(qword_1002DBE98 + 128);
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
  if (v39)
  {
    if (v41)
    {
      v42 = +[FMConfiguration sharedInstance];
      v43 = [v42 CrowdsourcedMinDistanceChangedWhileOOSThreshold];
      v46 = 134218240;
      v47 = v27;
      v48 = 2048;
      v49 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings:distanceChanged: %f is more than %lu", &v46, 0x16u);
    }

    goto LABEL_14;
  }

  if (v41)
  {
    v44 = +[FMConfiguration sharedInstance];
    v45 = [v44 CrowdsourcedMinDistanceChangedWhileOOSThreshold];
    v46 = 134218240;
    v47 = v27;
    v48 = 2048;
    v49 = v45;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings:distanceChanged: %f is less than %lu", &v46, 0x16u);
  }

LABEL_18:
}

void sub_1000901F8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id sub_100091E50(uint64_t a1, void *a2)
{
  v3 = [a2 radioAccessTechnology];
  v4 = [*(a1 + 32) radioAccessTechnology];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_100091FD0(uint64_t a1)
{
  v9[0] = @"predictionType";
  v9[1] = @"predictionSource";
  v10[0] = @"outofservice";
  v10[1] = @"on-device";
  v9[2] = @"predictionCorrect";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v10[2] = v2;
  v9[3] = @"seenCount";
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) oosAreaSeenCount]);
  v10[3] = v3;
  v9[4] = @"predictionSent";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isSent]);
  v10[4] = v4;
  v9[5] = @"predictedDuration";
  [*(a1 + 32) predictedOOSDuration];
  v6 = [NSNumber numberWithLongLong:llround(v5)];
  v10[5] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

uint64_t sub_100092310()
{
  if ((byte_1002D4880 & 1) == 0)
  {
    byte_1002D4880 = 1;
    return __cxa_atexit(sub_10002973C, &stru_1002D4830, &_mh_execute_header);
  }

  return result;
}

void sub_100092428(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_1000CB984(*a2, v20);
    v4 = [WISCellularCoverageTile alloc];
    v5 = sub_1000CC4DC(*a2);
    v6 = sub_1000CC4E4(*a2);
    v7 = sub_1000CC4F4(*a2);
    v8 = sub_100008780(*a2);
    v9 = sub_1000CC4FC(*a2);
    v19 = v25;
    if (v25 == 1)
    {
      v18 = [NSNumber numberWithInt:v24];
    }

    else
    {
      v18 = 0;
    }

    v11 = v20[0];
    v12 = v20[1];
    v13 = v21;
    v17 = a1;
    if (v21 == 1)
    {
      v14 = [NSNumber numberWithUnsignedInt:v20[2]];
    }

    else
    {
      v14 = 0;
    }

    v15 = v23;
    if (v23 == 1)
    {
      v16 = [NSNumber numberWithUnsignedInt:v22];
    }

    else
    {
      v16 = 0;
    }

    v10 = [(WISCellularCoverageTile *)v4 initWithLatitude:v7 longitude:v8 noServiceCount:v9 inServiceCount:v18 limitedServiceCount:v11 highestFrequencyRsrp:v12 highestCountMCC:v5 highestCountMNC:v6 highestCountBand:v14 highestCountARFCN:v16 highestCountRAT:v26 highestCount:v27];
    if (v15)
    {
    }

    if (v13)
    {
    }

    a1 = v17;
    if (v19)
    {
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000925E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, int a16)
{
  if (v16)
  {
  }

  if (a16)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_10009263C(void *a1@<X8>)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = xpc_null_create();
LABEL_8:
    *a1 = v4;
    goto LABEL_9;
  }

  xpc_retain(v3);
LABEL_9:
  xpc_release(v3);
}

uint64_t sub_1000926DC(uint64_t a1)
{
  *a1 = off_1002AE468;
  v3 = (a1 + 24);
  sub_10000C564(&v3);
  return a1;
}

void sub_100092734(uint64_t a1)
{
  *a1 = off_1002AE468;
  v1 = (a1 + 24);
  sub_10000C564(&v1);
  operator delete();
}

void sub_10009296C(uint64_t a1@<X8>)
{
  sub_1000A92F8(__p);
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

void sub_1000929D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_1001FCE7C(va);
  _Unwind_Resume(a1);
}

void sub_1000929F8()
{
  sub_10009296C(&__p);
  v1 = __p;
  memset(&__p, 0, sizeof(__p));
  std::__fs::filesystem::__remove(&v1, 0);
  if (SHIBYTE(v1.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_100092A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1001FCE7C(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_100092A8C(uint64_t a1, std::string *a2)
{
  ppDb = 0;
  sub_10005DC84(&__p, a2);
  sub_100093150(&__p, &off_1002AE498);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v4 = sqlite3_open_v2(p_buf, &ppDb, 6, 0);
  v5 = v4;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = sqlite3_backup_init(ppDb, "main", *(a1 + 40), "main");
    v9 = v8;
    if (v8)
    {
      sqlite3_backup_step(v8, -1);
      sqlite3_backup_finish(v9);
    }

    v10 = sqlite3_errcode(ppDb);
    v7 = v10 == 0;
    v11 = *(a1 + 32);
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
        v12 = "persist:#E Sqlite backup failed with err=%d";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 8;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, &buf, v15);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v12 = "persist:#I Sqlite backup succeeded";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 2;
      goto LABEL_19;
    }

    sqlite3_close(ppDb);
    goto LABEL_21;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = *(a1 + 32);
  v7 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "persist:#E Unable to create backup database with err=%d", &buf, 8u);
    v7 = 0;
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_100092CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100092CEC(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000931DC;
  block[3] = &unk_1002AE5B0;
  block[4] = a1;
  block[5] = v4;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

xpc_object_t *sub_100092D70(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

const void **sub_100092DA4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100092DF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AE4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100092E78(double a1, double a2)
{
  XPCEventPublisher.Token.rawValue.getter(a1, a2);

  operator delete();
}

BOOL sub_100092EBC(int a1, CFStringRef key)
{
  v2 = CFPreferencesCopyAppValue(key, @"com.apple.wirelessinsightsd.persistent");
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

uint64_t sub_100092F04(int a1, CFStringRef key, CFPropertyListRef value)
{
  CFPreferencesSetAppValue(key, value, @"com.apple.wirelessinsightsd.persistent");

  return CFPreferencesAppSynchronize(@"com.apple.wirelessinsightsd.persistent");
}

void sub_100092FDC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000930B0);
  __cxa_rethrow();
}

void sub_10009301C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100093070(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000930B0(uint64_t result)
{
  if (result)
  {
    sub_1000DE3B4();

    operator delete();
  }

  return result;
}

uint64_t *sub_1000930F0(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1000DE3B8(*v1);
  sub_100057388(&v4);
  return sub_1000082FC(&v3);
}

void sub_100093134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100057388(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_100093150(std::string *this, std::string **a2)
{
  if ((*a2)->__r_.__value_.__s.__data_[0] == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v4 = (*a2 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_10005D528(this, *a2, v4);
  return this;
}

void sub_1000931DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  size = (*v1)[1].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(size, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, size, OS_LOG_TYPE_INFO, "persist:#I Backing up persistent database", &buf, 2u);
  }

  sub_100092A8C(v2, v1[1]);
  v4 = *(v2 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "persist:#I Backing up persistent plist", &buf, 2u);
  }

  (*(**(v2 + 48) + 16))(*(v2 + 48));
  v5 = strlen("/var/wireless/Library/Preferences");
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, "/var/wireless/Library/Preferences", v5);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v6] = 0;
  ctu::path_join_impl();
  buf = __dst;
  v7 = v1[1];
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v10, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__pn_.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__pn_.__r_.__value_.__l.__data_ = v8;
  }

  ctu::path_join_impl();
  __dst = v10;
  std::__fs::filesystem::__copy_file(&buf, &__dst, overwrite_existing, 0);
  v9 = *(v2 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10.__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "persist:#I Sqlite backup succeeded", &v10, 2u);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_10009342C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100093488(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000934BC(uint64_t a1)
{
  sub_100013464(a1 + 144, *(a1 + 152));
  sub_100013464(a1 + 120, *(a1 + 128));
  sub_100013464(a1 + 96, *(a1 + 104));
  sub_1000134C0(a1 + 72, *(a1 + 80));
  sub_1000134C0(a1 + 48, *(a1 + 56));
  sub_1000134C0(a1 + 24, *(a1 + 32));
  sub_1000134C0(a1, *(a1 + 8));
  return a1;
}

BOOL sub_100093534(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  if (xpc_get_type(*a2) != &_xpc_type_dictionary)
  {
    return 0;
  }

  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v7 = *(a1 + 8);
  }

  if (!v7)
  {
    return 0;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3002000000;
  v39 = sub_1000939C8;
  v40 = sub_1000939FC;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v41 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v41 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_13;
    }
  }

  if (xpc_get_type(v9) != &_xpc_type_dictionary)
  {
    v10 = xpc_null_create();
LABEL_13:
    v41 = v10;
    goto LABEL_14;
  }

  xpc_retain(v9);
LABEL_14:
  xpc_release(v9);
  v30 = 0;
  v31 = &v30;
  v32 = 0x4002000000;
  v33 = sub_100093A2C;
  v34 = sub_100093A50;
  memset(v35, 0, sizeof(v35));
  v11 = *a2;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 1174405120;
  applier[2] = sub_100093A7C;
  applier[3] = &unk_1002AE618;
  v29 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v29 = xpc_null_create();
  }

  applier[4] = &v36;
  applier[5] = &v30;
  v6 = xpc_dictionary_apply(v11, applier);
  if (v6)
  {
    v12 = v31[5];
    v13 = v31[6];
    if (v12 == v13)
    {
      sub_10000E780(__p, a1, v37 + 5);
      sub_100096E40(a3, __p);
      sub_10006AB64(__p);
    }

    else
    {
      do
      {
        v14 = *v12;
        if (*v12)
        {
          xpc_retain(*v12);
        }

        else
        {
          v14 = xpc_null_create();
        }

        v15 = v37[5];
        v26 = v15;
        if (v15)
        {
          xpc_retain(v15);
        }

        else
        {
          v15 = xpc_null_create();
          v26 = v15;
        }

        v25 = v14;
        if (v14)
        {
          xpc_retain(v14);
          v16 = v14;
        }

        else
        {
          v16 = xpc_null_create();
          v25 = v16;
        }

        sub_100094248(&v26, &v25, &v27);
        xpc_release(v16);
        v25 = 0;
        xpc_release(v15);
        v26 = 0;
        sub_10000E780(__p, a1, &v27);
        v17 = *(a3 + 8);
        if (v17 >= *(a3 + 16))
        {
          v20 = sub_10000FA34(a3, __p);
          v19 = object;
        }

        else
        {
          v18 = *__p;
          *(v17 + 16) = v23;
          *v17 = v18;
          __p[1] = 0;
          v23 = 0;
          __p[0] = 0;
          *(v17 + 24) = object;
          v19 = xpc_null_create();
          object = v19;
          v20 = v17 + 32;
        }

        *(a3 + 8) = v20;
        xpc_release(v19);
        object = 0;
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v27);
        xpc_release(v14);
        ++v12;
      }

      while (v12 != v13);
    }
  }

  xpc_release(v29);
  v29 = 0;
  _Block_object_dispose(&v30, 8);
  __p[0] = v35;
  sub_10009634C(__p);
  _Block_object_dispose(&v36, 8);
  xpc_release(v41);
  return v6;
}

void sub_1000938C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, char a23)
{
  sub_10006AB64(&a9);
  xpc_release(object);
  object = 0;
  _Block_object_dispose(&a23, 8);
  sub_10009634C(&a9);
  _Block_object_dispose((v23 - 128), 8);
  xpc_release(*(v23 - 88));
  _Unwind_Resume(a1);
}

xpc_object_t sub_1000939C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

__n128 sub_100093A2C(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_100093A7C(void *a1, void *a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v19[0] = a1 + 6;
    v19[1] = a2;
    sub_1000941AC(v19, &v36);
    sub_100007ECC(&v34, a2);
    sub_100093FBC(&v36, &v34, &v29);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    xpc_release(v36);
    v36 = 0;
    if (xpc_get_type(v29) == &_xpc_type_dictionary)
    {
      v10 = *(*(a1[4] + 8) + 40);
      v33 = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        v10 = xpc_null_create();
        v33 = v10;
      }

      v11 = v29;
      v32 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v11 = xpc_null_create();
        v32 = v11;
      }

      sub_100094248(&v33, &v32, v19);
      v12 = *(a1[4] + 8);
      v13 = v19[0];
      v19[0] = xpc_null_create();
      v14 = *(v12 + 40);
      *(v12 + 40) = v13;
      xpc_release(v14);
      xpc_release(v19[0]);
      v19[0] = 0;
      xpc_release(v11);
      v32 = 0;
      xpc_release(v10);
      v33 = 0;
      xpc_release(v29);
      return 1;
    }

    xpc_release(v29);
    return 0;
  }

  v7 = type;
  v8 = qword_1002D83B0;
  if (qword_1002D83B0 != qword_1002D83B8)
  {
    while (*v8 != type)
    {
      if (++v8 == qword_1002D83B8)
      {
        goto LABEL_13;
      }
    }
  }

  if (v8 == qword_1002D83B8)
  {
LABEL_13:
    if (sub_100094570(object))
    {
      v19[0] = a1 + 6;
      v19[1] = a2;
      sub_10000BBB0(v19, &v26);
      sub_1000945D0(&v26, &v27);
      v29 = (*(a1[4] + 8) + 40);
      v30 = a2;
      sub_1000947D8(&v29, &v27, &objecta);
      xpc_release(objecta);
      objecta = 0;
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      return 1;
    }

    if (sub_100094858(object))
    {
      v19[0] = a1 + 6;
      v19[1] = a2;
      sub_10000BBB0(v19, &v23);
      sub_1000948B8(&v23, &v24);
      v29 = (*(a1[4] + 8) + 40);
      v30 = a2;
      sub_10000F50C(&v29, &v24, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      return 1;
    }

    if (sub_100094CA8(object))
    {
      v19[0] = a1 + 6;
      v19[1] = a2;
      sub_10000BBB0(v19, &v20);
      sub_100094D08(&v20, &v21);
      v29 = (*(a1[4] + 8) + 40);
      v30 = a2;
      sub_10000F50C(&v29, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      return 1;
    }

    if (v7 == &_xpc_type_array)
    {
      v29 = (a1 + 6);
      v30 = a2;
      sub_10000BBB0(&v29, &v18);
      sub_100007ECC(__p, a2);
      sub_1000950F8(&v18, __p, v19);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v18);
      v18 = 0;
      v15 = *(a1[5] + 8);
      if (v19[0] != v19[1])
      {
        sub_1000967D4((v15 + 40), *(v15 + 48), v19[0], v19[1], (v19[1] - v19[0]) >> 3);
        v29 = v19;
        sub_10009634C(&v29);
        return 1;
      }

      sub_1000963F4(v15 + 40, 0, 0, 0);
      v29 = v19;
      sub_10009634C(&v29);
    }

    return 0;
  }

  v19[0] = a1 + 6;
  v19[1] = a2;
  v29 = (*(a1[4] + 8) + 40);
  v30 = a2;
  sub_1000944E8(&v29, v19, &v31);
  xpc_release(v31);
  return 1;
}

void sub_100093E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26)
{
  *(v26 - 120) = &a16;
  sub_10009634C((v26 - 120));
  _Unwind_Resume(a1);
}

void sub_100093FBC(void **a1@<X0>, __int128 *a2@<X1>, void **a3@<X8>)
{
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
  v9 = *a1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 1174405120;
  applier[2] = sub_10009575C;
  applier[3] = &unk_1002AE680;
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v14 = *(a2 + 2);
  }

  v10 = *a3;
  v15 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v11 = *a1;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc_dictionary_apply(v9, applier);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }
}

void sub_1000941AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void sub_100094248(void **a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
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
  v9 = *a1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 1174405120;
  applier[2] = sub_100095B94;
  applier[3] = &unk_1002AE6B0;
  v10 = *a3;
  v18 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v18 = xpc_null_create();
  }

  v11 = *a1;
  v19 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_apply(v9, applier);
  v12 = *a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = sub_100095C84;
  v14[3] = &unk_1002AE6E0;
  v15 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v13 = *a2;
  object = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc_dictionary_apply(v12, v14);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
}

void sub_100094454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(a20);
  xpc_release(a19);
  sub_1000648E4(v20);
  _Unwind_Resume(a1);
}

void sub_1000944E8(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  sub_100007DA4(a2, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000F50C(a1, &v5, a3);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
}

BOOL sub_100094570(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    return 0;
  }

  return xpc_array_apply(a1, &stru_1002AE730);
}

void sub_1000945D0(void **a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (!sub_100094570(*a1))
  {
    v7 = xpc_array_create(0, 0);
    v8 = v7;
    if (v7)
    {
      *a2 = v7;
    }

    else
    {
      v8 = xpc_null_create();
      *a2 = v8;
      if (!v8)
      {
        v9 = xpc_null_create();
        v8 = 0;
        goto LABEL_19;
      }
    }

    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
LABEL_20:
      xpc_release(v8);
      goto LABEL_21;
    }

    v9 = xpc_null_create();
LABEL_19:
    *a2 = v9;
    goto LABEL_20;
  }

  v6 = *a1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 1174405120;
  applier[2] = sub_100095D6C;
  applier[3] = &unk_1002AE7D0;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc_array_apply(v6, applier);
  *a2 = v5;
  v5 = xpc_null_create();
  xpc_release(object);
  object = 0;
LABEL_21:
  xpc_release(v5);
}

void sub_10009478C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1000947D8@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t *sub_100094824(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

BOOL sub_100094858(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    return 0;
  }

  return xpc_array_apply(a1, &stru_1002AE770);
}

void sub_1000948B8(xpc::object *a1@<X0>, xpc_object_t *a2@<X8>)
{
  sub_100007ECC(v38, ";");
  sub_100007ECC(v36, " ");
  memset(&v35, 0, sizeof(v35));
  v29 = 0;
  v30 = &v29;
  v31 = 0x4002000000;
  v32 = sub_100095EF8;
  v33 = sub_100095F1C;
  memset(v34, 0, sizeof(v34));
  v4 = *a1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100095F48;
  applier[3] = &unk_1002AE808;
  applier[4] = &v29;
  if (!xpc_array_apply(v4, applier))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(__p, a1);
      sub_100203488(__p);
    }

    *string = 0;
    v24 = 0;
    v25 = 0;
    v20 = xpc_string_create(string);
    *a2 = v20;
    if (!v20)
    {
      *a2 = xpc_null_create();
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(*string);
    }

    goto LABEL_52;
  }

  v5 = v30[5];
  v6 = v30[6];
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_1000971C8(v5, v6, string, v8, 1);
  v9 = v30[5];
  v10 = v30[6];
  if (v9 == v10)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (*(v9 + 23) < 0)
    {
      sub_10000FFF8(__p, *v9, *(v9 + 1));
    }

    else
    {
      v11 = *v9;
      v27 = *(v9 + 2);
      *__p = v11;
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    v13 = HIBYTE(v27);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      if (size + HIBYTE(v27) >= 0x3E9)
      {
        goto LABEL_47;
      }

      goto LABEL_16;
    }

    if (__p[1] + size >= 0x3E9)
    {
      break;
    }

LABEL_16:
    if (size)
    {
      if ((v37 & 0x80u) == 0)
      {
        v14 = v36;
      }

      else
      {
        v14 = v36[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v15 = v37;
      }

      else
      {
        v15 = v36[1];
      }

      std::string::append(&v35, v14, v15);
      v13 = HIBYTE(v27);
    }

    if (v13 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v13 >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = __p[1];
    }

    std::string::append(&v35, v16, v17);
    if ((v39 & 0x80u) == 0)
    {
      v18 = v38;
    }

    else
    {
      v18 = v38[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v19 = v39;
    }

    else
    {
      v19 = v38[1];
    }

    std::string::append(&v35, v18, v19);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 24);
    if (v9 == v10)
    {
      goto LABEL_47;
    }
  }

  operator delete(__p[0]);
LABEL_47:
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v35;
  }

  else
  {
    v21 = v35.__r_.__value_.__r.__words[0];
  }

  v22 = xpc_string_create(v21);
  *a2 = v22;
  if (!v22)
  {
    *a2 = xpc_null_create();
  }

LABEL_52:
  _Block_object_dispose(&v29, 8);
  *string = v34;
  sub_1000388A4(string);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_100094C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100094CA8(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    return 0;
  }

  return xpc_array_apply(a1, &stru_1002AE7B0);
}

void sub_100094D08(xpc::object *a1@<X0>, xpc_object_t *a2@<X8>)
{
  sub_100007ECC(v38, ";");
  sub_100007ECC(v36, " ");
  memset(&v35, 0, sizeof(v35));
  v29 = 0;
  v30 = &v29;
  v31 = 0x4002000000;
  v32 = sub_100095EF8;
  v33 = sub_100095F1C;
  memset(v34, 0, sizeof(v34));
  v4 = *a1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100096030;
  applier[3] = &unk_1002AE830;
  applier[4] = &v29;
  if (!xpc_array_apply(v4, applier))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(__p, a1);
      sub_1002034EC(__p);
    }

    *string = 0;
    v24 = 0;
    v25 = 0;
    v20 = xpc_string_create(string);
    *a2 = v20;
    if (!v20)
    {
      *a2 = xpc_null_create();
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(*string);
    }

    goto LABEL_52;
  }

  v5 = v30[5];
  v6 = v30[6];
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_1000971C8(v5, v6, string, v8, 1);
  v9 = v30[5];
  v10 = v30[6];
  if (v9 == v10)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (*(v9 + 23) < 0)
    {
      sub_10000FFF8(__p, *v9, *(v9 + 1));
    }

    else
    {
      v11 = *v9;
      v27 = *(v9 + 2);
      *__p = v11;
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    v13 = HIBYTE(v27);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      if (size + HIBYTE(v27) >= 0x3E9)
      {
        goto LABEL_47;
      }

      goto LABEL_16;
    }

    if (__p[1] + size >= 0x3E9)
    {
      break;
    }

LABEL_16:
    if (size)
    {
      if ((v37 & 0x80u) == 0)
      {
        v14 = v36;
      }

      else
      {
        v14 = v36[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v15 = v37;
      }

      else
      {
        v15 = v36[1];
      }

      std::string::append(&v35, v14, v15);
      v13 = HIBYTE(v27);
    }

    if (v13 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v13 >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = __p[1];
    }

    std::string::append(&v35, v16, v17);
    if ((v39 & 0x80u) == 0)
    {
      v18 = v38;
    }

    else
    {
      v18 = v38[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v19 = v39;
    }

    else
    {
      v19 = v38[1];
    }

    std::string::append(&v35, v18, v19);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 24);
    if (v9 == v10)
    {
      goto LABEL_47;
    }
  }

  operator delete(__p[0]);
LABEL_47:
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v35;
  }

  else
  {
    v21 = v35.__r_.__value_.__r.__words[0];
  }

  v22 = xpc_string_create(v21);
  *a2 = v22;
  if (!v22)
  {
    *a2 = xpc_null_create();
  }

LABEL_52:
  _Block_object_dispose(&v29, 8);
  *string = v34;
  sub_1000388A4(string);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_100095058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000950F8(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = sub_100093A2C;
  v15 = sub_100093A50;
  memset(v16, 0, sizeof(v16));
  v5 = *a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_10009536C;
  v7[3] = &unk_1002AE650;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  v7[4] = &v11;
  if (!xpc_array_apply(v5, v7))
  {
    sub_1000963F4((v12 + 5), 0, 0, 0);
  }

  v6 = v12;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_100096FA0(a3, v6[5], v6[6], (v6[6] - v6[5]) >> 3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  _Block_object_dispose(&v11, 8);
  v17 = v16;
  sub_10009634C(&v17);
}

void sub_100095284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  xpc_release(object);
  _Block_object_dispose(&a21, 8);
  *(v22 - 40) = v21;
  sub_10009634C((v22 - 40));
  _Unwind_Resume(a1);
}

xpc_object_t sub_1000952FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10009536C(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_string)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      v7 = v6;
      if (v6)
      {
        v14 = v6;
      }

      else
      {
        v7 = xpc_null_create();
        v14 = v7;
        if (!v7)
        {
          v9 = xpc_null_create();
          v7 = 0;
          goto LABEL_19;
        }
      }

      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        xpc_retain(v7);
        goto LABEL_20;
      }

      v9 = xpc_null_create();
LABEL_19:
      v14 = v9;
LABEL_20:
      xpc_release(v7);
      v17 = a1 + 40;
      v18 = a2;
      v10 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v10 = *v10;
      }

      objecta[0] = &v14;
      objecta[1] = v10;
      sub_100064530(&v17, &v21);
      v11 = v21;
      if (v21)
      {
        xpc_retain(v21);
        v20 = v11;
      }

      else
      {
        v11 = xpc_null_create();
        v20 = v11;
        if (!v11)
        {
          v11 = 0;
          v20 = xpc_null_create();
          goto LABEL_26;
        }
      }

      xpc_retain(v11);
LABEL_26:
      sub_10000F50C(objecta, &v20, &v13);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v11);
      xpc_release(v21);
      xpc_release(v13);
      v13 = 0;
      sub_100095630(*(*(a1 + 32) + 8) + 40, &v14);
      xpc_release(v14);
      return 1;
    }

    return 0;
  }

  v17 = a1 + 40;
  v18 = a2;
  sub_10000BC98(&v17, &v19);
  if (*(a1 + 71) < 0)
  {
    sub_10000FFF8(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v16 = *(a1 + 64);
  }

  sub_100093FBC(&v19, __p, objecta);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v19);
  v19 = 0;
  if (xpc_get_type(objecta[0]) != &_xpc_type_dictionary)
  {
    xpc_release(objecta[0]);
    return 0;
  }

  sub_100095630(*(*(a1 + 32) + 8) + 40, objecta);
  xpc_release(objecta[0]);
  return 1;
}

uint64_t sub_100095630(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100096E8C(a1, a2);
  }

  else
  {
    sub_100096638(a1, *(a1 + 8), a2);
    result = v3 + 8;
    *(a1 + 8) = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

xpc_object_t sub_100095690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *(a1 + 40) = result;
  }

  if (*(a2 + 71) < 0)
  {
    return sub_10000FFF8((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  return result;
}

void sub_10009571C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

uint64_t sub_10009575C(uint64_t a1, const std::string::value_type *a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  sub_10000F2A8((a1 + 32), byte_1002D8398, &v27);
  v7 = std::string::append(&v27, a2);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v29 = v7->__r_.__value_.__r.__words[2];
  v28 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (sub_100094570(object))
  {
    v27.__r_.__value_.__r.__words[0] = a1 + 64;
    v27.__r_.__value_.__l.__size_ = a2;
    sub_10000BBB0(&v27, &v24);
    sub_1000945D0(&v24, &v25);
    v9 = &v28;
    if (v29 < 0)
    {
      v9 = v28;
    }

    v22 = a1 + 56;
    v23 = v9;
    sub_1000947D8(&v22, &v25, &objecta);
    xpc_release(objecta);
    objecta = 0;
    xpc_release(v25);
    v25 = 0;
    xpc_release(v24);
    v24 = 0;
  }

  else if (sub_100094858(object))
  {
    v27.__r_.__value_.__r.__words[0] = a1 + 64;
    v27.__r_.__value_.__l.__size_ = a2;
    sub_10000BBB0(&v27, &v19);
    sub_1000948B8(&v19, &v20);
    v10 = &v28;
    if (v29 < 0)
    {
      v10 = v28;
    }

    v22 = a1 + 56;
    v23 = v10;
    sub_10000F50C(&v22, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
    xpc_release(v19);
    v19 = 0;
  }

  else if (sub_100094CA8(object))
  {
    v27.__r_.__value_.__r.__words[0] = a1 + 64;
    v27.__r_.__value_.__l.__size_ = a2;
    sub_10000BBB0(&v27, &v16);
    sub_100094D08(&v16, &v17);
    v11 = &v28;
    if (v29 < 0)
    {
      v11 = v28;
    }

    v22 = a1 + 56;
    v23 = v11;
    sub_10000F50C(&v22, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
    xpc_release(v16);
    v16 = 0;
  }

  else
  {
    v12 = qword_1002D83B0;
    if (qword_1002D83B0 != qword_1002D83B8)
    {
      while (*v12 != type)
      {
        if (++v12 == qword_1002D83B8)
        {
          goto LABEL_23;
        }
      }
    }

    if (v12 != qword_1002D83B8)
    {
      v27.__r_.__value_.__r.__words[0] = a1 + 64;
      v27.__r_.__value_.__l.__size_ = a2;
      v13 = &v28;
      if (v29 < 0)
      {
        v13 = v28;
      }

      v22 = a1 + 56;
      v23 = v13;
      sub_1000944E8(&v22, &v27, &v15);
      xpc_release(v15);
      v15 = 0;
    }
  }

LABEL_23:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  return 1;
}

void sub_100095A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19)
{
  xpc_release(object);
  if (*(v19 - 41) < 0)
  {
    operator delete(*(v19 - 64));
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_100095AA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_10000FFF8((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 56) = xpc_null_create();
  }

  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a1 + 64) = result;
  return result;
}

void sub_100095B2C(uint64_t a1)
{
  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_100095B94(uint64_t a1, uint64_t a2)
{
  v4[0] = a1 + 40;
  v4[1] = a2;
  v3[0] = a1 + 32;
  v3[1] = a2;
  sub_1000944E8(v3, v4, &v5);
  xpc_release(v5);
  return 1;
}

xpc_object_t sub_100095BE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(a1 + 32) = xpc_null_create();
  }

  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void sub_100095C44(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t sub_100095C84(uint64_t a1, uint64_t a2)
{
  v4[0] = a1 + 40;
  v4[1] = a2;
  v3[0] = a1 + 32;
  v3[1] = a2;
  sub_1000944E8(v3, v4, &v5);
  xpc_release(v5);
  return 1;
}

uint64_t sub_100095D6C(uint64_t a1, int a2, xpc_object_t object)
{
  v3 = object;
  type = xpc_get_type(object);
  if (type == &_xpc_type_int64 && !xpc_int64_get_value(v3) || type == &_xpc_type_uint64 && !xpc_uint64_get_value(v3) || type == &_xpc_type_double && xpc_double_get_value(v3) == 0.0)
  {
    v6 = xpc_null_create();
    xpc_array_append_value(*(a1 + 32), v6);
    xpc_release(v6);
  }

  else
  {
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v3 = xpc_null_create();
    }

    xpc_array_append_value(*(a1 + 32), v3);
    xpc_release(v3);
  }

  return 1;
}

xpc_object_t sub_100095E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

__n128 sub_100095EF8(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

char *sub_100095F48(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    return 0;
  }

  result = xpc_string_get_string_ptr(object);
  if (result)
  {
    sub_100007ECC(__p, result);
    sub_100095FF0((*(*(a1 + 32) + 8) + 40), __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  return result;
}

void sub_100095FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100095FF0(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100097088(a1, a2);
  }

  else
  {
    sub_100097028(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

BOOL sub_100096030(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(object);
    length = xpc_data_get_length(object);
    if (length >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100023410();
    }

    v8 = length;
    if (length >= 0x17)
    {
      operator new();
    }

    v13 = length;
    if (length)
    {
      memmove(&__dst, bytes_ptr, length);
    }

    *(&__dst + v8) = 0;
    v9 = v13;
    v10 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v9 = *(&__dst + 1);
    }

    v5 = v9 != 0;
    if (v9)
    {
      sub_100095FF0((*(*(a1 + 32) + 8) + 40), &__dst);
      if ((v13 & 0x80) == 0)
      {
        return v5;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100203550();
      if ((v10 & 0x80) == 0)
      {
        return v5;
      }
    }

    else if ((v10 & 0x80) == 0)
    {
      return v5;
    }

    operator delete(__dst);
    return v5;
  }

  return 0;
}

void sub_100096188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000961A4(int a1, xpc_object_t *a2)
{
  if (a1 != 3973442)
  {
    return 1;
  }

  value = xpc_dictionary_get_value(*a2, "no_data_available");
  return xpc_get_type(value) != &_xpc_type_BOOL || !xpc_BOOL_get_value(value);
}

uint64_t sub_100096214(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100096288(result, a4);
  }

  return result;
}

void sub_10009626C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100096288(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000962C4(a1, a2);
  }

  sub_100033FD0();
}

void sub_1000962C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_10009630C(uint64_t *a1)
{
  if (*a1)
  {
    sub_10000F1BC(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10009634C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000963A0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000963A0(uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; *i = 0)
  {
    v5 = *--i;
    xpc_release(v5);
  }

  *(a1 + 8) = a2;
}

void sub_1000963F4(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_100096510(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100096550(a1, v11);
    }

    sub_100033FD0();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 3)
  {
    sub_100096708(&v15, a2, a3, v8);
    sub_1000963A0(a1, v13);
  }

  else
  {
    sub_100096708(&v14, a2, (a2 + v12), v8);
    *(a1 + 8) = sub_10009658C(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

void sub_100096510(void **a1)
{
  if (*a1)
  {
    sub_1000963A0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100096550(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10009678C(a1, a2);
  }

  sub_100033FD0();
}

void **sub_10009658C(uint64_t a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100096638(a1, v4, v6++);
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100096678(v9);
  return v4;
}

xpc_object_t sub_100096638(uint64_t a1, void **a2, void **a3)
{
  v3 = *a3;
  *a2 = *a3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t sub_100096678(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000966C4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000966C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *--v6;
      xpc_release(v7);
      *v6 = 0;
    }

    while (v6 != a5);
  }
}

xpc_object_t *sub_100096708(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        xpc_retain(*v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      v8 = *a4;
      *a4 = v7;
      xpc_release(v8);
      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10009678C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100033BCC();
}

xpc_object_t *sub_1000967D4(uint64_t *a1, xpc_object_t *a2, xpc_object_t *a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        sub_10009696C(a1, a2, a1[1], &a2[a5]);
        v19 = &a3[a5];
      }

      else
      {
        a1[1] = sub_100096B44(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_10009696C(a1, v5, v10, &v5[a5]);
        v19 = (a3 + v17);
      }

      sub_100096C60(v21, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_100033FD0();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v21[4] = a1;
    if (v15)
    {
      sub_10009678C(a1, v15);
    }

    v21[0] = 0;
    v21[1] = 8 * v16;
    v21[2] = 8 * v16;
    v21[3] = 0;
    sub_100096A0C(v21, a3, a5);
    v5 = sub_100096A88(a1, v21, v5);
    sub_100096DE0(v21);
  }

  return v5;
}

xpc_object_t *sub_10009696C(uint64_t a1, xpc_object_t *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v10;
      *v10++ = xpc_null_create();
      ++v8;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100096BE8(&v12, a2, v7, v6);
}

void *sub_100096A0C(void *result, void **a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[a3];
    do
    {
      v8 = *a2;
      *v4 = *a2;
      if (v8)
      {
        result = xpc_retain(v8);
      }

      else
      {
        result = xpc_null_create();
        *v4 = result;
      }

      ++v4;
      ++a2;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_100096A88(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v6 = *(a2 + 8);
  sub_100096CE4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_100096CE4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void **sub_100096B44(uint64_t a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *v4 = xpc_null_create();
      }

      ++v6;
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100096678(v9);
  return v4;
}

xpc_object_t *sub_100096BE8(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = (a4 - 8);
  v8 = a3;
  while (v8 != a2)
  {
    v9 = *--v8;
    *v8 = xpc_null_create();
    v10 = *v7;
    *v7-- = v9;
    v4 -= 8;
    xpc_release(v10);
  }

  return a3;
}

xpc_object_t *sub_100096C60(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        xpc_retain(*v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      v8 = *a4;
      *a4 = v7;
      xpc_release(v8);
      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100096CE4(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, xpc_object_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7++ = xpc_null_create();
      a4 = ++v12;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_100096D9C(a1, a2, a3);
  return sub_100096678(v9);
}

void sub_100096D9C(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      xpc_release(*v4);
      *v4++ = 0;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100096DE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v5 = *(i - 8);
    v4 = (i - 8);
    *(a1 + 16) = v4;
    xpc_release(v5);
    *v4 = 0;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}