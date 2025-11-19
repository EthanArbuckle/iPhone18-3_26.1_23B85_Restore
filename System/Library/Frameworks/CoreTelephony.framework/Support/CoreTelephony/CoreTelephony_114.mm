uint64_t sub_100780B84(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "suspendDataContext";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", &buf, 0xCu);
  }

  v3 = *(a1 + 224);
  if (v3 != 5 && v3 != 3)
  {
    return 0;
  }

  sub_100356BE0(a1 + 32, &buf);
  v5 = buf;
  v6 = *(a1 + 620);
  (*(*a1 + 16))(&v8, a1);
  (*(*v5 + 56))(v5, v6, 1, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  return 1;
}

void sub_100780CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_100780D2C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "resumeDataContext";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v3 = *(a1 + 616);
  v4 = *(a1 + 620);
  if (v3 & v4)
  {
    sub_100356BE0(a1 + 32, buf);
    v5 = *buf;
    (*(*a1 + 16))(&v13, a1);
    v6 = (*(*v5 + 40))(v5, 1, 1, &v13, 0, 1);
    if (v14)
    {
      sub_100004A34(v14);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v6)
    {
      goto LABEL_16;
    }

    v3 = *(a1 + 616);
    v4 = *(a1 + 620);
  }

  if ((v3 & v4 & 2) != 0)
  {
    sub_100356BE0(a1 + 32, buf);
    v7 = *buf;
    (*(*a1 + 16))(&v11, a1);
    v6 = (*(*v7 + 40))(v7, 2, 1, &v11, 0, 1);
    if (v12)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v6)
    {
LABEL_16:
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        v10 = asString();
        *buf = 136315906;
        *&buf[4] = "resumeDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v9;
        v16 = 2080;
        v17 = v10;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Error bringing interface online for %s err %s(%d)", buf, 0x26u);
      }

      (*(*a1 + 120))(a1, 25, "CommCenter");
    }
  }
}

void sub_100780FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100781068(void *a1, int a2)
{
  v2 = 0;
  v3 = a1 + *(*a1 - 160);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      goto LABEL_9;
    }

    if (a2 != 3)
    {
      return v2 & 1;
    }

LABEL_7:
    if (v3[72])
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = v3[73];
    return v2 & 1;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v2 = v3[72];
  }

  return v2 & 1;
}

void sub_10078116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_100128BB0(&v5);
}

void sub_1007811E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100128BB0(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1007812D8(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100029714(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1000296E0(&v5);
  }

  return a1;
}

__n128 sub_1007813A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007813D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startMOBIKEHandoverTo_block_invoke";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007814B0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7C0B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007814FC(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_1007815E4(uint64_t *a1)
{
  sub_100781640(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_100781640(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_1007816B8(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_1007816B8(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 32))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 32) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100781798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100781854(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C0D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100781884(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100781960(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100781A20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100781A50(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100781B2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100781B78(void *a1)
{
  *a1 = off_101E7C1D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100781BC4(void *a1)
{
  *a1 = off_101E7C1D0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_100781CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C1D0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void sub_100781CF4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100781D04(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100781D44(void *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && a1[2])
    {
      v5[0] = 0;
      v5[1] = 0;
      sub_100004AA0(v5, (v2 + 40));
      operator new();
    }
  }

  else
  {
    v4 = 0;
  }

  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
  {
    sub_10177D498();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

uint64_t sub_100781E94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100781EE0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2 + 32;
  (*(*(v2 + 32) + 440))(buf, v2 + 32);
  v4 = *buf;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v4)
  {
    (*(*v3 + 440))(buf, v3);
    v5 = (*(**buf + 280))(*buf, 1, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v5 = 3;
  }

  if (v1[3])
  {
    v6 = *(v2 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "operator()";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: PduSessionId allocated. Resume TechDataContext activate", buf, 0xCu);
    }

    if (sub_10076D078(v2, v5, *(v1 + 8)))
    {
      *(v2 + 796) = *(v1 + 8);
      sub_10022D3B4(v2, 1);
      if (sub_10077009C(v2, v1[2]))
      {
        goto LABEL_29;
      }

      *(v2 + 592) = 80004;
      v7 = sub_1007775E4(v2, 80004);
      v8 = *(v2 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v2 + 592);
        v10 = asString();
        *buf = 67109634;
        *&buf[4] = v9;
        *&buf[8] = 2080;
        *&buf[10] = v10;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::startIPSecConnection failed: fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
      }

      sub_10076B24C(v2, v1[2]);
      sub_100356BE0(v3, &v28);
      v11 = v28;
      *buf = v7;
      *&buf[8] = "tech startIPSecConnection fail";
      *&buf[16] = "";
      v31 = 0;
      v32 = 0;
      v33 = 1;
      memset(v35, 0, sizeof(v35));
      v34 = 0;
      sub_10000501C(__p, "tech startIPSecConnection fail");
      (*(*v2 + 16))(&v24, v2);
      BYTE4(v22) = 0;
      LODWORD(v22) = 0;
      (*(*v11 + 152))(v11, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388400000002, v22, a1);
    }

    else
    {
      *(v2 + 592) = 80007;
      v17 = sub_1007775E4(v2, 80007);
      v18 = *(v2 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v2 + 592);
        v20 = asString();
        *buf = 67109634;
        *&buf[4] = v19;
        *&buf[8] = 2080;
        *&buf[10] = v20;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::getSettings failed (1): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
      }

      sub_10076B24C(v2, "TechDataContext::getSettings failed");
      sub_100356BE0(v3, &v28);
      v21 = v28;
      *buf = v17;
      *&buf[8] = "tech activate getSettings fail";
      *&buf[16] = "";
      v31 = 0;
      v32 = 0;
      v33 = 1;
      memset(v35, 0, sizeof(v35));
      v34 = 0;
      sub_10000501C(__p, "tech activate getSettings fail");
      (*(*v2 + 16))(&v24, v2);
      BYTE4(v22) = 0;
      LODWORD(v22) = 0;
      (*(*v21 + 152))(v21, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388700000002, v22, a1);
    }
  }

  else
  {
    *(v2 + 592) = 80004;
    v12 = sub_1007775E4(v2, 80004);
    v13 = *(v2 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v2 + 592);
      v15 = asString();
      *buf = 67109634;
      *&buf[4] = v14;
      *&buf[8] = 2080;
      *&buf[10] = v15;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::allocatePduSessionId failed: fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
    }

    sub_10076B24C(v2, v1[2]);
    sub_100356BE0(v3, &v28);
    v16 = v28;
    *buf = v12;
    *&buf[8] = "tech allocatePduSessionId fail";
    *&buf[16] = "";
    v31 = 0;
    v32 = 0;
    v33 = 1;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    sub_10000501C(__p, "tech allocatePduSessionId fail");
    (*(*v2 + 16))(&v24, v2);
    BYTE4(v22) = 0;
    LODWORD(v22) = 0;
    (*(*v16 + 152))(v16, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388400000002, v22, a1);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&v35[4])
  {
    sub_100004A34(*&v35[4]);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

LABEL_29:
  operator delete();
}

void sub_100782568(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  operator delete();
}

uint64_t sub_100782618(uint64_t result, uint64_t a2)
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

void sub_100782634(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

__n128 sub_1007826B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007826E8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "ikeCallBackHandler";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007827C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782884(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C308;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007828B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782A50(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782A80(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782B5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782C1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C408;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782C4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782DE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C488;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782E18(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782EF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782FB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782FE4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007830C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100783180(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007831B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_10078328C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007832D8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  LODWORD(result) = a3[1];
  v6 = result - *a3;
  if (v6)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_100783380(v11, a2, 0x20uLL);
      LOBYTE(result) = sub_100783474(v11);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      v12 = 0;
      memset(&v11[1], 0, 32);
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      v11[0] = 0uLL;
      sub_100783380(v11, a2, v10 - v9);
      do
      {
        LODWORD(result) = sub_100783474(v11);
      }

      while (result >= v7);
      LOBYTE(result) = *a3 + result;
    }
  }

  return result;
}

uint64_t sub_100783380(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t sub_100783474(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    LODWORD(result) = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = v12 + (*(a1 + 48) & (v6 - 1));
      ++v3;
    }

    while (v3 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = v23 + (v17 & (v18 - 1));
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

uint64_t sub_10078359C(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, const std::string *a6, __int128 *a7, __int128 *a8, uint64_t *a9, uint64_t *a10)
{
  *a1 = *a2;
  v16 = a2[1];
  *(a1 + 8) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10078B54C((a1 + 16), a3);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a4, *(a4 + 1));
  }

  else
  {
    v17 = *a4;
    *(a1 + 88) = *(a4 + 2);
    *(a1 + 72) = v17;
  }

  if (*(a4 + 47) < 0)
  {
    sub_100005F2C((a1 + 96), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v18 = *(a4 + 24);
    *(a1 + 112) = *(a4 + 5);
    *(a1 + 96) = v18;
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 120) = a5;
  *(a1 + 144) = 0;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 152), *a7, *(a7 + 1));
  }

  else
  {
    v19 = *a7;
    *(a1 + 168) = *(a7 + 2);
    *(a1 + 152) = v19;
  }

  if (*(a8 + 23) < 0)
  {
    sub_100005F2C((a1 + 176), *a8, *(a8 + 1));
  }

  else
  {
    v20 = *a8;
    *(a1 + 192) = *(a8 + 2);
    *(a1 + 176) = v20;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50(a1 + 200, *a9, a9[1], a9[1] - *a9);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_100034C50(a1 + 224, *a10, a10[1], a10[1] - *a10);
  sub_10000501C(__p, "Content-Type");
  v26 = __p;
  v21 = sub_100416DA4(a1 + 128, __p);
  sub_100016890((v21 + 56), "multipart/form-data;boundary=boundary");
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "Cookie");
  v26 = __p;
  v22 = sub_100416DA4(a1 + 128, __p);
  std::string::operator=((v22 + 56), a6);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1007837C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 175) < 0)
  {
    operator delete(*(v16 + 24));
  }

  sub_1000DD0AC(v16, *v17);
  sub_1000D6F38(v15 + 72);
  sub_10038E598(v15 + 16);
  v19 = *(v15 + 8);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007838A0(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a3;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 176), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 192) = *(a4 + 2);
    *(a1 + 176) = v10;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50(a1 + 200, *a5, a5[1], a5[1] - *a5);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_100034C50(a1 + 224, *a6, a6[1], a6[1] - *a6);
  sub_10000501C(__p, "Content-Type");
  v15 = __p;
  v11 = sub_100416DA4(a1 + 128, __p);
  sub_100016890((v11 + 56), "multipart/form-data;boundary=boundary");
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_100783A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 175) < 0)
  {
    operator delete(*v19);
  }

  sub_1000DD0AC(v18, *(v15 + 136));
  sub_1000D6F38(v17);
  sub_10038E598(v16);
  v21 = *(v15 + 8);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_100783AD0(LazuliProvisioningWebHelper *this)
{
  *this = &off_101E7C638;
  v2 = *(this + 99);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 776) == 1)
  {
    sub_10078BD7C(this + 528);
  }

  if (*(this + 520) == 1)
  {
    v3 = *(this + 62);
    if (v3)
    {
      *(this + 63) = v3;
      operator delete(v3);
    }

    if (*(this + 495) < 0)
    {
      operator delete(*(this + 59));
    }

    v4 = *(this + 56);
    if (v4)
    {
      *(this + 57) = v4;
      operator delete(v4);
    }
  }

  LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(this);
}

void sub_100783B80(LazuliProvisioningWebHelper *a1)
{
  sub_100783AD0(a1);

  operator delete();
}

void sub_100783BB8(LazuliProvisioningWebHelper *this)
{
  if (*(this + 776))
  {
    memset(&v14, 0, sizeof(v14));
    memset(buf, 0, sizeof(buf));
    CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(this);
    sub_10038E288(buf, CurrentConfig);
    std::string::operator=((this + 680), &v14);
    if ((*(this + 703) & 0x8000000000000000) != 0)
    {
      if (*(this + 86))
      {
LABEL_4:
        v11 = 0uLL;
        v12 = 0;
        __str.__r_.__value_.__r.__words[0] = sub_100784030(this, 1);
        LazuliProvisioningWebHelper::getHeaders(this, &__str, &v11);
        LazuliProvisioningWebHelper::set503Retry(this, 1);
        v8 = 7;
        sub_100A9C1EC(&v11, &__str);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 0x40000000;
        aBlock[2] = sub_100784380;
        aBlock[3] = &unk_101E7C690;
        aBlock[4] = this;
        v10 = 0;
        v9[0] = off_101E4BC98;
        v9[1] = _Block_copy(aBlock);
        v10 = v9;
        sub_1003A4BE4(this + 528, this + 544, this + 600, this + 81, this + 680);
      }
    }

    else if (*(this + 703))
    {
      goto LABEL_4;
    }

    v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = "NC";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Empty token or NO token received, restarting provisioning", &v11, 0xCu);
    }

    if (*(this + 776) == 1)
    {
      sub_10078BD7C(this + 528);
      *(this + 776) = 0;
    }

    v5 = *(this + 25);
    sub_10000501C(&v11, "Empty first time token");
    sub_100A9B39C(this + 104, v5, &v11);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }

    LazuliProvisioningWebHelper::restartProvisioning(this, 0);
    sub_10038E4E4(buf);
  }

  else
  {
    v3 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NC";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] No pending POST response", buf, 0xCu);
    }
  }
}

