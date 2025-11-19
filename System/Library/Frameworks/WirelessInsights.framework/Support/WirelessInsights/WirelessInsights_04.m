void *sub_10005E478(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

uint64_t sub_10005E51C(uint64_t a1)
{
  *a1 = off_1002AC668;
  *(a1 + 48) = off_1002AC6C0;
  sub_100060B0C(a1 + 128, *(a1 + 136));
  v2 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10001C4B0(a1 + 80, *(a1 + 88));
  sub_100060AAC(a1 + 56, *(a1 + 64));
  XPCEventPublisher.Token.rawValue.getter(v3, v4);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_10005E5F4(uint64_t a1)
{
  sub_10005E51C(a1);

  operator delete();
}

void sub_10005E62C(uint64_t a1)
{
  sub_10005E51C(a1 - 48);

  operator delete();
}

void sub_10005E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v7, (a1 + 8));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10005E794;
  v6[3] = &unk_1002AC708;
  v6[4] = a1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100060FF8;
  v9[3] = &unk_1002AC938;
  v5 = v7;
  v9[5] = v7;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[4] = v6;
  sub_100160E88(a3, (v5 + 24), v9);
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v8)
  {
    sub_100008350(v8);
  }
}

void sub_10005E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005E79C(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    v4 = a1[5];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO) || (*buf = 134217984, *v11 = v2, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "agg:#I SubmissionAggregator must force-close %zd triggers still pending. Flushing to disk now.", buf, 0xCu), a1[9]))
    {
      do
      {
        v5 = a1[7];
        v6 = a1[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 32);
          v8 = *(v5 + 36);
          v9 = *(v5 + 40);
          *buf = 67109632;
          *v11 = v7;
          *&v11[4] = 1024;
          *&v11[6] = v8;
          v12 = 1024;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "agg:#N [xx-] Trigger(cid=0x%x, trid=0x%x, sid=%u) - SubmissionAggregator force-ending; we may not have finished", buf, 0x14u);
        }

        v1 = v1 & 0xFFFFFFFF00000000 | *(v5 + 40);
        sub_100017264(a1, *(v5 + 32), v1);
      }

      while (a1[9]);
    }
  }
}

void sub_10005E8FC(uint64_t a1)
{
  v3 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000610A4;
  block[3] = &unk_1002AC968;
  block[4] = a1 + 8;
  block[5] = &v3;
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
}

void sub_10005EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v17 = a3;
  v18 = a4;
  ctu::TimerService::throwIfPeriodIsZero();
  *__p = *a2;
  v16 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v10 = v17;
  v11 = v18;
  v12 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v12;
  *a6 = 0;
  (*(*a1 + 24))(a1, __p, v10, v11, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005EB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, NSObject *a10, __int16 a11, char a12, char a13)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  sub_1001FF5B8(&a10, &a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10005EBC4(uint64_t result, uint64_t a2)
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

void sub_10005EBE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10005EBF0(uint64_t a1, uint64_t a2, int a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_10000C604(a1 + 56, &v19);
  if ((a1 + 64) == v4)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v29 = 67109632;
      *&v29[4] = v19;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = HIDWORD(v19);
      HIWORD(v30) = 1024;
      LODWORD(v31[0].__locale_) = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "agg:#I [oE.] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Final timeout fired but trigger no longer exists", v29, 0x14u);
    }
  }

  else
  {
    sub_10000A448(v29);
    v5 = sub_1000A1C8C(v4[6]);
    v6 = *v5;
    v7 = *(v5 + 8);
    if (*v5 != v7)
    {
      do
      {
        v8 = *v6;
        v9 = sub_100008EEC(v29, "0x", 2);
        *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
        v10 = std::ostream::operator<<();
        sub_100008EEC(v10, ",", 1);
        ++v6;
      }

      while (v6 != v7);
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = v19;
      v12 = HIDWORD(v19);
      v14 = v20;
      std::stringbuf::str();
      v15 = v18 >= 0 ? &__p : __p;
      *buf = 67109890;
      v22 = v13;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v14;
      v27 = 2082;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "agg:#I [xx-] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Final timeout fired; missing clients: %{public}s", buf, 0x1Eu);
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    sub_100017264(a1, v19, v20);
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    std::locale::~locale(v31);
    std::ostream::~ostream();
    std::ios::~ios();
  }
}

void sub_10005EF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100039C48(va);
  _Unwind_Resume(a1);
}

void sub_10005EF48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t *a6)
{
  v17 = a3;
  v18 = a4;
  v10 = sub_10000C604(a1 + 56, &v17);
  if ((a1 + 64) == v10)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v20 = v17;
      v21 = 1024;
      v22 = HIDWORD(v17);
      v23 = 1024;
      v24 = v18;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = HIDWORD(a2);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "agg:#E [ E ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Tried adding Metric(mid=0x%x, profid=0x%x) but trigger no longer exists!", buf, 0x20u);
    }
  }

  else
  {
    v13 = v10[6];
    v14 = a6[1];
    v16[0] = *a6;
    v16[1] = v14;
    *a6 = 0;
    a6[1] = 0;
    sub_10000CE40(a1, v13, a2, v11, v12, a5, v16);
    if (v14)
    {
      sub_100008350(v14);
    }
  }
}

void sub_10005F084(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005F0A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 36) < __PAIR64__(a3, HIDWORD(a2)))
    {
      ++v4;
    }

    else
    {
      v6 = v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3 || *(v6 + 36) != __PAIR64__(a3, HIDWORD(a2)))
  {
    return v3;
  }

  return v6;
}

BOOL sub_10005F110(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  pthread_mutex_lock(&stru_1002D4C68);
  if (!xmmword_1002D4CA8)
  {
    sub_1000A1C94();
  }

  v6 = *(&xmmword_1002D4CA8 + 1);
  if (*(&xmmword_1002D4CA8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4C68);
  pthread_mutex_lock(&stru_1002D4C68);
  v7 = xmmword_1002D4CA8;
  if (!xmmword_1002D4CA8)
  {
    sub_1000A1C94();
  }

  v8 = *(&xmmword_1002D4CA8 + 1);
  if (*(&xmmword_1002D4CA8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4C68);
  v9 = sub_10000E214(v7, a2);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }

  if (v9)
  {
    v10 = *(a1 + 40);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_1001FF5F4(a2, v10);
    return 0;
  }

  v14 = a3;
  v13 = *a3;
  v12 = v14[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3) >= 2)
  {
    v15 = *(a1 + 40);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "agg:#I Skipping coverage stats update for bundled submission", &v17, 2u);
    return 0;
  }

  for (; v13 != v12; v13 += 24)
  {
    if (*v13 == 3973376 || *v13 == 827648)
    {
      sub_10005F7E8();
    }
  }

  return 0;
}

void sub_10005F360(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4C68);
  if (v1)
  {
    sub_100008350(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10005F3C4(uint64_t a1, uint64_t **a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int ***a7)
{
  v30 = a4;
  v31 = a5;
  pthread_mutex_lock(&stru_1002D48E8);
  v14 = xmmword_1002D4928;
  if (!xmmword_1002D4928)
  {
    sub_1000308F8();
  }

  v15 = *(&xmmword_1002D4928 + 1);
  if (*(&xmmword_1002D4928 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4928 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D48E8);
  if (v14)
  {
    if (sub_100031850(v14))
    {
      if ((a1 + 88) == sub_10000D648(a1 + 80, &v30))
      {
        buf[0] = 1;
        sub_1000612CC(a1 + 80, &v30);
      }

      else
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1001FF66C(&v30, &v31, v16);
        }
      }

      v24 = a2[1];
      v27 = *a2;
      if (v24)
      {
        atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
      }

      v25 = *a7;
      v26 = a7[1];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v32 = 0;
      operator new();
    }

    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *&buf[4] = a4;
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(a4);
      *&buf[14] = 1024;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "agg:#I GeoServices does not have location info, not trying to get CellularCoverageStats - Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
    }

    v22 = *a2;
    v23 = *a7;
    v20 = a7[1];
    v28[0] = v23;
    v28[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    sub_10000CD8C(a1, v22, a3, a4, a5, a6, v28);
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *&buf[4] = a4;
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(a4);
      *&buf[14] = 1024;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "agg:#I Failed to get WISGEOServicesHandler, not trying to get CellularCoverageStats - Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
    }

    v18 = *a2;
    v19 = *a7;
    v20 = a7[1];
    v29[0] = v19;
    v29[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    sub_10000CD8C(a1, v18, a3, a4, a5, a6, v29);
  }

  if (v20)
  {
    sub_100008350(v20);
  }

  if (v15)
  {
    sub_100008350(v15);
  }
}

void sub_10005F8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10005F91C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10005F91C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100038CA0();
    operator delete();
  }

  return a1;
}

uint64_t sub_10005F964(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

uint64_t sub_10005F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int ***a8)
{
  v8 = **a8;
  if (v8 != (*a8)[1])
  {
    v9 = *v8;
    operator new();
  }

  return (*(*a1 + 48))(a1, a6, a4, a5);
}

void sub_10005FC80(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100008350(v1);
  }

  sub_10005F91C((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_10005FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *a6;
  v6 = a6[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v8, (a1 + 8));
  operator new();
}

void sub_10005FE1C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, int a5, int a6, uint64_t *a7)
{
  memset(__p, 0, 24);
  sub_10000A964(__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  __p[3] = a4;
  v14 = a5;
  v15 = a6;
  v12 = a7[1];
  v16 = *a7;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v18, (a1 + 8));
  operator new();
}

float sub_1000600A0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = a3;
  v12 = a4;
  v6 = sub_10000C604(a1 + 56, &v11);
  v7 = (a1 + 64);
  v8 = *(a1 + 40);
  if (v7 == v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v14 = v11;
      v15 = 1024;
      v16 = HIDWORD(v11);
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "agg:#E [ E ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Add hold for cid 0x%x failed because no submission found", buf, 0x1Au);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      v14 = v11;
      v15 = 1024;
      v16 = HIDWORD(v11);
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "agg:#I [ X ] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Add hold for cid 0x%x", buf, 0x1Au);
    }

    sub_10000A7E0(v9[6], a2);
  }

  return result;
}

void sub_1000602F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104))
  {
    wis::getWISTimestamp(a1);
    pthread_mutex_lock(&stru_1002D4A58);
    v6 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v7 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    v8 = sub_1000DFE64(v6);
    if (v7)
    {
      sub_100008350(v7);
    }

    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0x704000300;
      *&v11[8] = 1024;
      *&v11[10] = a3;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "agg:#I Sending AWD event Trigger(cid=0x%x, trid=0x%x, sid=%u)", v11, 0x14u);
    }

    sub_1000097A8(a1, a2, (a3 << 32) | 7);
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 136315138;
    *&v11[4] = wis::asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "agg:#I createTriggerFromWisd_sync cancelled due to not fDiagnosticsMode=%s", v11, 0xCu);
  }
}

void sub_100060530(uint64_t a1, ctu *this)
{
  v7 = a1;
  v8 = this;
  ctu::hex(&v4, this, this);
  v2 = std::string::insert(&v4, 0, "Trigger-wirelessinsightsd-");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100008BF8(__p);
}

void sub_100060698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000606D0(uint64_t a1, __int128 *a2, void *a3, void *aBlock)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 32) = *a3;
  v8 = a3 + 1;
  v9 = a3[1];
  *(a1 + 40) = v9;
  v10 = a1 + 40;
  *(a1 + 24) = v7;
  v11 = a3[2];
  *(a1 + 48) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *a3 = v8;
    *v8 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 32) = v10;
  }

  return a1;
}

BOOL sub_100060764(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void sub_100060854(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100060928);
  __cxa_rethrow();
}

