void sub_1002BF97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::ios::~ios();
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1002BFAA4(uint64_t a1)
{
  result = sub_1004D158C(a1);
  if (result)
  {
    v3 = time(0);
    v4 = *(a1 + 240);
    return !v4 || v3 <= *(a1 + 232) + v4;
  }

  return result;
}

void sub_1002BFBA0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "MobileTerminatedMMS", "", v5, 2u);
    }
  }
}

uint64_t sub_1002BFC18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002BFC84(std::mutex *this@<X0>, void *a2@<X8>)
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

void sub_1002BFD48(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_10000BD98(a1);
}

void sub_1002BFDA8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_1002BFDC4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1002BFDE4(Registry **a1@<X0>, void *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  ServiceMap = Registry::getServiceMap(*a1);
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
  v17 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_14;
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
  if (!v13)
  {
LABEL_14:
    if (objc_opt_class())
    {
      operator new();
    }

    goto LABEL_16;
  }

LABEL_10:
  if (!(*(*v13 + 88))(v13))
  {
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_101FBA158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA158))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FBA150, kCtLoggingSystemName, kCALL_TELEPHONY_CONTROLLER_LOG_DOMAIN);
    __cxa_guard_release(&qword_101FBA158);
  }

  v15 = qword_101FBA150;
  if (os_log_type_enabled(qword_101FBA150, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N NonUI build, not instantiating TelephonyController", v16, 2u);
  }

LABEL_16:
  *a2 = 0;
  a2[1] = 0;
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1002C0020(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_101FBA158);
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0330(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  operator delete();
}

void sub_1002C03E8(uint64_t a1)
{
  [*(a1 + 32) registerForRestProperties_sync];
  v2 = [*(a1 + 32) callObserver];
  [v2 setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
}

void sub_1002C0640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0694(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/current_calls");
  v4[0] = off_101E39288;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002C0748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t object, xpc_object_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C10DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  *v4 = 0;
  if (v3)
  {
    if (os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017697EC();
    }
  }

  else
  {
    *v4 = 1;
  }
}

char *sub_1002C115C(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1002C11C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C11D8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1002C157C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object, uint64_t a21, xpc_object_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C165C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017698DC();
  }
}

void sub_1002C1A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object, uint64_t a21, xpc_object_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C1B04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769954();
  }
}

void sub_1002C2024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, xpc_object_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object)
{
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  *(v36 - 128) = &a17;
  sub_1000B2DB4((v36 - 128));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C2228(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E390A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C22B4(uint64_t a1)
{

  operator delete();
}

id sub_1002C2368(uint64_t a1, void *a2)
{
  *a2 = off_101E390F8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C23B8(id *a1)
{

  operator delete(a1);
}

void sub_1002C23F4(uint64_t a1, xpc_object_t *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v8[0] = 0;
  v9 = v6;
  v10 = v5;
  v7 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedMODial:&object responder:v8];
  objc_autoreleasePoolPop(v7);
  sub_1000C05C4(v8);
  xpc_release(object);
}

void sub_1002C2480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  sub_1000C05C4(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C24BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E39168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C2508(uint64_t a1)
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

void sub_1002C25B4(uint64_t a1)
{

  operator delete();
}

id sub_1002C2668(uint64_t a1, void *a2)
{
  *a2 = off_101E39188;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C26B8(id *a1)
{

  operator delete(a1);
}

void sub_1002C26F4(uint64_t a1, xpc_object_t *a2)
{
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedAnswer:&object];
  objc_autoreleasePoolPop(v4);
  xpc_release(object);
}

uint64_t sub_1002C2778(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E391E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002C27F0(uint64_t a1)
{

  operator delete();
}

id sub_1002C28A4(uint64_t a1, void *a2)
{
  *a2 = off_101E39208;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C28F4(id *a1)
{

  operator delete(a1);
}

void sub_1002C2930(uint64_t a1, xpc_object_t *a2)
{
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedHold:&object];
  objc_autoreleasePoolPop(v4);
  xpc_release(object);
}

uint64_t sub_1002C29B4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E39268))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C2A70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E39288;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002C2AA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002C2B10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C2B70(uint64_t a1, char *a2)
{
  *a1 = off_101E39358;
  sub_10000501C((a1 + 8), a2);
  sub_10000501C(&v7, a2);
  v4 = std::string::append(&v7, ".tmp", 4uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v4->__r_.__value_.__l + 2);
  *(a1 + 32) = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1002C2C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002C2C60(uint64_t a1)
{
  *a1 = off_101E39358;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  TMKXPCServer.shutdown()();
}

void sub_1002C2CD4(uint64_t a1)
{
  sub_1002C2C60(a1);

  operator delete();
}

BOOL sub_1002C2D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002C2D6C(a1, a2, a3, 0);
  result = 0;
  if (v5)
  {
    v7 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v7 = v7->__pn_.__r_.__value_.__r.__words[0];
    }

    v8 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v8 = v8->__pn_.__r_.__value_.__r.__words[0];
    }

    rename(v7, v8, v4);
    return v9 == 0;
  }

  return result;
}

BOOL sub_1002C2D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if ((v7 + v8 + 1) >= 0x200)
  {
    __TUAssertTrigger();
  }

  bzero(v72, 0x248uLL);
  sub_1002C38C0(v72);
  v36 = v72;
  if (*(&v72[4] + *(v72[0] - 24)))
  {
    v29 = 0;
    goto LABEL_51;
  }

  bzero(v70, 0x248uLL);
  sub_1002C38C0(v70);
  v35 = v70;
  if (*(&v71[2] + *(v70[0] - 24)))
  {
    v29 = 0;
    goto LABEL_50;
  }

  v68 = 0u;
  v69 = 0u;
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
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *__s = 0u;
  v39 = 0u;
  v9 = (v72 + *(v72[0] - 24));
  if (v9->__rdstate_)
  {
    goto LABEL_46;
  }

  v31 = 0;
  do
  {
    std::ios_base::getloc(v9);
    v10 = std::locale::use_facet(&v34, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v34);
    std::istream::getline();
    memset(&v34, 0, sizeof(v34));
    sub_10000501C(&v34, __s);
    v11 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_42;
    }

    v13 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v34 : v34.__r_.__value_.__r.__words[0];
    v14 = memchr(v13, 61, size);
    if (!v14)
    {
      goto LABEL_42;
    }

    v15 = v14 - v13;
    if (v15 == -1)
    {
      goto LABEL_42;
    }

    memset(&v33, 0, sizeof(v33));
    std::string::basic_string(&v33, &v34, 0, v15, &v32);
    memset(&v32, 0, sizeof(v32));
    std::string::basic_string(&v32, &v34, v15 + 1, 0xFFFFFFFFFFFFFFFFLL, &v37);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v33.__r_.__value_.__l.__size_;
    }

    v17 = *(a2 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 8);
    }

    if (v16 != v17)
    {
      goto LABEL_36;
    }

    v19 = (v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v33 : v33.__r_.__value_.__r.__words[0];
    v20 = v18 >= 0 ? a2 : *a2;
    if (memcmp(v19, v20, v16))
    {
      goto LABEL_36;
    }

    if ((a4 & 1) == 0)
    {
      std::string::operator=(&v32, a3);
      v31 = 1;
LABEL_36:
      v21 = sub_10000C030(v71);
      v22 = sub_10000C030(v21);
      v23 = sub_10000C030(v22);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v37, &std::ctype<char>::id);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v37);
      std::ostream::put();
      std::ostream::flush();
      goto LABEL_37;
    }

    v31 = 1;
LABEL_37:
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v11 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
LABEL_42:
    if (v11 < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v9 = (v72 + *(v72[0] - 24));
  }

  while (!v9->__rdstate_);
  if ((v31 & 1) == 0)
  {
LABEL_46:
    v25 = sub_10000C030(v71);
    v26 = sub_10000C030(v25);
    v27 = sub_10000C030(v26);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&v34, &std::ctype<char>::id);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
  }

  v29 = (*(&v71[2] + *(v70[0] - 24)) & 1) == 0;
LABEL_50:
  sub_1002C3A38(&v35);
  v70[0] = off_101E393E8;
  v71[52] = off_101E39438;
  v71[0] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_51:
  sub_1002C3A38(&v36);
  v72[0] = off_101E393E8;
  v72[54] = off_101E39438;
  v72[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v29;
}

