void start()
{
  signal(15, sub_10000349C);
  signal(2, sub_10000349C);
  signal(9, sub_10000349C);
  memset(v0, 0, sizeof(v0));
  sub_100000FA0(v0);
  dispatch_main();
}

void sub_100000F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (*a10)(void), uint64_t a11, void (*a12)(void))
{
  if (a11)
  {
    a12();
  }

  if (a9)
  {
    a10();
  }

  _Unwind_Resume(exception_object);
}

void sub_100000FA0(uint64_t a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;
  if (v3)
  {
    (*(a1 + 24))(v3);
    v2 = *(a1 + 16);
  }

  *(a1 + 24) = sub_10000345C;
  sub_1000012A4(v2);
  dispatch_source_set_event_handler(*(a1 + 16), &stru_100010778);
  dispatch_resume(*(a1 + 16));
  v4 = getenv("CFNETWORKAGENT_SERVICE_NAME");
  if (!v4)
  {
    v4 = "com.apple.cfnetwork.cfnetworkagent";
  }

  mach_service = xpc_connection_create_mach_service(v4, &_dispatch_main_q, 1uLL);
  v6 = *a1;
  *a1 = mach_service;
  if (v6)
  {
    (*(a1 + 8))(v6);
    mach_service = *a1;
  }

  *(a1 + 8) = &_xpc_release;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000010DC;
  handler[3] = &unk_100010798;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(*a1);
}

void sub_1000010DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1000012A4(*(v3 + 16));
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received XPC XPC_TYPE_CONNECTION", &v8, 2u);
    }

    xpc_connection_set_target_queue(a2, &_dispatch_main_q);
    *&v8 = _NSConcreteStackBlock;
    *(&v8 + 1) = 3221225472;
    v9 = sub_100001334;
    v10 = &unk_1000107C0;
    v11 = a2;
    v12 = v3;
    xpc_connection_set_event_handler(a2, &v8);
    xpc_connection_resume(a2);
  }

  else
  {
    v5 = type;
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v5 == &_xpc_type_error)
    {
      if (v6)
      {
        LODWORD(v8) = 138412290;
        *(&v8 + 4) = a2;
        v7 = "Received XPC error %@";
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = v5;
      v7 = "Received XPC type %@";
LABEL_11:
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v7, &v8, 0xCu);
    }
  }
}

void sub_1000012A4(NSObject *a1)
{
  v2 = getenv("CFNETWORKAGENT_TIMEOUT");
  if (v2)
  {
    v3 = strtol(v2, 0, 10) * 1000000000.0;
  }

  else
  {
    v3 = 1.2e11;
  }

  v4 = dispatch_time(0, v3);

  dispatch_source_set_timer(a1, v4, v3, 0x3B9ACA00uLL);
}

void sub_100001334(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      buf = 138412290;
      buf_4 = object;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received xpc connection error %@", &buf, 0xCu);
    }
  }

  else if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "type");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Unknown";
      if (int64 == 2)
      {
        v6 = "kCFNetworkAgentXPCMessageTypePACResult";
      }

      if (int64 == 1)
      {
        v6 = "kCFNetworkAgentXPCMessageTypePACQuery";
      }

      buf = 134218242;
      buf_4 = int64;
      buf_12 = 2080;
      buf_14[0] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Handling incoming message type %lld %s", &buf, 0x16u);
    }

    if (int64 == 1)
    {
      xpc_retain(*(a1 + 32));
      operator new();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown message type", &buf, 2u);
    }
  }
}

void sub_100002584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::mutex::unlock((v28 + 80));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v29 + 56));
  if (a11)
  {
    sub_1000029AC(a11);
  }

  sub_1000029AC(a14);
  sub_1000029AC(a14);
  sub_1000029AC(a14);
  if (a22)
  {
    sub_1000029AC(a22);
  }

  if (a20)
  {
    sub_1000029AC(a20);
  }

  sub_1000029AC(a12);
  sub_1000029AC(a13);
  _Unwind_Resume(a1);
}

void sub_1000027DC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a4;
    v11 = *a5;
    *buf = 138544130;
    v27 = a2;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC query complete for id %{public}@, token %p,  list=%@, error=%@", buf, 0x2Au);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3321888768;
  v16[2] = sub_100002FF0;
  v16[3] = &unk_1000107E0;
  v12 = a1[5];
  v16[4] = a1[4];
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  v18 = *a4;
  v19 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  v20 = *a5;
  v21 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a1[7];
  v22 = a1[6];
  v23 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = a2;
  v25 = a3;
  dispatch_async(&_dispatch_main_q, v16);
  if (v23)
  {
    sub_1000029AC(v23);
  }

  if (v21)
  {
    sub_1000029AC(v21);
  }

  if (v19)
  {
    sub_1000029AC(v19);
  }

  if (v17)
  {
    sub_1000029AC(v17);
  }
}

void sub_1000029AC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100002AFC(void *a1, const char *a2, const void **a3)
{
  string = xpc_dictionary_get_string(a1, a2);
  if (string)
  {
    v5 = string;
    v6 = strlen(string);
    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v8 = *a3;
    *a3 = v7;
    if (v8)
    {

      CFRelease(v8);
    }
  }
}

void sub_100002B7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = (*(v1 + 16) & 1 | v3) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (v3 == sub_100002CD0 && v5 != 0)
  {
    v7 = (v1 + (v2 >> 1));
    if (v2)
    {
      v8 = *(*v7 + (sub_100002CD0 & 0xFFFFFFF8));
    }

    else
    {
      v8 = sub_100002CD0;
    }

    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8(v7, 0, 0, &v11, &v9);
    if (v10)
    {
      sub_1000029AC(v10);
    }

    if (v12)
    {
      sub_1000029AC(v12);
    }
  }

  _Block_release(*v1);
  operator delete();
}

void sub_100002C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002C94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100002CD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = sub_100002D8C;
  a1[2] = 0;
  v5 = *a1;
  v6 = a4[1];
  v10 = *a4;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v8 = *a5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v5 + 16))(v5, a2, a3, &v10, &v8);
  if (v9)
  {
    sub_1000029AC(v9);
  }

  if (v11)
  {
    sub_1000029AC(v11);
  }
}

void sub_100002D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002D8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = a4[1];
  v10 = *a4;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v8 = *a5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v5 + 16))(v5, a2, a3, &v10, &v8);
  if (v9)
  {
    sub_1000029AC(v9);
  }

  if (v11)
  {
    sub_1000029AC(v11);
  }
}

void sub_100002E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002E38(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_1000029AC(v3);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  a1[8] = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  a1[7] = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  a1[6] = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  a1[4] = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[3];
  a1[3] = 0;
  if (v10)
  {

    CFRelease(v10);
  }
}