void sub_100060894(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000608E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060928(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100060964(uint64_t result, uint64_t a2)
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

void sub_100060980(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_100060990(void *a1)
{
  *a1 = off_1002AC8E8;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000609DC(void *a1)
{
  *a1 = off_1002AC8E8;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_100060A58@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_100060AAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100060AAC(a1, *a2);
    sub_100060AAC(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100008350(v4);
    }

    operator delete(a2);
  }
}

void sub_100060B0C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100060B0C(a1, *a2);
    sub_100060B0C(a1, *(a2 + 1));
    sub_10001C4B0((a2 + 64), *(a2 + 9));
    v4 = *(a2 + 7);
    if (v4)
    {
      _Block_release(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_100060B94(void *a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10001D1C8(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_100060CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_100060F78(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100060D58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100060F78(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100060D74(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100060764(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100060764(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_100060DFC(int a1, uint64_t a2, char *__s, uint64_t a4, void **a5)
{
  sub_100007ECC(__p, __s);
  sub_100060E98(v8, a4);
  sub_1000606D0(a2, __p, v8, *a5);
  sub_10001C4B0(v8, v8[1]);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100060E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100060E98(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100060EF0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100060EF0(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10001D1C8(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void sub_100060F78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001C4B0(a2 + 64, *(a2 + 72));
    v3 = *(a2 + 56);
    if (v3)
    {
      _Block_release(v3);
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_100060FF8(uint64_t a1, NSObject **a2)
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

void sub_100061054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100061078(uint64_t result, uint64_t a2)
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

void sub_100061094(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000610B0(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(*a1 + 8);
  *(v1 + 104) = v2;
  if (!v2)
  {
    v3 = *(v1 + 72);
    if (v3)
    {
      v4 = *(v1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "agg:#N Clearing collection of %zd submissions due to ShouldCollect=false", buf, 0xCu);
      }

      sub_100060AAC(v1 + 56, *(v1 + 64));
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
      *(v1 + 56) = v1 + 64;
    }
  }

  operator delete();
}

uint64_t sub_1000611A8(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void sub_100061200(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_100061278(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AC998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000612CC(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_10006137C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_10006137C(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = a3[1];
    v6 = a3[2];
    v8 = *a3;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 36);
        if (v6 >= v10)
        {
          break;
        }

LABEL_4:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_13;
        }
      }

      if (v10 >= v6)
      {
        if (__PAIR64__(v7, v8) < *(v9 + 28))
        {
          goto LABEL_4;
        }

        if (*(v9 + 28) >= __PAIR64__(v7, v8))
        {
          goto LABEL_13;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = result;
LABEL_13:
  *a2 = v9;
  return result;
}

void *sub_100061414(void *a1)
{
  *a1 = off_1002AC9E8;
  v2 = a1[8];
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void sub_10006146C(void *a1)
{
  *a1 = off_1002AC9E8;
  v2 = a1[8];
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008350(v3);
  }

  operator delete();
}

uint64_t sub_100061580(uint64_t result, uint64_t a2)
{
  *a2 = off_1002AC9E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 32);
  *(a2 + 48) = *(result + 48);
  *(a2 + 32) = v3;
  v4 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000615F0(void *a1)
{
  sub_1000617F8(a1 + 8);

  operator delete(a1);
}

void sub_10006162C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v9 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v10 = *(a1 + 36);
  v6 = *(a1 + 48);
  v11 = *(a1 + 44);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v12, (v9 + 8));
  operator new();
}

uint64_t sub_1000617AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000617F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100008350(v3);
  }
}

uint64_t *sub_100061848(void *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v3 = sub_10000D648(*v1 + 80, (v1 + 28));
  if (v2 + 11 != v3)
  {
    *(v3 + 40) = 2;
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    v5 = *(v1 + 16);
    *buf = *(v1 + 8);
    v26 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *(v1 + 64);
    }

    v6 = *(v1 + 24);
    v7 = *(v1 + 28);
    v8 = *(v1 + 36);
    v9 = *(v1 + 40);
    v10 = *(v1 + 72);
    v24[0] = v4;
    v24[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v1 + 48);
    v12 = *(v1 + 56);
    v23[0] = v11;
    v23[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10005F9A0(v2, buf, v6, v7, v8, v9, v24, v23);
    if (v12)
    {
      sub_100008350(v12);
    }

    if (v10)
    {
      sub_100008350(v10);
    }

    if (v5)
    {
      sub_100008350(v5);
    }
  }

  else
  {
    v13 = v2[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "agg:#I CellularCoverageTile is nil, cannot update the CellularCoverage stats", buf, 2u);
    }

    v14 = *(v1 + 8);
    v15 = *(v1 + 24);
    v16 = *(v1 + 28);
    v17 = *(v1 + 36);
    v18 = *(v1 + 40);
    v19 = *(v1 + 56);
    *buf = *(v1 + 48);
    v26 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000CD8C(v2, v14, v15, v16, v17, v18, buf);
    if (v19)
    {
      sub_100008350(v19);
    }

    (*(*v2 + 48))(v2, *(v1 + 40), *(v1 + 28), *(v1 + 36));
  }

  sub_100061A58(&v22);
  return sub_1000082FC(&v21);
}

void sub_1000619F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100008350(v10);
  }

  sub_100061A58(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void *sub_100061A58(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[9];
    if (v2)
    {
      sub_100008350(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      sub_100008350(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      sub_100008350(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100061AC4(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 28);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v12 = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10005EF48(v2, v3, v4, v5, v6, &v12);
  if (v13)
  {
    sub_100008350(v13);
  }

  sub_100061B60(&v11);
  return sub_1000082FC(&v10);
}

void sub_100061B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008350(a12);
  }

  sub_100061B60(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100061B60(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100061BB4(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2 != v1[3])
  {
    v3 = *v1;
    v4 = *v2;
    v5 = v1[7];
    sub_100061D30();
  }

  sub_100061CCC(&v8);
  return sub_1000082FC(&v7);
}

void sub_100061C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100061CCC(va1);
  sub_1000082FC(va);
  _Unwind_Resume(a1);
}

void *sub_100061CCC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      sub_100008350(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      v1[3] = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100061D9C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_1002ACA68;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_10000E4DC(a1 + 24, *a2, a2[1], a2[1] - *a2);
  return a1;
}

void sub_100061E30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002ACA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100061E84(uint64_t **a1)
{
  v1 = a1;
  sub_1000600A0(**a1, *(*a1 + 2), *(*a1 + 12), *(*a1 + 5));
  operator delete();
}

void sub_100061F10(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10000C604(v2 + 56, *a1 + 3);
  sub_10000D734(v2, v3, *(v1 + 2), *(v1 + 12), *(v1 + 5));
  operator delete();
}

uint64_t *sub_100061FB0(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1000602F8(*v1, v1 + 16, *(v1 + 8));
  sub_100062018(&v4);
  return sub_1000082FC(&v3);
}

void sub_100061FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100062018(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100062018(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10006206C()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000620A8()
{
  if ((byte_1002D4FE0 & 1) == 0)
  {
    byte_1002D4FE0 = 1;
    return __cxa_atexit(sub_1000607D0, &stru_1002D4F90, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000620E4()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100062120()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10006215C()
{
  if ((byte_1002D4938 & 1) == 0)
  {
    byte_1002D4938 = 1;
    return __cxa_atexit(sub_10002B41C, &stru_1002D48E8, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100062198()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000621D4()
{
  if ((byte_1002D4C08 & 1) == 0)
  {
    byte_1002D4C08 = 1;
    return __cxa_atexit(sub_10004F8F0, &unk_1002D4BB8, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100062210(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    v2 = std::stoi(a1, 0, 10);
    v3 = v2 & 0xFF00;
    LODWORD(v1) = v2;
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4 | v1 | v3;
}

void sub_10006226C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10006224CLL);
}

void sub_10006228C(uint64_t a1, char a2)
{
  sub_1000081C8(&v9, (a1 + 8));
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008350(v4);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1000623A0;
  v6[3] = &unk_1002ACAD8;
  v6[4] = a1;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a2;
  xpc_activity_register("com.apple.wirelessinsightsd.publication", XPC_ACTIVITY_CHECK_IN, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10006237C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000623A0(void *a1, _xpc_activity_s *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        state = xpc_activity_get_state(a2);
        if (state == 2)
        {
          v10 = *(v5 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "timer:#I ****** Publication timer FIRE! *********", buf, 2u);
          }

          sub_100007ECC(v11, "Timer-pubRun");
          sub_100008BF8(v11);
        }

        if (!state)
        {
          v9 = *(v5 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "timer:#I ****** Publication timer check in! *********", buf, 2u);
          }

          sub_100007ECC(__p, "Timer-pubCheckin");
          sub_100008BF8(__p);
        }
      }

      sub_100008350(v7);
    }
  }
}

void sub_100062940(xpc_object_t *a1, int64_t a2)
{
  xpc_dictionary_set_BOOL(*a1, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(*a1, XPC_ACTIVITY_INTERVAL, a2);
  xpc_dictionary_set_int64(*a1, XPC_ACTIVITY_DELAY, 9 * a2 / 10);
  xpc_dictionary_set_int64(*a1, XPC_ACTIVITY_GRACE_PERIOD, a2 / 10);
  xpc_dictionary_set_string(*a1, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  v4 = *a1;

  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
}

uint64_t sub_100062A34(uint64_t result, uint64_t a2)
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

void sub_100062A50(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t sub_100062A60(uint64_t result, uint64_t a2)
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

void sub_100062A7C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100062A8C(uint64_t a1, uint64_t a2, ctu *a3, int a4)
{
  v5 = a3;
  sub_100062C58(a2, a3);
  sub_1000081C8(&v22, (a1 + 8));
  v9 = v22;
  v8 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008350(v8);
  }

  v10 = HIBYTE(v21);
  v11 = __src[0];
  if (v21 >= 0)
  {
    v12 = __src;
  }

  else
  {
    v12 = __src[0];
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 1174405120;
  handler[2] = sub_100062E90;
  handler[3] = &unk_1002ACB38;
  handler[4] = a1;
  handler[5] = v9;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = HIBYTE(v21);
  }

  if (v10 < 0)
  {
    sub_10000FFF8(&__p, v11, __src[1]);
  }

  else
  {
    __p = *__src;
    v16 = v21;
  }

  v17 = a2;
  v18 = v5;
  v19 = a4;
  xpc_activity_register(v12, XPC_ACTIVITY_CHECK_IN, handler);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_100062C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100062C58(uint64_t a1, ctu *a2)
{
  sub_10000A448(&v13);
  v3 = sub_100008EEC(&v13, "com.apple.wirelessinsightsd.trigger:", 36);
  v4 = sub_100008EEC(v3, "0x", 2);
  ctu::hex(__p, a2, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_100008EEC(v4, v6, v7);
  sub_100008EEC(v8, ":", 1);
  v9 = std::ostream::operator<<();
  sub_100008EEC(v9, ":", 1);
  std::ostream::operator<<();
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100062E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100062E90(uint64_t a1, _xpc_activity_s *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        state = xpc_activity_get_state(a2);
        if (state == 2)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 88);
            buf = 67109120;
            *buf_4 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "timer:#N ****** TRIGGER FIRE: 0x%x *********", &buf, 8u);
          }

          sub_100007ECC(v13, "Timer-run");
          sub_100008BF8(v13);
        }

        if (!state)
        {
          v9 = *(v5 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = (a1 + 56);
            if (*(a1 + 79) < 0)
            {
              v10 = *v10;
            }

            buf = 136315138;
            *buf_4 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "timer:#N ****** Trigger timer check in: %s *********", &buf, 0xCu);
          }

          sub_100007ECC(__p, "Timer-checkin");
          sub_100008BF8(__p);
        }
      }

      sub_100008350(v7);
    }
  }
}

void sub_1000632DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t object, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100063388(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1000AAD28(v2, *(a1 + 56), *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 56);

  sub_1000AB030(v2, v3);
}

char *sub_1000633D4(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_10000FFF8(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_100063438(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100063450(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1000634A4(uint64_t a1, uint64_t a2, ctu *a3)
{
  sub_100062C58(a2, a3);
  if (v5 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  xpc_activity_unregister(p_p);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_100063504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100063520()
{
  xpc_activity_unregister("com.apple.wirelessinsightsd.publication");
  pthread_mutex_lock(&stru_1002D4A58);
  v0 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v1 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E085C(v0, 0);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100063614(uint64_t a1)
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
  v4 = sub_1000E08E8(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  if (!v4)
  {
    pthread_mutex_lock(&stru_1002D4A58);
    v5 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v6 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000E085C(v5, 1);
    if (v6)
    {
      sub_100008350(v6);
    }

    sub_10006228C(a1, 1);
  }
}

void sub_1000637C8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000638D4;
  v6[3] = &unk_1002ACB68;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v8 = a4;
  sub_1000081C8(&v11, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000639B0;
  block[3] = &unk_1002ACB90;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v12)
  {
    sub_100008350(v12);
  }
}

const void **sub_1000638E4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100063918(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_10006394C(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFNumberGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1000639C0(uint64_t result, uint64_t a2)
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

void sub_1000639DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t sub_1000639EC()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100063A28(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = off_1002ACBD0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

void sub_100063A54(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "WISMessageType", 6);
    xpc_dictionary_set_int64(v5, "WISMessageComponentId", *(a1 + 8));
    xpc_dictionary_set_int64(v5, "WISMessageTriggerTimestampId", *(a1 + 16));
    xpc_dictionary_set_int64(v5, "WISMessageSubmisssionId", *(a1 + 32));
    xpc_dictionary_set_int64(v5, "WISMessageTriggerId", *(a1 + 28));
    xpc_dictionary_set_int64(v5, "WISMessageTriggeringComponentId", *(a1 + 24));
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
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

void *sub_100063C28(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

void *sub_100063CCC(void *a1)
{
  sub_10006549C((a1 + 9));
  v2 = a1[8];
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_100032AD8(a1);
}

void sub_100063D28(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v4, a1);
  operator new();
}

uint64_t sub_100063E18(uint64_t a1)
{
  v1 = a1 + 56;
  if (!*(a1 + 56))
  {
    sCreateWISMetadataLoaderForXpcConversion();
    v4 = *(a1 + 64);
    *(a1 + 56) = v5;
    if (v4)
    {
      sub_100008350(v4);
    }
  }

  return v1;
}

void sub_100063E80(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v36 = a2;
  *&v32 = a3;
  *(&v32 + 1) = "event";
  sub_10000BBB0(&v32, &v35);
  if (xpc_get_type(v35) == &_xpc_type_array)
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 1065353216;
    object[0] = v35;
    if (v35)
    {
      xpc_retain(v35);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_10000BC4C(__p, object, 0);
    xpc_release(object[0]);
    object[0] = v35;
    if (v35)
    {
      xpc_retain(v35);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v35) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v35);
    }

    else
    {
      count = 0;
    }

    sub_10000BC4C(v31, object, count);
    xpc_release(object[0]);
    for (i = __p[1]; i != v31[1] || __p[0] != v31[0]; i = ++__p[1])
    {
      v30[0] = __p;
      v30[1] = i;
      sub_100064530(v30, &v29);
      object[0] = 0;
      object[1] = 0;
      v27 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v27) < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v29);
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_100065624(&v32, &buf.__r_.__value_.__l.__data_);
      }

      else
      {
        v10 = *(a1 + 32);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(object[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Observer dictionary contains event that could not convert to a string", object, 2u);
        }
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(v31[0]);
    xpc_release(__p[0]);
    sub_100063E18(a1);
    sMetricNamesResolver();
    v11 = v28;
    if (v28 == *(&v33 + 1))
    {
      v12 = *(a1 + 32);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
        *(buf.__r_.__value_.__r.__words + 4) = a2;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#I [Observer %p] Observing %zd metrics.", &buf, 0x16u);
      }

      buf.__r_.__value_.__r.__words[0] = &v36;
      v13 = sub_1000659C4((a1 + 72), &v36);
      sub_100065CB8((v13 + 3), object);
      *a4 = 1;
      sub_100007ECC(a4 + 8, "");
    }

    else
    {
      sub_100065DB8(v23, &v32);
      for (j = v27; j; j = *j)
      {
        sub_100064918(v23, j + 3);
      }

      sub_10006515C(v23[2], 0, ",", 1uLL, &buf);
      v15 = std::string::insert(&buf, 0, "Unknown event name(s): ");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v25 = v15->__r_.__value_.__r.__words[2];
      *__p = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_10006559C(v23);
      v17 = v28;
      v18 = *(a1 + 32);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
          *(buf.__r_.__value_.__r.__words + 4) = *(&v33 + 1);
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Observer dictionary requested %zd metrics but only %zd were resolved!", &buf, 0x16u);
          v18 = *(a1 + 32);
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = __p;
          if (v25 < 0)
          {
            v20 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E  -- %s", &buf, 0xCu);
        }

        *a4 = 1;
        sub_100007ECC(a4 + 8, "");
      }

      else
      {
        if (v19)
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
          *(buf.__r_.__value_.__r.__words + 4) = *(&v33 + 1);
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Observer dictionary requested %zd metrics but none were resolved!", &buf, 0xCu);
          v18 = *(a1 + 32);
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = __p;
          if (v25 < 0)
          {
            v21 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E  -- %s", &buf, 0xCu);
        }

        *a4 = 0;
        v22 = a4 + 8;
        if (SHIBYTE(v25) < 0)
        {
          sub_10000FFF8(v22, __p[0], __p[1]);
        }

        else
        {
          *v22 = *__p;
          *(v22 + 2) = v25;
        }
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10006593C(object);
    sub_10006559C(&v32);
  }

  else
  {
    *a4 = 1;
    sub_100007ECC(a4 + 8, "");
  }

  xpc_release(v35);
}

void sub_1000643F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, xpc_object_t a30, uint64_t a31, uint64_t a32, xpc_object_t a33, uint64_t a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10006593C(&object);
  sub_10006559C(&a35);
  xpc_release(*(v35 - 128));
  _Unwind_Resume(a1);
}

xpc_object_t sub_100064530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_100064578(void *a1, uint64_t a2, void **a3, const void **a4)
{
  if (!*a4)
  {
    v7 = _Block_copy(&stru_1002ACC20);
    v8 = *a4;
    *a4 = v7;
    if (v8)
    {
      _Block_release(v8);
    }
  }

  v9 = *a3;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    xpc_null_create();
  }

  v10 = *a4;
  *a4 = 0;
  sub_1000081C8(&v11, a1);
  operator new();
}

void sub_1000646E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    *a5 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  *a5 = v12;
LABEL_9:
  xpc_release(v11);
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v23 = xpc_string_create(v13);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v21 = a5;
  v22 = "event";
  sub_10000F50C(&v21, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  v19 = xpc_uint64_create(a3);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v21 = a5;
  v22 = "timestamp";
  sub_10000F50C(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  sub_100063E18(a1);
  v14 = *(a4 + 8);
  v15 = *v14;
  v16 = v14[1];
  v17 = sMetricToXpcTransform();
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v21 = a5;
  v22 = "payload";
  sub_10000F50C(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
}

xpc_object_t *sub_1000648E4(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t *sub_100064918(void *a1, const void **a2)
{
  result = sub_100064950(a1, a2);
  if (result)
  {
    sub_100064A4C(a1, result);
    return 1;
  }

  return result;
}

const void **sub_100064950(void *a1, const void **a2)
{
  v4 = sub_100064A98(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_100064AD8(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_100064A4C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100064FBC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1000650F8(&v6, v3);
  }

  return v2;
}

unint64_t sub_100064A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100064B50(&v5, a2, v3);
}

BOOL sub_100064AD8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t sub_100064B50(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100064EFC(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100064E50(a2, a3);
  }

  else
  {
    return sub_100064D58(a2, a3);
  }
}

unint64_t sub_100064D58(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_100064E50(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100064EFC(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *sub_100064FBC@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_1000650F8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *sub_10006515C@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    for (result = std::string::operator=(a5, &result->__r_.__value_.__r.__words[2]); ; result = std::string::append(a5, v16, v17))
    {
      v8 = v8->__r_.__value_.__r.__words[0];
      if (v8 == a2)
      {
        break;
      }

      if (a3)
      {
        if (a4 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100023410();
        }

        if (a4 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v20) = a4;
        if (a4)
        {
          memmove(&__dst, a3, a4);
        }

        *(&__dst + a4) = 0;
        v12 = HIBYTE(v20);
        v11 = __dst;
        v10 = v19;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        __dst = 0;
        v19 = 0;
        v20 = 0;
      }

      if ((v12 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v11;
      }

      if ((v12 & 0x80u) == 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      std::string::append(a5, p_dst, v14);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__dst);
      }

      v15 = v8[1].__r_.__value_.__s.__data_[15];
      if (v15 >= 0)
      {
        v16 = &v8->__r_.__value_.__s.__data_[16];
      }

      else
      {
        v16 = v8->__r_.__value_.__r.__words[2];
      }

      if (v15 >= 0)
      {
        v17 = v8[1].__r_.__value_.__s.__data_[15];
      }

      else
      {
        v17 = v8[1].__r_.__value_.__r.__words[0];
      }
    }
  }

  return result;
}

void sub_1000652D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100065388(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_10006545C);
  __cxa_rethrow();
}

void sub_1000653C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10006541C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10006545C(void *result)
{
  if (result)
  {
    sub_100063CCC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10006549C(uint64_t a1)
{
  sub_1000654D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000654D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10006593C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10006551C(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 48);
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

uint64_t sub_10006559C(uint64_t a1)
{
  sub_1000655D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000655D8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_100065624(void *a1, const void **a2)
{
  v4 = sub_100064A98(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100065884();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100064AD8(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100065860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000650F8(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100065920(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000650F8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10006593C(uint64_t a1)
{
  sub_100065978(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100065978(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1000659C4(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_100065C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100065C6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065C6C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10006593C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100065CB8(uint64_t a1, uint64_t *a2)
{
  sub_100065D5C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_100065D5C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100065978(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_100065DB8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100018A34(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100065624(a1, i + 2);
  }

  return a1;
}

uint64_t *sub_100065E30(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (xpc_get_type(*(v1 + 16)) == &_xpc_type_dictionary && xpc_dictionary_get_count(*(v1 + 16)))
  {
    sub_100063E80(v2, *(v1 + 8), v1 + 16, buf);
    if (buf[0] == 1)
    {
      v10 = buf[0];
      sub_1000660A4((v1 + 24), &v10, "");
    }

    else
    {
      (*(*(v1 + 24) + 16))();
    }

    if (v13 < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else
  {
    v3 = sub_100066120(v2 + 9, (v1 + 8));
    if (v3)
    {
      v4 = v2[4];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(v1 + 8);
        *buf = 134217984;
        __p[0] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I [Observer %p] Removing observer.", buf, 0xCu);
      }

      sub_100064FBC(v2 + 9, v3, buf);
      sub_100065C6C(buf);
      if (!v2[12])
      {
        v6 = v2[8];
        v2[7] = 0;
        v2[8] = 0;
        if (v6)
        {
          sub_100008350(v6);
        }
      }
    }

    buf[0] = 1;
    sub_1000660A4((v1 + 24), buf, "");
  }

  sub_10006603C(&v9);
  return sub_1000082FC(&v8);
}

void sub_100066004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10006603C(&a11);
  sub_1000082FC(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10006603C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      _Block_release(v2);
    }

    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    operator delete();
  }

  return result;
}

void sub_1000660A4(uint64_t *a1, unsigned __int8 *a2, char *__s)
{
  v3 = *a1;
  v4 = *a2;
  sub_100007ECC(__p, __s);
  (*(v3 + 16))(v3, v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100066104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100066120(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_10006620C(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_100066438(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
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

void sub_1000664D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 40))
  {
    sub_1000DD9F0(&v10);
    v4 = v11[0];
    if (!v11[0])
    {
      goto LABEL_9;
    }

    v5 = v11;
    v6 = v11[0];
    do
    {
      v7 = *(v6 + 32);
      if ((v7 & 0x80000000) == 0)
      {
        v5 = v6;
      }

      v6 = *(v6 + ((v7 >> 28) & 8));
    }

    while (v6);
    if (v5 != v11 && *(v5 + 8) < 1)
    {
      if (*(v5 + 63) < 0)
      {
        sub_10000FFF8(__p, v5[5], v5[6]);
      }

      else
      {
        *__p = *(v5 + 5);
        v9 = v5[7];
      }

      ctu::path_join_impl();
      sub_10012A1BC(__p, a2);
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FF880(a2, __p);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v4 = v11[0];
    }

    else
    {
LABEL_9:
      *a2 = 0;
    }

    sub_100067D18(&v10, v4);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_100066634(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 41) & 1) != 0 || (*(a1 + 40))
  {
    sub_100007ECC(__p, "/System/Library/Frameworks/WirelessInsights.framework/Support");
    ctu::path_join_impl();
    sub_10012A1BC(__p, a2);
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FF8E8(a2, __p);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1000666E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100066708(void *a1@<X8>)
{
  sub_100007ECC(__p, "/System/Library/Frameworks/WirelessInsights.framework/Support");
  ctu::path_join_impl();
  sub_10012A1BC(__p, a1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100066778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100066798(void *a1@<X8>)
{
  sub_100007ECC(__p, "/System/Library/Frameworks/WirelessInsights.framework/Support");
  ctu::path_join_impl();
  sub_10012A1BC(__p, a1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100066808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100066828(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100067D7C;
  v5[3] = &unk_1002ACD58;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100067E34;
    v10 = &unk_1002ACD98;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100067D88;
    v10 = &unk_1002ACD78;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_100066940(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (TelephonyRadiosGetRadio() - 7 > 1)
  {
    sub_1000664D0(a1, a2);
    v4 = *a2;
    if (*a2)
    {
      v5 = *(a1 + 32);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        return;
      }

      LODWORD(v18) = 67109120;
      HIDWORD(v18) = sub_100082628(v4);
      v6 = "config:#I Read Hotship: Using Internal Hotship: dcid=%d";
    }

    else
    {
      sub_100066634(a1, &v18);
      v7 = v18;
      v18 = 0;
      v8 = *a2;
      *a2 = v7;
      if (v8)
      {
        (*(*v8 + 16))(v8);
        v9 = v18;
        v18 = 0;
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }

        v7 = *a2;
      }

      if (v7)
      {
        v5 = *(a1 + 32);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v10 = sub_100082628(v7);
        LODWORD(v18) = 67109120;
        HIDWORD(v18) = v10;
        v6 = "config:#I Read Hotship: Using Carrier Hotship: dcid=%d";
      }

      else
      {
        sub_100066708(&v18);
        v11 = v18;
        v18 = 0;
        v12 = *a2;
        *a2 = v11;
        if (v12)
        {
          (*(*v12 + 16))(v12);
          v13 = v18;
          v18 = 0;
          if (v13)
          {
            (*(*v13 + 16))(v13);
          }

          v11 = *a2;
        }

        v5 = *(a1 + 32);
        if (!v11)
        {
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          LOWORD(v18) = 0;
          v6 = "config:#E No hotship files were detected!";
          v15 = v5;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = 2;
LABEL_23:
          _os_log_impl(&_mh_execute_header, v15, v16, v6, &v18, v17);
          return;
        }

        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v14 = sub_100082628(v11);
        LODWORD(v18) = 67109120;
        HIDWORD(v18) = v14;
        v6 = "config:#I Read Hotship: Using Default Hotship: dcid=%d";
      }
    }

    v15 = v5;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 8;
    goto LABEL_23;
  }

  sub_100066C4C(a1, a2);
}

void sub_100066C00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100066C4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100066798(a2);
  v4 = *a2;
  v5 = *(a1 + 32);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (!v6)
    {
      return;
    }

    v10[0] = 67109120;
    v10[1] = sub_100082628(v4);
    v7 = "config:#I Read BestDiagConfiguration: picked the Diagnostics config; dcid=%d";
    v8 = v5;
    v9 = 8;
  }

  else
  {
    if (!v6)
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v7 = "config:#I Read BestDiagConfiguration: no options detected";
    v8 = v5;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, v10, v9);
}

void sub_100066D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1001FF950(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100066F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  sub_10006703C(va);
  sub_100067AA4(va1);
  *v3 = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  _Unwind_Resume(a1);
}

const void **sub_10006703C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100067070(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100067FBC;
  block[3] = &unk_1002ACDB8;
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

void sub_100067104(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a2;
  v5[1] = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100068558;
  v6[3] = &unk_1002ACDD8;
  v6[4] = a1;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100067E34;
    v11 = &unk_1002ACD98;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100067D88;
    v11 = &unk_1002ACD78;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

uint64_t sub_1000672F8(uint64_t a1, uint64_t a2)
{
  v5[0] = a2;
  v5[1] = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000688B4;
  v6[3] = &unk_1002ACDF8;
  v6[4] = a1;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100068B0C;
    v11 = &unk_1002ACE38;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10001B400;
    v11 = &unk_1002ACE18;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

void sub_100067424(void *a1@<X8>)
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
  sub_1000E1698(v2, a1);
  if (v3)
  {
    sub_100008350(v3);
  }
}

uint64_t sub_100067518(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v3 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v4 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000E1614(v3, a2);
  if (v4)
  {
    sub_100008350(v4);
  }

  return 1;
}

void sub_100067610(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = &v6;
  v5[1] = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100068B48;
  v7[3] = &unk_1002ACE58;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100067E34;
    v12 = &unk_1002ACD98;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100067D88;
    v12 = &unk_1002ACD78;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_100067734(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000E66CC(a2);
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a1 + 32);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LODWORD(v11) = 67109120;
    HIDWORD(v11) = sub_100082628(v4);
    v6 = "config:#I Read BestConfiguration: picked the Mobile Config; dcid=%d";
    goto LABEL_12;
  }

  sub_100067424(&v11);
  v7 = v11;
  v11 = 0;
  v8 = *a2;
  *a2 = v7;
  if (v8)
  {
    (*(*v8 + 16))(v8);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }

    v7 = *a2;
  }

  if (!v7)
  {
    sub_1000E66C8(&v11);
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100082628(v7);
    LODWORD(v11) = 67109120;
    HIDWORD(v11) = v10;
    v6 = "config:#I Read BestConfiguration: picked the Custom Config; dcid=%d";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v11, 8u);
  }
}

void sub_100067A50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100067AA4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100067B50(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100067C24);
  __cxa_rethrow();
}

void sub_100067B90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100067BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100067C24(void *result)
{
  if (result)
  {
    v1 = result;
    ctu::OsLogLogger::~OsLogLogger((result + 4));
    sub_100032AD8(v1);

    operator delete();
  }

  return result;
}

void sub_100067C7C(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  if (sub_100084F68())
  {
    if (sub_100085004())
    {
      *(v1 + 40) = 1;
    }

    else
    {
      *(v1 + 41) = 1;
    }
  }

  operator delete();
}

void sub_100067D18(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100067D18(a1, *a2);
    sub_100067D18(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_100067D88(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

uint64_t sub_100067E34(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void *sub_100067EE0(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100067F44(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100067FBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  sub_1000664D0(v2, &v11);
  v12 = "Hotship (Internal)";
  if (v11)
  {
    sub_1000682DC();
  }

  v3 = *v1;
  sub_100066634(v2, &v10);
  v12 = "Hotship (Carrier)";
  if (v10)
  {
    sub_1000682DC();
  }

  v4 = *v1;
  sub_100066708(&v9);
  v12 = "Hotship (User)";
  if (v9)
  {
    sub_1000682DC();
  }

  v5 = *v1;
  sub_100066798(&v8);
  v12 = "Hotship (D&U Disabled)";
  if (v8)
  {
    sub_1000682DC();
  }

  v6 = *v1;
  sub_1000E66C8(&v7);
}

void sub_10006823C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006835C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006850C(va);
  _Unwind_Resume(a1);
}

void *sub_100068404(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t sub_10006850C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100067F44(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100068558(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = **(a2 + 40);
  v2 = *(*(a2 + 40) + 8);
  if (*(v3 + 23) < 0)
  {
    v5 = v3[1];
    if (v5 <= 17)
    {
      if (v5 == 14)
      {
        v3 = *v3;
        goto LABEL_64;
      }

      if (v5 == 17)
      {
        v3 = *v3;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v5)
      {
        case 18:
          v3 = *v3;
          goto LABEL_37;
        case 19:
          v3 = *v3;
          goto LABEL_47;
        case 22:
          v3 = *v3;
          goto LABEL_12;
      }
    }

LABEL_68:
    *a1 = 0;
    return;
  }

  v4 = *(v3 + 23);
  if (v4 > 0x11)
  {
    if (v4 != 18)
    {
      if (v4 != 19)
      {
        if (v4 != 22)
        {
          goto LABEL_68;
        }

LABEL_12:
        v6 = *v3;
        v7 = v3[1];
        v8 = *(v3 + 14);
        if (v6 == 0x2070696873746F48 && v7 == 0x7369442055264428 && v8 == 0x2964656C62617369)
        {
          sub_100066798(a1);
          return;
        }

        goto LABEL_68;
      }

LABEL_47:
      if (*v3 == 0x726553207473614CLL && v3[1] == 0x6B73615420726576 && *(v3 + 11) == 0x676E696B73615420)
      {
        sub_1000E66C8(a1);
      }

      v23 = *v3;
      v24 = v3[1];
      v25 = *(v3 + 11);
      if (v23 == 0x6F43656C69626F4DLL && v24 == 0x746172756769666ELL && v25 == 0x6E6F697461727567)
      {
        sub_1000E66CC(a1);
        return;
      }

      goto LABEL_68;
    }

LABEL_37:
    v16 = *v3;
    v17 = v3[1];
    v18 = *(v3 + 8);
    if (v16 == 0x2070696873746F48 && v17 == 0x616E7265746E4928 && v18 == 10604)
    {
      sub_1000664D0(v2, a1);
      return;
    }

    goto LABEL_68;
  }

  if (v4 != 14)
  {
    if (v4 != 17)
    {
      goto LABEL_68;
    }

LABEL_27:
    v11 = *v3;
    v12 = v3[1];
    v13 = *(v3 + 16);
    if (v11 == 0x2070696873746F48 && v12 == 0x7265697272614328 && v13 == 41)
    {
      sub_100066634(v2, a1);
      return;
    }

    goto LABEL_68;
  }

LABEL_64:
  v28 = *v3;
  v29 = *(v3 + 6);
  if (v28 != 0x2070696873746F48 || v29 != 0x2972657355282070)
  {
    goto LABEL_68;
  }

  sub_100066708(a1);
}

void sub_100068790(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "config:#I Clearing all custom configs tasked (either OTA or Dev)", buf, 2u);
  }

  sub_10012A0AC();
}

uint64_t sub_1000688B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  if ((***v1)())
  {
    v3 = *(v2 + 32);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (!v4)
    {
LABEL_5:
      sub_100067518(v4, *v1);
      return 1;
    }

    LOWORD(v17) = 0;
    v5 = "config:#I Save Config: removing any existing dev config";
    v6 = v3;
    v7 = 2;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, &v17, v7);
    goto LABEL_5;
  }

  v9 = sub_10012A47C(*v1);
  result = 0;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v12 = *(v2 + 32);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = sub_100082628(*v1);
          v17 = 67109120;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "config:#I Save Config: saving investigation config: dcid=%d", &v17, 8u);
        }

        v14 = *v1;
        return static xpc_event_publisher_action_t.add.getter();
      }
    }

    else
    {
      v10 = *(v2 + 32);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LOWORD(v17) = 0;
        v11 = "config:#E Save Config SKIPPED: unknown config type";
        goto LABEL_24;
      }
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        v10 = *(v2 + 32);
        result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          LOWORD(v17) = 0;
          v11 = "config:#E Save Config SKIPPED: cannot write the Diagnostics config";
          goto LABEL_24;
        }

        break;
      case 4:
        v15 = *(v2 + 32);
        v4 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
        if (!v4)
        {
          goto LABEL_5;
        }

        v16 = sub_100082628(*v1);
        v17 = 67109120;
        v18 = v16;
        v5 = "config:#I Save Config: saving development config: dcid=%d";
        v6 = v15;
        v7 = 8;
        goto LABEL_4;
      case 3:
        v10 = *(v2 + 32);
        result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          LOWORD(v17) = 0;
          v11 = "config:#E Save Config SKIPPED: cannot save base configs";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 2u);
          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100068B0C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_100068B48(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = **(a1 + 40);
  v2 = *(*(a1 + 40) + 8);
  v4 = *v3;
  if (v4 == 2)
  {
    sub_100067734(v2, a2);
  }

  else if (v4 == 1)
  {
    sub_100066C4C(v2, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void *sub_100068B74@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result == 0;
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  return result;
}

void sub_100068BB0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t sub_100068BD0()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100068C14()
{
  sub_10007C6E8(&v2);
  v0 = sub_10007CB40(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  return v0;
}

void sub_100068C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100068C74(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002ACE88;
  a1[1] = *(a2 + 8);
  sub_100069138((a1 + 2), a3);
  return a1;
}

uint64_t sub_100068CC8(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = **a3;
  v4 = (*a3)[1];
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v6 = *(v3 + 8);
    wis::GetProtobufTag();
    if (v22 == *(a1 + 8))
    {
      v7 = *(v3 + 8);
      v8 = *v7 + v20;
      LODWORD(v7) = v7[1] - v8;
      v11[0] = 0;
      v11[1] = v8;
      v11[2] = v8 + v7;
      v13 = 0;
      v14 = 0;
      v12 = v7;
      v15 = v7;
      v16 = xmmword_100240B70;
      v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v18 = 0;
      v19 = 0;
      v9 = sub_100068DEC(a1 + 16, a1);
      wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v11);
      if (v9)
      {
        break;
      }
    }

    v3 += 24;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100068DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100068DEC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000334A4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100068E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 68) & 0x10) == 0)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(awd::profile::Condition::default_instance(a1) + 16);
  }

  v5 = sub_1000F6468(v4);
  result = 0;
  if (v5 > 5)
  {
    if (v5 == 7)
    {
      if (!*(v4 + 20))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v5 != 6)
      {
        goto LABEL_18;
      }

      if (*(v4 + 16) < 1)
      {
        goto LABEL_2;
      }
    }

LABEL_17:
    operator new();
  }

  if (v5 == 3)
  {
    if (*(v4 + 8) < 1)
    {
      goto LABEL_2;
    }

    goto LABEL_17;
  }

  if (v5 != 4)
  {
    goto LABEL_18;
  }

  if (*(v4 + 24))
  {
    goto LABEL_17;
  }

LABEL_2:
  result = 0;
LABEL_18:
  *a2 = 0;
  return result;
}

uint64_t sub_100068FAC(uint64_t a1, uint64_t a2)
{
  v4 = lldiv(a2, *(a1 + 8));
  rem = v4.rem;
  if (v4.rem < 0)
  {
    return *(a1 + 8) + v4.rem;
  }

  return rem;
}

void *sub_100068FF8(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_10006903C(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

uint64_t sub_1000690B8(uint64_t a1)
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

uint64_t sub_100069138(uint64_t a1, uint64_t a2)
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

void sub_10006989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100069AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WISCoreAnalyticsObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100069FFC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D8310;
  qword_1002D8310 = v1;
}

uint64_t *sub_10006A0C4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100143CA0(v2);
    operator delete();
  }

  return a1;
}

void sub_10006A110(id ***a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_10000EF04(&__p, v2);
      v11 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v11 = xpc_null_create();
      }

      v5 = sub_100143CA4(*a1);
      v9 = xpc_BOOL_create(v5);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      v8[0] = &v11;
      v8[1] = "is_improve_safety_allowed";
      sub_10000F50C(v8, &v9, &v10);
      xpc_release(v10);
      v10 = 0;
      xpc_release(v9);
      v9 = 0;
      v6 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        v6 = xpc_null_create();
      }

      v7 = object;
      object = v6;
      xpc_release(v7);
      xpc_release(v11);
      xpc_release(object);
      object = 0;
      if (v13 < 0)
      {
        operator delete(__p);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_10006A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  xpc_release(object);
  sub_10006AB64(&a15);
  _Unwind_Resume(a1);
}

void sub_10006A26C(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_10000EF04(&__p, v2);
      v16 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v16 = xpc_null_create();
      }

      v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      sub_1000ED21C(v14);
      if (v15 == 1)
      {
        v5 = v4.__d_.__rep_ / 1000000;
        v12 = xpc_int64_create((v5 - v14[0]) / 86400);
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        v10 = &v16;
        v11 = "time_since_manufacturing";
        sub_10000F50C(&v10, &v12, &v13);
        xpc_release(v13);
        v13 = 0;
        xpc_release(v12);
        v12 = 0;
        if ((v15 & 1) == 0)
        {
          sub_10006ABA8();
        }

        v8 = xpc_int64_create((v5 - v14[1]) / 86400);
        if (!v8)
        {
          v8 = xpc_null_create();
        }

        v10 = &v16;
        v11 = "time_since_first_use";
        sub_10000F50C(&v10, &v8, &v9);
        xpc_release(v9);
        v9 = 0;
        xpc_release(v8);
        v8 = 0;
      }

      v6 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        v6 = xpc_null_create();
      }

      v7 = object;
      object = v6;
      xpc_release(v7);
      xpc_release(v16);
      xpc_release(object);
      object = 0;
      if (v18 < 0)
      {
        operator delete(__p);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_10006A45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, char a19)
{
  xpc_release(object);
  sub_10006AB64(&a19);
  _Unwind_Resume(a1);
}

void sub_10006A4A0(uint64_t a1, int a2, __int128 **a3)
{
  if (a2 > 816134)
  {
    if (a2 > 3952737)
    {
      if (a2 <= 3960361)
      {
        if ((a2 - 3958274) > 7 || ((1 << (a2 - 2)) & 0xA1) == 0)
        {
          if ((a2 - 3952738) >= 2)
          {
            return;
          }

          goto LABEL_52;
        }

        goto LABEL_41;
      }

      if (a2 == 3960362)
      {
        goto LABEL_41;
      }

      if (a2 != 3973474)
      {
        v7 = 3961874;
LABEL_40:
        if (a2 != v7)
        {
          return;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (a2 > 827764)
      {
        if ((a2 - 3952640) > 0x18 || ((1 << a2) & 0x1000003) == 0)
        {
          if (a2 == 827765)
          {
            v5 = "gci_oos_longest";
            goto LABEL_42;
          }

          v6 = -15834;
          goto LABEL_36;
        }

LABEL_41:
        v5 = "gci";
LABEL_42:

        sub_10006A91C(a1, v5, a3);
        return;
      }

      if (a2 == 816135)
      {
        goto LABEL_41;
      }

      if (a2 == 827689)
      {
LABEL_49:
        v5 = "cell_id";
        goto LABEL_42;
      }

      if (a2 != 827746)
      {
        return;
      }
    }

    v5 = "last_known_gci";
    goto LABEL_42;
  }

  if (a2 > 806941)
  {
    if (a2 <= 806953)
    {
      if (a2 == 806942)
      {
        v5 = "cellid";
        goto LABEL_42;
      }

      if (a2 != 806948)
      {
        if (a2 != 806953)
        {
          return;
        }

        v5 = "gci_congestion";
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if ((a2 - 812546) > 7 || ((1 << (a2 - 2)) & 0xE1) == 0)
    {
      v6 = 20522;
LABEL_36:
      v7 = v6 | 0xC0000;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (a2 <= 806779)
  {
    if (a2 <= 803103)
    {
      if (a2 != 803009)
      {
        v4 = 16579;
LABEL_27:
        if (a2 != (v4 | 0xC0000))
        {
          return;
        }
      }

LABEL_52:
      v13 = "gci";
      v14 = "cell_id";
      v11 = 0;
      v12 = 0;
      __p = 0;
      v8 = sub_10006ABF4(&__p, &v13, &v15, 2uLL);
      sub_10006AA2C(v8, &__p, a3);
      goto LABEL_53;
    }

    if (a2 != 803104)
    {
      if (a2 != 806738)
      {
        return;
      }

      v5 = "lte_cellid";
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  if (a2 > 806912)
  {
    if (a2 == 806913)
    {
      v13 = "gci";
      v14 = "cell_id";
      v15 = "lte_cell_id";
      v11 = 0;
      v12 = 0;
      __p = 0;
      v9 = sub_10006ABF4(&__p, &v13, &v16, 3uLL);
      sub_10006AA2C(v9, &__p, a3);
LABEL_53:
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      return;
    }

    if (a2 != 806936)
    {
      v4 = 20507;
      goto LABEL_27;
    }

    goto LABEL_52;
  }

  if (a2 == 806780 || a2 == 806912)
  {
    goto LABEL_52;
  }
}

void sub_10006A8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006A91C(uint64_t a1, const char *a2, __int128 **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      sub_10000EF04(&__p, v3);
      v6 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v6 = xpc_null_create();
      }

      if (xpc_dictionary_get_value(v6, a2))
      {
        xpc_dictionary_set_value(v6, a2, 0);
      }

      if (v6)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }

      v8 = object;
      object = v7;
      xpc_release(v8);
      xpc_release(v6);
      xpc_release(object);
      object = 0;
      if (v10 < 0)
      {
        operator delete(__p);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_10006AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  xpc_release(v9);
  sub_10006AB64(&a9);
  _Unwind_Resume(a1);
}

void sub_10006AA2C(uint64_t a1, const char ***a2, __int128 **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      sub_10000EF04(&__p, v3);
      v6 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v6 = xpc_null_create();
      }

      v7 = *a2;
      v8 = a2[1];
      while (v7 != v8)
      {
        v9 = *v7;
        if (xpc_dictionary_get_value(v6, *v7))
        {
          xpc_dictionary_set_value(v6, v9, 0);
        }

        ++v7;
      }

      if (v6)
      {
        xpc_retain(v6);
        v10 = v6;
      }

      else
      {
        v10 = xpc_null_create();
      }

      v11 = object;
      object = v10;
      xpc_release(v11);
      xpc_release(v6);
      xpc_release(object);
      object = 0;
      if (v13 < 0)
      {
        operator delete(__p);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_10006AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  xpc_release(v9);
  sub_10006AB64(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AB64(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10006ABA8()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_10006ABF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10006AC68(result, a4);
  }

  return result;
}

void sub_10006AC4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006AC68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10006ACA4(a1, a2);
  }

  sub_100033FD0();
}

void sub_10006ACA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100033BCC();
}

NSNumber *__cdecl sub_10006B838(id a1, RelevantTSAnomaly *a2)
{
  v2 = [(RelevantTSAnomaly *)a2 anomaly];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 type]);

  return v3;
}

void sub_10006B8AC(uint64_t a1, void *a2)
{
  v46 = a2;
  v51 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableSet);
  v50 = objc_alloc_init(NSMutableArray);
  v59 = objc_alloc_init(NSMutableSet);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 32);
  v57 = a1;
  v52 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (v52)
  {
    v55 = 0;
    v58 = 0;
    v48 = *v65;
    do
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v64 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v4 = [v3 predictedTimesUntilAnomaly];
        [v51 addObjectsFromArray:v4];

        v5 = [v3 anomaly];
        v6 = [v5 objectID];
        [v49 addObject:v6];

        v7 = [v3 anomaly];
        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 duration]);
        [v50 addObject:v8];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v9 = [v3 anomaly];
        v56 = [v9 predictionSourceOf];

        v10 = [v56 countByEnumeratingWithState:&v60 objects:v78 count:16];
        if (v10)
        {
          v11 = *v61;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v61 != v11)
              {
                objc_enumerationMutation(v56);
              }

              v13 = *(*(&v60 + 1) + 8 * j);
              v14 = [v13 objectID];
              v15 = [v59 containsObject:v14];

              if ((v15 & 1) == 0)
              {
                v16 = [v13 actualTimeUntilAnomaly];
                v17 = [v13 actualDuration];
                v18 = [v13 didAnomalyHappen];
                if (v16)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = 0;
                }

                if (v19 == 1 && v17 != 0)
                {
                  v21 = [v13 predictedTimeUntilAnomaly];
                  v22 = v21 - [v16 intValue];
                  v23 = v22 >= 0 ? v22 : -v22;
                  v24 = [v13 predictedDuration];
                  v25 = [v13 actualDuration];
                  v26 = [v25 intValue];

                  if (*(v57 + 64) >= v23)
                  {
                    LODWORD(v27) = v24 - v26;
                    if ((v24 - v26) >= 0)
                    {
                      v27 = v27;
                    }

                    else
                    {
                      v27 = v26 - v24;
                    }

                    v28 = *(v57 + 72) >= v27;
                    v29 = v55;
                    if (v28)
                    {
                      v29 = v55 + 1;
                    }

                    v55 = v29;
                  }
                }

                v30 = [v13 objectID];
                [v59 addObject:v30];

                [*(v57 + 40) refreshObject:v13 mergeChanges:0];
                ++v58;
              }
            }

            v10 = [v56 countByEnumeratingWithState:&v60 objects:v78 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
      }

      v52 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
    }

    while (v52);
  }

  else
  {
    v55 = 0;
    v58 = 0;
  }

  [FMUtil meanOfSample:v51];
  v32 = v31;
  [FMUtil probabilityOfNextPickInRange:v51 aroundMean:*(v57 + 80) ofSample:v31];
  v34 = v33;
  [FMUtil meanOfSample:v50];
  v36 = v35;
  [FMUtil probabilityOfNextPickInRange:v50 aroundMean:*(v57 + 88) ofSample:v35];
  v38 = v37;
  v39 = *(v57 + 96);
  if (v58 >= *(v57 + 104))
  {
    v40 = v55 / v58;
  }

  else
  {
    v40 = *(v57 + 96);
  }

  v41 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v69 = v46;
    v70 = 2112;
    v71 = v51;
    v72 = 2112;
    v73 = v50;
    v74 = 2048;
    v75 = v58;
    v76 = 2048;
    v77 = v55;
    _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Predicting anomaly of type %@ based on predictedTimesUntilAnomaly: %@, durations %@, numPredictions %lu, numPredictionsCorrect %lu", buf, 0x34u);
  }

  v42 = [v46 intValue];
  v43 = *(v57 + 48);
  v44 = [v49 copy];
  v45 = +[FMTSPredictionFactory predictionWithType:predictionTime:predictionSources:numPrevTimesUntilAnomaly:numPrevPredictions:numPrevPredictionsCorrect:predictedTimeUntilAnomaly:predictedDuration:confidenceAnomaly:confidenceDuration:confidenceTimeUntilAnomaly:predictionTimestamp:](FMTSPredictionFactory, "predictionWithType:predictionTime:predictionSources:numPrevTimesUntilAnomaly:numPrevPredictions:numPrevPredictionsCorrect:predictedTimeUntilAnomaly:predictedDuration:confidenceAnomaly:confidenceDuration:confidenceTimeUntilAnomaly:predictionTimestamp:", v42, v43, v44, [v51 count], v58, v55, v40, v38, v34, __PAIR64__(llround(v36), llround(v32)), *(v57 + 112));

  [*(v57 + 56) addObject:v45];
}

void sub_10006C53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);

  _Unwind_Resume(a1);
}

NSNumber *__cdecl sub_10006C674(id a1, FMTSEventProtocol *a2)
{
  v2 = a2;
  v3 = [NSNumber numberWithInt:[(FMTSEventProtocol *)v2 type]];

  return v3;
}

void sub_10006C6E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = v5;
  v13[0] = @"event_type";
  v13[1] = @"num_events";
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  v14[1] = v7;
  v13[2] = @"num_events_total";
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  v14[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006C8A8;
  v11[3] = &unk_1002AB460;
  v12 = v9;
  v10 = v9;
  sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesSourceEvents", v11);
}

uint64_t sub_10006C8B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006C8C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [*(a1 + 32) generateChildEntitiesForEventsWithContext:v3];
  os_release(v4);
  if (v5)
  {
    v60 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
    v6 = +[FMConfiguration sharedInstance];
    v7 = [v6 FMTSAnomalyUseTagsForFetching];

    if (v7)
    {
      [*(a1 + 32) generateTagsForUntaggedAnomaliesWithContext:v3];
      v8 = [*(a1 + 32) tagsForEvents:*(a1 + 40) withContext:v3];
      if (!v8)
      {
        v57 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_1001FFD2C((a1 + 40), v57);
        }

        goto LABEL_63;
      }

      v9 = [NSPredicate predicateWithFormat:@"homePLMN == %@ and (any taggedBy in %@)", *(a1 + 48), v8];
      [v60 setPredicate:v9];

      v10 = +[FMConfiguration sharedInstance];
      [v60 setFetchLimit:{objc_msgSend(v10, "FMTSMaxAnomaliesFetchedPerPrediction")}];

      v11 = [[NSSortDescriptor alloc] initWithKey:@"startTime" ascending:0];
      v88 = v11;
      v12 = [NSArray arrayWithObjects:&v88 count:1];
      [v60 setSortDescriptors:v12];
    }

    else
    {
      v13 = [NSPredicate predicateWithFormat:@"homePLMN == %@", *(a1 + 48)];
      [v60 setPredicate:v13];
    }

    [v60 setReturnsObjectsAsFaults:0];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      [v60 predicate];
      objc_claimAutoreleasedReturnValue();
      sub_1001FFC14();
    }

    v82 = 0;
    v59 = [v3 executeFetchRequest:v60 error:&v82];
    v58 = v82;
    if (v58)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v58 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1001FFC60();
      }

LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    *(*(*(a1 + 64) + 8) + 24) = [v59 count];
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v14 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v59 count];
      *buf = 134217984;
      *v84 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#I Fetch done, %lu results", buf, 0xCu);
    }

    v61 = objc_alloc_init(NSMutableArray);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v59;
    v65 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (!v65)
    {
LABEL_59:

      v52 = [*(a1 + 32) getFMTSPredictionsFromRelevantTSAnomalies:v61 atCurrentTimestamp:*(a1 + 88) withContext:v3];
      v54 = *(a1 + 80);
      v53 = a1 + 80;
      v55 = *(v54 + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v52;

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FFCAC(v53);
      }

      goto LABEL_62;
    }

    v64 = *v79;
LABEL_17:
    v66 = 0;
    while (1)
    {
      if (*v79 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(a1 + 56);
      v71 = *(*(&v78 + 1) + 8 * v66);
      if (([*(a1 + 32) shouldConsiderAnomaly:? atTime:?] & 1) == 0)
      {
        v43 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v84 = v71;
          _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Not considering anomaly %@", buf, 0xCu);
        }

        goto LABEL_54;
      }

      context = objc_autoreleasePoolPush();
      v67 = objc_alloc_init(NSMutableArray);
      v68 = 0;
      v17 = 0.0;
      v18 = 1;
      do
      {
        v19 = [NSFetchRequest fetchRequestWithEntityName:@"TSEvent"];
        v20 = [v71 objectID];
        v21 = [NSPredicate predicateWithFormat:@"eventOf == %@ and type == %d", v20, v18];
        [v19 setPredicate:v21];

        v22 = [[NSSortDescriptor alloc] initWithKey:@"timeUntilAnomaly" ascending:0];
        v86 = v22;
        v23 = [NSArray arrayWithObjects:&v86 count:1];
        [v19 setSortDescriptors:v23];

        [v19 setReturnsObjectsAsFaults:0];
        v77 = 0;
        v24 = [v3 executeFetchRequest:v19 error:&v77];
        v25 = v77;
        if (v25)
        {
          v26 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [v71 objectID];
            v28 = v25;
            v29 = [v25 localizedDescription];
            *buf = 67109634;
            *v84 = v18;
            *&v84[4] = 2112;
            *&v84[6] = v27;
            *&v84[14] = 2112;
            *&v84[16] = v29;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:Error while fetching TSEvents of type %d for anomaly %@: %@", buf, 0x1Cu);

            v25 = v28;
          }
        }

        else
        {
          if (![v24 count])
          {

            v24 = 0;
          }

          v30 = *(a1 + 104);
          v72 = [v24 lastObject];
          if (*(a1 + 108) == 1 && v72)
          {
            [v72 timeUntilAnomaly];
          }

          v69 = [NSNumber numberWithInt:v18];
          v31 = [*(a1 + 40) objectForKey:?];
          v32 = *(a1 + 88);
          v70 = v31;
          v33 = [*(a1 + 32) compareObservedEvents:? withStoredEvents:? ofType:? withPredictionAdvanceTime:? atCurrentTimestamp:? withContext:?];
          v34 = v33;
          if (v33)
          {
            [v33 averageEventDistance];
            v36 = v35;
            v37 = [v34 predictedTimesUntilAnomaly];
            [v67 addObjectsFromArray:v37];

            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v38 = v24;
            v39 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
            if (v39)
            {
              v40 = *v74;
              do
              {
                for (i = 0; i != v39; i = i + 1)
                {
                  if (*v74 != v40)
                  {
                    objc_enumerationMutation(v38);
                  }

                  [v3 refreshObject:*(*(&v73 + 1) + 8 * i) mergeChanges:0];
                }

                v39 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
              }

              while (v39);
            }

            v25 = 0;
            v17 = v17 + v36;
            ++v68;
          }

          else
          {
            v42 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v84 = v18;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:Failed to compare events of type %d", buf, 8u);
            }
          }
        }

        v18 = (v18 + 1);
      }

      while (v18 != 5);
      v44 = *(qword_1002DBE98 + 136);
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
      v46 = v68;
      if (v45)
      {
        *buf = 138412802;
        *v84 = v71;
        *&v84[8] = 2048;
        *&v84[10] = v17;
        *&v84[18] = 2048;
        *&v84[20] = v68;
        _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Distance for anomaly %@: %f. Number of used event types: %lu", buf, 0x20u);
        if (v68)
        {
LABEL_48:
          if (v17 <= *(a1 + 96))
          {
            v47 = [RelevantTSAnomaly alloc];
            v48 = [v67 copy];
            v49 = [(RelevantTSAnomaly *)v47 init:v71 dist:v48 predictedTimesUntilAnomaly:v17];
            [v61 addObject:v49];

            v46 = v68;
          }

          if (v46 > 2)
          {
            goto LABEL_53;
          }
        }
      }

      else if (v68)
      {
        goto LABEL_48;
      }

      v50 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v84 = v46;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#N Used fewer event types than were available: %lu", buf, 0xCu);
      }

LABEL_53:

      objc_autoreleasePoolPop(context);
LABEL_54:
      if (++v66 == v65)
      {
        v51 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
        v65 = v51;
        if (!v51)
        {
          goto LABEL_59;
        }

        goto LABEL_17;
      }
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FFBE0();
  }

LABEL_64:
}

double sub_10006E060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      v9 = [v7 fromCellGCI];
      v10 = [v8 fromCellGCI];
      if ([v9 isEqualToString:v10])
      {
        v11 = [v7 toCellGCI];
        v12 = [v8 toCellGCI];
        v13 = [v11 isEqualToString:v12];

        v14 = 0.0;
        if (v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v15 = [v7 fromCellGCI];
      v25 = [v8 toCellGCI];
      v26 = [v15 isEqualToString:v25];
      if (v26 && ([v7 toCellGCI], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "fromCellGCI"), v22 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v24, "isEqualToString:")))
      {
      }

      else
      {
        v23 = v15;
        v16 = [v7 toCellGCI];
        v17 = [v8 fromCellGCI];
        if ([v16 isEqualToString:v17])
        {
          v18 = [v7 fromCellGCI];
          v19 = [v8 toCellGCI];
          v20 = [v18 isEqualToString:v19] ^ 1;
        }

        else
        {
          v20 = 0;
        }

        if (v26)
        {
        }

        v14 = 1.0;
        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v14 = *(a1 + 32);
LABEL_20:

      goto LABEL_21;
    }
  }

  v14 = 1.0;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FFE44();
  }

LABEL_21:

  return v14;
}

void sub_10006E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, int a14, char a15)
{
  if (a15)
  {
  }

  _Unwind_Resume(a1);
}

double sub_10006E404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      v9 = [v7 fromBars];
      v10 = [v9 shortValue];
      if (v10 == [v8 fromBars])
      {
        v11 = [v7 toBars];
        v12 = [v11 shortValue];
        v13 = [v8 toBars];

        v14 = 0.0;
        if (v12 == v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      v24 = [v7 fromBars];
      v15 = [v24 shortValue];
      v16 = [v7 toBars];
      if (v15 >= [v16 shortValue] || (v17 = objc_msgSend(v8, "fromBars"), v17 >= objc_msgSend(v8, "toBars")))
      {
        v18 = [v7 fromBars];
        v19 = [v18 shortValue];
        v20 = [v7 toBars];
        if (v19 <= [v20 shortValue])
        {

          v14 = 1.0;
          goto LABEL_16;
        }

        v21 = [v8 fromBars];
        v22 = [v8 toBars];

        v14 = 1.0;
        if (v21 <= v22)
        {
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v14 = *(a1 + 32);
      goto LABEL_16;
    }
  }

  v14 = 1.0;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FFEB8();
  }

LABEL_17:

  return v14;
}

void sub_10006F1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  v19 = v17;

  _Unwind_Resume(a1);
}

_BYTE *sub_10006F7CC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10006F7F4(uint64_t result)
{
  *result = off_1002AD0C8;
  *(result + 40) = 0;
  *(result + 76) = 0;
  return result;
}

uint64_t sub_10006F81C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 76);
  if (v5)
  {
    PB::TextFormatter::format(this, "count", *(a1 + 8));
    v5 = *(a1 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "duration_ms", *(a1 + 16));
  v5 = *(a1 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  PB::TextFormatter::format(this, "maxValue", *(a1 + 24));
  if ((*(a1 + 76) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "minValue", *(a1 + 32));
  }

LABEL_6:
  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 76);
  if ((v6 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "sum", *(a1 + 48));
    v6 = *(a1 + 76);
    if ((v6 & 0x80) == 0)
    {
LABEL_10:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_10;
  }

  PB::TextFormatter::format(this, "sumOverflow", *(a1 + 72));
  v6 = *(a1 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "sumSquares", *(a1 + 56));
  v6 = *(a1 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  PB::TextFormatter::format(this, "sumSquaresOverflow", *(a1 + 73));
  if ((*(a1 + 76) & 0x40) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_14:

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10006F998(uint64_t a1, PB::Reader *this)
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
            goto LABEL_183;
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
            LODWORD(v10) = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          LODWORD(v10) = 0;
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

      v22 = (v10 >> 3);
      if (v22 > 5)
      {
        if ((v10 >> 3) <= 7u)
        {
          if (v22 == 6)
          {
            *(a1 + 76) |= 0x20u;
            v55 = *(this + 1);
            v54 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v54)
            {
              v106 = 0;
              v107 = 0;
              v59 = 0;
              v17 = v54 >= v55;
              v108 = v54 - v55;
              if (!v17)
              {
                v108 = 0;
              }

              v109 = (v56 + v55);
              v110 = v55 + 1;
              while (1)
              {
                if (!v108)
                {
                  v59 = 0;
                  *(this + 24) = 1;
                  goto LABEL_166;
                }

                v111 = *v109;
                *(this + 1) = v110;
                v59 |= (v111 & 0x7F) << v106;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                --v108;
                ++v109;
                ++v110;
                v14 = v107++ > 8;
                if (v14)
                {
LABEL_114:
                  v59 = 0;
                  goto LABEL_166;
                }
              }

              if (*(this + 24))
              {
                v59 = 0;
              }
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  goto LABEL_114;
                }
              }
            }

LABEL_166:
            *(a1 + 56) = v59;
            goto LABEL_179;
          }

          if (v22 == 7)
          {
            *(a1 + 76) |= 8u;
            v37 = *(this + 1);
            v36 = *(this + 2);
            v38 = *this;
            if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
            {
              v94 = 0;
              v95 = 0;
              v41 = 0;
              v17 = v36 >= v37;
              v96 = v36 - v37;
              if (!v17)
              {
                v96 = 0;
              }

              v97 = (v38 + v37);
              v98 = v37 + 1;
              while (1)
              {
                if (!v96)
                {
                  v41 = 0;
                  *(this + 24) = 1;
                  goto LABEL_160;
                }

                v99 = *v97;
                *(this + 1) = v98;
                v41 |= (v99 & 0x7F) << v94;
                if ((v99 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                --v96;
                ++v97;
                ++v98;
                v14 = v95++ > 8;
                if (v14)
                {
LABEL_98:
                  v41 = 0;
                  goto LABEL_160;
                }
              }

              if (*(this + 24))
              {
                v41 = 0;
              }
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = (v38 + v37);
              v43 = v37 + 1;
              while (1)
              {
                *(this + 1) = v43;
                v44 = *v42++;
                v41 |= (v44 & 0x7F) << v39;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                ++v43;
                v14 = v40++ > 8;
                if (v14)
                {
                  goto LABEL_98;
                }
              }
            }

LABEL_160:
            *(a1 + 32) = v41;
            goto LABEL_179;
          }
        }

        else
        {
          switch(v22)
          {
            case 8u:
              *(a1 + 76) |= 4u;
              v73 = *(this + 1);
              v72 = *(this + 2);
              v74 = *this;
              if (v73 > 0xFFFFFFFFFFFFFFF5 || v73 + 10 > v72)
              {
                v118 = 0;
                v119 = 0;
                v77 = 0;
                v17 = v72 >= v73;
                v120 = v72 - v73;
                if (!v17)
                {
                  v120 = 0;
                }

                v121 = (v74 + v73);
                v122 = v73 + 1;
                while (1)
                {
                  if (!v120)
                  {
                    v77 = 0;
                    *(this + 24) = 1;
                    goto LABEL_172;
                  }

                  v123 = *v121;
                  *(this + 1) = v122;
                  v77 |= (v123 & 0x7F) << v118;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v118 += 7;
                  --v120;
                  ++v121;
                  ++v122;
                  v14 = v119++ > 8;
                  if (v14)
                  {
LABEL_130:
                    v77 = 0;
                    goto LABEL_172;
                  }
                }

                if (*(this + 24))
                {
                  v77 = 0;
                }
              }

              else
              {
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v78 = (v74 + v73);
                v79 = v73 + 1;
                while (1)
                {
                  *(this + 1) = v79;
                  v80 = *v78++;
                  v77 |= (v80 & 0x7F) << v75;
                  if ((v80 & 0x80) == 0)
                  {
                    break;
                  }

                  v75 += 7;
                  ++v79;
                  v14 = v76++ > 8;
                  if (v14)
                  {
                    goto LABEL_130;
                  }
                }
              }

LABEL_172:
              *(a1 + 24) = v77;
              goto LABEL_179;
            case 9u:
              *(a1 + 76) |= 0x80u;
              v90 = *(this + 1);
              if (v90 >= *(this + 2))
              {
                v93 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v91 = v90 + 1;
                v92 = *(*this + v90);
                *(this + 1) = v91;
                v93 = v92 != 0;
              }

              *(a1 + 72) = v93;
              goto LABEL_179;
            case 0xAu:
              *(a1 + 76) |= 0x100u;
              v32 = *(this + 1);
              if (v32 >= *(this + 2))
              {
                v35 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v33 = v32 + 1;
                v34 = *(*this + v32);
                *(this + 1) = v33;
                v35 = v34 != 0;
              }

              *(a1 + 73) = v35;
              goto LABEL_179;
          }
        }
      }

      else if ((v10 >> 3) <= 2u)
      {
        if (v22 == 1)
        {
          *(a1 + 76) |= 0x40u;
          v46 = *(this + 1);
          v45 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v45)
          {
            v100 = 0;
            v101 = 0;
            v50 = 0;
            v17 = v45 >= v46;
            v102 = v45 - v46;
            if (!v17)
            {
              v102 = 0;
            }

            v103 = (v47 + v46);
            v104 = v46 + 1;
            while (1)
            {
              if (!v102)
              {
                v50 = 0;
                *(this + 24) = 1;
                goto LABEL_163;
              }

              v105 = *v103;
              *(this + 1) = v104;
              v50 |= (v105 & 0x7F) << v100;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              --v102;
              ++v103;
              ++v104;
              v14 = v101++ > 8;
              if (v14)
              {
LABEL_106:
                v50 = 0;
                goto LABEL_163;
              }
            }

            if (*(this + 24))
            {
              v50 = 0;
            }
          }

          else
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = (v47 + v46);
            v52 = v46 + 1;
            while (1)
            {
              *(this + 1) = v52;
              v53 = *v51++;
              v50 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              ++v52;
              v14 = v49++ > 8;
              if (v14)
              {
                goto LABEL_106;
              }
            }
          }

LABEL_163:
          *(a1 + 64) = v50;
          goto LABEL_179;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3u:
            *(a1 + 76) |= 2u;
            v64 = *(this + 1);
            v63 = *(this + 2);
            v65 = *this;
            if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v63)
            {
              v112 = 0;
              v113 = 0;
              v68 = 0;
              v17 = v63 >= v64;
              v114 = v63 - v64;
              if (!v17)
              {
                v114 = 0;
              }

              v115 = (v65 + v64);
              v116 = v64 + 1;
              while (1)
              {
                if (!v114)
                {
                  v68 = 0;
                  *(this + 24) = 1;
                  goto LABEL_169;
                }

                v117 = *v115;
                *(this + 1) = v116;
                v68 |= (v117 & 0x7F) << v112;
                if ((v117 & 0x80) == 0)
                {
                  break;
                }

                v112 += 7;
                --v114;
                ++v115;
                ++v116;
                v14 = v113++ > 8;
                if (v14)
                {
LABEL_122:
                  v68 = 0;
                  goto LABEL_169;
                }
              }

              if (*(this + 24))
              {
                v68 = 0;
              }
            }

            else
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              v69 = (v65 + v64);
              v70 = v64 + 1;
              while (1)
              {
                *(this + 1) = v70;
                v71 = *v69++;
                v68 |= (v71 & 0x7F) << v66;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                ++v70;
                v14 = v67++ > 8;
                if (v14)
                {
                  goto LABEL_122;
                }
              }
            }

LABEL_169:
            *(a1 + 16) = v68;
            goto LABEL_179;
          case 4u:
            *(a1 + 76) |= 1u;
            v82 = *(this + 1);
            v81 = *(this + 2);
            v83 = *this;
            if (v82 > 0xFFFFFFFFFFFFFFF5 || v82 + 10 > v81)
            {
              v130 = 0;
              v131 = 0;
              v86 = 0;
              v17 = v81 >= v82;
              v132 = v81 - v82;
              if (!v17)
              {
                v132 = 0;
              }

              v133 = (v83 + v82);
              v134 = v82 + 1;
              while (1)
              {
                if (!v132)
                {
                  v86 = 0;
                  *(this + 24) = 1;
                  goto LABEL_178;
                }

                v135 = *v133;
                *(this + 1) = v134;
                v86 |= (v135 & 0x7F) << v130;
                if ((v135 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                --v132;
                ++v133;
                ++v134;
                v14 = v131++ > 8;
                if (v14)
                {
LABEL_146:
                  v86 = 0;
                  goto LABEL_178;
                }
              }

              if (*(this + 24))
              {
                v86 = 0;
              }
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              v87 = (v83 + v82);
              v88 = v82 + 1;
              while (1)
              {
                *(this + 1) = v88;
                v89 = *v87++;
                v86 |= (v89 & 0x7F) << v84;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                ++v88;
                v14 = v85++ > 8;
                if (v14)
                {
                  goto LABEL_146;
                }
              }
            }

LABEL_178:
            *(a1 + 8) = v86;
            goto LABEL_179;
          case 5u:
            *(a1 + 76) |= 0x10u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v124 = 0;
              v125 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v126 = v23 - v24;
              if (!v17)
              {
                v126 = 0;
              }

              v127 = (v25 + v24);
              v128 = v24 + 1;
              while (1)
              {
                if (!v126)
                {
                  v28 = 0;
                  *(this + 24) = 1;
                  goto LABEL_175;
                }

                v129 = *v127;
                *(this + 1) = v128;
                v28 |= (v129 & 0x7F) << v124;
                if ((v129 & 0x80) == 0)
                {
                  break;
                }

                v124 += 7;
                --v126;
                ++v127;
                ++v128;
                v14 = v125++ > 8;
                if (v14)
                {
LABEL_138:
                  v28 = 0;
                  goto LABEL_175;
                }
              }

              if (*(this + 24))
              {
                v28 = 0;
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
                  goto LABEL_138;
                }
              }
            }

LABEL_175:
            *(a1 + 48) = v28;
            goto LABEL_179;
        }
      }

      if (!PB::Reader::skip(this, (v10 >> 3), v10 & 7, 0))
      {
        v137 = 0;
        return v137 & 1;
      }

LABEL_179:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_183:
  v137 = v4 ^ 1;
  return v137 & 1;
}

uint64_t sub_1000702EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 76) & 0x40) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(result + 64), 1u);
  }

  if (*(v3 + 40))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 76);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 16), 3u);
    v4 = *(v3 + 76);
    if ((v4 & 1) == 0)
    {
LABEL_7:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  result = PB::Writer::writeVarInt(this, *(v3 + 8), 4u);
  v4 = *(v3 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::writeVarInt(this, *(v3 + 48), 5u);
  v4 = *(v3 + 76);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::writeVarInt(this, *(v3 + 56), 6u);
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::writeVarInt(this, *(v3 + 32), 7u);
  v4 = *(v3 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 72), 9u);
    if ((*(v3 + 76) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::writeVarInt(this, *(v3 + 24), 8u);
  v4 = *(v3 + 76);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_21:
  v5 = *(v3 + 73);

  return PB::Writer::write(this, v5, 0xAu);
}

void sub_100070430(PB::Base *this)
{
  *this = off_1002AD0C8;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100070504(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_100070490(PB::Base *this)
{
  *this = off_1002AD0C8;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100070504(v2, v3);
  }

  PB::Base::~Base(this);

  operator delete();
}

void sub_100070504(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_100070560(uint64_t result, uint64_t a2)
{
  qword_1002D8320 = result;
  qword_1002D8328 = a2;
  return result;
}

void sub_100070574(void *a1, uint64_t a2, uint64_t a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  if (qword_1002D8320)
  {
    awd::metrics::AwddStartup::AwddStartup(v10);
    v11 |= 1u;
    v10[1] = qword_1002D8320;
    v6 = a1[1];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        if (*a1)
        {
          wis::serializeMetric(&v9, v10, a4, v8);
          operator new();
        }

        sub_100008350(v7);
      }
    }

    awd::metrics::AwddStartup::~AwddStartup(v10);
  }
}

void sub_1000706E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  sub_100008350(v15);
  sub_100008350(v14);
  awd::metrics::AwddStartup::~AwddStartup(&a14);
  _Unwind_Resume(a1);
}

void sub_100070730(void *a1, uint64_t a2, uint64_t a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  if (qword_1002D8328)
  {
    awd::metrics::AwddShutdown::AwddShutdown(v10);
    v11 |= 1u;
    v10[1] = qword_1002D8328;
    v6 = a1[1];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        if (*a1)
        {
          wis::serializeMetric(&v9, v10, a4, v8);
          operator new();
        }

        sub_100008350(v7);
      }
    }

    awd::metrics::AwddShutdown::~AwddShutdown(v10);
  }
}

void sub_10007089C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  sub_100008350(v15);
  sub_100008350(v14);
  awd::metrics::AwddShutdown::~AwddShutdown(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100070A28(uint64_t a1, void *a2)
{
  sub_100070AF4((a1 + 8), "WISCellularServiceAnomalyModel", QOS_CLASS_UTILITY, "wis.csanomaly");
  *a1 = off_1002AD118;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a1 + 56;
  v4 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 0;
  return a1;
}

void *sub_100070AF4(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

uint64_t sub_100070B98(uint64_t a1)
{
  *a1 = off_1002AD118;
  sub_10001C4B0(a1 + 184, *(a1 + 192));
  sub_1000733A0(a1 + 160, *(a1 + 168));
  sub_1000733A0(a1 + 136, *(a1 + 144));
  sub_10001C4B0(a1 + 112, *(a1 + 120));
  sub_1000134C0(a1 + 88, *(a1 + 96));
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10001C4B0(a1 + 48, *(a1 + 56));
  XPCEventPublisher.Token.rawValue.getter(v3, v4);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_100070C48(uint64_t a1)
{
  sub_100070B98(a1);

  operator delete();
}

void sub_100070C80(uint64_t a1)
{
  sub_100007ECC(buf, "com.apple.Baseband.cellularServiceStatus");
  sub_100007ECC(v9 + 8, "com.apple.Baseband.KCellularServiceStatus");
  sub_100007ECC(&v10, "com.apple.Baseband.cellularRegAttempt");
  sub_100007ECC(&v11[8], "com.apple.Baseband.kCellularRegAttempt");
  sub_10000E910((a1 + 88), buf, &v13);
  for (i = 0; i != -24; i -= 6)
  {
    if (SHIBYTE(v12[i]) < 0)
    {
      operator delete(*&v11[i * 4 + 8]);
    }
  }

  v9[1] = xmmword_100241B2C;
  v10 = unk_100241B3C;
  *v11 = xmmword_100241B4C;
  *&v11[12] = *(&xmmword_100241B4C + 12);
  *buf = xmmword_100241B0C;
  v9[0] = unk_100241B1C;
  sub_1000574BC((a1 + 48), buf, v12);
  v7 = 0;
  *buf = &v7;
  *(sub_1000734A8(a1 + 184, &v7) + 26) = 1;
  v7 = 1;
  *buf = &v7;
  *(sub_1000734A8(a1 + 184, &v7) + 26) = 1;
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#I Registering as telemetry observer...", buf, 2u);
  }

  pthread_mutex_lock(&stru_1002D4780);
  v4 = xmmword_1002D47C0;
  if (!xmmword_1002D47C0)
  {
    sub_100089398();
  }

  v5 = *(&xmmword_1002D47C0 + 1);
  if (*(&xmmword_1002D47C0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D47C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4780);
  if (v4)
  {
    sub_1000081C8(buf, (a1 + 8));
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    sub_100089DA8(v4, &v6);
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_100200378();
  }

  if (v5)
  {
    sub_100008350(v5);
  }
}

void sub_100070FDC(uint64_t a1, xpc_object_t *a2)
{
  v16[0] = a2;
  v16[1] = "srv_status";
  sub_100007DA4(v16, &object);
  __p = 0;
  v21 = 0;
  v22 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  __p = a2;
  v21 = "subs_id";
  sub_100007DA4(&__p, v16);
  v5 = xpc::dyn_cast_or_default(v16, 0, v4);
  xpc_release(v16[0]);
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    sub_1002003B8(v7, v5 == 1, v8);
  }

  if (v7 == 2)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100200460(v10);
    }
  }

  else
  {
    v11 = sub_100071238(v9, &v18);
    v12 = v11;
    if ((v11 - 1) > 1u)
    {
      if (v11 == 3)
      {
        v14 = *a2;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v14 = xpc_null_create();
        }

        sub_100071654(a1, v7);
        xpc_release(v14);
      }
    }

    else
    {
      v13 = *a2;
      v15 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v15 = xpc_null_create();
      }

      sub_10007144C(a1, v7, v12, &v15);
      xpc_release(v15);
      v15 = 0;
    }
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }
}

void sub_1000711A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v24);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100071238(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 21)
    {
      v7 = **a2 == 0x5F5652535F535953 && *(*a2 + 8) == 0x4E5F535554415453;
      if (v7 && *(*a2 + 13) == 0x5652535F4F4E5F53)
      {
        return 1;
      }
    }

    if (a2[1] == 22)
    {
      v9 = **a2 == 0x5F5652535F535953 && *(*a2 + 8) == 0x4C5F535554415453;
      if (v9 && *(*a2 + 14) == 0x444554494D494C5FLL)
      {
        return 2;
      }
    }

    if (a2[1] != 18)
    {
      return 0;
    }

    a2 = *a2;
    goto LABEL_33;
  }

  v2 = *(a2 + 23);
  if (v2 == 18)
  {
LABEL_33:
    v11 = 0x5359535F5352565FLL;
    v12 = bswap64(*a2);
    if (v12 == 0x5359535F5352565FLL && (v11 = 0x5354415455535F53, v12 = bswap64(a2[1]), v12 == 0x5354415455535F53) && (v12 = bswap32(*(a2 + 8)) >> 16, v11 = 21078, v12 == 21078))
    {
      v13 = 0;
    }

    else if (v12 < v11)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  if (v2 != 21)
  {
    if (v2 == 22)
    {
      v5 = *a2 == 0x5F5652535F535953 && a2[1] == 0x4C5F535554415453 && *(a2 + 14) == 0x444554494D494C5FLL;
      return (2 * v5);
    }

    return 0;
  }

  return *a2 == 0x5F5652535F535953 && a2[1] == 0x4E5F535554415453 && *(a2 + 13) == 0x5652535F4F4E5F53;
}

void sub_10007144C(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v23 = a2;
  v21[0] = a4;
  v21[1] = "timestamp";
  sub_100007DA4(v21, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  v9 = *(a1 + 120);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a1 + 120;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 != a1 + 120 && *(v10 + 32) <= a2)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
    {
      sub_1002004E4();
    }
  }

  else
  {
LABEL_9:
    v14 = *(a1 + 144);
    if (v14)
    {
      v15 = a1 + 144;
      do
      {
        v16 = *(v14 + 32);
        v12 = v16 >= a2;
        v17 = v16 < a2;
        if (v12)
        {
          v15 = v14;
        }

        v14 = *(v14 + 8 * v17);
      }

      while (v14);
      if (v15 != a1 + 144 && *(v15 + 32) <= a2)
      {
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100200518(a2, v18);
        }

        (*(**(v15 + 40) + 16))(*(v15 + 40));
        sub_10007357C((a1 + 136), v15);
      }
    }

    v21[0] = &v23;
    v19 = sub_1000735E0(a1 + 112, &v23);
    *(v19 + 40) = a3;
    *(v19 + 41) = 0;
    v19[6] = v8;
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#I Creating the Service Anomaly send timer", v21, 2u);
    }

    sub_100071818(a1, v23);
  }
}

