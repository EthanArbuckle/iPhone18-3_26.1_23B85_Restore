void sub_100000CB8(uint64_t a1)
{
  if (abm::HelperServer::isBusy(*(a1 + 32)))
  {
    dword_100008000 = 60;
    v2 = *(a1 + 64);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5[0]) = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Server is busy", v5, 2u);
    }
  }

  else
  {
    v3 = dword_100008000 - 2;
    dword_100008000 -= 2;
    if ((byte_100008004 & 1) != 0 || v3 <= 0)
    {
      dword_100008000 = 0;
      dispatch_source_cancel(*(a1 + 48));
      dispatch_async(&_dispatch_main_q, &stru_100004180);
    }

    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = dword_100008000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Server is idle; %d secs to exit", v5, 8u);
    }
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  ctu::OsLogContext::OsLogContext(&v28, "com.apple.telephony.abm", "helper.main");
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v3 = v29;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_set_user_dir_suffix failed!", buf, 2u);
    }
  }

  NSTemporaryDirectory();
  if (&_sCanHostHelperServer)
  {
    CanHostHelperServer = sCanHostHelperServer();
    v6 = v29;
    v7 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (CanHostHelperServer)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Hosting ABM Helper server!", buf, 2u);
      }

      abm::HelperServer::create(&v26, v7);
      v9 = v26;
      v8 = v27;
      v26 = 0;
      v27 = 0;
      *buf = 0;
      v31 = 0;
      sub_10000129C(buf);
      sub_10000129C(&v26);
      if (v9)
      {
        v10 = v29;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting ABM Helper server", buf, 2u);
        }

        abm::HelperServer::start(v9);
        global_queue = dispatch_get_global_queue(21, 0);
        v12 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, global_queue);
        v13 = v12;
        if (v12)
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3321888768;
          handler[2] = sub_100001314;
          handler[3] = &unk_100004130;
          v23 = v12;
          dispatch_retain(v12);
          ctu::OsLogContext::OsLogContext(v24, &v28);
          v25[0] = v9;
          v25[1] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          dispatch_source_set_event_handler(v13, handler);
          dispatch_activate(v13);
          signal(15, 1);
          sub_10000129C(v25);
          ctu::OsLogContext::~OsLogContext(v24);
          if (v23)
          {
            dispatch_release(v23);
          }
        }

        v14 = dispatch_source_create(&_dispatch_source_type_timer, 1uLL, 0, &_dispatch_main_q);
        v15 = v14;
        if (v14)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3321888768;
          v18[2] = sub_100000CB8;
          v18[3] = &unk_1000041A0;
          v19[0] = v9;
          v19[1] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          object = v14;
          dispatch_retain(v14);
          ctu::OsLogContext::OsLogContext(v21, &v28);
          dispatch_source_set_event_handler(v15, v18);
          v16 = dispatch_time(0, 2000000000);
          dispatch_source_set_timer(v15, v16, 0x77359400uLL, 0x1DCD6500uLL);
          dispatch_activate(v15);
          ctu::OsLogContext::~OsLogContext(v21);
          if (object)
          {
            dispatch_release(object);
          }

          sub_10000129C(v19);
        }

        do
        {
          CFRunLoopRun();
        }

        while (byte_100008004 != 1);
        if (v15)
        {
          dispatch_release(v15);
        }

        if (v13)
        {
          dispatch_release(v13);
        }
      }
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not allowed to host ABM Helper server!", buf, 2u);
    }
  }

  v4 = v29;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ABM Helper Exit!", buf, 2u);
  }

  _Exit(0);
}

void sub_1000011BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  sub_10000129C(v24 + 56);
  ctu::OsLogContext::~OsLogContext((v24 + 40));
  if (object)
  {
    dispatch_release(object);
  }

  dispatch_release(v23);
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      ctu::OsLogContext::~OsLogContext((v25 - 80));
      _Unwind_Resume(a1);
    }
  }

  ctu::OsLogContext::~OsLogContext((v25 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_10000129C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_100001314(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIGTERM signal received; set quit flag and stop server", v4, 2u);
  }

  result = abm::HelperServer::stop(*(a1 + 56));
  byte_100008004 = 1;
  return result;
}

uint64_t sub_100001394(void *a1, void *a2)
{
  v4 = a2[4];
  a1[4] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = ctu::OsLogContext::OsLogContext((a1 + 5), (a2 + 5));
  v6 = a2[8];
  a1[7] = a2[7];
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000013EC(void *a1)
{
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ctu::OsLogContext::~OsLogContext((a1 + 5));
    v3 = a1[4];
    if (!v3)
    {
      return;
    }
  }

  else
  {
    ctu::OsLogContext::~OsLogContext((a1 + 5));
    v3 = a1[4];
    if (!v3)
    {
      return;
    }
  }

  dispatch_release(v3);
}

void sub_100001490(id a1)
{
  byte_100008004 = 1;
  Main = CFRunLoopGetMain();

  CFRunLoopStop(Main);
}

uint64_t sub_1000014C4(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return ctu::OsLogContext::OsLogContext((a1 + 7), (a2 + 7));
}

void sub_100001528(void *a1)
{
  ctu::OsLogContext::~OsLogContext((a1 + 7));
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}