void sub_100783F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_100784030(uint64_t a1, int a2)
{
  v45 = 0;
  v46 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
  *&v40[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v40);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v45 = v12;
  v46 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    v12 = v45;
  }

  if (v12)
  {
    v44 = 0;
    sub_100A996E8(&v45, &v44);
    v13 = 1002271;
    if (v44)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      memset(v40, 0, sizeof(v40));
      CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
      sub_10038E288(v40, CurrentConfig);
      v15 = HIDWORD(v41) != 1;
      isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(a1);
      Value = CFDictionaryGetValue(v44, @"ProvisioningData");
      v18 = Value;
      if (!Value)
      {
        goto LABEL_29;
      }

      v19 = CFGetTypeID(Value);
      if (v19 != CFDictionaryGetTypeID())
      {
        goto LABEL_29;
      }

      if (CFDictionaryContainsKey(v18, @"UseIMSIDuringProvisioning"))
      {
        v20 = CFDictionaryGetValue(v18, @"UseIMSIDuringProvisioning");
        v21 = v20;
        v47 = 0;
        if (v20 && (v22 = CFGetTypeID(v20), v22 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v47, v21, v23);
          v15 = v47;
        }

        else
        {
          v15 = 0;
        }
      }

      if (CFDictionaryContainsKey(v18, @"UseIMEIDuringProvisioning") && (v32 = CFDictionaryGetValue(v18, @"UseIMEIDuringProvisioning"), v33 = v32, v47 = 0, v32) && (v34 = CFGetTypeID(v32), v34 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(&v47, v33, v35);
        v36 = 1002335;
        if (!v15)
        {
          v36 = 1002271;
        }

        if (v47)
        {
          v37 = v36 | 0x20;
        }

        else
        {
          v37 = v36;
        }
      }

      else
      {
LABEL_29:
        v37 = 1002335;
        if (!v15)
        {
          v37 = 1002271;
        }
      }

      if (isPushEnabled)
      {
        v37 |= 0x200000uLL;
      }

      v38 = v37 | 0xC0;
      if (a2)
      {
        v37 |= 0x200uLL;
      }

      if (HIDWORD(v41) == 1)
      {
        v13 = v37;
      }

      else
      {
        v13 = v38;
      }

      sub_10038E4E4(v40);
    }

    sub_10001021C(&v44);
  }

  else
  {
    v13 = 1002271;
    v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177D4D8(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  if (v46)
  {
    sub_100004A34(v46);
  }

  return v13;
}

void sub_10078433C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078438C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v93 = a3;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  (*(**a2 + 56))(&v90);
  v5 = (*(**a2 + 24))();
  v87 = 0;
  v88 = 0;
  v89 = 0;
  (*(**a2 + 48))(&v87);
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 336);
      if (v9)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v9, &v93, v5 | &_mh_execute_header, buf, 0, 0);
        LazuliProvisioningServerWrapper::eraseProvisioningToken(v9, *(a1 + 100));
      }

      sub_100004A34(v8);
    }
  }

  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v85, &v90);
  LazuliProvisioningWebHelper::getCookie(v85, &__str);
  sub_1000DD0AC(v85, v85[1]);
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100701D5C(&v93);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v13 = size != 0;
    v14 = HIBYTE(v89);
    if (v89 < 0)
    {
      v14 = v88;
    }

    *buf = 136316162;
    *&buf[4] = "NC";
    *&buf[12] = 2080;
    *&buf[14] = v11;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    *&buf[28] = 1024;
    *&buf[30] = v13;
    *&buf[34] = 2048;
    *&buf[36] = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Received app attestation response [%s], [%d] [cookie: %{BOOL}d] [body-size: %ld]", buf, 0x2Cu);
  }

  if (v5 > 402)
  {
    if (v5 == 403)
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __str.__r_.__value_.__l.__size_;
        }

        if (v28)
        {
          v29 = "YES";
        }

        else
        {
          v29 = "NO";
        }

        *buf = 136315394;
        *&buf[4] = "NC";
        *&buf[12] = 2080;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 response during POST [cookie: %s]", buf, 0x16u);
      }

      v30 = *(a1 + 344);
      if (!v30)
      {
        goto LABEL_85;
      }

      v31 = std::__shared_weak_count::lock(v30);
      if (!v31)
      {
        goto LABEL_85;
      }

      v25 = v31;
      v32 = *(a1 + 336);
      if (v32)
      {
        v109 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
        sub_10038E288(buf, CurrentConfig);
        v68 = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v32, &v93, 0x100000193, &v68, 0, 0);
        v68 = 2;
        LazuliProvisioningServerWrapper::failedFatally(v32);
      }

LABEL_53:
      v34 = v25;
LABEL_54:
      sub_100004A34(v34);
      goto LABEL_85;
    }

    if (v5 != 511)
    {
LABEL_55:
      v35 = *(a1 + 344);
      if (v35)
      {
        v36 = std::__shared_weak_count::lock(v35);
        if (v36)
        {
          v37 = v36;
          v38 = *(a1 + 336);
          if (v38)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v38, &v93, v5 | &_mh_execute_header, buf, 0, 0);
          }

          sub_100004A34(v37);
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_10078856C;
      aBlock[3] = &unk_101E7C6F0;
      aBlock[4] = a1;
      v67 = v93;
      v95 = 0;
      v94[0] = off_101E4BC98;
      v94[1] = _Block_copy(aBlock);
      v95 = v94;
      LazuliProvisioningWebHelper::responseUnknown(a1, a2, v94);
      sub_100416C34(v94);
      goto LABEL_85;
    }

LABEL_31:
    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch", buf, 0xCu);
    }

    v23 = *(a1 + 344);
    if (!v23)
    {
      goto LABEL_85;
    }

    v24 = std::__shared_weak_count::lock(v23);
    if (!v24)
    {
      goto LABEL_85;
    }

    v25 = v24;
    v26 = *(a1 + 336);
    if (v26)
    {
      *buf = 10;
      LazuliProvisioningServerWrapper::submitMetricForPhase(v26, &v93, v5 | &_mh_execute_header, buf, 0, 0);
      memset(buf, 0, 32);
      sub_100416A54(v71, &v90);
      LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v71, buf);
      sub_1000DD0AC(v71, v71[1]);
      sub_100416748(__p, buf);
      LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
      if (v70 == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
      if (buf[24] == 1 && *buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    goto LABEL_53;
  }

  if (v5 - 400 < 2)
  {
    goto LABEL_31;
  }

  if (v5 != 200)
  {
    goto LABEL_55;
  }

  v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __str.__r_.__value_.__l.__size_;
  }

  if (v15)
  {
    std::string::operator=((a1 + 256), &__str);
  }

  else
  {
    v39 = *(a1 + 344);
    if (v39)
    {
      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v20 = v40;
        v41 = *(a1 + 336);
        if (v41)
        {
          v42 = HIBYTE(v89);
          if (v89 < 0)
          {
            v42 = v88;
          }

          if (v42)
          {
            v83[0] = 0;
            v83[1] = 0;
            v84 = 0;
            sub_10006F264(v80, (a1 + 392));
            sub_100787BF0(a2, &v78);
            LazuliProvisioningServerWrapper::handleXml(v41, &v87, v83, &v90, &v93, v80, &v78);
            if (v79 == 1 && SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78.__r_.__value_.__l.__data_);
            }

            if (v82 == 1 && v81 < 0)
            {
              operator delete(v80[0]);
            }

            if ((SHIBYTE(v84) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            v43 = v83[0];
            goto LABEL_99;
          }

          *buf = 12;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v41, &v93, 0x1000000C8, buf, 0, 0);
        }

        sub_100004A34(v20);
      }
    }

    v48 = *(a1 + 279);
    if (v48 < 0)
    {
      v48 = *(a1 + 264);
    }

    v49 = *(**(a1 + 48) + 16);
    if (!v48)
    {
      v58 = *v49();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_10177D5C8(v58, v59, v60, v61, v62, v63, v64, v65);
      }

      goto LABEL_85;
    }

    v50 = *v49();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10177D550(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  v16 = HIBYTE(v89);
  if (v89 < 0)
  {
    v16 = v88;
  }

  if (v16)
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
    }

    v18 = *(a1 + 344);
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 336);
        if (v21)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }

          sub_10006F264(v74, (a1 + 392));
          sub_100787BF0(a2, &v72);
          LazuliProvisioningServerWrapper::handleXml(v21, &v87, &__dst, &v90, &v93, v74, &v72);
          if (v73 == 1 && SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          if (v76 == 1 && v75 < 0)
          {
            operator delete(v74[0]);
          }

          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_100;
          }

          v43 = __dst.__r_.__value_.__r.__words[0];
LABEL_99:
          operator delete(v43);
LABEL_100:
          v34 = v20;
          goto LABEL_54;
        }

        sub_100004A34(v19);
      }
    }
  }

  v44 = *(a1 + 303);
  if (v44 < 0)
  {
    v44 = *(a1 + 288);
  }

  v45 = *(**(a1 + 48) + 16);
  if (v44)
  {
    v46 = *v45();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation complete, OTP recieved. Continuing...", buf, 0xCu);
    }

    LazuliProvisioningWebHelper::scheduleOtpResponse(a1);
  }

  v47 = *v45();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I [%s] Awaiting OTP", buf, 0xCu);
  }

  LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
LABEL_85:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v87);
  }

  sub_1000DD0AC(&v90, v91);
}

void sub_100784DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61, uint64_t a62)
{
  sub_100004A34(v62);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  sub_1000DD0AC(&a61, a62);
  _Unwind_Resume(a1);
}

void sub_10078503C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    *buf = 136315650;
    v33 = "NC";
    v34 = 1024;
    v35 = a2;
    v36 = 2048;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Signing status: %{BOOL}d, response size = %zu", buf, 0x1Cu);
  }

  if (*(a1 + 520))
  {
    if (a2)
    {
      std::string::operator=((a1 + 56), a3);
      if ((*(a1 + 520) & 1) == 0)
      {
        sub_1000D1644();
      }

      v25 = *(a1 + 440);
      *v26 = *(a1 + 448);
      v27 = *(a1 + 464);
      *(a1 + 448) = 0;
      *(a1 + 456) = 0;
      v8 = *(a1 + 472);
      *(a1 + 464) = 0;
      *(a1 + 472) = 0;
      v29 = *(a1 + 488);
      *v28 = v8;
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      *__p = *(a1 + 496);
      v31 = *(a1 + 512);
      *(a1 + 496) = 0;
      *(a1 + 504) = 0;
      *(a1 + 512) = 0;
      sub_1007852B8(a1, &v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }

      if (v26[0])
      {
        v26[1] = v26[0];
        operator delete(v26[0]);
      }
    }

    else
    {
      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10177D6B8(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    sub_10078B614(a1 + 440);
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177D640(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_1007852B8(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v19 = *(a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(a1);
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    *buf = 136316162;
    *&buf[4] = "NC";
    *&buf[12] = 1024;
    *&buf[14] = isPushEnabled;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 1042;
    *&buf[30] = 32;
    *&buf[34] = 2098;
    *&buf[36] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting attestation [push enabled: %{BOOL}d], [id: %zu], [challenge hash:\n%{public,network:data}.32P]", buf, 0x2Cu);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (isPushEnabled)
  {
    if (&v38 != (a2 + 7))
    {
      sub_1001122C4(&v38, a2[7], a2[8], a2[8] - a2[7]);
    }
  }

  else if (a2[7] != a2[8])
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10177D730(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v17 = *buf;
  v16 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v16);
    v43 = 0;
    memset(&buf[16], 0, 32);
    *buf = v17;
    *&buf[8] = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&buf[8] = 0;
  }

  v18 = *a2;
  *&buf[16] = a1;
  *&buf[24] = v18;
  *&buf[40] = 0;
  v43 = 0;
  *&buf[32] = 0;
  sub_100034C50(&buf[32], v38, v39, v39 - v38);
  if (v4 != v19)
  {
    __p[4] = v4;
    v37 = v19;
    v33 = *buf;
    v34 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    }

    v35 = *&buf[16];
    memset(__p, 0, 24);
    sub_100034C50(__p, *&buf[32], *&buf[40], *&buf[40] - *&buf[32]);
    v41 = 0;
    operator new();
  }

  if (v38 != v39)
  {
    memset(v32, 0, sizeof(v32));
    sub_10000501C(&v30, "");
    sub_10000501C(&v28, "");
    v32[0] = v30;
    *(&v32[1] + 8) = v28;
    *&v32[1] = v31;
    *(&v32[2] + 1) = v29;
    sub_100041088(__dst, v32);
    v27 = 1;
    LOBYTE(v20) = 0;
    v22 = 0;
    sub_1007858C0(buf, __dst, &v20);
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (SHIBYTE(v32[2]) < 0)
    {
      operator delete(*(&v32[1] + 1));
    }

    if (SBYTE7(v32[1]) < 0)
    {
      operator delete(*&v32[0]);
    }
  }

  if (*&buf[32])
  {
    *&buf[40] = *&buf[32];
    operator delete(*&buf[32]);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void *sub_100785880(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1007858C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = *(a1 + 16);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*a1)
      {
        if (*(a1 + 32) != *(a1 + 40))
        {
          v10 = *(v7 + 344);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              if (*(v7 + 336))
              {
                LazuliProvisioningServerWrapper::handleVapidReceived(*(v7 + 336), a1 + 32);
                v12 = *(a1 + 8);
                v18[0] = *a1;
                v18[1] = v12;
                if (v12)
                {
                  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v13 = *(a1 + 24);
                v19 = v7;
                v20 = v13;
                sub_10078B54C(&v21, a2);
                sub_10006F264(__p, a3);
                __p[8] = 0;
                operator new();
              }

              sub_100004A34(v11);
            }
          }
        }

        sub_10000501C(v16, "");
        sub_100787D30(v7, a2, v14, (a1 + 24), v16);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        v15 = *(v7 + 792);
        *(v7 + 784) = 0u;
        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100785B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, std::__shared_weak_count *a17)
{
  sub_100007E44(v19 - 128);
  sub_10078B678(&a16);
  sub_100004A34(v18);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_100785BFC(uint64_t a1, uint64_t a2)
{
  v49 = 5;
  v4 = *(a1 + 344);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v2 = *(a1 + 336);
      v8 = v2 != 0;
      if (!v2)
      {
        goto LABEL_22;
      }

      if (*(a2 + 16) == *(a2 + 8))
      {
        v18 = *(a2 + 55);
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a2 + 40);
        }

        if (v18)
        {
          v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10177D820(v19, v20, v21, v22, v23, v24, v25, v26);
          }

          v48 = 9;
          LOBYTE(buf) = 0;
          buf_4[0] = 0;
          LOBYTE(__p) = 0;
          v44 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &__p);
          if (v44 != 1 || (v43 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = __p;
        }

        else
        {
          v28 = *(**(a1 + 48) + 16);
          if (*(a2 + 56) != *(a2 + 64))
          {
            v29 = *v28();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315138;
              *buf_4 = "NC";
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%s] Subscribing to push - Vapid received", &buf, 0xCu);
            }

            LazuliProvisioningServerWrapper::handleVapidReceived(v2, a2 + 56);
            sub_100004AA0(&buf, (a1 + 8));
            v30 = *&buf_4[4];
            if (*&buf_4[4])
            {
              atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
              sub_100004A34(v30);
              atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = 0;
            operator new();
          }

          v31 = *v28();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10177D898(v31, v32, v33, v34, v35, v36, v37, v38);
          }

          v48 = 9;
          LOBYTE(buf) = 0;
          buf_4[0] = 0;
          LOBYTE(v39) = 0;
          v41 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &v39);
          if (v41 != 1 || (v40 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = v39;
        }
      }

      else
      {
        v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10177D7A8(v9, v10, v11, v12, v13, v14, v15, v16);
        }

        v48 = 9;
        LOBYTE(buf) = 0;
        buf_4[0] = 0;
        LOBYTE(v45) = 0;
        v47 = 0;
        LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &v45);
        if (v47 != 1 || (v46 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v17 = v45;
      }

      operator delete(v17);
LABEL_21:
      LODWORD(v2) = 0;
LABEL_22:
      sub_100004A34(v7);
      return v2 & v8;
    }
  }

  v8 = 0;
  return v2 & v8;
}

void sub_100785FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10078608C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *__p = 0u;
  v20 = 0u;
  *v18 = 0u;
  sub_1007862D0(a1, a3, v18);
  if (LazuliProvisioningWebHelper::isPushEnabled(a1) && (v18[0] == v18[1] || __p[1] == v20))
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177D910(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    v17 = 8;
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100701D5C(&v17);
      v8 = *a2;
      *buf = 136315650;
      v22 = "NC";
      v23 = 2080;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Responding with POST during phase: %s, id = [%lu]", buf, 0x20u);
    }

    sub_1007838A0(buf, (a1 + 104), *a2, a3, v18, &__p[1]);
    sub_1007867F8(a1 + 528, buf);
    sub_10078BD7C(buf);
    *buf = 8;
    sub_100786978(a1, buf);
  }

  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_100786290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100786E08(va);
  _Unwind_Resume(a1);
}