void sub_100071654(uint64_t a1, unsigned int a2)
{
  v15 = a2;
  v2 = *(a1 + 120);
  if (v2)
  {
    v4 = (a1 + 112);
    v5 = a1 + 120;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != a1 + 120 && *(v5 + 32) <= a2)
    {
      v9 = *(v5 + 41);
      if (v9 == 2)
      {
        v10 = *(a1 + 40);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
LABEL_16:
          *buf = &v15;
          if (*(sub_1000734A8(a1 + 184, &v15) + 26) == 2)
          {
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#I Creating the Service Anomaly rescind timer", buf, 2u);
            }

            sub_100071C1C(a1, v15);
          }

          sub_10001756C(v4, v5);
          operator delete(v5);
          v13 = *(a1 + 40);
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
          if (v14)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#I Deleting the Service Anomaly send timer", buf, 2u);
          }

          sub_100072020(v14, v15, a1 + 136);
          return;
        }

        *buf = 0;
        v11 = "#I Back in service after a successful registration attempt";
      }

      else
      {
        if (v9 != 1)
        {
          goto LABEL_16;
        }

        v10 = *(a1 + 40);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        *buf = 0;
        v11 = "#I Back in service without seeing a successful registration attempt";
      }

      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
      goto LABEL_16;
    }
  }
}