void sub_100002EF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000108C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100002F6C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    sub_1000029AC(v3);
  }
}

void *sub_100002FBC(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100002FF0(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    v3 = reply;
    xpc_dictionary_set_int64(reply, "type", 2);
    v4 = *(a1 + 48);
    if (v4)
    {
      error = 0;
      v5 = CFPropertyListCreateData(0, v4, kCFPropertyListBinaryFormat_v1_0, 0, &error);
      v6 = v5;
      if (v5)
      {
        BytePtr = CFDataGetBytePtr(v5);
        Length = CFDataGetLength(v6);
        xpc_dictionary_set_data(v3, "list", BytePtr, Length);
        CFRelease(v6);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *allocator = 138412290;
          *&allocator[4] = error;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC failed to convert data %@", allocator, 0xCu);
        }

        CFRelease(error);
      }
    }

    else
    {
      v9 = *(a1 + 64);
      if (v9)
      {
        Code = CFErrorGetCode(v9);
        xpc_dictionary_set_int64(v3, "errCode", Code);
        Domain = CFErrorGetDomain(*(a1 + 64));
        *allocator = 0;
        *&allocator[8] = 1023;
        if (Domain)
        {
          v12 = sub_1000065C4(0, Domain, v17, &allocator[8]);
        }

        else
        {
          v17[0] = 0;
          *&allocator[8] = 0;
          v12 = v17;
        }

        *&allocator[16] = v12;
        xpc_dictionary_set_string(v3, "errDomain", v12);
        if (*&allocator[16])
        {
          if (v17 != *&allocator[16])
          {
            CFAllocatorDeallocate(*allocator, *&allocator[16]);
          }
        }
      }
    }

    xpc_connection_send_message(*(a1 + 80), v3);
    xpc_release(v3);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 96);
      v14 = *(a1 + 104);
      *allocator = 138543618;
      *&allocator[4] = v13;
      *&allocator[12] = 2048;
      *&allocator[14] = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC unable to send xpc reply for id %{public}@, token %p", allocator, 0x16u);
    }

    xpc_connection_cancel(*(a1 + 80));
  }
}

void sub_100003244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFAllocatorRef allocator, uint64_t a12, void *ptr)
{
  if (ptr)
  {
    if (v14 != ptr)
    {
      CFAllocatorDeallocate(allocator, ptr);
    }
  }

  xpc_release(v13);
  _Unwind_Resume(a1);
}

void sub_100003298(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_1000029AC(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_1000029AC(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    sub_1000029AC(v5);
  }
}

void *sub_100003300(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[11];
  result[10] = a2[10];
  result[11] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100003368(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    xpc_release(v1);
  }
}

void sub_100003378(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000033B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    xpc_release(v1);
  }
}

void sub_1000033C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100003404(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Inactivity timer fired", v1, 2u);
  }

  exit(0);
}

void sub_10000345C(NSObject *a1)
{
  if (a1)
  {
    dispatch_source_cancel(a1);

    dispatch_release(a1);
  }
}

void sub_10000349C(int a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CFNetworkAgent received signal=%d, shutting down.", v2, 8u);
  }

  exit(a1);
}

void sub_100003524(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100003560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003678(&v15, *a1, *(a1 + 8));
  if (v15)
  {
    v6 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1000036BC;
    block[3] = &unk_100010938;
    block[4] = a1;
    block[5] = v15;
    v10 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = a2[1];
    v11 = *a2;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a3[1];
    v13 = *a3;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v6, block);
    if (v14)
    {
      sub_1000029AC(v14);
    }

    if (v12)
    {
      sub_1000029AC(v12);
    }

    if (v10)
    {
      sub_1000029AC(v10);
    }
  }

  if (v16)
  {
    sub_1000029AC(v16);
  }
}

void *sub_100003678(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (this)
  {
    v4 = std::__shared_weak_count::lock(this);
    a1[1] = v4;
    if (v4)
    {
      return a1;
    }
  }

  else
  {
    a1[1] = 0;
  }

  v6 = sub_1000053EC();
  return sub_1000036BC(v6);
}

void sub_1000036BC(void *a1)
{
  v2 = a1[4];
  if (*(a1[5] + 40))
  {
    v3 = *(v2 + 40);
    if (CFErrorGetCode(v3) == 309)
    {
      Domain = CFErrorGetDomain(v3);
      if (CFStringCompare(Domain, kCFErrorDomainCFNetwork, 0) == kCFCompareEqualTo && (*(v2 + 152) & 1) == 0)
      {
        v5 = a1[7];
        if (*(v5 + 16))
        {
          if (*(v5 + 24))
          {
            v6 = a1[5];
            v7 = *(v6 + 48);
            *(v6 + 40) = 0;
            *(v6 + 48) = 0;
            if (v7)
            {
              sub_1000029AC(v7);
            }
          }
        }
      }
    }
  }

  v8 = a1[7];
  if (*(v8 + 88) == 1)
  {
    if (*v8)
    {
      v9 = CFURLCopyScheme(*v8);
      if (v9)
      {
        v10 = v9;
        if (CFStringCompare(v9, @"ftp", 1uLL) == kCFCompareEqualTo || CFStringCompare(v10, @"file", 1uLL) == kCFCompareEqualTo)
        {
          if (qword_100014660 != -1)
          {
            dispatch_once(&qword_100014660, &stru_1000108E8);
          }

          CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCFNetwork, -1002, 0);
          operator new();
        }

        CFRelease(v10);
      }
    }
  }

  if (*(a1[5] + 40))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v30 = CFErrorGetDomain(*(v2 + 40));
      Code = CFErrorGetCode(*(v2 + 40));
      *buf = 138412546;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = Code;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC Fetch failed with cached error [%@:%ld]", buf, 0x16u);
    }

    v11 = a1[7];
    v12 = v11[9];
    v13 = v11[10];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = a1[7];
    }

    v15 = v11[4];
    v14 = v11[5];
    v16 = *(v2 + 48);
    v44[0] = *(v2 + 40);
    v44[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100003F60(v12, v14, v15, 0, 0, v44);
    if (v16)
    {
      sub_1000029AC(v16);
    }

    if (v13)
    {
      sub_1000029AC(v13);
    }
  }

  else
  {
    if (*(v2 + 32))
    {
      v17 = a1[7];
      v18 = a1[8];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        v19 = a1[7];
        v20 = a1[8];
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100002A18();
    }

    v21 = *(v2 + 64);
    v22 = *(v2 + 72);
    if (v21 >= v22)
    {
      v25 = *(v2 + 56);
      v26 = (v21 - v25) >> 4;
      v27 = v26 + 1;
      if ((v26 + 1) >> 60)
      {
        sub_100005300();
      }

      v28 = v22 - v25;
      if (v28 >> 3 > v27)
      {
        v27 = v28 >> 3;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (!(v29 >> 60))
        {
          operator new();
        }

        sub_100005300();
      }

      v32 = 16 * v26;
      v33 = *(a1 + 7);
      *(16 * v26) = v33;
      if (*(&v33 + 1))
      {
        atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v24 = (v32 + 16);
      v34 = *(v2 + 56);
      v35 = *(v2 + 64) - v34;
      v36 = v32 - v35;
      memcpy((v32 - v35), v34, v35);
      *(v2 + 56) = v36;
      *(v2 + 64) = v24;
      *(v2 + 72) = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v21 = a1[7];
      v23 = a1[8];
      v21[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = v21 + 2;
    }

    *(v2 + 64) = v24;
    if ((v24 - *(v2 + 56)) == 16)
    {
      v38 = a1[7];
      v37 = a1[8];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = a1[9];
      v39 = a1[10];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v38 + 88) & 1) == 0 && *v38)
      {
        *buf = v38;
        *&buf[8] = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100004184();
      }

      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100003678(&v45, *v2, *(v2 + 8));
      v41 = v45;
      if (v45)
      {
        v42 = *(v2 + 16);
        v44[4] = v38;
        v44[5] = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v43 = v37;
        }

        else
        {
          v43 = 0;
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3321888768;
        *&buf[16] = sub_100004930;
        v48 = &unk_100010988;
        v49 = v2;
        v50 = v38;
        v51 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v52 = v41;
        v53 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      if (v46)
      {
        sub_1000029AC(v46);
      }

      if (v39)
      {
        sub_1000029AC(v39);
      }

      if (v37)
      {
        sub_1000029AC(v37);
      }

      if (v39)
      {
        sub_1000029AC(v39);
      }

      if (v37)
      {

        sub_1000029AC(v37);
      }
    }
  }
}