void sub_1002C33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10.__locale_ = va_arg(va1, std::locale::__imp *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void *);
  std::locale::~locale(va);
  sub_1002C3A38(va1);
  sub_1002C3A94(&STACK[0x270]);
  sub_1002C3A38(va2);
  sub_1002C3A94(&STACK[0x4B8]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C34A8(uint64_t a1, uint64_t a2)
{
  bzero(v50, 0x248uLL);
  sub_1002C38C0(v50);
  v16 = v50;
  if (*(&v50[4] + *(v50[0] - 24)))
  {
LABEL_24:
    v4 = 0;
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
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
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *__s = 0u;
    v19 = 0u;
    for (i = (v50 + *(v50[0] - 24)); !i->__rdstate_; i = (v50 + *(v50[0] - 24)))
    {
      std::ios_base::getloc(i);
      v5 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      (v5->__vftable[2].~facet_0)(v5, 10);
      std::locale::~locale(&v15);
      std::istream::getline();
      if ((*(&v50[4] + *(v50[0] - 24)) & 2) != 0)
      {
        break;
      }

      memset(&v15, 0, sizeof(v15));
      sub_10000501C(&v15, __s);
      v6 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      if (!size || ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &v15) : (v8 = v15.__r_.__value_.__r.__words[0]), (v9 = memchr(v8, 61, size)) == 0 || (v10 = v9 - v8, v10 == -1)))
      {
        if (v6 < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        goto LABEL_24;
      }

      memset(&v14, 0, sizeof(v14));
      std::string::basic_string(&v14, &v15, 0, v10, &__p);
      memset(&__p, 0, sizeof(__p));
      std::string::basic_string(&__p, &v15, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, &v17);
      v17 = &v14;
      v11 = sub_100173F08(a2, &v14.__r_.__value_.__l.__data_);
      std::string::operator=((v11 + 56), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    v4 = 1;
  }

  sub_1002C3A38(&v16);
  v50[0] = off_101E393E8;
  v50[54] = off_101E39438;
  v50[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

uint64_t sub_1002C38C0(uint64_t a1)
{
  *(a1 + 480) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_101E39410;
  *a1 = &off_101E39528;
  *(a1 + 432) = &off_101E39550;
  std::ios_base::init((a1 + 432), (a1 + 24));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *a1 = off_101E393E8;
  *(a1 + 432) = off_101E39438;
  *(a1 + 16) = off_101E39410;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1002C39F8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void **sub_1002C3A38(void **a1)
{
  v2 = *a1;
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  return a1;
}

void *sub_1002C3A94(void *a1)
{
  *a1 = off_101E393E8;
  a1[54] = off_101E39438;
  a1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

BOOL sub_1002C3B38(uint64_t a1, uint64_t a2)
{
  sub_10000501C(__p, "");
  v4 = sub_1002C2D6C(a1, a2, __p, 1);
  v6 = v4;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v7 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v7 = v7->__pn_.__r_.__value_.__r.__words[0];
  }

  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v8 = v8->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(v7, v8, v5);
  return v9 == 0;
}

void sub_1002C3BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002C3BF4()
{
  bzero(v3, 0x248uLL);
  sub_1002C38C0(v3);
  v2 = v3;
  v0 = (*(&v3[4] + *(v3[0] - 24)) & 1) == 0;
  sub_1002C3A38(&v2);
  v3[0] = off_101E393E8;
  v3[54] = off_101E39438;
  v3[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v0;
}

uint64_t sub_1002C3D34(void *a1)
{
  *(a1 - 2) = off_101E393E8;
  a1[52] = off_101E39438;
  *a1 = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();

  return std::ios::~ios();
}

uint64_t sub_1002C3DD8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_101E393E8;
  v1[54] = off_101E39438;
  v1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();

  return std::ios::~ios();
}

void sub_1002C3E98(void *a1)
{
  *a1 = off_101E393E8;
  a1[54] = off_101E39438;
  a1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

void sub_1002C3F5C(void *a1)
{
  *(a1 - 2) = off_101E393E8;
  a1[52] = off_101E39438;
  *a1 = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

void sub_1002C4018(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_101E393E8;
  v1[54] = off_101E39438;
  v1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

void *sub_1002C40F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10007D840(result, a2);
  }

  return result;
}

void sub_1002C41AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C41C8(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002C4248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

void sub_1002C426C(void *a1, uint64_t a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "DATA.nwpolicySession");
  sub_1002C436C(a1 + 1, a3, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = &off_101E395D8;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002C43F8();
}

void sub_1002C432C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  DataConnectionAgentPolicySessionInterface::~DataConnectionAgentPolicySessionInterface(v11);
  ctu::OsLogLogger::~OsLogLogger((v11 + 5));
  sub_1000C0544(v11 + 1);
  _Unwind_Resume(a1);
}

void *sub_1002C436C(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1002C43D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1002C44B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C4590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

DataConnectionAgentPolicySessionInterface *sub_1002C45B8(DataConnectionAgentPolicySessionInterface *this)
{
  *this = &off_101E395D8;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataConnectionAgentPolicySessionInterface::~DataConnectionAgentPolicySessionInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_1002C4620(DataConnectionAgentPolicySessionInterface *a1)
{
  sub_1002C45B8(a1);

  operator delete();
}

uint64_t sub_1002C4658@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1002C4674(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "DATA.nwpolicySession");
  sub_1002C4730(a1 + 1, a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E39600;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  return a1;
}

void *sub_1002C4730(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1002C4798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C47BC(uint64_t a1)
{
  *a1 = off_101E39600;

  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataConnectionAgentPolicySessionPrivateInterface::~DataConnectionAgentPolicySessionPrivateInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1002C482C(uint64_t a1)
{
  sub_1002C47BC(a1);

  operator delete();
}

id sub_1002C4864(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I initializing common CCNEPolicySession...", buf, 2u);
    }

    v3 = objc_alloc_init(CCNEPolicySession);
    v4 = *(a1 + 64);
    *(a1 + 64) = v3;

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I common CCNEPolicySession initialized", v8, 2u);
    }
  }

  v6 = *(a1 + 64);

  return v6;
}

void sub_1002C49B8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002C4A8C);
  __cxa_rethrow();
}

void sub_1002C49F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C4A4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C4A8C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002C4B38(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002C4C0C);
  __cxa_rethrow();
}

void sub_1002C4B78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C4BCC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C4C0C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002C4C38(uint64_t a1)
{
  v21 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v21 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v21 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v21 = v4;
LABEL_9:
  xpc_release(v3);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = xpc_string_create(v5);
  v20 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v20 = v6;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpFolderPrefix", &v20);
  xpc_release(v6);
  v20 = 0;
  if (*(a1 + 47) >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = xpc_string_create(v7);
  v19 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v19 = v8;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateSnapshotFolderPath", &v19);
  xpc_release(v8);
  v19 = 0;
  v9 = xpc_BOOL_create(*(a1 + 48));
  v18 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v18 = v9;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpLogFilter", &v18);
  xpc_release(v9);
  v18 = 0;
  v12 = *(a1 + 56);
  v11 = a1 + 56;
  v10 = v12;
  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = xpc_string_create(v13);
  v17 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v17 = v14;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpReason", &v17);
  xpc_release(v14);
  v16 = v21;
  v17 = 0;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v16 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(103, &v16, &object);
  xpc_release(object);
  xpc_release(v16);
  xpc_release(v21);
}

void sub_1002C4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(*(v14 - 24));
  _Unwind_Resume(a1);
}

void sub_1002C4F28(uint64_t a1)
{
  v21 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v21 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v21 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v21 = v4;
LABEL_9:
  xpc_release(v3);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = xpc_string_create(v5);
  v20 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v20 = v6;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpFolderPrefix", &v20);
  xpc_release(v6);
  v20 = 0;
  if (*(a1 + 47) >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = xpc_string_create(v7);
  v19 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v19 = v8;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateSnapshotFolderPath", &v19);
  xpc_release(v8);
  v19 = 0;
  v9 = xpc_BOOL_create(*(a1 + 48));
  v18 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v18 = v9;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpLogFilter", &v18);
  xpc_release(v9);
  v18 = 0;
  v12 = *(a1 + 56);
  v11 = a1 + 56;
  v10 = v12;
  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = xpc_string_create(v13);
  v17 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v17 = v14;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpReason", &v17);
  xpc_release(v14);
  v16 = v21;
  v17 = 0;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v16 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(104, &v16, &object);
  xpc_release(object);
  xpc_release(v16);
  xpc_release(v21);
}

void sub_1002C5154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(*(v14 - 24));
  _Unwind_Resume(a1);
}

void sub_1002C5218(uint64_t a1)
{
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  std::string::append(&__dst, " (State Dump Skipped!)", 0x16uLL);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_10031538C(&v6);
  *__p = 0u;
  v5 = 0u;
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  sub_1003154F8(&v6, &__str);
  std::string::operator=(v2, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&__p[1], &__dst);
  LOBYTE(__p[0]) = 1;
  sub_1000167D4(&v2[24], "/var/wireless/Library/Logs/CrashReporter/Baseband/", 0x32uLL);
  usleep(0x3D090u);
  sub_1002C4C38(v2);
  usleep(0x3D090u);
  sub_1002C4F28(v2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(*&v2[24]);
  }

  if ((v2[23] & 0x80000000) != 0)
  {
    operator delete(*v2);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1002C538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10014476C(&a16);
  sub_1001454F4(&a26);
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::sendEnterLowPowerNotification(C2KRadioModule *this)
{
  v2 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(100, &v2, &object);
  xpc_release(object);
  xpc_release(v2);
}

void sub_1002C5440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void C2KRadioModule::sendEnteredLowPowerNotification(C2KRadioModule *this)
{
  v2 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(101, &v2, &object);
  xpc_release(object);
  xpc_release(v2);
}

void sub_1002C54C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C54F4()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(108, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1002C5550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C557C()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(55, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1002C55D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C5604(int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    object = v2;
  }

  else
  {
    v3 = xpc_null_create();
    object = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  object = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(a1);
  v8 = v5;
  if (!v5)
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  sub_10009F704(&object, @"kCTRadioVoiceLinkQualityKey", &v8);
  xpc_release(v5);
  v7 = object;
  v8 = 0;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(120, &v7, &v6);
  xpc_release(v6);
  xpc_release(v7);
  xpc_release(object);
}

void sub_1002C5738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1002C579C(unsigned int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    object = v2;
  }

  else
  {
    v3 = xpc_null_create();
    object = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  object = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(a1);
  v8 = v5;
  if (!v5)
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  sub_10009F704(&object, @"kCTRadioStateKey", &v8);
  xpc_release(v5);
  v7 = object;
  v8 = 0;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(141, &v7, &v6);
  xpc_release(v6);
  xpc_release(v7);
  xpc_release(object);
}

void sub_1002C58D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1002C5938(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1002C5974(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1002C59DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  if ((atomic_load_explicit(&qword_101FBA1A0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_101FBA1A0))
    {
      sub_1002C7D30(xmmword_101FBA160, " \f\n\r\t\v", "()=<>", 0);
      __cxa_atexit(sub_1002C5D28, xmmword_101FBA160, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA1A0);
    }
  }

  memset(v21, 0, sizeof(v21));
  v4 = sub_1002C7E58(v21, a1, xmmword_101FBA160);
  *v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  sub_1002C5D6C(v4, v14);
  *v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v7 = 0u;
  sub_1002C5E58(v21, v7);
  v5 = 0;
  v6 = 0;
  sub_1002C8348();
}

uint64_t sub_1002C5D28(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002C5D6C(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1002C7F30(a2, v4, *a1, *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1002C5E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C5E58(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1002C7F30(a2, v4, *(a1 + 8), *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1002C5F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C5F48(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002C5F9C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void sub_1002C5FCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a4;
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  if (v8 == 1 && (v9 & 1) != 0)
  {
    if (*(a2 + 64) != *(a1 + 64) || *(a2 + 72) != *(a1 + 72))
    {
      *a5 = 0;
      a5[1] = 0;
LABEL_8:
      std::locale::locale(&v33);
      std::locale::locale(&v32, &v33);
      v10 = *(a1 + 111);
      if (v10 >= 0)
      {
        v11 = (a1 + 88);
      }

      else
      {
        v11 = *(a1 + 88);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 111);
      }

      else
      {
        v12 = *(a1 + 96);
      }

      if (v12)
      {
        v13 = v12 - 1;
        if ((v12 - 1) >= 4)
        {
          v13 = 4;
        }

        v14 = v13 + 1;
        v15 = "false";
        v16 = 5;
        do
        {
          if (!sub_1001DAECC(&v32, v11, v15))
          {
            goto LABEL_23;
          }

          ++v11;
          ++v15;
          --v16;
          --v14;
        }

        while (v14);
        std::locale::~locale(&v32);
        std::locale::~locale(&v33);
        if (v12 + v16 == 5 && !v16)
        {
LABEL_39:
          sub_1002C8658();
        }
      }

      else
      {
LABEL_23:
        std::locale::~locale(&v32);
        std::locale::~locale(&v33);
      }

      if (*(a1 + 80) == 1)
      {
        std::locale::locale(&v33);
        std::locale::locale(&v32, &v33);
        v17 = *(a1 + 111);
        if (v17 >= 0)
        {
          v18 = (a1 + 88);
        }

        else
        {
          v18 = *(a1 + 88);
        }

        if (v17 >= 0)
        {
          v19 = *(a1 + 111);
        }

        else
        {
          v19 = *(a1 + 96);
        }

        if (v19)
        {
          v20 = v19 - 1;
          if ((v19 - 1) >= 3)
          {
            v20 = 3;
          }

          v21 = v20 + 1;
          v22 = "true";
          v23 = 4;
          do
          {
            if (!sub_1001DAECC(&v32, v18, v22))
            {
              goto LABEL_40;
            }

            ++v18;
            ++v22;
            --v23;
            --v21;
          }

          while (v21);
          std::locale::~locale(&v32);
          std::locale::~locale(&v33);
          if (v19 + v23 == 4 && !v23)
          {
            goto LABEL_39;
          }
        }

        else
        {
LABEL_40:
          std::locale::~locale(&v32);
          std::locale::~locale(&v33);
        }

        if (*(a1 + 80))
        {
          if (*(a1 + 111) >= 0)
          {
            v24 = (a1 + 88);
          }

          else
          {
            v24 = *(a1 + 88);
          }

          v25 = *v24;
          if (v25 < 0 || (_DefaultRuneLocale.__runetype[v25] & 0x400) == 0)
          {
            v26 = a3[1];
            if (v26 && std::__shared_weak_count::lock(v26) && *a3)
            {
              if (*(a1 + 80))
              {
                LODWORD(v33.__locale_) = (*(**a3 + 16))(*a3, a1 + 88);
                if (LODWORD(v33.__locale_) != 2)
                {
                  if (*(a1 + 80))
                  {
                    sub_1002C89E8();
                  }

                  __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
                }

                exception = __cxa_allocate_exception(8uLL);
                *exception = &off_101E39960;
              }

              __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
            }

            v29 = __cxa_allocate_exception(8uLL);
            *v29 = &off_101E39960;
          }

          v33.__locale_ = 0;
          std::stoi((a1 + 88), &v33, 10);
          if (*(a1 + 80))
          {
            v27 = *(a1 + 111);
            if ((v27 & 0x80u) != 0)
            {
              v27 = *(a1 + 96);
            }

            if (v33.__locale_ >= v27)
            {
              sub_1002C8894();
            }

            v31 = __cxa_allocate_exception(8uLL);
            *v31 = &off_101E39960;
          }

          __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
        }
      }

LABEL_59:
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }
  }

  else if (v8 != v9)
  {
    *a5 = 0;
    a5[1] = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_8;
  }

  v28 = __cxa_allocate_exception(8uLL);
  *v28 = &off_101E39960;
}

uint64_t sub_1002C6530(uint64_t result, char a2)
{
  if (*(result + 4))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  *result = a2;
  return result;
}

_DWORD *sub_1002C658C(_DWORD *result, _DWORD *a2)
{
  if (result[1] != a2[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  *result = *a2;
  return result;
}

uint64_t sub_1002C65F4(_DWORD *a1)
{
  if (a1[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  return *a1;
}

BOOL sub_1002C6650(int *a1, int *a2)
{
  if (!a2 || (v3 = a1[1], v3 == 2) || v3 != a2[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  if (a1[1])
  {
    v5 = *a1;
    v6 = *a2;
  }

  else
  {
    v5 = *a1;
    v6 = *a2;
  }

  return v5 == v6;
}

void sub_1002C6704(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      return;
    }
  }

  else if (!*(a1 + 31))
  {
    return;
  }

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
        (*(*v5 + 24))(v5, a1);
      }

      sub_100004A34(v4);
    }
  }
}

BOOL sub_1002C67B4(_DWORD *a1, _DWORD *a2)
{
  if (!a2 || a1[1] != 1 || a2[1] != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  return *a1 < *a2;
}

BOOL sub_1002C6854(_DWORD *a1, _DWORD *a2)
{
  if (!a2 || a1[1] != 1 || a2[1] != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  return *a1 > *a2;
}

void sub_1002C68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    v10 = (a1 + 24);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(a1 + 8);
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
    *(a1 + 24) = a5;
    v10 = (a1 + 24);
  }

  *a1 = off_101E398C0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v12[0] = v9;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C5FCC(a2, a3, v12, *v10, &v13);
}

void sub_1002C6C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  v15 = v12[7];
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v12[5];
  if (v16)
  {
    sub_100004A34(v16);
  }

  *v12 = v13;
  v17 = v12[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C6CD4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return sub_1002C65F4(*(a1 + 32));
  }

  v2 = *(a1 + 64);
  if (v2 == 2)
  {
    return sub_1002C6854(*(a1 + 32), v1);
  }

  if (v2 == 1)
  {
    return sub_1002C67B4(*(a1 + 32), v1);
  }

  if (v2)
  {
    return 0;
  }

  return sub_1002C6650(*(a1 + 32), v1);
}

void sub_1002C6D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  a1[1] = v9;
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = a5;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    a1[3] = a5;
  }

  *a1 = off_101E398E8;
  a1[4] = 0;
  a1[5] = 0;
  v10 = *(a3 + 80);
  v11 = *(a2 + 80);
  if (v10 == 1 && (v11 & 1) != 0)
  {
    if (*(a3 + 64) == *(a2 + 64) && *(a3 + 72) == *(a2 + 72))
    {
LABEL_22:
      exception = __cxa_allocate_exception(8uLL);
      *exception = &off_101E39960;
    }
  }

  else
  {
    if (v10 == v11)
    {
      goto LABEL_22;
    }

    if ((v11 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }
  }

  v12 = *(a2 + 111);
  if (v12 < 0)
  {
    if (*(a2 + 96) != 1)
    {
      goto LABEL_20;
    }

    v13 = *(a2 + 88);
  }

  else
  {
    v13 = (a2 + 88);
    if (v12 != 1)
    {
      goto LABEL_20;
    }
  }

  if (*v13 == 40)
  {
    sub_1002C8BCC(a2);
    sub_1002C8C0C();
  }

LABEL_20:
  sub_1002C8D6C();
}

void sub_1002C6FDC(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    *(a1 + 24) = a5;
  }

  *a1 = off_101E39910;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  while (1)
  {
    v10 = *(a3 + 80);
    v11 = *(a2 + 80);
    if (v10 == 1 && (v11 & 1) != 0)
    {
      if (*(a3 + 64) != *(a2 + 64))
      {
        goto LABEL_14;
      }

      if (*(a3 + 72) == *(a2 + 72))
      {
        goto LABEL_30;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_30;
    }

    if ((v11 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

LABEL_14:
    std::locale::locale(&v20);
    std::locale::locale(v19, &v20);
    v12 = *(a2 + 111);
    if (v12 >= 0)
    {
      v13 = (a2 + 88);
    }

    else
    {
      v13 = *(a2 + 88);
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 111);
    }

    else
    {
      v14 = *(a2 + 96);
    }

    if (!v14)
    {
LABEL_29:
      std::locale::~locale(v19);
      std::locale::~locale(&v20);
LABEL_30:
      sub_1002C8F68();
    }

    v15 = v14 - 1;
    if ((v14 - 1) >= 2)
    {
      v15 = 2;
    }

    v16 = v15 + 1;
    v17 = 3;
    v18 = "not";
    do
    {
      if (!sub_1001DAECC(v19, v13, v18))
      {
        goto LABEL_29;
      }

      ++v13;
      ++v18;
      --v17;
      --v16;
    }

    while (v16);
    std::locale::~locale(v19);
    std::locale::~locale(&v20);
    if (v14 + v17 != 3 || v17)
    {
      goto LABEL_30;
    }

    *(a1 + 32) ^= 1u;
    sub_1002C8BCC(a2);
  }
}

void sub_1002C7284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  v16 = v14[6];
  if (v16)
  {
    sub_100004A34(v16);
  }

  *v14 = a9;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v6 = a4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 24) = a5;
  }

  *a1 = off_101E39938;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  sub_1002C9164();
}

void sub_1002C7670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale::__imp *a10, uint64_t a11, std::locale a12, uint64_t a13, std::locale a14)
{
  v16 = v14[7];
  if (v16)
  {
    v14[8] = v16;
    operator delete(v16);
  }

  a12.__locale_ = a10;
  sub_1000212F4(&a12);
  *v14 = a9;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(a1);
}

void **sub_1002C7708(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_1000210A8(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1000210F0(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_1002C77FC(uint64_t a1)
{
  result = (*(***(a1 + 32) + 16))(**(a1 + 32));
  v3 = *(a1 + 32);
  if ((*(a1 + 40) - v3) >= 0x11)
  {
    v4 = 2;
    v5 = 1;
    while (*(*(a1 + 56) + 4 * (v4 - 2)))
    {
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      result = 1;
LABEL_9:
      v5 = v4;
      v3 = *(a1 + 32);
      ++v4;
      if (v5 >= (*(a1 + 40) - v3) >> 4)
      {
        return result;
      }
    }

    if ((result & 1) == 0)
    {
      result = 0;
      goto LABEL_9;
    }

LABEL_7:
    result = (*(**(v3 + 16 * v5) + 16))(*(v3 + 16 * v5));
    goto LABEL_9;
  }

  return result;
}

void *sub_1002C78CC(void *a1)
{
  *a1 = off_101E398C0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  *a1 = off_101E39868;
  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1002C794C(void *a1)
{
  *a1 = off_101E398C0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  *a1 = off_101E39868;
  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

void *sub_1002C79EC(void *a1)
{
  *a1 = off_101E398E8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7A60(void *a1)
{
  *a1 = off_101E398E8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_1002C7AF4(void *a1)
{
  *a1 = off_101E39910;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7B68(void *a1)
{
  *a1 = off_101E39910;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1002C7BFC(uint64_t a1)
{
  *a1 = off_101E39938;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 32);
  sub_1000212F4(&v5);
  *a1 = off_101E39868;
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7C8C(uint64_t a1)
{
  *a1 = off_101E39938;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  sub_1000212F4(&v4);
  *a1 = off_101E39868;
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1002C7D30(uint64_t a1, char *__s, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 47) = v8;
  v10 = (a1 + 24);
  if (v8)
  {
    memmove(v10, __s, v8);
  }

  *(v10 + v9) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  if (a3)
  {
    sub_100016890(a1, a3);
  }

  return a1;
}

void sub_1002C7E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C7E58(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    sub_100005F2C((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1002C7F14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002C7F30(char *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v9;
  }

  v10 = *(a2 + 6);
  __dst[56] = *(a2 + 56);
  *(__dst + 6) = v10;
  *(__dst + 8) = a3;
  *(__dst + 9) = a4;
  __dst[80] = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_1002C8020(__dst);
  return __dst;
}

void sub_1002C7FE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C8020(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (*(result + 64) == v2)
    {
      result = 0;
    }

    else
    {
      result = sub_1002C8074(result, (result + 64), v2, (result + 88));
    }

    *(v1 + 80) = result;
  }

  return result;
}

uint64_t sub_1002C8074(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      v9 = sub_1002C8254(a1, *v8);
      v8 = *a2;
      if (!v9)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          sub_1000D192C(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (sub_1002C82D0(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          sub_1000D192C(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !sub_1002C8254(a1, **a2))
      {
        v13 = sub_1002C8254(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !sub_1002C8254(a1, *v14) && !sub_1002C82D0(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    v10 = sub_1002C82D0(a1, *v8);
    v11 = *a2;
    if (v10)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !sub_1002C8254(a1, *v11) && !sub_1002C82D0(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL sub_1002C8254(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL sub_1002C82D0(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

void sub_1002C83D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39A30;
  sub_1002C84CC((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C8450(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C7320(a1, a2, a3, v6, *a5);
}

void sub_1002C852C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C85B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1001A9614(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C85D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C8618(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1002C86DC(void *a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C87B8((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002C8758(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C87B8(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *a4;
    *a1 = v5;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 48) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *a4;
    *a1 = v5;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 48) = v9;
  }

  return a1;
}

void sub_1002C8840(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void *sub_1002C8918(void *a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C8974((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1002C8974(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  *a1 = v5;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 48) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 48) = v8;
  }

  return a1;
}

void *sub_1002C8A74(void *a1, int *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C8AD0((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_1002C8AD0(uint64_t a1, int *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = a4[1];
  v9 = *a4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002C8B4C(a1, v6, a3, &v9, *a5);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_1002C8B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C8B4C(uint64_t a1, int a2, __int128 *a3, void *a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a5;
  return a1;
}

uint64_t sub_1002C8BCC(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_101769A10();
  }

  result = sub_1002C8074(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

void *sub_1002C8C98(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39A30;
  sub_1002C8CF4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_1002C8CF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4[1];
  v8[0] = *a4;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002C7320(a1, a2, a3, v8, *a5);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1002C8D54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C8DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39B48;
  sub_1002C8EF0((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C8E74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C68F4(a1, a2, a3, v6, *a5);
}

void sub_1002C8F50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C8FF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39B98;
  sub_1002C90EC(a1 + 3, a2, a3, a4, a5);
}

void sub_1002C9070(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C90EC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C6D1C(a1, a2, a3, v6, *a5);
}

void sub_1002C914C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C91F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39BE8;
  sub_1002C92E8((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C926C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C92E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C7034(a1, a2, a3, v6, *a5);
}

void sub_1002C9348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9360(uint64_t a1, void *a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6, uint64_t a7)
{
  *a1 = &off_101E39C38;
  sub_10174D9C0(a1 + 8, 1, a4, -1);
  v13 = a2[1];
  *(a1 + 96) = *a2;
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 120), *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    *(a1 + 136) = *(a3 + 2);
    *(a1 + 120) = v14;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 144), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 160) = *(a5 + 2);
    *(a1 + 144) = v15;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 168), *a6, *(a6 + 1));
  }

  else
  {
    v16 = *a6;
    *(a1 + 184) = *(a6 + 2);
    *(a1 + 168) = v16;
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a7;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  return a1;
}

void sub_1002C9474(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  MessageOperationInterface::~MessageOperationInterface(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C94DC(uint64_t a1, void *a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8, char a9)
{
  *a1 = &off_101E39C38;
  sub_10174D9C0(a1 + 8, 1, a4, -1);
  v16 = a2[1];
  *(a1 + 96) = *a2;
  *(a1 + 104) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 120), *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    *(a1 + 136) = *(a3 + 2);
    *(a1 + 120) = v17;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 144), *a5, *(a5 + 1));
  }

  else
  {
    v18 = *a5;
    *(a1 + 160) = *(a5 + 2);
    *(a1 + 144) = v18;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 168), *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    *(a1 + 184) = *(a6 + 2);
    *(a1 + 168) = v19;
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 192), *a7, *(a7 + 1));
  }

  else
  {
    v20 = *a7;
    *(a1 + 208) = *(a7 + 2);
    *(a1 + 192) = v20;
  }

  *(a1 + 216) = a8;
  *(a1 + 224) = 0;
  *(a1 + 228) = a9;
  return a1;
}

void sub_1002C9624(_Unwind_Exception *a1)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  MessageOperationInterface::~MessageOperationInterface(v1);
  _Unwind_Resume(a1);
}

char *sub_1002C96C0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    return sub_100005F2C(a2, *(result + 7), *(result + 8));
  }

  *a2 = *(result + 56);
  *(a2 + 16) = *(result + 9);
  return result;
}

void sub_1002C96E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002C9758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9794(uint64_t a1)
{
  Registry::getTimerService(&v6, *(a1 + 96));
  v2 = (**v6)(v6);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40) << v3;
  if (v4 >= *(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  *(a1 + 32) = v2 + 1000000000 * v4;
  if (v7)
  {
    sub_100004A34(v7);
    v3 = *(a1 + 16);
  }

  result = (v3 + 1);
  *(a1 + 16) = result;
  return result;
}

void sub_1002C982C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9844(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 << *(a1 + 16) >= *(a1 + 48))
  {
    return *(a1 + 48);
  }

  else
  {
    return v1 << *(a1 + 16);
  }
}

uint64_t sub_1002C98BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::getTimerService(&v4, *(a1 + 96));
  v2 = (**v4)(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return (v1 - v2) / 1000000000;
}

void sub_1002C9948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C996C(int *a1@<X0>, void *a2@<X8>)
{
  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  sub_101135C10(__p, a1[6]);
  if ((*(*a1 + 200))(a1, __p, 0))
  {
    if (v8 >= 0)
    {
      v4 = &__p[1];
    }

    else
    {
      v4 = __p[1];
    }

    if (v8 >= 0)
    {
      v5 = HIBYTE(v8);
    }

    else
    {
      v5 = v8;
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_1001E0D88(a2, v4, v4 + v5, v5);
  }

  else
  {
    v6 = sub_1015D7DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101769A3C(v6);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_1002C9A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9A90(uint64_t a1)
{
  if (*(a1 + 228))
  {
    *&cf = @"SMSSettings";
    *(&cf + 1) = @"EnableReplyToAlphanumericOriginator";
    v22 = 0;
    v23 = 0;
    __p = 0;
    sub_10005B328(&__p, &cf, &v26, 2uLL);
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    *&cf = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &cf);
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
LABEL_8:
          v12 = sub_1015D7DBC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_101769AC4(v12);
          }

          v13 = 1;
LABEL_22:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }

          return v13 & 1;
        }

LABEL_16:
        (*(*v10 + 104))(&cf, v10, *(a1 + 24), 1, &__p, kCFBooleanTrue, 0);
        v15 = cf;
        v24 = 0;
        if (cf && (v16 = CFGetTypeID(cf), v16 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v24, v15, v17);
          v13 = v24;
        }

        else
        {
          v13 = 0;
        }

        sub_10000A1EC(&cf);
        v18 = sub_1015D7DBC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = CSIBOOLAsString(v13 & 1);
          LODWORD(cf) = 136315138;
          *(&cf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Reply to alphanumeric originator enabled = %s", &cf, 0xCu);
        }

        goto LABEL_22;
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
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v14 = sub_1015D7DBC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_101769A80(v14);
  }

  v13 = 1;
  return v13 & 1;
}

void sub_1002C9D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002C9D98(uint64_t a1)
{
  if ((*(a1 + 167) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 152))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a1 + 167))
  {
    return 0;
  }

LABEL_3:
  v1 = *(a1 + 143);
  if (v1 < 0)
  {
    v1 = *(a1 + 128);
  }

  return v1 != 0;
}

uint64_t sub_1002C9DD4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v4 = *v4;
  }

  v5 = (a1 + 144);
  if (*(a1 + 167) < 0)
  {
    v5 = *v5;
  }

  v6 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v6 = *v6;
  }

  v7 = (a1 + 192);
  if (*(a1 + 215) < 0)
  {
    v7 = *v7;
  }

  v8 = sub_101136DB4(a2, *(a1 + 216), v4, v5, v6, v7);
  if (v8)
  {
    sub_101135D4C(a2, *(a1 + 224));
  }

  return v8;
}

char *sub_1002C9E64@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[167] < 0)
  {
    return sub_100005F2C(a2, *(result + 18), *(result + 19));
  }

  *a2 = *(result + 9);
  *(a2 + 16) = *(result + 20);
  return result;
}

char *sub_1002C9E8C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[143] < 0)
  {
    return sub_100005F2C(a2, *(result + 15), *(result + 16));
  }

  *a2 = *(result + 120);
  *(a2 + 16) = *(result + 17);
  return result;
}

char *sub_1002C9EB4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[191] < 0)
  {
    return sub_100005F2C(a2, *(result + 21), *(result + 22));
  }

  *a2 = *(result + 168);
  *(a2 + 16) = *(result + 23);
  return result;
}

void sub_1002C9EE8(void **a1)
{
  sub_1002C9F20(a1);

  operator delete();
}

void sub_1002C9F20(void **this)
{
  *this = &off_101E39C38;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  MessageOperationInterface::~MessageOperationInterface(this);
}

void sub_1002C9FCC(NSObject **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v45 = @"response";
  v43 = @"reply";
  v41[0] = @"displayText";
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v41[1] = @"postback";
  v42[0] = v7;
  v39 = @"data";
  if (*(a2 + 47) >= 0)
  {
    v8 = (a2 + 3);
  }

  else
  {
    v8 = a2[3];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v40 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v46 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  v22 = 0;
  v14 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v22];
  v15 = v22;
  if (v14)
  {
    if (*(a2 + 48) == 1)
    {
      v16 = [v14 base64EncodedStringWithOptions:0];
    }

    else
    {
      v16 = [[NSString alloc] initWithData:v14 encoding:4];
    }

    v18 = v16;
    v38 = 0;
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
    *v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *buf = 0u;
    sub_10000C320(buf);
    sub_1000D0C38(buf, "Content-Type", off_101E97888);
    if (*(a2 + 48) == 1)
    {
      sub_1000D0C38(buf, "Content-Transfer-Encoding", off_101E97770);
    }

    std::to_string(&__p, [v18 length]);
    sub_1002049A4(buf, "Content-Length", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(buf);
    v19 = v18;
    strlen([v18 UTF8String]);
    sub_10000C030(&v24);
    sub_100061574(buf, &__p);
    sub_100C180E0(a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v24 = v20;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v17 = *a1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to JSON encode reply: %@", buf, 0xCu);
    }

    sub_100C180E4(a3);
  }
}

void sub_1002CA514(NSObject **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v45 = @"response";
  v43 = @"action";
  v41[0] = @"displayText";
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v41[1] = @"postback";
  v42[0] = v7;
  v39 = @"data";
  if (*(a2 + 47) >= 0)
  {
    v8 = (a2 + 3);
  }

  else
  {
    v8 = a2[3];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v40 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v46 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  v22 = 0;
  v14 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v22];
  v15 = v22;
  if (v14)
  {
    if (*(a2 + 48) == 1)
    {
      v16 = [v14 base64EncodedStringWithOptions:0];
    }

    else
    {
      v16 = [[NSString alloc] initWithData:v14 encoding:4];
    }

    v18 = v16;
    v38 = 0;
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
    *v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *buf = 0u;
    sub_10000C320(buf);
    sub_1000D0C38(buf, "Content-Type", off_101E97888);
    if (*(a2 + 48) == 1)
    {
      sub_1000D0C38(buf, "Content-Transfer-Encoding", off_101E97770);
    }

    std::to_string(&__p, [v18 length]);
    sub_1002049A4(buf, "Content-Length", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(buf);
    v19 = v18;
    strlen([v18 UTF8String]);
    sub_10000C030(&v24);
    sub_100061574(buf, &__p);
    sub_100C180E0(a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v24 = v20;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v17 = *a1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to JSON encode action response: %@", buf, 0xCu);
    }

    sub_100C180E4(a3);
  }
}

std::__shared_weak_count *sub_1002CAA5C@<X0>(uint64_t *a1@<X8>)
{
  result = DataPlanManagerBootstrap::instance_if_created(v5);
  v3 = v5[1];
  if (v5[0])
  {
    v4 = v5[0] + 8;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002CAAA8@<X0>(capabilities::ct *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = capabilities::ct::getRadioModuleType(a1);
  if (result == 2)
  {
    if (*a2)
    {
      if (*a1)
      {
        operator new();
      }

      sub_101769B08();
    }

    sub_101769B34();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1002CABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002CAC24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002CACA0()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v0 = *v0;
  }

  return v0;
}

id sub_1002CACD0()
{
  v0 = CUTWeakLinkClass();

  return v0;
}

uint64_t sub_1002CACFC(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  *a1 = off_101E9E1C8;
  v7 = (a1 + 8);
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098D218(v7, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  *a1 = off_101E39EA8;
  sub_100074920((a1 + 32), a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1002CB1BC(a1 + 56, *(a3 + 24), *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  *(a1 + 80) = *a4;
  return a1;
}

void sub_1002CADE4(_Unwind_Exception *a1)
{
  sub_100009970(v2, *(v1 + 40));
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002CAE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1002CAE08);
  }

  JUMPOUT(0x1002CAE04);
}

void sub_1002CAE2C(uint64_t a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 == v5)
  {
LABEL_17:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_18;
  }

  do
  {
    v7 = *(v4 + 24);
    if (v7 != (v4 + 32))
    {
      while (1)
      {
        buf[0] = 0;
        {
          break;
        }

        v8 = v7[1];
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
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
        if (v9 == (v4 + 32))
        {
          goto LABEL_12;
        }
      }

      sub_100005308(&v13, v4);
    }

LABEL_12:
    v4 += 56;
  }

  while (v4 != v5);
  v11 = v14;
  if (v13 == v14)
  {
    v12 = *a2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No access control servers found", buf, 2u);
    }

    goto LABEL_17;
  }

  *a3 = v13;
  a3[1] = v11;
  a3[2] = v15;
  v14 = 0;
  v15 = 0;
  v13 = 0;
LABEL_18:
  *buf = &v13;
  sub_1000087B4(buf);
}

void sub_1002CAF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CAFA8(uint64_t a1, os_log_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v2 = *(a1 + 88);
  if (v2 <= 0)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "AccessControl.xml";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Invalid validity of %s xml", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v3 = sub_10098D2BC((a1 + 8), v2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

void sub_1002CB08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CB0C0(uint64_t a1)
{
  *a1 = off_101E39EA8;
  v3 = (a1 + 56);
  sub_1002CB430(&v3);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TMKXPCServer.shutdown()();
}

void sub_1002CB134(uint64_t a1)
{
  *a1 = off_101E39EA8;
  v3 = (a1 + 56);
  sub_1002CB430(&v3);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TMKXPCServer.shutdown()();
  operator delete();
}

uint64_t sub_1002CB1BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002CB244(result, a4);
  }

  return result;
}

void sub_1002CB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1002CB430(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CB244(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1002CB294(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1002CB294(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002CB2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      sub_100074920((a4 + v7 + 24), a2 + v7 + 24);
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1002CB394(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      sub_1002CB3DC(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CB3DC(uint64_t a1)
{
  sub_100009970(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1002CB430(void ***a1)
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
        sub_1002CB3DC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1002CB4B4(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      if (*(v3 + 8) == v6 && !memcmp(*v3, v7, v6))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

void sub_1002CB668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CB6EC(uint64_t a1)
{
  *a1 = off_101E39F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100005978((a1 + 8));
  return a1;
}

void sub_1002CB764(uint64_t a1)
{
  *a1 = off_101E39F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100005978((a1 + 8));

  operator delete();
}

uint64_t sub_1002CB898(uint64_t a1, int a2, ctu::PathView *this)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  __p[0] = ctu::PathView::current(this);
  __p[1] = v4;
  sub_100074CFC(__p, v23);
  v22 = 0;
  __p[0] = xpc_string_create("get");
  if (!__p[0])
  {
    __p[0] = xpc_null_create();
  }

  __dst[0].fObj = xpc_string_create("internal");
  if (!__dst[0].fObj)
  {
    __dst[0].fObj = xpc_null_create();
  }

  if (v24 >= 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  object[0] = xpc_string_create(v5);
  if (!object[0])
  {
    object[0] = xpc_null_create();
  }

  v29.fObj = xpc_null_create();
  ctu::rest::createRestMessage(&v22, __p, __dst, object, &v29, v6);
  xpc_release(v29.fObj);
  xpc_release(object[0]);
  xpc_release(__dst[0].fObj);
  xpc_release(__p[0]);
  object[0] = 0;
  object[1] = 0;
  v21 = 0;
  sub_1002CBD14(object, &v22);
  v7 = *(a1 + 16);
  ctu::PathView::PathView();
  (*(*v7 + 16))(v7, object, __p);
  v8 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v8 = xpc_null_create();
  }

  value = 0;
  if (xpc_get_type(v8) != &_xpc_type_null)
  {
    ctu::xpc_to_cf(__dst, v8, v9);
    v10 = value;
    value = __dst[0].fObj;
    __p[0] = v10;
    __dst[0].fObj = 0;
    sub_10000A1EC(__p);
    sub_10000A1EC(&__dst[0].fObj);
  }

  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(v14, v23[0], v23[1]);
  }

  else
  {
    *v14 = *v23;
    v15 = v24;
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_100005F2C(__dst, v14[0], v14[1]);
  }

  else
  {
    *&__dst[0].fObj = *v14;
    v27 = v15;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(__p, __dst[0].fObj, __dst[1].fObj);
  }

  else
  {
    *__p = *&__dst[0].fObj;
    v19 = v27;
  }

  v28 = 0;
  if (ctu::cf::convert_copy())
  {
    v11 = v25;
    v25 = v28;
    v29.fObj = v11;
    sub_100005978(&v29.fObj);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v25;
  v16 = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0].fObj);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  CFPreferencesSetValue(v12, value, *(a1 + 8), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(*(a1 + 8), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v16);
  sub_10000A1EC(&value);
  xpc_release(v8);
  xpc_release(v21);
  v21 = 0;
  ctu::RestResourceContext::~RestResourceContext(object);
  xpc_release(v22);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return 1;
}

void sub_1002CBBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, xpc_object_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, xpc_object_t object, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978((v36 - 104));
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a18);
  xpc_release(v35);
  sub_1002CBD60(&a26);
  xpc_release(object);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void *sub_1002CBD14(void *a1, uint64_t a2)
{
  *a1 = &off_101E3A000;
  a1[1] = a2;
  a1[2] = xpc_null_create();
  return a1;
}

void sub_1002CBD60(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;

  ctu::RestResourceContext::~RestResourceContext(a1);
}

uint64_t sub_1002CBDAC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  xpc_release(v4);
  return 1;
}

void sub_1002CBE20(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  ctu::RestResourceContext::~RestResourceContext(a1);

  operator delete();
}

void sub_1002CBE78(uint64_t a1, ctu *a2, uint64_t *a3)
{
  v4 = *a3;
  v9[1] = 0;
  v10 = 0;
  ctu::cf::assign();
  v16 = 0u;
  v17 = 0;
  v15.fObj = 0;
  ctu::cf_to_xpc(&v15, a2, v5);
  v14 = 0;
  v9[0] = xpc_string_create("set");
  if (!v9[0])
  {
    v9[0] = xpc_null_create();
  }

  v11[0] = xpc_string_create("internal");
  if (!v11[0])
  {
    v11[0] = xpc_null_create();
  }

  if (v17 >= 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16;
  }

  object = xpc_string_create(v6);
  if (!object)
  {
    object = xpc_null_create();
  }

  ctu::rest::createRestMessage(&v14, v9, v11, &object, &v15, v7);
  xpc_release(object);
  xpc_release(v11[0]);
  xpc_release(v9[0]);
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sub_1002CBD14(v11, &v14);
  v8 = *(v4 + 16);
  ctu::PathView::PathView();
  (*(*v8 + 16))(v8, v11, v9);
  xpc_release(v12);
  v12 = 0;
  ctu::RestResourceContext::~RestResourceContext(v11);
  xpc_release(v14);
  xpc_release(v15.fObj);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_1002CC038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a16);
  xpc_release(a9);
  xpc_release(*(v20 - 56));
  if (*(v20 - 25) < 0)
  {
    operator delete(*(v20 - 48));
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1002CC0C8@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 4) == 1)
  {
    v2 = off_101E3A0A0[*a1 + 1];
  }

  else
  {
    v2 = "Success";
  }

  return sub_10000501C(a2, v2);
}

uint64_t sub_1002CC100(void *a1)
{
  v2 = (*(**a1 + 16))(*a1);
  switch(v2)
  {
    case 4:
      v5 = a1[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC();
    case 3:
      v4 = a1[1];
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC();
    case 1:
      v3 = a1[1];
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC();
  }

  return 0;
}

void sub_1002CC2A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CC2C4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002CC100(a1);
  if (result)
  {
    result = (*(**a1 + 16))();
    if (result > 2)
    {
      if (result == 3)
      {
        v5 = *a1;
        if (*a1)
        {
          if (v5)
          {
            v6 = a1[1];
            if (v6)
            {
              atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
            }
          }
        }

        if (v5[183] < 0)
        {
          sub_100005F2C(&__dst, *(v5 + 20), *(v5 + 21));
        }

        else
        {
          __dst = *(v5 + 10);
          v14 = *(v5 + 22);
        }

        sub_100C161F0();
      }

      if (result == 4)
      {
        v9 = *a1;
        if (*a1)
        {
          if (v9)
          {
            v10 = a1[1];
            if (v10)
            {
              atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
            }
          }
        }

        if (v9[207] < 0)
        {
          sub_100005F2C(__p, *(v9 + 23), *(v9 + 24));
        }

        else
        {
          *__p = *(v9 + 184);
          v12 = *(v9 + 25);
        }

        sub_100C161F0();
      }
    }

    else if (result == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        if (v7)
        {
          v8 = a1[1];
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }
        }
      }

      if (v7[167] < 0)
      {
        sub_100005F2C(&v15, *(v7 + 18), *(v7 + 19));
      }

      else
      {
        v15 = *(v7 + 9);
        v16 = *(v7 + 20);
      }

      sub_100C161F0();
    }
  }

  *a2 = 0;
  a2[24] = 0;
  return result;
}

void sub_1002CC5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1002CC658@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (sub_100A01E0C(a1))
  {
    v6 = "text";
    v7 = "group text";
    goto LABEL_3;
  }

  if (sub_100A01F04(a1))
  {
    v8 = "imdn";
    goto LABEL_10;
  }

  if (sub_100A01F80(a1))
  {
    v8 = "composing";
    goto LABEL_10;
  }

  if (sub_100A01FFC(a1))
  {
    v6 = "file transfer push";
    v7 = "group file transfer push";
LABEL_3:
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_10;
  }

  if (sub_100A02078(a1))
  {
    v8 = "card";
  }

  else if (sub_100A020F4(a1))
  {
    v8 = "group chat";
  }

  else
  {
    v10 = sub_100A01E88(a1);
    v11 = "group geo location push";
    if (a2)
    {
      v11 = "geo location push";
    }

    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = "invalid";
    }
  }

LABEL_10:

  return sub_10000501C(a3, v8);
}

uint64_t sub_1002CC770(uint64_t a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = v3[32];
  if (v4 <= 3)
  {
    v7 = v4 >= 2;
    v8 = v4 - 2;
    if (v7)
    {
      if (v8 >= 2)
      {
        return v2 & 1;
      }

      if (v9)
      {
        v6 = *(a1 + 8);
        if (!v6)
        {
          v2 = v9[72];
          return v2 & 1;
        }

        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v2 = v9[72];
LABEL_23:
        v12 = v6;
LABEL_24:
        sub_100004A34(v12);
        return v2 & 1;
      }

LABEL_18:
      v2 = 0;
      return v2 & 1;
    }

LABEL_15:
    if (v10)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v2 = v10[48];
        return v2 & 1;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = v10[48];
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v4 > 6)
  {
    if (v4 == 7)
    {
      v13 = v12;
      if (v12)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      if (v13[13].__shared_owners_)
      {
        v2 = 1;
        if (!v12)
        {
          return v2 & 1;
        }
      }

      else
      {
        v2 = v13[12].__vftable;
        if (!v12)
        {
          return v2 & 1;
        }
      }

      goto LABEL_24;
    }

    if (v4 != 13)
    {
      return v2 & 1;
    }

    goto LABEL_15;
  }

  if ((v4 - 4) < 2)
  {
    if (!v5 || (v6 = *(a1 + 8)) == 0)
    {
      v2 = v5[544];
      return v2 & 1;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = v5[544];
    goto LABEL_23;
  }

  if (v4 == 6)
  {
    if (!v11 || (v6 = *(a1 + 8)) == 0)
    {
      v2 = v11[536];
      return v2 & 1;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = v11[536];
    goto LABEL_23;
  }

  return v2 & 1;
}

uint64_t sub_1002CCAA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v25 = *a2;
  v26 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(*a3 + 52);
  if (v12 == 2)
  {
    v21 = "DATA.Connection.iw5???.2";
    if (a6 == 17)
    {
      v21 = "DATA.Connection.iw5.2";
    }

    v22 = "iw5???.2";
    if (a6 == 17)
    {
      v22 = "iw5.2";
    }

    if (a6 == 26)
    {
      v19 = "DATA.Connection.iw5t.2";
    }

    else
    {
      v19 = v21;
    }

    if (a6 == 26)
    {
      v20 = "iw5t.2";
    }

    else
    {
      v20 = v22;
    }
  }

  else
  {
    v13 = "DATA.Connection.iw5???.?";
    if (a6 == 17)
    {
      v13 = "DATA.Connection.iw5.?";
    }

    v14 = "iw5.?";
    if (a6 != 17)
    {
      v14 = "iw5???.?";
    }

    if (a6 == 26)
    {
      v13 = "DATA.Connection.iw5t.?";
    }

    v15 = "DATA.Connection.iw5???.1";
    if (a6 == 26)
    {
      v14 = "iw5t.?";
    }

    v16 = "DATA.Connection.iw5t.1";
    if (a6 == 17)
    {
      v15 = "DATA.Connection.iw5.1";
    }

    v17 = "iw5.1";
    if (a6 != 17)
    {
      v17 = "iw5???.1";
    }

    if (a6 != 26)
    {
      v16 = v15;
    }

    v18 = "iw5t.1";
    if (a6 != 26)
    {
      v18 = v17;
    }

    if (v12 == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = v13;
    }

    if (v12 == 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }
  }

  sub_1009679C4(a1, &off_101E3AC18, &v25, a3, a4, &object, v19, v20, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  *a1 = off_101E3A1B8;
  *(a1 + 64) = off_101E3A718;
  *(a1 + 72) = off_101E3A9B8;
  *(a1 + 80) = off_101E3ABA0;
  *(a1 + 456) = 0;
  *(a1 + 458) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  return a1;
}

void sub_1002CCCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1002CCD1C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCD4C(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCD80(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCDB4(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCDE8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E3AC18);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_1002CCE44(void *a1, int a2)
{
  result = (*(*a1 + 1056))(a1);
  if (result)
  {
    if (a2 == 4)
    {
      v5 = a1[7];
      result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v6 = 136315394;
        v7 = "deactivateWithReasonAllowed";
        v8 = 2080;
        v9 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Do not deactivate for %s", &v6, 0x16u);
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1002CCF4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "pcoTrigger";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: passing to SystemDetermination", buf, 0xCu);
  }

  v7 = a1[27];
  (*(*a1 + 528))(__p, a1);
  (*(*v7 + 240))(v7, __p, a2, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002CD07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CD0B0(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 456);
  v3 = 2000;
  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002CD0C8(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 384);
  v3 = 2000;
  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002CD12C(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (validContextType())
  {
    v12 = a3[1];
    v43[0] = *a3;
    v43[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = sub_1000AC55C(a1, a2, v43);
    if (v12)
    {
      sub_100004A34(v12);
    }

    if (v13 && (*a4 == 70 || *a4 == 65))
    {
      if (a5 && *a3 && (*(**a3 + 1128))(*a3, a5, a6))
      {
        v14 = *(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString();
          *buf = 136315650;
          v45 = "activateFailedTrigger";
          v46 = 2080;
          v47 = v15;
          v48 = 2048;
          v49 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: type=%s, imsPref=%llu: flexible blocker settings exist, ignoring hardcoded 'FatalActivationBlocker' logic", buf, 0x20u);
        }
      }

      else
      {
        v21 = *(a1 + 56);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          v23 = asString();
          *buf = 136315906;
          v45 = "activateFailedTrigger";
          v46 = 2080;
          v47 = v22;
          v48 = 2048;
          v49 = v13;
          v50 = 2080;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: type=%s, imsPref=%llu, cause %s", buf, 0x2Au);
        }

        if (*a3)
        {
          (*(**a3 + 1192))(*a3, a2, *a4, 1);
        }
      }

      v24 = *(a4 + 28);
      v25 = *(a1 + 56);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v24 == 1)
      {
        if (!v26)
        {
          return 0;
        }

        v27 = *(a1 + 136);
        if (*a4)
        {
          v28 = "f";
        }

        else
        {
          v28 = "t";
        }

        if (*a4)
        {
          v29 = asString();
        }

        else
        {
          v29 = "OK";
        }

        v34 = *(a4 + 1);
        v33 = *(a4 + 2);
        v35 = asStringBool(*(a4 + 24));
        v36 = asStringBool(*(a4 + 25));
        v37 = asStringBool(*(a4 + 26));
        v38 = asStringBool(*(a4 + 27));
        *buf = 136317698;
        v45 = v27;
        v46 = 2080;
        v47 = "activateFailedTrigger";
        v48 = 2080;
        v49 = "ActivationBlocker: error code";
        v50 = 2080;
        v51 = v28;
        v52 = 2080;
        v53 = v29;
        v54 = 2080;
        v55 = v34;
        v56 = 2080;
        v57 = v33;
        v58 = 2080;
        v59 = v35;
        v60 = 2080;
        v61 = v36;
        v62 = 2080;
        v63 = v37;
        v64 = 2080;
        v65 = v38;
        v17 = "#I DATA.%s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
        v18 = v25;
        v19 = 112;
        goto LABEL_16;
      }

      if (!v26)
      {
        return 0;
      }

      v30 = *(a1 + 136);
      if (*a4)
      {
        v31 = "f";
      }

      else
      {
        v31 = "t";
      }

      if (*a4)
      {
        v32 = asString();
      }

      else
      {
        v32 = "OK";
      }

      v39 = *(a4 + 1);
      if (v39)
      {
        v40 = *(a4 + 2);
        if (*v39)
        {
          v41 = "}";
          v42 = "{";
LABEL_43:
          *buf = 136317186;
          v45 = v30;
          v46 = 2080;
          v47 = "activateFailedTrigger";
          v48 = 2080;
          v49 = "ActivationBlocker: error code";
          v50 = 2080;
          v51 = v31;
          v52 = 2080;
          v53 = v32;
          v54 = 2080;
          v55 = v42;
          v56 = 2080;
          v57 = v39;
          v58 = 2080;
          v59 = v40;
          v60 = 2080;
          v61 = v41;
          v17 = "#I DATA.%s: %s: %s: %s(%s%s%s %s%s)";
          v18 = v25;
          v19 = 92;
          goto LABEL_16;
        }
      }

      else
      {
        v40 = *(a4 + 2);
      }

      v42 = "";
      v41 = "";
      goto LABEL_43;
    }
  }

  else
  {
    v16 = *(a1 + 56);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "activateFailedTrigger";
      v46 = 2080;
      v47 = asString();
      v17 = "#E %s: wrong context type: %s";
      v18 = v16;
      v19 = 22;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }

  return 0;
}

uint64_t sub_1002CD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    sub_10096CA18(a1, a2, buf);
    v9 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v10 = *(a3 + 8);
    *a3 = v9;
    if (v10)
    {
      sub_100004A34(v10);
      if (a5)
      {
        v11 = *a3 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
        if ((v12 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (!v12)
      {
        goto LABEL_35;
      }
    }

    else if (!a5 || !v9)
    {
      goto LABEL_35;
    }

    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = &v32;
    v29 = 0;
    v13 = *(a1 + 216);
    v14 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v13 + 424))(&v29, v13, v14);
    if (v29)
    {
      (*(*v29 + 80))(buf);
      sub_10006DCAC(&v31, v32);
      v15 = *&buf[8];
      v31 = *buf;
      v32 = *&buf[8];
      v33 = *&buf[16];
      if (*&buf[16])
      {
        *(*&buf[8] + 16) = &v32;
        *buf = &buf[8];
        *&buf[8] = 0;
        *&buf[16] = 0;
        v15 = 0;
      }

      else
      {
        v31 = &v32;
      }

      sub_10006DCAC(buf, v15);
    }

    if (v30)
    {
      sub_100004A34(v30);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v32;
      do
      {
        v18 = *(v17 + 7);
        if (v18 <= a5)
        {
          if (v18 >= a5)
          {
            v19 = *(a1 + 56);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v21 = asString();
              *buf = 136315650;
              *&buf[4] = "handoverFailedCallback";
              *&buf[12] = 2080;
              *&buf[14] = v21;
              *&buf[22] = 1024;
              v35 = a5;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: error = %s(%d), set handover blocked flag to true", buf, 0x1Cu);
              v16 = v32;
            }

            *(a1 + 457) = 1;
            break;
          }

          ++v17;
        }

        v17 = *v17;
      }

      while (v17);
    }

    sub_10006DCAC(&v31, v16);
  }

LABEL_35:
  *buf = 0;
  *&buf[8] = 0;
  (*(**(a1 + 216) + 24))(buf);
  v22 = *buf;
  if (*buf)
  {
    v23 = PersonalitySpecificImpl::simSlot(a1);
    v24 = (*(*a1 + 768))(a1);
    (*(*v22 + 64))(v22, v23, v24, a2);
  }

  v25 = *(a3 + 8);
  v28 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = sub_1009737E8(a1, a2);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return v26;
}

void sub_1002CD9F8(void *a1, int a2)
{
  (*(*a1 + 1008))(a1);
  v4 = a1[7];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    if (a2)
    {
      v5 = "succeeded";
    }

    v6 = 136315394;
    v7 = "mOBIKEDoneTrigger";
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover %s.", &v6, 0x16u);
  }
}

void sub_1002CDAF0(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivatedTrigger";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  *(a1 + 457) = 0;
  v16 = 2;
  v14 = 0;
  v15 = 0;
  sub_100098064(a1, &v16, &v14);
  if (!validContextType() || v16 == a2 && v14 == *a3)
  {
    v7 = *(a1 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      v9 = asString();
      *buf = 136315650;
      *&buf[4] = "deactivatedTrigger";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: connection deactivated for %s (current %s)", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = 0;
    (*(**(a1 + 216) + 24))(buf);
    v10 = *buf;
    if (*buf)
    {
      v11 = PersonalitySpecificImpl::simSlot(a1);
      v12 = (*(*a1 + 768))(a1);
      (*(*v10 + 56))(v10, v11, v12, 2, 2, "");
    }

    v13[0] = 0;
    v13[1] = 0;
    sub_1002CDD84(a1, 2, v13);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1002CDD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CDD84(uint64_t a1, uint64_t a2, void *a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  (*(*a1 + 528))(v32);
  v6 = HIBYTE(v33);
  if (v33 < 0)
  {
    v6 = v32[1];
  }

  if (v6)
  {
    sub_10096CA18(a1, 0, buf);
    v7 = *&buf[8];
    v31[0] = *buf;
    v31[1] = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v8 = sub_1000AC180(a1, 0, v31);
    if (v7)
    {
      sub_100004A34(v7);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_10096CA18(a1, 1, buf);
    v9 = *&buf[8];
    v30[0] = *buf;
    v30[1] = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v10 = sub_1000AC180(a1, 1, v30);
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*a3 && (sub_10008F5EC(a1), validContextType()))
    {
      sub_10096CA18(a1, a2, buf);
      v11 = *buf;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v12 = *(a1 + 56);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v13)
        {
          v20 = asString();
          *buf = 136315906;
          *&buf[4] = "evaluateImsPref";
          *&buf[12] = 2080;
          *&buf[14] = v20;
          v35 = 2048;
          v36 = v8;
          v37 = 2048;
          v38 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: from disabled settings (%s), ignoring bb mask %llu and tech mask %llu", buf, 0x2Au);
        }

        goto LABEL_34;
      }

      if (v13)
      {
        v14 = asString();
        sub_10008F5EC(a1);
        v15 = asString();
        *buf = 136316162;
        *&buf[4] = "evaluateImsPref";
        *&buf[12] = 2080;
        *&buf[14] = v14;
        v35 = 2080;
        v36 = v15;
        v37 = 2048;
        v38 = v8;
        v39 = 2048;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: from active settings (%s), firing event ct=%s bb mask %llu and tech mask %llu", buf, 0x34u);
      }

      v16 = *(a1 + 216);
      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(__p, v32[0], v32[1]);
      }

      else
      {
        *__p = *v32;
        v29 = v33;
      }

      v21 = sub_10008F5EC(a1);
      (*(*v16 + 232))(v16, __p, v21, v8, v10);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
LABEL_34:
        v22 = *(a1 + 216);
        v23 = PersonalitySpecificImpl::simSlot(a1);
        sub_10000501C(v24, "IM IMS preferences changed");
        (*(*v22 + 192))(v22, v23, v24, 0);
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        goto LABEL_36;
      }

      v19 = __p[0];
    }

    else
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "evaluateImsPref";
        *&buf[12] = 2048;
        *&buf[14] = v8;
        v35 = 2048;
        v36 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: firing event with bb mask %llu and tech mask %llu", buf, 0x20u);
      }

      v18 = *(a1 + 216);
      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(&__dst, v32[0], v32[1]);
      }

      else
      {
        __dst = *v32;
        v27 = v33;
      }

      (*(*v18 + 232))(v18, &__dst, 2, v8, v10);
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v19 = __dst;
    }

    operator delete(v19);
    goto LABEL_34;
  }

LABEL_36:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }
}

void sub_1002CE1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CE280(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if (v2)
  {
    (*(*a1 + 528))(__p);
    (*(*v2 + 248))(v2, __p, a2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1002CE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CE33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = capabilities::ct::supportsSMSIMSStack(a1);
  if (!v6)
  {
    if (capabilities::ct::supportsThumperService(v6))
    {
      goto LABEL_9;
    }

LABEL_6:
    if ((*(*a1 + 768))(a1) == 26)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if ((*(*a1 + 768))(a1) == 17)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  v20 = 0;
  v21 = 0;
  sub_1000A8D40(a1, a2, 0, &v20);
  if (v20)
  {
    if ((validContextType() & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769C00();
      }

      if ((validContextType() & 1) == 0)
      {
        __TUAssertTrigger();
      }
    }

    v7 = a1 + 464;
    v8 = *(a1 + 464 + 8 * a2);
    if (v8 != a3)
    {
      v10 = *(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asString();
        v12 = *(v7 + 8 * a2);
        *buf = 136315906;
        *&buf[4] = "updateCurrentImsPref";
        *&buf[12] = 2080;
        *&buf[14] = v11;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: IMS pref for %s changes from %llu -> %llu", buf, 0x2Au);
        v8 = *(v7 + 8 * a2);
      }

      *(v7 + 8 * a2) = a3;
      if ((a3 & 1) != 0 && (v8 & 1) == 0 && sub_10008F5EC(a1) != a2)
      {
        *buf = 0;
        *&buf[8] = 0;
        (*(**(a1 + 216) + 24))(buf);
        v13 = *buf;
        if (*buf)
        {
          v14 = PersonalitySpecificImpl::simSlot(a1);
          if ((*(*v13 + 88))(v13, v14, 1) == a2)
          {
            v15 = *(a1 + 56);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I triggeriRatChangeEvent because of IMS PREF", v19, 2u);
            }

            v16 = *buf;
            v17 = PersonalitySpecificImpl::simSlot(a1);
            (*(*v16 + 112))(v16, v17, 1);
          }
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }
  }

  v9 = v21;
  v18[0] = v20;
  v18[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002CDD84(a1, a2, v18);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_1002CE684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CE6DC(Registry **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 67))(a1) == 4)
  {
    v6 = a1[7];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v76 = "handoverPossible";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: we are already deactivating, shouldn't do handover as the old connection is already destroyed most probably", buf, 0xCu);
    }

    return a2;
  }

  v73 = 0;
  v74 = 0;
  (*(*a1 + 18))(&v73, a1, a3);
  if (!v73)
  {
    if (a2 != 1 || (v11 = a1[27], v12 = PersonalitySpecificImpl::simSlot(a1), ((*(*v11 + 408))(v11, v12) & 1) != 0))
    {
      a2 = sub_100971AD4(a1, a2, a3);
      goto LABEL_62;
    }

    v40 = a1[7];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v41 = asString();
    v42 = asString();
    *buf = 136315650;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v41;
    v79 = 2080;
    v80 = v42;
    v43 = "#I %s: No context %s to switch over to, we should deactivate context %s";
    v44 = v40;
    goto LABEL_55;
  }

  if (*(a1 + 457) == 1)
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: handover is blocked, shouldn't do handover";
    goto LABEL_8;
  }

  v13 = a1[27];
  v14 = PersonalitySpecificImpl::simSlot(a1);
  v15 = (*(*v13 + 264))(v13, v14);
  v16 = (*(*v73 + 1104))(v73, a2, a3);
  v17 = a1[27];
  v18 = PersonalitySpecificImpl::simSlot(a1);
  if (!(*(*v17 + 408))(v17, v18))
  {
    if (v16)
    {
      v29 = v74;
      v68[0] = v73;
      v68[1] = v74;
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = sub_1000AC55C(a1, a3, v68);
      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v30)
      {
        v69 = 0;
        v70 = 0;
        v31 = a1[27];
        v32 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v31 + 424))(&v69, v31, v32);
        v34 = v69;
        v36 = a3 != 1 || v69 == 0;
        if (((v36 | v15) & 1) == 0)
        {
          if (!(*(*v69 + 184))(v69, v33))
          {
            v57 = a1[7];
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_89;
            }

            sub_10008F5EC(a1);
            v58 = asString();
            *buf = 136315394;
            v76 = "handoverPossible";
            v77 = 2080;
            v78 = v58;
            v59 = "#I %s: WiFi calling is not allowed in roaming, we stay on current context %s";
            v60 = v57;
            goto LABEL_87;
          }

          v34 = v69;
        }

        if (v34 && (((*(*v34 + 168))(v34) | v15) & 1) == 0)
        {
          v61 = a1[7];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            sub_10008F5EC(a1);
            v62 = asString();
            *buf = 136315394;
            v76 = "handoverPossible";
            v77 = 2080;
            v78 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: Handover is not allowed in roaming, we should deactivate current context %s", buf, 0x16u);
          }

          a2 = 2;
          goto LABEL_89;
        }

        v37 = a1[7];
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 136315138;
        v76 = "handoverPossible";
        v38 = "#I %s: have settings to handover to, good to go (2)";
        v39 = v37;
        goto LABEL_51;
      }

      v48 = a1[7];
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (a3)
      {
        if (v49)
        {
          v50 = asString();
          v51 = asString();
          *buf = 136315650;
          v76 = "handoverPossible";
          v77 = 2080;
          v78 = v50;
          v79 = 2080;
          v80 = v51;
          v8 = "#I %s: No IMS Pref in context %s at all, we should stay in context %s";
          v9 = v48;
          v10 = 32;
          goto LABEL_9;
        }

        goto LABEL_62;
      }

      if (v49)
      {
        v63 = asString();
        v64 = asString();
        *buf = 136315650;
        v76 = "handoverPossible";
        v77 = 2080;
        v78 = v63;
        v79 = 2080;
        v80 = v64;
        v43 = "#I %s: No IMS Pref in context %s at all, we should deactivate context %s";
        v44 = v48;
LABEL_55:
        v45 = 32;
LABEL_60:
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
      }
    }

    else
    {
      v46 = a1[7];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v76 = "handoverPossible";
        v43 = "#I %s: handover is not supported for this data mode, shouldn't do handover, deactivate current context type when not in a call";
        v44 = v46;
        v45 = 12;
        goto LABEL_60;
      }
    }

LABEL_61:
    a2 = 2;
    goto LABEL_62;
  }

  if ((v16 & 1) == 0)
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: handover is not supported for this data mode, shouldn't do handover, stay with the current context type when in a call";
    goto LABEL_8;
  }

  if ((*(*a1[27] + 416))(a1[27]))
  {
    v19 = PersonalitySpecificImpl::simSlot(a1);
    if ((sub_1002CF1D8(a1, v19) & 1) == 0)
    {
      v7 = a1[7];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v8 = "#I %s: handover in emergency mode is not supported, shouldn't do handover";
LABEL_8:
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_62;
    }
  }

  v20 = PersonalitySpecificImpl::simSlot(a1);
  if (!isCallHandoverSupported(a1 + 11, v20))
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: call handover is not supported, shouldn't do handover";
    goto LABEL_8;
  }

  v21 = v74;
  v72[0] = v73;
  v72[1] = v74;
  if (v74)
  {
    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_1000AC55C(a1, a3, v72);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (!a3)
  {
    v23 = a1[27];
    v24 = PersonalitySpecificImpl::simSlot(a1);
    if ((*(*v23 + 456))(v23, v24))
    {
      v25 = PersonalitySpecificImpl::simSlot(a1);
      if (isCallHandoverWithoutIMSVoiceServiceSupported(a1 + 11, v25))
      {
        v26 = v74;
        v71[0] = v73;
        v71[1] = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = sub_1000AC180(a1, 0, v71);
        if (v26)
        {
          sub_100004A34(v26);
        }
      }
    }
  }

  if (v22)
  {
    v69 = 0;
    v70 = 0;
    v52 = a1[27];
    v53 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v52 + 424))(&v69, v52, v53);
    if (!v69)
    {
      v65 = a1[7];
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_89;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v59 = "#I %s: Tech config is not found - handover is not supported";
      v60 = v65;
      v66 = 12;
      goto LABEL_88;
    }

    v54 = (*(*v69 + 168))(v69) | v15;
    v55 = a1[7];
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
    if (v54)
    {
      if (!v56)
      {
        goto LABEL_52;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v38 = "#I %s: have settings to handover to, good to go (1)";
      v39 = v55;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
LABEL_52:
      a2 = a3;
      goto LABEL_89;
    }

    if (!v56)
    {
LABEL_89:
      if (v70)
      {
        sub_100004A34(v70);
      }

      goto LABEL_62;
    }

    sub_10008F5EC(a1);
    v67 = asString();
    *buf = 136315394;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v67;
    v59 = "#I %s: Handover is not allowed in roaming, stay in current context %s as in call";
    v60 = v55;
LABEL_87:
    v66 = 22;
LABEL_88:
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v59, buf, v66);
    goto LABEL_89;
  }

  v27 = a1[7];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = asString();
    *buf = 136315394;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v28;
    v8 = "#I %s: We shouldn't handover if call cannot be maintained in context %s";
    v9 = v27;
    v10 = 22;
    goto LABEL_9;
  }

LABEL_62:
  if (v74)
  {
    sub_100004A34(v74);
  }

  return a2;
}

void sub_1002CF14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CF1D8(uint64_t a1, uint64_t a2)
{
  *buf = @"EmergencyCalling";
  *&buf[8] = @"WaitForWiFiRegistration";
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_10005B328(&v25, buf, &buf[16], 2uLL);
  v24 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  (*(*v12 + 104))(__p, v12, a2, 1, &v25, 0, 1);
  sub_10002FE1C(&v24, __p);
  sub_10000A1EC(__p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v24, v14);
  v15 = buf[0];
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v23 = *&buf[16];
  v16 = *(a1 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SHIBYTE(v23);
    v18 = __p[0];
    v19 = asStringBool(v15);
    v20 = __p;
    *buf = 136315650;
    *&buf[4] = "carrierPrefersToWaitForWiFi";
    if (v17 < 0)
    {
      v20 = v18;
    }

    *&buf[12] = 2082;
    *&buf[14] = v20;
    *&buf[22] = 2082;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: %{public}s = %{public}s", buf, 0x20u);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100045C8C(&v24);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v15;
}

void sub_1002CF460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  sub_100045C8C(&a13);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002CF4F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handOverNotPossibleTrigger";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  *buf = 0uLL;
  sub_10000501C(&__p, *(a1 + 136));
  v3 = *(a1 + 40);
  v12 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 48);
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

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  Registry::createRestModuleOneTimeUseConnection(&v9, *(a1 + 88));
  ctu::RestModule::connect();
  v5 = v10;
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = capabilities::ct::supports5G(v5);
  v8[0] = PersonalitySpecificImpl::simSlot(a1);
  v8[1] = v6;
  sub_1002CF6CC(buf, v8);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return 0;
}

void sub_1002CF65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CF6CC(uint64_t a1, int *a2)
{
  v5 = 0;
  sub_1002D03E0(a2, &v5);
  sub_10000501C(&__p, "/cc/events/bring_down_ims");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1002CF760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1002CF7C4(uint64_t a1, int a2)
{
  v4 = *(a1 + 216);
  v5 = PersonalitySpecificImpl::simSlot(a1);
  if (!(*(*v4 + 408))(v4, v5) || (v6 = PersonalitySpecificImpl::simSlot(a1), result = isCallHandoverSupported((a1 + 88), v6), result))
  {

    return sub_100971C2C(a1, a2);
  }

  return result;
}

BOOL sub_1002CF878(uint64_t a1, int a2)
{
  v3 = *(a1 + 458);
  if (v3 != a2)
  {
    *(a1 + 458) = a2;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (a2)
      {
        v5 = "enabled";
      }

      v7 = 136315394;
      v8 = "enableSMSOverIMSOnly";
      v9 = 2080;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: SMS over IMS context is %s", &v7, 0x16u);
    }
  }

  return v3 != a2;
}

uint64_t sub_1002CF968(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 458));
    v5 = 136315394;
    v6 = "isSMSOverIMSOnly";
    v7 = 2080;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: fIsSMSOverIMSnoVoLTEEnabled=%s", &v5, 0x16u);
  }

  return *(a1 + 458);
}

uint64_t sub_1002CFA2C(PersonalitySpecificImpl *a1)
{
  v2 = *(a1 + 27);
  v3 = PersonalitySpecificImpl::simSlot(a1);
  if ((*(*v2 + 408))(v2, v3))
  {
    v4 = *(a1 + 7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "shouldActOnTransportTypeChangeTo";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: In a call, don't do anything.", &v6, 0xCu);
    }

    return 0;
  }

  else
  {

    return sub_100971C44();
  }
}

void sub_1002CFB6C(uint64_t a1, BOOL *a2, BOOL *a3)
{
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002CFEC8(a3, &v24);
    v7 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    v8 = v24.__r_.__value_.__r.__words[0];
    sub_1002CFEC8(a2, &__p);
    v9 = &v24;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "handleCallStateChange";
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v26 = 2080;
    v27 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Call State changed from (%s) to (%s)", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a2[1] != a3[1])
  {
    if (a2[1])
    {
      v11 = PersonalitySpecificImpl::simSlot(a1);
      if (!isCallHandoverWithoutIMSVoiceServiceSupported((a1 + 88), v11))
      {
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      *&v24.__r_.__value_.__l.__data_ = 0uLL;
      sub_100098064(a1, &__p, &v24);
      data = __p.__r_.__value_.__l.__data_;
      size = v24.__r_.__value_.__l.__size_;
      v22 = *&v24.__r_.__value_.__l.__data_;
      if (v24.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v14 = sub_1000AC55C(a1, data, &v22);
      if (size)
      {
        sub_100004A34(size);
      }

      if (v14)
      {
        *(a1 + 480) = v14;
        *(a1 + 488) = 1;
        v15 = *(a1 + 56);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "handleCallStateChange";
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Saved in call IMS pref value as %llu", buf, 0x16u);
        }
      }

      v16 = v24.__r_.__value_.__l.__size_;
      if (!v24.__r_.__value_.__l.__size_)
      {
        return;
      }

LABEL_32:
      sub_100004A34(v16);
      return;
    }

    if (*(a1 + 488) == 1)
    {
      v17 = *(a1 + 56);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT) || (v18 = *(a1 + 480), *buf = 136315394, *&buf[4] = "handleCallStateChange", *&buf[12] = 2048, *&buf[14] = v18, _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: Clear in call IMS pref(%llu)", buf, 0x16u), (*(a1 + 488) & 1) != 0))
      {
        *(a1 + 488) = 0;
      }

      LODWORD(v24.__r_.__value_.__l.__data_) = 0;
      *buf = 0;
      *&buf[8] = 0;
      sub_100098064(a1, &v24, buf);
      data_low = LODWORD(v24.__r_.__value_.__l.__data_);
      v20 = *&buf[8];
      v21[0] = *buf;
      v21[1] = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      sub_1002CDD84(a1, data_low, v21);
      if (v20)
      {
        sub_100004A34(v20);
      }

      v16 = *&buf[8];
      if (*&buf[8])
      {
        goto LABEL_32;
      }
    }
  }
}

void sub_1002CFE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CFEC8(BOOL *a1@<X0>, std::string *a2@<X8>)
{
  *(&v15.__r_.__value_.__s + 23) = 8;
  strcpy(&v15, "Active: ");
  v4 = asStringBool(*a1);
  v5 = strlen(v4);
  v6 = std::string::append(&v15, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 8;
  strcpy(__p, ", VoIP: ");
  v8 = std::string::append(&v16, __p, 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = asStringBool(a1[1]);
  v11 = strlen(v10);
  v12 = std::string::append(&v17, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1002D0014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D0078(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v3 = *(a1 + 27);
  v4 = PersonalitySpecificImpl::simSlot(a1);
  v5 = *(*v3 + 360);

  return v5(v3, v4, a2);
}

uint64_t sub_1002D00E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v4 = PersonalitySpecificImpl::simSlot((a1 - 72));
  v5 = *(*v3 + 360);

  return v5(v3, v4, a2);
}

uint64_t sub_1002D0158(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 27);
  v6 = PersonalitySpecificImpl::simSlot(a1);
  v7 = *(*v5 + 368);

  return v7(v5, v6, a2, a3);
}

uint64_t sub_1002D01D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 144);
  v6 = PersonalitySpecificImpl::simSlot((a1 - 72));
  v7 = *(*v5 + 368);

  return v7(v5, v6, a2, a3);
}

void sub_1002D0258(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 464);
    v3 = *(a1 + 472);
    if (*(a1 + 488) == 1)
    {
      v5 = *(a1 + 480);
    }

    else
    {
      v5 = -1;
    }

    v6 = asStringBool(*(a1 + 434));
    v7 = 134218754;
    v8 = v4;
    v9 = 2048;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fImsPrefs[kDataContextBB] = %lu fImsPrefs[kDataContextIWLAN] = %lu fInCallImsPref = %lu fIsSatelliteSystem = %s", &v7, 0x2Au);
  }
}

void sub_1002D036C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D03A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1002D03E0(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
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
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v13, v7, v8, v9);
  __p = &v15;
  v17 = "first";
  sub_10000F688(&__p, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v19 = a1[1];
  sub_100C1CC08(&v19, &__p);
  ctu::rest::detail::write_enum_string_value();
  if (v18 < 0)
  {
    operator delete(__p);
  }

  __p = &v15;
  v17 = "second";
  sub_10000F688(&__p, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v15;
  *a2 = v15;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

void sub_1002D057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1002D0660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, dispatch_object_t object)
{
  ctu::OsLogContext::~OsLogContext(&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_1002D07C4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setConn:?];
  (*(*(a1 + 40) + 16))();
}

void sub_1002D0924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D0970(uint64_t result, uint64_t a2)
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

void sub_1002D098C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1002D0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D0B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1002D0CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v16);

  _Unwind_Resume(a1);
}

uint64_t sub_1002D0D1C(uint64_t result, uint64_t a2)
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

void sub_1002D0D38(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1002D0E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D0F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D103C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void *sub_1002D10A8(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D10E8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1002D11C0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002D120C(uint64_t a1@<X0>, uint64_t a2@<X2>, dispatch_object_t *a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  switch(a4)
  {
    case 0:
      v31 = *(a1 + 8);
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D28B0(&v75);
    case 1:
      v32 = *(a1 + 8);
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D29EC(&v75);
    case 2:
      v28 = *(a1 + 8);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2B28(&v75);
    case 3:
      v29 = *(a1 + 8);
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 4:
      v26 = *(a1 + 8);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2DB8(&v75);
    case 5:
      v35 = *(a1 + 8);
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2EF4(&v75);
    case 6:
      v36 = *(a1 + 8);
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3030(&v75);
    case 7:
      v30 = *(a1 + 8);
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 8:
      v39 = *(a1 + 8);
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 9:
      v27 = *(a1 + 8);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D316C(&v75);
    case 10:
      v38 = *(a1 + 8);
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 11:
      v25 = *(a1 + 8);
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 12:
    case 13:
      v8 = *(a1 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 14:
      v24 = *(a1 + 8);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 15:
      v37 = *(a1 + 8);
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D2C64(&v75);
    case 16:
      v20 = *(a1 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D32A8(&v75);
    case 17:
    case 26:
      v9 = *(a1 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D33E4(&v75);
    case 18:
      v19 = *(a1 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3520(&v75);
    case 19:
      v43 = *(a1 + 8);
      if (v43)
      {
        atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3798(&v75);
    case 20:
      v44 = *(a1 + 8);
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D38D4(&v75);
    case 21:
      v51 = *(a1 + 8);
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3A10(&v75);
    case 22:
      v58 = *(a1 + 8);
      if (v58)
      {
        atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D365C(&v75);
    case 23:
      v34 = *(a1 + 8);
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3030(&v75);
    case 24:
      v33 = *(a1 + 8);
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_10057B7D8(&v75);
    case 25:
      v14 = *(a1 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3B4C(&v75);
    case 27:
      v15 = *(a1 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_1002D3C88(&v75);
    case 28:
      v52 = *(a1 + 8);
      v74 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v53 = v76;
      if (v75)
      {
        v54 = v75 + 64;
      }

      else
      {
        v54 = 0;
      }

      *a5 = v54;
      a5[1] = v53;
      v75 = 0;
      v76 = 0;
      if (v73)
      {
        dispatch_release(v73);
      }

      v13 = v74;
      if (!v74)
      {
        return;
      }

      goto LABEL_36;
    case 29:
      v55 = *(a1 + 8);
      v72 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v71 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v56 = v76;
      if (v75)
      {
        v57 = v75 + 64;
      }

      else
      {
        v57 = 0;
      }

      *a5 = v57;
      a5[1] = v56;
      v75 = 0;
      v76 = 0;
      if (v71)
      {
        dispatch_release(v71);
      }

      v13 = v72;
      if (!v72)
      {
        return;
      }

      goto LABEL_36;
    case 30:
      v45 = *(a1 + 8);
      v70 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v46 = v76;
      if (v75)
      {
        v47 = v75 + 64;
      }

      else
      {
        v47 = 0;
      }

      *a5 = v47;
      a5[1] = v46;
      v75 = 0;
      v76 = 0;
      if (v69)
      {
        dispatch_release(v69);
      }

      v13 = v70;
      if (!v70)
      {
        return;
      }

      goto LABEL_36;
    case 31:
      v40 = *(a1 + 8);
      v68 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v67 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v41 = v76;
      if (v75)
      {
        v42 = v75 + 64;
      }

      else
      {
        v42 = 0;
      }

      *a5 = v42;
      a5[1] = v41;
      v75 = 0;
      v76 = 0;
      if (v67)
      {
        dispatch_release(v67);
      }

      v13 = v68;
      if (!v68)
      {
        return;
      }

      goto LABEL_36;
    case 32:
      v48 = *(a1 + 8);
      v66 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v49 = v76;
      if (v75)
      {
        v50 = v75 + 64;
      }

      else
      {
        v50 = 0;
      }

      *a5 = v50;
      a5[1] = v49;
      v75 = 0;
      v76 = 0;
      if (v65)
      {
        dispatch_release(v65);
      }

      v13 = v66;
      if (!v66)
      {
        return;
      }

      goto LABEL_36;
    case 33:
      v21 = *(a1 + 8);
      v64 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v22 = v76;
      if (v75)
      {
        v23 = v75 + 64;
      }

      else
      {
        v23 = 0;
      }

      *a5 = v23;
      a5[1] = v22;
      v75 = 0;
      v76 = 0;
      if (v63)
      {
        dispatch_release(v63);
      }

      v13 = v64;
      if (!v64)
      {
        return;
      }

      goto LABEL_36;
    case 34:
      v16 = *(a1 + 8);
      v62 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v17 = v76;
      if (v75)
      {
        v18 = v75 + 64;
      }

      else
      {
        v18 = 0;
      }

      *a5 = v18;
      a5[1] = v17;
      v75 = 0;
      v76 = 0;
      if (v61)
      {
        dispatch_release(v61);
      }

      v13 = v62;
      if (!v62)
      {
        return;
      }

      goto LABEL_36;
    case 35:
      v10 = *(a1 + 8);
      v60 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v59 = *a3;
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      sub_100115D60(a2, &v75);
      v11 = v76;
      if (v75)
      {
        v12 = v75 + 64;
      }

      else
      {
        v12 = 0;
      }

      *a5 = v12;
      a5[1] = v11;
      v75 = 0;
      v76 = 0;
      if (v59)
      {
        dispatch_release(v59);
      }

      v13 = v60;
      if (!v60)
      {
        return;
      }

LABEL_36:
      sub_100004A34(v13);
      return;
    case 36:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769CA0();
      }

      __TUAssertTrigger();
      goto LABEL_26;
    default:
LABEL_26:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769D40(a4);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769DC0();
      }

      __TUAssertTrigger();
      *a5 = 0;
      a5[1] = 0;
      return;
  }
}

void sub_1002D24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t a9, uint64_t a10, uint64_t a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, dispatch_object_t a15, uint64_t a16, uint64_t a17, dispatch_object_t a18, uint64_t a19, uint64_t a20, dispatch_object_t a21, uint64_t a22, uint64_t a23, dispatch_object_t a24, uint64_t a25, uint64_t a26, dispatch_object_t a27, uint64_t a28, uint64_t a29, dispatch_object_t a30, uint64_t a31, uint64_t a32, dispatch_object_t a33, uint64_t a34, uint64_t a35, dispatch_object_t a36, uint64_t a37, uint64_t a38, dispatch_object_t a39, uint64_t a40, uint64_t a41, dispatch_object_t a42, uint64_t a43, uint64_t a44, dispatch_object_t a45, uint64_t a46, uint64_t a47, dispatch_object_t a48, uint64_t a49, uint64_t a50, NSObject *object, uint64_t a52, std::__shared_weak_count *a53)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a53)
  {
    sub_100004A34(a53);
  }

  _Unwind_Resume(a1);
}

void sub_1002D2894(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, dispatch_object_t object, uint64_t a58, uint64_t a59)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (!a59)
  {
    JUMPOUT(0x1002D288CLL);
  }

  JUMPOUT(0x1002D2888);
}

void sub_1002D28B0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D29A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D29EC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D2AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2B28(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2C64(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D2D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2DB8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D2EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2EF4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D2FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3030(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D316C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D32A8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D339C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D33E4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D34D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3520(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D365C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3798(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D38D4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D39C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3A10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3B4C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3C88(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002D3D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3E54(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D3F28);
  __cxa_rethrow();
}

void sub_1002D3E94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D3EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D3F28(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D3FD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D40A8);
  __cxa_rethrow();
}

void sub_1002D4014(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4068(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D40A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4154(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4228);
  __cxa_rethrow();
}

void sub_1002D4194(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D41E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4228(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D42D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D43A8);
  __cxa_rethrow();
}

void sub_1002D4314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4368(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D43A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4454(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4528);
  __cxa_rethrow();
}

void sub_1002D4494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D44E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4528(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D45D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D46A8);
  __cxa_rethrow();
}

void sub_1002D4614(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4668(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D46A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4754(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4828);
  __cxa_rethrow();
}

void sub_1002D4794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D47E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4828(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D48D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D49A8);
  __cxa_rethrow();
}

void sub_1002D4914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}