void sub_100071818(uint64_t a1, int a2)
{
  v31 = a2;
  sub_1000081C8(&v29, (a1 + 8));
  v4 = *&v29.__r_.__value_.__l.__data_;
  if (v29.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v29.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
    sub_100008350(*(&v4 + 1));
  }

  sub_100007ECC(&v29, "ServiceAnomalySendTimer_");
  v5 = "kOne";
  if (a2 == 1)
  {
    v5 = "kTwo";
  }

  if (a2 == 2)
  {
    v6 = "kUnknown";
  }

  else
  {
    v6 = v5;
  }

  v7 = std::string::append(&v29, v6);
  v8 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  v30[0] = v7->__r_.__value_.__r.__words[2];
  *(v30 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
  v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  pthread_mutex_lock(&stru_1002D4F90);
  v11 = xmmword_1002D4FD0;
  if (!xmmword_1002D4FD0)
  {
    sub_1001370F8(&v29);
    v12 = *&v29.__r_.__value_.__l.__data_;
    *&v29.__r_.__value_.__l.__data_ = 0uLL;
    v13 = *(&xmmword_1002D4FD0 + 1);
    xmmword_1002D4FD0 = v12;
    if (v13)
    {
      sub_100008350(v13);
      if (v29.__r_.__value_.__l.__size_)
      {
        sub_100008350(v29.__r_.__value_.__l.__size_);
      }
    }

    v11 = xmmword_1002D4FD0;
  }

  v14 = *(&xmmword_1002D4FD0 + 1);
  if (*(&xmmword_1002D4FD0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4FD0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4F90);
  if (v10 < 0)
  {
    sub_10000FFF8(__p, v8, size);
  }

  else
  {
    __p[0] = v8;
    __p[1] = size;
    *v26 = v30[0];
    *&v26[3] = *(v30 + 3);
    v27 = v10;
  }

  v15 = *(a1 + 24);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1174405120;
  v20[2] = sub_100072EF4;
  v20[3] = &unk_1002AD170;
  v20[4] = a1;
  v21 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v22 = a2;
  aBlock = _Block_copy(v20);
  sub_100072E1C(v11, __p, 2, 1200000000, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100008350(v14);
  }

  v29.__r_.__value_.__r.__words[0] = &v31;
  v16 = sub_1000736F0(a1 + 136, &v31);
  v17 = v28;
  v28 = 0;
  v18 = v16[5];
  v16[5] = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v28;
    v28 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (v10 < 0)
  {
    operator delete(v8);
  }

  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v4 + 1));
  }
}