void sub_1007862D0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if ((LazuliProvisioningWebHelper::isPushEnabled(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (!v6)
  {
LABEL_14:
    sub_10078BFCC(a3, &v44, &v41);
    goto LABEL_39;
  }

  v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136315395;
    *&buf[4] = "NC";
    *&buf[12] = 2081;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] TokenURL: %{private}s", buf, 0x16u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  PersonalityIdFromSlotId();
  v37 = 0;
  v38 = 0;
  (*(**(a1 + 424) + 80))(&v37);
  if (v37)
  {
    (*(*v37 + 48))(v37, __p);
    (*(*v37 + 72))(v37, __p);
    v35 = 0;
    v36 = 0;
    (*(*v37 + 32))(&v35);
    v9 = v35;
    if (v35)
    {
      (*(*v35 + 40))(buf, v35);
      sub_1001122C4(&v44, *buf, *&buf[8], *&buf[8] - *buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else
    {
      v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10177D988(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      sub_10078BFCC(a3, &v44, &v41);
    }

    if (v36)
    {
      sub_100004A34(v36);
    }

    if (!v9)
    {
      goto LABEL_35;
    }

    memset(buf, 0, 32);
    (*(*v37 + 56))(buf);
    v26 = buf[24];
    if (buf[24] == 1)
    {
      sub_1001122C4(&v41, *buf, *&buf[8], *&buf[8] - *buf);
    }

    else
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10177DA00(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      sub_10078BFCC(a3, &v44, &v41);
    }

    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if ((v26 & 1) == 0)
    {
LABEL_35:
      if (v38)
      {
        sub_100004A34(v38);
      }

      goto LABEL_37;
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177DA78(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_10078BFCC(a3, &v44, &v41);
LABEL_37:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_100786724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (*(v24 - 56) == 1)
  {
    v26 = *(v24 - 80);
    if (v26)
    {
      *(v24 - 72) = v26;
      operator delete(v26);
    }
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007867F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    sub_10078BBA8(a1, a2);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 64) = 0;
    if (*(a2 + 64) == 1)
    {
      v3 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v3;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      v4 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v4;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 40) = 0;
      *(a1 + 64) = 1;
    }

    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    *(a1 + 128) = *(a2 + 128);
    v7 = (a2 + 136);
    v8 = *(a2 + 136);
    v9 = *(a2 + 120);
    *(a1 + 136) = v8;
    v10 = a1 + 136;
    *(a1 + 120) = v9;
    v11 = *(a2 + 144);
    *(a1 + 144) = v11;
    if (v11)
    {
      *(v8 + 16) = v10;
      *(a2 + 128) = v7;
      *v7 = 0;
      *(a2 + 144) = 0;
    }

    else
    {
      *(a1 + 128) = v10;
    }

    v12 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v12;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    v13 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v13;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a1 + 248) = 1;
  }

  return a1;
}

void sub_100786978(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100784030(a1, 1);
  v25 = v4;
  v5 = *(a1 + 79);
  if (v5 < 0)
  {
    v5 = *(a1 + 64);
  }

  if (v5)
  {
    v25 = v4 | 0x100000;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  LazuliProvisioningWebHelper::getHeaders(a1, &v25, &v22);
  if (*(a1 + 279) < 0)
  {
    **(a1 + 256) = 0;
    *(a1 + 264) = 0;
  }

  else
  {
    *(a1 + 256) = 0;
    *(a1 + 279) = 0;
  }

  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  memset(__dst, 0, sizeof(__dst));
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__dst, CurrentConfig);
  v7 = *(a1 + 344);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 336);
      if (v10)
      {
        if (HIDWORD(v19) != 1)
        {
          goto LABEL_15;
        }

        v11 = HIBYTE(v21);
        if (v21 < 0)
        {
          v11 = *(&v20 + 1);
        }

        if (v11)
        {
LABEL_15:
          v17 = *a2;
          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_100701D5C(&v17);
            *buf = 136315394;
            *&buf[4] = "NC";
            v29 = 2080;
            v30 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending POST on phase: %s", buf, 0x16u);
          }

          sub_100A9C1EC(&v22, buf);
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 0x40000000;
          aBlock[2] = sub_10078855C;
          aBlock[3] = &unk_101E7C6D0;
          aBlock[4] = a1;
          v16 = v17;
          v27 = 0;
          v26[0] = off_101E4BC98;
          v26[1] = _Block_copy(aBlock);
          v27 = v26;
          sub_1003A4BE4(a1 + 528, a1 + 544, a1 + 600, (a1 + 648), a1 + 680);
        }

        v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NC";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Token required for provisioning. Requesting now", buf, 0xCu);
        }

        LazuliProvisioningServerWrapper::requestProvisioningToken(v10, *(a1 + 100));
      }

      sub_100004A34(v9);
    }
  }

  sub_10038E4E4(__dst);
  sub_1000DD0AC(&v22, v23);
}

void sub_100786D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100004A34(v29);
  sub_10038E4E4(&a29);
  sub_1000DD0AC(v30 - 144, *(v30 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_100786E08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100786E4C(uint64_t a1, uint64_t a2, int a3)
{
  v67 = a3;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v5 = (a1 + 48);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  sub_1003A4640(v5 + 7, v6, a2, &v61);
  v7 = *(**v5 + 16);
  if (v66)
  {
    v8 = *v7();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((v66 & 1) == 0)
      {
        sub_1000D1644();
      }

      v9 = *(a2 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      *buf = 136315650;
      *&buf[4] = "NC";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      v69 = 2048;
      v70 = v61;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] Client auth data received [size: %zu], [id= %lu]", buf, 0x20u);
    }

    v10 = *(a1 + 344);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 336);
        if (v13)
        {
          v60 = 6;
          buf[0] = 0;
          buf[4] = 0;
          LOBYTE(__p) = 0;
          v56 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v13, &v67, &v60, buf, &__p);
          if (v56 == 1 && v55 < 0)
          {
            operator delete(__p);
          }
        }

        sub_100004A34(v12);
      }
    }

    if (v67 == 5)
    {
      if ((v66 & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = sub_100785BFC(a1, &v61);
      goto LABEL_66;
    }

    if (!*(a1 + 784) && v62 != *(&v61 + 1))
    {
      (*(**(a1 + 424) + 72))(buf);
      v34 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v35 = *(a1 + 792);
      *(a1 + 784) = v34;
      if (v35)
      {
        sub_100004A34(v35);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }

    if (*(LazuliProvisioningWebHelper::getCurrentConfig(a1) + 196) == 1)
    {
      if (v66 != 1)
      {
        goto LABEL_74;
      }

      v27 = BYTE7(v64);
      if (SBYTE7(v64) < 0)
      {
        v27 = *(&v63 + 1);
      }

      if (v27)
      {
        v28 = *(a1 + 344);
        if (v28)
        {
          v29 = std::__shared_weak_count::lock(v28);
          if (v29)
          {
            v30 = *(a1 + 336);
            if (v30)
            {
              v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                if ((v66 & 1) == 0)
                {
                  sub_1000D1644();
                }

                if ((SBYTE7(v64) & 0x80u) == 0)
                {
                  v32 = &v63;
                }

                else
                {
                  v32 = v63;
                }

                *buf = 136315651;
                *&buf[4] = "NC";
                *&buf[12] = 2160;
                *&buf[14] = 1752392040;
                v69 = 2081;
                v70 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting signing nonce: %{private, mask.hash}s", buf, 0x20u);
              }

              sub_10078BE44(a1 + 440, &v61);
              if ((v66 & 1) == 0)
              {
                sub_1000D1644();
              }

              LazuliProvisioningServerWrapper::requestSigning(v30, &v63);
LABEL_64:
              sub_100004A34(v29);
LABEL_65:
              v14 = 1;
              goto LABEL_66;
            }
          }
        }

        else
        {
          v29 = 0;
        }

        v36 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10177DB68(v36, v37, v38, v39, v40, v41, v42, v43);
        }

        if (!v29)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    v33 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting Attestation flow", buf, 0xCu);
    }

    if (v66)
    {
      v45 = v61;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      sub_100034C50(&v46, *(&v61 + 1), v62, v62 - *(&v61 + 1));
      if (SBYTE7(v64) < 0)
      {
        sub_100005F2C(&v49, v63, *(&v63 + 1));
      }

      else
      {
        v49 = v63;
        v50 = v64;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      sub_100034C50(&v51, *(&v64 + 1), v65, v65 - *(&v64 + 1));
      sub_1007852B8(a1, &v45);
      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      goto LABEL_65;
    }

LABEL_74:
    sub_1000D1644();
  }

  v15 = *v7();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10177DAF0(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v23 = *(a1 + 344);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = v24;
      v26 = *(a1 + 336);
      if (v26)
      {
        v60 = 9;
        buf[0] = 0;
        buf[4] = 0;
        LOBYTE(v57) = 0;
        v59 = 0;
        LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v26, &v67, &v60, buf, &v57);
        if (v59 == 1 && v58 < 0)
        {
          operator delete(v57);
        }
      }

      sub_100004A34(v25);
    }
  }

  v14 = 0;
LABEL_66:
  if (v66 == 1)
  {
    if (*(&v64 + 1))
    {
      *&v65 = *(&v64 + 1);
      operator delete(*(&v64 + 1));
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63);
    }

    if (*(&v61 + 1))
    {
      *&v62 = *(&v61 + 1);
      operator delete(*(&v61 + 1));
    }
  }

  return v14;
}

void sub_10078749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100004A34(v38);
  sub_10078B5B4(&a38);
  _Unwind_Resume(a1);
}

void sub_100787578(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v35 = 0;
  v36 = 0;
  v37 = 0;
  (*(**a2 + 48))(&v35);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(**a2 + 56))(&v32);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HIBYTE(v37);
    if (v37 < 0)
    {
      v6 = v36;
    }

    *buf = 136315650;
    *&buf[4] = "NC";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 2048;
    *&buf[20] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Response [%d] for OTP, body-size: %ld", buf, 0x1Cu);
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 336);
      if (v9)
      {
        if (v4 - 400 < 2 || v4 == 511)
        {
          v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch after invalid OTP response", buf, 0xCu);
          }

          *buf = 4;
          v24 = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v9, buf, v4 | &_mh_execute_header, &v24, 0, 0);
          memset(buf, 0, 32);
          sub_100416A54(v23, &v32);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v23, buf);
          sub_1000DD0AC(v23, v23[1]);
          sub_100416748(v21, buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v21);
          if (v22 == 1 && v21[0])
          {
            v21[1] = v21[0];
            operator delete(v21[0]);
          }

          LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          if (buf[24] == 1 && *buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        else
        {
          if (v4 != 200)
          {
            goto LABEL_40;
          }

          v10 = HIBYTE(v37);
          if (v37 < 0)
          {
            v10 = v36;
          }

          if (v10)
          {
            v30[0] = 0;
            v30[1] = 0;
            v31 = 0;
            *buf = 4;
            sub_10006F264(v27, (a1 + 392));
            sub_100787BF0(a2, &__p);
            LazuliProvisioningServerWrapper::handleXml(v9, &v35, v30, &v32, buf, v27, &__p);
            if (v26 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v29 == 1 && v28 < 0)
            {
              operator delete(v27[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(v30[0]);
            }

            if (*(a1 + 303) < 0)
            {
              **(a1 + 280) = 0;
              *(a1 + 288) = 0;
            }

            else
            {
              *(a1 + 280) = 0;
              *(a1 + 303) = 0;
            }

            if (*(a1 + 279) < 0)
            {
              **(a1 + 256) = 0;
              *(a1 + 264) = 0;
            }

            else
            {
              *(a1 + 256) = 0;
              *(a1 + 279) = 0;
            }
          }

          else
          {
LABEL_40:
            *buf = 4;
            v24 = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v9, buf, v4 | &_mh_execute_header, &v24, 0, 0);
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 0x40000000;
            v20[2] = sub_100787D08;
            v20[3] = &unk_101E7C6B0;
            v20[4] = a1;
            v39 = 0;
            v38[0] = off_101E4BC98;
            v38[1] = _Block_copy(v20);
            v39 = v38;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v38);
            sub_100416C34(v38);
          }
        }

LABEL_28:
        sub_100004A34(v8);
        goto LABEL_29;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10177DBE0(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  if (v8)
  {
    goto LABEL_28;
  }

LABEL_29:
  sub_1000DD0AC(&v32, v33);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }
}

void sub_100787AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, void *a46)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a38 == 1 && a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_100004A34(v46);
  sub_1000DD0AC(&a45, a46);
  if (*(v47 - 145) < 0)
  {
    operator delete(*(v47 - 168));
  }

  _Unwind_Resume(a1);
}

void sub_100787BF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9[0] = 0;
  v9[1] = 0;
  (*(**a1 + 56))(&v8);
  sub_10000501C(__p, "X-Acs-Debug-Message");
  v3 = sub_10038F068(&v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 == v3)
  {
    v5 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 + 79) < 0)
    {
      sub_100005F2C(a2, *(v3 + 56), *(v3 + 64));
    }

    else
    {
      v4 = *(v3 + 56);
      *(a2 + 16) = *(v3 + 72);
      *a2 = v4;
    }

    v5 = 1;
  }

  *(a2 + 24) = v5;
  sub_1000DD0AC(&v8, v9[0]);
}