void sub_100003DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (v35)
  {
    sub_1000029AC(v35);
  }

  if (v36)
  {
    sub_1000029AC(v36);
  }

  if (v35)
  {
    sub_1000029AC(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003EB8(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_1000029AC(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    sub_1000029AC(v4);
  }
}

void *sub_100003F14(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100003F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t *a6)
{
  if (a1)
  {
    if (a5)
    {
      atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *a6;
    v8 = a6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v14 = a4;
    v15 = a5;
    if (a5)
    {
      atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v7;
    v13 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9(v11, a2, a3, &v14, &v12);
    if (v13)
    {
      sub_1000029AC(v13);
    }

    if (v15)
    {
      sub_1000029AC(v15);
    }

    if (v8)
    {
      sub_1000029AC(v8);
    }

    if (a5)
    {
      sub_1000029AC(a5);
    }
  }
}

void sub_10000403C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
    if (!v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  sub_1000029AC(v13);
  if (!v12)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  sub_1000029AC(v12);
  goto LABEL_7;
}

void sub_100004084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v10 = a4[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  v12[0] = *a5;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100003F60(v7, a2, a3, v9, v10, v12);
  if (v11)
  {
    sub_1000029AC(v11);
  }

  if (v10)
  {
    sub_1000029AC(v10);
  }

  if (v8)
  {

    sub_1000029AC(v8);
  }
}

void sub_100004148(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_1000029AC(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  sub_1000029AC(v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_1000029AC(v1);
  goto LABEL_5;
}

void sub_1000048C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_1000029AC(v19);
  sub_1000029AC(v19);
  if (a18)
  {
    sub_1000029AC(a18);
  }

  if (v18)
  {
    sub_1000029AC(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100004930(void *a1, uint64_t *a2, uint64_t a3, double a4)
{
  v8 = a1[4];
  std::mutex::lock((v8 + 80));
  *(a1[7] + 144) = a4;
  std::mutex::unlock((v8 + 80));
  if (!*a3)
  {
    v14 = *a2;
    v15 = a1[6];
    v17 = a1[5];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100004184();
  }

  Domain = CFErrorGetDomain(*a3);
  Code = CFErrorGetCode(*a3);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v21 = Domain;
    v22 = 2048;
    v23 = Code;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC Fetch failed with error [%@:%ld]", buf, 0x16u);
  }

  if (Code == 309 && CFStringCompare(kCFErrorDomainCFNetwork, Domain, 0) == kCFCompareEqualTo)
  {
    v16 = a1[5];
    if (*(v16 + 16))
    {
      if (*(v16 + 24))
      {
        *(v8 + 152) = 1;
      }
    }
  }

  v11 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v8 + 48);
  *(v8 + 40) = v11;
  *(v8 + 48) = v12;
  if (v13)
  {
    sub_1000029AC(v13);
    v11 = *(v8 + 40);
    v12 = *(v8 + 48);
  }

  v19[0] = 0;
  v19[1] = 0;
  v18[0] = v11;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004EB4(v8, v19, v18);
  if (v12)
  {
    sub_1000029AC(v12);
  }
}

void sub_100004B7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = (*(v1 + 16) & 1 | v3) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (v3 == sub_100004CCC && v5 != 0)
  {
    v7 = (v1 + (v2 >> 1));
    if (v2)
    {
      v8 = *(*v7 + (sub_100004CCC & 0xFFFFFFF8));
    }

    else
    {
      v8 = sub_100004CCC;
    }

    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    (v8)(v7, &v11, &v9, 0.0);
    if (v10)
    {
      sub_1000029AC(v10);
    }

    if (v12)
    {
      sub_1000029AC(v12);
    }
  }

  _Block_release(*v1);
  operator delete();
}

void sub_100004C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004C90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100004CCC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = sub_100004D88;
  a1[2] = 0;
  v3 = *a1;
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v8, &v6);
  if (v7)
  {
    sub_1000029AC(v7);
  }

  if (v9)
  {
    sub_1000029AC(v9);
  }
}

void sub_100004D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004D88(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v8, &v6);
  if (v7)
  {
    sub_1000029AC(v7);
  }

  if (v9)
  {
    sub_1000029AC(v9);
  }
}

void sub_100004E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004E30(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_1000029AC(v3);
  }
}

void *sub_100004E80(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100004EB4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[7];
  v22 = a1 + 7;
  v4 = a1[8];
  if (v3 != v4)
  {
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = *v3;
        v10 = *(*v3 + 72);
        v11 = *(*v3 + 80);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *v3;
        }

        v13 = *(v9 + 32);
        v12 = *(v9 + 40);
        v14 = *a2;
        v15 = a2[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = a3[1];
        v24[0] = *a3;
        v24[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100003F60(v10, v12, v13, v14, v15, v24);
        if (v16)
        {
          sub_1000029AC(v16);
        }
      }

      else
      {
        v17 = *v3;
        if (a1[4])
        {
          v18 = v3[1];
          v23[9] = *v3;
          v23[10] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v23[2] = _NSConcreteStackBlock;
          v23[3] = 3221225472;
          v23[4] = sub_100005128;
          v23[5] = &unk_100010968;
          v23[6] = v3;
          sub_100002A18();
        }

        v19 = v17[9];
        v11 = v17[10];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *v3;
        }

        v21 = v17[4];
        v20 = v17[5];
        v15 = a3[1];
        v23[0] = *a3;
        v23[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100003F60(v19, v20, v21, 0, 0, v23);
      }

      if (v15)
      {
        sub_1000029AC(v15);
      }

      if (v11)
      {
        sub_1000029AC(v11);
      }

      v8 = 0;
      v3 += 2;
    }

    while (v3 != v4);
  }

  sub_1000050DC(v22);
}