void sub_100071B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v33)
  {
    sub_100008350(v33);
  }

  if (v34 < 0)
  {
    operator delete(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_100071C1C(uint64_t a1, int a2)
{
  v31 = a2;
  sub_1000081C8(&v29, (a1 + 8));
  v4 = *&v29.__r_.__value_.__l.__data_;
  if (v29.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v29.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
    sub_100008350(*(&v4 + 1));
  }

  sub_100007ECC(&v29, "ServiceAnomalyRescindTimer_");
  v5 = "kOne";
  if (a2 == 1)
  {
    v5 = "kTwo";
  }

  if (a2 == 2)
  {
    v6 = "kUnknown";
  }

  else
  {
    v6 = v5;
  }

  v7 = std::string::append(&v29, v6);
  v8 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  v30[0] = v7->__r_.__value_.__r.__words[2];
  *(v30 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
  v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  pthread_mutex_lock(&stru_1002D4F90);
  v11 = xmmword_1002D4FD0;
  if (!xmmword_1002D4FD0)
  {
    sub_1001370F8(&v29);
    v12 = *&v29.__r_.__value_.__l.__data_;
    *&v29.__r_.__value_.__l.__data_ = 0uLL;
    v13 = *(&xmmword_1002D4FD0 + 1);
    xmmword_1002D4FD0 = v12;
    if (v13)
    {
      sub_100008350(v13);
      if (v29.__r_.__value_.__l.__size_)
      {
        sub_100008350(v29.__r_.__value_.__l.__size_);
      }
    }

    v11 = xmmword_1002D4FD0;
  }

  v14 = *(&xmmword_1002D4FD0 + 1);
  if (*(&xmmword_1002D4FD0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4FD0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4F90);
  if (v10 < 0)
  {
    sub_10000FFF8(__p, v8, size);
  }

  else
  {
    __p[0] = v8;
    __p[1] = size;
    *v26 = v30[0];
    *&v26[3] = *(v30 + 3);
    v27 = v10;
  }

  v15 = *(a1 + 24);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1174405120;
  v20[2] = sub_100073070;
  v20[3] = &unk_1002AD1C0;
  v20[4] = a1;
  v21 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v22 = a2;
  aBlock = _Block_copy(v20);
  sub_100072E1C(v11, __p, 2, 1800000000, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100008350(v14);
  }

  v29.__r_.__value_.__r.__words[0] = &v31;
  v16 = sub_1000736F0(a1 + 160, &v31);
  v17 = v28;
  v28 = 0;
  v18 = v16[5];
  v16[5] = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v28;
    v28 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (v10 < 0)
  {
    operator delete(v8);
  }

  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v4 + 1));
  }
}

void sub_100071F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v33)
  {
    sub_100008350(v33);
  }

  if (v34 < 0)
  {
    operator delete(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_100072020(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v5 = a3 + 8;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != a3 + 8 && *(v5 + 32) <= a2)
    {
      (*(**(v5 + 40) + 16))(*(v5 + 40));
      v9 = *(v5 + 40);
      *(v5 + 40) = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      sub_10007357C(a3, v5);
    }
  }
}