void sub_100787D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation response received", buf, 0xCu);
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation output: (nil)", buf, 0xCu);
    }

    v11 = *(a1 + 344);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 336);
        if (v14)
        {
          *buf = 3;
          *v58 = 11;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v14, buf, 0, v58, 0, 0);
          LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          sub_100004A34(v13);
          return;
        }

        sub_100004A34(v13);
      }
    }
  }

  memset(v57, 0, sizeof(v57));
  *v56 = 0u;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 376) == 1)
  {
    if (*(a1 + 375) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      __dst = *(a1 + 352);
    }
  }

  else
  {
    sub_10000501C(&__dst, "");
  }

  v74 = 0u;
  memset(&v75, 0, sizeof(v75));
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *buf = 0u;
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(buf, CurrentConfig);
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v17 = *(a2 + 47);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 32);
    }

    if (v17)
    {
      v18 = *(a1 + 784);
      if (v18 && (*(*v18 + 24))(v18))
      {
        (*(**(a1 + 784) + 8))(v58);
        *v56 = *v58;
        v57[0] = *&v58[16];
        *&v57[1] = v59;
        v57[3] = v60;
      }

      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::operator=(&__dst, &v75);
      }
    }
  }

  *v53 = 0u;
  v54 = 0u;
  *v52 = 0u;
  sub_1007862D0(a1, a5, v52);
  if (*(a1 + 520) == 1 && *(a1 + 504) != *(a1 + 496) && LazuliProvisioningWebHelper::isPushEnabled(a1) && (v52[0] == v52[1] || v53[1] == v54))
  {
    v41 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 136315138;
      *&v58[4] = "NC";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I [%s] Vapid was requested, but invalid push keys generated - Bailing out", v58, 0xCu);
    }
  }

  else
  {
    v20 = *(a1 + 279);
    if (v20 < 0)
    {
      v20 = *(a1 + 264);
    }

    v21 = *(**(a1 + 48) + 16);
    if (v20)
    {
      v22 = *v21();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        if (*(a2 + 47) >= 0)
        {
          v24 = a2 + 24;
        }

        else
        {
          v24 = *(a2 + 24);
        }

        *v58 = 136315650;
        *&v58[4] = "NC";
        *&v58[12] = 2082;
        *&v58[14] = v23;
        *&v58[22] = 2082;
        *&v59 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending attestation output to server: [%{public}s], [%{public}s]", v58, 0x20u);
      }

      sub_10078B54C(v46, a2);
      if (SHIBYTE(v57[0]) < 0)
      {
        sub_100005F2C(v42, v56[0], v56[1]);
      }

      else
      {
        *v42 = *v56;
        v43 = v57[0];
      }

      if (SHIBYTE(v57[3]) < 0)
      {
        sub_100005F2C(&__p, v57[1], v57[2]);
      }

      else
      {
        __p = *&v57[1];
        v45 = v57[3];
      }

      sub_10078359C(v58, (a1 + 104), v46, v42, *a4, (a1 + 256), &__dst, a5, v52, &v53[1]);
      sub_1007867F8(a1 + 528, v58);
      sub_10078BD7C(v58);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (v50 == 1)
      {
        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47 < 0)
        {
          operator delete(v46[0]);
        }
      }

      v37 = *(a1 + 344);
      if (v37)
      {
        v38 = std::__shared_weak_count::lock(v37);
        if (v38)
        {
          v39 = v38;
          v40 = *(a1 + 336);
          if (v40)
          {
            *v58 = 3;
            v51 = 16;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v40, v58, 0, &v51, 0, 0);
            LazuliProvisioningServerWrapper::attestationComplete(v40, a2 + 24);
          }

          sub_100004A34(v39);
        }
      }

      *v58 = 7;
      sub_100786978(a1, v58);
    }

    else
    {
      v25 = *v21();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10177DC58(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      v33 = *(a1 + 344);
      if (v33)
      {
        v34 = std::__shared_weak_count::lock(v33);
        if (v34)
        {
          v35 = v34;
          v36 = *(a1 + 336);
          if (v36)
          {
            *v58 = 3;
            v51 = 12;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v36, v58, 0, &v51, 0, 0);
            LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          }

          sub_100004A34(v35);
        }
      }
    }
  }

  if (v53[1])
  {
    *&v54 = v53[1];
    operator delete(v53[1]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  sub_10038E4E4(buf);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57[3]) < 0)
  {
    operator delete(v57[1]);
  }

  if (SHIBYTE(v57[0]) < 0)
  {
    operator delete(v56[0]);
  }
}

void sub_10078846C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100004A34(v38);
  sub_100786E08(&a25);
  sub_10038E4E4(&STACK[0x200]);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_1000D6F38(&a38);
  _Unwind_Resume(a1);
}

void sub_10078857C(uint64_t a1, uint64_t a2, int a3)
{
  v64 = a3;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  (*(**a2 + 56))(&v61);
  v5 = (*(**a2 + 24))();
  v58 = 0;
  v59 = 0;
  v60 = 0;
  (*(**a2 + 48))(&v58);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v56, &v61);
  LazuliProvisioningWebHelper::getCookie(v56, &__str);
  sub_1000DD0AC(v56, v56[1]);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  if (v5 > 402)
  {
    if (v5 == 403)
    {
      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v21 = "YES";
        }

        else
        {
          v21 = "NO";
        }

        *buf = 136315394;
        *&buf[4] = "NC";
        *&buf[12] = 2080;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response [cookie: %s]", buf, 0x16u);
      }

      v22 = *(a1 + 344);
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        if (v23)
        {
          v17 = v23;
          v24 = *(a1 + 336);
          if (v24)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v24, &v64, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::handleForbiddenResponse(v24);
          }

          goto LABEL_45;
        }
      }

      goto LABEL_63;
    }

    if (v5 != 511)
    {
      goto LABEL_57;
    }
  }

  else if ((v5 - 400) >= 2)
  {
    if (v5 == 200)
    {
      v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = __str.__r_.__value_.__l.__size_;
      }

      if (v6)
      {
        std::string::operator=((a1 + 256), &__str);
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v8 = __str.__r_.__value_.__l.__size_;
          }

          if (v8)
          {
            v9 = "YES";
          }

          else
          {
            v9 = "NO\x10";
          }

          *buf = 136315394;
          *&buf[4] = "NC";
          *&buf[12] = 2080;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s]", buf, 0x16u);
        }

        v10 = HIBYTE(v60);
        if (v60 < 0)
        {
          v10 = v59;
        }

        if (!v10)
        {
          v36 = *(a1 + 344);
          if (v36)
          {
            v37 = std::__shared_weak_count::lock(v36);
            if (v37)
            {
              v38 = v37;
              v39 = *(a1 + 336);
              if (v39)
              {
                *buf = 10;
                LazuliProvisioningServerWrapper::submitMetricForPhase(v39, &v64, 0x1000000C8, buf, 0, 0);
              }

              sub_100004A34(v38);
            }
          }

          v40 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [%s] Awaiting OTP.", buf, 0xCu);
          }

          LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
          goto LABEL_63;
        }

        if (sub_100789704(&v58, &v61))
        {
          v11 = sub_100786E4C(a1, &v58, v64);
          v12 = *(**(a1 + 48) + 16);
          if (v11)
          {
            v13 = *v12();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "NC";
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation flow triggered", buf, 0xCu);
            }

            goto LABEL_63;
          }

          v41 = *v12();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I [%s] Failed to decode secure response body", buf, 0xCu);
          }

          v42 = *(a1 + 344);
          if (v42)
          {
            v43 = std::__shared_weak_count::lock(v42);
            if (v43)
            {
              v17 = v43;
              v44 = *(a1 + 336);
              if (v44)
              {
                *buf = 4;
                LazuliProvisioningServerWrapper::failedFatally(v44);
              }

LABEL_45:
              v25 = v17;
LABEL_46:
              sub_100004A34(v25);
              goto LABEL_63;
            }
          }

          goto LABEL_63;
        }
      }

      v26 = HIBYTE(v60);
      if (v60 < 0)
      {
        v26 = v59;
      }

      if (v26)
      {
        v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NC";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
        }

        v28 = *(a1 + 344);
        if (v28)
        {
          v29 = std::__shared_weak_count::lock(v28);
          if (v29)
          {
            v30 = v29;
            v31 = *(a1 + 336);
            if (v31)
            {
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              sub_10006F264(v52, (a1 + 392));
              sub_100787BF0(a2, &v50);
              LazuliProvisioningServerWrapper::handleXml(v31, &v58, &__dst, &v61, &v64, v52, &v50);
              if (v51 == 1 && SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (v54 == 1 && v53 < 0)
              {
                operator delete(v52[0]);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }
            }

            v25 = v30;
            goto LABEL_46;
          }
        }

        goto LABEL_63;
      }
    }

LABEL_57:
    v32 = *(a1 + 344);
    if (v32)
    {
      v33 = std::__shared_weak_count::lock(v32);
      if (v33)
      {
        v34 = v33;
        v35 = *(a1 + 336);
        if (v35)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v35, &v64, v5 | &_mh_execute_header, buf, 0, 0);
        }

        sub_100004A34(v34);
      }
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100789944;
    aBlock[3] = &unk_101E7C730;
    aBlock[4] = a1;
    v46 = v64;
    v66 = 0;
    v65[0] = off_101E4BC98;
    v65[1] = _Block_copy(aBlock);
    v66 = v65;
    LazuliProvisioningWebHelper::responseUnknown(a1, a2, v65);
    sub_100416C34(v65);
    goto LABEL_63;
  }

  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch", buf, 0xCu);
  }

  v15 = *(a1 + 344);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 336);
      if (v18)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v18, &v64, v5 | &_mh_execute_header, buf, 0, 0);
        memset(buf, 0, 32);
        sub_100416A54(v49, &v61);
        LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v49, buf);
        sub_1000DD0AC(v49, v49[1]);
        sub_100416748(__p, buf);
        LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
        if (v48 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
        if (buf[24] == 1 && *buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      goto LABEL_45;
    }
  }

LABEL_63:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v58);
  }

  sub_1000DD0AC(&v61, v62);
}

void sub_100788EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47)
{
  sub_100004A34(v47);
  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (*(v48 - 161) < 0)
  {
    operator delete(*(v48 - 184));
  }

  sub_1000DD0AC(v48 - 160, *(v48 - 152));
  _Unwind_Resume(a1);
}

void sub_100789038(uint64_t a1, uint64_t a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(**a2 + 56))(&v41);
  v4 = (*(**a2 + 24))();
  v38 = 0;
  v39 = 0;
  v40 = 0;
  (*(**a2 + 48))(&v38);
  v37 = 5;
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        v8 = HIBYTE(v40);
        if (v40 < 0)
        {
          v8 = v39;
        }

        if (v8 && v4 == 200)
        {
          if (sub_100789704(&v38, &v41))
          {
            v9 = sub_100786E4C(a1, &v38, 5);
            v10 = *(**(a1 + 48) + 16);
            if (v9)
            {
              v11 = *v10();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "NC";
                v12 = "#I [%s] Vapid flow triggered";
LABEL_44:
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, 0xCu);
              }
            }

            else
            {
              v11 = *v10();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "NC";
                v12 = "#I [%s] Failed to handle client-auth-data body";
                goto LABEL_44;
              }
            }

LABEL_16:
            sub_100004A34(v6);
            goto LABEL_17;
          }

          v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "NC";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [%s] Handling as regular refresh XML..", &buf, 0xCu);
          }

          v35[0] = 0;
          v35[1] = 0;
          v36 = 0;
          sub_10006F264(v32, (a1 + 392));
          v30.__r_.__value_.__s.__data_[0] = 0;
          v31 = 0;
          LazuliProvisioningServerWrapper::handleXml(v7, &v38, v35, &v41, &v37, v32, &v30);
          if (v31 == 1 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          if (v34 == 1 && v33 < 0)
          {
            operator delete(v32[0]);
          }

          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v22 = v35[0];
        }

        else
        {
          if (v4 != 511 && v4 != 400)
          {
            v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
            {
              sub_10177DCD0();
            }

            LODWORD(buf) = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v37, v4 | &_mh_execute_header, &buf, 0, 0);
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 0x40000000;
            aBlock[2] = sub_10078993C;
            aBlock[3] = &unk_101E7C710;
            aBlock[4] = a1;
            v45 = 0;
            v44[0] = off_101E4BC98;
            v44[1] = _Block_copy(aBlock);
            v45 = v44;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v44);
            sub_100416C34(v44);
            goto LABEL_16;
          }

          LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(*(a1 + 336));
          buf = 0u;
          v47 = 0u;
          sub_100416A54(v29, &v41);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v29, &buf);
          sub_1000DD0AC(v29, v29[1]);
          sub_100416748(__p, &buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
          if (v28 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          isFirstRetryAttempt = LazuliProvisioningServerWrapper::isFirstRetryAttempt(v7);
          LazuliProvisioningWebHelper::restartProvisioning(a1, isFirstRetryAttempt);
          LazuliProvisioningServerWrapper::resetPendingRefresh(v7);
          v26 = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v37, v4 | &_mh_execute_header, &v26, 0, 0);
          if (BYTE8(v47) != 1)
          {
            goto LABEL_16;
          }

          v22 = buf;
          if (!buf)
          {
            goto LABEL_16;
          }

          *(&buf + 1) = buf;
        }

        operator delete(v22);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10177DBE0(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  sub_1000DD0AC(&v41, v42);
}

void sub_1007895D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100004A34(v45);
  if (*(v46 - 169) < 0)
  {
    operator delete(*(v46 - 192));
  }

  sub_1000DD0AC(v46 - 168, *(v46 - 160));
  _Unwind_Resume(a1);
}

BOOL sub_100789704(void *a1, uint64_t a2)
{
  memset(&v26, 0, sizeof(v26));
  sub_10000501C(__p, "Content-Type");
  v4 = sub_10038F068(a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v4)
  {
    size = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    std::string::operator=(&v26, (v4 + 56));
    v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    size = v26.__r_.__value_.__l.__size_;
    v7 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v7;
  }

  if ((v5 & 0x80u) == 0)
  {
    size = v5;
  }

  if (size >= 39)
  {
    v9 = v8 + size;
    v10 = v8;
    do
    {
      v11 = memchr(v10, 97, size - 38);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (!memcmp(v11, "application/vnd.gsma.cfg-clientauth+xml", 0x27uLL))
      {
        if (v12 == v9 || v12 - v8 == -1)
        {
          break;
        }

        v13 = 1;
        if ((v5 & 0x80) == 0)
        {
          return v13;
        }

        goto LABEL_47;
      }

      v10 = (v12 + 1);
      size = v9 - (v12 + 1);
    }

    while (size >= 39);
  }

  v14 = *(a1 + 23);
  v15 = a1[1];
  if (v14 < 0)
  {
    a1 = *a1;
  }

  if (v14 < 0)
  {
    v14 = v15;
  }

  v16 = a1 + v14;
  if (v14 >= 27)
  {
    v17 = a1;
    do
    {
      v18 = memchr(v17, 99, v14 - 26);
      if (!v18)
      {
        break;
      }

      if (*v18 == 0x612D746E65696C63 && *(v18 + 1) == 0x6369746E65687475 && *(v18 + 2) == 0x757165722D797469 && *(v18 + 19) == 0x747365757165722DLL)
      {
        goto LABEL_40;
      }

      v17 = v18 + 1;
      v14 = v16 - v17;
    }

    while (v16 - v17 > 26);
  }

  v18 = v16;
LABEL_40:
  v13 = v18 != v16 && v18 - a1 != -1;
  if ((v5 & 0x80) != 0)
  {
LABEL_47:
    operator delete(v7);
  }

  return v13;
}

void sub_100789904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100789954(uint64_t a1, uint64_t a2)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(**a2 + 56))(&v50);
  v4 = (*(**a2 + 24))();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  (*(**a2 + 48))(&v47);
  v45 = 0uLL;
  v46 = 0;
  sub_100416A54(v44, &v50);
  LazuliProvisioningWebHelper::getCookie(v44, &v45);
  sub_1000DD0AC(v44, v44[1]);
  v43 = 1;
  if (v4 == 511)
  {
    goto LABEL_35;
  }

  if (v4 != 403)
  {
    if (v4 != 200)
    {
      goto LABEL_52;
    }

    v5 = HIBYTE(v49);
    if (v49 < 0)
    {
      v5 = v48;
    }

    if (v5)
    {
      v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "NC";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
      }

      v7 = *(a1 + 344);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(a1 + 336);
          if (v10)
          {
            v41[0] = 0;
            v41[1] = 0;
            v42 = 0;
            sub_10006F264(v38, (a1 + 392));
            __p.__r_.__value_.__s.__data_[0] = 0;
            v37 = 0;
            LazuliProvisioningServerWrapper::handleXml(v10, &v47, v41, &v50, &v43, v38, &__p);
            if (v37 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v40 == 1 && v39 < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[0]);
            }
          }

LABEL_31:
          sub_100004A34(v9);
          goto LABEL_66;
        }
      }

      goto LABEL_66;
    }

    v17 = HIBYTE(v46);
    if (v46 < 0)
    {
      v17 = *(&v45 + 1);
    }

    if (!v17)
    {
LABEL_52:
      v25 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        sub_10177DD50();
      }

      v26 = *(a1 + 344);
      if (v26)
      {
        v27 = std::__shared_weak_count::lock(v26);
        if (v27)
        {
          v28 = v27;
          v29 = *(a1 + 336);
          if (v29)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v29, &v43, v4 | &_mh_execute_header, buf, 0, 0);
          }

          sub_100004A34(v28);
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_10078A498;
      aBlock[3] = &unk_101E7C750;
      aBlock[4] = a1;
      v54 = 0;
      v53[0] = off_101E4BC98;
      v53[1] = _Block_copy(aBlock);
      v54 = v53;
      LazuliProvisioningWebHelper::responseUnknown(a1, a2, v53);
      sub_100416C34(v53);
      goto LABEL_66;
    }