void sub_10000508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    sub_1000029AC(v19);
  }

  if (v18)
  {
    sub_1000029AC(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000050DC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1000029AC(v4);
    }
  }

  a1[1] = v2;
}

void sub_100005128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = **(a1 + 32);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v10 = a4[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  v12[0] = *a5;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100003F60(v7, a2, a3, v9, v10, v12);
  if (v11)
  {
    sub_1000029AC(v11);
  }

  if (v10)
  {
    sub_1000029AC(v10);
  }

  if (v8)
  {

    sub_1000029AC(v8);
  }
}

void sub_1000051F0(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_1000029AC(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  sub_1000029AC(v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_1000029AC(v1);
  goto LABEL_5;
}

void sub_10000522C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 32);
  v6 = a4[1];
  v9[0] = *a4;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v8[0] = *a5;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004EB4(v5, v9, v8);
  if (v7)
  {
    sub_1000029AC(v7);
  }

  if (v6)
  {

    sub_1000029AC(v6);
  }
}

void sub_1000052D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1000029AC(v2);
  }

  if (v1)
  {
    sub_1000029AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000052F4(JSGlobalContextRef ctx)
{
  if (ctx)
  {
    JSGlobalContextRelease(ctx);
  }
}

void sub_100005310(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_1000029AC(v1);
  }
}

uint64_t sub_100005320(uint64_t result, uint64_t a2)
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

void sub_100005340(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_100005350(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10000538C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unsupported PAC URL scheme - please use HTTPS for PAC File URLs", v1, 2u);
  }
}