void sub_1000720F8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32 = "is_reg_accepted";
  sub_100007DA4(&v31, &object);
  v5 = xpc::dyn_cast_or_default(&object, 0, v4);
  xpc_release(object);
  v31 = a2;
  v32 = "reject_cause";
  sub_100007DA4(&v31, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  v31 = a2;
  v32 = "subs_id";
  sub_100007DA4(&v31, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  v31 = a2;
  v32 = "is_data_preferred";
  sub_100007DA4(&v31, &object);
  v11 = xpc::dyn_cast_or_default(&object, 0, v10);
  xpc_release(object);
  v31 = a2;
  v32 = "is_hplmn";
  sub_100007DA4(&v31, &object);
  v13 = xpc::dyn_cast_or_default(&object, 0, v12);
  xpc_release(object);
  if (v9 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 2)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100200460(v16);
    }

    return;
  }

  if (v5)
  {
    v19 = *(a1 + 120);
    v18 = a1 + 120;
    v17 = v19;
    if (v19)
    {
      v20 = v18;
      do
      {
        v21 = *(v17 + 32);
        v22 = v21 >= v15;
        v23 = v21 < v15;
        if (v22)
        {
          v20 = v17;
        }

        v17 = *(v17 + 8 * v23);
      }

      while (v17);
      if (v20 != v18 && *(v20 + 32) <= v15)
      {
        v24 = 2;
LABEL_21:
        *(v20 + 41) = v24;
      }
    }
  }

  else
  {
    v25 = *(a1 + 56);
    if (v25)
    {
      v26 = a1 + 56;
      do
      {
        if (*(v25 + 28) >= v7)
        {
          v26 = v25;
        }

        v25 = *(v25 + 8 * (*(v25 + 28) < v7));
      }

      while (v25);
      if (v26 != a1 + 56 && v7 >= *(v26 + 28))
      {
        v27 = *(a1 + 40);
        if ((v11 | v13))
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_1002005F4();
          }

          v28 = *(a1 + 120);
          if (v28)
          {
            v20 = a1 + 120;
            do
            {
              v29 = *(v28 + 32);
              v22 = v29 >= v15;
              v30 = v29 < v15;
              if (v22)
              {
                v20 = v28;
              }

              v28 = *(v28 + 8 * v30);
            }

            while (v28);
            if (v20 != a1 + 120 && *(v20 + 32) <= v15)
            {
              v24 = 1;
              goto LABEL_21;
            }
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
          {
            sub_100200628();
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "#I Ignoring reject cause code in a roaming scenarion on a non-data preferred SIM", &v31, 2u);
        }
      }
    }
  }
}