LABEL_35:
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HIBYTE(v46);
      if (v46 < 0)
      {
        v19 = *(&v45 + 1);
      }

      if (v19)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      *buf = 136315394;
      *&buf[4] = "NC";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [%s] Switching to secure request [cookie: %s]", buf, 0x16u);
    }

    v21 = *(a1 + 344);
    if (v21)
    {
      v22 = std::__shared_weak_count::lock(v21);
      if (v22)
      {
        v23 = v22;
        v24 = *(a1 + 336);
        if (v24)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v24, &v43, v4 | &_mh_execute_header, buf, 0, 0);
        }

        sub_100004A34(v23);
      }
    }

    memset(buf, 0, 32);
    sub_100416A54(v35, &v50);
    LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v35, buf);
    sub_1000DD0AC(v35, v35[1]);
    sub_100416748(v33, buf);
    LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v33);
    if (v34 == 1 && v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      sub_100005F2C(__dst, v45, *(&v45 + 1));
    }

    else
    {
      *__dst = v45;
      v32 = v46;
    }

    sub_10078A190(a1, __dst);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst[0]);
    }

    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_66;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HIBYTE(v46);
    if (v46 < 0)
    {
      v12 = *(&v45 + 1);
    }

    if (v12)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 136315394;
    *&buf[4] = "NC";
    *&buf[12] = 2080;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response [cookie: %s]", buf, 0x16u);
  }

  v14 = *(a1 + 344);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v9 = v15;
      v16 = *(a1 + 336);
      if (v16)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v16, &v43, 0x100000193, buf, 0, 0);
        LazuliProvisioningServerWrapper::handleForbiddenResponse(v16);
      }

      goto LABEL_31;
    }
  }

LABEL_66:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  sub_1000DD0AC(&v50, v51);
}

void sub_10078A018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52, uint64_t a53)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (a44 == 1 && a43 < 0)
  {
    operator delete(a38);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100004A34(v53);
  if (*(v54 - 177) < 0)
  {
    operator delete(*(v54 - 200));
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  sub_1000DD0AC(v54 - 152, *(v54 - 144));
  _Unwind_Resume(a1);
}

void sub_10078A190(LazuliProvisioningWebHelper *a1, uint64_t a2)
{
  v4 = sub_100784030(a1, 0);
  v30[1] = 0;
  v31 = v4 | 0x8600;
  v29 = v30;
  v30[0] = 0;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
LABEL_3:
      sub_10000501C(__p, "Cookie");
      __str.__r_.__value_.__r.__words[0] = __p;
      v5 = sub_100416DA4(&v29, __p);
      std::string::operator=((v5 + 56), a2);
      if (SBYTE7(v14) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_3;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
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
  v15 = 0u;
  *__p = 0u;
  v14 = 0u;
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__p, CurrentConfig);
  if (HIDWORD(v26) != 1)
  {
    v31 = v4 | 0x8680;
  }

  sub_10038E4E4(__p);
LABEL_9:
  __p[0] = 0;
  __p[1] = 0;
  *&v14 = 0;
  LazuliProvisioningWebHelper::getHeaders(a1, &v31, __p);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v12 = 2;
  sub_100A9C1EC(__p, &__str);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078A8F4;
  aBlock[3] = &unk_101E7C770;
  aBlock[4] = a1;
  v33 = 0;
  v32[0] = off_101E4BC98;
  v32[1] = _Block_copy(aBlock);
  v33 = v32;
  LOBYTE(v7) = 0;
  v9 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v12, &__str, &v29, v32, &v7);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(v7);
  }

  sub_100416C34(v32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(__p, __p[1]);
  sub_1000DD0AC(&v29, v30[0]);
}

void sub_10078A4A0(uint64_t a1)
{
  sub_10078A794(a1);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315650;
    *&buf[4] = "NC";
    *&buf[12] = 2082;
    *&buf[14] = v4;
    *&buf[22] = 2082;
    v17 = sub_1004CDF60(CurrentConfig + 51);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting first access on: [%{public}s] with interface [%{public}s] ", buf, 0x20u);
  }

  if (CurrentConfig[51] == 3)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    sub_10078A190(a1, v13);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

    v5 = v13[0];
    goto LABEL_17;
  }

  memset(&__str, 0, sizeof(__str));
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  sub_100A9BE74(buf, &__str);
  sub_1000DD0AC(buf, *&buf[8]);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_100416868(buf, "User-Agent", "iPhoneOS");
  sub_1000DF684(&v9, buf, 1);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = 1;
  v15[0] = off_101E7C9D8;
  v15[1] = a1;
  v15[3] = v15;
  LOBYTE(__p) = 0;
  v8 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, buf, &__str, &v9, v15, &__p);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v15);
  sub_1000DD0AC(&v9, v10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = __str.__r_.__value_.__r.__words[0];
LABEL_17:
    operator delete(v5);
  }
}

void sub_10078A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, void *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(&a32);
  sub_1000DD0AC(&a17, a18);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_10078A794(LazuliProvisioningWebHelper *a1)
{
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v3 = CurrentConfig;
  __dst[0] = 0;
  __dst[1] = 0;
  v8 = 0;
  if (CurrentConfig[23] < 0)
  {
    sub_100005F2C(__dst, *CurrentConfig, *(CurrentConfig + 1));
  }

  else
  {
    *__dst = *CurrentConfig;
    v8 = *(CurrentConfig + 2);
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (v3[95] < 0)
  {
    sub_100005F2C(__p, *(v3 + 9), *(v3 + 10));
  }

  else
  {
    *__p = *(v3 + 72);
    v6 = *(v3 + 11);
  }

  if (!sub_10068BFF8(__dst, "302"))
  {
    if (!sub_10068BFF8(__dst, "31"))
    {
      goto LABEL_16;
    }

    if (SHIBYTE(v8) < 0)
    {
      v4 = *(__dst[0] + 3);
      if (v4 <= 47)
      {
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v4) = BYTE3(__dst[0]);
      if (SBYTE3(__dst[0]) < 48)
      {
        goto LABEL_16;
      }
    }

    if (v4 > 0x36u)
    {
      goto LABEL_16;
    }
  }

  if (!sub_10068BFF8(__p, "+1"))
  {
    sub_10078AD98(a1);
  }

LABEL_16:
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10078A8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078A900(LazuliProvisioningWebHelper *a1, int a2)
{
  v4 = sub_100784030(a1, a2);
  v5 = v4 & 0xFFFFFFFFFFFFFF3FLL;
  if (!a2)
  {
    v5 = v4;
  }

  v18 = 0;
  v19 = v5;
  v16 = 0;
  v17 = 0;
  LazuliProvisioningWebHelper::getHeaders(a1, &v19, &v16);
  sub_10000501C(&__p, "rcs_state");
  p_p = &__p;
  v6 = sub_100416DA4(&v16, &__p);
  if (*(v6 + 79) < 0)
  {
    *(v6 + 64) = 2;
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = (v6 + 56);
    *(v6 + 79) = 2;
  }

  strcpy(v7, "-4");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 6;
  sub_100A9C1EC(&v16, &__p);
  v13[0] = 0;
  v13[1] = 0;
  aBlock[4] = a1;
  p_p = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078AB80;
  aBlock[3] = &unk_101E7C790;
  v21 = 0;
  v20[0] = off_101E4BC98;
  v20[1] = _Block_copy(aBlock);
  v21 = v20;
  LOBYTE(v8) = 0;
  v10 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v14, &__p, &p_p, v20, &v8);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  sub_100416C34(v20);
  sub_1000DD0AC(&p_p, v13[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v16, v17);
}

void sub_10078AB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v31 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1000DD0AC(v31 - 88, *(v31 - 80));
  _Unwind_Resume(a1);
}

void sub_10078AB88(LazuliProvisioningWebHelper *a1)
{
  v12 = 0;
  v13 = sub_100784030(a1, 0) | 0x8000;
  v10 = 0;
  v11 = 0;
  LazuliProvisioningWebHelper::getHeaders(a1, &v13, &v10);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v9 = 5;
  sub_100A9C1EC(&v10, &__str);
  v7[0] = 0;
  v7[1] = 0;
  aBlock[4] = a1;
  v6 = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078AD90;
  aBlock[3] = &unk_101E7C7B0;
  v15 = 0;
  v14[0] = off_101E4BC98;
  v14[1] = _Block_copy(aBlock);
  v15 = v14;
  LOBYTE(__p) = 0;
  v4 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v9, &__str, &v6, v14, &__p);
  if (v4 == 1 && v3 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v14);
  sub_1000DD0AC(&v6, v7[0]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v10, v11);
}

void sub_10078AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v30 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1000DD0AC(v30 - 88, *(v30 - 80));
  _Unwind_Resume(a1);
}

void sub_10078AD98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    PersonalityIdFromSlotId();
    v3 = __p[23];
    if (__p[23] >= 0)
    {
      v4 = __p;
    }

    else
    {
      v3 = *&__p[8];
      v4 = *__p;
    }

    v5 = v3 ? v4 : "<invalid>";
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Generating MSISDN mismatch ABC report for %{public}s", &buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  LazuliProvisioningWebHelper::describe(a1);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string(__p, CurrentConfig, 0, 6uLL, &buf);
    v8 = __p[23];
    v9 = *__p;
    std::string::basic_string(&buf, CurrentConfig + 3, 0, 6uLL, v41);
    v10 = __p;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    *v53 = 136446466;
    *&v53[4] = v10;
    *&v53[12] = 2082;
    *&v53[14] = p_buf;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IMSI prefix: %{public}s, MSISDN prefix: %{public}s, ", v53, 0x16u);
    if (SBYTE7(v52) < 0)
    {
      operator delete(buf);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *__p = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, __p);
  if (!v18)
  {
    std::mutex::unlock(v13);
    goto LABEL_53;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v13);
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
    if (!v20)
    {
LABEL_52:
      sub_100004A34(v19);
      goto LABEL_53;
    }
  }

  else
  {
    std::mutex::unlock(v13);
    if (!v20)
    {
      goto LABEL_53;
    }
  }

  memset(v53, 0, sizeof(v53));
  buf = 0u;
  v52 = 0u;
  v44 = 0;
  v43 = 0;
  if ((*(*v20 + 256))(v20, *(a1 + 100), v53, &buf, &v44 + 1, &v44, &v43))
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v53[23];
      v23 = *v53;
      asString();
      v24 = v53;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if (v42 >= 0)
      {
        v25 = v41;
      }

      else
      {
        v25 = v41[0];
      }

      if (HIBYTE(v44))
      {
        v26 = "YES";
      }

      else
      {
        v26 = "NO";
      }

      *__p = 136447234;
      if (v44)
      {
        v27 = "YES";
      }

      else
      {
        v27 = "NO";
      }

      *&__p[4] = v24;
      if (v43)
      {
        v28 = "YES";
      }

      else
      {
        v28 = "NO";
      }

      *&__p[12] = 2082;
      *&__p[14] = v25;
      *&__p[22] = 2080;
      *&__p[24] = v26;
      *&__p[32] = 2080;
      *&__p[34] = v27;
      *&__p[42] = 2080;
      *&__p[44] = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Label: %{public}s, PhoneNumber: %{public}s, exists: %s, editable: %s, read: %s", __p, 0x34u);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(buf);
  }

  if (v53[23] < 0)
  {
    operator delete(*v53);
  }

  if (v19)
  {
    goto LABEL_52;
  }

LABEL_53:
  memset(&__p[8], 0, 32);
  *&__p[40] = 0x600000000000000;
  *&__p[56] = 0u;
  v50 = 0u;
  v49 = 0u;
  memset(&v47, 0, sizeof(v47));
  v48 = 23;
  qmemcpy(&__p[23], "\tLazuli", 7);
  qmemcpy(__p, "Telephony", 9);
  __p[71] = 20;
  qmemcpy(&__p[48], "LazuliMsisdnMismatch", 20);
  sub_1000167D4(&v47, "Trusted phone number does not match IMSI", 0x28uLL);
  v48 |= 0x11uLL;
  sub_100004AA0(&buf, (a1 + 8));
  v29 = *(&buf + 1);
  if (*(&buf + 1))
  {
    atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v29);
  }

  v30 = Registry::getServiceMap(*(a1 + 104));
  v31 = v30;
  if (v32 < 0)
  {
    v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
    v34 = 5381;
    do
    {
      v32 = v34;
      v35 = *v33++;
      v34 = (33 * v34) ^ v35;
    }

    while (v35);
  }

  std::mutex::lock(v30);
  *&buf = v32;
  v36 = sub_100009510(&v31[1].__m_.__sig, &buf);
  if (!v36)
  {
    v38 = 0;
LABEL_63:
    std::mutex::unlock(v31);
    v37 = 0;
    v39 = 1;
    if (!v38)
    {
      goto LABEL_67;
    }

LABEL_64:
    sub_100D9EC48(&__dst, __p);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = 0;
    operator new();
  }

  v38 = v36[3];
  v37 = v36[4];
  if (!v37)
  {
    goto LABEL_63;
  }

  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v31);
  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v37);
  v39 = 0;
  if (v38)
  {
    goto LABEL_64;
  }