uint64_t sub_100005404(uint64_t a1)
{
  sub_100005440(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100005440(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_100005484((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_100005484(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1000029AC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_1000054DC(uint64_t a1)
{
  notify_cancel(*(a1 + 28));
  v2 = *(a1 + 24);

  return notify_cancel(v2);
}

void sub_100005518(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100010AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000055B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100010A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100005628(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100005484(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_100005674(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL sub_100005AA8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *sub_100005B1C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100005300();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100005BC4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 104));
  if (*(a1 + 80))
  {
    sub_1000050DC((a1 + 80));
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      (v3[1])();
    }

    operator delete();
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_1000029AC(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_100005C7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100010B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

_BYTE *sub_100005CF0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005300();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100005F5C()
{
  std::mutex::~mutex(v2);
  sub_100005404(v1);
  v3 = *(v0 + 8);
  if (v3)
  {
    sub_1000029AC(v3);
  }

  operator delete();
}

uint64_t sub_100006354(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v9 = [a3 statusCode];
    }

    else
    {
      v9 = -1;
    }

    v11 = 138413314;
    v12 = v8;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC fetch end for %@. data %p response %p statusCode %ld error %p", &v11, 0x34u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100006478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && (*(a1 + 88) & 1) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HTTPS upgrade task failed, attempting fallback %@ %@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000065B4;
    v11[3] = &unk_100010B58;
    v8 = *(a1 + 32);
    v11[4] = *(a1 + 40);
    [objc_msgSend(v8 dataTaskWithURL:v7 completionHandler:{v11), "resume"}];
  }

  else
  {
    v9 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
  }

  return [*(a1 + 32) finishTasksAndInvalidate];
}

UInt8 *sub_1000065C4(int a1, CFStringRef theString, UInt8 *a3, uint64_t *a4)
{
  v13 = 0;
  usedBufLen = a4;
  if (!a4)
  {
    v13 = 0;
    usedBufLen = &v13;
  }

  maxBufLen = 0;
  Length = CFStringGetLength(theString);
  v14.location = 0;
  v14.length = Length;
  CFStringGetBytes(theString, v14, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (a3 && *usedBufLen > maxBufLen)
  {
    goto LABEL_7;
  }

  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    v9 = maxBufLen;
    a3 = Typed;
LABEL_7:
    v15.location = 0;
    v15.length = Length;
    CFStringGetBytes(theString, v15, 0x8000100u, 0, 0, a3, v9, usedBufLen);
    a3[*usedBufLen] = 0;
    return a3;
  }

  if (a4)
  {
    if (a3 && *a4 >= 1)
    {
      *a3 = 0;
    }

    *a4 = 0;
  }

  return a3;
}

void sub_1000066F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 16);
  if (!v5 || (v9 = *(a1 + 8), (v10 = std::__shared_weak_count::lock(v5)) == 0))
  {
    sub_1000053EC();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_1000029AC(v10);
  if (v9)
  {
    v12 = *a3;
    if (*(*a3 + 88) == 1)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v33 = *(v12 + 16);
    v35 = *(v12 + 32);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3321888768;
    v36[2] = sub_100006C48;
    v36[3] = &unk_100010BA0;
    v14 = a4[1];
    v36[4] = *a4;
    v37 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = v9;
    v39 = v11;
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = a3[1];
    v40 = *a3;
    v41 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.receiver) = 138412290;
      *(&buf.receiver + 4) = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC fetch start for %@", &buf, 0xCu);
    }

    v17 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [(NSURLSessionConfiguration *)v17 setConnectionProxyDictionary:&__NSDictionary0__struct];
    [(NSURLSessionConfiguration *)v17 set_prohibitEncryptedDNS:1];
    [(NSURLSessionConfiguration *)v17 setProtocolClasses:0];
    error[0] = 0;
    Data = CFPropertyListCreateData(0, &off_100011220, kCFPropertyListBinaryFormat_v1_0, 0, error);
    if (Data)
    {
      [(NSURLSessionConfiguration *)v17 set_atsContext:Data];
      CFRelease(Data);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.receiver) = 138412290;
        *(&buf.receiver + 4) = error[0];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC failed data conversion %@", &buf, 0xCu);
      }

      CFRelease(error[0]);
    }

    [(NSURLSessionConfiguration *)v17 setRequestCachePolicy:1];
    [(NSURLSessionConfiguration *)v17 setURLCache:0];
    [(NSURLSessionConfiguration *)v17 setHTTPCookieStorage:0];
    [(NSURLSessionConfiguration *)v17 set_alternativeServicesStorage:0];
    [(NSURLSessionConfiguration *)v17 set_sourceApplicationAuditTokenData:v35];
    [(NSURLSessionConfiguration *)v17 set_sourceApplicationBundleIdentifier:*(&v35 + 1)];
    v19 = objc_alloc_init(NSOperationQueue);
    [v19 setUnderlyingQueue:a2];
    v20 = [PACURLSessionDelegate alloc];
    if (v20)
    {
      buf.receiver = v20;
      buf.super_class = PACURLSessionDelegate;
      v21 = objc_msgSendSuper2(&buf, "init");
      v23 = v21;
      if (v21)
      {
        objc_setProperty_atomic(v21, v22, v34, 8);
        objc_setProperty_atomic(v23, v24, *(&v34 + 1), 16);
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = [NSURLSession sessionWithConfiguration:v17 delegate:v23 delegateQueue:v19];
    error[0] = _NSConcreteStackBlock;
    error[1] = 3221225472;
    error[2] = sub_100006354;
    error[3] = &unk_100010B30;
    v43 = v34;
    v44 = v35;
    error[4] = v36;
    error[5] = v13;
    v26 = [(NSURL *)v13 scheme];
    if (!v26 || [(NSString *)v26 caseInsensitiveCompare:@"http"]|| ([(NSURL *)v13 isEqual:[NSURL URLWithString:@"http://wpad/wpad.dat"]]& 1) != 0)
    {
      v27 = 0;
      v28 = v13;
    }

    else
    {
      v32 = [NSURLComponents componentsWithURL:v13 resolvingAgainstBaseURL:0];
      [(NSURLComponents *)v32 setScheme:@"https"];
      v28 = [(NSURLComponents *)v32 URL];
      v27 = 1;
    }

    v29 = [[NSMutableURLRequest alloc] initWithURL:v28];
    v30 = v29;
    v31 = 60.0;
    if (v27)
    {
      v31 = 3.0;
    }

    [v29 setTimeoutInterval:v31];
    buf.receiver = _NSConcreteStackBlock;
    buf.super_class = 3221225472;
    v46 = sub_100006478;
    v47 = &unk_100010B80;
    v53 = v27;
    v51 = v34;
    v52 = v35;
    v48 = v25;
    v49 = error;
    v50 = v13;
    [(NSURLSessionDataTask *)[(NSURLSession *)v25 dataTaskWithRequest:v30 completionHandler:&buf] resume];
    objc_autoreleasePoolPop(v16);
    if (v41)
    {
      sub_1000029AC(v41);
    }

    if (v39)
    {
      sub_1000029AC(v39);
    }

    if (v37)
    {
      sub_1000029AC(v37);
    }
  }

  sub_1000029AC(v11);
}

void sub_100006C48(void *a1, const __CFData *a2, uint64_t a3, const void *a4)
{
  if (a4)
  {
    CFAbsoluteTimeGetCurrent();
    CFRetain(a4);
    operator new();
  }

  v6 = a1[8];
  if (*(v6 + 88) == 1)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v9 = a1[4];
  v8 = a1[5];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HTTPResponse = CFURLResponseGetHTTPResponse();
  v11 = HTTPResponse;
  if (HTTPResponse)
  {
    if (CFHTTPMessageGetResponseStatusCode(HTTPResponse) == 401)
    {
      _CFHTTPMessageSetResponseURL();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(result.location) = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC failed authentication", &result, 2u);
      }

      v32[0] = kCFProxyAutoConfigurationHTTPResponseKey;
      v32[1] = kCFProxyAutoConfigurationURLKey;
      result.location = v11;
      result.length = v7;
      CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCFNetwork, 309, [NSDictionary dictionaryWithObjects:&result forKeys:v32 count:2]);
      operator new();
    }

    CFAbsoluteTimeGetCurrent();
    ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v11);
    if (ResponseStatusCode != -1 && ResponseStatusCode <= 299)
    {
      v13 = CFHTTPMessageCopyHeaderFieldValue(v11, @"Content-Type");
      v14 = v13;
      if (v13)
      {
        if (CFStringFind(v13, @"application/x-javascript", 1uLL).location == -1)
        {
          goto LABEL_29;
        }

        v15 = CFStringFind(v14, @"charset=", 1uLL);
        if (v15.location == -1)
        {
          goto LABEL_29;
        }

        v16 = v15.location + v15.length;
        if (CFStringGetCharacterAtIndex(v14, v15.location + v15.length) == 34)
        {
          ++v16;
        }

        Length = CFStringGetLength(v14);
        v18 = qword_100014678;
        if (!qword_100014678)
        {
          v18 = CFCharacterSetCreateWithCharactersInString(0, @"\n\r\t ;");
          qword_100014678 = v18;
          if (!v18)
          {
            goto LABEL_29;
          }
        }

        v19 = Length - v16;
        v34.location = v16;
        v34.length = v19;
        v20.length = CFStringFindCharacterFromSet(v14, v18, v34, 0, &result) ? result.location - v16 : v19;
        v20.location = v16;
        v21 = CFStringCreateWithSubstring(0, v14, v20);
        v22 = v21;
        if (v21)
        {
          v23 = CFStringConvertIANACharSetNameToEncoding(v21);
          CFRelease(v22);
        }

        else
        {
LABEL_29:
          v23 = -1;
        }

        CFRelease(v14);
      }

      else
      {
        v23 = -1;
      }

      v24 = CFDataGetLength(a2);
      if (v24)
      {
        if (v23 == -1)
        {
          v26 = 0;
        }

        else
        {
          BytePtr = CFDataGetBytePtr(a2);
          v26 = CFStringCreateWithBytes(0, BytePtr, v24, v23, 1u);
        }

        if (!v26 && v23 != 134217984)
        {
          v27 = CFDataGetBytePtr(a2);
          v26 = CFStringCreateWithBytes(0, v27, v24, 0x8000100u, 1u);
        }

        if (!v26 && v23 != 513)
        {
          v28 = CFDataGetBytePtr(a2);
          v26 = CFStringCreateWithBytes(0, v28, v24, 0x201u, 1u);
        }

        if (!v26)
        {
          v29 = CFDataGetBytePtr(a2);
          if (!CFStringCreateWithBytes(0, v29, v24, 0, 1u) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            LOWORD(result.location) = 0;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC data bytes could not be converted", &result, 2u);
          }
        }
      }
    }

    operator new();
  }

  v30 = 0;
  v31 = 0;
  sub_10000745C(v9, 0, 0, &v30);
  if (v31)
  {
    sub_1000029AC(v31);
  }

  if (v8)
  {
    sub_1000029AC(v8);
  }
}

void sub_100007328(_Unwind_Exception *a1)
{
  sub_1000029AC(v2);
  if (v1)
  {
    sub_1000029AC(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1000073B4(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_1000029AC(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_1000029AC(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    sub_1000029AC(v4);
  }
}

void *sub_100007410(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10000745C(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4)
{
  if (a1)
  {
    if (a3)
    {
      atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *a4;
    v6 = a4[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    v12 = a2;
    v13 = a3;
    if (a3)
    {
      atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v5;
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7(v9, &v12, &v10);
    if (v11)
    {
      sub_1000029AC(v11);
    }

    if (v13)
    {
      sub_1000029AC(v13);
    }

    if (v6)
    {
      sub_1000029AC(v6);
    }

    if (a3)
    {
      sub_1000029AC(a3);
    }
  }
}

void sub_100007538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1000029AC(a10);
  }

  if (a12)
  {
    sub_1000029AC(a12);
    if (!v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  sub_1000029AC(v13);
  if (!v12)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  sub_1000029AC(v12);
  goto LABEL_7;
}

void sub_100007584(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_100007594(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000075D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100007620(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

CFDictionaryRef sub_100007650(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  Length = CFStringGetLength(a2);
  location = CFStringFind(a2, @":", 0).location;
  v9 = location;
  if (location == -1)
  {
    v10 = Length;
  }

  else
  {
    v10 = location;
  }

  v11 = 5;
  if (Length >= 6)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v11);
      if (!CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex))
      {
        break;
      }

      if (Length == ++v11)
      {
        v11 = Length;
        break;
      }
    }
  }

  v13 = v10 <= v11;
  v14 = v10 - v11;
  if (v13)
  {
    return 0;
  }

  valuePtr = 0;
  v15 = CFGetAllocator(a2);
  v35.length = v11 - 1;
  v35.location = 0;
  v16 = CFStringCreateWithSubstring(v15, a2, v35);
  v17 = CFGetAllocator(a2);
  v36.location = v11;
  v36.length = v14;
  v18 = CFStringCreateWithSubstring(v17, a2, v36);
  if (v9 != -1)
  {
    v37.location = v9 + 1;
    v37.length = Length + ~v9;
    v19 = CFStringCreateWithSubstring(a1, a2, v37);
    valuePtr = CFStringGetIntValue(v19);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (!v16)
  {
LABEL_41:
    if (v18)
    {
      CFRelease(v18);
    }

    return 0;
  }

  if (CFStringCompare(v16, @"PROXY", 1uLL) == kCFCompareEqualTo)
  {
    if (CFStringCompare(a3, @"http", 1uLL) && CFStringCompare(a3, @"ws", 1uLL))
    {
      if (CFStringCompare(a3, @"https", 1uLL) && CFStringCompare(a3, @"wss", 1uLL))
      {
        if (CFStringCompare(a3, @"ftp", 1uLL))
        {
          goto LABEL_15;
        }

        v20 = kCFProxyTypeFTP;
        if (v9 == -1)
        {
          v21 = 0;
          v22 = 21;
LABEL_33:
          valuePtr = v22;
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v25 = &kCFProxyTypeHTTPS;
    }

    else
    {
      v25 = &kCFProxyTypeHTTP;
    }

    v20 = *v25;
    if (v9 == -1)
    {
      v21 = 0;
      v22 = 80;
      goto LABEL_33;
    }

LABEL_28:
    v21 = 0;
    goto LABEL_34;
  }

  if (CFStringCompare(v16, @"SOCKS", 1uLL))
  {
LABEL_15:
    CFRelease(v16);
    goto LABEL_41;
  }

  v23 = CFStringCompare(a3, @"socks4", 1uLL);
  v20 = kCFProxyTypeSOCKS;
  if (v23)
  {
    v24 = &kCFStreamSocketSOCKSVersion5;
  }

  else
  {
    v24 = &kCFStreamSocketSOCKSVersion4;
  }

  v21 = *v24;
  if (v9 == -1)
  {
    v22 = 1080;
    goto LABEL_33;
  }

LABEL_34:
  CFRelease(v16);
  if (!v20)
  {
    goto LABEL_41;
  }

  v26 = 3;
  v27 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  keys[0] = kCFProxyTypeKey;
  keys[1] = kCFProxyHostNameKey;
  values[0] = v20;
  values[1] = v18;
  keys[2] = kCFProxyPortNumberKey;
  v34 = 0;
  values[2] = v27;
  v32 = 0;
  if (v21)
  {
    v34 = kCFStreamPropertySOCKSVersion;
    v32 = v21;
    v26 = 4;
  }

  v28 = CFDictionaryCreate(a1, keys, values, v26, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v28;
}

void sub_1000079D4(const OpaqueJSContext **a1, uint64_t a2)
{
  v3 = *(*a2 + 8);
  if (v3)
  {
    v5 = CFURLCopyHostName(v3);
    v6 = CFURLCopyScheme(v3);
    v7 = v6;
    if (v5 && v6)
    {
      if (CFNetworkDiagnosticLevel() >= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v3;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC: Calling FindProxyForURL (Target URL: %{public}@, Target Hostname: %{public}@)", buf, 0x16u);
      }

      v8 = *a1;
      v10 = *(*a2 + 32);
      v9 = *(*a2 + 40);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC calling FindProxyForURL for id %@ token %p", buf, 0x16u);
      }

      *buf = v9;
      *&buf[8] = v10;
      if (v8)
      {
        GlobalObject = JSContextGetGlobalObject(v8);
      }

      else
      {
        GlobalObject = 0;
      }

      v12 = JSStringCreateWithCFString(@"__dnsResolve");
      Property = JSObjectGetProperty(v8, GlobalObject, v12, 0);
      JSStringRelease(v12);
      if (Property)
      {
        if (JSValueIsObject(v8, Property))
        {
          if (JSObjectSetPrivate(Property, buf))
          {
            v14 = JSStringCreateWithCFString(@"__Apple_FindProxyForURL");
            if (GlobalObject)
            {
              GlobalObject = JSObjectGetProperty(v8, GlobalObject, v14, 0);
            }

            JSStringRelease(v14);
            IsFunction = JSObjectIsFunction(v8, GlobalObject);
            if (GlobalObject)
            {
              v16 = IsFunction;
            }

            else
            {
              v16 = 0;
            }

            if (!v16)
            {
              goto LABEL_37;
            }

            v17 = CFURLCopyAbsoluteURL(v3);
            v18 = CFURLGetString(v17);
            v19 = JSStringCreateWithCFString(v18);
            arguments[0] = JSValueMakeString(v8, v19);
            v20 = JSStringCreateWithCFString(v5);
            arguments[1] = JSValueMakeString(v8, v20);
            if (v17)
            {
              CFRelease(v17);
            }

            v21 = JSObjectCallAsFunction(v8, GlobalObject, 0, 2uLL, arguments, 0);
            JSStringRelease(v19);
            JSStringRelease(v20);
            if (v21 && JSValueIsString(v8, v21))
            {
              v22 = JSValueToStringCopy(v8, v21, 0);
              v23 = JSStringCopyCFString(0, v22);
              JSStringRelease(v22);
            }

            else
            {
LABEL_37:
              v23 = 0;
            }

            if (!JSObjectSetPrivate(Property, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              LOWORD(arguments[0]) = 0;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to clear the private context on dnsResolve object", arguments, 2u);
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(arguments[0]) = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC returning from FindProxyForURL", arguments, 2u);
            }

            if (v23)
            {
              CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              operator new();
            }

LABEL_45:
            CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCFNetwork, 308, 0);
            operator new();
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_45;
          }

          LOWORD(arguments[0]) = 0;
          v24 = "Failed to set the private context on dnsResolve object";
        }

        else
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_45;
          }

          LOWORD(arguments[0]) = 0;
          v24 = "dnsResolve is not an object";
        }
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_45;
        }

        LOWORD(arguments[0]) = 0;
        v24 = "Failed to find dnsResolve function";
      }

      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v24, arguments, 2u);
      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PAC FindProxyForURL failed. Invalid target URL host=%p, scheme=%p", buf, 0x16u);
  }

  CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCFNetwork, 305, 0);
  operator new();
}

void sub_100008380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  CFRelease(cf);
  CFRelease(v17);
  if (v16)
  {
    CFRelease(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10000845C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_10000846C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000084A8(JSGlobalContextRef ctx)
{
  if (ctx)
  {
    JSGlobalContextRelease(ctx);
  }
}

uint64_t sub_1000084B4(int *a1)
{
  check = 0;
  v2 = notify_check(*a1, &check);
  v3 = check;
  if (notify_check(a1[1], &check))
  {
    v4 = 1;
  }

  else
  {
    v4 = check == 0;
  }

  v5 = !v4;
  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

JSValueRef sub_100008524(const OpaqueJSContext *a1)
{
  Null = JSValueMakeNull(a1);
  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"JSEvaluator", 0, 0);
  if (v3)
  {
    v4 = v3;
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    if (!NetworkGlobalEntity)
    {
      goto LABEL_12;
    }

    v6 = NetworkGlobalEntity;
    v7 = SCDynamicStoreCopyValue(v4, NetworkGlobalEntity);
    CFRelease(v6);
    if (!v7)
    {
      goto LABEL_12;
    }

    Value = CFDictionaryGetValue(v7, kSCDynamicStorePropNetPrimaryInterface);
    if (!Value)
    {
      CFRelease(v7);
      goto LABEL_12;
    }

    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, Value, kSCEntNetIPv4);
    CFRelease(v7);
    if (!NetworkInterfaceEntity)
    {
LABEL_12:
      CFRelease(v4);
      return Null;
    }

    v10 = SCDynamicStoreCopyValue(v4, NetworkInterfaceEntity);
    CFRelease(v4);
    CFRelease(NetworkInterfaceEntity);
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 != CFDictionaryGetTypeID())
      {
        v4 = v10;
        goto LABEL_12;
      }

      v4 = CFDictionaryGetValue(v10, @"Addresses");
      CFRetain(v4);
      CFRelease(v10);
      if (v4)
      {
        Null = sub_1000086AC(kCFAllocatorDefault, a1, v4);
        goto LABEL_12;
      }
    }
  }

  return Null;
}

JSValueRef sub_1000086AC(const __CFAllocator *a1, const OpaqueJSContext *a2, CFArrayRef theArray)
{
  v6 = CFStringCreateByCombiningStrings(a1, theArray, @", ");
  if (CFArrayGetCount(theArray) < 1)
  {
    v7 = CFRetain(@"[ ]");
  }

  else
  {
    v7 = CFStringCreateWithFormat(a1, 0, @"[ %@ ]", v6);
  }

  v8 = v7;
  v9 = JSStringCreateWithCFString(v7);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v10 = JSEvaluateScript(a2, v9, 0, 0, 0, 0);
  JSStringRelease(v9);
  return v10;
}

JSValueRef sub_100008780(const OpaqueJSContext *a1, JSObjectRef object, uint64_t a3, uint64_t a4, JSValueRef *a5)
{
  Private = JSObjectGetPrivate(object);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC performing DNS resolution", buf, 2u);
  }

  Null = JSValueMakeNull(a1);
  if (a4 == 1 && JSValueIsString(a1, *a5))
  {
    v10 = JSValueToStringCopy(a1, *a5, 0);
    v11 = JSStringCopyCFString(kCFAllocatorDefault, v10);
    v12 = v11;
    if (Private)
    {
      v13 = *Private;
      v14 = *(Private + 1);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    *buf = kCFAllocatorDefault;
    v54 = 1023;
    if (v11)
    {
      v15 = sub_1000065C4(kCFAllocatorDefault, v11, v56, &v54);
    }

    else
    {
      v56[0] = 0;
      v54 = 0;
      v15 = v56;
    }

    v55 = v15;
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
    v17 = nw_parameters_create();
    nw_parameters_set_allow_unusable_addresses();
    nw_parameters_set_prohibit_encrypted_dns();
    if (v13)
    {
      *&allocator = kCFAllocatorDefault;
      *(&allocator + 1) = 1023;
      ptr[0] = sub_1000065C4(kCFAllocatorDefault, v13, &ptr[1], &allocator + 1);
      nw_parameters_set_source_application_by_bundle_id();
      if (ptr[0])
      {
        if (&ptr[1] != ptr[0])
        {
          CFAllocatorDeallocate(allocator, ptr[0]);
        }
      }
    }

    if (v14)
    {
      BytePtr = CFDataGetBytePtr(v14);
      if (BytePtr)
      {
        allocator = *BytePtr;
        *ptr = *(BytePtr + 1);
        v41 = allocator;
        v42 = *ptr;
        nw_parameters_set_source_application();
      }
    }

    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    v20 = nw_path_evaluator_copy_path();
    *&allocator = 0;
    *(&allocator + 1) = &allocator;
    ptr[0] = 0x3812000000;
    ptr[1] = sub_100008E70;
    ptr[2] = sub_100008E80;
    v52 = nw_resolver_create_with_path();
    *&v41 = 0;
    *(&v41 + 1) = &v41;
    *&v42 = 0x3812000000;
    *(&v42 + 1) = sub_100008E98;
    v43 = sub_100008EA8;
    objecta = dispatch_semaphore_create(0);
    v34 = 0;
    v35 = &v34;
    v36 = 0x3812000000;
    v37 = sub_100008EC0;
    v38 = sub_100008ED0;
    obj = 0;
    if (qword_100014690 != -1)
    {
      dispatch_once(&qword_100014690, &stru_100010CE0);
    }

    v21 = *(*(&allocator + 1) + 48);
    nw_resolver_set_update_handler();
    dispatch_semaphore_wait(*(*(&v41 + 1) + 48), 0xFFFFFFFFFFFFFFFFLL);
    if (v35[6] && nw_array_get_count())
    {
      v22 = v35[6];
      count = nw_array_get_count();
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, count, &kCFTypeArrayCallBacks);
      v47[3] = Mutable;
      v25 = v35[6];
      nw_array_apply();
      v26 = CFArrayGetCount(v47[3]);
      v27 = v47;
      if (!v26)
      {
        v28 = v47[3];
        if (v28)
        {
          CFRelease(v28);
          v27 = v47;
        }

        v27[3] = 0;
      }
    }

    else
    {
      v27 = v47;
    }

    v29 = v27[3];
    _Block_object_dispose(&v34, 8);
    v30 = obj;
    obj = 0;
    if (v30)
    {
      nw_release(v30);
    }

    _Block_object_dispose(&v41, 8);
    v31 = objecta;
    objecta = 0;
    if (v31)
    {
      dispatch_release(v31);
    }

    _Block_object_dispose(&allocator, 8);
    v32 = v52;
    v52 = 0;
    if (v32)
    {
      nw_release(v32);
    }

    if (v20)
    {
      nw_release(v20);
    }

    if (evaluator_for_endpoint)
    {
      nw_release(evaluator_for_endpoint);
    }

    if (v17)
    {
      nw_release(v17);
    }

    if (host_with_numeric_port)
    {
      nw_release(host_with_numeric_port);
    }

    if (v55 && v56 != v55)
    {
      CFAllocatorDeallocate(*buf, v55);
    }

    _Block_object_dispose(&v46, 8);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v29)
    {
      Null = sub_1000086AC(kCFAllocatorDefault, a1, v29);
      CFRelease(v29);
    }

    JSStringRelease(v10);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PAC returned from DNS resolution", buf, 2u);
  }

  return Null;
}

void sub_100008D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *obj, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, dispatch_object_t object, uint64_t a36, char a37)
{
  if (v38)
  {
    nw_release(v38);
  }

  if (v37)
  {
    nw_release(v37);
  }

  v40 = STACK[0x530];
  if (STACK[0x530])
  {
    if (a9 != v40)
    {
      CFAllocatorDeallocate(STACK[0x520], v40);
    }
  }

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008E70(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void sub_100008E80(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    nw_release(v2);
  }
}

uint64_t sub_100008E98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void sub_100008EA8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    dispatch_release(v2);
  }
}

uint64_t sub_100008EC0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void sub_100008ED0(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    nw_release(v2);
  }
}

intptr_t sub_100008EE8(intptr_t result, int a2, void *obj)
{
  if (a2 == 2)
  {
    v5 = result;
    if (obj)
    {
      nw_retain(obj);
      v6 = *(v5[4] + 8);
      v7 = *(v6 + 48);
      *(v6 + 48) = obj;
      if (v7)
      {
        nw_release(v7);
      }
    }

    v8 = *(*(v5[5] + 8) + 48);
    nw_resolver_cancel();
    v9 = *(*(v5[6] + 8) + 48);

    return dispatch_semaphore_signal(v9);
  }

  return result;
}

uint64_t sub_100008F68(uint64_t a1, int a2, nw_endpoint_t endpoint)
{
  v4 = nw_endpoint_copy_address_string(endpoint);
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    free(v5);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return 1;
}

void sub_100008FEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000903C(id a1)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CFNetwork");
  v2 = CFBundleCopyResourceURL(BundleWithIdentifier, @"PACSupport", @"js", 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFReadStreamCreateWithFile(0, v2);
    CFRelease(v3);
    if (v4)
    {
      Mutable = CFDataCreateMutable(0, 0);
      Current = CFRunLoopGetCurrent();
      clientContext.version = 0;
      clientContext.info = Mutable;
      memset(&clientContext.retain, 0, 24);
      CFReadStreamSetClient(v4, 0x1AuLL, sub_1000092B8, &clientContext);
      CFReadStreamScheduleWithRunLoop(v4, Current, @"_kProxySupportLoadingPacPrivateMode");
      if (CFReadStreamOpen(v4))
      {
        v15 = 0;
        context.version = 0;
        context.info = &v15;
        memset(&context.retain, 0, 24);
        v7 = CFGetAllocator(v4);
        v8 = CFAbsoluteTimeGetCurrent();
        v9 = CFRunLoopTimerCreate(v7, v8 + 30.0, 0.0, 0, 0, sub_1000092AC, &context);
        if (v9)
        {
          CFRunLoopAddTimer(Current, v9, @"_kProxySupportLoadingPacPrivateMode");
        }

        do
        {
          if ((CFReadStreamGetStatus(v4) & 0xFFFFFFFFFFFFFFFDLL) == 5)
          {
            break;
          }

          CFRunLoopRunInMode(@"_kProxySupportLoadingPacPrivateMode", 1.0e20, 1u);
        }

        while (!v15);
        if (v9)
        {
          CFRunLoopRemoveTimer(Current, v9, @"_kProxySupportLoadingPacPrivateMode");
          CFRelease(v9);
        }

        if (CFReadStreamGetError(v4).error || v15)
        {
          Length = CFDataGetLength(Mutable);
          if (Length)
          {
            v17.length = Length;
            v17.location = 0;
            CFDataDeleteBytes(Mutable, v17);
          }
        }

        CFReadStreamClose(v4);
      }

      else
      {
        CFReadStreamGetError(v4);
      }

      CFReadStreamUnscheduleFromRunLoop(v4, Current, @"_kProxySupportLoadingPacPrivateMode");
      CFReadStreamSetClient(v4, 0, 0, 0);
      CFRelease(v4);
      v11 = CFDataGetLength(Mutable);
      if (v11)
      {
        v12 = v11;
        BytePtr = CFDataGetBytePtr(Mutable);
        qword_100014680 = CFStringCreateWithBytes(0, BytePtr, v12, 0x8000100u, 1u);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void sub_1000092B8()
{
  v0 = __chkstk_darwin();
  if (v1 == 16 || v1 == 8)
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }

  else if (v1 == 2)
  {
    v3 = v2;
    v4 = v0;
    while (CFReadStreamHasBytesAvailable(v4))
    {
      v5 = CFReadStreamRead(v4, buffer, 4096);
      CFDataAppendBytes(v3, buffer, v5);
    }
  }
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  Error = _CFReadStreamGetError(stream);
  v2 = *&Error.error;
  domain = Error.domain;
  result.error = v2;
  result.domain = domain;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}