void sub_100072424(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_10020065C();
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = (a1 + 120);
    do
    {
      v6 = v4[32];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *&v4[8 * v8];
    }

    while (v4);
    if (v5 != (a1 + 120) && v5[32] <= a2 && v5[40] - 1 <= 1)
    {
      v9 = v5[41];
      if (v9 == 1)
      {
        sub_10007257C(a1, a2, 2u);
      }

      else if (v9)
      {
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#I Not sending the service anomaly insight", v13, 2u);
        }
      }

      else
      {
        v10 = *(a1 + 40);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#I Service Anomaly send timer expired while in no service, recreating it", buf, 2u);
        }

        sub_100072020(v11, a2, a1 + 136);
        sub_100071818(a1, a2);
      }
    }
  }
}

void sub_10007257C(void *a1, unsigned __int8 a2, unsigned int a3)
{
  v16 = a2;
  *buf = &v16;
  v5 = *(sub_1000734A8((a1 + 23), &v16) + 26);
  if (v5 != a3)
  {
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = "kOne";
      if (v16 == 1)
      {
        v7 = "kTwo";
      }

      if (v16 == 2)
      {
        v8 = "kUnknown";
      }

      else
      {
        v8 = v7;
      }

      v9 = sub_1000C64D4(v5);
      v10 = sub_1000C64D4(a3);
      *buf = 136315650;
      *&buf[4] = v8;
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Service status switched on SimSlot %s changed from %s to %s", buf, 0x20u);
    }

    *buf = &v16;
    *(sub_1000734A8((a1 + 23), &v16) + 26) = a3;
    v11 = a1[10];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = a1[9];
        if (v14)
        {
          sub_100072868(a1, v16, &cf);
          (*(*v14 + 16))(v14, 2, &cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        sub_100008350(v13);
      }
    }
  }
}