LABEL_67:
  if ((v39 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SBYTE7(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if ((__p[71] & 0x80000000) != 0)
  {
    operator delete(*&__p[48]);
  }

  if ((__p[47] & 0x80000000) != 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_10078B474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  if (v40)
  {
    sub_100004A34(v40);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10078B54C(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[48] = 0;
  if (*(a2 + 48) == 1)
  {
    sub_100041088(__dst, a2);
    __dst[48] = 1;
  }

  return __dst;
}

void sub_10078B594(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_1000D6F38(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078B5B4(uint64_t a1)
{
  if (*(a1 + 80) == 1)
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
  }

  return a1;
}

void sub_10078B614(uint64_t a1)
{
  if (*(a1 + 80) == 1)
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

    *(a1 + 80) = 0;
  }
}

uint64_t sub_10078B678(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10078B6F0(uint64_t a1)
{
  *a1 = off_101E7C7F8;
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10078B784(uint64_t a1)
{
  *a1 = off_101E7C7F8;
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10078B8CC(_Unwind_Exception *a1)
{
  sub_10038E598((v1 + 5));
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10078B8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E7C7F8;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  sub_10078B54C((a2 + 40), a1 + 40);
  return sub_10006F264(a2 + 96, (a1 + 96));
}

void sub_10078B974(_Unwind_Exception *a1)
{
  sub_10038E598(v1 + 40);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10078B99C(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10078BA28(void **__p)
{
  if (*(__p + 120) == 1 && *(__p + 119) < 0)
  {
    operator delete(__p[12]);
  }

  if (*(__p + 88) == 1)
  {
    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10078BAB0(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v8 = v6;
      if (a1[1])
      {
        sub_100787D30(v5, (a1 + 5), v7, a1 + 4, a2);
        v9 = *(v5 + 792);
        *(v5 + 784) = 0u;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10078BB5C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7C858))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10078BBA8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10078BCC4(a1 + 16, (a2 + 1));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 15);
  sub_10016E48C(a1 + 128, a2 + 16);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v8;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v9 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v9;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  sub_100015184(a1 + 200, (a2 + 200));
  sub_100015184(a1 + 224, a2 + 14);
  return a1;
}

__n128 sub_10078BCC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {

      sub_10015F6CC(a1, a2);
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_10078BD7C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    *(a1 + 208) = v3;
    operator delete(v3);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  sub_1000DD0AC(a1 + 128, *(a1 + 136));
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_10078BE44(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      *a1 = *a2;
      if (a1 == a2)
      {
        v8 = (a1 + 32);
        v9 = (a2 + 4);

        std::string::operator=(v8, v9);
      }

      else
      {
        sub_1001122C4((a1 + 8), a2[1], a2[2], a2[2] - a2[1]);
        std::string::operator=((a1 + 32), (a2 + 4));
        v4 = a2[7];
        v5 = a2[8];

        sub_1001122C4((a1 + 56), v4, v5, v5 - v4);
      }
    }
  }

  else if (*(a1 + 80))
  {

    sub_10078B614(a1);
  }

  else
  {
    v6 = *a2;
    *(a1 + 8) = 0;
    *a1 = v6;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_100034C50(a1 + 8, a2[1], a2[2], a2[2] - a2[1]);
    if (*(a2 + 55) < 0)
    {
      sub_100005F2C((a1 + 32), a2[4], a2[5]);
    }

    else
    {
      v7 = *(a2 + 2);
      *(a1 + 48) = a2[6];
      *(a1 + 32) = v7;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    sub_100034C50(a1 + 56, a2[7], a2[8], a2[8] - a2[7]);
    *(a1 + 80) = 1;
  }
}

void sub_10078BF98(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10078BFCC(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100034C50(a1, *a2, a2[1], a2[1] - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_100034C50((a1 + 3), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_10078C024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078C0C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E7C878;
  LazuliProvisioningWebHelper::LazuliProvisioningWebHelper(a1 + 24, a2);
  *(a1 + 24) = &off_101E7C638;
  *(a1 + 464) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0u;
  return a1;
}

void sub_10078C178(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7C878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10078C1F4(void *a1)
{
  *a1 = off_101E7C8C8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10078C250(void *a1)
{
  *a1 = off_101E7C8C8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10078C360(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10078C380(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7C8C8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 40) = 0;
  *(a2 + 24) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return sub_100034C50(a2 + 40, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
}

void sub_10078C3F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078C418(void *a1)
{
  sub_10078C5C8(a1 + 1);

  operator delete(a1);
}

void sub_10078C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v7[0]) = 0;
  v11 = 0;
  if (*(a2 + 48) == 1)
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    v3 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v9 = v3;
    v10 = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v11 = 1;
  }

  LOBYTE(__p[0]) = 0;
  v6 = 0;
  if (*(a3 + 24) == 1)
  {
    *__p = *a3;
    v5 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v6 = 1;
  }

  sub_1007858C0(a1 + 8, v7, __p);
  if (v6 == 1 && SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_10078C54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_10038E598(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10078C57C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10078C5C8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_10078C61C(void *a1)
{
  *a1 = off_101E7C958;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10078C668(void *a1)
{
  *a1 = off_101E7C958;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_10078C748(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7C958;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void sub_10078C788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10078C798(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10078C7D8(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        v8 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 100));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = "NC";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] Push token received", &v9, 0xCu);
        }

        sub_10078608C(v5, a1 + 4, a2);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10078C90C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10078C9C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7C9D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10078C9FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_10078CA48(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_10078CBDC(v5, &v16, (v15 + 4));
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173490(&v13);
  }

  if (a2 != a3)
  {
    sub_10078CC68();
  }

  return result;
}

void *sub_10078CBDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[4];
        v7 = v4 + 4;
        v8 = v9;
        v10 = (*(v7 + 23) >= 0 ? v7 : v8);
        if ((strcasecmp(v6, v10) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_14:
  *a2 = v5;
  return result;
}

void sub_10078CC68()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1000DF994();
}

void sub_10078CCDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000DFA0C(va);
  _Unwind_Resume(a1);
}

void *sub_10078CCF0(void *a1)
{
  *a1 = off_101E7CA58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10078CD3C(void *a1)
{
  *a1 = off_101E7CA58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10078CE1C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E7CA58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10078CE5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10078CE6C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10078CEAC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = a1[3];
  if (v7)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = v9;
      if (a1[2])
      {
        v11 = *(v8 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = "failed";
          if (v4)
          {
            v12 = "success";
          }

          v13 = 136315138;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I ABC report %s for Lazuli MSISDN mismatch", &v13, 0xCu);
        }
      }

      sub_100004A34(v10);
    }
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_10078CFB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFUserNotificationRef sub_10078D004(unsigned int a1, void *a2, void *a3, void *a4, int a5, int a6, void *a7, void *a8)
{
  v20 = 0;
  valuePtr = a5;
  v14 = a1;
  v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  keys[0] = kCFUserNotificationAlertHeaderKey;
  keys[1] = kCFUserNotificationAlertMessageKey;
  keys[2] = kCFUserNotificationDefaultButtonTitleKey;
  keys[3] = kCFUserNotificationAlternateButtonTitleKey;
  keys[4] = kCFUserNotificationTextFieldTitlesKey;
  keys[5] = kCFUserNotificationKeyboardTypesKey;
  values[0] = a2;
  values[1] = a3;
  values[2] = a7;
  values[3] = a8;
  values[4] = a4;
  values[5] = v15;
  v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a6)
  {
    v17 = 65539;
  }

  else
  {
    v17 = 3;
  }

  v18 = CFUserNotificationCreate(kCFAllocatorDefault, v14, v17, &v20, v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v18;
}

uint64_t sub_10078D184(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v11 = 0u;
  v12 = 0u;
  v13 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v4 = v11;
  v5 = v9;
  if (a2)
  {
    v4 = &v11[1];
    v5 = v9 + 1;
    v11[0] = kCFUserNotificationAlertHeaderKey;
    *&v9[0] = a2;
    v6 = 1;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    *v4 = kCFUserNotificationAlertMessageKey;
    ++v6;
    *v5 = a3;
  }

LABEL_4:
  if (a4)
  {
    v11[v6] = kCFUserNotificationDefaultButtonTitleKey;
    *(v9 + v6++) = a4;
  }

  v11[v6] = SBUserNotificationAllowInStarkKey;
  *(v9 + v6) = kCFBooleanTrue;
  v7 = 8 * v6 + 8;
  *(v11 + v7) = kCFUserNotificationAlertTopMostKey;
  *(v9 + v7) = kCFBooleanTrue;
  return _CreateSimpleUserNotificationHelper(a1, v6 + 2, v11, v9);
}

void sub_10078D2AC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10078D3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078D43C(uint64_t a1)
{
  v2 = *(a1 + 104);
  v6[0] = off_101E7CCE8;
  v6[1] = a1;
  v6[3] = v6;
  (*(*v2 + 112))(v2, v6);
  sub_10044F318(v6);
  v3 = *(a1 + 104);
  v5[0] = off_101E7CD78;
  v5[1] = a1;
  v5[3] = v5;
  (*(*v3 + 128))(v3, v5);
  return sub_10044F398(v5);
}

void sub_10078D540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10044F398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10078D564(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8)
{
  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "cp.upload.t");
  sub_10078D720((a1 + 8), a2, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101E7CAD8;
  *(a1 + 48) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = a7[1];
  *(a1 + 64) = *a7;
  *(a1 + 72) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  v17 = a5[1];
  *(a1 + 80) = *a5;
  *(a1 + 88) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *a4;
  v18 = a4[1];
  *(a1 + 96) = 0;
  *(a1 + 104) = v19;
  *(a1 + 112) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a6[1];
  *(a1 + 120) = *a6;
  *(a1 + 128) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  v21 = a8[1];
  *(a1 + 344) = *a8;
  *(a1 + 352) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 376) = 0uLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 472) = 0uLL;
  *(a1 + 392) = 0uLL;
  *(a1 + 408) = 0uLL;
  *(a1 + 424) = 0uLL;
  *(a1 + 440) = 0uLL;
  *(a1 + 456) = 0;
  *(a1 + 464) = a1 + 472;
  *(a1 + 512) = 0uLL;
  *(a1 + 488) = 0;
  *(a1 + 491) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = a1 + 512;
  return a1;
}

void *sub_10078D720(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10078D788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10078D7AC(uint64_t a1)
{
  *a1 = off_101E7CAD8;
  sub_100009970(a1 + 504, *(a1 + 512));
  sub_100246FAC(a1 + 464, *(a1 + 472));
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  sub_100077CD4(a1 + 368, *(a1 + 376));
  v2 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v11 = (a1 + 312);
  sub_10027E114(&v11);
  v11 = (a1 + 288);
  sub_10027B2AC(&v11);
  v11 = (a1 + 264);
  sub_10027E114(&v11);
  v11 = (a1 + 240);
  sub_10044F294(&v11);
  if (*(a1 + 232) == 1)
  {
    sub_1001704B0(a1 + 208, *(a1 + 216));
  }

  sub_10013DF64(a1 + 184, *(a1 + 192));
  v11 = (a1 + 160);
  sub_100112048(&v11);
  v11 = (a1 + 136);
  sub_1000B2AF8(&v11);
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
  *(a1 + 96) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    sub_100004A34(v9);
  }

  CellularPlanUploadTriggersModelInterface::~CellularPlanUploadTriggersModelInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10078D990(uint64_t a1)
{
  sub_10078D7AC(a1);

  operator delete();
}

capabilities::ct *sub_10078D9C8(capabilities::ct *result, int a2)
{
  if (*(result + 492) != a2)
  {
    v2 = result;
    *(result + 492) = a2;
    *(result + 493) = a2;
    if (a2)
    {
      *(result + 125) |= 1u;
      sub_10078DA48(result);
      *(v2 + 124) |= 1u;
      sub_10078DB1C(v2);

      return sub_10078DBF8(v2);
    }
  }

  return result;
}

void sub_10078DA48(uint64_t a1)
{
  if (sub_100793A5C(a1))
  {
    v2 = *(a1 + 360);
    if (v2 && ((*(*v2 + 24))(v2) & 1) == 0)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I In blacklist hysteresis, reset timer", v5, 2u);
      }

      v4 = *(a1 + 360);
      *(a1 + 360) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    sub_100793B10(a1);
  }
}

void sub_10078DB1C(uint64_t a1)
{
  sub_100791B10(a1);
  if (sub_1007919AC(a1))
  {
    v2 = *(a1 + 96);
    if (v2 && ((*(*v2 + 24))(v2) & 1) == 0)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I In hysteresis, reset timer", v5, 2u);
      }

      v4 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    sub_100791CDC(a1);
  }
}

capabilities::ct *sub_10078DBF8(capabilities::ct *result)
{
  if ((*(result + 494) & 1) == 0)
  {
    result = capabilities::ct::supportsCellularPlanInfoInCloud(result);
    if (result)
    {
      v2 = 0;
      v3 = 0;
      v1 = "CellularPlanUploadTriggersModel";
      sub_1001048A4();
    }
  }

  return result;
}

void sub_10078DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000FF50(va);
  if (a7)
  {
    sub_100004A34(a7);
  }

  _Unwind_Resume(a1);
}

void sub_10078DDE8(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 136);
  if (v3 != a2)
  {
    sub_100169790(v3, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }

  *(a1 + 496) |= 0x100u;
  sub_10078DA48(a1);

  sub_10078DB1C(a1);
}

void sub_10078DE64(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v4 = a1 + 160;
  if (v4 != a2)
  {
    sub_100169D44(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  v6 = *(a1 + 160);
  v5 = *(a1 + 168);
  if (v6 != v5)
  {
    while (*(v6 + 4) != 2)
    {
      v6 += 88;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 != v5)
  {
    sub_100922314((v6 + 16), a3, &v8);
    v7 = (a1 + 440);
    if (*(a1 + 463) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v8;
    *(a1 + 456) = v9;
  }

LABEL_11:
  *(a1 + 496) |= 0x200u;
  sub_10078DB1C(a1);
}

void sub_10078DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 184);
  if (a1 + 184 != a2)
  {
    sub_100171EF0((a1 + 184), *a2, (a2 + 8));
  }

  if (a1 + 464 != a3)
  {
    sub_100798364((a1 + 464), *a3, (a3 + 8));
  }

  *(a1 + 496) |= 0x400u;
  sub_10078DA48(a1);
  sub_10078DB1C(a1);

  sub_10078DFC8(a1, v5);
}

void sub_10078DFC8(void *a1, void *a2)
{
  v3 = a1[16];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1[15];
  if (!v7)
  {
    goto LABEL_26;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  (*(*v7 + 224))(&v18, v7);
  if (!v20)
  {
    goto LABEL_25;
  }

  v10 = *a2;
  v8 = (a2 + 1);
  v9 = v10;
  if (v10 == v8)
  {
    goto LABEL_25;
  }

  do
  {
    if (!sub_10016FA58(&v18, v9 + 4))
    {
      goto LABEL_19;
    }

    v11 = v9[15];
    if (!v11)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v12 = *(v11 + 7);
      if (v12 <= 13)
      {
        break;
      }

LABEL_11:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (v12 != 13)
    {
      ++v11;
      goto LABEL_11;
    }

    *buf = 13;
    if (*sub_1000A8C4C((v9 + 14), buf) == 2)
    {
      v13 = a1[5];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v9 + 4;
        if (*(v9 + 55) < 0)
        {
          v14 = v9[4];
        }

        *buf = 136315138;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I mark plan [%s] as non expired", buf, 0xCu);
      }

      (*(*v7 + 216))(v7, v9 + 4);
    }

LABEL_19:
    v15 = v9[1];
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
        v16 = v9[2];
        v17 = *v16 == v9;
        v9 = v16;
      }

      while (!v17);
    }

    v9 = v16;
  }

  while (v16 != v8);
LABEL_25:
  sub_100009970(&v18, v19);
LABEL_26:
  sub_100004A34(v6);
}

void sub_10078E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  sub_100009970(&a12, a13);
  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

void sub_10078E20C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sim label not loaded, abort uploading.", buf, 2u);
    }

    if (*(a1 + 232) == 1)
    {
      sub_1001704B0(a1 + 208, *(a1 + 216));
      *(a1 + 232) = 0;
    }

    return;
  }

  v5 = *(a1 + 232);
  v6 = v5 != v3 || v5 == 0;
  if (v6)
  {
    if (v5 == v3)
    {
      goto LABEL_41;
    }
  }

  else if (*(a1 + 224) == *(a2 + 16))
  {
    v8 = *(a1 + 208);
    v9 = a1 + 216;
    if (v8 != (a1 + 216))
    {
      v10 = *a2;
      while (1)
      {
        v11 = *(v8 + 55);
        if (v11 >= 0)
        {
          v12 = *(v8 + 55);
        }

        else
        {
          v12 = v8[5];
        }

        v13 = *(v10 + 55);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = v10[5];
        }

        if (v12 != v13)
        {
          break;
        }

        v15 = v11 >= 0 ? v8 + 4 : v8[4];
        v16 = v14 >= 0 ? v10 + 4 : v10[4];
        if (memcmp(v15, v16, v12) || !SimLabel::operator==())
        {
          break;
        }

        v17 = v8[1];
        v18 = v8;
        if (v17)
        {
          do
          {
            v8 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v8 = v18[2];
            v6 = *v8 == v18;
            v18 = v8;
          }

          while (!v6);
        }

        v19 = v10[1];
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
            v20 = v10[2];
            v6 = *v20 == v10;
            v10 = v20;
          }

          while (!v6);
        }

        v10 = v20;
        if (v8 == v9)
        {
          goto LABEL_41;
        }
      }

      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_41:
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I No sim label change, abort uploading.", buf, 2u);
    }

    return;
  }

LABEL_44:
  if ((*(a1 + 232) & 1) == 0)
  {
    v49 = *(a1 + 40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Loaded assignedSimLabels first time.", buf, 2u);
    }

    sub_100796040(a1 + 208, a2);
    return;
  }

LABEL_45:
  v22 = *a2;
  if (*a2 == a2 + 8)
  {
    goto LABEL_118;
  }

  while (!(*(**(a1 + 48) + 40))(*(a1 + 48)))
  {
    v23 = v22 + 4;
    v24 = *(a1 + 136);
    v25 = *(a1 + 144);
    if (*(v22 + 55) < 0)
    {
      sub_100005F2C(__p, v22[4], v22[5]);
    }

    else
    {
      *__p = *v23;
      v54 = v22[6];
    }

    v26 = HIBYTE(v54);
    if (v24 == v25)
    {
LABEL_66:
      v32 = 0;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v54 >= 0)
      {
        v27 = HIBYTE(v54);
      }

      else
      {
        v27 = __p[1];
      }

      if (v54 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      while (1)
      {
        if (*(v24 + 64) == 1)
        {
          v29 = *(v24 + 95);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v24 + 80);
          }

          if (v27 == v29)
          {
            v31 = v30 >= 0 ? (v24 + 72) : *(v24 + 72);
            if (!memcmp(v28, v31, v27))
            {
              break;
            }
          }
        }

        v24 += 168;
        if (v24 == v25)
        {
          goto LABEL_66;
        }
      }

      v32 = 1;
      if ((v26 & 0x80) == 0)
      {
LABEL_67:
        if (!v32)
        {
          goto LABEL_74;
        }

        goto LABEL_68;
      }
    }

    operator delete(__p[0]);
    if (!v32)
    {
LABEL_74:
      if (sub_10078E8FC(a1, v22 + 4))
      {
        v36 = *(a1 + 40);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v22 + 55) < 0)
          {
            v23 = *v23;
          }

          *buf = 136315138;
          v56 = v23;
          v34 = v36;
          v35 = "#I ignore DisablePhoneNumberCheckforBlacklist set iccid: %s";
          goto LABEL_79;
        }
      }

      else if (a1 + 216 == sub_100007A6C(a1 + 208, v22 + 4))
      {
        v40 = *(v22 + 159);
        if ((v40 & 0x8000000000000000) == 0)
        {
          if (!*(v22 + 159))
          {
            goto LABEL_106;
          }

LABEL_91:
          v41 = *(a1 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v22 + 4;
            if (*(v22 + 55) < 0)
            {
              v42 = *v23;
            }

            v43 = v22 + 17;
            if ((v40 & 0x80000000) != 0)
            {
              v43 = v22[17];
            }

            *buf = 136315394;
            v56 = v42;
            v57 = 2080;
            v58 = v43;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Found new entry iccid: [%s] phone number: [%s]", buf, 0x16u);
          }

          goto LABEL_105;
        }

        if (v22[18])
        {
          goto LABEL_91;
        }
      }

      else
      {
        v37 = sub_1000E20F0(a1 + 208, v22 + 4);
        v38 = *(v37 + 103);
        if ((v38 & 0x80u) != 0)
        {
          v38 = *(v37 + 88);
        }

        if (v38)
        {
          goto LABEL_106;
        }

        v39 = *(v22 + 159);
        if ((v39 & 0x8000000000000000) == 0)
        {
          if (!*(v22 + 159))
          {
            goto LABEL_106;
          }

LABEL_99:
          v44 = *(a1 + 40);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v22 + 4;
            if (*(v22 + 55) < 0)
            {
              v45 = *v23;
            }

            v46 = v22 + 17;
            if ((v39 & 0x80000000) != 0)
            {
              v46 = v22[17];
            }

            *buf = 136315394;
            v56 = v45;
            v57 = 2080;
            v58 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Found new number iccid: [%s] phone number: [%s]", buf, 0x16u);
          }

LABEL_105:
          *buf = 1;
          sub_10078E9F4(a1, v22 + 2, (v22 + 17), buf);
          goto LABEL_106;
        }

        if (v22[18])
        {
          goto LABEL_99;
        }
      }

      goto LABEL_106;
    }

LABEL_68:
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v22 + 55) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315138;
      v56 = v23;
      v34 = v33;
      v35 = "#I ignore physical sim. iccid: %s";
LABEL_79:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
    }

LABEL_106:
    v47 = v22[1];
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
        v48 = v22[2];
        v6 = *v48 == v22;
        v22 = v48;
      }

      while (!v6);
    }

    v22 = v48;
    if (v48 == (a2 + 8))
    {
      goto LABEL_118;
    }
  }

  v50 = *(a1 + 40);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I skip phone number based blocklist for iPad", buf, 2u);
  }