void sub_10007274C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100072788(uint64_t a1, unsigned int a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_100200690();
  }

  v4 = *(a1 + 120);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 120;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 120 && *(v5 + 32) <= a2)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I Service anomaly tracker is found, device still in Anomaly state", v10, 2u);
    }
  }

  else
  {
LABEL_11:
    sub_10007257C(a1, a2, 1u);
  }
}

void sub_100072868(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v9 = a2;
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
  }

  CFDictionarySetValue(Mutable, wis::kWISInsightTypeKey, wis::kWISInsightTypeService);
  CFDictionarySetValue(theDict, wis::kWISAnomalyCategoryKey, wis::kWISAnomalyCategoryNetwork);
  v10 = &v9;
  v6 = *(sub_1000734A8(a1 + 184, &v9) + 26);
  if (v6 == 1)
  {
    v7 = &wis::kWISInsightStateNormal;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v7 = &wis::kWISInsightStateAnomaly;
  }

  CFDictionarySetValue(theDict, wis::kWISInsightStateKey, *v7);
LABEL_8:
  sub_10001DE64(a3, &theDict);
  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_100072984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100057174(va);
  _Unwind_Resume(a1);
}

void sub_10007299C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100072AA4;
  v3[3] = &unk_1002AD130;
  v3[4] = a1;
  sub_1000081C8(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000736B4;
  block[3] = &unk_1002AD300;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100008350(v5);
  }

  if (v7)
  {
    sub_100008350(v7);
  }
}