LABEL_118:
  sub_100796040(a1 + 208, a2);
  v51 = *(a1 + 240);
  v52 = *(a1 + 248);
  if (v52 != v51)
  {
    do
    {
      sub_10064AF7C(v51, (a1 + 40));
      v51 += 29;
    }

    while (v51 != v52);
    (*(**(a1 + 104) + 104))(*(a1 + 104), a1 + 240);
    *(a1 + 500) |= 0x80u;
    sub_10078DA48(a1);
  }

  *(a1 + 496) |= 8u;
  sub_10078DB1C(a1);
}

uint64_t sub_10078E8FC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  if (v2 != v3)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    do
    {
      if (*(v2 + 80) == 1)
      {
        v8 = *(v2 + 56);
        v9 = *(v2 + 64);
        while (v8 != v9)
        {
          v10 = *(v8 + 39);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(v8 + 24);
          }

          if (v10 == v6)
          {
            v12 = v11 >= 0 ? (v8 + 16) : *(v8 + 16);
            if (!memcmp(v12, v7, v6))
            {

              return sub_100790B5C(a1, v8);
            }
          }

          v8 += 216;
        }
      }

      v2 += 88;
    }

    while (v2 != v3);
  }

  return 0;
}

std::string *sub_10078E9F4(uint64_t a1, __int128 *a2, std::string *__str, _DWORD *a4)
{
  v10 = *(a1 + 240);
  v9 = *(a1 + 248);
  v8 = (a1 + 240);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v29 = *(a2 + 2);
  }

  v11 = HIBYTE(v29);
  if (v10 == v9)
  {
    v9 = v10;
LABEL_22:
    if (v11 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v29 >= 0)
    {
      v12 = HIBYTE(v29);
    }

    else
    {
      v12 = *(&__dst + 1);
    }

    if (v29 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v14 = v10 + 5;
    while (1)
    {
      size = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v16 = size;
      if ((size & 0x80u) != 0)
      {
        size = v14->__r_.__value_.__l.__size_;
      }

      if (size == v12)
      {
        v17 = v16 >= 0 ? v14 : v14->__r_.__value_.__r.__words[0];
        if (!memcmp(v17, p_dst, v12))
        {
          break;
        }
      }

      v18 = (v14 + 112);
      v14 = (v14 + 232);
      if (v18 == v9)
      {
        goto LABEL_22;
      }
    }

    v9 = v14 - 5;
    if (v11 < 0)
    {
LABEL_23:
      operator delete(__dst);
    }
  }

  if (v9 != *(a1 + 248))
  {
    return std::string::operator=(v9 + 7, __str);
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v22[7] + 8, *a2, *(a2 + 1));
  }

  else
  {
    *(&v22[7] + 8) = *a2;
    *(&v22[8] + 1) = *(a2 + 2);
  }

  v23 = 0uLL;
  *&v24[0] = 0;
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v24 + 8, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *(v24 + 8) = *&__str->__r_.__value_.__l.__data_;
    *(&v24[1] + 1) = *(&__str->__r_.__value_.__l + 2);
  }

  LODWORD(v25) = *a4;
  BYTE4(v25) = 0;
  *(&v25 + 1) = CFAbsoluteTimeGetCurrent();
  v27 = 0;
  v26 = 0uLL;
  v20 = *(a1 + 248);
  if (v20 >= *(a1 + 256))
  {
    v21 = sub_100452A54(v8, v22);
  }

  else
  {
    sub_10044EF84(*(a1 + 248), v22);
    v21 = v20 + 232;
    *(a1 + 248) = v20 + 232;
  }

  *(a1 + 248) = v21;
  return sub_10044F1E0(v22);
}

void sub_10078EC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078ECB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2[1] != *a2)
  {
    v6 = *(a1 + 240);
    v29 = (a1 + 240);
    v7 = *(a1 + 248);
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = *a2;
        v10 = a2[1];
        v11 = (v6 + 120);
        if (*a2 != v10)
        {
          v12 = *(v6 + 143);
          if (v12 >= 0)
          {
            v13 = *(v6 + 143);
          }

          else
          {
            v13 = *(v6 + 128);
          }

          v14 = v9 + 48;
          while (1)
          {
            v15 = *(v14 + 23);
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v14 + 8);
            }

            if (v15 == v13)
            {
              v17 = v16 >= 0 ? v14 : *v14;
              v18 = (v12 >= 0 ? v6 + 120 : *v11);
              if (!memcmp(v17, v18, v13))
              {
                break;
              }
            }

            v19 = v14 + 24;
            v14 += 72;
            if (v19 == v10)
            {
              goto LABEL_33;
            }
          }

          v9 = v14 - 48;
        }

        if (v9 == v10)
        {
LABEL_33:
          v6 += 232;
        }

        else
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v6 + 143) < 0)
            {
              v11 = *v11;
            }

            v21 = (v6 + 168);
            if (*(v6 + 191) < 0)
            {
              v21 = *v21;
            }

            *buf = 136315394;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Ignore deleted blacklist candidate iccid: [%s] phone number: [%s]", buf, 0x16u);
            v7 = *(a1 + 248);
          }

          if ((v6 + 232) == v7)
          {
            v25 = v7;
            v7 = v6;
          }

          else
          {
            v22 = v6;
            do
            {
              v23 = v22 + 232;
              sub_100796250(v22, (v22 + 232));
              v24 = v22 + 464;
              v22 += 232;
            }

            while (v24 != v7);
            v25 = *(a1 + 248);
            v7 = v23;
          }

          while (v25 != v7)
          {
            v25 = sub_10044F1E0(v25 - 232);
          }

          *(a1 + 248) = v7;
          v8 = 1;
        }
      }

      while (v6 != v7);
      if (v8)
      {
        for (i = *v29; i != v7; i += 29)
        {
          sub_10064AF7C(i, (a1 + 40));
        }

        (*(**(a1 + 104) + 104))(*(a1 + 104), v29);
      }
    }

    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1002831D0(&buf[24], *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
    sub_1001048A4();
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I No deleted blacklist record", buf, 2u);
  }

  return sub_10000FFD0(a3, 0);
}

void sub_10078F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_100297224(&a33);
  sub_10078F26C(&a26);
  sub_1002832A8(&a13);
  if (a24)
  {
    sub_100004A34(a24);
  }

  sub_1002832A8((v33 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_10078F26C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 8);
  return a1;
}

void sub_10078F2A4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 336);
  v5 = *a2;
  if (v4 == v5)
  {
    v5 = *(a1 + 336);
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = asString();
      v10 = 2080;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I internetStatus changed from: %s to: %s ", &v8, 0x16u);
      v4 = *(a1 + 336);
      v5 = *a2;
    }
  }

  if (v4 != 1 && v5 == 1)
  {
    *(a1 + 336) = 1;
    *(a1 + 500) |= 0x800u;
    sub_10078DA48(a1);
    *(a1 + 496) |= 0x800u;
    sub_10078DB1C(a1);
    sub_10078DBF8(a1);
    LOBYTE(v5) = *a2;
  }

  *(a1 + 336) = v5;
}

void sub_10078F3E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 352);
  *(a1 + 344) = v4;
  *(a1 + 352) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  *(a1 + 496) |= 2u;

  sub_10078DB1C(a1);
}

uint64_t **sub_10078F444(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 368);
  if (result != a2)
  {
    return sub_1002856BC(result, *a2, a2 + 1);
  }

  return result;
}

void sub_10078F468(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 416), a2);
  *(a1 + 496) |= 4u;

  sub_10078DB1C(a1);
}

void sub_10078F4B0(uint64_t a1, int a2)
{
  *(a1 + 490) = a2;
  if (a2)
  {
    v3 = *(a1 + 104);
    v4[0] = off_101E7CE88;
    v4[3] = v4;
    (*(*v3 + 96))(v3, v4);
    sub_10044F418(v4);
    *(a1 + 496) |= 0x20u;
    sub_10078DB1C(a1);
  }
}

void sub_10078F5A4(uint64_t a1, char a2, char a3)
{
  *(a1 + 488) = a2;
  *(a1 + 489) = a3;
  if ((a2 & 1) == 0)
  {
    *(a1 + 496) |= 0x40u;
    sub_10078DB1C(a1);
  }
}

uint64_t sub_10078F5C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v7 = *(result + 136);
  v8 = *(result + 144);
  if (v7 == v8)
  {
    goto LABEL_61;
  }

  v9 = a3 + 8;
  do
  {
    result = subscriber::isEsimCapable();
    if (result)
    {
      goto LABEL_53;
    }

    memset(v77, 0, sizeof(v77));
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(__str, 0, sizeof(__str));
    v10 = *(v6 + 72);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = v9;
        v14 = *(v6 + 64);
        if (!v14)
        {
LABEL_25:
          sub_100004A34(v12);
          v9 = v13;
          goto LABEL_26;
        }

        (*(*v14 + 40))(__p);
        v15 = *(v7 + 95);
        if (v15 >= 0)
        {
          v16 = *(v7 + 95);
        }

        else
        {
          v16 = *(v7 + 80);
        }

        v17 = BYTE7(v60);
        v18 = SBYTE7(v60);
        if (SBYTE7(v60) < 0)
        {
          v17 = __p[1];
        }

        if (v16 == v17)
        {
          if (v15 >= 0)
          {
            v19 = (v7 + 72);
          }

          else
          {
            v19 = *(v7 + 72);
          }

          if ((SBYTE7(v60) & 0x80u) == 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          v21 = memcmp(v19, v20, v16) == 0;
          if ((v18 & 0x80000000) == 0)
          {
LABEL_23:
            v5 = a2;
            if (v21)
            {
              BYTE1(v75) = 1;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v21 = 0;
          if ((SBYTE7(v60) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(__p[0]);
        goto LABEL_23;
      }
    }

LABEL_26:
    WORD4(v77[1]) = sub_100933BFC((v6 + 40), v5, v7 + 72);
    v60 = 0u;
    v61 = 0u;
    *__p = 0u;
    sub_100A34BC8(__p);
    v22 = sub_100007A6C(v4, (v7 + 72));
    v23 = v22;
    if (v9 == v22)
    {
      goto LABEL_42;
    }

    v24 = *(v22 + 64);
    if (!v24)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v25 = *(v24 + 7);
      if (v25 <= 16)
      {
        break;
      }

LABEL_31:
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_37;
      }
    }

    if (v25 != 16)
    {
      ++v24;
      goto LABEL_31;
    }

    v78[0] = 16;
    if (*sub_1000A8C4C(v22 + 56, v78) == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    LOBYTE(v75) = v26;
LABEL_37:
    v27 = *(v23 + 64);
    if (!v27)
    {
LABEL_42:
      if (sub_10078FF58(v6, __p, &v60 + 8, v7 + 120, v7 + 144, (v7 + 72)))
      {
        *&__str[24] = 259;
      }

      if (((*(**(v6 + 48) + 248))(*(v6 + 48), __p, &v60 + 8, v7 + 120, v7 + 144, v7 + 72) & 1) == 0)
      {
        *&__str[24] = 262;
      }

      if (((*(**(v6 + 48) + 280))(*(v6 + 48), __p, &v60 + 8, v7 + 120, v7 + 144, v7 + 72) & 1) == 0)
      {
        *&__str[24] = 262;
      }

      goto LABEL_48;
    }

    while (2)
    {
      v28 = *(v27 + 7);
      if (v28 > 13)
      {
        goto LABEL_41;
      }

      if (v28 != 13)
      {
        ++v27;
LABEL_41:
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_42;
        }

        continue;
      }

      break;
    }

    v78[0] = 13;
    if (*sub_1000A8C4C(v23 + 56, v78) == 2)
    {
      if (sub_10078FF58(v6, __p, &v60 + 8, v7 + 120, v7 + 144, (v7 + 72)))
      {
        v30 = 259;
        goto LABEL_59;
      }
    }

    else
    {
      v30 = 272;
LABEL_59:
      *&__str[24] = v30;
    }

LABEL_48:
    *v78 = v7 + 72;
    v29 = sub_100798B68(a4, (v7 + 72));
    std::string::operator=((v29 + 56), __str);
    *(v29 + 80) = *&__str[24];
    sub_10012BF3C((v29 + 88), &v63);
    sub_10012BF3C((v29 + 120), &v65);
    sub_10012BF3C((v29 + 152), &v67);
    sub_10012BF3C((v29 + 184), &v69);
    sub_10012BF3C((v29 + 216), &v71);
    *(v29 + 248) = v73;
    std::string::operator=((v29 + 256), (&v73 + 8));
    *(v29 + 280) = v75;
    *(v29 + 282) = BYTE2(v75);
    sub_10012BF3C((v29 + 288), (&v75 + 8));
    *(v29 + 320) = *(v77 + 8);
    *(v29 + 336) = WORD4(v77[1]);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(*(&v60 + 1));
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    result = sub_100111F5C(__str);
LABEL_53:
    v7 += 168;
  }

  while (v7 != v8);
LABEL_61:
  v31 = *(v6 + 160);
  v55 = *(v6 + 168);
  if (v31 != v55)
  {
    v57 = v4 + 8;
    while (*v31 != 2 || *(v31 + 80) != 1)
    {
LABEL_116:
      v31 += 88;
      if (v31 == v55)
      {
        return result;
      }
    }

    v33 = *(v31 + 56);
    v32 = *(v31 + 64);
LABEL_66:
    if (v33 == v32)
    {
      goto LABEL_116;
    }

    memset(v77, 0, sizeof(v77));
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(__str, 0, sizeof(__str));
    v34 = *(v6 + 72);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = v35;
        v37 = v4;
        v38 = *(v6 + 64);
        if (v38)
        {
          (*(*v38 + 40))(__p);
          v39 = *(v33 + 39);
          if (v39 >= 0)
          {
            v40 = *(v33 + 39);
          }

          else
          {
            v40 = *(v33 + 24);
          }

          v41 = BYTE7(v60);
          v42 = SBYTE7(v60);
          if (SBYTE7(v60) < 0)
          {
            v41 = __p[1];
          }

          if (v40 == v41)
          {
            if (v39 >= 0)
            {
              v43 = (v33 + 16);
            }

            else
            {
              v43 = *(v33 + 16);
            }

            if ((SBYTE7(v60) & 0x80u) == 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            v45 = memcmp(v43, v44, v40) == 0;
            if (v42 < 0)
            {
LABEL_85:
              operator delete(__p[0]);
            }
          }

          else
          {
            v45 = 0;
            if (SBYTE7(v60) < 0)
            {
              goto LABEL_85;
            }
          }

          if (v45)
          {
            BYTE1(v75) = 1;
          }
        }

        sub_100004A34(v36);
        v4 = v37;
        v5 = a2;
      }
    }

    WORD4(v77[1]) = sub_100933BFC((v6 + 40), v5, v33 + 16);
    v46 = sub_100007A6C(v4, (v33 + 16));
    v47 = v46;
    if (v57 == v46)
    {
      goto LABEL_105;
    }

    v48 = *(v46 + 64);
    if (!v48)
    {
      goto LABEL_105;
    }

    while (1)
    {
      v49 = *(v48 + 7);
      if (v49 <= 16)
      {
        if (v49 == 16)
        {
          LODWORD(__p[0]) = 16;
          if (*sub_1000A8C4C(v46 + 56, __p) == 2)
          {
            v50 = 2;
          }

          else
          {
            v50 = 1;
          }

          LOBYTE(v75) = v50;
LABEL_100:
          v51 = *(v47 + 64);
          if (!v51)
          {
LABEL_105:
            if (sub_10078FF58(v6, v33 + 96, v33 + 120, v33 + 144, v33 + 168, (v33 + 16)))
            {
              *&__str[24] = 259;
            }

            if (((*(**(v6 + 48) + 248))(*(v6 + 48), v33 + 96, v33 + 120, v33 + 144, v33 + 168, v33 + 16) & 1) == 0)
            {
              *&__str[24] = 262;
            }

            goto LABEL_109;
          }

          while (2)
          {
            v52 = *(v51 + 7);
            if (v52 > 13)
            {
              goto LABEL_104;
            }

            if (v52 != 13)
            {
              ++v51;
LABEL_104:
              v51 = *v51;
              if (!v51)
              {
                goto LABEL_105;
              }

              continue;
            }

            break;
          }

          LODWORD(__p[0]) = 13;
          if (*sub_1000A8C4C(v47 + 56, __p) == 2)
          {
            if (sub_10078FF58(v6, v33 + 96, v33 + 120, v33 + 144, v33 + 168, (v33 + 16)))
            {
              v54 = 259;
              goto LABEL_114;
            }
          }

          else
          {
            v54 = 272;
LABEL_114:
            *&__str[24] = v54;
          }

LABEL_109:
          __p[0] = (v33 + 16);
          v53 = sub_100798B68(a4, (v33 + 16));
          std::string::operator=((v53 + 56), __str);
          *(v53 + 80) = *&__str[24];
          sub_10012BF3C((v53 + 88), &v63);
          sub_10012BF3C((v53 + 120), &v65);
          sub_10012BF3C((v53 + 152), &v67);
          sub_10012BF3C((v53 + 184), &v69);
          sub_10012BF3C((v53 + 216), &v71);
          *(v53 + 248) = v73;
          std::string::operator=((v53 + 256), (&v73 + 8));
          *(v53 + 280) = v75;
          *(v53 + 282) = BYTE2(v75);
          sub_10012BF3C((v53 + 288), (&v75 + 8));
          *(v53 + 320) = *(v77 + 8);
          *(v53 + 336) = WORD4(v77[1]);
          result = sub_100111F5C(__str);
          v33 += 216;
          goto LABEL_66;
        }

        ++v48;
      }

      v48 = *v48;
      if (!v48)
      {
        goto LABEL_100;
      }
    }
  }

  return result;
}

void sub_10078FEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_1000D6F38(va);
  sub_100111F5C(va1);
  sub_10028C89C(a5, *(a5 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10078FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (!sub_10016FA58(a1 + 504, a6))
  {
    theDict = 0;
    (*(**(a1 + 48) + 800))(&theDict);
    if (theDict)
    {
      if (CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
      {
        Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
        if (CFDictionaryContainsKey(Value, @"SendTransferTypeHintToCloud"))
        {
          v10 = CFDictionaryGetValue(Value, @"SendTransferTypeHintToCloud");
          v11 = v10;
          buf[0] = 0;
          if (v10 && (v12 = CFGetTypeID(v10), v12 == CFBooleanGetTypeID()))
          {
            ctu::cf::assign(buf, v11, v13);
            v8 = buf[0];
          }

          else
          {
            v8 = 0;
          }

          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            if (a6[23] >= 0)
            {
              v15 = a6;
            }

            else
            {
              v15 = *a6;
            }

            *buf = 138412802;
            *&buf[4] = @"SendTransferTypeHintToCloud";
            v22 = 1024;
            LODWORD(v23[0]) = v8;
            WORD2(v23[0]) = 2080;
            *(v23 + 6) = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %@ is set to %d for ICCID: [%s]", buf, 0x1Cu);
          }

          *buf = a6;
          v16 = sub_100170224(a1 + 504, a6);
          goto LABEL_28;
        }

        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (a6[23] >= 0)
          {
            v18 = a6;
          }

          else
          {
            v18 = *a6;
          }

          *buf = 138412546;
          *&buf[4] = @"SendTransferTypeHintToCloud";
          v22 = 2080;
          v23[0] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %@ not present in CB for ICCID: [%s]", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177DDD0();
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177DE48();
    }

    *buf = a6;
    v16 = sub_100170224(a1 + 504, a6);
    LOBYTE(v8) = 1;
LABEL_28:
    *(v16 + 56) = v8;
    sub_10001021C(&theDict);
    return v8 & 1;
  }

  LOBYTE(v8) = *sub_1000E20F0(a1 + 504, a6);
  return v8 & 1;
}

uint64_t sub_1007902A8(uint64_t a1, std::string *a2, uint64_t a3, const std::string *a4, uint64_t a5, __int128 *a6)
{
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if (*(a5 + 23) >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    if (*(a6 + 23) >= 0)
    {
      v17 = a6;
    }

    else
    {
      v17 = *a6;
    }

    *buf = 136316162;
    v27 = v13;
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Transfer completed - Blacklist: [IMEI: %s, EID: %s, ICCID: %s] -> [EID: %s, ICCID: %s]", buf, 0x34u);
  }

  v18 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if (v18 >= 0)
  {
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  v20 = *(a6 + 23);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a6 + 1);
  }

  if (size != v20 || (v18 >= 0 ? (v22 = a4) : (v22 = a4->__r_.__value_.__r.__words[0]), v21 >= 0 ? (v23 = a6) : (v23 = *a6), result = memcmp(v22, v23, size), result))
  {
    sub_1007904DC(a1, a2, a3, a4, a5, a6);
    (*(**(a1 + 104) + 104))(*(a1 + 104), a1 + 240);
    *(a1 + 500) |= 0x40u;
    v25[0] = off_101E7CF18;
    v25[3] = v25;
    sub_100790898(a1, v25);
  }

  return result;
}

std::string *sub_1007904DC(uint64_t a1, std::string *__str, uint64_t a3, const std::string *a4, uint64_t a5, __int128 *a6)
{
  v11 = a1;
  v12 = *(a1 + 240);
  v28 = (a1 + 240);
  v13 = *(a1 + 248);
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a6, *(a6 + 1));
  }

  else
  {
    __dst = *a6;
    v42 = *(a6 + 2);
  }

  v14 = HIBYTE(v42);
  if (v12 == v13)
  {
    v13 = v12;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v29 = a3;
  v15 = a4;
  v16 = v11;
  v17 = a5;
  if (v42 >= 0)
  {
    v18 = HIBYTE(v42);
  }

  else
  {
    v18 = *(&__dst + 1);
  }

  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v20 = v12 + 120;
  while (1)
  {
    v21 = *(v20 + 23);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(v20 + 8);
    }

    if (v21 == v18)
    {
      v23 = v22 >= 0 ? v20 : *v20;
      if (!memcmp(v23, p_dst, v18))
      {
        break;
      }
    }

    v24 = v20 + 112;
    v20 += 232;
    if (v24 == v13)
    {
      goto LABEL_24;
    }
  }

  v13 = v20 - 120;
LABEL_24:
  a5 = v17;
  v11 = v16;
  a4 = v15;
  a3 = v29;
  if (v14 < 0)
  {
LABEL_25:
    operator delete(__dst);
  }

LABEL_26:
  if (v13 == *(v11 + 248))
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(v34, 0, sizeof(v34));
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(v30, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v30[0] = *&__str->__r_.__value_.__l.__data_;
      *&v30[1] = *(&__str->__r_.__value_.__l + 2);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v30[1] + 8, *a3, *(a3 + 8));
    }

    else
    {
      *(&v30[1] + 8) = *a3;
      *(&v30[2] + 1) = *(a3 + 16);
    }

    if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v31, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = *&a4->__r_.__value_.__l.__data_;
      *&v32 = *(&a4->__r_.__value_.__l + 2);
    }

    *(&v32 + 1) = 0;
    v33 = 0uLL;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(v34, *a5, *(a5 + 8));
    }

    else
    {
      v34[0] = *a5;
      *&v34[1] = *(a5 + 16);
    }

    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(&v34[1] + 8, *a6, *(a6 + 1));
    }

    else
    {
      *(&v34[1] + 8) = *a6;
      *(&v34[2] + 1) = *(a6 + 2);
    }

    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    LODWORD(v38) = 2;
    BYTE4(v38) = 0;
    *(&v38 + 1) = CFAbsoluteTimeGetCurrent();
    v40 = 0;
    v39 = 0uLL;
    v26 = *(v11 + 248);
    if (v26 >= *(v11 + 256))
    {
      v27 = sub_100452A54(v28, v30);
    }

    else
    {
      sub_10044EF84(*(v11 + 248), v30);
      v27 = v26 + 232;
      *(v11 + 248) = v26 + 232;
    }

    *(v11 + 248) = v27;
    return sub_10044F1E0(v30);
  }

  else
  {
    std::string::operator=(v13, __str);
    std::string::operator=((v13 + 24), a3);
    std::string::operator=((v13 + 48), a4);
    result = std::string::operator=((v13 + 96), a5);
    *(v13 + 192) = 2;
  }

  return result;
}

void sub_1007907D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100790898(uint64_t a1, uint64_t a2)
{
  sub_10009CF40(v2, a2);
  v3 = 0;
  operator new();
}

void sub_100790958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10002B644(va1);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10079099C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %ld min expiry - start black list upload", buf, 0xCu);
  }

  if (sub_100793A5C(a1))
  {
    sub_10010BE30(v7, a2);
    v7[7] = 0;
    operator new();
  }

  result = *(a2 + 24);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t sub_100790B5C(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177DEC0(a2, (a2 + 16), v9);
    }

    goto LABEL_9;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer") || (Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer"), !CFDictionaryContainsKey(Value, @"DisablePhoneNumberCheckforBlacklist")))
  {
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v5 = CFDictionaryGetValue(Value, @"DisablePhoneNumberCheckforBlacklist");
  v6 = v5;
  v12 = 0;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v12, v6, v8);
      LOBYTE(v6) = v12;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_10001021C(&theDict);
  return v6 & 1;
}